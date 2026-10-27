# Functional Specification: OLD001 — OLIMS EPSS Diary / Reminders / Tasks

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires robust claim management and compliance monitoring. OLIMS (Online Injury Management System) must support EPSS claims officers and supervisors with automated and manual task management, reminders, and SLA tracking to ensure timely and accurate processing of claims and related activities.

---

## 2. Scope

This specification covers the implementation of standard and ad hoc task management, reminders, and to-do actions within OLIMS for EPSS claim management. It includes system-generated tasks, manual reminders, task suspension/hold, auditability, and reporting for both in-progress and completed tasks.

---

## 3. Detailed Functional Requirements

- **System-Generated Tasks:** OLIMS must trigger a standard set of tasks for EPSS claims based on key events (e.g., claim allocation, period transitions, document requests), each with defined SLAs and due dates.
- **Ad Hoc Tasks:** EPSS Claims Officers and Supervisors can manually create ad hoc tasks for claims, capturing task name, description, due date, assigned user, and status.
- **Manual Reminders/To-Do Actions:** Standard OLIMS functionality for creating and displaying reminders/to-do actions must be available for EPSS claims.
- **Task Categories:** A new category for EPSS tasks/reminders must be added to differentiate from existing OLIMS categories.
- **Task Suspension/Hold:** Users can suspend/put on hold any task, pausing SLA/due date calculations. A mandatory reason must be entered for suspension.
- **Resuming Tasks:** When a suspended task is resumed, the original due date remains, and a new due date is calculated based on remaining SLA time. If the original due date has passed, the task is marked overdue.
- **Task Template Management:** EPSS Claims team can create and edit task templates for ongoing flexibility.
- **Audit Trail:** All task creation, suspension, resumption, and completion actions must be audit logged, including user, timestamp, and reason (where applicable).
- **Reporting:** EPSS tasks must be reportable for both current work in progress and completed tasks, including export to Excel.

---

## 4. Exception Handling

- If a user attempts to suspend a completed task, the system must display an error and prevent the action.
- If a task is resumed and the original due date is in the past, the task is flagged as overdue.
- All mandatory fields (e.g., suspension reason) must be validated before saving.
- If technical errors occur during task creation or update, the system must display a clear error message and not commit partial changes.

---

## 5. Compliance/Controls

- All task actions (create, edit, suspend, resume, complete) are audit logged for compliance.
- Only authorised users (EPSS Claims Officers/Supervisors) can create, edit, or suspend tasks.
- Task and reminder data is included in operational and compliance reporting.
- Reports are available for SLA monitoring and reconciliation.

---

## 6. References and Linked Requirements

Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic, OLE001, RPH001–RPH007, RPF001–RPF005.

---

## 7. Acceptance Criteria

- [ ] System-generated EPSS tasks are triggered by key claim events with correct SLAs/due dates.
- [ ] EPSS Claims Officers/Supervisors can create, edit, suspend, and resume ad hoc tasks.
- [ ] Manual reminders/to-do actions are available for EPSS claims.
- [ ] New EPSS task/reminder category is present in OLIMS.
- [ ] Suspension/hold of tasks pauses SLA/due date and requires a reason.
- [ ] Resuming a suspended task retains original due date and calculates new due date.
- [ ] All task actions are audit logged.
- [ ] EPSS task reports are available and exportable to Excel.
- [ ] Exception handling is implemented as specified.