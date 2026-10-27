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
# Functional Specification: OLB001 — EPSS Off Duty Claim Management

---

## 1. Business Background

The NSW Police Force (NSWPF) requires enhancements to the Online Injury Management System (OLIMS) to support the management of EPSS Off Duty claims. This includes new UI elements, business logic, and reporting to ensure accurate and compliant handling of Off Duty claims, with no payroll impact, as confirmed by business stakeholders.

---

## 2. Scope

- Implementation of a new "EPSS Off Duty" tab in OLIMS.
- Addition of required fields and logic for Off Duty claims.
- Updates to Case Details and Emp Details tabs.
- Clarification and expansion of the "TAL Off Duty Claim Forms" requirement.
- No changes to payroll or SAP integration for Off Duty claims.

---

## 3. Detailed Functional Requirements

- Add a new "EPSS Off Duty" tab in OLIMS, including all fields and logic as per workshop notes.
- Update Case Details tab with new fields:
  - Waiting Period Start/End Date
  - IP Start/End Date
  - TAL Claim No
  - WC Claim Status
  - Date Closed, Closure Reason
  - Superannuation Fund
  - Move Employee Address to Emp Details tab (optional)
- Ensure no payroll impact for Off Duty claims.
- Clarify and document the process for "TAL Off Duty Claim Forms" under open items.
- UI changes:
  - Remove "Send to Aware/TAL" button.
  - Upload TAL documents to existing categories.
  - Hide Emp/Members Statement tab for Off Duty claims.

---

## 4. Exception Handling

- If required fields are missing during Off Duty claim creation, display validation errors.
- If TAL Off Duty Claim Forms are not provided, flag the claim for follow-up.
- Any attempt to trigger payroll actions from Off Duty claims must be blocked.

---

## 5. Compliance/Controls

- All Off Duty claim data must be auditable in OLIMS.
- Document uploads and changes must be logged.
- Access to Off Duty claim data is restricted to authorized users.
- Reporting on Off Duty claims must be available for compliance and reconciliation.

---

## 6. References and Linked Requirements

- Cross-references: OLB002, OLB003, DOA010, DOA012, DOB001-DOB005.
- See [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV).

---

## 7. Acceptance Criteria

- [ ] New "EPSS Off Duty" tab is available in OLIMS.
- [ ] All specified fields are present and function as described.
- [ ] No payroll actions are triggered by Off Duty claims.
- [ ] "TAL Off Duty Claim Forms" process is documented and implemented.
- [ ] UI changes (button removal, document upload, tab hiding) are complete.
- [ ] All data changes and uploads are auditable.
- [ ] Reports on Off Duty claims are available and accurate.# Functional Specification: OLB002 — Case Details Tab Enhancements

---

## 1. Business Background

The EPSS project requires enhancements to the OLIMS Case Details tab to support Off Duty claim management. New fields are needed to align with business processes, improve data capture, and support reporting and compliance for EPSS Off Duty claims.

---

## 2. Scope

This specification covers the addition of new fields to the OLIMS Case Details tab, updates to field locations, and clarification of data sources and business impacts for each field. It also addresses the optional relocation of the Employee Address field.

---

## 3. Detailed Functional Requirements

- Add the following fields to the Case Details tab, triggered by Duty Determination selection:
  - Waiting Period Start Date = DOD (Date of Disablement)
  - Waiting Period End Date = DOD + 59 calendar days
  - IP Start Date = Waiting Period End Date + 1
  - IP End Date = IP Start Date + 3 years (minus 1 day)
  - TAL Claim No
  - WC Claim Status
  - Date Closed
  - Closure Reason
  - Superannuation Fund
- Move Employee Address to the Emp Details tab (optional, "nice to have").
- For each new field:
  - Specify if it impacts payroll calculations, week counting, or EPSS commencement.
  - Define data source or entry method:
    - Superannuation Fund: user entry or lookup.
    - Employee Details: sourced from SAP HR or user entry.
  - Confirm if moving Employee Address is required or optional.

---

## 4. Exception Handling

- If required fields are missing or invalid, display a validation error and prevent save.
- If Employee Address cannot be moved due to technical constraints, retain in current location and log as a known issue.

---

## 5. Compliance/Controls

- All changes must be auditable in OLIMS.
- Data entry for new fields must be restricted to authorized users.
- Changes must support reporting and reconciliation for payroll and compliance.

---

## 6. References and Linked Requirements

- Cross-references: OLB001, OLB003, DOA010, DOA012, DOB001-DOB005, P905 retro logic.
- See [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV).

---

## 7. Acceptance Criteria

- [ ] All specified fields are present in the Case Details tab and function as described.
- [ ] Each field’s impact on payroll, week counting, and EPSS commencement is documented.
- [ ] Data sources and entry methods are defined for all new fields.
- [ ] Employee Address is moved to Emp Details tab if required.
- [ ] Validation and exception handling are implemented.
- [ ] Changes are auditable and support compliance/reporting needs.# Functional Specification: OLB003 — Off Duty Emp/Members Statement Tab Changes

---

## 1. Business Background

The NSW Police Force (NSWPF) uses OLIMS to manage EPSS claims. For Off Duty claims, the Emp/Members Statement tab currently mirrors the PBRI process. With the introduction of the EPSS Off Duty claim type, the UI and process must be updated to align with new business requirements, including changes to document handling and user interface elements.

---

## 2. Scope

This specification covers the changes to the OLIMS Emp/Members Statement tab for EPSS Off Duty claims. It includes UI modifications, removal of obsolete actions, and updates to document upload and tab visibility logic. No payroll or SAP integration changes are in scope.

---

## 3. Detailed Functional Requirements

- The Emp/Members Statement tab for EPSS Off Duty claims will be replaced by a new "EPSS Off Duty" tab.
- The "Send to Aware/TAL" button will be removed from the Off Duty tab.
- TAL documents will be uploaded using existing document categories (no new upload mechanism required).
- The Emp/Members Statement tab will be hidden for EPSS Off Duty claims.
- The new EPSS Off Duty tab will display all required fields for Off Duty claim management, as per business requirements.
- Navigation and layout will be consistent with the current PBRI Emp/Members Statement tab, except for the above changes.
- A screenshot or navigation steps for the current PBRI Emp/Members Statement tab will be provided for reference.

---

## 4. Exception Handling

- If a user attempts to access the Emp/Members Statement tab for an EPSS Off Duty claim, the system will redirect to the new EPSS Off Duty tab.
- If document upload fails, an error message will be displayed and the user will be prompted to retry.
- If required fields are missing in the new tab, the user will be notified before saving.

---

## 5. Compliance/Controls

- All document uploads and changes are logged in OLIMS for audit purposes.
- Access to the new EPSS Off Duty tab and document upload is restricted to authorised claims officers.
- Reporting and reconciliation of uploaded documents will follow existing OLIMS controls.

---

## 6. References and Linked Requirements

- Cross-references: OLB001, OLB002, PBRI Emp/Members Statement tab (existing), [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] The Emp/Members Statement tab is hidden for EPSS Off Duty claims.
- [ ] A new EPSS Off Duty tab is available and displays all required fields.
- [ ] The "Send to Aware/TAL" button is removed from the Off Duty tab.
- [ ] TAL documents can be uploaded using existing categories.
- [ ] Navigation and layout match the business requirements and reference screenshot.
- [ ] All changes are logged and reportable in OLIMS.
- [ ] Exception handling is implemented as specified.