# Functional Specification: RPJ002 — EPSS Period 2 – PID Greater Than 7 Days Report

---

## 1. Business Background

The NSW Police Force Enhanced Police Support Scheme (EPSS) provides supplementary support payments to eligible officers. Monitoring officers in EPSS Period 2 who have Pre-Injury Duties (PID) for more than 7 days is critical for compliance, scheme management, and reporting. The RPJ002 report enables identification and analysis of such cases, supporting operational oversight and scheme integrity.

---

## 2. Scope

This specification covers the design and implementation of the RPJ002 report: "EPSS Period 2 – PID Greater Than 7 Days." The report will extract and display relevant data for officers in EPSS Period 2 with PID certificates exceeding 6 days, supporting both operational and compliance reporting. The report is accessible via the OLIMS EPSS report area and can be executed in SAP foreground or background, with export to Excel.

---

## 3. Detailed Functional Requirements

- **Selection Criteria:**
  - Employee Number
  - Incident Number
  - WC Primary Claim (when selected, only primary claims are shown; otherwise, both primary and other claims are included)
  - Ability to run the report with no selection criteria (returns all results)

- **Report Columns:**
  - Employee Number
  - Employee Name
  - Incident No.
  - Claim No.
  - EPSS Period 2 (flag)
  - WC Certificate Date From
  - WC Certificate Status
  - No. of Days PID (only include PID certificates with more than 6 PID days)
  - PID-RTD days (new column)
  - RTD Date From
  - RTD Date To
  - RTD Description
  - Record inactive (flag) (refers to the PID certificate)
  - Last Modified By (refers to the RTD record)
  - Last Modified On (refers to the RTD record)
  - Last Modified At (refers to the RTD record)

- **Execution and Output:**
  - The report is executed from the OLIMS EPSS report area.
  - Can be run in SAP foreground or background.
  - Output is exportable to Excel.
  - All required fields are assumed to exist in OLIMS/EPSS/Payroll.

---

## 4. Exception Handling

- If required data fields are missing for a record, the report will display a blank value and log a warning in the output.
- If no records match the selection criteria, the report will return an empty result set with a suitable message.
- If the report is run with no selection criteria, all eligible records are returned.
- Errors in data extraction (e.g., system connectivity) will be logged and reported to the user.

---

## 5. Compliance/Controls

- Access to the report is restricted to authorised users (EPSS Claims Officers, Supervisors, and relevant reporting staff).
- Data extracted is for internal reporting and compliance purposes only.
- All report executions are logged for audit purposes.
- Exported data must be handled in accordance with NSWPF data security and privacy policies.

---

## 6. References and Linked Requirements

- Cross-references: RPJ001, RPJ003, RPJ004, RPE001–RPE004, RPF001–RPF005
- Related business requirements: OLIMS/EPSS reporting, PID/RTD tracking, compliance reporting
- See also: [EPSS Reporting Requirements](#Operational_Reporting)

---

## 7. Acceptance Criteria

- [ ] Report is accessible from the OLIMS EPSS report area.
- [ ] Selection criteria match specification and function as described.
- [ ] Report columns match specification and display correct data.
- [ ] Only PID certificates with more than 6 PID days are included.
- [ ] PID-RTD days and RTD fields are correctly populated.
- [ ] Report can be run with or without selection criteria.
- [ ] Output is exportable to Excel.
- [ ] Exception handling is implemented as specified.
- [ ] Access controls and audit logging are in place.
- [ ] All required data fields are available and mapped correctly.