# Functional Specification: RPL001 — EPSS Forecast Estimates – Detailed Report

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires robust operational and financial forecasting to support scheme management, reporting, and compliance. The EPSS estimator/forecast tab in OLIMS is used by claims officers to enter detailed estimates for each claim and benefit period. A detailed extract/report is required to provide visibility of all forecasted estimates, supporting financial planning, scheme oversight, and external reporting (e.g., to icare and internal stakeholders).

---

## 2. Scope

This specification covers the design and delivery of the "EPSS Forecast Estimates – Detailed Report" (RPL001), which extracts all estimate records entered in the OLIMS EPSS estimator/forecast tab. The report must include all required fields for Periods 1, 2, and 3, support flexible selection criteria, and be exportable to Excel. It assumes all required data fields are available in OLIMS/EPSS/Payroll and that technical mapping will be confirmed by the Payroll functional team.

---

## 3. Detailed Functional Requirements

- **RPL001**: The report must extract all EPSS forecast estimate records from OLIMS, displaying each as a separate line item.
- **RPL002**: Selection criteria must include:
    - Date Range: From and To
    - Employee Number
    - Incident Number
    - Allow for no criteria (return all records)
- **RPL003**: Report columns must include:
    - Financial Year
    - Quarter No
    - Employee Number
    - Incident Number
    - Claim Number
    - All Period 1 fields (as per OLIMS estimator/forecast tab and payroll data sources)
    - All Period 2 fields (as per OLIMS estimator/forecast tab and payroll data sources)
    - All Period 3 fields (as per OLIMS estimator/forecast tab and payroll data sources)
- **RPL004**: Each forecast estimate record must be output as a separate line item (no aggregation).
- **RPL005**: The report must be exportable from SAP in Excel format.
- Data mapping for each field must be confirmed with Payroll/OLIMS teams to ensure all required data is available for extraction.
- The report must align with the latest business rules for estimation, including effective dates, calculation logic, and user-entered/system-derived fields.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a clear error message and log the missing fields for technical review.
- If no records match the selection criteria, the report must return a "No data found" message.
- If export to Excel fails, the system must notify the user and provide troubleshooting steps.

---

## 5. Compliance/Controls

- All report data must be sourced from authorised OLIMS/EPSS/Payroll tables.
- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors, Reporting Analysts).
- Exported reports must comply with NSWPF data security and privacy policies.
- All report generation and export actions must be audit logged for compliance and reconciliation.

---

## 6. References and Linked Requirements

- Cross-references: OLF001–OLF010 (EPSS estimation tab/forecasting calculator), RPK001–RPK004 (EPSS forecast estimates – summary), DOA010, DOA012, DOB001–DOB005, P905 retro logic.
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] The report extracts all EPSS forecast estimate records as separate line items.
- [ ] Selection criteria (date range, employee number, incident number, no criteria) are available and function as specified.
- [ ] All required columns for Periods 1, 2, and 3 are present and mapped to correct data sources.
- [ ] The report is exportable to Excel and matches the required format.
- [ ] Exception handling is implemented for missing data, no results, and export failures.
- [ ] Access controls and audit logging are in place.
- [ ] All data fields are confirmed available by Payroll/OLIMS teams.
- [ ] The report aligns with the latest business rules and estimation logic.