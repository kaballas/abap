# Functional Specification: RPN005 — Export External Income/Payments Report to Excel

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust reporting on external income and payments entered in the OLIMS ‘External Income/Payments’ tab for EPSS claims. Accurate, exportable reports are essential for compliance, audit, and scheme management, enabling claims officers and management to analyse, reconcile, and monitor all external income/payment records efficiently.

---

## 2. Scope

This specification covers the requirement to provide an exportable report (in Excel format) of all external income/payment records from OLIMS, EPSS, and Payroll systems. The report must include all required data fields, support selection criteria, and be accessible to EPSS Claims Officers for analysis and compliance activities.

---

## 3. Detailed Functional Requirements

- The report must extract all external income/payment records from OLIMS, EPSS, and Payroll, displaying each record as a separate line item.
- The report must include the following columns:
    - Employee Number
    - Incident Number
    - Claim Number (WC claim number)
    - Earning Category
    - Earning Type
    - Date From
    - Date To
    - Amount
    - Frequency (weekly, fortnightly, monthly, lump sum)
    - Description
    - Document Uploaded (Flag)
    - Document Count
    - Earning Inactive (flag)
    - Last Modified By
    - Last Modified On
    - Last Modified At
    - EPSS Claims Advisor
    - EPSS Supervisor
- The report must support selection criteria:
    - Employee Number
    - Incident Number
    - Records Active / Inactive / Both
    - Date From
    - Date To
- The report must be exportable from SAP in Excel format.
- All required data fields must be available in OLIMS/EPSS/Payroll for extraction.
- Payroll functional and technical teams must confirm data field availability and mapping.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a clear error message and log the issue for follow-up.
- If no records match the selection criteria, the report must return an empty result set with a suitable message.
- If export to Excel fails, the system must notify the user and provide troubleshooting guidance.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised EPSS Claims Officers and Supervisors.
- All report exports must be logged for audit purposes, including user, date/time, and selection criteria.
- Data must be handled in accordance with NSWPF privacy and data security policies.

---

## 6. References and Linked Requirements

- Cross-references: RPN001–RPN004 (External Income/Payments Report), OLE001–OLE010 (External Income/Payment offset model), Payroll/OLIMS data mapping documentation.
- Related reports: RPP (Document Overview), RPE (Detailed EPSS Payment Report).

---

## 7. Acceptance Criteria

- [ ] Report includes all specified columns and selection criteria.
- [ ] Report displays each external income/payment record as a separate line.
- [ ] Report is exportable to Excel from SAP.
- [ ] All required data fields are confirmed available and mapped.
- [ ] Access and export actions are logged for audit.
- [ ] Exception handling is implemented for missing data, no results, and export failures.
- [ ] Report meets NSWPF compliance and privacy requirements.