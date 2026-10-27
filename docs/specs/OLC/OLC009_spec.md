# Functional Specification: OLC009 — Due Date Logic for "Dispute" Review Type

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
- [ ] Exception handling prevents saving records with missing/invalid creation dates.