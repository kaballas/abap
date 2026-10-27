# Functional Specification: RPL003 — EPSS Forecast Estimates – Detailed Report

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires robust operational and scheme reporting to support compliance, performance monitoring, and financial forecasting. The EPSS Forecast Estimates – Detailed Report (RPL003) is designed to provide a comprehensive extract of all forecast estimates entered in the OLIMS EPSS estimator/forecast tab, supporting both business analysis and regulatory reporting.

---

## 2. Scope

This specification covers the design, data mapping, and output requirements for the RPL003 report. The report will extract and display all forecast estimate records for Periods 1, 2, and 3, including all relevant fields as entered or calculated in OLIMS and payroll. The report must be exportable to Excel and accessible to authorised users.

---

## 3. Detailed Functional Requirements

- **Selection Criteria:**
  - Date Range: From and To dates
  - Employee Number
  - Incident Number
  - Allow for no criteria to be entered (returns all records)

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
  - Future number of weeks
  - Forecast payment amount
  - RTW hours
  - RTW salary
  - Effective dates
  - Calculation method (system-calculated or user-entered)
  - Any additional fields required for reporting or compliance

- Each forecast estimate record must be output as a separate line item (no aggregation).

- The report must be exportable from SAP in Excel format.

- Data sources must be confirmed and mapped for each field (OLIMS, EPSS, Payroll).

---

## 4. Exception Handling

- If required data fields are missing or incomplete, the report must flag these records with a warning indicator.
- If no records match the selection criteria, the report must display a "No data found" message.
- If data extraction fails due to system errors, an error message must be displayed and logged for support.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised users only.
- All data extracts must comply with NSWPF data privacy and security policies.
- Audit logs must record report generation events, including user, timestamp, and selection criteria.
- Exported reports must be stored in secure locations as per data retention policies.

---

## 6. References and Linked Requirements

- Cross-references: OLF001–OLF010 (EPSS estimation tab/forecasting calculator), RPK001–RPK004 (EPSS forecast estimates – summary), RPL001–RPL005 (this report), DOA010, DOA012, DOB001–DOB005, P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] Report is accessible to authorised users via SAP/OLIMS.
- [ ] Selection criteria function as specified, including support for blank criteria.
- [ ] All required columns are present and correctly mapped to data sources.
- [ ] Each forecast estimate record is output as a separate line.
- [ ] Report is exportable to Excel.
- [ ] Exception handling is implemented as specified.
- [ ] Compliance and audit controls are in place.
- [ ] All business and technical stakeholders have reviewed and approved the report output.