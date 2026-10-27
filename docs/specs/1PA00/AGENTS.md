# Repository Guidelines

## Project Structure
- `combined.md` — source functional specs DOA001–DOA016.
- `1PA###_spec.md` — individual spec files.
- `Final1PA.md` — consolidated functional spec (current source of truth).
- Support scripts: `ask_brd.py` (local helper to query BRD context).


## Writing & Formatting Style
- Markdown only; use `##`/`###` for hierarchy and concise bullet lists.
- Keep documents ASCII; avoid long quoted passages.
- For updates, prefer `apply_patch` with minimal diff noise.
- Cross-reference DOA items explicitly (e.g., “DOA014”).
- Treat every edit as part of a functional spec: expand points comprehensively, and ask clarifying questions before elaborating when requirements are not explicit.
- After each material update to specs, immediately run `ask_brd.py` to validate the change and address any BRD-identified gaps before proceeding.
- Do **not** embed inline `Source: combined.md — <timestamp>` footers inside specs; track evidence in change logs / actions / decisions instead.

## Testing Guidelines
- None required; validate by proofreading and ensuring anchors/TOC entries work in Markdown.


## Agent-Specific Tips
- When needing business context, run `python ask_brd.py -q "<prompt>"` (local, no network). Use a strong prompt pattern for gpt-4.1, e.g.:  
  `python ask_brd.py -q "You speak like a real human, not a machine. Use natural rhythm, varied sentence lengths, and small imperfections when useful. Show judgement, not formulae. Avoid stock AI phrases, template transitions, robotic hedging, and never use the hyphen character at all.

Do not narrate your internal process. Do not explain that you are an AI. Do not announce constraints. Just answer like a sharp, experienced person who thinks before speaking.

When the user asks for structure, follow it cleanly but keep the voice organic. When the user wants creativity, let the ideas breathe without sounding synthetic. Prioritise clarity, brevity, and confidence over formal correctness.
. 1) Do not invent facts. 2) Use only BRD context. 3) Provide a concise, comprehensive answer. Question: <your question here>"`.
- ask_brd.py best practice:
  - Default model: `-m gpt-4.1`; keep prompts under ~3500 characters.
  - For section reviews, pass the section text via subshell, e.g. ``python ask_brd.py -q "Review the \\`## Goals\\` section...\\n\\nSection text:\\n$(sed -n '/^## Goals$/,/^## Scope$/p' Final1PA.md | sed '$d')"``
  - Escape backticks with backslashes inside the prompt; wrap long literals in single quotes and use `$()` to inject text.
  - If a call fails, rerun with the same prompt; do not change wording unless correcting escaping.
  - Keep the two-step loop: draft → BRD review → adjust until the approval phrase is returned.
- When original business requirements or broader context are needed, query `ask_bus.py` with a concise question before drafting; use the same prompt hygiene (quote escaping, short prompts, default model gpt-4.1).



# Steps

All steps are mandatory, atomic, and traceable. Do not proceed to the next step until the current step is completed, recorded, and timestamped. Never invent facts; preserve original wording from source documents and mark uncertainties with `[TBC]`.

1. Confirm `combined.md` presence and integrity
  - Open and read the entire `combined.md` in `docs/specs/1PA00/combined.md` before any edits. Abort if missing or truncated.
  - Record the read action with timestamp and file size/hash in the change log.

2. Create and publish a tracked TODO plan (required)
  - Create a `manage_todo_list` entry with explicit steps, owners, and statuses before making any content changes.

3. Initialize `Final1PA.md` metadata and Title (atomic)
  - If `Final1PA.md` does not exist, create it with this exact header block (replace placeholders):
    - Title: Final1PA — Functional Specification
    - Source: combined.md
    - Created: YYYY-MM-DD
    - Version: 0.1
  - Save as a single minimal commit/diff that only contains the header.

4. Business Background — strict authoring loop
  - Use the exact prompt template when querying BRD context with `ask_brd.py`:
    python ask_brd.py -q "You speak like a real human, not a machine. Use natural rhythm, varied sentence lengths, and small imperfections when useful. Show judgement, not formulae. Avoid stock AI phrases, template transitions, robotic hedging, and never use the hyphen character at all.

Do not narrate your internal process. Do not explain that you are an AI. Do not announce constraints. Just answer like a sharp, experienced person who thinks before speaking.

When the user asks for structure, follow it cleanly but keep the voice organic. When the user wants creativity, let the ideas breathe without sounding synthetic. Prioritise clarity, brevity, and confidence over formal correctness.
. 1) Do not invent facts. 2) Use only BRD context. 3) Provide a concise, comprehensive answer. Question: <your question here>"`.

  - Paste the BRD output verbatim into `Final1PA.md` under a `## Business Background` heading.
  - Immediately run `ask_brd.py` again to review the newly inserted section using this validation prompt:
    python ask_brd.py -q "Review the `## Business Background` section in `Final1PA.md`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context."
  - Repeat write → review → update until `ask_brd.py` returns the exact approval phrase: `Section complete — no further BRD gaps identified.`

5. Section-by-section authoring (repeatable, mandatory loop)
  - For every subsequent section (Goals, Scope, Functional Requirements, Non-Functional, Constraints, Acceptance Criteria, Traceability):
    a) Draft the section using only material from `combined.md` and referenced spec files.
    b) Run `ask_brd.py` with the same two-step draft + review pattern from Step 4.
    c) Do not finalize the section until `ask_brd.py` returns the exact approval phrase from Step 4.

6. Evidence and traceability
  - For each material claim or decision, add a source line: `Source: <relative path>` and a timestamp.
  - If a claim lacks a source, mark it `[TBC] — source missing` and open an action item in `docs/actions.md` linking the evidence.

7. Commits and diffs
  - Each material change must be its own minimal commit/diff with a clear message using this template: `spec(Final1PA): <section> — import from combined.md — YYYY-MM-DD`.
  - Avoid large, monolithic diffs. Keep edits per-section and per-review-cycle.

8. Final validation and sign-off
  - After all sections have achieved the `Section complete — no further BRD gaps identified.` approval, run a final `ask_brd.py` review of the entire `Final1PA.md` with this prompt:
    python ask_brd.py -q "Conduct a final, exhaustive review of `Final1PA.md` for BRD completeness and traceability. Return 'Final spec approved by BRD check' if no gaps remain; otherwise list required edits."
  - Do not mark the work complete until the exact approval phrase `Final spec approved by BRD check` is returned.

9. Record keeping
  - Append a timestamped record of the final approval, the `ask_brd.py` prompts used, and the approval outputs to `docs/decisions.md` or `docs/actions.md` as appropriate.

10. Governance constraints (always enforce)
  - Edits must be minimal, preserve historical content, and never paraphrase source facts. Use `[TBC]` for ambiguities. All BRD interactions must use `ask_brd.py` with the specified templates.

Strictness summary: a section is only complete when the automated BRD reviewer returns the exact prescribed approval phrase. Every change must be traceable to source files and recorded with timestamps.

## Steps Followed (2026-01-28 cycle)
- Read `combined.md`; recorded size/hash in `change_log.md`.
- Refreshed `manage_todo_list.md` with explicit steps and statuses.
- Verified `Final1PA.md` header metadata present.
- Ran Business Background draft + BRD approval loop to completion.
- Ran Goals, Scope, Functional, Non-Functional, Constraints, Acceptance Criteria, and Traceability sections through draft + BRD approval loops to completion.
- Logged BRD approvals in `docs/decisions.md`.
- Completed final BRD full-document check with approval phrase returned.
