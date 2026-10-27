# Functional Specification: OLE005 — Payment Category Options for External Earnings

---

## 1. Business Background

The EPSS scheme requires accurate and auditable management of external income and payments that offset supplementary support payments. To support this, OLIMS must allow claims officers to categorise each external earning as either "income" or "payment" and select from a defined list of options for each category. This ensures consistent data entry, reporting, and compliance with business rules.

---

## 2. Scope

This specification covers the implementation of selectable options for the "payment" earning category in the OLIMS External Earnings tab. It defines the list of payment types available for claims officers to select, clarifies their use for data entry and reporting, and ensures these options do not impact payroll calculation logic.

---

## 3. Detailed Functional Requirements

- In the OLIMS External Earnings tab, when the earning category "payment" is selected, a dropdown list of payment options must be presented to the claims officer.
- The selectable "payment" options are:
  - Lump Sum Settlement
  - Redundancy Payment
  - Termination Payment
  - Death Benefit
  - Superannuation Withdrawal
  - Other (with mandatory free-text description)
- These options are for OLIMS data entry and reporting only; they do not affect SAP payroll processing or wage type mapping.
- The selected payment type must be stored with each external earning record and included in relevant reports.

---

## 4. Exception Handling

- If "Other" is selected, the system must require a free-text description before allowing the record to be saved.
- If no payment type is selected when the earning category is "payment," the system must display an error and prevent saving.
- If the payroll control record is locked, creation or deletion of external earnings entries must be blocked with an error message.

---

## 5. Compliance/Controls

- All changes and deletions to external earnings entries must be audit logged, including the selected payment type and any free-text descriptions.
- Only authorised users may create or delete external earnings entries.
- Reports must be able to filter and display external earnings by payment type for compliance and reconciliation.

---

## 6. References and Linked Requirements

- OLE002: External Earnings tab usage and documentation requirements
- OLE003: Earning Category field definition
- OLE004: Income category options
- OLE006–OLE009: Entry, deletion, and audit trail requirements
- CR001: Payroll offset entry via IT0015
- [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/:x:/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] When "payment" is selected as the earning category, only the specified payment options are available for selection.
- [ ] "Other" selection requires a mandatory free-text description.
- [ ] The selected payment type is stored and reportable for each external earning record.
- [ ] The system prevents saving if no payment type is selected or if "Other" is selected without a description.
- [ ] All changes and deletions are audit logged with payment type and description.
- [ ] No impact on SAP payroll wage type mapping or calculation logic.
- [ ] Reports can filter and display external earnings by payment type.