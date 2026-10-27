# Functional Specification: OLE008 — Audit Trail for Deleted External Income/Payment Offset Entries

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust auditability for all external income and payment offset entries managed in OLIMS. When such entries are deleted, it is essential for compliance and quality assurance that a complete audit trail is maintained, ensuring transparency and traceability for all changes impacting payroll and reporting.

---

## 2. Scope

This specification covers the requirement to retain deleted external income/payment offset entries in the audit trail within OLIMS, ensuring that all deletions are visible for audit and reporting purposes. It includes visibility, access, and reporting of deleted records, but does not cover the creation or update of offset entries.

---

## 3. Detailed Functional Requirements

- When an external income/payment offset entry is deleted in OLIMS, the record must not be physically removed from the database.
- The deleted entry must be flagged as inactive or deleted, retaining all original data fields for audit purposes.
- The audit trail must capture:
  - The user who performed the deletion
  - Date and time of deletion
  - Reason for deletion (if applicable)
- Deleted entries must be visible in a dedicated audit trail report or via a transaction (e.g., SAP standard audit report PC00_M16_UAUD).
- Access to the audit trail/report must be restricted to authorised users (e.g., EPSS Claims Officers, Supervisors, Auditors).

---

## 4. Exception Handling

- If an attempt is made to delete an entry when the payroll control record is locked, the system must display an error and prevent deletion.
- If the audit trail cannot be updated due to a system error, the deletion must be aborted and the user notified.

---

## 5. Compliance/Controls

- All deleted entries must remain available for audit and compliance checks.
- The audit trail must support reporting for payroll, OLIMS access, and reconciliation activities.
- Only authorised users can access or run the audit trail report.

---

## 6. References and Linked Requirements

- Cross-references: OLE007, OLE009, CR001, SAP audit report PC00_M16_UAUD
- Related reporting: RPN003, RPN004

---

## 7. Acceptance Criteria

- [ ] Deleted external income/payment offset entries are retained and visible in the audit trail.
- [ ] Audit trail includes user, timestamp, and (if required) reason for deletion.
- [ ] Audit trail/report is accessible only to authorised users.
- [ ] No deleted entry is physically removed from the database.
- [ ] Attempting to delete during payroll lock is prevented with an error message.
- [ ] All audit trail data is available for compliance and reporting.