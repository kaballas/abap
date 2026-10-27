# Functional Specification: OLE004 — Income Category Options in OLIMS

---

## 1. Business Background

The NSW Police Force (NSWPF) manages the EPSS (Enhanced Police Support Scheme) through OLIMS (Online Injury Management System). Accurate categorisation of external income and payments is essential for correct offsetting of EPSS payments. OLE004 addresses the need for a standardised list of selectable "income" options for claims officers when entering external earnings in OLIMS, supporting compliance, reporting, and consistent business processes.

---

## 2. Scope

This requirement applies to the OLIMS ‘Other/External Earnings’ tab, specifically to the "Earning Category" field when "income" is selected. It defines the list of selectable "income" options available to claims officers. The options are for OLIMS data entry and reporting only and do not directly impact payroll wage type mapping.

---

## 3. Detailed Functional Requirements

- When the claims officer selects "income" as the Earning Category in OLIMS, a drop-down list of options must be presented.
- The selectable "income" options are:
  - PAYG Salary/Wages (external employment)
  - Self-Employment Income
  - Superannuation Income Stream
  - Investment Income (interest/dividends)
  - Rental Income
  - Centrelink/Other Government Benefits
  - Insurance Income (non-EPSS)
  - Other (with mandatory free text description)
- The list must be configurable by system administrators for future updates.
- Selection of "Other" requires the officer to enter a description.
- The selected option is stored with the external earnings record for reporting and audit.

---

## 4. Exception Handling

- If "income" is selected but no option is chosen, the system must display an error and prevent saving.
- If "Other" is selected and no description is entered, the system must display an error and prevent saving.
- If the Earning Category is not "income," these options are not shown.

---

## 5. Compliance/Controls

- All entries and changes are audit logged in OLIMS.
- Only authorised claims officers can create or delete external earnings entries.
- Data is reportable for compliance and reconciliation.
- No direct payroll mapping is triggered by the selected "income" option.

---

## 6. References and Linked Requirements

- OLE003 (Earning Category field)
- OLE005 (Payment category options)
- OLE006 (Multiple earning types per date range)
- OLE008 (Audit trail requirements)
- RPN003 (External Income and Payments report)

---

## 7. Acceptance Criteria

- [ ] "Income" category in OLIMS presents the specified list of options.
- [ ] "Other" option enforces mandatory free text description.
- [ ] System prevents saving if no option or description is provided as required.
- [ ] All selections are audit logged and reportable.
- [ ] No impact on payroll wage type mapping from the selected option.
- [ ] List is configurable by administrators.