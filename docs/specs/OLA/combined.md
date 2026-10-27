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
- [ ] All EPSS documents are reportable for compliance and SLA purposes.# Functional Specification: OLA002 — Ability of claims team to override data in the templates if required before generating the final letter

---

## 1. Business Background

The EPSS claims process requires the generation of letters and forms using templates populated with data from SAP HR, payroll, and OLIMS. There are scenarios where the claims team must override or edit specific data fields in these templates before finalising and sending correspondence to officers, to ensure accuracy and accommodate case-specific requirements.

---

## 2. Scope

This specification covers the functionality in OLIMS to allow claims officers to override or edit data fields in document templates prior to generating and sending the final letter or form. It applies to all EPSS On Duty and Off Duty correspondence generated via OLIMS.

---

## 3. Detailed Functional Requirements

- OLIMS must provide a user interface for claims officers to review and override any auto-populated data fields in a letter/form template before final generation.
- The override screen must display all fields that will be merged into the template, showing both the original (system-populated) value and the editable field.
- Only authorised users (claims officers and supervisors) can perform overrides.
- All overridden fields must be clearly highlighted or flagged in the UI.
- The final generated document must use the overridden values where provided; otherwise, system values are used.
- All overrides must be audit logged, capturing the user, date/time, field changed, original value, and new value.
- The override process must not allow changes to locked or confidential fields as defined by business rules.

---

## 4. Exception Handling

- If a user attempts to override a locked or restricted field, the system must display an error and prevent the change.
- If required fields are left blank after override, the system must prompt the user to complete them before proceeding.
- Any system errors during override or document generation must be logged and a user-friendly error message displayed.

---

## 5. Compliance/Controls

- All overrides are audit logged for compliance and reporting.
- Access to override functionality is restricted to authorised roles in OLIMS.
- Overrides are included in periodic audit and quality assurance reports.
- Data privacy and confidentiality controls apply to all correspondence and override actions.

---

## 6. References and Linked Requirements

- OLA001 (Template upload and data merge)
- OLA003 (Sending correspondence)
- OLA004 (Correspondence audit and storage)
- OLA013 (Document comments)
- OLIMS access and audit controls

---

## 7. Acceptance Criteria

- [ ] Claims officers can view and edit template data fields before generating a letter/form.
- [ ] Overridden fields are clearly indicated in the UI.
- [ ] Only authorised users can perform overrides.
- [ ] All override actions are audit logged with user, date/time, field, original, and new value.
- [ ] Locked fields cannot be overridden.
- [ ] The final document uses overridden values where provided.
- [ ] Errors and exceptions are handled as specified.
- [ ] Compliance and access controls are enforced.# Functional Specification: OLA003 — Ability to Send Populated Letter/Form to Officer’s Email

---

## 1. Business Background

The EPSS claims process requires timely and accurate communication with officers regarding their claims. Automating the generation and sending of populated letters/forms from OLIMS to officers’ email addresses improves efficiency, ensures compliance, and provides an auditable record of correspondence.

---

## 2. Scope

This requirement covers the ability for claims officers to send generated letters/forms from OLIMS to an officer’s personal email (as recorded in OLIMS) and optionally to their work email. It includes retrieving email addresses from the correct OLIMS fields, providing selection options, and ensuring the process is user-friendly and auditable.

---

## 3. Detailed Functional Requirements

- OLIMS must allow claims officers to send generated letters/forms to the officer’s personal email address, with the option to also send to the officer’s work email.
- The system must retrieve the personal and work email addresses from the relevant OLIMS fields/subtypes (e.g., IT0105 subtype 0010 for work email, and the designated field for personal email).
- The document generation screen must display both email addresses, allowing the user to select one or both for sending.
- Clear instructions or tooltips must be provided to guide users in selecting the correct email(s).
- The process must log the correspondence sent, including which email addresses were used.

---

## 4. Exception Handling

- If either email address is missing or invalid, OLIMS must display a warning and prevent sending until a valid address is entered or selected.
- If email delivery fails (e.g., bounce), an error message must be logged and displayed to the claims officer for follow-up.
- Attempts to send to unverified or blank email fields must be blocked with a clear error message.

---

## 5. Compliance/Controls

- All correspondence sent must be logged in OLIMS, including the date/time, sender, recipient email(s), and document reference.
- Access to officer email addresses must be restricted to authorized users.
- Audit logs must be available for all correspondence actions for compliance and reporting.

---

## 6. References and Linked Requirements

- OLA001: Document template upload and field population
- OLA002: Template data override before sending
- OLA004: Correspondence logging in OLIMS
- OLA013: Document Overview screen enhancements

---

## 7. Acceptance Criteria

- [ ] Claims officer can select and send a letter/form to the officer’s personal and/or work email from OLIMS.
- [ ] Both email addresses are displayed and selectable in the document generation screen.
- [ ] System prevents sending if no valid email is available.
- [ ] All sent correspondence is logged with recipient details.
- [ ] Error handling is in place for missing/invalid emails and delivery failures.
- [ ] Access and audit controls are implemented as specified.# Functional Specification: OLA004 — Correspondence Logging in OLIMS

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust tracking and auditability of all correspondence and letters sent to officers under the Enhanced Police Support Scheme (EPSS). Accurate logging of correspondence is essential for compliance, transparency, and effective claims management within the Online Injury Management System (OLIMS).

---

## 2. Scope

This specification covers the requirement to save details of all correspondence and letters sent to officers in OLIMS, including the dates issued. It applies to all EPSS-related communications generated or sent via OLIMS, regardless of delivery method (email, post, etc.).

---

## 3. Detailed Functional Requirements

- All outgoing correspondence (letters/forms) generated or sent to officers from OLIMS must be automatically logged in the system.
- The log must capture:
  - Officer identifier (employee/registered number)
  - Incident/claim number
  - Type of correspondence (template name or document type)
  - Date and time sent/issued
  - Delivery method (e.g., email, post)
  - Recipient email address (if sent electronically)
  - Sender (claims officer or system user)
- The correspondence log must be viewable in OLIMS by authorized users.
- The log must support searching and filtering by officer, incident, date, and correspondence type.
- If correspondence is re-sent or corrected, each instance must be logged as a separate entry.
- The system must allow upload and linking of the actual document sent (where applicable).

---

## 4. Exception Handling

- If correspondence fails to send (e.g., email bounce), the system must log the failure with a status and error message.
- If required fields (e.g., recipient email) are missing, the system must prevent sending and prompt the user to correct the data.
- Unauthorized users attempting to access or modify the correspondence log must be denied and the attempt logged for audit.

---

## 5. Compliance/Controls

- All correspondence logs must be retained for audit and compliance purposes in accordance with NSWPF records management policies.
- Access to correspondence logs must be restricted to authorized claims officers and supervisors.
- Changes to correspondence records (e.g., deletion, modification) must be audit-logged.
- Reporting must be available for compliance and reconciliation (e.g., Document Overview report).

---

## 6. References and Linked Requirements

- OLA001–OLA003, OLA005–OLA014 (document generation, upload, categorization, reporting)
- RPP001–RPP005 (Document Overview reporting)
- OLIMS access and audit controls
- NSWPF records management policy

---

## 7. Acceptance Criteria

- [ ] All correspondence sent to officers is automatically logged in OLIMS with required details.
- [ ] Log entries include officer, incident, type, date/time, delivery method, recipient, and sender.
- [ ] Users can view, search, and filter correspondence logs in OLIMS.
- [ ] Failed or unsent correspondence is logged with error status.
- [ ] Access to logs is restricted and audit-logged.
- [ ] Reports can be generated for compliance and reconciliation.
- [ ] All changes to correspondence records are audit-logged.
- [ ] The solution meets NSWPF records management and privacy requirements.# Functional Specification: OLA005 — Add "Date Received" Field for Documents in OLIMS

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust document management within OLIMS (Online Injury Management System) to support compliance, audit, and operational efficiency. Currently, there is no dedicated field to record the date a document is received by the EPSS claims officer, which is necessary for accurate tracking, reporting, and compliance with scheme requirements.

---

## 2. Scope

This specification covers the addition of a new "Date Received" field in OLIMS for documents managed by EPSS claims officers. The field will be available for all document types relevant to EPSS On Duty and Off Duty claims, and will be included in the Document Overview screen and related reporting.

---

## 3. Detailed Functional Requirements

- A new field, "Date Received," must be added to OLIMS for each document record.
- The "Date Received" field must be available for data entry by EPSS claims officers at the time of document upload or when editing document metadata.
- The field must accept a valid date in the format DD/MM/YYYY.
- The "Date Received" value must be stored as an attribute of the document record and linked to the relevant WC/incident number.
- The field must be visible in the Document Overview screen and included in document-related reports.
- The field must be editable only by users with appropriate OLIMS permissions.
- The field must be mandatory for all new document uploads; for existing documents, it should be editable if not already populated.

---

## 4. Exception Handling

- If an invalid date is entered, the system must display an error and prevent saving until a valid date is provided.
- If the "Date Received" field is left blank during document upload, the system must prompt the user to enter a value before proceeding.
- For legacy documents where the date is unknown, a default value (e.g., "Unknown" or a system flag) may be used, subject to business approval.

---

## 5. Compliance/Controls

- All entries and edits to the "Date Received" field must be audit logged, including user, timestamp, and previous value.
- Access to edit the "Date Received" field must be restricted to EPSS claims officers and supervisors.
- The field must be included in compliance and SLA performance reporting for document management.

---

## 6. References and Linked Requirements

- OLA013: Addition of "Date Received" and "Comments" fields in Document Overview.
- OLA004: Requirement to save correspondence details and dates in OLIMS.
- RPP001–RPP005: Document Overview reporting requirements.
- OLIMS Document Management module.

---

## 7. Acceptance Criteria

- [ ] "Date Received" field is present and visible for all EPSS documents in OLIMS.
- [ ] Field is mandatory for new uploads and editable for existing documents (if not already set).
- [ ] Field accepts only valid dates and prevents invalid entries.
- [ ] Field is included in Document Overview and related reports.
- [ ] All changes to the field are audit logged.
- [ ] Access to edit the field is restricted to authorized users.
- [ ] Field is linked to the correct WC/incident number for each document.
- [ ] Exception handling is implemented as specified.# Functional Specification: OLA006 — Ability to Upload Documents and Correspondence into OLIMS

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
- [ ] Access to uploaded documents is restricted by user role and claim assignment.# Functional Specification: OLA007 — New Document Categories for EPSS On Duty and EPSS Off Duty

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust document management within OLIMS to support compliance, reporting, and efficient claims processing. As part of Phase 5 enhancements, new document categories are needed to clearly distinguish between EPSS On Duty and EPSS Off Duty documentation, supporting both operational and reporting requirements.

---

## 2. Scope

This specification covers the addition of two new document categories—"EPSS On Duty" and "EPSS Off Duty"—within the OLIMS document management module. The change applies to all OLIMS screens and workflows where document categories are selected, displayed, or reported.

---

## 3. Detailed Functional Requirements

- Add two new document categories in OLIMS:
  - "EPSS On Duty"
  - "EPSS Off Duty"
- These categories must be selectable when uploading or managing documents in OLIMS.
- The new categories must appear in all relevant OLIMS screens, including document upload, document overview, and reporting screens.
- Existing documents are not to be re-categorised automatically; only new uploads will use the new categories.
- The categories must be available for selection in all document-related reports and filters.

---

## 4. Exception Handling

- If a user attempts to upload a document without selecting a category, the system must display an error and prevent upload.
- If the new categories are not visible due to configuration error, OLIMS must log the issue and alert system administrators.

---

## 5. Compliance/Controls

- All document uploads must be auditable, including the selected category.
- Access to document categories must follow existing OLIMS access controls.
- Document category selection must be included in compliance and reconciliation reports.

---

## 6. References and Linked Requirements

- OLA008: New document subcategories
- OLA009: Reporting capability in Document Overview
- OLA014: Compliance and SLA reporting for EPSS documents

---

## 7. Acceptance Criteria

- [ ] "EPSS On Duty" and "EPSS Off Duty" categories are available in OLIMS document upload and management screens.
- [ ] Users can select the new categories when uploading documents.
- [ ] The new categories are available as filters in document overview and reporting screens.
- [ ] Attempting to upload a document without a category triggers an error.
- [ ] All document uploads with the new categories are audit logged.
- [ ] Document category appears in compliance and reconciliation reports.# Functional Specification: OLA008 — New Document Subcategories in OLIMS

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires improved document management within OLIMS to support accurate case management, compliance, and reporting. To address this, new document subcategories must be introduced to classify documents by benefit period and claim lifecycle events.

---

## 2. Scope

This specification covers the addition of new document subcategories in OLIMS for EPSS On Duty and Off Duty claims. It includes UI changes, data model updates, and reporting impacts. The requirement does not cover document template creation or workflow changes outside subcategory selection.

---

## 3. Detailed Functional Requirements

- Add the following document subcategories in OLIMS:
  - Period 1
  - Period 2
  - Period 3
  - Commencement
  - Recommencement
  - Request for Review
  - Dispute
  - Cessation
  - Finalisation
  - Recoveries
- Subcategories must be available for selection when uploading or classifying documents under the "EPSS On Duty" and "EPSS Off Duty" categories.
- The subcategory field must be mandatory for all new document uploads in these categories.
- Subcategories must be visible in the Document Overview screen and available as a filter in document reports.
- If different templates are required for each subcategory, business must provide them; otherwise, the subcategory is for classification only.

---

## 4. Exception Handling

- If a user attempts to upload a document without selecting a subcategory, display an error and prevent upload.
- If a subcategory is missing or invalid, log the error and alert the system administrator.
- If business does not provide required templates for a subcategory, allow upload with classification only and flag for follow-up.

---

## 5. Compliance/Controls

- All document uploads and subcategory selections are audit logged.
- Access to document subcategories is controlled by existing OLIMS user roles.
- Document subcategories are included in compliance and SLA performance reporting.

---

## 6. References and Linked Requirements

- Cross-references: OLA007 (document categories), OLA009 (reporting), OLA013 (data entry fields), OLA014 (compliance reporting)
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/:x:/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx)

---

## 7. Acceptance Criteria

- [ ] All listed subcategories are available for selection under EPSS On Duty and Off Duty document categories.
- [ ] Subcategory selection is mandatory for new uploads.
- [ ] Subcategories are visible and filterable in the Document Overview and reports.
- [ ] Upload is blocked if subcategory is not selected.
- [ ] Audit log records subcategory selection.
- [ ] Compliance reports include subcategory data.
- [ ] If templates are required for subcategories, they are linked or flagged as pending.# Functional Specification: OLA009 — Reporting Capability of Documents in the Document Overview Screen

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust document management and reporting for compliance, audit, and operational efficiency. The Document Overview screen in OLIMS is the central location for managing all inbound and outbound documents related to EPSS claims. Accurate and accessible reporting on these documents is essential for scheme monitoring, compliance, and performance reporting.

---

## 2. Scope

This requirement covers the ability to report on all documents sent and uploaded in the OLIMS Document Overview screen. It includes the need to extract, filter, and export document data for compliance, audit, and operational reporting. The scope includes both inbound and outbound documents, with all relevant metadata and user actions.

---

## 3. Detailed Functional Requirements

- The Document Overview screen must provide reporting capability for all documents (sent/uploaded) related to EPSS claims.
- The report must include selection criteria: Employee No., Incident No., Document Category, Document Sub Category, Date From, Date To.
- The report output must include the following columns:
    - Employee No.
    - Incident No.
    - Claim No.
    - Duty Type
    - Direction (Inbound/Outbound)
    - Document Category
    - Document Sub Category
    - Document Title
    - Receiver Type
    - Receiver Name
    - Receive Distribution Method
    - Email ID
    - Date Processed
    - Time Sent
    - Date Received
    - Comments
    - EPSS Claim Advisor
    - EPSS Supervisor
    - Modified By
    - Modified On
    - Modified At
- Each document record must be displayed as an individual line item.
- The report must be exportable to Excel for offline analysis.
- All required data fields must be available in OLIMS/EPSS/Payroll for extraction.

---

## 4. Exception Handling

- If a required field is missing for a document, the report must display a blank value and flag the record for review.
- If no documents match the selection criteria, the report must display a “No records found” message.
- If export to Excel fails, an error message must be shown and logged for support.

---

## 5. Compliance/Controls

- All document actions (upload, send, modify, delete) must be audit logged.
- Access to the report and document data must be restricted to authorised users.
- The report supports compliance with payroll controls, OLIMS access, reporting, and reconciliation requirements.

---

## 6. References and Linked Requirements

- Cross-references: OLA006, OLA007, OLA008, OLA013, RPP001–RPP005, OLIMS Document Management, EPSS Reporting, Compliance and SLA reporting.

---

## 7. Acceptance Criteria

- [ ] Report is available from the Document Overview screen in OLIMS.
- [ ] Selection criteria and output columns match the specification.
- [ ] All document records are displayed as individual line items.
- [ ] Export to Excel is functional and includes all selected data.
- [ ] Missing or incomplete data is flagged in the report.
- [ ] Access controls and audit logging are in place.
- [ ] Report supports compliance and reconciliation activities.# Functional Specification: OLA010 — Ability to Hide and Unhide Documents in OLIMS

---

## 1. Business Background

The Online Injury Management System (OLIMS) is used for managing EPSS claims, including document management. There is a business requirement to allow claims officers to hide or unhide documents in OLIMS due to errors or privacy concerns. This ensures sensitive or incorrect documents are not visible to general users, while maintaining auditability and compliance.

---

## 2. Scope

This requirement covers the ability to hide and unhide documents in OLIMS, enforce mandatory comments when hiding, and ensure access is controlled. It applies to all EPSS-related documents managed in OLIMS Document Overview.

---

## 3. Detailed Functional Requirements

- Users with appropriate access (e.g., EPSS Claims Officers, Supervisors) can hide or unhide documents from the Document Overview screen.
- When a document is hidden, a mandatory comment must be entered explaining the reason.
- Hidden documents are not visible to standard users but remain accessible to users with elevated access (e.g., Supervisors, Audit roles).
- The system must track and audit all hide/unhide actions, including user, timestamp, and comment.
- Access to hidden documents and the ability to hide/unhide is role-based and configurable.
- Document templates and metadata must support "hidden" and "hide comment" fields.

---

## 4. Exception Handling

- If a user attempts to hide/unhide a document without the required access, the system displays an error and prevents the action.
- If a hide action is attempted without entering a comment, the system prompts for a mandatory comment before proceeding.
- All failed attempts to hide/unhide documents are logged for audit purposes.

---

## 5. Compliance/Controls

- All hide/unhide actions are audit logged and reportable.
- Only users with appropriate roles can view or manage hidden documents.
- The audit log must be accessible for compliance reviews.
- Document visibility changes do not physically delete documents; they are flagged as hidden.

---

## 6. References and Linked Requirements

- Cross-references: OLA011 (audit log/reporting), OLA013 (Document Overview fields), OLA014 (compliance reporting), OLA007/OLA008 (document categories/subcategories).
- See also: [EPSS Document Management Requirements](#_Document_Generation_–).

---

## 7. Acceptance Criteria

- [ ] Users with correct roles can hide/unhide documents in OLIMS.
- [ ] Mandatory comment is enforced when hiding a document.
- [ ] Hidden documents are not visible to standard users.
- [ ] Audit log records all hide/unhide actions with user, timestamp, and comment.
- [ ] Access to hidden documents is restricted by role.
- [ ] No document is physically deleted when hidden; only flagged.
- [ ] Exception handling is implemented for access and comment requirements.
- [ ] Compliance and audit reporting requirements are met.# Functional Specification: OLA011 — Audit Log for Document Deletions in OLIMS

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
- [ ] (If confirmed) Document uploads are also audit logged.# Functional Specification: OLA012 — Documents uploaded into OLIMS via the EPSS Case Management module to be recorded as EPSS Notes

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
- [ ] Reporting on EPSS Notes is available for compliance and reconciliation.# Functional Specification: OLA013 — Document Overview Screen Enhancements

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust document management and compliance tracking within OLIMS. Claims officers need to record and report on all inbound and outbound documents related to EPSS claims. To support compliance, audit, and operational efficiency, enhancements are required to the Document Overview screen to capture additional metadata for each document.

---

## 2. Scope

This specification covers the addition of two new data entry fields—**Date Received** and **Comments**—to the Document Overview screen in OLIMS for EPSS claims. The enhancements apply to all document types managed in the EPSS Case Management module and must support both inbound and outbound documents.

---

## 3. Detailed Functional Requirements

- The Document Overview screen must include two new fields for claims officer data entry:
    - **Date Received**: A date field to record when the document was received by the EPSS claims officer.
    - **Comments**: A free-text field for additional notes (field length to be confirmed; recommend 255 characters).
- These fields must be available during document upload/import and visible in the Document Overview listing.
- Both fields must be editable by claims officers and supervisors with appropriate access.
- The fields must be included in document reporting and export functionality.
- Field placement: Confirm with business whether these fields should appear in the import document sub-screen or main overview grid.

---

## 4. Exception Handling

- If **Date Received** is not entered, prompt the user before saving (mandatory/optional status to be confirmed by business).
- If **Comments** exceeds the maximum allowed length, display an error and prevent saving.
- If user lacks permission to edit, fields must be read-only.

---

## 5. Compliance/Controls

- All entries and edits to **Date Received** and **Comments** must be audit logged (user, timestamp, old/new value).
- Access to edit these fields must be restricted to authorised EPSS claims officers and supervisors.
- Fields must be included in compliance and SLA performance reporting for inbound/outbound documents.

---

## 6. References and Linked Requirements

- Cross-references: OLA005, OLA012, RPP001–RPP005 (Document Overview reporting), OLIMS Document Management requirements.
- Related open items: Confirm field location and comments field length with business.

---

## 7. Acceptance Criteria

- [ ] Document Overview screen displays **Date Received** and **Comments** fields for all EPSS documents.
- [ ] Fields are available during document upload/import and visible in the overview.
- [ ] Fields are editable by authorised users and audit logged.
- [ ] Fields are included in document export/reporting.
- [ ] Exception handling is implemented as specified.
- [ ] Field placement and length confirmed with business and documented.# Functional Specification: OLA014 — EPSS Document Reporting for Compliance and SLA Performance

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust compliance and SLA performance reporting for all inbound and outbound EPSS (Enhanced Police Support Scheme) documents managed within OLIMS (Online Injury Management System). This ensures transparency, auditability, and adherence to scheme requirements for document handling, supporting both operational and regulatory needs.

---

## 2. Scope

This specification covers the reporting of all inbound and outbound EPSS documents in OLIMS, including uploads, correspondence, and generated letters/forms. It defines requirements for data capture, reporting outputs, and compliance/SLA monitoring for both internal and external stakeholders.

---

## 3. Detailed Functional Requirements

- All EPSS-related documents (inbound and outbound) must be reportable in OLIMS.
- The report must include, at minimum: document type (inbound/outbound), category, subcategory, employee number, incident number, claim number, document title, sender/receiver, date sent/received, and comments.
- The report must support selection/filtering by date range, employee, incident, document category/subcategory, and document direction.
- Both uploaded and system-generated documents must be included.
- The report must be exportable to Excel for compliance and SLA analysis.
- The reporting logic must align with existing OLIMS document overview data structures.
- The report must be accessible to EPSS Claims Officers and Supervisors with appropriate OLIMS access.

---

## 4. Exception Handling

- If a document record is missing mandatory fields (e.g., date, employee number), the report must flag the record as incomplete and highlight it for review.
- If document upload or correspondence fails, the system must log the failure and exclude the record from compliance counts, with an error note in the report.
- If access to a document is restricted due to privacy or security, the report must indicate "Restricted" in relevant fields.

---

## 5. Compliance/Controls

- All document actions (upload, send, receive, hide/unhide, delete) must be audit logged.
- Access to the report and underlying document data is restricted to authorised OLIMS users.
- The report supports payroll controls by ensuring all required documentation for EPSS payments is present and tracked.
- The report supports OLIMS access controls and is included in regular compliance and reconciliation activities.

---

## 6. References and Linked Requirements

- Cross-references: OLA013 (Document Overview fields), OLA009 (Reporting capability), OLA010 (Hide/unhide logic), RPP001–RPP005 (Document Overview Report), RPE001 (Detailed EPSS Payment Report), P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] All inbound and outbound EPSS documents are included in the report.
- [ ] Report includes all required fields and supports filtering by key criteria.
- [ ] Report is exportable to Excel.
- [ ] Exception records are flagged and described.
- [ ] Audit log is maintained for all document actions.
- [ ] Access controls are enforced for report and document data.
- [ ] Report output matches compliance and SLA requirements as confirmed by business stakeholders.