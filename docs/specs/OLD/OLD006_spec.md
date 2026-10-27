# Functional Specification: OLD006 — Suspend/Put on Hold EPSS Task

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) claim management process in OLIMS requires robust task tracking and SLA monitoring. Occasionally, tasks may need to be paused or suspended (e.g., awaiting external information or business decisions). The ability to suspend/put on hold a task ensures accurate SLA measurement and operational flexibility for EPSS Claims Officers and Supervisors.

---

## 2. Scope

This requirement covers the ability for EPSS Claims Officers and Supervisors to suspend or put on hold any EPSS-related task in OLIMS, pausing the SLA/due date countdown. It includes UI changes, business rules for suspension, audit trail, and reporting impacts.

---

## 3. Detailed Functional Requirements

- Users with EPSS Claims Officer or Supervisor roles can suspend/put on hold any active EPSS task in OLIMS.
- When a task is suspended, the system must pause the SLA/due date countdown for that task.
- The user must enter a mandatory reason for suspension (free text).
- The task status must update to "On Hold/Suspended" and be visible in the task list.
- When resumed, the original due date remains, and a new due date is calculated based on the remaining SLA time.
- All suspension/resume actions must be audit logged (user, date/time, reason).
- Completed tasks cannot be suspended.
- Suspension must not impact payroll calculations.

---

## 4. Exception Handling

- If a user attempts to suspend a completed task, display an error: "Completed tasks cannot be suspended."
- If the suspension reason is not entered, display an error: "Suspension reason is required."
- If a task is resumed and the original due date is in the past, mark the task as overdue.

---

## 5. Compliance/Controls

- All suspension/resume actions are audit logged for compliance.
- Only authorized users (Claims Officer/Supervisor) can suspend/resume tasks.
- Suspension status and reasons are reportable for SLA and performance monitoring.

---

## 6. References and Linked Requirements

Cross-references: OLD007, OLD008, OLD010, RPH001–RPH007 (task reporting), OLIMS task management module.

---

## 7. Acceptance Criteria

- [ ] Only authorized users can suspend/put on hold tasks.
- [ ] Suspension pauses SLA/due date countdown.
- [ ] Mandatory reason is required for suspension.
- [ ] Audit log records all suspension/resume actions.
- [ ] Completed tasks cannot be suspended.
- [ ] Suspension status and reasons are visible in reports.
- [ ] No impact on payroll calculations.