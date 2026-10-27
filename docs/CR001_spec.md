# Functional Specification: CR001 — EPSS Claims Advisor Offset Earnings Entry

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) provides supplementary support payments to eligible police officers. To ensure accurate benefit calculation, any external earnings (such as workers compensation or other income) must be offset against EPSS payments. The EPSS Claims Advisor is responsible for entering these earnings into the SAP HR system to ensure correct payment outcomes.

---

## 2. Scope

This specification covers the process and system requirements for EPSS Claims Advisors to enter external earnings that offset EPSS payments, specifically via SAP Infotype 0015 using wage type 3670. It applies to all EPSS claims where external income or payments must be considered in the benefit calculation.

---

## 3. Detailed Functional Requirements

- The EPSS Claims Advisor must be able to enter external earnings into SAP Infotype 0015 using wage type 3670.
- Each entry must include: employee number, date range (from/to), amount, and description.
- The system must ensure that wage type 3670 is only used for valid EPSS claims.
- Supporting documentation must be attached or referenced for audit purposes.
- Entries must be visible in payroll processing and reporting for correct offset calculation.
- Only authorized users (EPSS Claims Advisors) can create or delete these entries; updates are not permitted (delete and re-enter if changes are required).
- All entries and deletions must be audit logged.

---

## 4. Exception Handling

- If an entry is attempted for an ineligible employee or outside an active EPSS claim, the system must display an error and prevent saving.
- If payroll is locked for the relevant period, entry or deletion must be blocked with an appropriate error message.
- If required fields are missing, the system must prompt the user to complete all mandatory fields before saving.

---

## 5. Compliance/Controls

- All offset entries must be auditable, with user, timestamp, and supporting documentation recorded.
- Only authorized personnel can access, create, or delete entries.
- Changes are tracked for compliance and reporting.
- Data must be available for reconciliation and reporting in both SAP and OLIMS.

---

## 6. References and Linked Requirements

Cross-references: OLE001–OLE010, DOB014–DOB015, RPN001–RPN005, P1005–P1006, OLIMS integration, SAP HR Infotype 0015, wage type 3670.

---

## 7. Acceptance Criteria

- [ ] EPSS Claims Advisor can enter external earnings via IT0015, wage type 3670.
- [ ] System validates eligibility and required fields.
- [ ] Entries are visible in payroll and reporting.
- [ ] Supporting documentation is attached or referenced.
- [ ] Only create/delete actions are permitted; all actions are audit logged.
- [ ] Exception handling prevents invalid or incomplete entries.
- [ ] Data is available for compliance, reconciliation, and reporting.