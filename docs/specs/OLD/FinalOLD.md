Title: FinalOLD — Functional Specification
Source: combined.md
Created: 2026-02-01
Version: 0.1
 
## Business Background

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) demands precise, accountable claim management within OLIMS. EPSS claims officers and supervisors handle complex workflows, strict SLAs, and compliance requirements. To support this, OLIMS must provide a unified, auditable system for managing tasks, reminders, and to-do actions—both automated and manual—across the entire claim lifecycle. This includes clear task categorisation, flexible ad hoc task creation, robust suspension and resumption logic, and comprehensive reporting. The goal: ensure every EPSS claim is processed efficiently, transparently, and in line with operational and regulatory expectations.

## Goals

- OLIMS must trigger a standard set of tasks for EPSS claims based on key events (e.g., claim allocation, period transitions, document requests), each with defined SLAs and due dates.
- EPSS Claims Officers and Supervisors can manually create ad hoc tasks for claims, capturing task name, due date, assigned user, and status.
- Each ad hoc task must capture: Date Created, Date Completed, and Comments/Notes.
- Standard OLIMS functionality for creating and displaying reminders/to-do actions must be available for EPSS claims.
- A new Reminder/To Do Action category named "EPSS" must be created in OLIMS to differentiate EPSS reminders from other claim types.
- Users can suspend/put on hold any task, pausing SLA/due date calculations. A mandatory reason must be entered for suspension.
- When a task is suspended, any dependent tasks triggered by the suspended task must also be placed on hold.
- When a suspended task is resumed, the original due date remains, and the time used before suspension is included in total days available; a new due date is calculated based on remaining SLA time.
- When a suspended task is resumed, any dependent tasks must be re-activated with recalculated SLA timings.
- Only supervisors can delete ad hoc tasks.
- A suspended task cannot be marked as completed; it must first be resumed.
- EPSS Claims team can create and edit task templates for ongoing flexibility.
- EPSS tasks must be reportable for both current work in progress and completed tasks, including export to Excel.
- All task creation, suspension, resumption, and completion actions must be audit logged, including user, timestamp, and reason (where applicable).
- Only authorised users (EPSS Claims Officers/Supervisors) can create, edit, or suspend tasks.
- Suspension must not impact payroll calculations.
- Ad hoc tasks are linked to the relevant claim/incident.
- The display must include both active and historical (inactive/completed) reminders/actions.
- If a template is in use by active tasks, editing must not retroactively change those tasks; changes apply only to new tasks created after the update.
- The report must include the following fields: Employee No, Employee Name, Incident No, WC Claim No, Created Date, Task Name, EPSS Advisor, EPSS Supervisor, Comments, Due Date, No. of Days Overdue, Completed Date, Updated By, and Suspension Status/Reason.
- Tasks can be edited by the creator or Supervisor until marked as Complete.
- All actions (create, edit, delete, status change) are audit logged with complete task lifecycle audit trail available for reporting.
- The system must provide a report listing all EPSS tasks with filters for status (open/in progress/completed) and allow selection by EPSS Claims/Transitional, WC Primary Claim, EPSS Supervisor, and EPSS Claims Advisor (individual/all).
- The report utilises the existing OLIMS Reminders/To Do List report facility in the ZIM_CM folder, with a separate EPSS-specific report facility potentially created to prevent impact on other claim types.
- Access to the report must be restricted to authorised EPSS Claims Officers and Supervisors.
- Reminder creation and completion actions are logged for audit and reporting purposes.
- Displayed data must be read-only; editing or deletion is not permitted from the display screen.
- If required fields are missing, the system prevents task creation and displays an error.
- If export fails, the user must be notified and provided with troubleshooting steps.
- Suspension status and reasons are reportable for SLA and performance monitoring.
- Changes to templates must be audit logged (user, date/time, action).
- Reporting on template changes is available for reconciliation and quality assurance.
- If a user attempts to suspend a completed task, the system must display an error: "Completed tasks cannot be suspended."
- If a task is resumed and the original due date is in the past, the task is flagged as overdue.
- If the new category is not selected when creating an EPSS-related reminder, the system must prompt the user to select the correct category.
- If the OLIMS reminders/to-do actions functionality is unavailable or encounters an error, users must be notified with a standard error message.
- If no reminders or to-do actions exist for an incident, the display screen will show a message: "No reminders or to-do actions found for this incident."
- If the user does not have permission to view reminders for a claim, an appropriate access denied message will be displayed.
- If a user without the EPSS Claims team role attempts to create or edit a template, the system must display an access denied message.
- If required fields are missing during template creation or editing, the system must prompt the user to complete all mandatory fields before saving.
- All report exports must be logged for audit purposes.
- If no tasks match the selection criteria, the report must display a "No records found" message.
- Attempting to delete a completed task results in an error.
- System logs all failed attempts for audit purposes.
- Task and reminder data is included in operational and compliance reporting.
- All data must be sourced from OLIMS task tables, with real-time or near-real-time accuracy.
- Data presented must comply with payroll controls and OLIMS access policies.
- Suspension reasons must be reportable for quality assurance and compliance reviews.
- The OLIMS navigation path or screen for creating manual reminders must be documented for EPSS users.
- A screenshot or navigation path to the Reminder/To Do Action functionality must be included in user documentation.
- When a suspended task is resumed, a new due date is created as a separate record, calculated by the remaining SLA time at the point of suspension, with elapsed time before suspension included in total days available.
- The suspension reason must be a mandatory free text field, visible in the OLIMS UI, and stored/auditable for each task record.
- The new "EPSS" category must appear in all relevant OLIMS screens, dropdowns, and reports where Reminder/To Do Action categories are displayed, and be filterable in reports and task lists.
- All suspension and resumption actions must be audit logged, including user, timestamp, and reason.
- Only users with appropriate roles (Claims Officer/Supervisor) can perform suspend/resume actions.
- Reports must support both online (on-screen) and offline (Excel) analysis.
- All reminders/to-do actions created for EPSS claims are subject to standard OLIMS audit and access controls.
- The display must show key fields: task name, due date, status, assigned to, created date, completed date, and comments.

## Scope

- OLD001: For EPSS claim management, a standard set of system generated tasks in OLIMS are to be triggered by key events that will have SLA’s and due dates to monitor service performance.
- OLD002: For adhoc claims management activities, a standard set of tasks that a EPSS Claims Officer or Supervisor can generate for a claim.
- OLD003: The standard functionality of creating manual Reminders/To Do Actions within the incident to be available for EPSS Claim Management.
- OLD004: The standard functionality to Display Reminders/To Do Actions within the incident to be available for EPSS Claim Management.
- OLD005: A new Reminder/To Do Action category is needed for EPSS to differentiate from the current categories in OLIMS.
- OLD006: The ability for a EPSS Claims Officer or EPSS Supervisor to ‘suspend/put on hold’ a task to pause the SLA/Due Date is required.
- OLD007: When a Task is put on hold/suspended, a reason must be entered by the user to justify.
- OLD008: When a suspended Task is removed and back to work in progress, the original due date to remain and a new due date to be created as a separate record calculated by the remaining SLA time.
- OLD009: The ability for the EPSS Claims team to create and edit the task templates for flexibility to adapt to the agile pace in implementing EPSS.
- OLD010: The EPSS Tasks are to be reportable for both current work in progress and completed tasks for performance and SLA reporting.

## Functional Requirements

### OLD001 System Generated Tasks
- OLIMS must trigger a standard set of tasks for EPSS claims based on key events (e.g., claim allocation, period transitions, document requests), each with defined SLAs and due dates.
- The standard set of system-generated tasks is defined in the EPSS Task List within the Business Requirements Document.
- System-generated tasks are triggered by defined trigger events, which are configured at the time of system implementation.
- Reminders generated via the EPSS category are available for selection by EPSS Supervisors only.
- Task and reminder data must be included in operational and compliance reporting.
- All task actions (create, edit, suspend, resume, complete) must be audit logged, including user, timestamp, and reason (where applicable).

### OLD002 Ad Hoc Tasks
- EPSS Claims Officers and Supervisors can manually create ad hoc tasks for claims.
- The standard EPSS Task List must be referenced for consistency in task naming and categorisation.
- Each ad hoc task must capture: Task Name, Due Date, Assigned To, Status, Date Created, Date Completed, and Comments/Notes.
- Ad hoc tasks are linked to the relevant claim/incident.
- Tasks can be edited by the creator or Supervisor until marked as Complete.
- Only a Supervisor can delete an ad hoc task.
- All actions (create, edit, delete, status change) are audit logged with complete task lifecycle audit trail available for reporting.
- System logs all failed attempts for audit purposes.
- The audit trail must capture all state changes from task creation through completion, including suspension and resumption events.

### OLD003 Manual Reminders/To Do Actions
- Standard OLIMS functionality for creating manual reminders/to-do actions within an incident must be available for EPSS claim management.
- EPSS Claims Officers and Supervisors can create manual reminders for any EPSS claim/incident.
- Reminders must be linked to the relevant EPSS incident and visible in the incident’s reminders/to-do actions section.- Manual reminders are aligned with the EPSS predefined task list as specified in the Business Requirements Document, plus any additional items marked as manual in the task list.
- No automated workflow is triggered for reminders and tasks created via the standard OLIMS reminder/to-do action functionality.- No changes or customisations to the existing OLIMS reminder functionality are required for EPSS.
- The OLIMS navigation path or screen for creating manual reminders must be documented for EPSS users.
- Reminder creation and completion actions are logged for audit and reporting purposes.

### OLD004 Display Reminders/To Do Actions
- The system must display all reminders and to-do actions associated with an EPSS claim incident.
- The display must include both active and historical (inactive/completed) reminders/actions.
- The display must show key fields: task name, due date, status, assigned to, created date, completed date, and comments.
- Displayed data must be read-only; editing or deletion is not permitted from the display screen.
- The display functionality will use the existing OLIMS path or screen for reminders/to-do actions, as currently implemented for other claim types.
- All actions are logged for audit and compliance purposes.

### OLD005 New EPSS Category
- A new Reminder/To Do Action category named "EPSS" must be created in OLIMS to differentiate EPSS reminders from other claim types.
- The category must appear in all relevant OLIMS screens, dropdowns, and reports where Reminder/To Do Action categories are displayed.
- The category must be available for both system-generated and manually created reminders/tasks.
- The category must be filterable in OLIMS reports and task lists.
- A screenshot or navigation path to the Reminder/To Do Action functionality must be included in user documentation.
- Access to create/edit EPSS reminders must be restricted to EPSS Claims Officers and Supervisors.
- Audit log records creation and changes to EPSS reminders.
- Reporting must support filtering and auditing of EPSS-specific reminders for SLA and performance monitoring.

### OLD006 Suspend/Put on Hold Task
- EPSS Claims Officers and Supervisors can suspend/put on hold any active EPSS task.
- When a task is suspended, the system must pause the SLA/due date countdown.
- The user must enter a mandatory reason for suspension.
- Completed tasks cannot be suspended; the system must display an error preventing this action.
- When a task is suspended, any dependent tasks that were triggered by the suspended task must also be placed on hold.
- Suspension must not impact payroll calculations.
- Only authorised users (Claims Officer/Supervisor) can perform suspend/resume actions.

### OLD007 Suspension Reason Capture
- When a task is put on hold/suspended, the reason must be a mandatory free text field visible in the OLIMS UI.
- The suspension reason must be stored and auditable for each task record.
- The suspension reason is stored online in OLIMS for immediate display and reference by users.

### OLD008 Task Resumption Logic
- When a suspended task is resumed, the original due date remains unchanged.
- The time elapsed before suspension must be included in the total days available when the task resumes; a new due date is calculated as a separate record based on the remaining SLA time at the point of suspension.
- When a task is resumed, any dependent tasks that were placed on hold due to this task's suspension must be re-activated, and their SLA timings must be recalculated to reflect the resumption.
- If the original due date has passed at the time of resumption, the task is considered overdue.
- A suspended task cannot be marked as completed; it must first be resumed.
- All suspension and resumption actions must be audit logged, including user, timestamp, and reason.
- Suspension status and reasons are reportable for SLA and performance monitoring.
- Suspension reasons must be reportable for quality assurance and compliance reviews.
- Reports must be available to show all suspended/resumed tasks, including reasons, timestamps, and the recalculated due dates.

### OLD009 Task Template Management
- The EPSS Claims team can create new task templates in OLIMS.
- The EPSS Claims team can edit existing task templates in OLIMS.
- All task templates must include fields for task name, SLA/due date, assigned role, trigger event, and status.
- The system must allow the definition of data sources for each template field, specifying where data is sourced (e.g., static value, derived from incident data, or user entry).
- If a template is in use by active tasks, editing must not retroactively change those tasks; changes apply only to new tasks created after the update.
- Changes to templates must be audit logged (user, date/time, action).
- Only users with the EPSS Claims team role can create or edit task templates.
- Reporting on template changes is available for reconciliation and quality assurance.

### OLD010 Tasks Reporting
- The system must provide a report listing all EPSS tasks via the existing OLIMS Reminders/To Do List report facility in the ZIM_CM folder.
- A separate EPSS-specific report facility may be created to incorporate new EPSS fields without impacting reporting for other claim types (WC, HSW, Command).
- The report must allow filtering and selection by: open/complete status, EPSS Claims/Transitional designation, WC Primary Claim number, EPSS Supervisor, and EPSS Claims Advisor (individual or all).
- The report must include the following fields: Employee No, Employee Name, Incident No, WC Claim No, Created Date, Task Name, EPSS Advisor, EPSS Supervisor, Comments, Due Date, No. of Days Overdue, Completed Date, Updated By, and Suspension Status/Reason.
- The report must include both in-progress and completed tasks.
- The report must be accessible via OLIMS and support export to Excel.
- All data must be sourced from OLIMS task tables, with real-time or near-real-time accuracy.
- All report exports must be logged for audit purposes.
- Reports are available for SLA monitoring and reconciliation.
- Data presented must comply with payroll controls and OLIMS access policies.
- The report must support reconciliation and periodic review for compliance.

## Non-Functional Requirements

- All task actions (create, edit, suspend, resume, complete) must be audit logged, including user, timestamp, and reason (where applicable).
- Only authorised users (EPSS Claims Officers/Supervisors) can create, edit, or suspend tasks.
- All report exports must be logged for audit purposes.
- All data must be sourced from OLIMS task tables, with real-time or near-real-time accuracy.
- Data presented must comply with payroll controls and OLIMS access policies.

## Constraints

- Standard OLIMS functionality for creating and displaying reminders/to-do actions must be used as-is for EPSS claims.
- The display of reminders/to-do actions must use the existing OLIMS path or screen for reminders/to-do actions.
- The new Reminder/To Do Action category name is "EPSS" (final name to be confirmed by business).
- Suspension must not impact payroll calculations.
- Only authorised EPSS Claims Officers and Supervisors can create or view reminders for EPSS incidents.
- All reminder/to-do actions are audit logged for compliance.
- The new "EPSS" category must be filterable in reports and task lists, and included in reporting.
- If the new category is not selected when creating an EPSS-related reminder, the system must prompt the user to select the correct category.
- A mandatory reason (free text) must be entered when suspending/putting on hold a task.
- Completed tasks cannot be suspended.
- Only users with the EPSS Claims team role can create or edit task templates.
- All suspension and resumption actions must be audit logged, including user, timestamp, and reason.
- Editing a template does not retroactively change active tasks; changes apply only to new tasks created after the update.
- Error messages must be displayed for missing required fields, unauthorised actions, or export/report failures.
- Reports and exports (including to Excel) must be audit logged for compliance.
- Access to reports and exports must be restricted to authorised users.
- The OLIMS navigation path or screenshot for reminders/category must be included in user documentation.
- The new "EPSS" category must be selectable and visible in all relevant screens and dropdowns.
- If no reminders or to-do actions exist for an incident, the display screen must show a message: "No reminders or to-do actions found for this incident."
- Ad hoc tasks are linked to the relevant claim/incident.
- Ad hoc tasks can be edited or deleted by the creator or Supervisor until marked as Complete.
- Attempting to delete a completed task results in an error.
- Only authorised users can edit or delete ad hoc tasks.
- The display of reminders/to-do actions must include both active and historical (inactive/completed) reminders/actions.
- The display must show key fields: task name, due date, status, assigned to, created date, completed date, and comments.
- Displayed reminder/to-do action data must be read-only; editing or deletion is not permitted from the display screen.
- Suspension status and reasons must be visible in reports.
- Changes to templates must be audit logged (user, date/time, action).
- Task templates are available for immediate use after creation or update.
- The report must include the following fields: Employee No, Employee Name, Incident No, WC Claim No, Created Date, Task Name, EPSS Advisor, EPSS Supervisor, Comments, Due Date, No. of Days Overdue, Completed Date, Updated By.
- The report must allow selection by status, user, date, and task type.
- The report must be accessible via OLIMS and support export to Excel.
- All data must be sourced from OLIMS task tables, with real-time or near-real-time accuracy.
- The report must support both online (on-screen) and offline (Excel) analysis.
- Reports and exports must be logged for audit purposes.
- Data presented must comply with payroll controls and OLIMS access policies.
- System-generated EPSS tasks must be triggered by key claim events with defined SLAs and due dates.
- The standard EPSS Task List must be referenced for consistency in task naming and categorisation.
- The new "EPSS" category must be available for both system-generated and manually created reminders/tasks.
- The category must be filterable in task lists and reports.
- If technical errors occur during task creation or update, the system must display a clear error message and not commit partial changes.
- Reports must support reconciliation and periodic review for compliance.
- Task templates must include fields for trigger event and data source definition (e.g., static value, derived from incident, or user entry).
- User documentation must include a screenshot of the Reminder/To Do Action functionality.
- The report must allow selection by EPSS Claims/Transitional, WC Primary Claim, EPSS Supervisor, and EPSS Claims Advisor (individual/all).
- All actions (create, edit, delete, status change) for ad hoc tasks must be audit logged.
- System logs all failed attempts for audit purposes.
- Reminder creation and completion actions are logged for audit and reporting purposes.
- Reminder/to-do action display is subject to standard OLIMS access controls and audit logging.
- Only users with appropriate roles (Claims Officer/Supervisor) can perform suspend/resume actions.
- Changes to task templates must not retroactively affect active tasks; only new tasks use updated templates.
- If the "EPSS" category is missing from dropdowns or reports, the issue must be logged and escalated to system support.
- If the OLIMS reminders/to-do actions functionality is unavailable or encounters an error, users must be notified with a standard error message and system outages must be logged and escalated per standard OLIMS support procedures.
- If no tasks match the selection criteria, the report must display a "No records found" message.
- If required fields are missing or inaccessible in reports, the report must display a clear error message and log the issue for support review.

## Acceptance Criteria

- System-generated EPSS tasks are triggered by key claim events with correct SLAs/due dates.
- EPSS Claims Officers/Supervisors can create and edit ad hoc tasks; only Supervisors can delete ad hoc tasks.
- All required ad hoc task fields are enforced at creation (Task Name, Due Date, Assigned To, Status, Date Created, Date Completed, Comments/Notes).
- Manual reminders/to-do actions can be created for EPSS claims using standard OLIMS functionality, aligned with the EPSS predefined task list plus manual items.
- Reminders/to-do actions are displayed for EPSS incidents with required fields and read-only display.
- New "EPSS" category is selectable, visible in all relevant screens/reports, and filterable in reports/task lists.
- Reminders for EPSS are available for selection by EPSS Supervisors only.
- Suspension/hold of tasks pauses SLA/due date, requires a mandatory free text reason, and is stored online in OLIMS.
- When a task is suspended, any dependent tasks triggered by it are also placed on hold.
- Resuming a suspended task retains the original due date and creates a new due date record based on remaining SLA time with elapsed time included; overdue logic applies if original due date has passed.
- When a task is resumed, dependent tasks are re-activated with recalculated SLA timings.
- A suspended task cannot be marked as completed; it must first be resumed.
- All task actions (create, edit, delete, status change, suspend, resume, complete) are audit logged with complete task lifecycle audit trail.
- EPSS task reports are available via the existing OLIMS Reminders/To Do List report facility in ZIM_CM, with optional separate EPSS-specific report facility.
- Reports include filters for open/complete status, EPSS Claims/Transitional, WC Primary Claim, EPSS Supervisor, and EPSS Claims Advisor (individual/all).
- Report fields include: Employee No, Employee Name, Incident No, WC Claim No, Created Date, Task Name, EPSS Advisor, EPSS Supervisor, Comments, Due Date, No. of Days Overdue, Completed Date, Updated By, Suspension Status/Reason.
- Reports include both in-progress and completed tasks and are exportable to Excel.
- All report exports are logged for audit purposes.
- Only authorised users (EPSS Claims Officers/Supervisors) can create, edit, suspend, or delete tasks/reminders.
- Completed tasks cannot be suspended or deleted; the system displays an error and prevents the action.
- Suspension reason is a mandatory free text field, visible in the UI and reportable.
- Ad hoc tasks can be edited by the creator or Supervisor until marked as Complete; only Supervisors can delete.
- Suspension/resume actions do not impact payroll calculations.
- Exception handling displays clear error messages and logs issues for audit/support (missing required fields, unauthorised actions, export failures).
- Changes to task templates do not retroactively affect active tasks; only new tasks use updated templates.
- Reminder creation/completion and report exports are audit logged.
- Data in reports is accurate, up to date, and complies with OLIMS/payroll controls.
- Only the EPSS Claims team can create or edit task templates.
- Template changes are audit logged and available for reporting on template changes.
- Task templates are available for immediate use after creation or update.
- Task template fields include task name, SLA/due date, assigned role, trigger event, and status, with data source definitions.
- Access denied and missing mandatory fields are enforced for template creation/editing.
- User documentation includes a screenshot or navigation path for the new "EPSS" category.
- Ad hoc tasks are linked to the relevant claim/incident.
- User documentation includes the OLIMS navigation path or screenshot for reminders/to-do actions.
- Display of reminders/to-do actions shows a message if no reminders exist and shows access denied message when the user lacks permission.
- Editing a template in use does not retroactively change active tasks; changes apply only to new tasks.
- Failed attempts (e.g., unauthorised actions, failed deletions) are logged for audit purposes.
- Reporting supports filtering and auditing of EPSS-specific reminders for SLA and performance monitoring.
- The "EPSS" category is available for both system-generated and manually created reminders/tasks.
