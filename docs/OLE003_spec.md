# Functional Specification: OLE003 — Earning Category Field in OLIMS External Earnings

---

## 1. Business Background

The EPSS scheme requires accurate tracking and categorisation of external earnings that may offset supplementary support payments. To improve reporting and compliance, a new field is needed in OLIMS to distinguish between different types of external earnings.

---

## 2. Scope

This requirement covers the addition of a new "Earning Category" field in the OLIMS ‘Other/External Earnings’ tab. The field will allow claims officers to classify each entry as either "income" or "payment," supporting downstream reporting and payroll integration.

---

## 3. Detailed Functional Requirements

- Add a new mandatory field "Earning Category" to the OLIMS ‘Other/External Earnings’ tab.
- The field must provide two selectable options: "income" and "payment."
- Definitions:
  - **Income:** Ongoing or recurring earnings (e.g., salary, wages, superannuation).
  - **Payment:** One-off or lump sum payments (e.g., settlements, compensation payouts).
- The selected category must be stored with each external earnings record and be reportable.
- If required by payroll, enforce mapping to different wage types based on the selected category.
- The field must be included in all relevant OLIMS screens, reports, and data extracts.

---

## 4. Exception Handling

- If the "Earning Category" is not selected, the system must prevent saving the record and display an error message.
- If a record is deleted, the earning category value must remain in the audit trail.

---

## 5. Compliance/Controls

- All changes to the earning category must be audit logged.
- Only authorised users can create or delete external earnings entries.
- Reports must include the earning category for compliance and reconciliation.

---

## 6. References and Linked Requirements

- OLE001: Integration to IT0015 for Other Income
- OLE002: Supporting documentation for external earnings
- OLE004/OLE005: Option lists for income/payment categories
- Payroll controls and reporting requirements as per EPSS Phase 5 BRD

---

## 7. Acceptance Criteria

- [ ] "Earning Category" field is present and mandatory in OLIMS ‘Other/External Earnings’ tab.
- [ ] Field provides only "income" and "payment" as selectable options.
- [ ] Definitions for each category are available to users (e.g., tooltip or help text).
- [ ] Category is stored, reportable, and included in data extracts.
- [ ] Audit log captures all changes and deletions.
- [ ] System prevents saving without a selected category.
- [ ] Field is mapped to payroll wage types if required.