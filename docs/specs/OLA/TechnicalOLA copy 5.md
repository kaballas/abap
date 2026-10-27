Title: Technical Specification — OLA EPSS Document Management Enhancements (ABAP ECC)
Created: 2026 02 03
Version: 0.4
Last updated: 2026 02 06

## 1. Overview

This build adds EPSS document handling to OLIMS for OLA001 to OLA014.

The goal is simple.
Reuse the existing OLIMS correspondence flow and add the EPSS pieces on top.
Reuse the existing OLIMS document repository flow and add EPSS metadata and reporting.
Make it auditable.

What the system needs to do:

* EPSS templates can be maintained, previewed, generated, overridden, and sent using the existing OLIMS letter framework.
* EPSS uploads capture Date Received and Comments and keep them with the document.
* Every attempt is audited, including denied actions.
* Document Overview shows EPSS metadata, hide state, and provides access to audit and reporting.
* Reporting supports inbound and outbound EPSS documents, with Excel export.

Design rules we stick to:

* Do not fork OLIMS flows unless there is no other option.
* Keep EPSS fields in an extension table, not in heavily used base tables.
* The audit log is insert only.
* If an audit insert fails, the business action fails too.
* No backfill and no bulk recategorisation of historical documents.

## 2. Scope

In scope:

* EPSS template maintenance, generation, preview, and sending.
* EPSS document upload into the OLIMS document repository, including categorisation and metadata capture.
* Document Overview UI changes for Date Received, Comments, hide and unhide, and audit log access.
* Audit log storage, display, and export.
* Reporting and Excel export for inbound and outbound EPSS documents.
* EPSS Notes creation after successful uploads.

Out of scope:

* Changes to upstream SAP HR and payroll master data collection.
* Redesign of core OLIMS security model outside the checks described here.
* Bulk recategorisation and backfilling of existing documents.

## 3. References

Functional specifications:

* `OLA001_spec.md` through `OLA014_spec.md`
* `FinalOLA.md`

ABAP assets already in play and expected to be reused or extended:

* Program `ZHUOLIMS_CORRESPONDENCE` and its includes used by correspondence workflows
* Class `ZCL_OLIMS_CLASS` methods used by correspondence and email:
  * `GET_EMP_EMAIL` (returns one work email from `PA0105` subtype MAIL using `USRID_LONG`, falling back to subtype MEMO using `USRID`)
  * `GET_EMP_HOME_EMAIL` (home email and mobile from `ZIM_ADDRESS`, falling back to `ZIM_INCIDENT` fields such as `OTH_HOME_EMAIL` and `OTH_HOME_MOBILE`)
  * `PREPARE_CORRESPONDENCE`
  * `SEND_CORRESPONDENCE` (stores the email body as a `.TXT` document in TRIM today)
  * `SEND_EMAIL`
  * `TRIM_META_DATA`
* TRIM integration function modules used by correspondence logging:
  * `Z_TRIM_SAVE_DOCUMENT`
  * `Z_TRIM_INS_METADATA_GROUP`

New build artefacts in this spec:

* Table `ZIM_IN_DOC_EPSS` (EPSS document metadata extension)
* Table `ZIM_DOC_AUDIT` (insert only audit log)
* One reusable authority utility used by dynpro and reporting layers (object name TBC)
* One audit write API (object name TBC)
* Reporting and audit display objects (extend existing OLIMS reporting if possible, otherwise create new, TBC)

## 4. System Context and Constraints

Platform:

* ABAP ECC.
* Classic dynpro and ALV.
* SAPoffice and BCS based email sending.
* TRIM as the document store, linked through OLIMS tables.

Current behaviour worth calling out because it affects the build:

* `ZCL_OLIMS_CLASS=>GET_EMP_EMAIL` returns one work email address with a fallback substitution. EPSS needs personal and work email separately, with no substitution.
* `ZCL_OLIMS_CLASS=>SEND_CORRESPONDENCE` stores the email body as a `.TXT` document in TRIM as the saved artefact today. EPSS needs the final generated document artefact stored and linked.
* There is no dedicated audit log for document actions today in the correspondence code context. That is new.

Constraints:

* Reuse existing OLIMS tables where possible. Add EPSS fields via an extension table unless the OLIMS data owner confirms a base table extension is safe.
* The audit log is insert only. No update or delete paths.
* Audit inserts are fail closed. If we cannot write the audit row, we do not complete the business action.
* High volume expected for audit. Keep indices tight and buffering off.
* Do not rename uploaded files without explicit user confirmation.

## 5. Roles, Access, and Authorisations

Roles in scope:

* EPSS Claims Officer
* EPSS Supervisor
* Manager Claims Support
* Audit and Compliance user

What each role can do:

* Manager Claims Support
  * Maintain EPSS templates
* EPSS Claims Officer
  * Generate, override, preview, and send EPSS correspondence
  * Upload EPSS documents
  * Update Date Received and Comments within the rules in section 7.3
  * View and export audit log
  * View and export reporting
* EPSS Supervisor
  * Everything an EPSS Claims Officer can do
  * Hide and unhide documents
* Audit and Compliance user
  * View and export audit log
  * View and export reporting
  * Hide and unhide documents

Audit rules for access:

* Every denied attempt to hide, unhide, view audit log, export audit log, view report, or export report is written to the audit table.
* If the denial audit insert fails, treat it as a system error and stop. We cannot meet the compliance requirement otherwise.

How we implement the checks:

* Put all new checks in one reusable authority utility.
* Dynpros and reports must call the same utility so they make the same decisions.
* Reuse existing OLIMS access category logic where available, for example `ZCL_OLIMS_CLASS=>DETERMINE_USER_GROUP` and existing display and update ranges.

## 6. Data Model

### 6.1 Existing structures we reuse

Outgoing correspondence already writes:

* `ZIM_IN_DOC` as the header record per correspondence set
* `ZIM_IN_DOC_REC` as receiver detail records

Correspondence currently stores a `.TXT` TRIM document for the email body and records processing date and time.
For EPSS we continue using the same header and receiver tables, but we also store the final sent document artefact and add EPSS metadata.

Email sources already exist:

* `GET_EMP_EMAIL` returns one work email from `PA0105` subtype MAIL (`USRID_LONG`), falling back to subtype MEMO (`USRID`).
* `GET_EMP_HOME_EMAIL` returns home email and mobile from `ZIM_ADDRESS` first and falls back to `ZIM_INCIDENT` fields such as `OTH_HOME_EMAIL` and `OTH_HOME_MOBILE`.

### 6.2 Table ZIM_IN_DOC_EPSS (EPSS extension)

Why an extension table:

* These fields are EPSS specific.
* Keeping them out of heavily used base tables reduces regression risk.

Key fields:

* `PERNR`
* `INCIDENT`
* `DOC_SEQ_NO`

Proposed fields:

* `DIRECTION` (inbound or outbound)
* `DUTY_TYPE` (EPSS On Duty or EPSS Off Duty)
* `DOC_CATEGORY` (EPSS On Duty or EPSS Off Duty)
* `DOC_SUBCATEGORY` (mandatory list from OLA008)
* `DATE_RECEIVED` (date)
* `COMMENTS` (text, default 255 characters unless business confirms a long text requirement)
* `HIDDEN` (flag)
* `HIDE_REASON` (text, mandatory when hiding)
* `HIDDEN_BY`, `HIDDEN_ON`, `HIDDEN_AT`
* `MODIFIED_BY`, `MODIFIED_ON`, `MODIFIED_AT`

Technical details:

* Primary key: `MANDT`, `PERNR`, `INCIDENT`, `DOC_SEQ_NO`
* Foreign key: `PERNR`, `INCIDENT`, `DOC_SEQ_NO` references the base document header record (table name TBC if uploads do not use `ZIM_IN_DOC`)
* Indices, suggested:
  * `MANDT`, `DOC_CATEGORY`, `DOC_SUBCATEGORY`, `DATE_RECEIVED`
  * `MANDT`, `PERNR`, `INCIDENT`, `DIRECTION`, `DATE_RECEIVED`
  * `MANDT`, `HIDDEN`, `MODIFIED_ON`
* Buffering: off

Data element and domain approach:

* `DIRECTION` should reuse the existing OLIMS direction domain if one exists, otherwise create a domain with inbound and outbound.
* `DOC_CATEGORY` should use the existing OLIMS category configuration and selection helps, extended with EPSS values.
* `DOC_SUBCATEGORY` should be enforced through a domain or check table tied to the OLA008 list.
* `COMMENTS` should be a fixed length character field unless business confirms a long text requirement.

Update rules:

* No direct table maintenance for business roles.
* Updates happen only through controlled update APIs that write audit entries.
* Do not backfill old records.

Date Received rules:

* Date Received is mandatory for new EPSS uploads.
* For existing EPSS documents, Date Received is editable only while blank.

### 6.3 EPSS Notes

EPSS Notes are created when and only when an upload completes successfully.
They must include at minimum:

* Document title
* Upload date and time
* Uploader
* Category and subcategory
* Comments

Storage is a decision:

* Option A: reuse the existing notes mechanism used by `ZCL_OLIMS_CLASS=>UPDATE_NOTES` (SAPscript text, append only)
* Option B: create a dedicated EPSS Notes table keyed by document and claim

Whatever we pick must support searching, filtering, and reporting.
It also cannot allow silent deletion without an audit entry.
TBC.

### 6.4 Table ZIM_DOC_AUDIT (insert only)

This is the system of record for who did what and when.
It is insert only.

Key fields:

* `AUDIT_ID` (GUID or number range, GUID recommended)
* `PERNR`, `INCIDENT`, `DOC_SEQ_NO` (when applicable)
* `EVENT_TS` (UTC timestamp)
* `USER_ID`
* `USER_NAME` snapshot where available
* `ACTION_TYPE` (domain)
* `RESULT` (success, failed, denied)
* `REASON` (free text, use for denial reason or failure text)
* `FIELD_NAME` (for field level changes)
* `OLD_VALUE`, `NEW_VALUE`
* `CLIENT_INFO` (optional, for example terminal, program, dynpro, tcode)

Action types we need:

* Template maintenance (upload, update, delete)
* Merge actions (preview, override, generate)
* Send and resend
* Upload
* Metadata update (Date Received, Comments)
* Hide and unhide
* Document delete (if OLIMS supports it in scope)
* Audit log view and audit log export
* Report view and report export

Technical details:

* Buffering: off
* Primary key: `MANDT`, `AUDIT_ID`
* Indices, suggested:
  * `MANDT`, `PERNR`, `INCIDENT`, `DOC_SEQ_NO`, `EVENT_TS`
  * `MANDT`, `ACTION_TYPE`, `EVENT_TS`
  * `MANDT`, `USER_ID`, `EVENT_TS`

Insert only rules:

* No update and no delete code paths.
* No table maintenance views in production.
* Restrict table authorisations so business roles cannot update or delete.

Write rules:

* Every attempt is written, including denied attempts.
* If the audit insert fails, the business action fails too. No silent success.

## 7. User Interface Changes

### 7.1 Template Maintenance Menu

Add a new menu entry under Manager Claims Support:

* Transaction `ZIM_MGRCS`
* Menu node: Letter Maintenance
* Sub node: Letter Maintenance EPSS

This routes to the existing letter maintenance views, filtered to EPSS letter categories.

### 7.2 Correspondence Generation and Sending

What the EPSS correspondence screen must do:

* Show employee number, employee name, and incident number in the header.
* Show personal and work email separately, clearly labelled, and allow selecting one or both.
* Support additional receivers using existing OLIMS receiver handling.
* Enforce at least one delivery method per selected correspondence item.

What exists today:

* `GET_EMP_EMAIL` returns one work email only, using `PA0105` subtype MAIL (`USRID_LONG`) and falling back to subtype MEMO (`USRID`).
* `SEND_CORRESPONDENCE` stores the email body as a `.TXT` document in TRIM as the correspondence artefact.

What we build:

* Add a new email retrieval API that returns personal and work email explicitly, with no fallback substitution.
  * Work email comes from `PA0105` subtype MAIL (`USRID_LONG`).
  * Personal email comes from `GET_EMP_HOME_EMAIL` (home email from `ZIM_ADDRESS`, falling back to `ZIM_INCIDENT` home fields).
  * `PA0105` subtype MEMO is treated as a secondary address only if business confirms it is meaningful for EPSS. TBC.
* Update the correspondence UI to call the new API and present both addresses.
* Keep `GET_EMP_EMAIL` behaviour unchanged for existing callers unless a wider regression assessment is approved.
* Store the final generated document artefact in TRIM and link it from the correspondence record.
  * Storing only the email body is not enough for EPSS.
  * Storing the email body as a secondary artefact is fine, as long as it is clearly labelled as the body.

### 7.3 Document Overview Screen Enhancements

Add to the Document Overview grid:

* Date Received
* Comments
* Category and Subcategory (for EPSS documents)
* Hidden indicator

Add to the toolbar:

* Hide
* Unhide
* Audit Log
* Report and Export (if not already available via existing report launchers)

Field rules:

* Date Received is mandatory for new EPSS uploads.
* Date Received is for uploaded documents (received items), not outbound correspondence sends.
* Date Received is editable only while blank.
* Comments is editable for authorised roles.
* Any change to Date Received or Comments writes a field level audit entry with old and new values.

Visibility rules:

* Hidden documents must not appear for users without the hide view authorisation.
* Hidden documents remain visible and reportable for EPSS Supervisor and Audit and Compliance users.

### 7.4 Import Document Screen

Extend the existing Import Document flow to capture EPSS metadata:

* Category (EPSS On Duty, EPSS Off Duty)
* Subcategory (mandatory list from OLA008)
* Date Received (mandatory for EPSS uploads)
* Comments (optional, default max length 255, confirm longer requirement with business. TBC)

Validation rules:

* Block save when category or subcategory is missing.
* Validate Date Received as a real date.
* Validate file extension and file size by NSWPF ICT policy (exact limits not stated in BRD). TBC.
* Allow PDF, DOCX, XLSX, and common image formats.
* Enforce naming convention: `[IncidentNo]_[Category]_[Date]_[UserInitials].ext`

We validate the naming convention.
We do not rename the user supplied filename unless the user confirms it.

## 8. Processing Design

### 8.0 Shared building blocks

We keep the core logic out of the dynpro layer.
Both dynpros and reports need the same access decisions and the same audit writes.

Build these shared pieces:

* Authority utility used by every entry point (send, upload, hide, report, audit view)
* Audit write API used by every entry point
* A small service API for document actions so UI code stays thin (upload, metadata update, hide, unhide)

### 8.1 Template Upload and Maintenance

Reuse the existing OLIMS letter maintenance framework:

* Add EPSS specific letter category values to the letter category domain and configuration.
* Filter the maintenance views to EPSS letter categories when launched from the EPSS menu node.
* Write an audit entry on template upload, update, and delete.

### 8.2 Merge Data Extraction and Override

Merge extraction:

* Reuse the existing correspondence variable framework.
* Collect values from SAP HR, payroll, and OLIMS case data as already done for non EPSS letters.
* Support at minimum officer name, incident number, claim status, and payment details. Full list comes from the business. TBC.
* If a required value is missing, prompt on the override screen.

Override screen:

* Show system value and editable value for each merge field.
* Highlight fields the user has changed.
* Prevent overriding locked fields defined by business rules. TBC list.
* Write an audit entry for every overridden field with old and new values.

Override snapshots:

* BRD and business requirements require field level override auditing.
* There is no deterministic regeneration requirement in BRD or business requirements.
* Do not build override snapshots unless a later scope decision adds deterministic regeneration.

### 8.3 Preview and Generate

Preview:

* Reuse the existing Word preview mechanism already used by OLIMS.

Generate:

* Produce the final document content.
* Store the final document artefact in TRIM.
* Optionally store the email body text in TRIM as a separate artefact.

### 8.4 Send Correspondence

Sending uses `ZCL_OLIMS_CLASS=>SEND_EMAIL` for delivery.

What changes for EPSS is what we store and what we log.

Successful send:

* Generate the final document.
* Store the final document artefact in TRIM and capture its TRIM id.
* Create the `ZIM_IN_DOC` header and `ZIM_IN_DOC_REC` receiver rows as already done today.
* Link the correspondence record to the final document TRIM id.
* Write audit entries for the send attempt, including the chosen recipients and which address types were used (personal, work, both).

Failed send:

* Do not create a compliance counted record.
* Write an audit entry with result failed and include the technical error text for support.
* Show a safe user message.

Resend:

* Treat each resend as a new send.
* Create a new correspondence record and a new audit event each time.

### 8.5 Upload Documents

Uploads reuse the existing Import Document flow and TRIM integration.

On success we persist, in one LUW:

* Base document header record (existing OLIMS table, name TBC if not `ZIM_IN_DOC`)
* EPSS extension row in `ZIM_IN_DOC_EPSS`
* EPSS Note record (storage approach TBC)
* Audit entry of type Upload with result success

On failure:

* Roll back DB changes.
* Do not create an EPSS Note.
* Write an audit entry of type Upload with result failed and the technical error.
* If the audit insert fails, stop and raise an error. No silent failure.

### 8.6 Metadata Updates (Date Received and Comments)

Date Received and Comments updates come from Document Overview.

Rules:

* Enforce edit rules from section 7.3.
* Every change writes field level audit entries with old and new values.
* Denied edits still write an audit entry with result denied.

### 8.7 Hide and Unhide

Hide and unhide is a flag in `ZIM_IN_DOC_EPSS`.

Hide:

* Requires a reason.
* Sets hide fields and modified fields.
* Writes an audit entry including the reason.

Unhide:

* Clears the hide flag and reason.
* Writes an audit entry.

Denied attempts:

* Write an audit entry with result denied and the reason for denial.

### 8.8 Audit Log UI

Launched from Document Overview.

Shows:

* Time ordered audit entries for the selected document
* Filters by action type and date range
* Export to Excel

Access denial to the audit log UI is audited.

## 9. Reporting Design

Reporting covers OLA009 and OLA014.

### 9.1 Access rules

* Report view and export requires report access (roles listed in section 5).
* Denied view and export attempts are audited.
* Hidden documents are included only for users with hide view rights.
* Where a user can run the report but cannot view the underlying document, mask sensitive fields as Restricted.

### 9.2 Filters

Selection criteria:

* Employee number
* Incident number
* Document category
* Document subcategory
* Direction
* Date From and Date To
  * Apply to processed date and also received date where relevant

### 9.3 Output columns

Report columns:

* Employee number
* Incident number
* Claim number (source table TBC)
* Duty type
* Direction
* Document category
* Document subcategory
* Document title
* Receiver type
* Receiver name
* Receive distribution method
* Email id
* Date processed
* Time sent
* Date received
* Comments
* EPSS Claim Advisor (source table TBC)
* EPSS Supervisor (source table TBC)
* Modified by
* Modified on
* Modified at

### 9.4 Where the data comes from

Primary sources:

* Employee number and incident number: document header key fields
* Receiver fields, processed date, time sent, email id: `ZIM_IN_DOC_REC`
* Duty type, direction, category, subcategory, Date Received, Comments, modified fields: `ZIM_IN_DOC_EPSS`
* Document title: base header title where available, otherwise TRIM filename

Derived sources:

* Claim number: derived from OLIMS claim tables linked to incident. Source table TBC with OLIMS data owner.
* EPSS Claim Advisor and EPSS Supervisor: derived from OLIMS assignment tables linked to incident. Source table TBC.

### 9.5 Failures and compliance counts

Compliance counts use successful document records only.

Failed sends and failed uploads still need to be visible, but not counted.
Implementation approach:

* Include audit rows for failed Send and Upload actions as report rows marked failed.
* Populate whatever keys are available (PERNR, incident, doc seq if known).
* Show the failure reason from the audit log.
* Leave document specific columns blank where there is no document record.

### 9.6 Excel export

* Use the standard ALV export where possible.
* Audit every export attempt, including denied exports.
* If export fails, show a user message and write the technical error to the audit reason and application log.

## 10. Detailed OLA Mapping

### 10.1 OLA001 Template Upload

Build:

* Add EPSS letter category values to the letter category domain and configuration.
* Add the EPSS letter maintenance menu entry under `ZIM_MGRCS`.
* Filter the maintenance views to EPSS letter categories.
* Audit template uploads, updates, and deletes.

### 10.2 OLA002 Template Override

Build:

* Implement an override screen listing merge fields with system and user values.
* Enforce locked fields (list TBC).
* Audit each overridden field with old and new values.
* Override snapshot only if deterministic regeneration is confirmed as required. TBC.

### 10.3 OLA003 Correspondence Sending

Build:

* Implement a new email retrieval API that returns personal and work email separately.
* Update the UI to show and allow selecting both.
* Validate recipients and delivery methods.
* Audit send attempts and results.

### 10.4 OLA004 Correspondence Logging

Build:

* Continue using `ZIM_IN_DOC` and `ZIM_IN_DOC_REC`.
* Store the final sent document artefact in TRIM and link it from the correspondence record.
* Treat each resend as its own correspondence record and audit event.
* Audit failed sends and keep them out of compliance counts.

### 10.5 OLA005 Date Received

Build:

* Add Date Received to Document Overview and Import Document.
* Persist Date Received in `ZIM_IN_DOC_EPSS`.
* Enforce edit only while blank.
* Audit Date Received changes.

### 10.6 OLA006 Document Upload

Build:

* Extend Import Document to capture EPSS metadata and naming convention validation.
* Store document in TRIM.
* Create EPSS Note on success only.
* Audit upload attempts, success, and failure.

### 10.7 OLA007 Categories

Build:

* Add EPSS On Duty and EPSS Off Duty to OLIMS category configuration and selection helps.
* Make categories available in upload, Document Overview, and reporting.
* Do not recategorise historical documents.

### 10.8 OLA008 Subcategories

Build:

* Add the mandatory EPSS subcategory list to configuration.
* Validate subcategory on upload.
* Display subcategory in Document Overview and reporting.

### 10.9 OLA009 Document Overview Reporting

Build:

* Implement report output columns and filters per section 9.
* Include Excel export and handle export errors.
* Audit report view and export, including denials.

### 10.10 OLA010 Hide and Unhide

Build:

* Add hide and unhide toolbar actions.
* Store hide state and reason in `ZIM_IN_DOC_EPSS`.
* Enforce role checks and mandatory reason.
* Audit all attempts, including denied attempts.

### 10.11 OLA011 Audit Log

Build:

* Implement `ZIM_DOC_AUDIT` and an audit write API.
* Add Audit Log UI to Document Overview, plus export.
* Enforce insert only behaviour and fail closed audit writes.

### 10.12 OLA012 EPSS Notes

Build:

* Create EPSS Note on successful upload only.
* Ensure notes are searchable and reportable (storage approach TBC).
* Audit note creation, and audit edits if OLIMS allows edits. TBC.

### 10.13 OLA013 Document Overview Enhancements

Build:

* Add Date Received and Comments to Document Overview.
* Persist them in `ZIM_IN_DOC_EPSS`.
* Include them in reporting and export.

### 10.14 OLA014 Compliance and SLA Reporting

Build:

* Include inbound and outbound EPSS documents in compliance reporting.
* Exclude failed sends and failed uploads from compliance counts while still showing them as failures.
* Mask Restricted fields for users who have report access but not underlying document access.

## 11. Error Handling and Logging

User facing rules:

* Missing required metadata blocks save with a clear message.
* Invalid email addresses block sending.
* Upload and send failures show a safe error message. The technical text goes to the audit reason and application log.

Support rules:

* Use a consistent application log object and subobject for EPSS document actions (object name TBC).
* Include the audit id as a correlation id when writing application logs.

## 12. Testing and Acceptance

Tests to run:

* Template maintenance access control and audit.
* Merge field population, missing field prompts, override, locked field rejection, and field level audit.
* Preview and generation, with TRIM artefact linkage for final document.
* Send to personal email, work email, and both, including failure cases.
* Upload with required metadata and failure cases.
* Date Received set on upload, edit only while blank, reject edits when populated, and audit both outcomes.
* Comments length validation once confirmed.
* Hide with mandatory reason, unhide, and denial behaviour.
* Audit log view and export, including access denial.
* Reporting filters, Restricted masking, no records found, Excel export, and export failure handling.

## 13. Open Items and Decisions

Still needs confirmation:

* Personal email for EPSS. Technical source is `GET_EMP_HOME_EMAIL` (from `ZIM_ADDRESS`, falling back to `ZIM_INCIDENT` home fields). Business requirements describe a preferred email saved in OLIMS and sourced from IT0105. Confirm which field matches the EPSS meaning of personal email. TBC.
* Work email for EPSS. Technical source is `PA0105` subtype MAIL (`USRID_LONG`). BRD describes work email as IT0105 subtype 0010. Business requirements mention IT0105 subtype MEMO. Confirm what is shown and whether `PA0105` subtype MEMO is a second address or ignored for EPSS. TBC.
* Comments max length and whether multiline is required. Default is 255 characters unless business confirms otherwise. TBC.
* EPSS Notes storage approach (reuse `UPDATE_NOTES` SAPscript append only notes, or store notes in a dedicated table). Also confirm whether notes are meant to be append only or editable. TBC.
* Exact list of merge fields and which fields are locked from overrides. Minimum set is officer name, incident number, claim status, and payment details. TBC.
* Uploaded filename rule. BRD requires naming conventions and enforces file type and size restrictions per NSWPF ICT policy. Business requirements say repository structure is not defined by the system. Confirm enforcement behaviour when filename does not match (block, warn, prompt rename, or accept) and confirm the actual file size limit. TBC.
* Which existing OLIMS report transaction is extended for OLA009 and OLA014, versus delivering a new report. TBC.
* Claim number and assignment sources for reporting (advisor and supervisor). Table sources TBC with OLIMS data owner.
