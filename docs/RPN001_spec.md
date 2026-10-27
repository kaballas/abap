# Functional Specification: RPN001 — External Income and Payments Report

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust reporting on all external income and payments entered in the OLIMS ‘External Income/Payments’ tab. This is essential for compliance, scheme performance monitoring, and accurate calculation of EPSS entitlements, ensuring all offsets and external earnings are correctly recorded, auditable, and reportable.

---

## 2. Scope

This specification covers the design and delivery of the "External Income and Payments" report (RPN001) for EPSS. The report will extract, display, and export all external income/payment records from OLIMS, EPSS, and Payroll systems, supporting operational, compliance, and audit requirements.

---

## 3. Detailed Functional Requirements

- The report must extract all external income/payment records from OLIMS, EPSS, and Payroll.
- Each record must be displayed as a separate line item.
- Selection criteria must include:
    - Employee Number
    - Incident Number
    - Records Active / Inactive / Both
    - Date From
    - Date To
- Report columns must include:
    - Employee Number
    - Incident Number
    - Claim Number (WC claim number)
    - Earning Category (income/payment)
    - Earning Type (as per OLE004/OLE005)
    - Date From
    - Date To
    - Amount
    - Frequency (weekly, fortnightly, monthly, lump sum)
    - Description
    - Document Uploaded (flag)
    - Document Count
    - Earning Inactive (flag)
    - Last Modified By
    - Last Modified On
    - Last Modified At
    - EPSS Claims Advisor
    - EPSS Supervisor
- Data must be sourced from OLIMS, EPSS, and Payroll; mapping and integration points must be confirmed with Payroll functional experts.
- The report must be exportable to Excel.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must flag these records and display a warning.
- If document counts or flags cannot be retrieved, display "N/A" and log for technical review.
- If integration with Payroll/OLIMS fails, display an error message and prevent incomplete report export.

---

## 5. Compliance/Controls

- All report data must be auditable and traceable to source records in OLIMS/EPSS/Payroll.
- Access to the report must be restricted to authorised users.
- Exported reports must be stored in compliance with NSWPF data retention and privacy policies.
- All changes to report logic or data mapping must be documented and approved.

---

## 6. References and Linked Requirements

- Cross-references: OLE001–OLE010 (External Income/Payment offset model), CR001, RPE001–RPE004 (Detailed EPSS Payment Report), RPP001–RPP005 (Document Overview), P1001–P1006 (Week count logic).
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Report extracts all required fields for each external income/payment record.
- [ ] Selection criteria function as specified.
- [ ] All columns are present and populated as per requirements.
- [ ] Each record is a separate line item.
- [ ] Report is exportable to Excel.
- [ ] Missing or unavailable data is flagged with appropriate warnings.
- [ ] Access controls and audit requirements are met.
- [ ] Data mapping and integration points are confirmed with Payroll/OLIMS teams.
- [ ] Report passes UAT with sample data and edge cases.