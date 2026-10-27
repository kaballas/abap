# Functional Specification: RPQ005 — Off Duty Claims Report

---

## 1. Business Background

The NSW Police Force (NSWPF) requires comprehensive reporting on EPSS Off Duty claims to support scheme management, compliance, and operational oversight. The Off Duty Claims Report is a key deliverable for monitoring claim status, benefit periods, and workflow milestones for officers with off duty incidents. This report is essential for tracking claim progress, ensuring timely processing, and supporting data-driven decision-making.

---

## 2. Scope

This specification covers the requirements for the Off Duty Claims Report (RPQ005) within the EPSS reporting suite. The report will extract and present data on all EPSS Off Duty claims, including claim details, benefit period dates, status, and workflow milestones. The solution must support selection criteria, detailed output columns, and export to Excel. The report will source data from OLIMS, EPSS, and Payroll systems.

---

## 3. Detailed Functional Requirements

- **Selection Criteria:**
  - Employee Number
  - Duty Type (Off Duty)
  - Incident Number
  - Claim Status
  - Ability to filter by open reminders/tasks due for a day or date range

- **Report Columns:**
  - Employee Number
  - Duty Type (Off Duty)
  - Incident Number
  - Date of Disablement
  - Waiting Period End Date
  - IP Benefit Start Date
  - IP Benefit End Date
  - TAL Claim Number
  - Claim Status
  - Date Claim Package Sent
  - Date Claim Package Received
  - Date Claim Lodged
  - Date Claim Admitted
  - EPSS Claims Advisor
  - EPSS Supervisor

- **Additional Requirements:**
  - The report must be exportable to Excel.
  - All fields must be sourced from OLIMS, EPSS, or Payroll and mapped accordingly.
  - The report must allow for additional fields to be added based on future technical solution changes.
  - Each claim record must be displayed as a separate line item.
  - The report must support selection and filtering by open reminders/tasks due for a day or date range.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must flag these records and display a warning message.
- If no records match the selection criteria, the report must display a "No records found" message.
- If export to Excel fails, an error message must be shown and logged for support.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors).
- All report exports and access must be logged for audit purposes.
- Data presented must comply with privacy and confidentiality requirements.
- The report must support compliance and SLA performance reporting as required by HSWC and FABS.

---

## 6. References and Linked Requirements

- Cross-references: OLB001–OLB003 (Off Duty Claim Management), RPP (Document Overview), RPH (Reminders/To Do List), SR001–SR003 (Scheme Reporting)
- Related documents: BRD4_Phase 4_Requirements Notes.xlsx, min_a.md, OLIMS design documentation

---

## 7. Acceptance Criteria

- [ ] Report includes all required selection criteria and columns as specified.
- [ ] Data is accurately sourced and mapped from OLIMS, EPSS, and Payroll.
- [ ] Report is exportable to Excel.
- [ ] Exception handling is implemented for missing data and export errors.
- [ ] Access controls and audit logging are in place.
- [ ] Report supports compliance and SLA reporting needs.
- [ ] All open reminders/tasks can be filtered and reported as required.
- [ ] Additional fields can be added in future without major redesign.