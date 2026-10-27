# Functional Specification: OLA001 — Document Generation – Generate and Send EPSS Letters and Forms

---

## 1. Business Background

The NSW Police Force requires the ability to generate, populate, and manage correspondence (letters and forms) for the Enhanced Police Support Scheme (EPSS) within the OLIMS system. This ensures accurate, timely, and auditable communication with officers, leveraging SAP HR, payroll, and OLIMS data.

---

## 2. Scope

This specification covers the end-to-end process for uploading, populating, editing, sending, and tracking EPSS-related letters and forms in OLIMS, including document categorisation, audit, and reporting.

---

## 3. Detailed Functional Requirements

- Ability to upload letter/form templates into OLIMS with static text and merge fields for SAP HR, payroll, and OLIMS data.
- List of required data fields to be populated in templates to be provided by business (e.g., officer name, incident number, claim status, payment details).
- Claims team can override/modify merge field data before generating the final letter.
- OLIMS must provide a user interface for template selection, data override, and preview.
- Letters/forms can be sent to the officer’s personal and/or work email as recorded in OLIMS (fields/subtypes to be confirmed).
- All correspondence sent must be saved in OLIMS, including issue date and recipient details.
- New field to record the date a document is received by the EPSS claims officer.
- Support upload of documents and correspondence into OLIMS, with new categories for "EPSS On Duty" and "EPSS Off Duty" and subcategories (Period 1, Period 2, Period 3, etc.).
- Ability to hide/unhide documents for privacy/errors, with mandatory comment and access control.
- Audit log for all document uploads, deletions, and correspondence actions, accessible by Claims Officer and Supervisor.
- Uploaded documents to be recorded as EPSS Notes in OLIMS.
- Document Overview screen to include "Date Received" and "Comments" fields for claims officer entry.
- All inbound/outbound EPSS documents must be reportable for compliance and SLA performance.

---

## 4. Exception Handling

- If required data fields are missing from SAP/OLIMS, system must prompt user to enter/override before generating correspondence.
- If email address is missing or invalid, system must prevent sending and display an error.
- If document upload fails, user receives a clear error message and must retry.
- Hidden documents are only visible to authorised users; all hide/unhide actions are logged with reason.

---

## 5. Compliance/Controls

- All correspondence and document actions are audit logged (upload, send, delete, hide/unhide).
- Access to sensitive documents is restricted by user role.
- Reporting on document activity supports compliance, reconciliation, and SLA monitoring.
- All document uploads must retain evidence and be linked to the relevant incident/claim.

---

## 6. References and Linked Requirements

Cross-references: OLA002–OLA014, OLB001, OLE001, RPP001–RPP005, P905 retro logic, SAP HR/Payroll integration.

---

## 7. Acceptance Criteria

- [ ] Templates can be uploaded and stored in OLIMS with merge fields.
- [ ] Claims team can override template data before generation.
- [ ] Letters/forms can be sent to both personal and work email addresses from OLIMS.
- [ ] All correspondence is saved in OLIMS with issue/received dates and recipient details.
- [ ] New document categories and subcategories are available in OLIMS.
- [ ] Documents can be hidden/unhidden with mandatory comments and access control.
- [ ] Audit log captures all document actions and is accessible to authorised users.
- [ ] "Date Received" and "Comments" fields are present in Document Overview.
- [ ] All EPSS documents are reportable for compliance and SLA purposes.