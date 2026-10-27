# Functional Specification: OLC012 — Ability to Upload More Than One Document Per Record

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) claim management process in OLIMS requires comprehensive documentation for each Request for Review. Currently, only a single document can be uploaded per record, which limits the ability of claims officers to attach all relevant supporting materials. Allowing multiple document uploads per record will improve compliance, auditability, and case management efficiency.

---

## 2. Scope

This requirement applies to the OLIMS Request for Review tab. It covers the ability to upload, store, and manage multiple documents for each review record, including naming conventions and user interface changes. It does not extend to other OLIMS modules or unrelated document management processes.

---

## 3. Detailed Functional Requirements

- OLIMS must allow users to upload more than one document per Request for Review record.
- Each document must be linked to the specific review record (as defined by OLIMS screen reference).
- The user interface must display all uploaded documents for a record, with clear identification (e.g., filename, upload date).
- Naming conventions or standards for multiple uploads must be documented and enforced (e.g., sequential numbering or user-provided descriptions).
- Users must be able to view, download, and, if permitted, delete individual documents from the record.
- The system must maintain an audit trail for all document uploads and deletions.

---

## 4. Exception Handling

- If a document upload fails (e.g., due to file size or format), the system must display a clear error message and prevent incomplete uploads.
- If a user attempts to upload a duplicate file (same name and size), the system must prompt for confirmation or require renaming.
- Deletion of documents must be restricted to users with appropriate permissions and must be logged for audit purposes.

---

## 5. Compliance/Controls

- All document uploads and deletions must be audit logged, including user, timestamp, and action.
- Access to uploaded documents must follow OLIMS role-based access controls.
- Uploaded documents must be included in reporting and reconciliation processes as required for compliance.

---

## 6. References and Linked Requirements

- Cross-references: OLC001–OLC011 (Request for Review enhancements), OLA006–OLA014 (Document management), RPP001–RPP005 (Document Overview reporting).
- Related business requirements: Document Overview, audit logging, and compliance reporting.

---

## 7. Acceptance Criteria

- [ ] Users can upload multiple documents to a single Request for Review record.
- [ ] All uploaded documents are visible and accessible from the record’s detail view.
- [ ] Naming conventions for multiple documents are enforced.
- [ ] Audit logs capture all upload and deletion actions.
- [ ] Only authorized users can delete documents.
- [ ] Reports include all documents linked to each record.
- [ ] Exception handling is implemented for upload errors and duplicates.