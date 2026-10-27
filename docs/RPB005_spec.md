# Functional Specification: RPB005 — EPSS On Duty Claim Report: Additional Columns

---

## 1. Business Background

The EPSS On Duty Claim Report is a core operational report for the NSW Police Force’s Enhanced Police Support Scheme (EPSS). It provides claims officers, payroll, and scheme administrators with a consolidated view of all active and historical EPSS On Duty claims, supporting scheme management, compliance, and performance monitoring. In the December 2024 release, several required columns were not delivered. This specification addresses the inclusion of these missing columns to ensure the report meets business and compliance needs.

---

## 2. Scope

This specification covers the enhancement of the EPSS On Duty Claim Report (RPB005) to include all additional columns listed in the business requirements. It includes field definitions, data source mapping, and any required changes to the report selection screen or output. The scope is limited to the EPSS On Duty Claim Report and does not impact other reports or modules.

---

## 3. Detailed Functional Requirements

- The EPSS On Duty Claim Report must include the following additional columns:
    - Period 1 Start Date
    - Period 1 End Date
    - Period 1 Weeks Utilised
    - Period 1 Weeks Remaining
    - Period 2 Start Date
    - Period 2 End Date
    - Period 2 Weeks Utilised
    - Period 2 Weeks Remaining
    - Base Salary (as per ORP definition)
    - Loading (if applicable)
    - Total Salary (Base + Loading)
    - EPSS Cap Breach Flag (Y/N)
- Each column must be clearly defined and mapped to its data source in SAP HR, Payroll, or OLIMS.
- The report must display these columns for each claim record, with data populated for all relevant claims.
- The report output must be exportable to Excel.
- No changes to the report’s selection criteria are required for this enhancement.

---

## 4. Exception Handling

- If a data field is unavailable for a claim (e.g., claim not yet transitioned to Period 2), the column must display as blank or “N/A”.
- If a data source mapping cannot be established for a required column, the report must flag the field as “Data Not Available” and log the issue for remediation.
- Any errors in data extraction or report generation must be logged and reported to the system administrator.

---

## 5. Compliance/Controls

- All report data must be sourced from authoritative SAP HR, Payroll, and OLIMS tables.
- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors, Payroll, and Reporting teams).
- The report must support audit and reconciliation processes, with all changes to report logic or field mapping documented and version-controlled.

---

## 6. References and Linked Requirements

- Cross-references: RPB002, RPB003, RPB004, RPB006, RPB007
- Related business requirements: EPSS On Duty Claim Report (Deployment Three), OLIMS/Payroll data mapping documentation

---

## 7. Acceptance Criteria

- [ ] All additional columns listed in section 3 are present in the report output.
- [ ] Each column is populated with correct data as per field definitions and data source mapping.
- [ ] The report is exportable to Excel with all new columns included.
- [ ] Exception handling is implemented as specified.
- [ ] Access controls are enforced.
- [ ] Documentation for field mapping and report changes is complete.
- [ ] UAT sign-off by business and payroll stakeholders.