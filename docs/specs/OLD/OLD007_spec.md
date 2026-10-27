# Functional Specification: OLD007 — Task Suspension Reason Capture

---

## 1. Business Background

The EPSS claim management process in OLIMS requires robust tracking and auditability of all workflow tasks. When a task is suspended or put on hold, it is critical for compliance and operational transparency that the reason for suspension is captured and visible. This ensures that all actions taken on a claim are justified, traceable, and support quality assurance and reporting requirements.

---

## 2. Scope

This specification covers the requirement for OLIMS to enforce mandatory entry of a suspension reason whenever any EPSS-related task (manual or system-generated) is put on hold or suspended. The solution must apply to all visible tasks in OLIMS, regardless of how they are triggered, and the reason must be a mandatory free text field displayed in the user interface.

---

## 3. Detailed Functional Requirements

- When a user (EPSS Claims Officer or Supervisor) suspends/puts on hold any task in OLIMS, the system must require entry of a reason.
- The reason must be a mandatory free text field, visible in the OLIMS UI.
- All tasks (manual and system-generated) must be available for suspension and reason capture.
- The available task status options must include "On Hold/Suspended" and display the entered reason.
- The suspension reason must be stored and auditable for each task record.

---

## 4. Exception Handling

- If a user attempts to suspend a task without entering a reason, the system must display an error and prevent the action.
- Completed tasks cannot be suspended; the system must display a warning if attempted.

---

## 5. Compliance/Controls

- All suspension actions and reasons must be audit logged for compliance.
- Only authorized users (Claims Officers, Supervisors) can suspend tasks.
- Suspension reasons must be reportable for quality assurance and compliance reviews.

---

## 6. References and Linked Requirements

Cross-references: OLD006, OLD008, OLIMS task management, EPSS Task List, audit log/reporting requirements.

---

## 7. Acceptance Criteria

- [ ] System enforces mandatory entry of a suspension reason for all task suspensions.
- [ ] Suspension reason is a free text field and is visible in the OLIMS UI.
- [ ] All tasks (manual/system-generated) can be suspended with reason capture.
- [ ] Attempting to suspend a task without a reason is blocked with an error.
- [ ] Completed tasks cannot be suspended.
- [ ] Suspension actions and reasons are audit logged and reportable.
- [ ] Only authorized users can suspend tasks.