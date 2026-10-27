# Repository Guidelines

## Project Structure
- `combined.md` — source functional specs.
- `OLD###_spec.md` — individual spec files.
- `FinalOLD.md` — consolidated functional spec (current source of truth).
- Support scripts: `ask_brd.py` (local helper to query BRD context), `ask_bus.py` (fetch original requirements).


## Writing & Formatting Style
- Markdown only; use `##`/`###` for hierarchy and concise bullet lists.
- Keep documents ASCII; avoid long quoted passages.
- For updates, prefer `apply_patch` with minimal diff noise.
- Cross-reference DOA items explicitly (e.g., "DOA014").
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
  - **Iterative review cycles:** Expect 3–6+ `ask_brd.py` review calls per section. Do not skip iterations. Each cycle identifies missing facts; incorporate feedback and re-submit until the exact approval phrase is returned.
  - For section reviews, pass the section text via subshell, e.g. ``python ask_brd.py -q "Review the \\`## Goals\\` section...\\n\\nSection text:\\n$(sed -n '/^## Goals$/,/^## Scope$/p' FinalOLD.md | sed '$d')"``
  - Escape backticks with backslashes inside the prompt; wrap long literals in single quotes and use `$()` to inject text.
  - If a call fails, rerun with the same prompt; do not change wording unless correcting escaping.
  - **Log each `ask_brd.py` call immediately** to `docs/actions.md` with timestamp, prompt hash, and response summary. Do not wait for section completion.
  - Keep the two-step loop: draft → BRD review → incorporate feedback → re-review until the approval phrase is returned.
- When original business requirements or broader context are needed, query `ask_bus.py` with a concise question before drafting; use the same prompt hygiene (quote escaping, short prompts, default model gpt-4.1).
- **Always run `ask_bus.py`** to fetch the original requirements before drafting any section. Record the exact query and the `ask_bus.py` response (timestamped and stored as evidence) to `docs/actions.md` as part of the edit trace.


# Steps

All steps are mandatory, atomic, and traceable. Do not proceed to the next step until the current step is completed, recorded, and timestamped. Never invent facts; preserve original wording from source documents and mark uncertainties with `[TBC]`.

1. Confirm `combined.md` presence and integrity
  - Open and read the entire `combined.md` in `docs/specs/OLD00/combined.md` before any edits. Abort if missing or truncated.
  - Record the read action with timestamp, file size, and SHA256 hash in `docs/change_log.md`.

2. Create and publish a tracked TODO plan (required)
  - Create a `manage_todo_list.md` entry with explicit steps, owners, and statuses before making any content changes.
  - Table format: `| Step | Section | Owner | Status | Timestamp |`.

3. Initialize `FinalOLD.md` metadata and Title (atomic)
  - If `FinalOLD.md` does not exist, create it with this exact header block (replace placeholders):
    - Title: FinalOLD — Functional Specification
    - Source: combined.md
    - Created: YYYY-MM-DD
    - Version: 0.1
  - Save as a single minimal diff that only contains the header.

4. Business Background — iterative authoring loop
  - Query `ask_bus.py` with a concise question to fetch original requirements context.
  - Log the query and response to `docs/actions.md` with ISO 8601 timestamp.
  - Use the standard `ask_brd.py` prompt (see Agent Tips) to draft Business Background.
  - Insert the BRD output verbatim into `FinalOLD.md` under `## Business Background`.
  - Log the draft to `docs/actions.md`.
  - **Review cycle:** Run `ask_brd.py` with this prompt:
    ```
    python ask_brd.py -q "Review the \`## Business Background\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context."
    ```
  - If approval phrase is returned, mark complete and proceed to Step 5.
  - If missing facts are identified, update the section, log the change, and re-run the review prompt.
  - **Repeat until exact approval phrase is returned.**

5. Section-by-section authoring (repeatable, mandatory loop)
  - For every subsequent section (Goals, Scope, Functional Requirements, Non-Functional, Constraints, Acceptance Criteria, Traceability):
    a) Run `ask_bus.py` to fetch requirements context. Log query and response to `docs/actions.md`.
    b) Draft the section using only material from `combined.md` and referenced spec files. Insert into `FinalOLD.md`.
    c) Log draft to `docs/actions.md`.
    d) **Review cycle:** Run `ask_brd.py` with the section text (use subshell pattern if needed).
    e) Log the review response to `docs/actions.md`.
    f) If approval phrase is returned, mark section complete and proceed.
    g) If missing facts are identified, update the section, log the change, and re-run the review prompt.
    h) **Repeat d–g until exact approval phrase is returned: `Section complete — no further BRD gaps identified.`**

6. Evidence and traceability
  - For each material claim or decision, reference the source line: `Source: <relative path> | <ISO 8601 timestamp>`.
  - If a claim lacks a source, mark it `[TBC] — source missing` and open an action item in `docs/actions.md` linking the evidence.
  - Log all `ask_brd.py` and `ask_bus.py` interactions to `docs/actions.md` immediately; do not batch.

7. Incremental updates and record keeping
  - Each material change to `FinalOLD.md` should be a single `apply_patch` diff per review cycle, not per section.
  - Use a concise commit message if git is initialized, e.g.: `spec(FinalOLD): <section> — review cycle N — <ISO 8601 timestamp>`.
  - If git is not available, rely on `docs/change_log.md` and `docs/actions.md` for audit trail.
  - Keep edits per-review-cycle, not per-section, to reduce diff noise.

8. Final validation and sign-off
  - After all sections have achieved the approval phrase, run a final `ask_brd.py` review of the entire `FinalOLD.md`:
    ```
    python ask_brd.py -q "Conduct a final, exhaustive review of \`FinalOLD.md\` for BRD completeness and traceability. Return 'Final spec approved by BRD check' if no gaps remain; otherwise list required edits."
    ```
  - Do not mark the work complete until the exact approval phrase `Final spec approved by BRD check` is returned.
  - Log final approval to `docs/actions.md` with timestamp.

9. Record keeping
  - Append a timestamped record of the final approval, all `ask_brd.py` and `ask_bus.py` prompts and outputs, and the approval results to `docs/actions.md`.
  - Maintain `docs/change_log.md` with all edits in chronological order.
  - Update `manage_todo_list.md` after each major section completion.

10. Governance constraints (always enforce)
  - Edits must be minimal, preserve historical content, and never paraphrase source facts. Use `[TBC]` for ambiguities.
  - All BRD and business context queries must use `ask_brd.py` and `ask_bus.py` with the specified templates.
  - No section is complete until the automated BRD reviewer returns the exact prescribed approval phrase.
  - Every change must be traceable to source files and recorded with ISO 8601 timestamps in `docs/actions.md` and `docs/change_log.md`.

**Strictness summary:** A section is only complete when the automated BRD reviewer returns the exact prescribed approval phrase. Expect iterative cycles (3–6+ per section). Every `ask_brd.py` and `ask_bus.py` call must be logged immediately. All edits must be traceable.
