# Functional Specification: RPN003 — External Income and Payments Report

---

## 1. Business Background

The NSW Police Force requires robust reporting on external income and payments entered in the OLIMS ‘External Income/Payments’ tab. This report supports compliance, scheme performance, and audit requirements for the Enhanced Police Support Scheme (EPSS). It enables claims officers, supervisors, and payroll to analyse all external income/payment records, including their linkage to incidents, claims, and supporting documentation.

---

## 2. Scope

This specification covers the design and delivery of the "External Income and Payments" report (RPN003) within the EPSS reporting suite. The report will extract and display all external income/payment records from OLIMS, EPSS, and payroll systems, with required selection criteria, column headers, and export functionality. It is intended for use by claims officers, supervisors, payroll, and compliance teams.

---

## 3. Detailed Functional Requirements

- The report must display each external income/payment record as a separate line item.
- Data sources: OLIMS ‘External Income/Payments’ tab, EPSS, and payroll (e.g., IT0015).
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
  - Earning Type (as per OLE004/OLE005)
  - Date From
  - Date To
  - Amount
  - Frequency (weekly, fortnightly, monthly, lump sum; confirm if available or add field)
  - Description
  - Document Uploaded (flag)
  - Document Count (number of docs uploaded; confirm technical feasibility)
  - Earning Inactive (flag)
  - Last Modified By
  - Last Modified On
  - Last Modified At
  - EPSS Claims Advisor (confirm retrievability)
  - EPSS Supervisor (confirm retrievability)
- The report must be exportable to Excel.
- All required fields must be available in OLIMS/EPSS/Payroll for extraction.
- Column order and field mapping to be confirmed with payroll functional and technical teams.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a warning and log the missing fields.
- If document count or frequency is not technically feasible, display "N/A" or leave blank, and flag for future enhancement.
- If selection criteria return no records, display "No data found" message.
- Any system errors during report generation must be logged and notified to the user.

---

## 5. Compliance/Controls

- All report data must be sourced from authoritative OLIMS/EPSS/Payroll tables.
- Access to the report must be restricted to authorised users (claims officers, supervisors, payroll, compliance).
- Exported reports must be handled in accordance with NSWPF data security and privacy policies.
- Audit trails must be maintained for report generation and export actions.

---

## 6. References and Linked Requirements

- Cross-references: OLE004, OLE005 (Earning Type options), OLE008 (audit trail), OLE009 (document handling), OLE010 (recurring offsets), RPN001–RPN005 (report requirements), DOA010, DOA012, DOB001–DOB005 (detached officer logic), P905 retro logic.
- See [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV).

---

## 7. Acceptance Criteria

- [ ] Report displays all required columns for each external income/payment record.
- [ ] Selection criteria function as specified.
- [ ] Data is sourced from OLIMS/EPSS/Payroll and matches source records.
- [ ] Export to Excel is available and includes all displayed data.
- [ ] Document upload flag and count are displayed (or "N/A" if not feasible).
- [ ] Report handles missing data and errors as specified.
- [ ] Access controls and audit trails are in place.
- [ ] All business and technical clarifications (field mapping, frequency, document count) are resolved and documented.