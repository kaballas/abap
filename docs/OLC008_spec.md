# Functional Specification: OLC008 — Due Date Calculation for Complaint Review Type

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
- [ ] Exception scenarios are handled as specified.