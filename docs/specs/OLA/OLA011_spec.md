# Functional Specification: OLA011 — Audit Log for Document Deletions in OLIMS

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust audit and compliance controls for all document management activities within the Online Injury Management System (OLIMS), particularly for the EPSS (Enhanced Police Support Scheme) Case Management module. Ensuring that all document deletions are tracked and reviewable is critical for compliance, quality assurance, and regulatory reporting.

---

## 2. Scope

This specification covers the requirement for an audit log in OLIMS that records all document deletions (and uploads, if confirmed) performed by EPSS Claims Officers and Supervisors. The audit log must be accessible for periodic review and compliance checks.

---

## 3. Detailed Functional Requirements

- All document deletions in OLIMS must be recorded in an audit log.
- The audit log must capture:
  - Document identifier (e.g., file name, document ID)
  - Date and time of deletion
  - User (employee number and name) who performed the deletion
  - Associated incident/claim number
  - Reason/comment for deletion (if required by business)
- The audit log must be accessible to both EPSS Claims Officers and Supervisors for review.
- If required by business, document uploads must also be audit logged with similar details.
- The audit log must be reportable and exportable (e.g., to Excel).

---

## 4. Exception Handling

- If a deletion action fails to log in the audit trail, the system must prevent the deletion and display an error message.
- If the audit log is unavailable, document deletion/upload actions must be disabled until restored.

---

## 5. Compliance/Controls

- All audit log entries must be immutable (cannot be edited or deleted).
- Access to the audit log must be restricted to authorised roles (EPSS Claims Officers and Supervisors).
- The audit log must support compliance reviews and internal/external audits.

---

## 6. References and Linked Requirements

- Cross-references: OLA004 (document correspondence logging), OLA010 (document hide/unhide), OLA012 (EPSS Notes), RPP001–RPP005 (Document Overview reporting), P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] All document deletions in OLIMS are recorded in an audit log with required details.
- [ ] The audit log is accessible and exportable by EPSS Claims Officers and Supervisors.
- [ ] The audit log is immutable and supports compliance/audit requirements.
- [ ] Exception handling prevents unlogged deletions.
- [ ] Access controls are in place for the audit log.
- [ ] (If confirmed) Document uploads are also audit logged.