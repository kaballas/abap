Title: FinalOLA — Functional Specification
Source: combined.md
Created: 2026-01-28
Version: 0.1

## Business Background

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) is a critical function within the NSW Police Force, ensuring officers receive timely, accurate, and auditable support throughout the injury management process. OLIMS, the Online Injury Management System, underpins this by managing all EPSS-related documents, correspondence, and compliance reporting. The business needs are clear: every letter, form, and supporting document must be generated, tracked, categorised, and reported with precision. This means seamless integration with SAP HR and payroll data, robust audit trails for every action, and strict access controls to protect sensitive information. The system must empower claims officers to override data when necessary, send correspondence to the right recipients, and maintain a complete, searchable record of all activity. Document uploads, categorisation, and subcategorisation are essential for operational clarity, while features like hiding documents and mandatory comments ensure privacy and error management. Every touchpoint, from document creation to compliance reporting, is designed to support transparency, accountability, and service quality for both officers and the organisation.

## Goals

- Provide template upload and generation with merge fields sourced from SAP HR, payroll, and OLIMS data; prompt users to enter or override missing required data before generation; allow overrides only for authorised claims officers/supervisors while blocking locked or confidential fields.
- Keep an immutable (cannot be edited or deleted), exportable audit trail for every document and correspondence action (create, override, send, resend, receive, upload, categorise, subcategory selection, hide/unhide flag only, delete) and for edits to Date Received and Comments; log each resend separately; explicitly audit all uploads, subcategory selections, and EPSS Notes creation/modification/deletion; log all access attempts (including denied) to audit logs and reports; restrict and provide audit log export to EPSS Claims Officers and Supervisors for compliance/internal/external audits; limit audit log access to authorised roles; disable document upload/deletion if audit logging is unavailable.
- Require uploads to use mandatory On Duty/Off Duty categories and subcategories (mandatory for all new uploads), follow the defined naming convention [IncidentNo]_[Category]_[Date]_[UserInitials].ext, enforce file type and size limits, capture Date Received in DD/MM/YYYY format linked to the correct WC/incident (mandatory for new uploads, editable only if blank on existing records; use a business-approved default/flag such as “Unknown” when legacy data is missing; validation blocks invalid dates), and Comments with validated max length (e.g., 255, to be confirmed with business on length and placement) that throw an error and prevent save if exceeded and remain editable only by authorised users; confirm field placement and final length/placement with business; block saves when category/subcategory or other metadata is missing, prompt users to complete, and log/alert admin on missing/invalid subcategory (if required subcategory templates are missing, allow upload with classification only and flag for follow-up); record every upload as an EPSS Note only when upload succeeds (do not create a Note if upload fails), with errors shown if uploads fail and metadata validation enforced; keep Date Received and Comments visible in Document Overview and exports; avoid auto-recategorising existing documents when introducing new categories; ensure retention/deletion aligns with NSWPF records management policy.
- For correspondence, provide guidance/tooltips for selecting personal or work email, validate and block missing/invalid addresses, surface delivery failures, keep hidden documents flagged rather than deleted, and log resends as separate entries.
- Ensure EPSS Notes are visible to users with appropriate access in the Document Overview screen and/or a dedicated EPSS Notes section; carry required metadata (document title, upload date/time, uploader, category/subcategory, comments); allow users to view, search, and filter EPSS Notes by document type, date, uploader, and claim/incident number; enforce role-based access with unauthorised attempts logged/denied; audit EPSS Notes creation/modification/deletion; and provide EPSS Notes reporting for compliance and reconciliation.
- Provide reporting and Excel export with selection criteria Employee No., Incident No., Document Category, Document Sub Category, Direction (Inbound/Outbound), Date From, and Date To; include all OLA009 output columns (Employee No., Incident No., Claim No., Duty Type, Direction, Document Category/Subcategory, Document Title, Receiver Type, Receiver Name, Receive Distribution Method, Email ID, Date Processed, Time Sent, Date Received, Comments, EPSS Claim Advisor, EPSS Supervisor, Modified By, Modified On, Modified At); display “No records found” when applicable; show blank and flag records with missing mandatory fields; mark restricted records as “Restricted”; surface and log errors if export fails; restrict access to reports/logs/document data to authorised users; ensure Date Received and Comments appear in compliance and SLA reporting; support payroll controls, OLIMS access controls, and regular compliance/reconciliation activities.
- Explicit compliance confirmations: Date Received is editable only when blank on existing records (legacy unknown dates may use a business-approved “Unknown” flag); Comments length and placement are confirmed with business (recommend 255); Date Received and Comments are included in compliance and SLA reporting; all document actions and correspondence record changes are audit logged with immutable entries accessible/exportable only to authorised EPSS Claims Officers/Supervisors for compliance reviews; reporting supports filters by date range, employee, incident, category/subcategory, and direction and is accessible to authorised EPSS Claims Officers/Supervisors.

## Scope

- Covers end-to-end EPSS correspondence and document handling in OLIMS: template upload with merge fields, data override, generation, sending to personal/work email, receipt capture, and storage with auditability (OLA001, OLA002, OLA003, OLA004, OLA005).
- Applies to all EPSS On Duty and Off Duty documents—generated or uploaded—with mandatory category and subcategory selection (Period 1, Period 2, Period 3, Commencement, Recommencement, Request for Review, Dispute, Cessation, Finalisation, Recoveries), Date Received and Comments fields (Date Received mandatory for new uploads, editable if blank on existing records; legacy unknown dates use a business-approved flag), and linkage to the correct incident/claim (OLA005, OLA006, OLA007, OLA008, OLA013).
- Includes lifecycle controls: upload (with file type/size limits), hide/unhide (flag, not delete), delete, send, receive, override, and automatic creation of EPSS Notes for uploads with required metadata; all actions (including changes to correspondence records and Date Received/Comments) are audit logged and immutable; subcategory selection is audited; actions comply with NSWPF records management policy (OLA006, OLA009, OLA010, OLA011, OLA012, OLA013).
- Includes Document Overview and EPSS Notes reporting and Excel export with required filters/columns, inbound and outbound coverage, exception handling (missing/invalid data, no records, restricted items), and compliance/SLA/payroll support; access to email data, logs, reports, and notes is restricted to authorised users (OLA003, OLA004, OLA009, OLA012, OLA014).
- Out of scope: workflow beyond upload/categorisation/reporting, recategorising existing documents automatically, or features outside EPSS document generation, sending, upload, audit, visibility, and reporting (OLA006, OLA007, OLA010).

## Functional Requirements

### OLA001 — Template upload
- Upload EPSS letter/form templates into OLIMS with static text and merge fields populated from SAP HR, payroll, and OLIMS data; capture required field list from business [TBC] and confirm feature location/new vs existing screen [TBC].
- Reference and store all required EPSS On Duty and Off Duty letter/form templates.

### OLA002 — Template override
- Provide an override screen showing system-populated values alongside editable fields; protect locked fields; highlight overridden values; allow only authorised claims officers/supervisors.
- Audit each override (user, timestamp, field, old/new values); block overrides on locked fields and on missing required data.

### OLA003 — Correspondence sending
- Display personal and work email addresses sourced from defined OLIMS fields/subtypes (e.g., IT0105 subtype 0010 for work email, personal email field [TBC]); allow selection of one or both; validate addresses and block invalid/blank.
- Log each send with document reference, recipients, sender, date/time, delivery method; surface delivery failures (e.g., bounce) for follow-up.

### OLA004 — Correspondence logging
- Automatically log every outgoing letter/form with officer ID, incident/claim number, template/document type, correspondence type, date/time sent, delivery method, recipient email(s), sender; allow search/filter by officer, incident, date, and correspondence type.
- Store or link the actual document; record each resend as a separate entry; log failed sends with status/error; enforce access controls.

### OLA005 — Date Received field
- Add mandatory “Date Received” (DD/MM/YYYY) for new uploads; editable if blank on existing records; link to the correct WC/incident number.
- Display in Document Overview and reports; audit all create/edit actions; allow default/flag (e.g., “Unknown”) when date is unknown pending business approval [TBC].

### OLA006 — Document upload
- Allow upload of documents/correspondence (PDF, DOCX, XLSX, images, etc.) linked to claim/incident/employee; enforce file type/size per NSWPF policy.
- Require selection of category (OLA007) and subcategory (OLA008) at upload; apply naming convention [IncidentNo]_[Category]_[Date]_[UserInitials].ext; show immediately in Document Overview; audit uploader, time, linkage.
- On unsupported type/oversize or missing category/subcategory, block save with clear error; log system errors.

### OLA007 — Categories
- Provide categories “EPSS On Duty” and “EPSS Off Duty” in relevant OLIMS upload/overview screens; apply role-based visibility consistent with existing OLIMS access; do not auto-recategorise existing documents.

### OLA008 — Subcategories
- Provide mandatory subcategories: Period 1, Period 2, Period 3, Commencement, Recommencement, Request for Review, Dispute, Cessation, Finalisation, Recoveries.
- Show subcategory in Document Overview and reporting filters; block upload if missing/invalid; flag and alert admin on invalid configuration; if a required template per subcategory is not provided, allow classification only and flag for follow-up.

### OLA009 — Document Overview reporting
- Report on all inbound/outbound documents with selection by Employee No., Incident No., Document Category, Subcategory, Duty Type, Direction, Date From/To.
- Output columns include Employee No., Incident No., Claim No., Duty Type, Direction, Document Category/Subcategory, Document Title, Receiver Type/Name, Distribution Method, Email ID, Date Processed, Time Sent, Date Received, Comments, EPSS Claim Advisor, EPSS Supervisor, Modified By/On/At.
- Provide Excel export; flag missing data; show “No records found” when empty; mark access-controlled items as “Restricted.”
- Align reporting logic with existing OLIMS Document Overview data structures.

### OLA010 — Hide/unhide
- Allow authorised users to hide/unhide documents from Document Overview; require mandatory comment on hide; hidden items visible only to elevated roles; no physical deletion.
- Audit all hide/unhide attempts (user, time, comment, outcome); log failed or unauthorised attempts; enforce role checks.

### OLA011 — Audit log
- Record immutable (non-editable, non-deletable) audit entries for document uploads, sends, modifications, deletions, overrides, and hide/unhide actions; prevent action if audit write fails.
- Provide audit access and export to EPSS Claims Officers and Supervisors; enforce access controls; align deletion/retention with NSWPF records policy.

### OLA012 — EPSS Notes
- Automatically record every upload via EPSS Case Management as an EPSS Note (dedicated section/tag/field design to be confirmed [TBC]) with metadata (document title, upload datetime, uploader, category/subcategory, Date Received, Comments); EPSS Notes searchable/filterable and access-controlled.
- Do not create EPSS Note if upload fails; audit creation/modification/deletion (if permitted).

### OLA013 — Additional fields in Document Overview
- Add “Date Received” and “Comments” fields to Document Overview and import/upload flow; place per business direction [TBC]; Comments length recommended 255 chars, final length to confirm [TBC].
- Fields editable only for authorised users; audit edits; include in exports and reports; prompt if Date Received missing (if mandatory) or if Comments exceed limit.

### OLA014 — Compliance and SLA reporting
- Ensure all inbound/outbound EPSS documents are included in compliance/SLA reporting; support filters by date range, employee, incident, category, subcategory, and direction.
- Flag incomplete records; exclude failed uploads/sends from compliance counts with error notes; show “Restricted” where access limits data; provide Excel export.

## Non-Functional Requirements

- **Access control & privacy:** Enforce role-based access for templates, correspondence, uploads, EPSS Notes, reports, and audit logs; deny and log unauthorised access attempts; hidden documents remain flagged, not deleted (OLA003, OLA004, OLA010, OLA011, OLA012, OLA014).
- **Audit integrity:** Audit log must be immutable, exportable, and available to EPSS Claims Officers and Supervisors for compliance reviews; if audit logging is unavailable, block upload/deletion actions until restored (OLA011).
- **Data validation:** Enforce DD/MM/YYYY for Date Received, mandatory on new uploads, editable only if blank on existing records, with business-approved “Unknown” flag for legacy gaps; Comments length validated (recommend 255, final length/placement to confirm [TBC]); block saves on invalid or missing mandatory fields and log errors (OLA005, OLA013).
- **Records management:** Retention and deletion must comply with NSWPF records management policy for all documents, correspondence, audit logs, and EPSS Notes (OLA006, OLA011).
- **Reliability & error handling:** Upload failures must not create EPSS Notes; email send failures and export errors are surfaced to users and logged for support; reporting shows “No records found” when empty and flags records with missing mandatory data (OLA004, OLA009, OLA012, OLA014).
- **Performance & availability:** Reporting and audit exports should complete within business-acceptable timeframes [TBC]; system should remain available during standard business hours, with planned maintenance windows communicated [TBC].
- **Security:** Access to officer email addresses and correspondence logs restricted to authorised roles; restricted items shown as “Restricted” in outputs; adhere to OLIMS security/privacy controls (OLA003, OLA004, OLA014).
- **Usability:** Provide tooltips/guidance for selecting personal vs work email; validation messages must be clear and actionable; maintain consistent naming convention [IncidentNo]_[Category]_[Date]_[UserInitials].ext for uploads (OLA003, OLA006).
