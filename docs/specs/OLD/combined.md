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
- [ ] Exception handling is implemented as specified.# Functional Specification: OLD002 — Ad Hoc Task Management for EPSS Claims

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
- [ ] Error handling is implemented for missing fields and unauthorised actions.# Functional Specification: OLD003 — Manual Reminders/To Do Actions for EPSS Claim Management

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust claim management processes within OLIMS (Online Injury Management System). Manual reminders and to-do actions are essential for claims officers to track, follow up, and manage EPSS claims efficiently. The standard OLIMS functionality for manual reminders is to be leveraged for EPSS claim management, ensuring consistency and minimising the need for new development.

---

## 2. Scope

This requirement covers the availability and use of the existing OLIMS manual reminder/to-do action functionality for EPSS claim management. It includes the ability for EPSS Claims Officers and Supervisors to create, view, and manage manual reminders within EPSS incidents, using the standard OLIMS interface.

---

## 3. Detailed Functional Requirements

- The standard OLIMS functionality for creating manual reminders/to-do actions within an incident must be available for EPSS claim management.
- EPSS Claims Officers and Supervisors can create manual reminders for any EPSS claim/incident.
- Reminders must be linked to the relevant EPSS incident and visible in the incident’s reminders/to-do actions section.
- No changes or customisations to the existing OLIMS reminder functionality are required for EPSS.
- The OLIMS navigation path or screen for creating manual reminders must be documented for EPSS users.

---

## 4. Exception Handling

- If the OLIMS reminders/to-do actions functionality is unavailable or encounters an error, users must be notified with a standard error message.
- Any system outages or failures affecting reminders must be logged and escalated per standard OLIMS support procedures.

---

## 5. Compliance/Controls

- All reminders/to-do actions created for EPSS claims are subject to standard OLIMS audit and access controls.
- Only authorised EPSS Claims Officers and Supervisors can create or view reminders for EPSS incidents.
- Reminder creation and completion actions are logged for audit and reporting purposes.

---

## 6. References and Linked Requirements

- Cross-references: OLD001, OLD002, OLD004, OLD005 (EPSS Task/Reminder requirements)
- OLIMS user guide/manual for reminders functionality

---

## 7. Acceptance Criteria

- [ ] EPSS Claims Officers and Supervisors can create manual reminders within EPSS incidents using standard OLIMS functionality.
- [ ] Reminders are visible and manageable within the EPSS incident.
- [ ] No new development or customisation is required; existing OLIMS reminder functionality is used as-is.
- [ ] OLIMS navigation path for reminders is documented for EPSS users.
- [ ] Reminder creation and completion are logged for audit purposes.# Functional Specification: OLD004 — Display Reminders/To Do Actions for EPSS Claim Management

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) claim management process in OLIMS (Online Injury Management System) requires claims officers and supervisors to manage and monitor reminders and to-do actions associated with each incident. The ability to display these reminders and actions is essential for tracking claim progress, ensuring compliance with SLAs, and supporting efficient workflow management.

---

## 2. Scope

This specification covers the requirement to display reminders and to-do actions within the OLIMS incident for EPSS claim management. It leverages existing OLIMS functionality to ensure EPSS claims officers and supervisors can view all active and historical reminders/to-do actions related to a claim.

---

## 3. Detailed Functional Requirements

- The system must provide the ability to display all reminders and to-do actions associated with an EPSS claim incident.
- The display must include both active and historical (inactive/completed) reminders/actions.
- The display functionality will use the existing OLIMS path or screen for reminders/to-do actions, as currently implemented for other claim types.
- The display must show key fields: task name, due date, status, assigned to, created date, completed date, and comments.
- No changes to the underlying reminder/to-do action data model are required for EPSS; the requirement is to ensure visibility and access for EPSS claims.

---

## 4. Exception Handling

- If no reminders or to-do actions exist for an incident, the display screen will show a message: "No reminders or to-do actions found for this incident."
- If the user does not have permission to view reminders for a claim, an appropriate access denied message will be displayed.

---

## 5. Compliance/Controls

- All reminder/to-do action views are subject to standard OLIMS access controls and audit logging.
- Displayed data must be read-only; editing or deletion is not permitted from the display screen.
- All actions are logged for audit and compliance purposes.

---

## 6. References and Linked Requirements

- Cross-references: OLD001 (system-generated tasks), OLD002 (ad hoc tasks), OLD003 (manual reminders), OLD005 (new EPSS reminder category)
- OLIMS standard reminder/to-do action functionality

---

## 7. Acceptance Criteria

- [ ] EPSS claims officers and supervisors can view all reminders/to-do actions for an incident in OLIMS.
- [ ] Both active and historical reminders/actions are visible.
- [ ] Display includes required fields (task name, due date, status, assigned to, created date, completed date, comments).
- [ ] Access controls and audit logging are enforced.
- [ ] No editing or deletion is possible from the display screen.
- [ ] Exception messages are shown for no data or access denied scenarios.# Functional Specification: OLD005 — New Reminder/To Do Action Category for EPSS

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires clear differentiation of reminders and to-do actions within OLIMS (Online Injury Management System) to support claim management, compliance, and reporting. Existing OLIMS categories do not distinguish EPSS-specific tasks, which impacts workflow clarity and reporting accuracy for the EPSS claims team.

---

## 2. Scope

This specification covers the creation and implementation of a new Reminder/To Do Action category in OLIMS specifically for EPSS-related tasks. It includes UI changes, category naming, and reporting requirements, but excludes changes to reminder logic or workflow outside of category management.

---

## 3. Detailed Functional Requirements

- A new Reminder/To Do Action category must be created in OLIMS, named **"EPSS"** (final name to be confirmed by business).
- The new category must be selectable when creating or editing reminders/to-do actions within any EPSS claim or incident.
- The category must appear in all relevant OLIMS screens, dropdowns, and reports where Reminder/To Do Action categories are displayed.
- The new category must be available for both system-generated and manually created reminders/tasks.
- The category must be filterable in OLIMS reports and task lists.
- A screenshot or navigation path to the Reminder/To Do Action functionality must be included in user documentation.

---

## 4. Exception Handling

- If the new category is not selected when creating an EPSS-related reminder, the system must prompt the user to select the correct category.
- If the category is missing from dropdowns or reports, the issue must be logged and escalated to system support.

---

## 5. Compliance/Controls

- All reminders/to-do actions created under the EPSS category must be audit logged for compliance.
- Access to create/edit EPSS reminders must be restricted to EPSS Claims Officers and Supervisors.
- Reporting must support filtering and auditing of EPSS-specific reminders for SLA and performance monitoring.

---

## 6. References and Linked Requirements

- Cross-references: OLD001, OLD002, OLD003, OLD004, OLD006–OLD010 (EPSS task and reminder management)
- [EPSS – Task List](#task-list) (for standard tasks)
- OLIMS user guide section on Reminders/To Do Actions

---

## 7. Acceptance Criteria

- [ ] New "EPSS" Reminder/To Do Action category is available in OLIMS for all relevant users.
- [ ] Category is selectable and visible in all required screens and reports.
- [ ] Category is filterable in OLIMS task and reminder reports.
- [ ] Audit log records creation and changes to EPSS reminders.
- [ ] Access controls restrict category use to EPSS Claims Officers/Supervisors.
- [ ] User documentation updated with screenshot or navigation path for the new category.# Functional Specification: OLD006 — Suspend/Put on Hold EPSS Task

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
- [ ] No impact on payroll calculations.# Functional Specification: OLD007 — Task Suspension Reason Capture

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
- [ ] Only authorized users can suspend tasks.# Functional Specification: OLD008 — Task Suspension and Resumption Logic

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
- [ ] Reports show all suspended/resumed tasks with required details.# Functional Specification: OLD009 — EPSS Task Template Management

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires agile and responsive claims management processes. As the scheme evolves, the EPSS Claims team must be able to adapt workflows and task lists quickly to reflect changes in business rules, compliance requirements, and operational needs. Allowing the EPSS Claims team to create and edit task templates within OLIMS (Online Injury Management System) ensures flexibility and supports continuous improvement in claims management.

---

## 2. Scope

This specification covers the ability for the EPSS Claims team to create and edit task templates in OLIMS. It includes template creation, editing, data source definition, and access controls. It does not cover the execution of tasks, reporting on tasks, or changes to existing OLIMS workflow unrelated to task templates.

---

## 3. Detailed Functional Requirements

- The EPSS Claims team must be able to create new task templates in OLIMS.
- The EPSS Claims team must be able to edit existing task templates in OLIMS.
- All task templates must include fields for task name, description, SLA/due date, assigned role, trigger event, and status.
- The system must allow the definition of data sources for each template field (e.g., static value, derived from incident, or user entry).
- Only users with the EPSS Claims team role can create or edit task templates.
- Changes to templates must be audit logged (user, date/time, action).
- Task templates must be available for immediate use after creation or update.

---

## 4. Exception Handling

- If a user without the EPSS Claims team role attempts to create or edit a template, the system must display an access denied message.
- If required fields are missing during template creation or editing, the system must prompt the user to complete all mandatory fields before saving.
- If a template is in use by active tasks, editing must not retroactively change those tasks; changes apply only to new tasks created after the update.

---

## 5. Compliance/Controls

- All template changes are audit logged for compliance review.
- Access to template management is restricted to the EPSS Claims team.
- Reporting on template changes is available for reconciliation and quality assurance.

---

## 6. References and Linked Requirements

Cross-references: OLD001–OLD010 (EPSS task management), RPH001–RPH007 (OLIMS Reminders/To Do List Overview Report), P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] EPSS Claims team can create new task templates in OLIMS.
- [ ] EPSS Claims team can edit existing task templates in OLIMS.
- [ ] Only authorized users can access template management.
- [ ] All template changes are audit logged.
- [ ] Templates are available for use immediately after creation or update.
- [ ] Exception handling is implemented as specified.# Functional Specification: OLD010 — EPSS Tasks Reporting

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires robust task management and reporting within OLIMS to monitor claim processing, ensure compliance with Service Level Agreements (SLAs), and support operational oversight. Accurate reporting of EPSS tasks is essential for performance management, resource allocation, and scheme transparency.

---

## 2. Scope

This specification covers the reporting requirements for EPSS tasks in OLIMS, including both current work in progress and completed tasks. It defines the selection criteria, output fields, and export capabilities required for performance and SLA reporting. The scope includes all EPSS-related tasks, both system-generated and manually created, for claims officers and supervisors.

---

## 3. Detailed Functional Requirements

- The system must provide a report listing all EPSS tasks, with filters for status (open/in progress/completed), date range, assigned user, and task type.
- The report must include the following fields: Employee No, Employee Name, Incident No, WC Claim No, Created Date, Task Name, EPSS Advisor, EPSS Supervisor, Comments, Due Date, No. of Days Overdue, Completed Date, Updated By.
- The report must allow selection by open/complete status, EPSS Claims/Transitional, WC Primary Claim, EPSS Supervisor, and EPSS Claims Advisor (individual/all).
- The report must be accessible via OLIMS and support export to Excel.
- All data must be sourced from OLIMS task tables, with real-time or near-real-time accuracy.
- The report must support both online (on-screen) and offline (Excel) analysis.

---

## 4. Exception Handling

- If required fields are missing or inaccessible, the report must display a clear error message and log the issue for support review.
- If no tasks match the selection criteria, the report must display a "No records found" message.
- If export fails, the user must be notified and provided with troubleshooting steps.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised EPSS Claims Officers and Supervisors.
- All report exports must be logged for audit purposes.
- Data presented must comply with payroll controls and OLIMS access policies.
- The report must support reconciliation and periodic review for compliance.

---

## 6. References and Linked Requirements

Cross-references: OLD001–OLD010 (EPSS task management), RPH001–RPH007 (OLIMS Reminders / To Do List Overview Report), payroll/OLIMS reporting standards.

---

## 7. Acceptance Criteria

- [ ] Report displays all required fields for EPSS tasks.
- [ ] Selection criteria allow filtering by status, user, date, and task type.
- [ ] Report is accessible in OLIMS and exportable to Excel.
- [ ] Only authorised users can access and export the report.
- [ ] Exception handling is implemented for missing data and export failures.
- [ ] All exports and accesses are audit logged.
- [ ] Data is accurate and up to date as per OLIMS task records.