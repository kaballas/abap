# Functional Specification: OLA006 — Ability to Upload Documents and Correspondence into OLIMS

---

## 1. Business Background

The Online Injury Management System (OLIMS) is the central platform for managing EPSS claims and related documentation. Efficient and secure document management is critical for compliance, audit, and effective claims administration. The ability to upload documents and correspondence directly into OLIMS ensures all supporting evidence, communications, and records are centrally stored, accessible, and reportable.

---

## 2. Scope

This requirement covers the ability for users (primarily EPSS Claims Officers and Supervisors) to upload documents and correspondence into OLIMS. It includes defining upload functionality, storage location, document linking/naming standards, and integration with document categories and subcategories. It does not include document generation, email sending, or advanced workflow beyond upload and categorisation.

---

## 3. Detailed Functional Requirements

- Users must be able to upload documents and correspondence (PDF, DOCX, XLSX, image files, etc.) into OLIMS via the relevant claim or incident screen.
- Each uploaded document must be linked to the relevant claim, incident, or employee record.
- The upload interface must allow users to select a document category (see OLA007) and subcategory (see OLA008).
- Uploaded documents must be stored in a secure, centralised repository within OLIMS, following defined naming conventions (e.g., [IncidentNo]_[Category]_[Date]_[UserInitials].pdf).
- The system must enforce file size and type restrictions as per NSWPF ICT policy.
- Uploaded documents must be immediately visible in the Document Overview screen and reportable for compliance.
- All uploads must be audit logged, capturing uploader, date/time, and associated claim/incident.
- If OLIMS already supports document upload, confirm and document current capabilities; if not, implement as described above.

---

## 4. Exception Handling

- If a user attempts to upload an unsupported file type or exceeds the maximum file size, the system must display a clear error message and prevent upload.
- If the upload fails due to system error, the user must be notified and the error logged for support review.
- If a document is uploaded without selecting a required category or subcategory, the system must prompt the user to complete these fields before saving.

---

## 5. Compliance/Controls

- All document uploads must be audit logged (who, when, what, linked claim/incident).
- Access to uploaded documents must be controlled by user role and claim assignment.
- Uploaded documents must be included in compliance and SLA performance reporting.
- Document retention and deletion must comply with NSWPF records management policy.

---

## 6. References and Linked Requirements

- OLA007: New document categories for EPSS On Duty and EPSS Off Duty.
- OLA008: New document subcategories.
- OLA009: Reporting capability in Document Overview.
- OLA010: Hide/unhide documents for privacy/errors.
- OLA011: Audit log for document uploads/deletions.
- OLA013: Additional fields for Date Received and Comments.

---

## 7. Acceptance Criteria

- [ ] Users can upload documents and correspondence into OLIMS via the relevant claim/incident screen.
- [ ] Uploaded documents are linked to the correct claim/incident and visible in Document Overview.
- [ ] Users must select a document category and subcategory during upload.
- [ ] The system enforces file type and size restrictions.
- [ ] All uploads are audit logged with uploader, date/time, and claim/incident reference.
- [ ] Uploaded documents are included in compliance and reporting outputs.
- [ ] Exception handling is implemented for unsupported file types, size, and missing required fields.
- [ ] Access to uploaded documents is restricted by user role and claim assignment.