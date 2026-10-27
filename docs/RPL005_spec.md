# Functional Specification: RPL005 — EPSS Forecast Estimates – Detailed Report

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires robust operational and scheme reporting to support compliance, performance monitoring, and financial forecasting. The “EPSS Forecast Estimates – Detailed Report” (RPL005) is a critical deliverable for Phase 5, providing a detailed extract of all forecast estimates entered in the OLIMS EPSS estimator/forecast tab. This report supports scheme management, actuarial analysis, and external reporting requirements.

---

## 2. Scope

This specification covers the design, data mapping, and output requirements for the RPL005 report. The report must extract all relevant forecast estimate records from OLIMS, EPSS, and Payroll, display each as a separate line item, and be exportable to Excel. The scope includes all required fields for Periods 1, 2, and 3, with explicit mapping to source systems.

---

## 3. Detailed Functional Requirements

- The report must extract all forecast estimate records from OLIMS, EPSS, and Payroll.
- Each forecast estimate record is output as a separate line item (no aggregation).
- Selection criteria:
    - Date Range: From and To
    - Employee Number
    - Incident Number
    - Allow for no criteria (return all records)
- Report columns:
    - Financial Year
    - Quarter No
    - Employee Number
    - Incident Number
    - Claim Number
    - All Period 1 fields (as per OLIMS estimator/forecast tab and payroll data sources)
    - All Period 2 fields (as per OLIMS estimator/forecast tab and payroll data sources)
    - All Period 3 fields (as per OLIMS estimator/forecast tab and payroll data sources)
- Each Period field must be explicitly listed and mapped to its source.
- The report must be exportable from SAP in Excel format.
- All required fields must be available from OLIMS/EPSS/Payroll for extraction.

---

## 4. Exception Handling

- If required data fields are missing or incomplete, the report must flag these records and include a warning in the output.
- If no records match the selection criteria, the report must display a “No data found” message.
- If data extraction fails due to system errors, an error message must be displayed and logged for support review.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors, Reporting Analysts).
- All report exports must be logged for audit purposes.
- Data must be handled in accordance with NSWPF privacy and data retention policies.
- The report must support reconciliation and audit by including all key fields and change tracking.

---

## 6. References and Linked Requirements

- Cross-references: OLF001–OLF010 (EPSS estimator/forecast tab requirements), RPK001–RPK004 (EPSS forecast estimates – summary), RPE001–RPE004 (Detailed EPSS Payment Report), RPA001 (Data extraction), P1001–P1006 (Week count logic).
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] The report extracts all forecast estimate records from OLIMS/EPSS/Payroll.
- [ ] Each record is output as a separate line item.
- [ ] All required fields for Periods 1, 2, and 3 are included and mapped to source data.
- [ ] The report supports selection by date range, employee number, and incident number, with no mandatory criteria.
- [ ] The report is exportable to Excel from SAP.
- [ ] Missing or incomplete data is flagged in the output.
- [ ] Access and export actions are logged for audit.
- [ ] The report meets all compliance and privacy requirements.
- [ ] All referenced requirements (OLF001–OLF010, RPK001–RPK004, etc.) are satisfied.