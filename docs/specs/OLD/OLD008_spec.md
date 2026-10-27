# Functional Specification: OLD008 — Task Suspension and Resumption Logic

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust task management within OLIMS to ensure compliance with service level agreements (SLAs) and accurate tracking of claim-related activities. Tasks may need to be suspended (put on hold) due to various business reasons, and upon resumption, the system must handle due dates and SLA calculations correctly to maintain auditability and performance reporting.

---

## 2. Scope

This specification covers the logic and user interface requirements for suspending (putting on hold) and resuming tasks in OLIMS for EPSS claim management. It includes business rules for due date handling, audit trail requirements, and user permissions for these actions.

---

## 3. Detailed Functional Requirements

- EPSS Claims Officers and Supervisors must be able to suspend/put on hold any open task in OLIMS.
- When a task is suspended, the user must enter a mandatory reason (free text).
- All tasks (manual and system-generated) must be available for suspension, except completed tasks.
- When a suspended task is resumed:
  - The original due date remains unchanged.
  - A new due date is created as a separate record, calculated by the remaining SLA time at the point of suspension.
  - If the original due date has already passed, the task is considered overdue.
- The system must prevent suspension of completed tasks.
- All suspension and resumption actions must be audit logged, including user, timestamp, and reason.
- Only users with appropriate roles (Claims Officer/Supervisor) can perform suspend/resume actions.

---

## 4. Exception Handling

- If a user attempts to suspend a completed task, display an error: "Completed tasks cannot be suspended."
- If required fields (e.g., suspension reason) are not entered, prevent the action and prompt the user.
- If a task is resumed and the original due date is in the past, flag the task as overdue.

---

## 5. Compliance/Controls

- All suspend/resume actions are audit logged for compliance.
- Only authorized users can perform these actions.
- Reports must be available to show all suspended/resumed tasks, including reasons and timestamps.

---

## 6. References and Linked Requirements

Cross-references: OLD006, OLD007, P1001–P1006, OLIMS task management, EPSS Task List, audit log requirements.

---

## 7. Acceptance Criteria

- [ ] Users can suspend any open (not completed) task and must enter a reason.
- [ ] System prevents suspension of completed tasks.
- [ ] Upon resumption, original due date remains; new due date is calculated and recorded.
- [ ] Overdue tasks are flagged if resumed after the original due date.
- [ ] All actions are audit logged with user, timestamp, and reason.
- [ ] Only authorized users can suspend/resume tasks.
- [ ] Reports show all suspended/resumed tasks with required details.