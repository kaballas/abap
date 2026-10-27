# Functional Specification: RPJ001 — EPSS Period 2 – PID Greater Than 7 Days Report

---

## 1. Business Background

The NSW Police Force requires enhanced reporting for the EPSS (Enhanced Police Support Scheme) to monitor and manage claims where officers in EPSS Period 2 have Pre-Injury Duties (PID) for more than 7 days. This report supports scheme compliance, performance monitoring, and ensures correct application of scheme rules for officers transitioning through benefit periods.

---

## 2. Scope

This specification covers the design and delivery of the "EPSS Period 2 – PID Greater Than 7 Days" report (RPJ001) within the OLIMS/EPSS reporting suite. The report will extract and display relevant data from OLIMS, EPSS, and Payroll systems for all officers in Period 2 with PID certificates exceeding 6 days.

---

## 3. Detailed Functional Requirements

- The report must be accessible from the OLIMS EPSS report area and support execution in SAP foreground or background.
- A standard selection screen must be provided with the following criteria:
    - Employee Number
    - Incident Number
    - WC Primary Claim (when selected, only primary claims are shown; otherwise, all claims)
    - Ability to run with no selection criteria (returns all results)
- The report must extract and display the following columns:
    - Employee Number
    - Employee Name
    - Incident No.
    - Claim No.
    - EPSS Period 2 (flag)
    - WC Certificate Date From
    - WC Certificate Status
    - No. of Days PID (only include certificates with more than 6 PID days)
    - PID-RTD days (new column)
    - RTD Date From
    - RTD Date To
    - RTD Description
    - Record inactive (flag) (refers to the PID certificate)
    - Last Modified By (RTD record)
    - Last Modified On (RTD record)
    - Last Modified At (RTD record)
- The report must be exportable to Excel.
- All required data fields must be available in OLIMS/EPSS/Payroll for extraction.

---

## 4. Exception Handling

- If required data fields are missing or inaccessible, the report must display a clear error message indicating which fields are unavailable.
- If no records match the selection criteria, the report must return a message stating "No results found."
- Data extraction errors must be logged and reported to system administrators.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors).
- All report executions and exports must be audit logged.
- Data presented must comply with payroll controls and OLIMS access policies.
- The report supports compliance monitoring for PID duration in Period 2 and assists in scheme reporting and reconciliation.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- Related reports: RPE (Detailed EPSS Payment Report), RPF (Period 1 Utilisation Summary)
- Source: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Report is accessible in the OLIMS EPSS report area.
- [ ] Standard selection screen is implemented with all required criteria.
- [ ] Report displays all specified columns and only includes PID certificates with more than 6 days.
- [ ] Data is sourced from OLIMS/EPSS/Payroll and matches business requirements.
- [ ] Report can be exported to Excel.
- [ ] Exception handling is implemented for missing data and no results.
- [ ] Access controls and audit logging are in place.
- [ ] All linked requirements and references are traceable in the delivered solution.