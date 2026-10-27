# Functional Specification: OLD002 — Ad Hoc Task Management for EPSS Claims

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust claims management within OLIMS, including the ability for Claims Officers and Supervisors to create and manage ad hoc tasks. These tasks support non-standard, case-specific activities that fall outside the automated workflow, ensuring flexibility and comprehensive tracking of all claim-related actions.

---

## 2. Scope

This specification covers the creation, management, and reporting of ad hoc tasks within OLIMS for EPSS claims. It defines required data fields, user roles, and integration with the standard EPSS Task List. Automated, system-generated tasks are out of scope for this requirement.

---

## 3. Detailed Functional Requirements

- EPSS Claims Officers and Supervisors can create ad hoc tasks for any EPSS claim.
- Each ad hoc task must capture:
    - Task Name
    - Task Description
    - Due Date
    - Assigned To (Officer/Supervisor)
    - Status (Open, In Progress, Complete, On Hold)
    - Date Created
    - Date Completed
    - Comments/Notes
- Ad hoc tasks are linked to the relevant claim/incident.
- The standard EPSS Task List must be referenced for consistency in task naming and categorisation.
- Tasks can be edited or deleted by the creator or Supervisor until marked as Complete.
- All actions (create, edit, delete, status change) are audit logged.

---

## 4. Exception Handling

- If required fields are missing, the system prevents task creation and displays an error.
- Only users with appropriate roles can edit or delete tasks.
- Attempting to delete a completed task results in an error.
- System logs all failed attempts for audit purposes.

---

## 5. Compliance/Controls

- All ad hoc task actions are audit logged for compliance.
- Access to create/edit/delete tasks is restricted by user role.
- Reports on ad hoc tasks are available for reconciliation and performance monitoring.

---

## 6. References and Linked Requirements

- Cross-references: OLD001 (system-generated tasks), OLD003–OLD010 (reminders, reporting, suspension), EPSS Task List (working document).

---

## 7. Acceptance Criteria

- [ ] Claims Officers/Supervisors can create, edit, and delete ad hoc tasks.
- [ ] All required fields are enforced at creation.
- [ ] Tasks are linked to claims/incidents.
- [ ] Audit log records all actions.
- [ ] Only authorised users can edit/delete tasks.
- [ ] Reports include all ad hoc tasks with full details.
- [ ] Error handling is implemented for missing fields and unauthorised actions.