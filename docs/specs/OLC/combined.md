# Functional Specification: OLC001 — Request for Review Tab Enhancements

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust management of review requests related to claims. The "Request for Review" tab in OLIMS is being enhanced to support new business processes, improve categorisation, and enable better reporting and compliance for queries, complaints, and disputes.

---

## 2. Scope

This specification covers enhancements to the OLIMS "Request for Review" tab, including new parent categories, dynamic fields, due date logic, table changes, document upload, escalation workflow, and reporting. It applies to all new and existing review records in OLIMS.

---

## 3. Detailed Functional Requirements

- Add a new parent category drop-down list "Type of Review" with values: Query, Complaint, Dispute. (Mandatory on create/edit; applies to OLIMS screen 4103.)
- Add dynamic drop-downs mapped to review types:
  - "Requestor" for Complaint (Claimant, Internal, Solicitor, PANSW, Other [+ free text if Other])
  - "Dispute origin or Jurisdiction" for Dispute (Direct - Claimant, Direct - Solicitor, PANSW, Personal Injury Commission, Industrial Relations Commission, Other [+ free text if Other])
  - "Query Type" for Query (Policy/Factsheets/Coverage, Process, Payment/Calculation, Follow up existing matter, Other [+ free text if Other])
  - "Complaint Type" for Complaint (Payment/Calculation, Overpayment, Process, Customer Service, Review of Decision, Privacy Laws, Other [+ free text if Other])
  - "Dispute Type" for Dispute (Eligibility for payment, Discontinue a payment, Medical Dispute, Privacy Laws, Other [+ free text if Other])
- Due date logic:
  - Query: due date = 2 days from creation
  - Complaint: due date = 10 days from creation
  - Dispute: due date = 15 days from creation
  - Due date updates automatically if review type changes.
- "Previous Reviews" table changes:
  - Rename "Date From" to "Date Received"
  - Replace "Date To" with "Due Date"
  - Add "Final Response" (document upload)
  - Add "Escalation Flag" (creates task for EPSS Supervisor)
  - Add "Closed Date" (editable)
  - Add "Reviewer Name" (employee number and name)
  - Add "Reviewed Date" (editable)
- Allow multiple document uploads per record.
- Escalation workflow: setting "Escalation Flag" creates a task for the EPSS Supervisor.
- All new fields are reportable.

---

## 4. Exception Handling

- Mandatory fields must be completed before saving.
- If "Other" is selected in any drop-down, free text is required.
- System prevents duplicate document uploads for the same file name.
- Escalation tasks cannot be created if a supervisor is not assigned.

---

## 5. Compliance/Controls

- All changes and uploads are audit-logged.
- Access to edit or escalate is role-based (Claims Officer/Supervisor).
- Reports on review records, escalations, and due dates are available for compliance monitoring.

---

## 6. References and Linked Requirements

Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic, OLC002–OLC012.

---

## 7. Acceptance Criteria

- [ ] "Type of Review" drop-down is present and mandatory.
- [ ] Dynamic fields appear based on review type and are mandatory.
- [ ] Due date is set per review type and updates if type changes.
- [ ] "Previous Reviews" table reflects all specified field changes.
- [ ] Multiple documents can be uploaded per record.
- [ ] Escalation creates a supervisor task.
- [ ] All changes are audit-logged and reportable.
- [ ] Exception handling works as specified.
- [ ] Access controls are enforced.# Functional Specification: OLC002 — Add "Requestor" Field for Complaint Review Type

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust tracking and categorisation of review requests within OLIMS (Online Injury Management System). For effective scheme reporting and compliance, additional data fields are needed to capture the source of complaints in the Request for Review process.

---

## 2. Scope

This specification covers the addition of a new dynamic drop-down field titled “Requestor” to the Request for Review tab in OLIMS, mapped specifically to the review type ‘Complaint’. The change applies to both new and existing Complaint records as required by business rules.

---

## 3. Detailed Functional Requirements

- Add a dynamic drop-down field “Requestor” to the Request for Review tab, visible only when the review type is set to ‘Complaint’.
- The “Requestor” field must include the following selectable options:
  - Claimant
  - Internal
  - Solicitor
  - PANSW
  - Other
- If “Other” is selected, a free text field must appear for the user to enter a description.
- The “Requestor” field is mandatory when logging a Complaint.
- The field must be available for both new and existing Complaint records (when edited).
- All entries must be stored in the OLIMS database and be reportable.

---

## 4. Exception Handling

- If the review type is not ‘Complaint’, the “Requestor” field and its free text option must be hidden.
- If “Other” is selected but no description is entered, the system must display a validation error and prevent saving.
- If the “Requestor” field is left blank for a Complaint, the system must display a validation error and prevent saving.

---

## 5. Compliance/Controls

- All changes must be audit logged, including user, date/time, and old/new values.
- Access to edit the “Requestor” field is restricted to users with appropriate OLIMS permissions.
- The field must be included in reporting for compliance and scheme performance.

---

## 6. References and Linked Requirements

- Cross-references: OLC001 (Type of Review), OLC003 (Dispute origin or Jurisdiction), OLC005 (Complaint Type), RPM003 (Request for Review reporting).
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] “Requestor” field appears only for review type ‘Complaint’.
- [ ] All required options and free text for “Other” are available.
- [ ] “Requestor” is mandatory for all Complaint records.
- [ ] Validation errors are shown if required fields are missing.
- [ ] All changes are audit logged.
- [ ] Field is included in Request for Review reports.
- [ ] Access controls are enforced per OLIMS security model.# Functional Specification: OLC003 — Add "Dispute origin or Jurisdiction" Field to Request for Review Tab

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust tracking and categorisation of review requests, particularly for disputes. To improve reporting and compliance, a new dynamic drop-down field titled “Dispute origin or Jurisdiction” is needed in the OLIMS Request for Review tab, mapped to the review type "Dispute." This will enable more granular data capture and support scheme-wide reporting and audit requirements.

---

## 2. Scope

This specification covers the addition of a new dynamic drop-down field, “Dispute origin or Jurisdiction,” to the Request for Review tab in OLIMS. The field will be visible and mandatory only when the review type is set to "Dispute." The options will include predefined values and a free text field if "Other" is selected. The change applies to both new and edited records.

---

## 3. Detailed Functional Requirements

- Add a new dynamic drop-down field titled “Dispute origin or Jurisdiction” to the Request for Review tab in OLIMS.
- The field is only displayed and required when the review type is "Dispute."
- Drop-down options:
    - Direct - Claimant
    - Direct - Solicitor
    - PANSW
    - Personal Injury Commission
    - Industrial Relations Commission
    - Other (if selected, display a free text field for description)
- The field must be mandatory for all new and edited "Dispute" review records.
- The value must be stored in the OLIMS database and included in relevant reports.
- The field must be editable for existing records when the review type is "Dispute."
- Audit trail: All changes to this field must be logged for compliance.

---

## 4. Exception Handling

- If the review type is not "Dispute," the field is hidden and not required.
- If "Other" is selected but no free text is entered, display a validation error and prevent save.
- If a user attempts to save a "Dispute" review without selecting a value, display a mandatory field error.

---

## 5. Compliance/Controls

- All changes to the “Dispute origin or Jurisdiction” field are audit logged.
- Access to edit this field is restricted to authorised claims officers and supervisors.
- The field is included in reporting for compliance and reconciliation.

---

## 6. References and Linked Requirements

- Cross-references: OLC001, OLC002, OLC004–OLC006, RPM003 (Request for Review reporting), OLIMS audit requirements.
- Related business rules: See EPSS Phase 5 BRD, Request for Review tab enhancements.

---

## 7. Acceptance Criteria

- [ ] The “Dispute origin or Jurisdiction” field is visible and mandatory only for review type "Dispute."
- [ ] All specified drop-down options are available, with a free text field for "Other."
- [ ] Field is stored and reportable in OLIMS.
- [ ] Field is editable for new and existing "Dispute" records.
- [ ] Validation errors are shown if required fields are missing.
- [ ] All changes are audit logged.
- [ ] Access controls are enforced.
- [ ] Field appears in Request for Review reports.# Functional Specification: OLC004 — Add a new dynamic drop down field titled “Query Type” mapped to review type ‘Query’ in OLIMS

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust case management and reporting for requests for review in OLIMS. To improve data quality and enable more granular reporting, a new dynamic drop-down field “Query Type” is to be introduced, mapped specifically to the review type ‘Query’ in the Request for Review tab.

---

## 2. Scope

This requirement covers the addition of a “Query Type” drop-down field in OLIMS, visible and mandatory only when the review type is set to ‘Query’. The field will provide a standardised list of query categories, with a free text option for “Other”.

---

## 3. Detailed Functional Requirements

- Add a new dynamic drop-down field titled “Query Type” to the Request for Review tab in OLIMS.
- The “Query Type” field is only displayed and required when the review type is ‘Query’.
- Drop-down options:
    - Policy / Factsheets / Coverage
    - Process
    - Payment / Calculation
    - Follow up existing matter
    - Other (if selected, a free text field appears for description)
- The field must be mandatory for new and edited records where review type is ‘Query’.
- The selected value and any free text must be stored and reportable.

---

## 4. Exception Handling

- If “Other” is selected and the free text field is left blank, display an error and prevent save.
- If review type is changed from ‘Query’ to another type, the “Query Type” field and value are hidden and not required.
- If an existing record with review type ‘Query’ is edited, “Query Type” must be populated before saving.

---

## 5. Compliance/Controls

- All changes to the “Query Type” field must be audit logged (user, date/time, old/new value).
- Access to edit the field is restricted to authorised OLIMS users.
- The field is included in Request for Review reporting for compliance and reconciliation.

---

## 6. References and Linked Requirements

- Cross-references: OLC001, OLC002, OLC003, OLC005–OLC012
- Related reporting: RPM001–RPM005 (Request for Review report)
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/:x:/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx)

---

## 7. Acceptance Criteria

- [ ] “Query Type” drop-down appears only when review type is ‘Query’.
- [ ] All specified options are available; “Other” triggers a mandatory free text field.
- [ ] Field is mandatory for new and edited ‘Query’ records.
- [ ] Data is stored and available in reporting.
- [ ] Audit log captures all changes to the field.
- [ ] Exception handling works as specified.
- [ ] Field is not visible or required for other review types.# Functional Specification: OLC005 — Complaint Type Dynamic Drop-down in OLIMS Request for Review Tab

---

## 1. Business Background

The Online Injury Management System (OLIMS) supports the administration of EPSS claims, including the management of queries, complaints, and disputes through the "Request for Review" tab. To improve data quality, reporting, and workflow efficiency, a new dynamic drop-down field titled "Complaint Type" is required, mapped to the review type ‘Complaint’. This will standardise complaint categorisation and support downstream reporting and compliance.

---

## 2. Scope

This specification covers the addition of a dynamic drop-down field "Complaint Type" in the OLIMS Request for Review tab, mapped to the review type ‘Complaint’. The field will present a standardised list of complaint types and support a free text entry when "Other" is selected. The requirement applies to both new and existing Complaint records, as clarified by business.

---

## 3. Detailed Functional Requirements

- When the review type "Complaint" is selected in the Request for Review tab, a new dynamic drop-down field "Complaint Type" must appear.
- The drop-down must include the following options:
    - Payment / Calculation
    - Overpayment
    - Process
    - Customer Service
    - Review of Decision
    - Privacy Laws
    - Other
- If "Other" is selected, a free text field must be enabled for the user to enter a description.
- Selecting a "Complaint Type" is mandatory for all new and edited Complaint records.
- The field must be reportable and included in relevant OLIMS reports.
- The field must be available for both new and existing Complaint records when edited.

---

## 4. Exception Handling

- If a user attempts to save a Complaint record without selecting a "Complaint Type", the system must display an error and prevent saving.
- If "Other" is selected but the free text field is left blank, the system must display an error and prevent saving.
- The drop-down must only appear when the review type is "Complaint"; it must be hidden for other review types.

---

## 5. Compliance/Controls

- All changes to the "Complaint Type" field must be audit logged, including user, date/time, and previous value.
- Access to edit Complaint records must be restricted to authorised OLIMS users.
- The field must be included in compliance and scheme reporting for quality assurance.

---

## 6. References and Linked Requirements

- Cross-references: OLC002 (Requestor for Complaint), OLC001 (Review Type), OLC003 (Dispute origin), OLC004 (Query Type), OLC010 (Previous Reviews table changes)
- Related reporting requirements: RPM001–RPM005 (Request for Review report)
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] "Complaint Type" drop-down appears only when review type is "Complaint".
- [ ] Drop-down includes all specified options, with free text enabled for "Other".
- [ ] Field is mandatory for all new and edited Complaint records.
- [ ] Error messages are displayed if required selections/fields are missing.
- [ ] All changes are audit logged.
- [ ] Field is included in relevant OLIMS reports.
- [ ] Access controls and reporting requirements are met.# Functional Specification: OLC006 — Add a new dynamic drop down field titled “Dispute Type” mapped to review type ‘Dispute’

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust and auditable management of claim reviews, including disputes. To improve data capture and reporting, a new dynamic drop-down field for “Dispute Type” is needed in the OLIMS Request for Review tab, mapped specifically to the review type ‘Dispute’. This will standardise dispute categorisation and support scheme-wide reporting and quality assurance.

---

## 2. Scope

This specification covers the addition of a new “Dispute Type” dynamic drop-down field in the OLIMS Request for Review tab, mapped to the review type ‘Dispute’. The field will include predefined options and a free text entry if “Other” is selected. The change applies to all new and edited dispute records.

---

## 3. Detailed Functional Requirements

- Add a new dynamic drop-down field titled “Dispute Type” to the Request for Review tab in OLIMS.
- The field is only visible and mandatory when the review type is set to ‘Dispute’.
- Drop-down options:
    - Eligibility for payment
    - Discontinue a payment
    - Medical Dispute
    - Privacy Laws
    - Other (if selected, display a free text field for description)
- The selected value (and free text, if applicable) must be saved with the review record.
- The field must be reportable and included in relevant OLIMS reports.

---

## 4. Exception Handling

- If “Dispute” is not selected as the review type, the “Dispute Type” field is hidden and not required.
- If “Other” is selected, the free text field becomes mandatory.
- If required fields are not completed, the system must prevent saving and display a clear error message.

---

## 5. Compliance/Controls

- All changes are audit logged, including creation and modification of the “Dispute Type” field.
- Access to edit dispute records is restricted to authorised claims officers and supervisors.
- Reporting on dispute types is available for compliance and scheme performance monitoring.

---

## 6. References and Linked Requirements

- Cross-references: OLC003 (Dispute origin/Jurisdiction), OLC011 (Request for Review reporting), RPM003 (Request for Review report columns)
- See also: OLIMS Request for Review tab requirements, scheme reporting requirements.

---

## 7. Acceptance Criteria

- [ ] “Dispute Type” drop-down appears only when review type is ‘Dispute’.
- [ ] All specified options are present in the drop-down.
- [ ] Selecting “Other” requires a free text description.
- [ ] Field is mandatory for new and edited dispute records.
- [ ] Data is saved and reportable.
- [ ] Audit log captures all changes.
- [ ] Error messages display if required fields are incomplete.
- [ ] Only authorised users can create/edit dispute records.# Functional Specification: OLC007 — Due Date Calculation for Review Type "Query"

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust case management in OLIMS, including the ability to track and manage requests for review. Timely resolution of queries is critical for compliance and service level agreements. Automating due date calculation for review records improves efficiency and ensures consistent adherence to business rules.

---

## 2. Scope

This specification covers the automatic calculation and assignment of a due date for records in the OLIMS "Request for Review" tab when the review type is set to "Query". The due date must be set to 2 days from the record creation date. The logic must handle creation and updates, and interact correctly if the review type changes.

---

## 3. Detailed Functional Requirements

- When a new review record is created in OLIMS with review type "Query", the system must automatically set the due date to 2 calendar days from the creation date.
- If the review type is changed to "Query" on an existing record, the due date must be recalculated as 2 days from the date the review type is set.
- If the review type is changed from "Query" to another type (e.g., "Complaint" or "Dispute"), the due date must be updated according to the relevant business rule for that type (see OLC008, OLC009).
- The due date must be displayed in the "Request for Review" tab and in all relevant reports.
- All due date calculations must use calendar days, not business days.
- The system must audit changes to the due date and review type for traceability.

---

## 4. Exception Handling

- If the creation date is missing or invalid, the system must prevent record creation and display an error message.
- If the review type is changed to "Query" but the record lacks a valid creation date, the system must block the update and prompt the user to correct the data.
- If the due date falls on a non-working day, no adjustment is required (calendar days only).
- Any system errors during due date calculation must be logged and reported to the system administrator.

---

## 5. Compliance/Controls

- All due date assignments and changes must be audit logged for compliance.
- Access to modify review type and due date is restricted to authorized OLIMS users.
- Reports must be available to monitor overdue queries and compliance with the 2-day SLA.

---

## 6. References and Linked Requirements

- OLC002–OLC006: Related dynamic fields for review types.
- OLC008–OLC009: Due date logic for "Complaint" and "Dispute".
- RPM001–RPM005: Request for Review reporting.
- [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] When a "Query" review is created, due date is set to 2 days from creation date.
- [ ] Changing review type to "Query" recalculates due date as 2 days from change date.
- [ ] Changing review type away from "Query" updates due date per relevant rule.
- [ ] Due date is visible in the Request for Review tab and reports.
- [ ] All due date and review type changes are audit logged.
- [ ] System blocks creation/update if creation date is missing or invalid.
- [ ] Only authorized users can modify review type and due date.
- [ ] Reports show overdue queries based on the 2-day SLA.# Functional Specification: OLC008 — Due Date Calculation for Complaint Review Type

---

## 1. Business Background

The Online Injury Management System (OLIMS) supports the management of EPSS claims, including the Request for Review process. Timely handling of complaints is critical for compliance, service quality, and scheme reporting. Automating due date calculation for complaints ensures consistency and enables effective monitoring of service level agreements (SLAs).

---

## 2. Scope

This specification covers the automatic calculation and assignment of a due date for records created with the review type "Complaint" in the Request for Review tab of OLIMS. The due date must be set to 10 days from the record creation date.

---

## 3. Detailed Functional Requirements

- When a new record is created in the Request for Review tab with review type "Complaint", the system must automatically set the due date to 10 calendar days after the record's creation date.
- The due date must be displayed in the record details and in all relevant reports.
- If the review type is changed to "Complaint" after creation, the due date must be recalculated as 10 days from the date the review type is set to "Complaint".
- The due date must be editable only by users with appropriate permissions (as per existing OLIMS access controls).
- All due date changes must be audit logged.

---

## 4. Exception Handling

- If the system cannot determine the creation date, display an error and prevent record creation.
- If the review type is changed from "Complaint" to another type, the due date must be recalculated according to the rules for the new type (see OLC007, OLC009).
- If a user without permission attempts to edit the due date, display an access denied message.

---

## 5. Compliance/Controls

- All due date assignments and changes must be audit logged for compliance.
- The due date field must be included in reporting for SLA monitoring.
- Access to edit due dates must be restricted to authorized users.

---

## 6. References and Linked Requirements

- OLC007 (Query due date logic)
- OLC009 (Dispute due date logic)
- OLIMS Request for Review tab (screen 4103)
- Scheme reporting requirements

---

## 7. Acceptance Criteria

- [ ] When a Complaint review is created, the due date is set to 10 days from creation.
- [ ] Due date is recalculated if review type is changed to Complaint.
- [ ] Due date is visible in the Request for Review tab and reports.
- [ ] Unauthorized users cannot edit the due date.
- [ ] All due date changes are audit logged.
- [ ] Exception scenarios are handled as specified.# Functional Specification: OLC009 — Due Date Logic for "Dispute" Review Type

---

## 1. Business Background

The Online Injury Management System (OLIMS) supports the management of EPSS claims, including a "Request for Review" process. For effective workflow and compliance, each review type (Query, Complaint, Dispute) requires a system-driven due date to ensure timely resolution and reporting.

---

## 2. Scope

This specification covers the automated assignment of a due date for records with the review type "Dispute" in the Request for Review tab of OLIMS. The due date must be set to 15 days from the record creation date.

---

## 3. Detailed Functional Requirements

- When a new Request for Review record is created with the review type "Dispute," the system must automatically set the due date to 15 calendar days after the record creation date.
- The due date must be displayed and stored in the Request for Review record.
- If the review type is changed to "Dispute" after creation, the due date must be recalculated as 15 days from the original creation date.
- The due date must be editable only by users with appropriate permissions (as per existing OLIMS access controls).
- The due date logic must apply to both new and existing records when the review type is set or changed to "Dispute."

---

## 4. Exception Handling

- If the record creation date is missing or invalid, the system must prevent saving the record and display an error message.
- If the review type is changed from "Dispute" to another type, the due date must be recalculated according to the new type's rules.
- If the due date falls on a non-business day, no adjustment is required (calendar days only).

---

## 5. Compliance/Controls

- All due date changes must be audit logged, including user, timestamp, and reason for change (if applicable).
- Access to edit due dates is restricted to authorized users.
- Reporting must include due date and review type for compliance monitoring.

---

## 6. References and Linked Requirements

- Cross-references: OLC007 (Query due date), OLC008 (Complaint due date), RPM003 (Request for Review reporting), OLIMS audit log requirements.

---

## 7. Acceptance Criteria

- [ ] System sets due date to 15 days from creation for new "Dispute" reviews.
- [ ] Due date recalculates if review type is changed to "Dispute."
- [ ] Due date is visible and stored in the record.
- [ ] Only authorized users can edit due dates.
- [ ] All due date changes are audit logged.
- [ ] Reporting includes due date and review type fields.
- [ ] Exception handling prevents saving records with missing/invalid creation dates.# Functional Specification: OLC010 — Update "Previous Reviews" Table in Request for Review Tab

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust case management and reporting for all review requests (queries, complaints, disputes) submitted by officers. The "Request for Review" tab in OLIMS is used to log, track, and manage these reviews. The "Previous Reviews" section within this tab must be updated to improve data capture, workflow, and reporting, supporting compliance, audit, and operational efficiency.

---

## 2. Scope

This specification covers changes to the "Previous Reviews" table in the Request for Review tab in OLIMS. It includes renaming fields, adding new fields, updating workflow for escalations, and supporting document upload and audit requirements. It does not cover changes to other OLIMS modules or unrelated review processes.

---

## 3. Detailed Functional Requirements

- **Rename "Date From" to "Date Received"**: The column currently labeled "Date From" must be relabeled as "Date Received" to accurately reflect the date the review was received.
- **Replace "Date To" with "Due Date"**: The "Date To" column must be replaced by a new "Due Date" field, which is set based on review type (see OLC007–OLC009).
- **Add "Final Response" Field**: Introduce a new field allowing users to upload a document as the final response to the review.
- **Escalation Flag**: Add an "Escalation Flag" column. When set, this must automatically create a Task assigned to the EPSS Supervisor.
- **Closed Date**: Add a "Closed Date" field, editable by the user, to record when the review was closed.
- **Reviewer Name**: Add a field to record the reviewer’s employee number and name.
- **Reviewed Date**: Add a date field for the reviewer to enter the date the review was completed.
- **Workflow**: When the Escalation Flag is set, a Task is created and assigned to the EPSS Supervisor. Uploaded documents must be stored and linked to the review record.
- **Audit**: All changes (including uploads, field edits, and escalations) must be audit-logged.

---

## 4. Exception Handling

- If a document upload fails, display an error and prevent saving the record until resolved.
- If the Escalation Flag fails to create a Task, display an error and log the failure for support review.
- Mandatory fields (Date Received, Due Date, Reviewer Name) must be validated before saving; missing data triggers a user error message.

---

## 5. Compliance/Controls

- All changes and uploads are audit-logged for compliance.
- Access to upload, edit, and escalate is restricted to authorized EPSS Claims Officers and Supervisors.
- Reporting and reconciliation of review records, escalations, and document uploads must be supported via OLIMS reporting.

---

## 6. References and Linked Requirements

- Cross-references: OLC001–OLC012 (Request for Review tab), OLIMS audit/reporting requirements, RPM001–RPM005 (Request for Review reporting), P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] "Date From" is relabeled as "Date Received" in the Previous Reviews table.
- [ ] "Date To" is replaced by a "Due Date" field, set per review type.
- [ ] "Final Response" field allows document upload and links to the review.
- [ ] "Escalation Flag" creates a Task for the EPSS Supervisor.
- [ ] "Closed Date," "Reviewer Name," and "Reviewed Date" fields are present and editable as specified.
- [ ] All changes are audit-logged.
- [ ] Exception handling is implemented for uploads, escalations, and mandatory fields.
- [ ] Access controls are enforced.
- [ ] Reporting includes all new/changed fields and supports compliance checks.# Functional Specification: OLC011 — Request for Review Tab Reporting

---

## 1. Business Background

The Request for Review (RfR) process in OLIMS enables EPSS Claims Officers and Supervisors to manage, track, and report on queries, complaints, and disputes raised by claimants or stakeholders. Accurate and timely reporting on RfR records is essential for scheme performance, compliance, and service quality monitoring.

---

## 2. Scope

This specification covers the reporting requirements for the Request for Review tab in OLIMS, including the creation of a new report to list in-progress and completed reviews, selection criteria, report columns, export functionality, and auditability. It applies to all EPSS claims managed in OLIMS.

---

## 3. Detailed Functional Requirements

- The system must provide a report listing all Request for Review records (queries, complaints, disputes) entered in OLIMS.
- Selection criteria must include: Employee Number, Incident Number, Received Date, Closed Date, with the ability to run the report with no criteria (all records).
- Report columns must include: Employee Number, Incident Number, Claim Number, Type of Review, Query/Complaint/Dispute Type, Other Type (Text), Requestor, Other Requestor (Text), Date Received, Due Date, Closed Date, Escalation Flag, EPSS Claims Advisor, EPSS Supervisor.
- Each review record must be displayed as a separate line item.
- The report must be exportable to Excel.
- All required data fields must be available in OLIMS/EPSS/Payroll for extraction.
- The report must support both in-progress and completed reviews.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a warning and exclude incomplete records.
- If export to Excel fails, the system must display an error message and log the incident for support.
- If selection criteria return no results, the report must display a "No records found" message.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised EPSS Claims Officers and Supervisors.
- All report exports and access must be logged for audit purposes.
- The report must support compliance with scheme reporting and internal SLA monitoring.

---

## 6. References and Linked Requirements

- Cross-references: OLC001–OLC012 (Request for Review tab enhancements), RPM001–RPM005 (Request for Review reporting), OLIMS reporting framework, SAP/OLIMS data extraction standards.

---

## 7. Acceptance Criteria

- [ ] Report lists all RfR records with required columns and selection criteria.
- [ ] Report supports filtering by Employee Number, Incident Number, Received Date, Closed Date, or no filter.
- [ ] Each review record appears as a separate line.
- [ ] Report is exportable to Excel.
- [ ] Access and export actions are logged.
- [ ] Missing or incomplete data is handled with appropriate warnings.
- [ ] Only authorised users can access and export the report.# Functional Specification: OLC012 — Ability to Upload More Than One Document Per Record

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