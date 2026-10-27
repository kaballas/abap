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
- [ ] Reports on Off Duty claims are available and accurate.