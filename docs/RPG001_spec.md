# Functional Specification: RPG001 — EPSS Outbound Leave Report

---

## 1. Business Background

The EPSS Outbound Leave Report is required to identify officers on long-term non-work-related absence who may be eligible for off duty income protection. This report supports the administration of the EPSS scheme by providing visibility of officers on extended leave, enabling timely assessment of eligibility and proactive claims management.

---

## 2. Scope

This specification covers the design, data sources, selection criteria, output fields, and compliance requirements for the EPSS Outbound Leave Report. The report will be accessible in the EPSS Reporting folder and will extract data from OLIMS, EPSS, and payroll systems. It includes the addition of Leave Reason Code and Leave Reason Text columns.

---

## 3. Detailed Functional Requirements

- The report must list all officers on long-term non-work-related leave, with data sourced from OLIMS, EPSS, and payroll.
- The report selection screen must allow filtering by:
  - Employee Number
  - Incident Number
  - Leave Type
  - Date From / Date To
- The report output must include at least the following columns:
  - Employee Number
  - Employee Name
  - Incident Number
  - Leave Type Code
  - Leave Type Text
  - Leave Reason Code (new)
  - Leave Reason Text (new)
  - Leave Start Date
  - Leave End Date
  - EPSS Claims Advisor
  - EPSS Supervisor
- The report must be exportable to Excel.
- All required fields must be available and accessible from OLIMS/EPSS/Payroll.

---

## 4. Exception Handling

- If required data fields are missing or inaccessible, the report must display a clear error message indicating the missing data source.
- If no records match the selection criteria, the report must return a message: "No records found for the selected criteria."
- Data extraction errors must be logged and reported to system administrators.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors).
- The report must comply with payroll controls and OLIMS access policies.
- All report exports must be logged for audit purposes.
- Data must be reconciled with payroll and OLIMS records to ensure accuracy.

---

## 6. References and Linked Requirements

- Cross-references: RPB, RPE, RPF, RPP, RPQ, OLIMS reporting requirements.
- See also: [EPSS Reporting Folder Design], [Payroll Data Extraction Policy].

---

## 7. Acceptance Criteria

- [ ] Report is accessible in the EPSS Reporting folder.
- [ ] Selection screen includes all required filters.
- [ ] Output includes Leave Reason Code and Leave Reason Text columns.
- [ ] Data is sourced from OLIMS/EPSS/Payroll and matches business requirements.
- [ ] Report is exportable to Excel.
- [ ] Access and export actions are logged.
- [ ] Exception handling is implemented as specified.
- [ ] Report output is validated and reconciled with source systems.