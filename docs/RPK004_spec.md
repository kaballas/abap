# Functional Specification: RPK004 — EPSS Forecast Estimates Report Export

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires robust operational and financial reporting to support scheme management, forecasting, and compliance. Accurate forecast estimates of EPSS payments across Periods 1, 2, and 3 are essential for financial planning, scheme oversight, and reporting to stakeholders such as HSWC, FABS, and icare. The RPK004 requirement addresses the need for an exportable summary report of EPSS forecast estimates, sourced from OLIMS, EPSS, and payroll systems.

---

## 2. Scope

This specification covers the design and delivery of the "EPSS Forecast Estimates – Summary" report (RPK004), including:
- Data extraction from OLIMS, EPSS, and payroll
- Standard selection screen (date range, employee, incident)
- Output columns for financial year, quarter, employee/incident/claim, and forecasted weeks/payments for each period
- Export to Excel from SAP
- Required data mapping and technical dependencies

---

## 3. Detailed Functional Requirements

- The report must be accessible to authorised users via SAP and/or OLIMS reporting menus.
- Selection criteria must include:
  - Date From / Date To (range)
  - Employee Number (optional)
  - Incident Number (optional)
  - The report must run with no criteria (returns all records).
- Output columns:
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
- Data must be sourced from OLIMS/EPSS/Payroll; all required fields must exist and be mapped.
- The report must be exportable to Excel.
- Payroll functional support is required to confirm data mapping and extraction points for all columns.

---

## 4. Exception Handling

- If required data fields are missing or incomplete, the report must display a warning and exclude affected records.
- If no data matches the selection criteria, the report must return a "No records found" message.
- If export to Excel fails, an error message must be shown and logged for support.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors, Reporting Analysts).
- Data exports must comply with NSWPF data security and privacy policies.
- All report runs and exports must be audit logged (user, date/time, selection criteria).

---

## 6. References and Linked Requirements

- Cross-references: RPK001–RPK003, RPL001–RPL005, RPE001–RPE004, OLIMS/EPSS/Payroll data mapping documentation
- Related: DOA010, DOA012, DOB001–DOB005, P905 retro logic

---

## 7. Acceptance Criteria

- [ ] Report is accessible via SAP/OLIMS by authorised users
- [ ] Selection screen includes Date From/To, Employee Number, Incident Number, and allows blank criteria
- [ ] Output columns match specification and are populated from mapped data sources
- [ ] Report can be exported to Excel without data loss or formatting errors
- [ ] Exception handling is implemented as specified
- [ ] Access controls and audit logging are in place
- [ ] All required data fields are confirmed available and mapped by Payroll functional team
- [ ] User acceptance testing (UAT) scenarios are passed for typical, edge, and error cases