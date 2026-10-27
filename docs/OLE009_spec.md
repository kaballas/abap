# Functional Specification: OLE009 — Deletion of External Income/Payment Offset Entry Removes Associated Document

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) relies on accurate management of external income and payment offsets to ensure correct calculation of supplementary support payments. In OLIMS, claims officers can enter external income or payment offsets, attaching supporting documentation as evidence. To maintain data integrity and compliance, it is necessary to ensure that when an external income/payment offset entry is deleted, any associated document is also removed in a controlled and auditable manner.

---

## 2. Scope

This specification covers the functional requirement for OLIMS to automatically remove (flag as inactive or hidden) any document associated with an external income/payment offset entry when that entry is deleted. The solution must maintain audit trail integrity and comply with reporting and compliance requirements. This applies to all external income/payment offset entries managed via the OLIMS ‘Other/External Earnings’ tab.

---

## 3. Detailed Functional Requirements

- When a claims officer deletes an external income/payment offset entry in OLIMS, the system must also automatically remove the associated document(s).
- "Remove" means the document is flagged as inactive or hidden, not physically deleted, to preserve audit trail integrity (see OLE008).
- The deletion process must be atomic: both the offset entry and its document(s) are flagged inactive/hidden in a single transaction.
- The audit trail must record the deletion action, including user, timestamp, and affected records (entry and document).
- Deleted entries and documents must remain visible in the audit trail/reporting for compliance purposes.
- The user interface must clearly indicate that deleting an offset entry will also remove its associated document(s).
- If multiple documents are attached, all must be flagged inactive/hidden upon deletion of the parent entry.

---

## 4. Exception Handling

- If the deletion process fails (e.g., due to database error), neither the offset entry nor its documents should be flagged inactive/hidden; the system must display an error and log the failure.
- If no document is attached to the entry, deletion proceeds as normal.
- If the audit trail cannot be updated, the deletion must be rolled back and an error message displayed to the user.
- Attempts to delete entries when the payroll control record is locked must be blocked, with an appropriate error message.

---

## 5. Compliance/Controls

- All deletions must be audit logged, including user, date/time, and affected entry/document IDs.
- Deleted documents must not be accessible in standard OLIMS views but must remain available for audit/reporting.
- The solution must comply with NSWPF data retention and privacy requirements.
- Reporting must include both active and inactive (deleted) entries/documents for reconciliation and compliance.

---

## 6. References and Linked Requirements

- OLE008: Audit trail for deleted external income/payment offset entries.
- OLE009: This requirement.
- OLE002: Supporting documentation for external earnings.
- RPN003: Reporting on external income/payment records.
- [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Deleting an external income/payment offset entry in OLIMS automatically flags all associated documents as inactive/hidden.
- [ ] The deletion is atomic; both entry and documents are updated together.
- [ ] The audit trail records the deletion action for both entry and documents.
- [ ] Deleted entries and documents are excluded from standard views but available in audit/reports.
- [ ] The user interface warns users that deleting an entry will also remove its documents.
- [ ] Deletion is blocked if the payroll control record is locked.
- [ ] All error scenarios are handled as specified, with appropriate user feedback and logging.