# Functional Specification: RPJ004 — EPSS Period 2 – PID Greater Than 7 Days Report

---

## 1. Business Background

The NSW Police Force requires enhanced reporting for the EPSS (Enhanced Police Support Scheme) to identify officers in Period 2 who have Pre-Injury Duties (PID) certificates exceeding 7 days. This supports scheme monitoring, compliance, and ensures correct benefit administration for officers transitioning through EPSS periods.

---

## 2. Scope

This specification covers the design and implementation of the "EPSS Period 2 – PID greater than 7 days" report (RPJ004). The report will be accessible from the OLIMS EPSS report area, extract data from OLIMS, EPSS, and Payroll, and support both foreground and background execution with Excel export.

---

## 3. Detailed Functional Requirements

- The report must provide a standard selection screen with the following criteria:
  - Employee Number
  - Incident Number
  - WC Primary Claim (Primary/Other/Both)
  - Ability to run with no selection criteria (returns all results)
- When "WC Primary Claim" is selected, only primary claims are shown; otherwise, both primary and other claims are included.
- Report columns must include:
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
  - Last Modified By (RTD record)
  - Last Modified On (RTD record)
  - Last Modified At (RTD record)
- The report must be exportable to Excel.
- The report must be executable in SAP foreground or background as required.

---

## 4. Exception Handling

- If required data fields are missing in OLIMS/EPSS/Payroll, the report must flag the missing data and continue processing other records.
- If no records match the selection criteria, the report must return a "No results found" message.
- Any technical errors during report generation must be logged and a user-friendly error message displayed.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors).
- All report executions must be audit logged (user, date/time, selection criteria).
- Data extracted must comply with NSWPF privacy and data retention policies.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- Related reports: RPE (Detailed EPSS Payment), RPF (Period 1 Utilisation), RPL (EPSS forecast estimates – detailed)

---

## 7. Acceptance Criteria

- [ ] Report is accessible from the OLIMS EPSS report area.
- [ ] Selection screen includes all required criteria.
- [ ] Report displays all specified columns with correct data.
- [ ] Only PID certificates with more than 6 PID days are included.
- [ ] Report can be exported to Excel.
- [ ] Exception handling and audit logging are implemented.
- [ ] Access controls are enforced.
- [ ] All data sources are confirmed and mapped.
- [ ] User documentation is provided.