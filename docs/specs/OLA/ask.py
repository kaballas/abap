
import argparse
import asyncio
import random
from copilot import CopilotClient
import sys
import re
from collections import defaultdict

DEFAULT_FILES = [
    "/home/theo/Documents/docs/brd.md",
    "/home/theo/Documents/docs/specs/OLA/combined.md",
    "/home/theo/Documents/docs/specs/OLA/ZCL_OLIMS_CLASS.apab",
    "/home/theo/Documents/docs/specs/OLA/ZHUOLIMS_CORRESPONDENCE.abap",
    "/home/theo/Documents/abab/ZHUIM_COMMON.abap",
    "/home/theo/Documents/abab/ZHUIM_MAIN_2.abap",
    "/home/theo/Documents/abab/ZHUIM_MAIN.abap",
    "/home/theo/Documents/abab/ZHUIM_UPDATE.abap",
    "/home/theo/Documents/abab/ZHUIM_UPDATE3.abap",
    "/home/theo/Documents/abab/ZHUIM_UPDATE4.abap",
    "/home/theo/Documents/abab/ZHUOLIMS_UPDATE2.abap",
    "/home/theo/Documents/docs/specs/OLA/ZCL_OLIMS_PRIM_CLAIM.abap",
    "/home/theo/Documents/docs/specs/OLD/ZHUIM_REMINDERS.abap"
]

async def process_documents(file_paths, question, model="gpt-4.1", max_chars=0, quiet=False, json_mode=False, debug=False, concurrency=4, timeout=120, retries=2, chunk_size=200000, backoff_base=0.5):
    """Process files concurrently with retries, per-call timeout and optional chunking.

    Improvements over the previous implementation:
    - Bounded concurrency (semaphore) to avoid creating too many sessions at once
    - Per-call timeout (configurable) with retries + exponential backoff + jitter
    - Automatic chunking for very large documents
    - CLI-configurable knobs: concurrency, timeout, retries, chunk-size
    """
    client = CopilotClient()
    await client.start()
    sem = asyncio.Semaphore(concurrency)

    def _format_exc(exc: Exception) -> str:
        msg = str(exc).strip()
        if msg:
            # Avoid double-prefixing when the message already starts with the type name.
            prefix = f"{exc.__class__.__name__}:"
            return msg if msg.startswith(prefix) else f"{exc.__class__.__name__}: {msg}"
        return exc.__class__.__name__

    def _read_file(path):
        with open(path, "r", encoding="utf-8", errors="replace") as f:
            return f.read()

    def _extract_keywords(q: str) -> list[str]:
        # Heuristic: DDIC objects / ABAP names are typically all-caps with underscores.
        # Example: ZIM_REM, ZCL_OLIMS_CLASS, VBAK, ZHUIM_UPDATE3
        return sorted(set(re.findall(r"\b[A-Z][A-Z0-9_]{2,}\b", q)))

    def _build_local_hits(content: str, keywords: list[str], *, context_lines: int = 2, max_hits_per_kw: int = 10, max_total_lines: int = 120) -> str:
        if not keywords:
            return ""
        lines = content.splitlines()
        kw_to_hits: dict[str, list[int]] = defaultdict(list)
        for idx, line in enumerate(lines):
            for kw in keywords:
                if kw in line:
                    hits = kw_to_hits[kw]
                    if len(hits) < max_hits_per_kw:
                        hits.append(idx)

        if not kw_to_hits:
            return ""

        included_line_nos: list[int] = []
        for kw in keywords:
            for hit_idx in kw_to_hits.get(kw, []):
                start = max(0, hit_idx - context_lines)
                end = min(len(lines) - 1, hit_idx + context_lines)
                included_line_nos.extend(range(start, end + 1))

        # De-duplicate while keeping order
        seen = set()
        ordered = []
        for n in included_line_nos:
            if n not in seen:
                seen.add(n)
                ordered.append(n)
            if len(ordered) >= max_total_lines:
                break

        out = []
        out.append("[LOCAL SEARCH HITS] Exact line matches (1-based line numbers):")
        for n in ordered:
            out.append(f"{n + 1}: {lines[n]}")
        return "\n".join(out)

    def _has_any_keyword(content: str, keywords: list[str]) -> bool:
        return any(kw in content for kw in keywords)

    def _response_denies_presence(text: str) -> bool:
        # Catch common false-negative phrasing from the model.
        t = (text or "").lower()
        patterns = [
            "no references",
            "no reference",
            "not referenced",
            "not used",
            "no occurrences",
            "no mention",
            "is not defined",
            "not defined",
        ]
        return any(p in t for p in patterns)

    async def _with_retries(coro_func, *coro_args, desc="call", outer_timeout=None, **coro_kwargs):
        last_exc = None
        for attempt in range(1, retries + 2):
            try:
                if debug:
                    print(f"[DEBUG] {desc} (attempt {attempt}/{retries+1})")
                coro = coro_func(*coro_args, **coro_kwargs)
                if outer_timeout is None:
                    return await coro
                return await asyncio.wait_for(coro, timeout=outer_timeout)
            except Exception as exc:
                last_exc = exc
                is_last = attempt == (retries + 1)
                if is_last:
                    if debug:
                        print(f"[DEBUG] {desc} failed permanently: {_format_exc(exc)}")
                    raise
                backoff = backoff_base * (2 ** (attempt - 1)) + random.uniform(0, 0.1)
                if debug:
                    print(f"[DEBUG] {desc} failed (attempt {attempt}): {_format_exc(exc)}; retrying in {backoff:.2f}s")
                await asyncio.sleep(backoff)
        raise last_exc

    async def handle_file(path):
        async with sem:
            try:
                content = await asyncio.to_thread(_read_file, path)
            except Exception as e:
                if debug:
                    print(f"[DEBUG] Failed to read {path}: {_format_exc(e)}")
                return path, None, f"[ERROR] Failed to load: {e}"

            size = len(content)
            if debug:
                print(f"[DEBUG] File={path} size={size} chars")

            keywords = _extract_keywords(question)
            local_hits = _build_local_hits(content, keywords)

            # create session with retries
            try:
                session = await _with_retries(
                    client.create_session,
                    {"model": model},
                    desc=f"create_session for {path}",
                    outer_timeout=timeout,
                )
            except Exception as e:
                return path, None, f"[ERROR] create_session: {_format_exc(e)}"

            # send document (with chunking if needed)
            try:
                if size <= chunk_size:
                    if debug:
                        print(f"[DEBUG] Sending document content for: {path}")
                    await _with_retries(
                        session.send_and_wait,
                        {"prompt": content},
                        timeout=timeout,
                        desc=f"send doc for {path}",
                        outer_timeout=timeout + 5,
                    )
                else:
                    parts = (size + chunk_size - 1) // chunk_size
                    if debug:
                        print(f"[DEBUG] Chunking {path} into {parts} parts (chunk_size={chunk_size})")
                    for idx in range(0, size, chunk_size):
                        chunk = content[idx : idx + chunk_size]
                        part_no = idx // chunk_size + 1
                        if debug:
                            print(f"[DEBUG] Sending chunk {part_no}/{parts} for: {path}")
                        await _with_retries(
                            session.send_and_wait,
                            {"prompt": chunk},
                            timeout=timeout,
                            desc=f"send chunk {part_no}/{parts} for {path}",
                            outer_timeout=timeout + 5,
                        )
                        # small pause between chunks to reduce burst
                        await asyncio.sleep(0.05)

                # now ask the question (with retries/timeouts)
                if debug:
                    print(f"[DEBUG] Sending question for: {path}")
                grounded_question = (
                    "You are answering questions about the single file that was provided earlier in this chat.\n"
                    "If you are uncertain, say so. Do not claim something is not referenced unless you have verified it in the file.\n"
                )
                if local_hits:
                    grounded_question += f"\n{local_hits}\n"
                grounded_question += f"\n[QUESTION]\n{question}"
                resp = await _with_retries(
                    session.send_and_wait,
                    {"prompt": grounded_question},
                    timeout=timeout,
                    desc=f"ask question for {path}",
                    outer_timeout=timeout + 5,
                )

                if resp is None:
                    text = "No response"
                else:
                    text = getattr(resp.data, "content", "No response")

                # If the model falsely claims "no references" but we can see hits locally, append a deterministic correction.
                if local_hits and _has_any_keyword(content, keywords) and _response_denies_presence(text):
                    text += "\n\n[LOCAL CHECK] The file *does* contain the keyword(s) from the question. See the [LOCAL SEARCH HITS] block above."

                if max_chars > 0:
                    text = text[:max_chars]
                return path, session, text
            except Exception as e:
                if debug:
                    print(f"[DEBUG] Error during session for {path}: {_format_exc(e)}")
                return path, session, f"[ERROR] {_format_exc(e)}"

    # schedule all file tasks concurrently (bounded by semaphore)
    tasks = [asyncio.create_task(handle_file(p)) for p in file_paths]
    results_raw = await asyncio.gather(*tasks, return_exceptions=False)

    results = {}
    # clean up sessions that were created
    for path, session, text in results_raw:
        results[path] = text
        if session is not None:
            try:
                await session.destroy()
            except Exception as e:
                if debug:
                    print(f"[DEBUG] Failed to destroy session for {path}: {_format_exc(e)}")

    try:
        if json_mode:
            import json
            print(json.dumps(results, indent=2, ensure_ascii=False))
        else:
            # Print the original question first
            if not quiet:
                print("\n" + "=" * 80)
                print("QUESTION")
                print("=" * 80)
                print(question)
            
            if not quiet:
                print("\n" + "=" * 80)
                print("CONSOLIDATED RESPONSES")
                print("=" * 80)
            for file_path, text in results.items():
                if not quiet:
                    print(f"\n--- File: {file_path} ---")
                print(text)
            
            # Create a new session to consolidate all responses
            if not quiet:
                print("\n" + "=" * 80)
                print("FINAL CONSOLIDATED RESPONSE")
                print("=" * 80)
            
            try:
                final_session = await _with_retries(
                    client.create_session,
                    {"model": model},
                    desc="create_session for final consolidation",
                    outer_timeout=timeout,
                )
                
                # Build consolidation prompt
                consolidation_prompt = "Here are responses from multiple sources for the following question:\n\n"
                consolidation_prompt += f"Original Question: {question}\n\n"
                consolidation_prompt += "Responses:\n"
                
                for file_path, text in results.items():
                    consolidation_prompt += f"\n--- From: {file_path} ---\n{text}\n"
                
                consolidation_prompt += "\n\nPlease provide a final consolidated response that synthesizes all the above information into one cohesive answer."
                
                # Send consolidation prompt and get final response
                final_response = await _with_retries(
                    final_session.send_and_wait,
                    {"prompt": consolidation_prompt},
                    timeout=timeout,
                    desc="final consolidation",
                    outer_timeout=timeout + 5,
                )
                
                if final_response is None:
                    final_text = "No response"
                else:
                    final_text = getattr(final_response.data, "content", "No response")
                
                print(final_text)
                
                # Clean up the final session
                await final_session.destroy()
            except Exception as e:
                if debug:
                    print(f"[DEBUG] Error during final consolidation: {_format_exc(e)}")
                print(f"[ERROR] Failed to generate final consolidated response: {e}")
    finally:
        # ensure the client is stopped even if printing fails
        await client.stop()

def main():
    parser = argparse.ArgumentParser(description="Send messages to AI with context from multiple files (async CopilotClient)")
    parser.add_argument("-q", "--question", type=str, help="Question to send to AI")
    parser.add_argument("-m", "--model", type=str, default="gpt-4.1", help="Model to use (default: gpt-4.1)")
    parser.add_argument("--files", nargs="+", help="Override default files with explicit file list")
    parser.add_argument("--quiet", action="store_true", help="Print only model outputs")
    parser.add_argument("--json", action="store_true", help="Emit JSON map of file to response text")
    parser.add_argument("--max-chars", type=int, default=0, help="Truncate each output to max chars (0 = no truncate)")
    parser.add_argument("--concurrency", type=int, default=10, help="Max concurrent sessions (default: 10)")
    parser.add_argument("--timeout", type=float, default=600, help="Per-call timeout in seconds (default: 600s)")
    parser.add_argument("--retries", type=int, default=2, help="Number of retries on transient errors (default: 2)")
    parser.add_argument("--chunk-size", type=int, default=200000, help="Max chars to send in one document chunk (default: 200000)")
    parser.add_argument("--debug", action="store_true", help="Print debug information during processing")
    args = parser.parse_args()

    if not args.question:
        print("[ERROR] Question is required", file=sys.stderr)
        sys.exit(1)

    file_list = args.files if args.files else DEFAULT_FILES
    asyncio.run(process_documents(
        file_list,
        args.question,
        model=args.model,
        max_chars=args.max_chars,
        quiet=args.quiet,
        json_mode=args.json,
        debug=args.debug,
        concurrency=args.concurrency,
        timeout=args.timeout,
        retries=args.retries,
        chunk_size=args.chunk_size,
    ))

if __name__ == "__main__":
    main()
