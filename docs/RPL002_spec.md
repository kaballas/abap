# Functional Specification: RPL002 — EPSS Forecast Estimates – Detailed Report

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires robust operational and compliance reporting to support scheme management, performance monitoring, and regulatory obligations. The EPSS Forecast Estimates – Detailed Report (RPL002) provides a comprehensive extract of all forecast estimates entered in the OLIMS EPSS estimator/forecast tab, supporting financial planning, scheme forecasting, and external reporting (e.g., to icare and internal stakeholders).

---

## 2. Scope

This specification covers the design, data mapping, and output requirements for the RPL002 report. The report will extract and display all forecast estimate records for EPSS claims, including all relevant Period 1, 2, and 3 fields, for the selected date range, employee, and/or incident. The report must be exportable to Excel and accessible to authorised users via SAP/OLIMS.

---

## 3. Detailed Functional Requirements

- **Selection Criteria:**
  - Date Range: From and To dates (mandatory or blank for all)
  - Employee Number (optional)
  - Incident Number (optional)
  - Allow execution with no criteria (returns all records)

- **Report Columns:**
  - Financial Year
  - Quarter No
  - Employee Number
  - Incident Number
  - Claim Number
  - All Period 1 fields (as per OLIMS estimator/forecast tab and payroll data sources)
  - All Period 2 fields (as per OLIMS estimator/forecast tab and payroll data sources)
  - All Period 3 fields (as per OLIMS estimator/forecast tab and payroll data sources)

- **Period 1/2/3 Fields (examples, to be confirmed with business):**
  - Start Date, End Date, Forecasted Weeks, Forecasted Payments, RTW Hours, RTW Salary, Capacity Status, etc.

- Each forecast estimate record is output as a separate line item (no aggregation).

- Data sources for all fields must be confirmed with Payroll/OLIMS teams to ensure extractability.

- The report must be exportable to Excel.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a warning and continue processing available records.
- If no records match the selection criteria, the report returns a blank result set with column headers.
- Data extraction errors (e.g., system connectivity issues) must be logged and reported to IT support.

---

## 5. Compliance/Controls

- Access to the report is restricted to authorised users (EPSS Claims Officers, Supervisors, Reporting Analysts).
- All report extracts must be auditable, with user access and export actions logged.
- Data must be handled in accordance with NSWPF privacy, payroll, and OLIMS access policies.
- The report supports reconciliation and audit requirements for scheme forecasting and external reporting.

---

## 6. References and Linked Requirements

- Cross-references: OLF001–OLF010 (EPSS Estimation Tab), RPK001–RPK004 (EPSS Forecast Estimates – Summary), DOA010, DOA012, DOB001–DOB005, P905 retro logic.
- Source: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Report is accessible to authorised users via SAP/OLIMS.
- [ ] Selection criteria function as specified (date range, employee, incident, or blank for all).
- [ ] All required columns are present and populated from correct data sources.
- [ ] Each forecast estimate record is output as a separate line.
- [ ] Report is exportable to Excel.
- [ ] Exception handling is implemented as specified.
- [ ] Access and export actions are logged for audit.
- [ ] Data mapping is confirmed with Payroll/OLIMS teams.
- [ ] Report output matches business requirements and supports compliance/audit needs.