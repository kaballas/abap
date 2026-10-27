# Functional Specification: OLE007 — External Income/Payment Offset Entry Control

---

## 1. Business Background

The EPSS scheme requires accurate management of external income and payment offsets to ensure correct calculation of supplementary support payments. OLIMS is the primary system for claims officers to enter, manage, and audit these offsets. To maintain data integrity and compliance with payroll processing, strict controls are needed over the creation and deletion of external income/payment offset entries.

---

## 2. Scope

This specification covers the OLIMS functionality for managing external income/payment offset entries (creation and deletion only, with no update/change option), including system controls to prevent entry during payroll lock periods, audit trail requirements, and document handling upon deletion.

---

## 3. Detailed Functional Requirements

- OLIMS must allow EPSS Claims Officers to **create** and **delete** external income/payment offset entries.
- **No update/change** option is permitted; entries can only be created or deleted.
- If the SAP payroll control record is locked for the relevant pay period, OLIMS must prevent creation or deletion of entries and display an error message to the user at the point of entry.
- Retroactive changes to entries may impact employee pay and must be managed in line with payroll lock periods.
- When an entry is deleted, any associated document must also be removed (see Exception Handling and Audit).

---

## 4. Exception Handling

- If a user attempts to create or delete an entry during a payroll lock, OLIMS must display a clear error message and block the action.
- Deleted entries must remain visible in the audit trail; entries are flagged as inactive rather than physically deleted.
- Associated documents for deleted entries must also be flagged as inactive/hidden, not physically deleted, to maintain audit integrity.

---

## 5. Compliance/Controls

- All create and delete actions must be audit logged, including user, timestamp, and action type.
- Audit trail must be accessible to authorized users for compliance and reporting.
- System must enforce payroll lock controls to prevent unauthorized changes during critical payroll processing windows.

---

## 6. References and Linked Requirements

- Cross-references: OLE008 (audit trail), OLE009 (document handling), OLE010 (recurring offsets), CR001 (IT0015 entry), payroll lock controls.
- Related reporting: RPN001–RPN005 (External Income and Payments report).

---

## 7. Acceptance Criteria

- [ ] OLIMS allows only create and delete (no update) for external income/payment offset entries.
- [ ] System blocks create/delete actions if payroll control record is locked, with user error message.
- [ ] Deleted entries and associated documents remain in the audit trail and are visible to authorized users.
- [ ] All actions are audit logged with user, timestamp, and action type.
- [ ] Compliance and reporting requirements are met as per audit and reporting specifications.