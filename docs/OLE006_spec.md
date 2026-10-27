# Functional Specification: OLE006 — Multiple External Earnings Types for Overlapping Date Ranges

---

## 1. Business Background

The EPSS scheme requires accurate calculation of supplementary payments by offsetting external earnings (e.g., PAYG income, lump sum payments) against entitlements. Officers may receive more than one type of external earning for the same date range, necessitating system support for multiple overlapping entries to ensure correct benefit calculation and compliance.

---

## 2. Scope

This requirement covers the ability for OLIMS and SAP to record, process, and report multiple external earning types (e.g., PAYG, lump sum) that overlap in date range for a single officer/incident. It includes data entry, wage type mapping, payroll calculation, audit, and reporting impacts.

---

## 3. Detailed Functional Requirements

- OLIMS must allow entry of multiple external earning records with overlapping date ranges for the same officer/incident.
- Each entry must specify earning type, category (income/payment), date range, amount, and supporting documentation.
- SAP must accept and process multiple external earning wagetypes (e.g., WT3670, others as defined) for the same period without error.
- Payroll calculation must offset each external earning entry against EPSS payments as per business rules.
- Reporting must distinguish each earning type and allow for audit of overlapping entries.

---

## 4. Exception Handling

- If duplicate entries of the same earning type and exact date range are detected, OLIMS must warn the user but allow saving if business-justified.
- If SAP payroll detects conflicting wage types for the same period, the process must log an error and notify payroll for manual review.
- Deletion of an external earning entry must retain an audit trail and flag associated documents as inactive, not deleted.

---

## 5. Compliance/Controls

- All external earning entries and deletions must be audit-logged (user, date/time, action).
- Supporting documentation is mandatory for each entry.
- Only authorized users may create or delete entries; no update/edit is permitted.
- Reports must be available for compliance, reconciliation, and audit review.

---

## 6. References and Linked Requirements

Cross-references: OLE001–OLE010, CR001, RPN001–RPN005, P1001–P1006, [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] OLIMS allows multiple external earning entries with overlapping dates for the same officer/incident.
- [ ] Each entry includes earning type, category, date range, amount, and document.
- [ ] SAP payroll offsets all external earning entries correctly in benefit calculation.
- [ ] Audit trail is maintained for all create/delete actions.
- [ ] Reports show all overlapping entries distinctly.
- [ ] Exception handling is implemented as specified.