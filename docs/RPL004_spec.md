# Functional Specification: RPL004 — EPSS Forecast Estimates – Detailed Report

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires robust operational and scheme reporting to support compliance, financial forecasting, and scheme management. The "EPSS Forecast Estimates – Detailed Report" (RPL004) is a critical deliverable that provides a detailed extract of all forecast estimates entered in the OLIMS EPSS estimator/forecast tab. This report supports scheme oversight, actuarial analysis, and recoupment processes by providing granular, period-based forecast data for each claim and benefit period.

---

## 2. Scope

This specification covers the design, data mapping, and output requirements for the RPL004 report. The report will extract and display all EPSS forecast estimate records as individual line items, including all relevant Period 1, 2, and 3 fields, for all employees and incidents. The report must be exportable to Excel and source data from OLIMS, EPSS, and Payroll systems.

---

## 3. Detailed Functional Requirements

- **RPL001**: The report must extract all forecast estimate records from the OLIMS EPSS estimator/forecast tab, displaying each as a separate line item.
- **RPL002**: Selection criteria must include:
    - Date Range: To and From dates
    - Employee Number
    - Incident Number
    - Allow for no criteria to be entered (i.e., return all records)
- **RPL003**: Report columns must include:
    - Financial Year
    - Quarter No
    - Employee Number
    - Incident Number
    - Claim Number
    - All Period 1 fields (as per OLIMS estimator/forecast tab and payroll data sources)
    - All Period 2 fields (as per OLIMS estimator/forecast tab and payroll data sources)
    - All Period 3 fields (as per OLIMS estimator/forecast tab and payroll data sources)
- **RPL004**: Each forecast estimate record must be output as a separate line item; no aggregation.
- **RPL005**: The report must be exportable from SAP in Excel format.
- Data mapping for each field must be confirmed with Payroll functional and technical teams to ensure all required data is available for extraction.
- All field names and definitions must align with the OLIMS estimator/forecast tab and reporting requirements.

---

## 4. Exception Handling

- If required data fields are missing or unavailable in OLIMS/EPSS/Payroll, the report must flag these records and output a warning message.
- If no records match the selection criteria, the report must display a "No data found" message.
- Any technical errors during extraction or export must be logged and reported to the system administrator.

---

## 5. Compliance/Controls

- All report extracts must comply with NSWPF data privacy and security policies.
- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors, Reporting Analysts).
- Audit logs must be maintained for report generation and export activities.
- The report must support reconciliation and scheme reporting requirements as defined by FABS and HSWC.

---

## 6. References and Linked Requirements

- Cross-references: RPK001–RPK004 (EPSS forecast estimates – summary), OLF001–OLF010 (EPSS estimation tab/forecasting calculator), DOA010, DOA012, DOB001–DOB005, P905 retro logic.
- Data mapping and field definitions to be confirmed with Payroll functional team.

---

## 7. Acceptance Criteria

- [ ] The report extracts all forecast estimate records as individual line items.
- [ ] Selection criteria function as specified, including support for blank criteria.
- [ ] All required columns are present and correctly mapped to OLIMS/EPSS/Payroll data sources.
- [ ] The report is exportable to Excel.
- [ ] Exception handling is implemented for missing data and technical errors.
- [ ] Access controls and audit logging are in place.
- [ ] The report meets compliance and reconciliation requirements.
- [ ] All business and technical stakeholders have reviewed and signed off on the report output and field mapping.