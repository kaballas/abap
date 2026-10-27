# Functional Specification: RPK001 — EPSS Forecast Estimates – Summary Report

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires robust forecasting and reporting to support scheme management, financial planning, and compliance. The EPSS Forecast Estimates – Summary Report provides a consolidated view of forecasted EPSS payments and weeks for each benefit period (Period 1, 2, and 3) by employee and incident, supporting operational and scheme-wide reporting requirements.

---

## 2. Scope

This specification covers the design and delivery of the EPSS Forecast Estimates – Summary Report (RPK001) in SAP/OLIMS. The report will extract and summarise forecast data entered in OLIMS and payroll, providing a standard selection screen, defined output columns, and export to Excel functionality. All required data fields are assumed to exist in OLIMS/EPSS/Payroll.

---

## 3. Detailed Functional Requirements

- The report must be accessible to authorised users via the SAP/OLIMS reporting menu.
- Selection criteria must include:
    - Date From
    - Date To
    - Employee Number
    - Incident Number
    - Option to run with no criteria (return all records)
- Output columns must include:
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
- Each record (employee/incident/period/quarter) must be a separate line item.
- Data must be sourced from OLIMS, EPSS, and payroll, with field mapping confirmed by payroll functional support.
- The report must be exportable to Excel.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a clear error message indicating the missing data source.
- If no records match the selection criteria, the report must return an empty result set with a suitable message.
- If export to Excel fails, an error message must be shown and logged for support.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors, Reporting Analysts).
- All report executions must be logged for audit purposes.
- Data extracted must comply with NSWPF data privacy and security policies.
- Exported files must be stored in secure, access-controlled locations.

---

## 6. References and Linked Requirements

- Cross-references: OLF001–OLF010 (EPSS estimation tab/forecasting calculator), RPL001–RPL005 (EPSS forecast estimates – detailed), RPA001 (Data extraction), RPE001 (Detailed EPSS Payment Report)
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Report is accessible via SAP/OLIMS reporting menu.
- [ ] Selection screen includes all required criteria and allows blank (all records) execution.
- [ ] Output columns match specification and are mapped to correct data sources.
- [ ] Each forecast estimate record is a separate line item.
- [ ] Report can be exported to Excel.
- [ ] Error handling is implemented for missing data and export failures.
- [ ] Access controls and audit logging are in place.
- [ ] All data complies with privacy and security requirements.