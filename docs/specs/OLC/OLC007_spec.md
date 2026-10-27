# Functional Specification: OLC007 — Due Date Calculation for Review Type "Query"

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
- [ ] Reports show overdue queries based on the 2-day SLA.