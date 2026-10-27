Title: Technical Specification — OLA EPSS Document Management Enhancements (ABAP ECC)
Created: 2026 02 03
Version: 0.2

## 1. Overview

This is the technical spec for the ABAP ECC work needed to deliver EPSS document generation, upload, audit logging, and reporting in OLIMS for OLA001 to OLA014.

What this change needs to do:

* Make the existing OLIMS correspondence flow work for EPSS templates, merge fields, overrides, preview, sending, and storage.
* Extend the document repository flow so EPSS uploads capture Date Received and Comments.
* Keep an audit log that is insert only and records every attempt, including denied actions.
* Add Document Overview reporting and Excel export per OLA009 and OLA014.

## 2. Scope

In scope:

* EPSS template maintenance, generation, preview, and sending.
* EPSS document upload into the OLIMS document repository, including categorisation and metadata capture.
* Document Overview user interface changes for Date Received, Comments, hide and unhide, and audit log access.
* Audit log storage, display, and export.
* Reporting and Excel export for inbound and outbound EPSS documents.
* EPSS Notes creation after successful uploads.

Out of scope:

* Changes to upstream SAP HR and payroll master data collection processes.
* Redesign of core OLIMS security model outside the authorisation checks described here.
* Bulk recategorisation of existing, historical documents.

## 3. References

Functional specifications:

* `OLA001_spec.md` through `OLA014_spec.md`
* `FinalOLA.md`

Existing ABAP assets observed in this workspace and expected to be reused or extended:

* Program `ZHUOLIMS_CORRESPONDENCE` and its includes used by OLIMS correspondence workflows
* Class `ZCL_OLIMS_CLASS` methods for email and correspondence:
  * `GET_EMP_EMAIL`
  * `GET_EMP_HOME_EMAIL`
  * `PREPARE_CORRESPONDENCE`
  * `SEND_CORRESPONDENCE`
  * `SEND_EMAIL`
  * `TRIM_META_DATA`
* TRIM integration functions used by correspondence logging:
  * `Z_TRIM_SAVE_DOCUMENT`
  * `Z_TRIM_INS_METADATA_GROUP`

## 4. System Context and Constraints

Execution environment:

* OLIMS runs on ABAP ECC. The design assumes classic dynpro, ALV grids, and SAPoffice and BCS based email sending.
* Document storage is integrated with TRIM. Documents and related metadata are linked from OLIMS tables to TRIM document identifiers.

Key constraints:

* Existing OLIMS tables are reused where possible. EPSS specific fields should be added using an extension table rather than modifying heavily used base tables, unless the OLIMS data owner confirms base table extension is safe.
* The audit log is insert only. If the audit write fails, the business action fails too.

## 5. Roles, Access, and Authorisations

User roles in scope:

* EPSS Claims Officer
* EPSS Supervisor
* Manager Claims Support
* Audit and Compliance user

Authorisation requirements:

* Template maintenance is restricted to Manager Claims Support.
* Overrides, sending, document uploads, Date Received and Comments edits are restricted to EPSS Claims Officer and EPSS Supervisor.
* Hide and unhide is restricted to EPSS Supervisor and Audit and Compliance user.
* Audit log viewing and export is restricted to EPSS Claims Officer, EPSS Supervisor, and Audit and Compliance user.
* Report viewing and export is restricted to EPSS Claims Officer, EPSS Supervisor, and Audit and Compliance user.
* All denied access attempts to audit log and reporting are logged as audit events.

Notes:

* Reuse existing OLIMS access category logic where available, for example `ZCL_OLIMS_CLASS=>DETERMINE_USER_GROUP` and any existing category display and update ranges.
* All new checks should be implemented in a single reusable authority utility, so the dynpro layer and the reporting layer share identical access decisions.

## 6. Data Model

### 6.1 Existing Structures to Reuse

Outgoing correspondence logging already writes:

* `ZIM_IN_DOC` as the header record per correspondence set
* `ZIM_IN_DOC_REC` as receiver detail records

Outgoing correspondence currently stores a TRIM document for the email body and records processing date and time. This implementation is extended to cover EPSS document storage requirements and additional metadata.

Email address sources already exist:

* `ZCL_OLIMS_CLASS=>GET_EMP_EMAIL` returns a single email address using SAP HR IT0105, preferring subtype MAIL and falling back to subtype MEMO.
* `ZCL_OLIMS_CLASS=>GET_EMP_HOME_EMAIL` returns home email and mobile, sourced from `ZIM_ADDRESS` first and falling back to `ZIM_INCIDENT` fields such as `OTH_HOME_EMAIL` and `OTH_HOME_MOBILE`.

### 6.2 EPSS Document Extension Table

Create a new table `ZIM_IN_DOC_EPSS` to store EPSS specific document fields without destabilising the base document table.

Key fields:

* `PERNR`
* `INCIDENT`
* `DOC_SEQ_NO`

Proposed fields:

* `DIRECTION` as inbound or outbound
* `DUTY_TYPE` as EPSS On Duty or EPSS Off Duty
* `DOC_CATEGORY` as EPSS On Duty or EPSS Off Duty
* `DOC_SUBCATEGORY` as one of the mandatory subcategories
* `DATE_RECEIVED` as a date, mandatory for new inbound uploads
* `COMMENTS` as text, default 255 characters, final length confirmed by business
* `HIDDEN` as a flag
* `HIDE_REASON` as text, mandatory when hiding
* `HIDDEN_BY`, `HIDDEN_ON`, `HIDDEN_AT`
* `MODIFIED_BY`, `MODIFIED_ON`, `MODIFIED_AT`

Suggested technical details:

* Primary key: `MANDT`, `PERNR`, `INCIDENT`, `DOC_SEQ_NO`
* Foreign key relationship: `PERNR`, `INCIDENT`, `DOC_SEQ_NO` references the base document header table record
* Secondary indices:
  * `MANDT`, `DOC_CATEGORY`, `DOC_SUBCATEGORY`, `DATE_RECEIVED`
  * `MANDT`, `PERNR`, `INCIDENT`, `DIRECTION`, `DATE_RECEIVED`
  * `MANDT`, `HIDDEN`, `MODIFIED_ON`
* Data elements and domains:
  * `DIRECTION` uses a domain with values inbound and outbound, matching existing OLIMS direction values if they already exist
  * `DOC_CATEGORY` uses a domain that includes EPSS On Duty and EPSS Off Duty, matching the OLIMS document category configuration
  * `DOC_SUBCATEGORY` uses a domain or check table to enforce the OLA008 list
  * `COMMENTS` uses a fixed length character field unless business confirms a long text requirement
* Update semantics:
  * Updates occur only through controlled update APIs that write audit entries
  * No direct table maintenance is permitted for business roles

Rules:

* Existing documents are not backfilled.
* For legacy records where the received date is unknown, store `DATE_RECEIVED` as initial and store a separate flag `DATE_RECEIVED_UNKNOWN` only if business approves that approach. If business prefers a placeholder date, this is explicitly rejected because it pollutes reporting and compliance metrics.

### 6.3 EPSS Notes

EPSS Notes are created when and only when an upload completes successfully. The note payload must include:

* Document title
* Upload date and time
* Uploader
* Category and subcategory
* Date Received
* Comments

Two options, needs a decision:

* Option A: persist notes into existing OLIMS notes tables used by correspondence updates
* Option B: create a dedicated EPSS Notes table keyed by document and claim

The selected storage option needs to support searching, filtering, and reporting, and it cannot allow silent deletion without an audit entry.

### 6.4 Audit Log Table

Create an audit log table `ZIM_DOC_AUDIT` that is insert only, with a stable primary key and no update or delete authorisations granted to business roles.

Key fields:

* `AUDIT_ID` as GUID or sequence
* `PERNR`, `INCIDENT`, `DOC_SEQ_NO`
* `EVENT_TS` as UTC timestamp, plus display date and time as required by OLIMS patterns
* `USER_ID`
* `USER_NAME` snapshot where available
* `ACTION_TYPE` as a domain, see below
* `RESULT` as success or failed or denied
* `REASON` as free text
* `FIELD_NAME` when the audit event is a field level change
* `OLD_VALUE`, `NEW_VALUE`
* `CLIENT_INFO` optional, for example terminal or tcode where available

Audit action types:

* Template upload, template update, template delete
* Merge preview, merge override, merge generate
* Send, resend, send failed
* Upload, upload failed
* Metadata update for Date Received and Comments
* Hide, unhide, denied hide, denied unhide
* Document delete, denied delete
* Audit log view, audit log export, denied audit log access
* Report view, report export, denied report access

Suggested technical details:

* Table buffering: disabled
* Primary key: `MANDT`, `AUDIT_ID`
* Secondary indices:
  * `MANDT`, `PERNR`, `INCIDENT`, `DOC_SEQ_NO`, `EVENT_TS`
  * `MANDT`, `ACTION_TYPE`, `EVENT_TS`
  * `MANDT`, `USER_ID`, `EVENT_TS`
* Storage volume: assume high volume. Partitioning is not available in all ECC versions, so indices must be chosen carefully.
* How we keep it insert only:
  * Do not build any update or delete code paths
  * No table maintenance views in production
  * Restrict authorisations on the table object to read and insert only for the application runtime user

Write rules:

* If an audit insert fails, the business action fails too. No silent success.
* Audit records are insert only. No update and no delete.

## 7. User Interface Changes

### 7.1 Template Maintenance Menu

Add a new menu entry under Manager Claims Support:

* Transaction `ZIM_MGRCS`
* Menu node: Letter Maintenance
* New sub node: Letter Maintenance EPSS

The menu entry routes users to maintenance views filtered to EPSS letter category values only.

### 7.2 Correspondence Generation and Sending

The correspondence generation screen must:

* Display employee number, employee name, and incident number in the header.
* Display both personal and work email with clear labels and selection options.
* Support additional receivers using existing OLIMS receiver handling.
* Enforce at least one delivery method per selected correspondence item.

What the BRD wants, and what the code does today:

* The BRD requires both personal and work email to be displayed and selectable.
* Today `ZCL_OLIMS_CLASS=>GET_EMP_EMAIL` returns one email address only, using MAIL then MEMO fallback. That does not meet the EPSS screen requirement, so we need to extend it.

Email retrieval must use:

* Personal email from IT0105 subtype MAIL, populated independently of work email, no fallback substitution
* Work email from IT0105 subtype MEMO, populated independently of personal email, no fallback substitution
* Home email and SMS as per `ZCL_OLIMS_CLASS=>GET_EMP_HOME_EMAIL` using `ZIM_ADDRESS` and `ZIM_INCIDENT`

Build note:

* Add a new retrieval API that returns both personal and work email explicitly, and update the correspondence UI to call it. Keep `GET_EMP_EMAIL` behaviour unchanged for existing callers unless a wider regression assessment is approved.

### 7.3 Document Overview Screen Enhancements

Add to the Document Overview grid:

* Date Received
* Comments
* Category and Subcategory, if not already visible for EPSS documents
* Hidden indicator

Add to the toolbar:

* Hide
* Unhide
* Audit Log
* Report and Export if not already available via existing report launchers

Field edit rules:

* Date Received is mandatory for new inbound uploads.
* Date Received is editable only when currently blank, unless business agrees to an override rule.
* Comments is editable for authorised roles.
* Any change to Date Received or Comments writes an audit entry containing old and new values.

### 7.4 Import Document Screen

Extend the existing Import Document flow to capture:

* Category: EPSS On Duty or EPSS Off Duty
* Subcategory: mandatory list from OLA008
* Date Received: mandatory for inbound uploads
* Comments: optional, max length confirmed by business

Validation rules:

* Block save when category or subcategory is missing.
* Validate Date Received as a real date.
* Validate file extension and file size by policy.
* Enforce naming convention: `[IncidentNo]_[Category]_[Date]_[UserInitials].ext`

The naming convention is validated logically. The system must not rename user supplied filenames without explicit user confirmation because the filename may be relied on in external record keeping.

## 8. Processing Design

### 8.1 Template Upload and Maintenance

Template maintenance uses the existing OLIMS letter maintenance framework:

* Templates are stored in the existing repository used by OLIMS letters and forms, for example a TRIM document link or SAPoffice document store as already implemented for non EPSS letters.
* A new EPSS specific letter category is added to the letter category domain and the maintenance views are filtered to that category.

Any template upload or change writes an audit entry including the template identifier, action, user, and timestamp.

### 8.2 Merge Data Extraction and Override

Merge data extraction:

* Collect merge values from SAP HR, payroll, and OLIMS case data using the existing correspondence variable framework.
* Missing required values trigger a user prompt on the override screen.

Override screen:

* Shows system value and editable value for each merge field.
* Highlights overridden fields.
* Prevents overriding locked fields defined by business rules.
* Audit logs every override at field level, including system value and final value.
* Persisting a full override snapshot to allow deterministic regeneration is recommended but not explicitly required by the BRD. Treat this as TBC and confirm before build.

Each override action writes audit entries at field level.

### 8.3 Preview and Generate

Preview uses the existing Word preview mechanism already used by OLIMS, which is typically invoked through the `preview_word` function in the OLIMS letter framework.

Generation produces the final document content and stores it in TRIM. The stored artefacts must include:

* The final document, for example PDF or DOCX
* The email body text used when sending, where applicable
* The override snapshot used to generate the document, if snapshot persistence is confirmed

### 8.4 Send Correspondence

Sending leverages the existing email sending logic in `ZCL_OLIMS_CLASS=>SEND_EMAIL`.

What the code does today:

* `ZCL_OLIMS_CLASS=>SEND_CORRESPONDENCE` stores the email body to TRIM as a text artefact and saves the TRIM identifier in the correspondence header.
* OLA004 requires storing the actual sent document artefact. Storing only the email body is not sufficient for EPSS.

On successful send:

* Create or extend the `ZIM_IN_DOC` and `ZIM_IN_DOC_REC` records as already done by `ZCL_OLIMS_CLASS=>SEND_CORRESPONDENCE`.
* Store or link the final sent document artefact in TRIM and persist its TRIM identifier with the correspondence record.
* Optionally also store the email body in TRIM, but it must be clearly identified as the body, not the primary sent document artefact.
* Write audit entries for the send event and receiver set, including the chosen personal and or work email.

On failed send:

* Do not create a compliance counted record.
* Write audit entries with result failed and include the error message.

On resend:

* Each resend is logged as a separate correspondence record and a separate audit event.

### 8.5 Upload Documents

Uploads use the existing Import Document flow and TRIM integration functions.

Persisted data:

* Document header record in the base document table or its existing equivalent
* EPSS extension record in `ZIM_IN_DOC_EPSS`
* EPSS Note record according to the chosen EPSS Notes storage design
* Audit entry of type upload

If any persistence step fails:

* Roll back.
* Do not create an EPSS Note.
* Show a clear error message and write an audit entry of type upload failed.

### 8.6 Hide and Unhide

Hide and unhide is implemented as a flag in `ZIM_IN_DOC_EPSS`:

* Hide requires a mandatory reason.
* Hidden documents do not appear for users without elevated roles.
* Hidden documents remain physically stored and reportable for audit and compliance roles.

Each hide or unhide action writes an audit entry including reason and result.

### 8.7 Audit Log UI

Audit log UI is launched from the Document Overview toolbar and displays:

* Time ordered audit entries for the selected document
* Filters by action type and date range
* Export to Excel

Access denial to the audit log UI is audited.

## 9. Reporting Design

Reporting follows OLA009 and OLA014 and covers:

Filters:

* Employee number
* Incident number
* Document category
* Document subcategory
* Direction
* Date From and Date To, applied to processed date and also received date where relevant

Columns:

* Employee number
* Incident number
* Claim number
* Duty type
* Direction
* Document category
* Document subcategory
* Document title
* Receiver type
* Receiver name
* Receive distribution method
* Email ID
* Date Processed
* Time Sent
* Date Received
* Comments
* EPSS Claim Advisor
* EPSS Supervisor
* Modified By
* Modified On
* Modified At

Where the data comes from:

* Employee number: `ZIM_IN_DOC` or the document header key `PERNR`
* Incident number: `ZIM_IN_DOC` key `INCIDENT`
* Claim number: derived from OLIMS claim tables linked to incident, source table confirmed by OLIMS data owner
* Duty type, category, subcategory, direction, Date Received, Comments, Modified By, Modified On, Modified At: `ZIM_IN_DOC_EPSS`
* Document title: base document header title field if present, else TRIM filename
* Receiver type, receiver name, distribution method, Email ID, Date Processed, Time Sent: `ZIM_IN_DOC_REC`
* EPSS Claim Advisor and EPSS Supervisor: derived from OLIMS assignment tables linked to incident, source table confirmed by OLIMS data owner

If a field is not present in the existing tables, the report does one of:

* derive the value using OLIMS incident and claim relationships, or
* display blank and mark the row incomplete, or
* display Restricted for access controlled values

Edge cases:

* If no records match, show No records found.
* If mandatory fields are missing, show blanks and mark the row as incomplete.
* For records restricted by access, show Restricted in restricted columns while keeping the row visible if the user has report access.
* Failed uploads and failed sends are excluded from compliance counts but are still visible with a failure marker and error note.

How we build it:

* Extend the existing Document Overview reporting objects where available to avoid creating a parallel reporting stack.
* Join document header, receiver, and EPSS extension tables to populate the full output row set.

## 10. Detailed OLA Mapping

### 10.1 OLA001 Template Upload

Build work:

* Add EPSS specific letter category values to the letter category domain used by OLIMS.
* Add maintenance menu entry under `ZIM_MGRCS`.
* Filter maintenance views to EPSS letter category.
* Write template maintenance audit entries.

### 10.2 OLA002 Template Override

Build work:

* Implement an override dynpro or ALV based screen listing merge fields and values.
* Write audit entries for each changed field, including system and final values. Persist an override snapshot only if deterministic regeneration is confirmed as required.
* Enforce locked field rules.

### 10.3 OLA003 Correspondence Sending

Build work:

* Implement an email retrieval API that returns personal and work email separately, rather than relying on `GET_EMP_EMAIL` which returns only one value with fallback.
* Extend receiver selection and validation.
* Write audit entries for send attempts and results.

### 10.4 OLA004 Correspondence Logging

Build work:

* Continue using `ZIM_IN_DOC` and `ZIM_IN_DOC_REC` for correspondence header and receiver details.
* Store the final sent document into TRIM and link it from the correspondence record.
* Log each resend separately.
* Log failed sends and exclude them from compliance counts.

### 10.5 OLA005 Date Received

Build work:

* Add Date Received to the Document Overview grid and to the import flow.
* Persist Date Received in `ZIM_IN_DOC_EPSS`.
* Enforce edit only when blank for existing documents unless business approves broader edit rights.
* Audit any Date Received changes.

### 10.6 OLA006 Document Upload

Build work:

* Extend Import Document to capture EPSS metadata and naming convention.
* Store document in TRIM.
* Create EPSS Note on success.
* Write upload audit entries.

### 10.7 OLA007 Categories

Build work:

* Add categories EPSS On Duty and EPSS Off Duty to the relevant OLIMS configuration, domain, and selection help.
* Ensure categories are available in upload, Document Overview, and reporting.
* Do not recategorise historical documents.

### 10.8 OLA008 Subcategories

Build work:

* Add mandatory subcategory list to configuration.
* Validate that subcategory is present for EPSS categories on upload.
* Display subcategory in Document Overview and reporting.

### 10.9 OLA009 Document Overview Reporting

Build work:

* Implement report output columns per section 9.
* Include Excel export and handle export errors.

### 10.10 OLA010 Hide and Unhide

Build work:

* Add hide and unhide toolbar actions.
* Implement hide state and reason storage in `ZIM_IN_DOC_EPSS`.
* Enforce role checks and mandatory comment.
* Audit all attempts, including denied attempts.

### 10.11 OLA011 Audit Log

Build work:

* Implement `ZIM_DOC_AUDIT` and an audit write API.
* Add Audit Log UI button and display and export capability.
* Enforce immutability and fail closed behaviour on audit write errors.

### 10.12 OLA012 EPSS Notes

Build work:

* Create EPSS Note record on successful upload only.
* Ensure notes are searchable and reportable.
* Audit EPSS Note creation and any subsequent modification if OLIMS allows edits.

### 10.13 OLA013 Document Overview Enhancements

Build work:

* Add Date Received and Comments fields to the Document Overview UI.
* Persist in `ZIM_IN_DOC_EPSS`.
* Include in reporting and export.

### 10.14 OLA014 Compliance and SLA Reporting

Build work:

* Ensure inbound and outbound EPSS documents appear in compliance views.
* Exclude failed uploads and failed sends from compliance counts and clearly mark them as failures.
* Mask restricted fields as Restricted for users who have report access but not underlying document access.

## 11. Error Handling and Logging

What the user sees:

* Missing required metadata results in validation messages and blocked save.
* Invalid email addresses block sending.
* Upload and send failures show the underlying error text in a safe, non technical form and still write an audit event with the technical error stored for support.

What support gets:

* Use a consistent application log object and subobject for EPSS document management actions.
* Include correlation identifiers from the audit log id when writing application logs.

## 12. Testing and Acceptance

Tests to run:

* Template upload and maintenance access control.
* Merge field population, missing field prompts, override, and locked field rejection.
* Preview and generation with stored artefact linkage.
* Send to personal email, work email, both, and failure cases.
* Upload inbound document with required metadata and failure cases.
* Edit Date Received when blank, reject edits when not blank, and audit entries for both outcomes.
* Comments length validation.
* Hide with mandatory reason, unhide, access denial.
* Audit log view and export, including access denial.
* Reporting filters, Restricted masking, No records found behaviour, Excel export, and export failure handling.

## 13. Open Items and Decisions

Still needs a decision:

* Confirm the authoritative source field for personal email used by EPSS correspondence.
* Confirm the authoritative source field for work email and whether IT0105 subtype MEMO is correct in this context.
* Confirm whether Date Received is strictly mandatory for all uploads or only for inbound uploads.
* Confirm Comments maximum length and whether it requires multi line support.
* Confirm EPSS Notes storage approach, and whether EPSS Notes are editable or append only.
* Confirm the exact list of merge fields and which fields are locked from overrides.
* Confirm whether deterministic regeneration is required and therefore whether an override snapshot must be persisted with the generated document.
* Confirm whether the system may rename uploaded filenames or only validate the naming convention.
* Confirm which existing OLIMS report transaction is extended for OLA009 and OLA014, versus delivering a new report.
