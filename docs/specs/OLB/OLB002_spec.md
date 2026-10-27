# Functional Specification: OLB002 — Case Details Tab Enhancements

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
- [ ] Changes are auditable and support compliance/reporting needs.