# Functional Specification: RPN004 — External Income/Payments Report Line Item Display

---

## 1. Business Background

The NSW Police Force (NSWPF) Enhanced Police Support Scheme (EPSS) requires robust reporting on all external income and payment offsets entered in the OLIMS ‘External Income/Payments’ tab. Accurate, line-by-line reporting is essential for compliance, audit, and scheme performance monitoring, ensuring each record is traceable and available for analysis.

---

## 2. Scope

This specification covers the requirement for the RPN004 report to display each external income/payment record as a separate line item, with data sourced from OLIMS, EPSS, and payroll systems. It includes field mapping, data extraction, and export functionality, ensuring all required data is available for reporting and analysis.

---

## 3. Detailed Functional Requirements

- Each external income/payment entry in OLIMS must be output as a distinct line in the RPN004 report.
- The report must include, at minimum, the following columns:
  - Employee Number
  - Incident Number
  - Claim Number
  - Earning Category
  - Earning Type
  - Date From
  - Date To
  - Amount
  - Frequency
  - Description
  - Document Uploaded (Flag)
  - Document Count
  - Earning Inactive (flag)
  - Last Modified By
  - Last Modified On
  - Last Modified At
  - EPSS Claims Advisor
  - EPSS Supervisor
- Data must be sourced from OLIMS, EPSS, and payroll systems, with field mapping confirmed by Payroll functional input.
- The report must be exportable to Excel.

---

## 4. Exception Handling

- If a required data field is missing or unavailable, the report must flag the record and include a warning in the output.
- If document counts or flags cannot be determined, display as blank or "N/A" and log for follow-up.
- If data extraction fails for a record, the report must continue processing remaining records and log the error for review.

---

## 5. Compliance/Controls

- All report data must be auditable and traceable to source entries in OLIMS/EPSS/Payroll.
- Access to the report must be restricted to authorised users.
- Exported files must comply with NSWPF data handling and privacy policies.

---

## 6. References and Linked Requirements

- Cross-references: OLE001–OLE010 (External Income/Payment offset model), RPN001–RPN005 (External Income and Payments reporting), Payroll/OLIMS data mapping documentation.

---

## 7. Acceptance Criteria

- [ ] Each external income/payment record appears as a separate line in the report.
- [ ] All required columns are present and populated from source systems.
- [ ] Report is exportable to Excel.
- [ ] Missing or unavailable data is flagged and logged.
- [ ] Access controls and audit trails are in place.
- [ ] Payroll functional team confirms all data fields are available for extraction.