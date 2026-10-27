# Repository Guidelines

## Project Structure
- `combined.md` — source functional specs DOA001–DOA016.
- `DOA###_spec.md` — individual spec files.
- `FinalDOA.md` — consolidated functional spec (current source of truth).
- Support scripts: `ask_brd.py` (local helper to query BRD context).

## Build, Test, and Development Commands
- `python ask_brd.py -q "<question>"` — query the BRD context for clarifications.
- No build artifacts or automated tests are defined for this documentation repo.

## Writing & Formatting Style
- Markdown only; use `##`/`###` for hierarchy and concise bullet lists.
- Keep documents ASCII; avoid long quoted passages.
- For updates, prefer `apply_patch` with minimal diff noise.
- Cross-reference DOA items explicitly (e.g., “DOA014”).
- Treat every edit as part of a functional spec: expand points comprehensively, and ask clarifying questions before elaborating when requirements are not explicit.
- After each material update to specs, immediately run `ask_brd.py` to validate the change and address any BRD-identified gaps before proceeding.

## Naming Conventions
- Files: `DOA###_spec.md`, `FinalDOA.md`, `AGENTS.md`.
- Headings: Title Case; sections align with DOA numbering when relevant.
- Place new consolidated content in `FinalDOA.md`; keep legacy files unchanged unless instructed.

## Testing Guidelines
- None required; validate by proofreading and ensuring anchors/TOC entries work in Markdown.

## Commit & PR Guidelines
- Commits: imperative mood, concise (e.g., “Add WC external earnings rules”).
- PRs: describe scope, list key sections touched (`FinalDOA.md`, `AGENTS.md`), and note any open TBC items resolved or added.

## Agent-Specific Tips
- When needing business context, run `python ask_brd.py -q "<prompt>"` (local, no network). Use a strong prompt pattern for gpt-4.1, e.g.:  
  `python ask_brd.py -q "You are a careful analyst. 1) Do not invent facts. 2) Use only BRD context. 3) Provide a concise, comprehensive answer. Question: <your question here>"`.
- Respect 8-character personnel number and ESG rules when editing specs.
- For cross-section changes, update both Solution Overview and Acceptance Criteria to stay in sync.
