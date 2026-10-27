# Functional Specification: OLE001 — Integration to IT0015 for Other Income

---

## 1. Business Background

The NSW Police Force requires accurate and auditable integration between OLIMS (Online Injury Management System) and SAP HR/Payroll (IT0015) for the entry and management of external income and payment offsets. This ensures that all external earnings impacting EPSS (Enhanced Police Support Scheme) payments are captured, processed, and reported consistently, supporting compliance, transparency, and correct benefit calculation.

---

## 2. Scope

This specification covers the integration of OLIMS with SAP IT0015 for the entry, audit, and management of external income and payment offsets (e.g., WT3670). It includes requirements for data entry, document attachment, audit trail, prevention of manual IT0015 entries, and handling of multiple/recurring entries. It excludes the definition of income/payment offset policy and the full list of inclusions/exclusions, which are to be confirmed separately.

---

## 3. Detailed Functional Requirements

- OLIMS must provide an ‘Other/External Earnings’ tab for EPSS Claims Officers to enter external income/payment offsets.
- Each entry must allow attachment of supporting documentation (mandatory/optional as per business policy).
- Entries in OLIMS must be automatically integrated to SAP IT0015 using wagetype 3670 (or as specified).
- Manual entry of WT3670 in IT0015 outside OLIMS integration must be prevented.
- OLIMS must support both one-off and recurring offsets, with start and end dates.
- Multiple entries (including overlapping date ranges) must be supported, with clear mapping to SAP wage types.
- All create and delete actions must be audit-trailed; deleted entries must remain visible in the audit trail.
- When an entry is deleted, any attached document must also be flagged as inactive (not physically deleted).
- Only create and delete actions are permitted; updates/edits are not allowed.
- The system must prevent entry/deletion if the payroll control record is locked, displaying an error to the user.
- Recurring entries must be handled by start/end dates and, if required, split across incidents/pay cycles.
- Outstanding policy decisions (e.g., inclusions/exclusions) must be referenced and updated once confirmed.

---

## 4. Exception Handling

- If the payroll control record is locked, OLIMS must block creation/deletion of entries and display an error.
- If SAP integration fails, OLIMS must log the error and notify the Claims Officer for manual resolution.
- If a duplicate entry is detected for the same wagetype/date range, OLIMS must warn the user and require confirmation.
- If document upload fails, the entry must not be saved and an error message must be displayed.

---

## 5. Compliance/Controls

- All entries and deletions are audit-trailed and reportable.
- Supporting documentation must be attached and retained per compliance requirements.
- Only authorised users (EPSS Claims Officers) can create/delete entries.
- Manual IT0015 entries for WT3670 are blocked to ensure data integrity.
- All actions are subject to payroll and OLIMS access controls and reporting.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001–DOB005, P905 retro logic
- Related requirements: OLE002–OLE010, CR001
- Policy and inclusion/exclusion list: [Open Item 4](#open-items-to-finalise-requirements-for-phase-5)

---

## 7. Acceptance Criteria

- [ ] OLIMS ‘Other/External Earnings’ tab is available and functional for Claims Officers.
- [ ] Entries are integrated to SAP IT0015 (WT3670) without manual intervention.
- [ ] Supporting documentation can be attached and is retained/auditable.
- [ ] Manual IT0015 entries for WT3670 are blocked.
- [ ] Both one-off and recurring offsets are supported with correct date handling.
- [ ] Audit trail records all create/delete actions; deleted entries and documents remain visible/inactive.
- [ ] System prevents entry/deletion when payroll is locked.
- [ ] Error handling and user notifications are implemented as specified.
- [ ] All compliance and access controls are enforced.
- [ ] All requirements are tested and signed off by business and payroll stakeholders.