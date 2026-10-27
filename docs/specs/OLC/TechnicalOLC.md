Title: Technical Specification — OLC Request for Review Enhancements (ABAP ECC)
Created: 2026 02 08
Version: 0.1
Last updated: 2026 02 08

## 1. Overview

This build delivers Request for Review enhancements in OLIMS for OLC001 to OLC012.

It adds Type of Review and related dynamic fields, sets due dates by review type, updates the Previous Reviews table, supports multiple document uploads per review, creates an escalation task for supervisors, and provides a report for tracking and compliance.

Design rules:

* Reuse existing OLIMS screen, save, document, and reporting patterns unless there is no other option
* Keep new review fields together in the same persistence layer as the existing Request for Review record where practical
* Due date logic must be deterministic and recalculated only when the review type changes
* Audit logging must cover edits, uploads, deletions, and escalation actions

## 2. Scope

In scope:

* Request for Review tab changes, including dynamic fields per review type
* Due date calculation and recalculation rules for Query, Complaint, and Dispute
* Previous Reviews table changes, including additional fields and final response upload
* Multiple document uploads per review record
* Escalation flag behaviour to create a supervisor task
* A Request for Review report with Excel export

Out of scope:

* Changes to unrelated OLIMS modules
* Payroll calculation changes
* New document storage frameworks outside existing OLIMS patterns

## 3. References

Functional specifications:

* `OLC001_spec.md`
* `OLC002_spec.md`
* `OLC003_spec.md`
* `OLC004_spec.md`
* `OLC005_spec.md`
* `OLC006_spec.md`
* `OLC007_spec.md`
* `OLC008_spec.md`
* `OLC009_spec.md`
* `OLC010_spec.md`
* `OLC011_spec.md`
* `OLC012_spec.md`
* `combined.md`

BRD context and related assets:

* `../../brd.md` (source for detailed business rules, if present)

## 4. System Context and Constraints

This is an ABAP ECC build using classic dynpro and ALV where OLIMS screens and reports already use them.

Constraints and expectations:

* The Request for Review tab is an existing OLIMS screen area. Screen and program identifiers are TBC.
* Value lists should come from existing configuration where it exists. New lists should follow existing OLIMS patterns.
* Document upload should reuse existing OLIMS document storage and linking, including any TRIM integration if already used for other artefacts. Exact storage mechanism is TBC.

## 5. Roles, Access, and Authorisations

Roles are existing OLIMS roles.

This spec assumes Request for Review access follows existing OLIMS claim access rules for the relevant users, with no new role model introduced here. TBC.

Minimum access rules:

* Only authorised claims users can create and edit review records
* Only authorised users can set escalation flag and delete documents
* Report access and exports are restricted to authorised users and are logged

## 6. Data Model

### 6.1 Review type and dynamic fields

Persist the following fields on the Request for Review record:

* Type of Review: Query, Complaint, Dispute
* Requestor, plus Other Requestor text when Other is selected
* Dispute origin or Jurisdiction, plus Other text when Other is selected
* Query Type, plus Other text when Other is selected
* Complaint Type, plus Other text when Other is selected
* Dispute Type, plus Other text when Other is selected

Field storage approach:

* Extend the existing Request for Review persistence where safe
* If the base storage is not safe to extend, store in an extension table keyed by the review record primary keys. Table name TBC.
* Store coded values for drop down fields where possible, with value help driven by configuration

### 6.2 Dates and workflow fields

Persist the following dates and workflow fields on the review record:

* Date Received (rename of existing Date From)
* Due Date (replacement for existing Date To)
* Closed Date
* Reviewed Date
* Reviewer identifier and display name. Exact storage fields TBC.
* Escalation Flag

Notes:

* Due Date is set by system logic based on Type of Review and recalculated when Type of Review changes.
* Closed Date and Reviewed Date are user editable fields per OLC010.

### 6.3 Document linkage

A review record must support multiple linked documents, including a final response document.

Document linkage requirements:

* Each uploaded document is linked to the review record
* Store document metadata at minimum: filename, uploaded by, uploaded timestamp, and document type or purpose
* Support view and download for all linked documents
* Support delete only if permitted, with audit trail

Storage approach:

* Reuse the existing OLIMS document framework and link table patterns. Exact tables and APIs TBC.

## 7. User Interface Changes

### 7.1 Request for Review tab core fields

Add a Type of Review field with values Query, Complaint, Dispute. It is mandatory on create and edit.

Dynamic fields:

* When Type of Review is Query, show Query Type and enforce mandatory rules
* When Type of Review is Complaint, show Requestor and Complaint Type and enforce mandatory rules
* When Type of Review is Dispute, show Dispute origin or Jurisdiction and Dispute Type and enforce mandatory rules

Other text handling:

* When a drop down value of Other is selected, show a free text field and make it mandatory
* Hide Other text fields when Other is not selected and clear any stale values on save. Exact clearing rules TBC.

### 7.2 Due date display

Show Due Date on the Request for Review tab and in the Previous Reviews table.

The user must not manually enter Due Date unless OLIMS already supports an override pattern for similar system calculated dates. Override rules are TBC.

### 7.3 Previous Reviews table updates

Update the Previous Reviews table as follows:

* Relabel Date From to Date Received
* Replace Date To with Due Date
* Add Final Response document upload entry point
* Add Escalation Flag
* Add Closed Date
* Add Reviewer Name field
* Add Reviewed Date
* Show all linked documents for the review record, not just one

### 7.4 Validation messages

Validation errors must be field specific and block save.

Minimum validations:

* Type of Review is mandatory
* Dynamic fields are mandatory when visible
* Other text is mandatory when Other is selected
* Date Received is mandatory
* Reviewer field is mandatory if required by OLC010. Confirm if this is required on create or only when closing a review. TBC.

## 8. Processing Design

### 8.1 Due date calculation rules

Use calendar days.

Rules:

* Query due date equals Date Received plus 2 calendar days
* Complaint due date equals Date Received plus 10 calendar days
* Dispute due date equals Date Received plus 15 calendar days

Recalculation:

* On create, set Due Date based on Type of Review
* On update, if Type of Review changes, recalculate Due Date using the change date or Date Received based on functional intent. OLC007 implies change date, while OLC001 implies creation date. Confirm the intended anchor date and apply consistently. TBC.

### 8.2 Save and audit behaviour

On save:

* Validate mandatory fields and Other text fields
* Set or recalculate Due Date as per section 8.1
* Write audit log entries for create, update, escalation, and document actions

### 8.3 Escalation flag task creation

When Escalation Flag is set:

* Create a task assigned to the EPSS Supervisor
* Ensure the task is created once per review record, not on every save
* If the supervisor cannot be resolved, block save with a clear message and log the failure. Supervisor resolution rules TBC.

Task linkage and status:

* Link the task to the review record keys for navigation and reporting
* Confirm whether unsetting Escalation Flag closes the task or leaves it open. TBC.

## 9. Reporting Design

Provide a report listing Request for Review records with the selection criteria and columns defined in OLC011.

Selection criteria:

* Employee Number
* Incident Number
* Received Date
* Closed Date
* Allow no criteria to return all records

Columns:

* Employee Number
* Incident Number
* Claim Number
* Type of Review
* Query, Complaint, or Dispute Type
* Other Type text
* Requestor
* Other Requestor text
* Date Received
* Due Date
* Closed Date
* Escalation Flag
* EPSS Claims Advisor
* EPSS Supervisor

Export:

* Support export to Excel using the existing OLIMS report export approach

Audit:

* Log report access and export actions

## 10. Detailed OLC Mapping

### 10.1 OLC001 Request for Review tab enhancements

Build:

* Add Type of Review and overall dynamic field framework
* Implement due date logic across review types
* Implement previous reviews table and escalation workflow

### 10.2 OLC002 Requestor field

Build:

* Implement Requestor drop down for Complaint
* Implement Other Requestor text rules

### 10.3 OLC003 Dispute origin or Jurisdiction field

Build:

* Implement Dispute origin or Jurisdiction drop down for Dispute
* Implement Other text rules

### 10.4 OLC004 Query Type field

Build:

* Implement Query Type drop down for Query
* Implement Other text rules

### 10.5 OLC005 Complaint Type field

Build:

* Implement Complaint Type drop down for Complaint
* Implement Other text rules

### 10.6 OLC006 Dispute Type field

Build:

* Implement Dispute Type drop down for Dispute
* Implement Other text rules

### 10.7 OLC007 to OLC009 due date calculations

Build:

* Implement due date rules for Query, Complaint, and Dispute
* Implement recalculation on Type of Review change
* Ensure audit entries capture due date changes

### 10.8 OLC010 Previous Reviews table changes

Build:

* Rename and replace date columns
* Add final response upload
* Add escalation flag and task creation
* Add close and review tracking fields

### 10.9 OLC011 reporting

Build:

* Deliver the Request for Review report and Excel export
* Include all new fields

### 10.10 OLC012 multiple documents per record

Build:

* Allow multiple document uploads and display them in the UI
* Implement delete rules and audit trail

## 11. Error Handling and Logging

User facing rules:

* Validation errors must be specific and field level
* Upload errors must be shown immediately and must not leave partial links
* Task creation errors must block escalation and provide a clear message

Support rules:

* Log technical errors for failed saves, uploads, report exports, and task creation using the existing OLIMS logging approach. Log object and correlation keys TBC.

## 12. Testing and Acceptance

Minimum acceptance tests:

* Type of Review is present and mandatory for create and edit
* Dynamic fields show only for the relevant review type and are mandatory when shown
* Other text fields are required only when Other is selected
* Due Date is set correctly on create for each review type
* Due Date recalculates correctly when Type of Review changes
* Previous Reviews table shows Date Received and Due Date, plus the new workflow fields
* Multiple documents can be uploaded, viewed, downloaded, and deleted only when permitted
* Escalation Flag creates a supervisor task once and links it to the review record
* Report returns the correct columns, supports filtering, and exports to Excel
* Audit log captures create, update, escalation, and document actions

## 13. Open Items and Decisions

The following points need confirmation:

* Screen and program identifiers for the Request for Review tab changes
* Persistence table names for the review record and document linkages
* Anchor date for due date recalculation when Type of Review changes
* Whether Due Date is ever user editable and how overrides are stored and audited
* Reviewer field rules, including when it becomes mandatory and how name is derived
* Supervisor resolution rules for escalation tasks and task lifecycle rules
* Document naming convention rules for multiple uploads and duplicate handling
* Delete permissions for documents and any retention rules
