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
- [ ] Access controls are enforced.