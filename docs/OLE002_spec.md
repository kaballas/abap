# Functional Specification: OLE002 — OLIMS External Earnings Entry and Documentation

---

## 1. Business Background

The EPSS scheme requires that all external earnings (income or payments) that may offset an EPSS payment are recorded and evidenced. OLIMS provides a dedicated tab for Claims Officers to enter these earnings, ensuring transparency, auditability, and correct calculation of EPSS entitlements.

---

## 2. Scope

This specification covers the OLIMS "Other/External Earnings" tab functionality for entering, documenting, and managing external earnings that offset EPSS payments. It includes requirements for supporting documentation, audit trail, and applicability to both standard and detached officer claims.

---

## 3. Detailed Functional Requirements

- The OLIMS "Other/External Earnings" tab must allow EPSS Claims Officers to enter external earnings that offset EPSS payments.
- Each entry must support attaching one or more supporting documents as evidence.
- The system must enforce that at least one supporting document is attached before an external earning entry can be saved (unless business confirms otherwise).
- The same OLIMS screen and process must apply for both standard and detached officer claims, including for WC payments uploaded for detached officers.
- All entries must be auditable, with user, date/time, and document details recorded.
- Deletion of an entry must also remove (or inactivate) the associated document(s), maintaining audit trail integrity.

---

## 4. Exception Handling

- If a Claims Officer attempts to save an external earning entry without attaching a required document, the system must display an error and prevent saving.
- If the payroll control record is locked, entry or deletion must be blocked with an appropriate error message.
- If a document is deleted as part of entry deletion, it must remain visible in the audit trail as inactive.

---

## 5. Compliance/Controls

- All external earnings entries and associated documents must be retained for audit and compliance.
- Only authorised users may create or delete entries.
- All actions (create, delete) must be logged and reportable.
- Document upload and deletion must comply with privacy and data retention policies.

---

## 6. References and Linked Requirements

- OLE001 (Integration to IT0015 for Other Income)
- OLE003–OLE010 (Earning category, options, audit, recurring, deletion)
- DOB014–DOB015 (Detached officer WC payments)
- DOA010, DOA014, DOA015 (Detached officer salary and offsets)
- RPN001–RPN005 (External Income and Payments reporting)
- P905 retro logic

---

## 7. Acceptance Criteria

- [ ] Claims Officer can enter external earnings in OLIMS and must attach at least one supporting document.
- [ ] System prevents saving an entry without required documentation.
- [ ] Same process applies for detached officer claims and WC payments.
- [ ] All create/delete actions are logged and reportable.
- [ ] Deleting an entry inactivates associated documents, maintaining audit trail.
- [ ] Only authorised users can create/delete entries.
- [ ] All compliance and privacy controls are met.