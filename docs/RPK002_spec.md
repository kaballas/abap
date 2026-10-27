# Functional Specification: RPK002 — EPSS Forecast Estimates – Summary Report

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires robust operational reporting to support scheme management, financial forecasting, and compliance. The EPSS Forecast Estimates – Summary Report is a key deliverable to provide a consolidated view of forecasted EPSS payments and benefit periods (Periods 1, 2, and 3) for all eligible officers, supporting quarterly and annual planning, scheme monitoring, and external reporting obligations.

---

## 2. Scope

This specification covers the requirements for the EPSS Forecast Estimates – Summary Report (RPK002), including selection criteria, report columns, data sources, export functionality, and integration with OLIMS, EPSS, and SAP Payroll. The report must be accessible to authorised users and support extraction of all required data fields for analysis and compliance.

---

## 3. Detailed Functional Requirements

- **Selection Criteria:**
  - Date From
  - Date To
  - Employee Number
  - Incident Number
  - The report must allow execution with no criteria entered (i.e., return all records).

- **Report Columns:**
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

- **Data Sources:**
  - All fields must be sourced from OLIMS, EPSS, and SAP Payroll systems.
  - Payroll functional support is required to confirm data mapping and extraction points for all columns.

- **Export Functionality:**
  - The report must be exportable from SAP in Excel format.

- **Accessibility:**
  - The report must be available to authorised users via the standard reporting menu.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a clear error message indicating which fields are missing.
- If no records match the selection criteria, the report must return a message stating "No records found."
- If data extraction from any source system fails, the report must log the error and notify the user.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised personnel only.
- All report exports must be logged for audit purposes.
- Data included in the report must comply with payroll controls, OLIMS access policies, and reporting/reconciliation requirements.

---

## 6. References and Linked Requirements

- Cross-references: RPK001, RPK003, RPK004, RPL001–RPL005, DOA010, DOA012, DOB001–DOB005, P905 retro logic.
- See also: [EPSS Forecast Estimates – Detailed Report (RPL)] and [EPSS Estimation Tab Requirements (OLF001–OLF010)].

---

## 7. Acceptance Criteria

- [ ] Report selection screen includes Date From, Date To, Employee Number, Incident Number, and allows blank criteria.
- [ ] Report output includes all specified columns with correct data mapping.
- [ ] Data is sourced from OLIMS, EPSS, and SAP Payroll as confirmed by payroll functional team.
- [ ] Report is exportable to Excel.
- [ ] Access controls and export logging are in place.
- [ ] Exception handling is implemented for missing data and extraction errors.
- [ ] Report is available to authorised users in the reporting menu.
- [ ] All requirements are traceable to business and compliance needs.