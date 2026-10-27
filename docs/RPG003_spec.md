# Functional Specification: RPG003 — EPSS Outbound Leave Report

---

## 1. Business Background

The EPSS Outbound Leave Report is required to support the administration and monitoring of officers on long-term leave who may be eligible for EPSS (Enhanced Police Support Scheme) or related entitlements. This report extends the existing PBRI Outbound Leave reporting to the EPSS context, ensuring all relevant leave data is captured for compliance, eligibility assessment, and operational oversight.

---

## 2. Scope

This specification covers the design, data sources, layout, and business rules for the EPSS Outbound Leave Report. The report must be accessible in the EPSS Reporting folder, source data from OLIMS, EPSS, and payroll systems, and include all required fields as specified by business stakeholders. Two new columns—Leave Reason Code and Leave Reason Text—are to be added after the leave type text column.

---

## 3. Detailed Functional Requirements

- The report must extract and display all officers on long-term leave relevant to EPSS eligibility.
- Data sources: OLIMS, EPSS, and payroll systems.
- Required columns include (but are not limited to):
  - Employee Number
  - Employee Name
  - Incident Number
  - Leave Type Code
  - Leave Type Text
  - **Leave Reason Code** (new)
  - **Leave Reason Text** (new)
  - Leave Start Date
  - Leave End Date
  - Additional fields as confirmed by business.
- The report must be accessible from the EPSS Reporting folder.
- Selection screen must allow filtering by Employee Number, Leave Type, Date Range, and other relevant criteria.
- All data fields must be mapped and sourced from existing systems; any gaps must be flagged for remediation.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a clear error message and log the issue for follow-up.
- Invalid or unmapped leave codes/reasons must be highlighted in the output for business review.
- If no records match the selection criteria, the report must return a "No data found" message.

---

## 5. Compliance/Controls

- Access to the report is restricted to authorised users (EPSS Claims Officers, Supervisors, and relevant payroll/HR staff).
- All report runs and exports must be logged for audit purposes.
- Data must be handled in accordance with NSWPF privacy and data protection policies.
- The report supports compliance with payroll controls, OLIMS access management, and reconciliation requirements.

---

## 6. References and Linked Requirements

- Cross-references: RPB001–RPB007 (EPSS On Duty Claim Report), RPG001–RPG002 (previous Outbound Leave requirements), PBRI Outbound Leave Report, OLIMS/EPSS/Payroll data mapping documentation.

---

## 7. Acceptance Criteria

- [ ] Report is accessible in the EPSS Reporting folder.
- [ ] Data is sourced from OLIMS, EPSS, and payroll systems as specified.
- [ ] Leave Reason Code and Leave Reason Text columns are present and correctly populated.
- [ ] Selection screen allows filtering by all required criteria.
- [ ] Report output matches the agreed layout and field definitions.
- [ ] Exception handling is implemented as specified.
- [ ] Access and export controls are in place and auditable.
- [ ] All required data fields are available and mapped; any gaps are documented and escalated.
- [ ] Report is exportable to Excel for offline analysis.