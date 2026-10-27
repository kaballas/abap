# Functional Specification: RPN002 — External Income and Payments Report

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust reporting on all external income and payment offsets entered in the OLIMS ‘External Income/Payments’ tab. This is essential for compliance, scheme performance monitoring, and accurate calculation of EPSS entitlements. The RPN002 report supports claims officers, payroll, and audit teams by providing a detailed, exportable record of all external income/payment entries, including supporting documentation and audit fields.

---

## 2. Scope

This specification covers the design and delivery of the RPN002 External Income and Payments Report. The report will extract, display, and export all external income/payment records from OLIMS, EPSS, and payroll systems, with selection criteria and columns as defined below. It includes all active and inactive records for the required reporting period and supports Excel export.

---

## 3. Detailed Functional Requirements

- **Selection Criteria:**
  - Employee Number
  - Incident Number
  - Records Active / Inactive / Both (selectable)
  - Date From
  - Date To

- **Report Columns:**
  - Employee Number
  - Incident Number
  - Claim Number (WC claim number; confirm mapping)
  - Earning Category (e.g., income/payment)
  - Earning Type (follows Earning Category; see OLE004/OLE005)
  - Date From
  - Date To
  - Amount
  - Frequency (weekly, fortnightly, monthly, lump sum; confirm if available in IT0015 or OLIMS)
  - Description
  - Document Uploaded (Flag)
  - Document Count (number of docs uploaded; confirm OLIMS capability)
  - Earning Inactive (flag)
  - Last Modified By
  - Last Modified On
  - Last Modified At
  - EPSS Claims Advisor (confirm retrievability)
  - EPSS Supervisor (confirm retrievability)

- Each external income/payment record is displayed as a separate line item.
- Data is sourced from OLIMS, EPSS, and payroll systems.
- The report must be exportable to Excel.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must flag these records and display a warning in the output.
- If document upload counts or flags cannot be retrieved, display "N/A" in the relevant columns.
- If selection criteria return no records, display a "No data found" message.

---

## 5. Compliance/Controls

- All report data must be consistent with payroll and OLIMS master data.
- Access to the report is restricted to authorised EPSS Claims Officers, Supervisors, and audit personnel.
- All report exports and access are logged for audit purposes.
- Supporting documentation for each entry must be accessible via the report (document flag/count).

---

## 6. References and Linked Requirements

- Cross-references: OLE001–OLE010 (External Income/Payment offset model), CR001, RPN001–RPN005 (reporting requirements), P1001–P1006 (week counting logic), and related OLIMS/EPSS reporting requirements.

---

## 7. Acceptance Criteria

- [ ] Report includes all selection criteria and columns as specified.
- [ ] Data is sourced from OLIMS, EPSS, and payroll, with all required fields available.
- [ ] Each record is a separate line item; no aggregation.
- [ ] Report is exportable to Excel.
- [ ] Document upload flag/count is displayed or "N/A" if not available.
- [ ] Exception handling is implemented for missing data.
- [ ] Access and export actions are audit logged.
- [ ] Report is accessible only to authorised users.
- [ ] All business and compliance controls are met.