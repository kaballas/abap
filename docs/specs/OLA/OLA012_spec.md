# Functional Specification: OLA012 — Documents uploaded into OLIMS via the EPSS Case Management module to be recorded as EPSS Notes

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) Case Management module in OLIMS (Online Injury Management System) manages documents and correspondence related to EPSS claims. There is a requirement to ensure that all documents uploaded via this module are systematically recorded as "EPSS Notes" for traceability, compliance, and ease of reference.

---

## 2. Scope

This specification covers the functional requirements for recording all documents uploaded into OLIMS via the EPSS Case Management module as "EPSS Notes." It defines how these notes are created, displayed, and accessed within OLIMS.

---

## 3. Detailed Functional Requirements

- All documents uploaded through the EPSS Case Management module must be automatically recorded as "EPSS Notes."
- "EPSS Notes" are to be either a dedicated section, a tagging mechanism, or a field associated with each uploaded document (to be confirmed in design).
- Each note must include metadata: document title, upload date/time, uploader, document category/subcategory, and any comments entered at upload.
- "EPSS Notes" must be visible to users with appropriate access in the Document Overview screen and/or a dedicated EPSS Notes section.
- Users must be able to view, search, and filter EPSS Notes by document type, date, uploader, and claim/incident number.

---

## 4. Exception Handling

- If a document upload fails, the system must not create an EPSS Note and must display an error message to the user.
- If metadata is missing or incomplete, the upload should be blocked with a clear validation message.
- Access to EPSS Notes must be restricted based on user roles; unauthorized access attempts must be logged and denied.

---

## 5. Compliance/Controls

- All EPSS Notes must be audit logged, including creation, modification, and deletion (if permitted).
- Access to EPSS Notes must comply with OLIMS access controls and privacy requirements.
- Reporting on EPSS Notes must be available for compliance and reconciliation purposes.

---

## 6. References and Linked Requirements

- Cross-references: OLA006 (document upload), OLA013 (Date Received/Comments fields), OLA014 (document reporting), Document Overview reporting (RPP001–RPP005).
- See also: OLIMS Document Management requirements and audit logging controls.

---

## 7. Acceptance Criteria

- [ ] All documents uploaded via the EPSS Case Management module are recorded as EPSS Notes.
- [ ] EPSS Notes include all required metadata and are visible in the Document Overview or EPSS Notes section.
- [ ] Users can search and filter EPSS Notes by key fields.
- [ ] Uploads with missing metadata are blocked with a validation message.
- [ ] All actions on EPSS Notes are audit logged.
- [ ] Access controls are enforced for EPSS Notes.
- [ ] Reporting on EPSS Notes is available for compliance and reconciliation.