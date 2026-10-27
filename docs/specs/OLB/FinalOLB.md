Title: FinalOLB — Functional Specification
Source: combined.md
Created: 2026-01-28
Version: 0.1

## Business Background

The NSW Police Force needs to improve how it manages EPSS Off Duty claims in OLIMS. Right now, the system doesn’t fully support these claims—there are gaps in the user interface, business logic, and reporting. Stakeholders have made it clear: Off Duty claims must be handled accurately and in line with compliance requirements, but they should not affect payroll in any way. These enhancements are about making sure Off Duty claims are processed cleanly, with the right controls and visibility, without disrupting existing payroll or SAP integrations.

Source: ask_brd.py (BRD) — 2026-01-28 05:46:41 UTC

## Goals

- Implementation of a new "EPSS Off Duty" tab in OLIMS.
- Addition of required fields and logic for Off Duty claims.
- Updates to Case Details and Emp Details tabs.
- Clarification and expansion of the "TAL Off Duty Claim Forms" requirement.
- No changes to payroll or SAP integration for Off Duty claims.

Source: OLB001_spec.md — 2026-01-28 05:49:01 UTC

## Scope

- Implementation of a new "EPSS Off Duty" tab in OLIMS.
- Addition of required fields and logic for Off Duty claims.
- Updates to Case Details and Emp Details tabs.
- Clarification and expansion of the "TAL Off Duty Claim Forms" requirement.
- No changes to payroll or SAP integration for Off Duty claims.
- Add the following fields to the Case Details tab, triggered by Duty Determination selection: Waiting Period Start Date = DOD (Date of Disablement); Waiting Period End Date = DOD + 59 calendar days; IP Start Date = Waiting Period End Date + 1; IP End Date = IP Start Date + 3 years (minus 1 day); TAL Claim No; WC Claim Status; Date Closed; Closure Reason; Superannuation Fund.
- Move Employee Address to the Emp Details tab (optional, "nice to have").
- The Emp/Members Statement tab for EPSS Off Duty claims will be replaced by a new "EPSS Off Duty" tab.
- The "Send to Aware/TAL" button will be removed from the Off Duty tab.
- TAL documents will be uploaded using existing document categories (no new upload mechanism required).
- The Emp/Members Statement tab will be hidden for EPSS Off Duty claims.
- Navigation and layout for the new EPSS Off Duty tab will be consistent with the current PBRI Emp/Members Statement tab, except for the Off Duty changes.

Source: OLB001_spec.md; OLB002_spec.md; OLB003_spec.md — 2026-01-28 05:49:46 UTC

## Functional Requirements

- Add a new "EPSS Off Duty" tab in OLIMS, including all fields and logic as per workshop notes.
- Update Case Details tab with new fields: Waiting Period Start/End Date; IP Start/End Date; TAL Claim No; WC Claim Status; Date Closed; Closure Reason; Superannuation Fund; Move Employee Address to Emp Details tab (optional).
- Ensure no payroll impact for Off Duty claims.
- Clarify and document the process for "TAL Off Duty Claim Forms" under open items.
- UI changes: Remove "Send to Aware/TAL" button; Upload TAL documents to existing categories; Hide Emp/Members Statement tab for Off Duty claims.
- Add the following fields to the Case Details tab, triggered by Duty Determination selection: Waiting Period Start Date = DOD (Date of Disablement); Waiting Period End Date = DOD + 59 calendar days; IP Start Date = Waiting Period End Date + 1; IP End Date = IP Start Date + 3 years (minus 1 day); TAL Claim No; WC Claim Status; Date Closed; Closure Reason; Superannuation Fund.
- Move Employee Address to the Emp Details tab (optional, "nice to have").
- For each new field: Specify if it impacts payroll calculations, week counting, or EPSS commencement; Define data source or entry method (Superannuation Fund: user entry or lookup; Employee Details: sourced from SAP HR or user entry); Confirm if moving Employee Address is required or optional.
- The Emp/Members Statement tab for EPSS Off Duty claims will be replaced by a new "EPSS Off Duty" tab.
- The "Send to Aware/TAL" button will be removed from the Off Duty tab.
- TAL documents will be uploaded using existing document categories (no new upload mechanism required).
- The Emp/Members Statement tab will be hidden for EPSS Off Duty claims.
- The new EPSS Off Duty tab will display all required fields for Off Duty claim management, as per business requirements.
- Navigation and layout will be consistent with the current PBRI Emp/Members Statement tab, except for the above changes.
- A screenshot or navigation steps for the current PBRI Emp/Members Statement tab will be provided for reference.

Source: OLB001_spec.md; OLB002_spec.md; OLB003_spec.md — 2026-01-28 05:50:16 UTC

## Non-Functional Requirements

- All Off Duty claim data must be auditable in OLIMS.
- Document uploads and changes must be logged.
- Access to Off Duty claim data is restricted to authorized users.
- Reporting on Off Duty claims must be available for compliance and reconciliation.
- All changes must be auditable in OLIMS.
- Data entry for new fields must be restricted to authorized users.
- Changes must support reporting and reconciliation for payroll and compliance.
- All document uploads and changes are logged in OLIMS for audit purposes.
- Access to the new EPSS Off Duty tab and document upload is restricted to authorised claims officers.
- Reporting and reconciliation of uploaded documents will follow existing OLIMS controls.

Source: OLB001_spec.md; OLB002_spec.md; OLB003_spec.md — 2026-01-28 05:50:45 UTC

## Constraints

- No payroll impact for Off Duty claims.
- No changes to payroll or SAP integration for Off Duty claims.
- Move Employee Address to the Emp Details tab is optional ("nice to have").
- TAL documents will be uploaded using existing document categories (no new upload mechanism required).
- The Emp/Members Statement tab will be hidden for EPSS Off Duty claims.

Source: OLB001_spec.md; OLB002_spec.md; OLB003_spec.md — 2026-01-28 05:51:09 UTC

## Acceptance Criteria

- [ ] New "EPSS Off Duty" tab is available in OLIMS.
- [ ] All specified fields are present and function as described.
- [ ] No payroll actions are triggered by Off Duty claims.
- [ ] "TAL Off Duty Claim Forms" process is documented and implemented.
- [ ] UI changes (button removal, document upload, tab hiding) are complete.
- [ ] All data changes and uploads are auditable.
- [ ] Reports on Off Duty claims are available and accurate.
- [ ] All specified fields are present in the Case Details tab and function as described.
- [ ] Each field’s impact on payroll, week counting, and EPSS commencement is documented.
- [ ] Data sources and entry methods are defined for all new fields.
- [ ] Employee Address is moved to Emp Details tab if required.
- [ ] Validation and exception handling are implemented.
- [ ] Changes are auditable and support compliance/reporting needs.
- [ ] The Emp/Members Statement tab is hidden for EPSS Off Duty claims.
- [ ] A new EPSS Off Duty tab is available and displays all required fields.
- [ ] The "Send to Aware/TAL" button is removed from the Off Duty tab.
- [ ] TAL documents can be uploaded using existing categories.
- [ ] Navigation and layout match the business requirements and reference screenshot.
- [ ] Exception handling is implemented as specified.

Source: OLB001_spec.md; OLB002_spec.md; OLB003_spec.md — 2026-01-28 05:51:35 UTC

## Traceability

- DOA010 — referenced in OLB001 and OLB002 for Off Duty claim management and Case Details field updates.
- DOA012 — referenced in OLB001 and OLB002 for Off Duty claim management and Case Details field updates.
- DOB001–DOB005 — referenced in OLB001 and OLB002 for Off Duty claim management.
- P905 retro logic — referenced in OLB002.
- PBRI Emp/Members Statement tab (existing) — reference for navigation and layout consistency in OLB003.
- BRD4_Phase 4_Requirements Notes.xlsx — supporting reference for OLB001, OLB002, OLB003.

Source: OLB001_spec.md; OLB002_spec.md; OLB003_spec.md — 2026-01-28 05:52:02 UTC
