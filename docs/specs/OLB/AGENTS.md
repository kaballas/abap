# Repository Guidelines

## Project Structure

This folder is a documentation and spec workspace for the OLIMS EPSS Off Duty build.

Key files:

* `Task.md` Operating rules for maintaining the technical spec and recording changes
* `TechnicalOLB.md` Technical specification for OLB work (source of truth for build level design)
* `FinalOLB.md` Consolidated functional spec
* `OLB001_spec.md` to `OLB003_spec.md` Individual functional specs
* `ask_me.py` Verification helper that answers questions using local BRD and ABAP context
* `debug/` Request and response logs emitted by `ask_me.py`

## Build, Test, and Development Commands

There is no build system in this folder. Use the verification script and basic linting checks.

* `python ask_me.py -q "Question here"` Verify requirements, BRD intent, and ABAP behaviour
* `python ask_me.py -q "..." --quiet` Print only model outputs
* `rg -n "pattern" .` Search across specs quickly

## Writing Style and Naming

Specs are Markdown. Follow the style rules in `Task.md` when editing `TechnicalOLB.md` (plain language, no stock AI phrasing, and avoid the hyphen character in that file).

Naming patterns:

* Functional specs: `OLB###_spec.md`
* Consolidations: `FinalOLB.md`
* Technical spec: `TechnicalOLB.md`

## Testing and Verification

There are no automated tests. Treat `python ask_me.py` as the primary fact check before changing requirements or technical behaviour statements.

After edits:

* Ensure headings render cleanly in Markdown
* Keep diffs small and targeted
* Append a dated entry to the Work Log in `Task.md`
* When changing `TechnicalOLB.md`, also bump `Version` and `Last updated`

## Security and Configuration

* `ask_me.py` calls a local API at `http://127.0.0.1:$PORT` and uses `BRIDGE_TOKEN` and `PORT` env vars
* Default context files are configured in `ask_me.py` as `DEFAULT_FILES`
* `debug/` can contain full request and response payloads, treat it as sensitive

## Commit and PR Guidelines

This directory is not a standalone git repository. If changes are committed in a parent repo, keep commits small and descriptive.

Example commit message:

* `spec(OLB): update TechnicalOLB section 7 (2026 02 08)`

For PRs, include:

* What files changed and why
* Any open items marked `TBC`
* The exact `ask_me.py` questions used to verify material changes
