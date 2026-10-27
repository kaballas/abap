# Functional Specification: OLC010 — Update "Previous Reviews" Table in Request for Review Tab

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
- [ ] Reporting includes all new/changed fields and supports compliance checks.