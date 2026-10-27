# Functional Specification: RPK003 — EPSS Forecast Estimates – Summary Report

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires robust operational and scheme reporting to support financial forecasting, scheme management, and compliance. The EPSS Forecast Estimates – Summary Report (RPK003) is a key deliverable to provide a consolidated view of forecasted EPSS payments and weeks for each benefit period (Periods 1, 2, and 3), supporting quarterly and annual financial planning, scheme monitoring, and reporting to stakeholders.

---

## 2. Scope

This specification covers the requirements for the EPSS Forecast Estimates – Summary Report, including selection criteria, report columns, data sources, export functionality, and compliance controls. The report must extract and summarise forecast data from OLIMS, EPSS, and Payroll systems, and be accessible to authorised users for analysis and reporting.

---

## 3. Detailed Functional Requirements

- The report must provide a standard selection screen with the following criteria:
    - Date From
    - Date To
    - Employee Number
    - Incident Number
    - Option to run with no criteria (return all records)
- The report must display the following columns for each record:
    - Financial Year
    - Quarter No
    - Employee Number
    - Incident Number
    - Claim Number
    - Period 1 – future no of weeks
    - Period 1 – forecast payments
    - Period 2 – future no of weeks
    - Period 2 – forecast payments
    - Period 3 – future no of weeks
    - Period 3 – forecast payments
- Each record (estimate) must be output as a separate line item.
- Data must be sourced from OLIMS, EPSS, and Payroll, with mapping confirmed by Payroll functional support.
- The report must be exportable to Excel format.
- All required fields must already exist in OLIMS/EPSS/Payroll or be flagged as dependencies.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a clear error message and log the missing fields for remediation.
- If no records match the selection criteria, the report must return a message: "No data found for the selected criteria."
- If export to Excel fails, the user must be notified with an error message and provided with troubleshooting steps.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors, Reporting Analysts).
- All report exports and access must be logged for audit purposes.
- Data must be handled in accordance with NSWPF privacy and data security policies.
- The report must support reconciliation with payroll and OLIMS data for audit and compliance checks.

---

## 6. References and Linked Requirements

- Cross-references: RPK001, RPK002, RPK004, RPL001–RPL005 (detailed forecast report), RPE001–RPE004 (payment detail), OLIMS estimator/forecast tab, Payroll data mapping.
- See also: [EPSS Reporting Requirements](#Operational_Reporting), [Scheme Reporting (HSWC)](#EPSS_scheme_reporting_(HSWC))

---

## 7. Acceptance Criteria

- [ ] Report selection screen includes all required criteria and allows blank (all records) execution.
- [ ] Report displays all specified columns, with correct data mapping from OLIMS/EPSS/Payroll.
- [ ] Each forecast estimate is output as a separate line.
- [ ] Report is exportable to Excel.
- [ ] Access controls and audit logging are in place.
- [ ] Error handling is implemented for missing data, no results, and export failures.
- [ ] Report output is validated against source data for accuracy.
- [ ] All compliance and privacy requirements are met.