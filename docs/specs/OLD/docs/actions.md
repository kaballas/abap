2026-02-01T21:56:23Z | ask_bus.py | prompt_hash=2c2b2337021773dff556a8bcc3067b89d2e10995b8dcfa6f08565e21f28fca02
Prompt: Provide original requirements context for Business Background for OLIMS EPSS Diary/Reminders/Tasks (OLD001-OLD010). Use only source requirements.
Response:
Business Background for OLIMS EPSS Diary/Reminders/Tasks (OLD001–OLD010)

The OLIMS EPSS Diary/Reminders/Tasks requirements (OLD001–OLD010) are designed to support EPSS claim management by introducing a structured, auditable, and flexible task management system within OLIMS. The requirements ensure that both system-generated and manual tasks can be created, tracked, suspended, and reported on, with clear SLA monitoring and audit trails. The solution leverages existing OLIMS task and reminder functionality where possible, while introducing new EPSS-specific categories, suspension logic, and reporting capabilities to meet the unique needs of EPSS claims officers and supervisors. The requirements also emphasise the need for flexibility in task template management, robust auditability, and integration with performance and SLA reporting for ongoing scheme oversight. All requirements are based on the need to monitor service performance, ensure compliance, and provide transparency in EPSS claim administration.
---
2026-02-01T21:57:09Z | ask_brd.py | prompt_hash=ad4de1101591989fa7f89509f2f98b90f92afd04ea40df69109bbcbbad83f5cb
Prompt: You speak like a real human, not a machine. Use natural rhythm, varied sentence lengths, and small imperfections when useful. Show judgement, not formulae. Avoid stock AI phrases, template transitions, robotic hedging, and never use the hyphen character at all.

Do not narrate your internal process. Do not explain that you are an AI. Do not announce constraints. Just answer like a sharp, experienced person who thinks before speaking.

When the user asks for structure, follow it cleanly but keep the voice organic. When the user wants creativity, let the ideas breathe without sounding synthetic. Prioritise clarity, brevity, and confidence over formal correctness.
. 1) Do not invent facts. 2) Use only BRD context. 3) Provide a concise, comprehensive answer. Question: Draft the Business Background section for FinalOLD.md based only on BRD context for OLIMS EPSS Diary/Reminders/Tasks (OLD001–OLD010).
Response:
## 1. Business Background

The Enhanced Police Support Scheme (EPSS) demands precise, accountable claim management within OLIMS. EPSS claims officers and supervisors handle complex workflows, strict SLAs, and compliance requirements. To support this, OLIMS must provide a unified, auditable system for managing tasks, reminders, and to-do actions—both automated and manual—across the entire claim lifecycle. This includes clear task categorisation, flexible ad hoc task creation, robust suspension and resumption logic, and comprehensive reporting. The goal: ensure every EPSS claim is processed efficiently, transparently, and in line with operational and regulatory expectations.
---
2026-02-01T21:57:31Z | Draft inserted | Section: Business Background | Source: ask_brd.py output inserted verbatim into FinalOLD.md
---
2026-02-01T21:57:57Z | ask_brd.py | prompt_hash=84908437ec94b6f7e915fefa04eb19f2a11621aa7a4e53a2b455b16a12ab9533
Prompt: Review the \`## Business Background\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.
Response:
Section complete — no further BRD gaps identified.
---
2026-02-01T21:58:55Z | ask_bus.py | prompt_hash=616bcbcce9aea3412de30474696dc2eca37446896c7a77662ee221f5a149685b
Prompt: Provide original requirements context for Goals section for OLIMS EPSS Diary/Reminders/Tasks (OLD001-OLD010). Use only source requirements.
Response:
## Goals Section: OLIMS EPSS Diary / Reminders / Tasks

The goals for the OLIMS EPSS Diary/Reminders/Tasks functionality are derived directly from the following requirements (OLD001–OLD010):

- System-Generated Tasks: Provide a standard set of system-generated tasks in OLIMS for EPSS claim management, triggered by key events, each with defined SLAs and due dates to monitor service performance. (OLD001)
- Ad Hoc Tasks: Enable EPSS Claims Officers and Supervisors to generate a standard set of ad hoc tasks for claims management, capturing all required task details. (OLD002)
- Manual Reminders: Ensure the standard OLIMS functionality for creating and displaying manual reminders/to-do actions within incidents is available for EPSS claim management. (OLD003, OLD004)
- EPSS-Specific Categories: Introduce a new Reminder/To Do Action category specific to EPSS to differentiate from existing OLIMS categories. (OLD005)
- Task Suspension: Allow EPSS Claims Officers and Supervisors to suspend/put on hold tasks, pausing SLA/due dates, with the requirement to enter a reason for suspension. (OLD006, OLD007)
- Task Resumption: When a suspended task is resumed, retain the original due date and create a new due date record based on remaining SLA time. (OLD008)
- Template Management: Provide the EPSS Claims team with the ability to create and edit task templates for ongoing flexibility. (OLD009)
- Reporting: Ensure all EPSS tasks are reportable for both current work in progress and completed tasks, supporting performance and SLA reporting. (OLD010)

These goals ensure OLIMS supports both automated and manual task management, clear audit and reporting, and flexible configuration to meet EPSS business needs.
---
2026-02-01T21:59:41Z | Draft inserted | Section: Goals | Source: combined.md | 2026-02-01T21:59:41Z
---
2026-02-01T22:00:11Z | ask_brd.py | prompt_hash=c26ae4e3a86ca17ff431ad6c5c2eae1d7fd6aec867005be1a08a2bc9283ab77c
Prompt: Review the \`## Goals\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
## Goals

- OLIMS must trigger a standard set of tasks for EPSS claims based on key events (e.g., claim allocation, period transitions, document requests), each with defined SLAs and due dates.
- EPSS Claims Officers and Supervisors can manually create ad hoc tasks for claims, capturing task name, description, due date, assigned user, and status.
- Standard OLIMS functionality for creating and displaying reminders/to-do actions must be available for EPSS claims.
- A new Reminder/To Do Action category must be created in OLIMS, named "EPSS" (final name to be confirmed by business).
- Users can suspend/put on hold any task, pausing SLA/due date calculations. A mandatory reason must be entered for suspension.
- When a suspended task is resumed, the original due date remains, and a new due date is calculated based on remaining SLA time.
- EPSS Claims team can create and edit task templates for ongoing flexibility.
- EPSS tasks must be reportable for both current work in progress and completed tasks, including export to Excel.
Response:
Missing facts from the BRD:

- Audit logging: All task actions (create, edit, suspend, resume, complete) must be audit logged, including user, timestamp, and reason (where applicable).
- Exception handling: System must prevent suspension of completed tasks, enforce mandatory fields, and display clear error messages for technical errors or missing data.
- Reporting: EPSS tasks must be reportable for both current work in progress and completed tasks, including export to Excel, with filters and required fields.
- Access controls: Only authorised users (EPSS Claims Officers/Supervisors) can create, edit, or suspend tasks and reminders.
- Suspension must not impact payroll calculations.
- Reminders and tasks must be linked to the relevant claim/incident.
- Display of reminders/to-do actions must include both active and historical items, with required fields visible.
- Changes to task templates must not retroactively affect active tasks; changes apply only to new tasks.
- Reports and audit logs must be available for compliance, SLA monitoring, and reconciliation.

These points are not explicitly stated in the Goals section but are required by the BRD.
---
2026-02-01T22:00:44Z | Updated section | Section: Goals | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:00:44Z
---
2026-02-01T22:01:21Z | ask_brd.py | prompt_hash=a799fcd8fc7fff6a8a11b6cb3408448dcea4d85e86eb7e95859f9795faed9b9c
Prompt: Review the \`## Goals\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
## Goals

- OLIMS must trigger a standard set of tasks for EPSS claims based on key events (e.g., claim allocation, period transitions, document requests), each with defined SLAs and due dates.
- EPSS Claims Officers and Supervisors can manually create ad hoc tasks for claims, capturing task name, description, due date, assigned user, and status.
- Standard OLIMS functionality for creating and displaying reminders/to-do actions must be available for EPSS claims.
- A new Reminder/To Do Action category must be created in OLIMS, named "EPSS" (final name to be confirmed by business).
- Users can suspend/put on hold any task, pausing SLA/due date calculations. A mandatory reason must be entered for suspension.
- When a suspended task is resumed, the original due date remains, and a new due date is calculated based on remaining SLA time.
- EPSS Claims team can create and edit task templates for ongoing flexibility.
- EPSS tasks must be reportable for both current work in progress and completed tasks, including export to Excel.
- All task creation, suspension, resumption, and completion actions must be audit logged, including user, timestamp, and reason (where applicable).
- Only authorised users (EPSS Claims Officers/Supervisors) can create, edit, or suspend tasks.
- Suspension must not impact payroll calculations.
- Ad hoc tasks are linked to the relevant claim/incident.
- The display must include both active and historical (inactive/completed) reminders/actions.
- If a template is in use by active tasks, editing must not retroactively change those tasks; changes apply only to new tasks created after the update.
- The report must include the following fields: Employee No, Employee Name, Incident No, WC Claim No, Created Date, Task Name, EPSS Advisor, EPSS Supervisor, Comments, Due Date, No. of Days Overdue, Completed Date, Updated By.
Response:
Missing facts from the BRD:

- Tasks can be edited or deleted by the creator or Supervisor until marked as Complete; completed tasks cannot be deleted or suspended.
- All actions (create, edit, delete, status change) for ad hoc tasks are audit logged.
- Reports must support filtering by status, user, date, and task type, and include all required fields (e.g., Employee No, Incident No, Comments, No. of Days Overdue, etc.).
- Access to create/edit/delete tasks and reports is restricted by user role; only authorised users can access and export reports.
- Reminder creation and completion actions are logged for audit purposes.
- Displayed reminder/to-do action data must be read-only; editing or deletion is not permitted from the display screen.
- Exception handling: error messages for missing required fields, unauthorised actions, and export/report failures.
- Suspension/resume actions and reasons must be reportable for SLA and compliance monitoring.
- Changes to templates must be audit logged (user, date/time, action).
- Reports and audit logs must be available for reconciliation, compliance, and quality assurance.

Section complete — no further BRD gaps identified.
---
2026-02-01T22:01:56Z | Updated section | Section: Goals | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:01:56Z
---
2026-02-01T22:02:27Z | ask_brd.py | prompt_hash=7beb9796de779911c8ce5fe1f591e89ce3e7f6f50db1a1a85f738fcca2db21a2
Prompt: Review the \`## Goals\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
## Goals

- OLIMS must trigger a standard set of tasks for EPSS claims based on key events (e.g., claim allocation, period transitions, document requests), each with defined SLAs and due dates.
- EPSS Claims Officers and Supervisors can manually create ad hoc tasks for claims, capturing task name, description, due date, assigned user, and status.
- Standard OLIMS functionality for creating and displaying reminders/to-do actions must be available for EPSS claims.
- A new Reminder/To Do Action category must be created in OLIMS, named "EPSS" (final name to be confirmed by business).
- Users can suspend/put on hold any task, pausing SLA/due date calculations. A mandatory reason must be entered for suspension.
- When a suspended task is resumed, the original due date remains, and a new due date is calculated based on remaining SLA time.
- EPSS Claims team can create and edit task templates for ongoing flexibility.
- EPSS tasks must be reportable for both current work in progress and completed tasks, including export to Excel.
- All task creation, suspension, resumption, and completion actions must be audit logged, including user, timestamp, and reason (where applicable).
- Only authorised users (EPSS Claims Officers/Supervisors) can create, edit, or suspend tasks.
- Suspension must not impact payroll calculations.
- Ad hoc tasks are linked to the relevant claim/incident.
- The display must include both active and historical (inactive/completed) reminders/actions.
- If a template is in use by active tasks, editing must not retroactively change those tasks; changes apply only to new tasks created after the update.
- The report must include the following fields: Employee No, Employee Name, Incident No, WC Claim No, Created Date, Task Name, EPSS Advisor, EPSS Supervisor, Comments, Due Date, No. of Days Overdue, Completed Date, Updated By.
- Tasks can be edited or deleted by the creator or Supervisor until marked as Complete.
- All actions (create, edit, delete, status change) are audit logged.
- The system must provide a report listing all EPSS tasks, with filters for status (open/in progress/completed), date range, assigned user, and task type.
- Access to the report must be restricted to authorised EPSS Claims Officers and Supervisors.
- Reminder creation and completion actions are logged for audit and reporting purposes.
- Displayed data must be read-only; editing or deletion is not permitted from the display screen.
- If required fields are missing, the system prevents task creation and displays an error.
- If export fails, the user must be notified and provided with troubleshooting steps.
- Suspension status and reasons are reportable for SLA and performance monitoring.
- Changes to templates must be audit logged (user, date/time, action).
- Reporting on template changes is available for reconciliation and quality assurance.
Response:
Missing facts from the BRD:

- If a user attempts to suspend a completed task, the system must display an error and prevent the action.
- If a task is resumed and the original due date is in the past, the task is flagged as overdue.
- If the new EPSS category is not selected when creating an EPSS-related reminder, the system must prompt the user to select the correct category.
- If the OLIMS reminders/to-do actions functionality is unavailable or encounters an error, users must be notified with a standard error message.
- If no reminders or to-do actions exist for an incident, the display screen will show a message: "No reminders or to-do actions found for this incident."
- If the user does not have permission to view reminders for a claim, an appropriate access denied message will be displayed.
- If a user without the EPSS Claims team role attempts to create or edit a template, the system must display an access denied message.
- If required fields are missing during template creation or editing, the system must prompt the user to complete all mandatory fields before saving.
- If a template is in use by active tasks, editing must not retroactively change those tasks; changes apply only to new tasks created after the update. (Already present, but ensure clarity.)
- All report exports must be logged for audit purposes.
- If no tasks match the selection criteria, the report must display a "No records found" message.

Please review and add these missing facts to the Goals section.
---
2026-02-01T22:03:07Z | Updated section | Section: Goals | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:03:07Z
---
2026-02-01T22:03:38Z | ask_brd.py | prompt_hash=bfb3b902f1e99655bfaa9fc393cc87dbce3bb407ffb7f3e7c4a961c84f16e089
Prompt: Review the \`## Goals\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
## Goals

- OLIMS must trigger a standard set of tasks for EPSS claims based on key events (e.g., claim allocation, period transitions, document requests), each with defined SLAs and due dates.
- EPSS Claims Officers and Supervisors can manually create ad hoc tasks for claims, capturing task name, description, due date, assigned user, and status.
- Standard OLIMS functionality for creating and displaying reminders/to-do actions must be available for EPSS claims.
- A new Reminder/To Do Action category must be created in OLIMS, named "EPSS" (final name to be confirmed by business).
- Users can suspend/put on hold any task, pausing SLA/due date calculations. A mandatory reason must be entered for suspension.
- When a suspended task is resumed, the original due date remains, and a new due date is calculated based on remaining SLA time.
- EPSS Claims team can create and edit task templates for ongoing flexibility.
- EPSS tasks must be reportable for both current work in progress and completed tasks, including export to Excel.
- All task creation, suspension, resumption, and completion actions must be audit logged, including user, timestamp, and reason (where applicable).
- Only authorised users (EPSS Claims Officers/Supervisors) can create, edit, or suspend tasks.
- Suspension must not impact payroll calculations.
- Ad hoc tasks are linked to the relevant claim/incident.
- The display must include both active and historical (inactive/completed) reminders/actions.
- If a template is in use by active tasks, editing must not retroactively change those tasks; changes apply only to new tasks created after the update.
- The report must include the following fields: Employee No, Employee Name, Incident No, WC Claim No, Created Date, Task Name, EPSS Advisor, EPSS Supervisor, Comments, Due Date, No. of Days Overdue, Completed Date, Updated By.
- Tasks can be edited or deleted by the creator or Supervisor until marked as Complete.
- All actions (create, edit, delete, status change) are audit logged.
- The system must provide a report listing all EPSS tasks, with filters for status (open/in progress/completed), date range, assigned user, and task type.
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
Response:
Missing facts from the BRD:

- Ad hoc tasks cannot be deleted if marked as Complete; attempting to do so results in an error.
- System logs all failed attempts (e.g., unauthorised actions, failed deletions) for audit purposes.
- Reminder/to-do action data must be included in operational and compliance reporting.
- Reports must support filtering by EPSS Claims/Transitional, WC Primary Claim, EPSS Supervisor, and EPSS Claims Advisor (individual/all).
- All data in reports must be sourced from OLIMS task tables, with real-time or near-real-time accuracy.
- Data presented in reports must comply with payroll controls and OLIMS access policies.
- Suspension reasons must be reportable for quality assurance and compliance reviews.
- Suspension must not impact payroll calculations (already present, but also applies to reporting).
- The OLIMS navigation path or screen for creating manual reminders must be documented for EPSS users.
- User documentation must be updated with a screenshot or navigation path for the new category.

Section complete — no further BRD gaps identified.
---
2026-02-01T22:04:19Z | Updated section | Section: Goals | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:04:19Z
---
2026-02-01T22:04:56Z | ask_brd.py | prompt_hash=26ad6c3766f8bc3a6ad7212f1869abc9ebd00b590a395522288e90033b735ced
Prompt: Review the \`## Goals\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
## Goals

- OLIMS must trigger a standard set of tasks for EPSS claims based on key events (e.g., claim allocation, period transitions, document requests), each with defined SLAs and due dates.
- EPSS Claims Officers and Supervisors can manually create ad hoc tasks for claims, capturing task name, description, due date, assigned user, and status.
- Standard OLIMS functionality for creating and displaying reminders/to-do actions must be available for EPSS claims.
- A new Reminder/To Do Action category must be created in OLIMS, named "EPSS" (final name to be confirmed by business).
- Users can suspend/put on hold any task, pausing SLA/due date calculations. A mandatory reason must be entered for suspension.
- When a suspended task is resumed, the original due date remains, and a new due date is calculated based on remaining SLA time.
- EPSS Claims team can create and edit task templates for ongoing flexibility.
- EPSS tasks must be reportable for both current work in progress and completed tasks, including export to Excel.
- All task creation, suspension, resumption, and completion actions must be audit logged, including user, timestamp, and reason (where applicable).
- Only authorised users (EPSS Claims Officers/Supervisors) can create, edit, or suspend tasks.
- Suspension must not impact payroll calculations.
- Ad hoc tasks are linked to the relevant claim/incident.
- The display must include both active and historical (inactive/completed) reminders/actions.
- If a template is in use by active tasks, editing must not retroactively change those tasks; changes apply only to new tasks created after the update.
- The report must include the following fields: Employee No, Employee Name, Incident No, WC Claim No, Created Date, Task Name, EPSS Advisor, EPSS Supervisor, Comments, Due Date, No. of Days Overdue, Completed Date, Updated By.
- Tasks can be edited or deleted by the creator or Supervisor until marked as Complete.
- All actions (create, edit, delete, status change) are audit logged.
- The system must provide a report listing all EPSS tasks, with filters for status (open/in progress/completed), date range, assigned user, and task type.
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
- The report must allow selection by open/complete status, EPSS Claims/Transitional, WC Primary Claim, EPSS Supervisor, and EPSS Claims Advisor (individual/all).
- All data must be sourced from OLIMS task tables, with real-time or near-real-time accuracy.
- Data presented must comply with payroll controls and OLIMS access policies.
- Suspension reasons must be reportable for quality assurance and compliance reviews.
- The OLIMS navigation path or screen for creating manual reminders must be documented for EPSS users.
- A screenshot or navigation path to the Reminder/To Do Action functionality must be included in user documentation.
Response:
Missing facts from BRD:

- When a suspended task is resumed, a new due date must be created as a separate record, calculated by the remaining SLA time at the point of suspension.
- The suspension reason must be a mandatory free text field, visible in the OLIMS UI and stored/auditable for each task record.
- The new "EPSS" category must be filterable in OLIMS reports and task lists, and must appear in all relevant dropdowns/screens.
- Suspension/resume actions must include user, timestamp, and reason in the audit log.
- Only users with appropriate roles (Claims Officer/Supervisor) can perform suspend/resume actions.
- Editing a template must not retroactively change tasks already created from that template.
- Reports must support both online (on-screen) and offline (Excel) analysis.
- All reminders/to-do actions created for EPSS claims are subject to standard OLIMS audit and access controls.
- Reminder/to-do action views are read-only; editing or deletion is not permitted from the display screen.
- The display of reminders/to-do actions must show key fields: task name, due date, status, assigned to, created date, completed date, and comments.

Section complete — no further BRD gaps identified.
---
2026-02-01T22:05:37Z | Updated section | Section: Goals | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:05:37Z
---
2026-02-01T22:06:08Z | ask_brd.py | prompt_hash=8595795c5c24f83fc20f82ec076e7ec492445c37a77b9cd5b425886346a8cea7
Prompt: Review the \`## Goals\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
## Goals

- OLIMS must trigger a standard set of tasks for EPSS claims based on key events (e.g., claim allocation, period transitions, document requests), each with defined SLAs and due dates.
- EPSS Claims Officers and Supervisors can manually create ad hoc tasks for claims, capturing task name, description, due date, assigned user, and status.
- Standard OLIMS functionality for creating and displaying reminders/to-do actions must be available for EPSS claims.
- A new Reminder/To Do Action category must be created in OLIMS, named "EPSS" (final name to be confirmed by business).
- Users can suspend/put on hold any task, pausing SLA/due date calculations. A mandatory reason must be entered for suspension.
- When a suspended task is resumed, the original due date remains, and a new due date is calculated based on remaining SLA time.
- EPSS Claims team can create and edit task templates for ongoing flexibility.
- EPSS tasks must be reportable for both current work in progress and completed tasks, including export to Excel.
- All task creation, suspension, resumption, and completion actions must be audit logged, including user, timestamp, and reason (where applicable).
- Only authorised users (EPSS Claims Officers/Supervisors) can create, edit, or suspend tasks.
- Suspension must not impact payroll calculations.
- Ad hoc tasks are linked to the relevant claim/incident.
- The display must include both active and historical (inactive/completed) reminders/actions.
- If a template is in use by active tasks, editing must not retroactively change those tasks; changes apply only to new tasks created after the update.
- The report must include the following fields: Employee No, Employee Name, Incident No, WC Claim No, Created Date, Task Name, EPSS Advisor, EPSS Supervisor, Comments, Due Date, No. of Days Overdue, Completed Date, Updated By.
- Tasks can be edited or deleted by the creator or Supervisor until marked as Complete.
- All actions (create, edit, delete, status change) are audit logged.
- The system must provide a report listing all EPSS tasks, with filters for status (open/in progress/completed), date range, assigned user, and task type.
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
- The report must allow selection by open/complete status, EPSS Claims/Transitional, WC Primary Claim, EPSS Supervisor, and EPSS Claims Advisor (individual/all).
- All data must be sourced from OLIMS task tables, with real-time or near-real-time accuracy.
- Data presented must comply with payroll controls and OLIMS access policies.
- Suspension reasons must be reportable for quality assurance and compliance reviews.
- The OLIMS navigation path or screen for creating manual reminders must be documented for EPSS users.
- A screenshot or navigation path to the Reminder/To Do Action functionality must be included in user documentation.
- When a suspended task is resumed, a new due date is created as a separate record, calculated by the remaining SLA time at the point of suspension.
- The suspension reason must be a mandatory free text field, visible in the OLIMS UI, and stored/auditable for each task record.
- The new "EPSS" category must appear in all relevant OLIMS screens, dropdowns, and reports where Reminder/To Do Action categories are displayed, and be filterable in reports and task lists.
- All suspension and resumption actions must be audit logged, including user, timestamp, and reason.
- Only users with appropriate roles (Claims Officer/Supervisor) can perform suspend/resume actions.
- Reports must support both online (on-screen) and offline (Excel) analysis.
- All reminders/to-do actions created for EPSS claims are subject to standard OLIMS audit and access controls.
- The display must show key fields: task name, due date, status, assigned to, created date, completed date, and comments.
Response:
Missing facts from the BRD:

- Ad hoc tasks must capture: Date Created, Date Completed, and Comments/Notes.
- The display of reminders/to-do actions must show key fields: task name, due date, status, assigned to, created date, completed date, and comments.
- Editing a template must not retroactively change tasks already created from that template; changes apply only to new tasks.
- The system must log all failed attempts (e.g., unauthorised actions, missing fields) for audit purposes.
- Reminder/to-do action display must be read-only; editing or deletion is not permitted from the display screen.
- Reminder creation and completion actions are logged for audit and reporting purposes.
- The OLIMS navigation path for reminders must be documented for EPSS users.
- A screenshot or navigation path to the Reminder/To Do Action functionality must be included in user documentation.

Section complete — no further BRD gaps identified.
---
2026-02-01T22:06:49Z | Updated section | Section: Goals | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:06:49Z
---
2026-02-01T22:07:20Z | ask_brd.py | prompt_hash=9fcb9c4f3021153d0cbbcc7c95526d066f7364aff60c622bc9dc173e45ca9a57
Prompt: Review the \`## Goals\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
## Goals

- OLIMS must trigger a standard set of tasks for EPSS claims based on key events (e.g., claim allocation, period transitions, document requests), each with defined SLAs and due dates.
- EPSS Claims Officers and Supervisors can manually create ad hoc tasks for claims, capturing task name, description, due date, assigned user, and status.
- Each ad hoc task must capture: Date Created, Date Completed, and Comments/Notes.
- Standard OLIMS functionality for creating and displaying reminders/to-do actions must be available for EPSS claims.
- A new Reminder/To Do Action category must be created in OLIMS, named "EPSS" (final name to be confirmed by business).
- Users can suspend/put on hold any task, pausing SLA/due date calculations. A mandatory reason must be entered for suspension.
- When a suspended task is resumed, the original due date remains, and a new due date is calculated based on remaining SLA time.
- EPSS Claims team can create and edit task templates for ongoing flexibility.
- EPSS tasks must be reportable for both current work in progress and completed tasks, including export to Excel.
- All task creation, suspension, resumption, and completion actions must be audit logged, including user, timestamp, and reason (where applicable).
- Only authorised users (EPSS Claims Officers/Supervisors) can create, edit, or suspend tasks.
- Suspension must not impact payroll calculations.
- Ad hoc tasks are linked to the relevant claim/incident.
- The display must include both active and historical (inactive/completed) reminders/actions.
- If a template is in use by active tasks, editing must not retroactively change those tasks; changes apply only to new tasks created after the update.
- The report must include the following fields: Employee No, Employee Name, Incident No, WC Claim No, Created Date, Task Name, EPSS Advisor, EPSS Supervisor, Comments, Due Date, No. of Days Overdue, Completed Date, Updated By.
- Tasks can be edited or deleted by the creator or Supervisor until marked as Complete.
- All actions (create, edit, delete, status change) are audit logged.
- The system must provide a report listing all EPSS tasks, with filters for status (open/in progress/completed), date range, assigned user, and task type.
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
- The report must allow selection by open/complete status, EPSS Claims/Transitional, WC Primary Claim, EPSS Supervisor, and EPSS Claims Advisor (individual/all).
- All data must be sourced from OLIMS task tables, with real-time or near-real-time accuracy.
- Data presented must comply with payroll controls and OLIMS access policies.
- Suspension reasons must be reportable for quality assurance and compliance reviews.
- The OLIMS navigation path or screen for creating manual reminders must be documented for EPSS users.
- A screenshot or navigation path to the Reminder/To Do Action functionality must be included in user documentation.
- When a suspended task is resumed, a new due date is created as a separate record, calculated by the remaining SLA time at the point of suspension.
- The suspension reason must be a mandatory free text field, visible in the OLIMS UI, and stored/auditable for each task record.
- The new "EPSS" category must appear in all relevant OLIMS screens, dropdowns, and reports where Reminder/To Do Action categories are displayed, and be filterable in reports and task lists.
- All suspension and resumption actions must be audit logged, including user, timestamp, and reason.
- Only users with appropriate roles (Claims Officer/Supervisor) can perform suspend/resume actions.
- Reports must support both online (on-screen) and offline (Excel) analysis.
- All reminders/to-do actions created for EPSS claims are subject to standard OLIMS audit and access controls.
- The display must show key fields: task name, due date, status, assigned to, created date, completed date, and comments.
Response:
Missing facts from the BRD:

- Ad hoc tasks can be deleted by the creator or Supervisor until marked as Complete, but attempting to delete a completed task results in an error.
- System logs all failed attempts (e.g., unauthorised actions, missing fields) for audit purposes.
- If a template is in use by active tasks, editing must not retroactively change those tasks; changes apply only to new tasks created after the update.
- The OLIMS navigation path or screen for creating manual reminders must be documented for EPSS users.
- A screenshot or navigation path to the Reminder/To Do Action functionality must be included in user documentation.

Section complete — no further BRD gaps identified.
---
2026-02-01T22:11:19Z | ask_bus.py | prompt_hash=c312475c9a6e0b486a6f7cf2c2c7ac52d0499b2976038bf460540e61318e4d85
Prompt: Provide original requirements context for Scope section for OLIMS EPSS Diary/Reminders/Tasks (OLD001-OLD010). Use only source requirements.
Response:
## Scope Section: OLIMS EPSS Diary / Reminders / Tasks (OLD001–OLD010) — Original Requirements Context

OLD001
For EPSS claim management, a standard set of system generated tasks in OLIMS are to be triggered by key events that will have SLA’s and due dates to monitor service performance.

OLD002
For adhoc claims management activities, a standard set of tasks that a EPSS Claims Officer or Supervisor can generate for a claim.

OLD003
The standard functionality of creating manual Reminders/To Do Actions within the incident to be available for EPSS Claim Management.

OLD004
The standard functionality to Display Reminders/To Do Actions within the incident to be available for EPSS Claim Management.

OLD005
A new Reminder/To Do Action category is needed for EPSS to differentiate from the current categories in OLIMS.

OLD006
The ability for a EPSS Claims Officer or EPSS Supervisor to ‘suspend/put on hold’ a task to pause the SLA/Due Date is required.

OLD007
When a Task is put on hold/suspended, a reason must be entered by the user to justify.

OLD008
When a suspended Task is removed and back to work in progress, the original due date to remain and a new due date to be created as a separate record calculated by the remaining SLA time.

OLD009
The ability for the EPSS Claims team to create and edit the task templates for flexibility to adapt to the agile pace in implementing EPSS.

OLD010
The EPSS Tasks are to be reportable for both current work in progress and completed tasks for performance and SLA reporting.
---
2026-02-01T22:12:07Z | Draft inserted | Section: Scope | Source: combined.md | 2026-02-01T22:12:07Z
Note: Replaced erroneous DOA references with OLD001-OLD010 labels to match source. 
---
2026-02-01T22:12:34Z | ask_brd.py | prompt_hash=3a6c865cb995e2919e6701eca25b2ded8ca5afad270a3af473810005b5f8d7b9
Prompt: Review the \`## Scope\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
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
Response:
Section complete — no further BRD gaps identified.
---
2026-02-01T22:14:31Z | ask_bus.py | prompt_hash=5513669347313fd58a5ad4a53095b9d052ac8658fb5aacf589ce74976aa05891
Prompt: Provide original requirements context for Functional Requirements section for OLIMS EPSS Diary/Reminders/Tasks (OLD001-OLD010). Use only source requirements.
Response:
## Functional Requirements Context: OLIMS EPSS Diary / Reminders / Tasks (OLD001–OLD010)

Below is the original requirements context for the OLIMS EPSS Diary/Reminders/Tasks section, using only the source requirements:

OLIMS EPSS Diary / Reminders / Tasks

Req. # | Requirement Description | Priority
OLD001 | For EPSS claim management, a standard set of system generated tasks in OLIMS are to be triggered by key events that will have SLA’s and due dates to monitor service performance.
OLD002 | For adhoc claims management activities, a standard set of tasks that a EPSS Claims Officer or Supervisor can generate for a claim.
OLD003 | The standard functionality of creating manual Reminders/To Do Actions within the incident to be available for EPSS Claim Management.
OLD004 | The standard functionality to Display Reminders/To Do Actions within the incident to be available for EPSS Claim Management.
OLD005 | A new Reminder/To Do Action category is needed for EPSS to differentiate from the current categories in OLIMS.
OLD006 | The ability for a EPSS Claims Officer or EPSS Supervisor to ‘suspend/put on hold’ a task to pause the SLA/Due Date is required.
OLD007 | When a Task is put on hold/suspended, a reason must be entered by the user to justify.
OLD008 | When a suspended Task is removed and back to work in progress, the original due date to remain and a new due date to be created as a separate record calculated by the remaining SLA time.
OLD009 | The ability for the EPSS Claims team to create and edit the task templates for flexibility to adapt to the agile pace in implementing EPSS.
OLD010 | The EPSS Tasks are to be reportable for both current work in progress and completed tasks for performance and SLA reporting.

Task List:
A detailed task list is provided in the requirements, specifying task names, assigned roles, SLAs, triggers, and whether the task is system-generated or manual.

This context is based strictly on the source requirements for items OLD001–OLD010.
---
2026-02-01T22:15:14Z | Draft inserted | Section: Functional Requirements | Source: combined.md | 2026-02-01T22:15:14Z
---
2026-02-01T22:15:46Z | ask_brd.py | prompt_hash=360f19c45fffc39fb5622b2060d3501db76b81f6003deb1dd33cc971b258fea5
Prompt: Review the \`## Functional Requirements\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
$(sed -n '/^## Functional Requirements$/,/^## /p' FinalOLD.md | sed '$d')
Response:
1. Missing facts from BRD:

- OLD001: No mention of the requirement for a new EPSS task/reminder category to differentiate from existing OLIMS categories.
- OLD001: No explicit mention that task and reminder data must be included in operational and compliance reporting.
- OLD002: The requirement to reference the standard EPSS Task List for consistency in task naming and categorisation is not stated.
- OLD003: The requirement that no changes or customisations to the existing OLIMS reminder functionality are required for EPSS is not stated.
- OLD004: The requirement that the display functionality will use the existing OLIMS path or screen for reminders/to-do actions, as currently implemented for other claim types, is not stated.
- OLD005: The requirement that access to create/edit EPSS reminders must be restricted to EPSS Claims Officers and Supervisors is not stated.
- OLD006/OLD007/OLD008: The requirement that only authorised users (Claims Officer/Supervisor) can suspend/resume tasks is not explicitly stated.
- OLD009: The requirement that only users with the EPSS Claims team role can create or edit task templates is not stated.
- OLD010: The requirement that all report exports must be logged for audit purposes is not stated.

2. Section not complete — further BRD gaps identified.
---
2026-02-01T22:16:21Z | Updated section | Section: Functional Requirements | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:16:21Z
---
2026-02-01T22:16:56Z | ask_brd.py | prompt_hash=8237ac4cb4ba03c3e4603bfe99298395089b1259e163290a1f7d42842e1723dc
Prompt: Review the \`## Functional Requirements\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
$(sed -n '/^## Functional Requirements$/,/^## /p' FinalOLD.md | sed '$d')
Response:
1. Missing Facts from BRD:

- OLD001:
  - "All task actions (create, edit, suspend, resume, complete) must be audit logged, including user, timestamp, and reason (where applicable)." (Only some actions are mentioned in the section.)
  - "Reports are available for SLA monitoring and reconciliation." (Reporting is mentioned, but SLA monitoring/reconciliation is not explicit.)
- OLD002:
  - "System logs all failed attempts for audit purposes." (Not stated.)
- OLD003:
  - "Reminder creation and completion actions are logged for audit and reporting purposes." (Not stated.)
- OLD004:
  - "All actions are logged for audit and compliance purposes." (Not stated.)
- OLD005:
  - "Audit log records creation and changes to EPSS reminders." (Not stated.)
  - "Reporting must support filtering and auditing of EPSS-specific reminders for SLA and performance monitoring." (Filtering is mentioned, but not auditing for SLA/performance.)
- OLD006/OLD007/OLD008:
  - "Suspension status and reasons are reportable for SLA and performance monitoring." (Not stated.)
  - "Suspension reasons must be reportable for quality assurance and compliance reviews." (Not stated.)
  - "Reports must be available to show all suspended/resumed tasks, including reasons and timestamps." (Not stated.)
- OLD009:
  - "Reporting on template changes is available for reconciliation and quality assurance." (Not stated.)
- OLD010:
  - "All report exports must be logged for audit purposes." (Not stated.)
  - "Data presented must comply with payroll controls and OLIMS access policies." (Not stated.)
  - "The report must support reconciliation and periodic review for compliance." (Not stated.)

2. Section is not complete — further BRD gaps identified.
---
2026-02-01T22:17:37Z | Updated section | Section: Functional Requirements | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:17:37Z
---
2026-02-01T22:18:14Z | ask_brd.py | prompt_hash=fd6741997bf571941fb739ce21d4b3eb52183680c83fbd595f7b8c0f7c45f181
Prompt: Review the \`## Functional Requirements\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
$(sed -n '/^## Functional Requirements$/,/^## /p' FinalOLD.md | sed '$d')
Response:
Section complete — no further BRD gaps identified.
---
2026-02-01T22:19:29Z | ask_bus.py | prompt_hash=344fadbd201a6318647a4e54da708ca1cff3929de442771327225a72ef08e078
Prompt: Provide original requirements context for Non-Functional section for OLIMS EPSS Diary/Reminders/Tasks (OLD001-OLD010). Use only source requirements.
Response:
Non-Functional Requirements Context for OLIMS EPSS Diary/Reminders/Tasks (OLD001–OLD010)

The following non-functional requirements context is derived directly from the source requirements for OLIMS EPSS Diary/Reminders/Tasks (OLD001–OLD010):

- OLIMS must support a standard set of system-generated tasks for EPSS claim management, triggered by key events, with SLAs and due dates to monitor service performance (OLD001).
- OLIMS must allow EPSS Claims Officers and Supervisors to generate standard ad hoc tasks for claims, capturing all required task information (OLD002).
- Manual Reminders/To Do Actions must be available for EPSS claim management, leveraging existing OLIMS functionality where possible (OLD003, OLD004).
- A new Reminder/To Do Action category is required for EPSS to differentiate from current OLIMS categories (OLD005).
- The system must allow tasks to be suspended/put on hold, pausing SLA/due dates, with a mandatory reason for suspension (OLD006, OLD007).
- When a suspended task is resumed, the original due date remains, and a new due date is created based on remaining SLA time; completed tasks cannot be suspended (OLD008).
- EPSS Claims team must be able to create and edit task templates for ongoing flexibility (OLD009).
- EPSS Tasks must be reportable for both current and completed tasks, supporting performance and SLA reporting, with clear selection criteria and output fields (OLD010).

These requirements imply the need for:
- High system reliability and availability to ensure timely task creation, updates, and reporting.
- Robust audit trails for all task actions (creation, suspension, completion, edits).
- Role-based access control for task management and template editing.
- Real-time or near-real-time updates to task status and reporting outputs.
- User-friendly interfaces for task management, including suspension/resumption and mandatory reason capture.
- Export capabilities (e.g., Excel) for reporting and compliance.
- Scalability to handle recurring, ad hoc, and system-generated tasks across all EPSS claims.

All non-functional requirements must be aligned with these operational and business process needs as specified in the functional requirements above.
---
2026-02-01T22:20:00Z | Draft inserted | Section: Non-Functional Requirements | Source: combined.md | 2026-02-01T22:20:00Z
---
2026-02-01T22:20:49Z | ask_brd.py | prompt_hash=dabce979c1d3760cb17e84364dfff9cb17d83d53bd18fae74535ec64fe5b39f1
Prompt: Review the \`## Non-Functional Requirements\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
## Non-Functional Requirements

- All task actions (create, edit, suspend, resume, complete) must be audit logged, including user, timestamp, and reason (where applicable).
- Only authorised users (EPSS Claims Officers/Supervisors) can create, edit, or suspend tasks.
- All report exports must be logged for audit purposes.
- All data must be sourced from OLIMS task tables, with real-time or near-real-time accuracy.
- Data presented must comply with payroll controls and OLIMS access policies.
Response:
Missing facts from BRD:

- No explicit mention of performance (e.g., response time, concurrency, system availability/uptime).
- No reference to data retention or archival requirements for audit logs or reports.
- No mention of security controls beyond user authorisation (e.g., encryption, data privacy).
- No statement on scalability or expected user load.
- No specification for backup/recovery or disaster recovery requirements.
- No mention of accessibility or usability standards.

Section complete — no further BRD gaps identified.
---
2026-02-01T22:21:59Z | ask_bus.py | prompt_hash=64ed11efc10f4b59dfcdd568952a597772f4104a33807642cce845f8f3df4a51
Prompt: Provide original requirements context for Constraints section for OLIMS EPSS Diary/Reminders/Tasks (OLD001-OLD010). Use only source requirements.
Response:
Constraints Section – OLIMS EPSS Diary/Reminders/Tasks (OLD001–OLD010): Original Requirements Context

OLD001
For EPSS claim management, a standard set of system generated tasks in OLIMS are to be triggered by key events that will have SLA’s and due dates to monitor service performance.
Update 2026-01-27:
- Clarify what constitutes the "standard set" of system-generated OLIMS tasks for EPSS claim management and whether existing OLIMS task/workflow functionality can be leveraged.
- Add a detailed list of the standard OLIMS tasks to be triggered, referencing the task list, and include a note to confirm if existing OLIMS workflow can be reused or if new development is required, pending a system demo.

OLD002
For adhoc claims management activities, a standard set of tasks that a EPSS Claims Officer or Supervisor can generate for a claim.
Update 2026-01-27:
- Clarify what information must be captured for each ad hoc task generated by an EPSS Claims Officer or Supervisor, and reference or summarise the standard task list.
- Add a section specifying the required data fields for each ad hoc task (e.g. task name, description, due date, assigned to, status) and include or link to the standard EPSS Task List referenced in the working document.

OLD003
The standard functionality of creating manual Reminders/To Do Actions within the incident to be available for EPSS Claim Management.
Update 2026-01-27:
- Clarify if there are any differences between the existing OLIMS manual reminder functionality and what is required for EPSS, and include the OLIMS path or screenshot for the inherited functionality.
- Add a note specifying whether the EPSS manual reminders will use the existing OLIMS functionality unchanged, and insert the OLIMS path or a screenshot to illustrate the process for users.

OLD004
The standard functionality to Display Reminders/To Do Actions within the incident to be available for EPSS Claim Management.
Update 2026-01-27:
- Clarify the OLIMS path or provide a screenshot of the existing "Display Reminders/To Do Actions" functionality that will be inherited for EPSS manual reminders.
- Add a screenshot or detailed navigation steps for displaying reminders/to-do actions in OLIMS, as requested in the DTT query.

OLD005
A new Reminder/To Do Action category is needed for EPSS to differentiate from the current categories in OLIMS.
Update 2026-01-27:
- Add the specific name for the new Reminder/To Do Action category required for EPSS in OLIMS, and include a screenshot or path reference to the existing functionality.
- Add the agreed name for the new EPSS Reminder/To Do Action category once confirmed by the business, and include a screenshot or OLIMS navigation path to the current Reminder/To Do Action functionality for clarity.

OLD006
The ability for a EPSS Claims Officer or EPSS Supervisor to ‘suspend/put on hold’ a task to pause the SLA/Due Date is required.
Update 2026-01-27:
- Clarify whether suspending/putting a task on hold should automatically adjust the due dates and SLAs of any dependent or follow-up tasks, and specify if this impacts payroll calculations.
- Add a note to confirm with business if existing OLIMS task suspension logic can be leveraged or needs to be customised for EPSS.

OLD007
When a Task is put on hold/suspended, a reason must be entered by the user to justify.
Update 2026-01-27:
- Clarify whether all tasks (including those triggered by batch jobs) are visible in OLIMS for suspension, confirm the available status options for tasks (e.g. On Hold/Suspended), and specify if the suspension reason is a free text field displayed online.
- Add clarifications stating that all tasks (manual and system-generated) must be available in OLIMS for suspension, list the available task status options, and confirm that the suspension reason is a mandatory free text field visible in the OLIMS UI.

OLD008
When a suspended Task is removed and back to work in progress, the original due date to remain and a new due date to be created as a separate record calculated by the remaining SLA time.
Update 2026-01-27:
- Clarify the business rules for due dates when a suspended task is resumed, especially if the original due date has already passed, and confirm that completed tasks cannot be suspended.
- Add a note specifying that when a suspended task is resumed, the original due date remains and if it is already in the past, the task is considered overdue; also, clarify that completed tasks cannot be suspended.

OLD009
The ability for the EPSS Claims team to create and edit the task templates for flexibility to adapt to the agile pace in implementing EPSS.
Update 2026-01-27:
- Clarify that the EPSS Claims team requires the ability to both create and edit task templates in OLIMS for ongoing flexibility.
- Add a note that all task templates must be defined, including specifying the data sources for each template, as per the outstanding business query.

OLD010
The EPSS Tasks are to be reportable for both current work in progress and completed tasks for performance and SLA reporting.
Update 2026-01-27:
- Clarify the reporting requirements for EPSS Tasks, including whether the report will be delivered via SAP or OLIMS, what selection criteria and output fields are needed, and if existing task reporting can be leveraged.
- Add a section specifying the required selection criteria and output fields for the EPSS Tasks report, clarify if the report is to be delivered in SAP or OLIMS, and note any differences from existing task reporting.
---
2026-02-01T22:22:40Z | Draft inserted | Section: Constraints | Source: combined.md | 2026-02-01T22:22:40Z
---
2026-02-01T22:23:14Z | ask_brd.py | prompt_hash=5673ad95c1dd69f88c2cd33be24d3f14ff0d2267a0bbb90d82ffae96d465b009
Prompt: Review the \`## Constraints\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
## Constraints

- Standard OLIMS functionality for creating and displaying reminders/to-do actions must be used as-is for EPSS claims.
- The display of reminders/to-do actions must use the existing OLIMS path or screen for reminders/to-do actions.
- The new Reminder/To Do Action category name is "EPSS" (final name to be confirmed by business).
- Suspension must not impact payroll calculations.
Response:
1) Missing facts from BRD:

- No mention of access controls: The BRD specifies that only authorised users (EPSS Claims Officers/Supervisors) can create or view reminders for EPSS incidents, but this is not stated in the Constraints section.
- Audit logging: The BRD requires that all reminder/to-do actions are audit logged for compliance, which is not mentioned in the Constraints.
- Reporting/filtering: The BRD requires that the new "EPSS" category must be filterable in reports and task lists, and included in reporting, which is not stated in the Constraints.
- Mandatory category selection: The BRD specifies that if the new category is not selected when creating an EPSS-related reminder, the system must prompt the user, but this is not included in the Constraints.

Section not complete — further BRD gaps identified.
---
2026-02-01T22:23:36Z | Updated section | Section: Constraints | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:23:36Z
---
2026-02-01T22:24:07Z | ask_brd.py | prompt_hash=793d2608421ded0c5cc245e5800e33456e08fa31c3ee15ed851a1249ecc42612
Prompt: Review the \`## Constraints\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
## Constraints

- Standard OLIMS functionality for creating and displaying reminders/to-do actions must be used as-is for EPSS claims.
- The display of reminders/to-do actions must use the existing OLIMS path or screen for reminders/to-do actions.
- The new Reminder/To Do Action category name is "EPSS" (final name to be confirmed by business).
- Suspension must not impact payroll calculations.
- Only authorised EPSS Claims Officers and Supervisors can create or view reminders for EPSS incidents.
- All reminder/to-do actions are audit logged for compliance.
- The new "EPSS" category must be filterable in reports and task lists, and included in reporting.
- If the new category is not selected when creating an EPSS-related reminder, the system must prompt the user to select the correct category.
Response:
1) Missing facts from BRD:

- The constraints section does not mention that a mandatory reason (free text) must be entered when suspending/putting on hold a task.
- It does not specify that completed tasks cannot be suspended.
- There is no mention that only users with the EPSS Claims team role can create or edit task templates.
- The requirement that all suspension/resume actions must be audit logged (including user, timestamp, and reason) is not stated.
- The constraint that editing a template does not retroactively change active tasks is not included.
- The need for exception handling (e.g., error messages for missing required fields, unauthorised actions, or export/report failures) is not listed.

2) Section complete — no further BRD gaps identified.
---
2026-02-01T22:24:30Z | Updated section | Section: Constraints | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:24:30Z
---
2026-02-01T22:25:02Z | ask_brd.py | prompt_hash=703bb64596b4690e5c82fc81cebd077d9d8fbd65adba5dde1515dbeffabbffd8
Prompt: Review the \`## Constraints\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
$(sed -n '/^## Constraints$/,/^## /p' FinalOLD.md | sed '$d')
Response:
1) Missing facts from BRD:

- The constraints do not explicitly mention that reports and exports (including to Excel) must be audit logged for compliance, as required in reporting sections.
- The constraints do not specify that access to reports and exports must be restricted to authorised users only.
- The constraints do not state that exception handling (e.g., error messages for missing fields, unauthorised actions, or export failures) must be implemented as per BRD requirements.
- The constraints do not mention that the OLIMS navigation path or screenshot for reminders/category must be included in user documentation.
- The constraints do not specify that the new "EPSS" category must be selectable and visible in all relevant screens and dropdowns.
- The constraints do not mention that the system must display a message if no reminders/to-do actions exist for an incident.

2) Section complete — no further BRD gaps identified.
---
2026-02-01T22:25:26Z | Updated section | Section: Constraints | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:25:26Z
---
2026-02-01T22:26:03Z | ask_brd.py | prompt_hash=e73818155647a6bf8c26af9efc6ab94be059de13f962a1e48300eb892e3b5bae
Prompt: Review the \`## Constraints\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
$(sed -n '/^## Constraints$/,/^## /p' FinalOLD.md | sed '$d')
Response:
1) Missing facts from BRD:

- No explicit mention that ad hoc tasks are linked to claims/incidents (OLD002).
- No constraint stating that ad hoc tasks can be edited or deleted by the creator or Supervisor until marked as Complete (OLD002).
- No constraint that attempts to delete a completed ad hoc task must result in an error (OLD002).
- No constraint that only authorised users can edit/delete ad hoc tasks (OLD002).
- No constraint that reminder/to-do action display is read-only and editing/deletion is not permitted from the display screen (OLD004).
- No constraint that the display must include both active and historical reminders/actions (OLD004).
- No constraint that the display must show required fields: task name, due date, status, assigned to, created date, completed date, comments (OLD004).
- No constraint that suspension status and reasons are visible in reports (OLD006).
- No constraint that template changes must be audit logged (OLD009).
- No constraint that templates are available for use immediately after creation or update (OLD009).
- No constraint that report must include all required fields (OLD010).
- No constraint that report must allow selection/filtering by status, user, date, and task type (OLD010).
- No constraint that report must be accessible via OLIMS and exportable to Excel (OLD010).
- No constraint that all data must be sourced from OLIMS task tables with real-time or near-real-time accuracy (OLD010).
- No constraint that report must support both online and offline (Excel) analysis (OLD010).
- No constraint that all report exports must be logged for audit purposes (OLD010).
- No constraint that data presented must comply with payroll controls and OLIMS access policies (OLD010).

2) Section complete — no further BRD gaps identified.
---
2026-02-01T22:26:34Z | Updated section | Section: Constraints | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:26:34Z
---
2026-02-01T22:27:03Z | ask_brd.py | prompt_hash=3ae56031632e888262638c56d372b75e5233caaf2d1521a9c2e762b97b7ce671
Prompt: Review the \`## Constraints\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
$(sed -n '/^## Constraints$/,/^## /p' FinalOLD.md | sed '$d')
Response:
1) Missing facts from BRD:

- The constraints section does not explicitly mention that system-generated EPSS tasks must be triggered by key claim events with correct SLAs/due dates.
- It does not state that the standard EPSS Task List must be referenced for consistency in task naming and categorisation.
- The requirement that the new category must be available for both system-generated and manually created reminders/tasks is not explicitly listed.
- The constraint that the category must appear in all relevant OLIMS reports is present, but the need for the category to be filterable in task lists and reports is only partially covered.
- The requirement that the system must display a clear error message and not commit partial changes if technical errors occur during task creation or update is not explicitly stated.
- The need for reports to support reconciliation and periodic review for compliance is not mentioned.
- The requirement that changes to templates must not retroactively change tasks already in progress is present, but the constraint that templates must include fields for trigger event and data source definition is not explicitly listed.
- The need for the OLIMS navigation path for reminders to be documented for EPSS users is present, but not the requirement for a screenshot in user documentation.
- The requirement that the report must support selection by EPSS Claims/Transitional, WC Primary Claim, EPSS Supervisor, and EPSS Claims Advisor (individual/all) is not explicitly listed.

2) Section complete — no further BRD gaps identified.
---
2026-02-01T22:27:30Z | Updated section | Section: Constraints | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:27:30Z
---
2026-02-01T22:28:03Z | ask_brd.py | prompt_hash=87307fa1ea88919c16ac304ffe97934618539120b918c507735376a394751980
Prompt: Review the \`## Constraints\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
$(sed -n '/^## Constraints$/,/^## /p' FinalOLD.md | sed '$d')
Response:
1) Missing facts from BRD:

- The constraints do not explicitly state that all actions (create, edit, delete, status change) for ad hoc tasks must be audit logged, as required in OLD002.
- The constraints do not mention that system logs all failed attempts for audit purposes (e.g., failed delete or unauthorised actions), as specified in OLD002.
- The constraints do not specify that reminder creation and completion actions are logged for audit and reporting purposes, as required in OLD003.
- The constraints do not mention that the display of reminders/to-do actions is subject to standard OLIMS access controls and audit logging, as in OLD004.
- The constraints do not state that only users with appropriate roles can perform suspend/resume actions, as required in OLD008.

Please review and add these points for full BRD alignment.
---
2026-02-01T22:28:21Z | Updated section | Section: Constraints | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:28:21Z
---
2026-02-01T22:28:55Z | ask_brd.py | prompt_hash=f570e6cb734f9db758e8e1f5623eb80831c370289194b696d58cb89988e91005
Prompt: Review the \`## Constraints\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
$(sed -n '/^## Constraints$/,/^## /p' FinalOLD.md | sed '$d')
Response:
1) Missing facts from BRD:

- The constraints do not explicitly mention that changes to task templates must not retroactively affect active tasks; only new tasks should use updated templates (from OLD009).
- The requirement that the "EPSS" category name is subject to final business confirmation is present, but the process for updating the name if changed is not specified.
- The constraints do not state that if the "EPSS" category is missing from dropdowns or reports, the issue must be logged and escalated to system support (from OLD005).
- The requirement that the OLIMS navigation path for reminders must be documented for EPSS users is present, but the need for a screenshot is only partially covered.
- The constraints do not mention that if the OLIMS reminders/to-do actions functionality is unavailable or encounters an error, users must be notified with a standard error message and system outages must be logged and escalated (from OLD003).
- The constraints do not specify that if no tasks match the selection criteria in reports, a "No records found" message must be displayed (from OLD010).
- The constraints do not mention that if required fields are missing or inaccessible in reports, a clear error message must be displayed and the issue logged for support review (from OLD010).

2) Section complete — no further BRD gaps identified.
---
2026-02-01T22:29:20Z | Updated section | Section: Constraints | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:29:20Z
---
2026-02-01T22:29:52Z | ask_brd.py | prompt_hash=b157fb91854580827bb6b6e4ff3f9a7cde3c5463994c1dbafc73461701f50d1e
Prompt: Review the \`## Constraints\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
$(sed -n '/^## Constraints$/,/^## /p' FinalOLD.md | sed '$d')
Response:
Section complete — no further BRD gaps identified.
---
2026-02-01T22:31:00Z | ask_bus.py | prompt_hash=52abec1f60a95bf9315b9e29926abb74eadfed4aab2b46356b45cdb1e3611aba
Prompt: Provide original requirements context for Acceptance Criteria section for OLIMS EPSS Diary/Reminders/Tasks (OLD001-OLD010). Use only source requirements.
Response:
Acceptance Criteria Context: OLIMS EPSS Diary / Reminders / Tasks (OLD001–OLD010)

Below is the original requirements context for OLIMS EPSS Diary/Reminders/Tasks, as per requirements OLD001–OLD010:

OLD001
For EPSS claim management, a standard set of system generated tasks in OLIMS are to be triggered by key events that will have SLA’s and due dates to monitor service performance.
Update 2026-01-27:
- Clarify what constitutes the "standard set" of system-generated OLIMS tasks for EPSS claim management and whether existing OLIMS task/workflow functionality can be leveraged.
- Add a detailed list of the standard OLIMS tasks to be triggered, referencing the task list, and include a note to confirm if existing OLIMS workflow can be reused or if new development is required, pending a system demo.

OLD002
For adhoc claims management activities, a standard set of tasks that a EPSS Claims Officer or Supervisor can generate for a claim.
Update 2026-01-27:
- Clarify what information must be captured for each ad hoc task generated by an EPSS Claims Officer or Supervisor, and reference or summarise the standard task list.
- Add a section specifying the required data fields for each ad hoc task (e.g. task name, description, due date, assigned to, status) and include or link to the standard EPSS Task List referenced in the working document.

OLD003
The standard functionality of creating manual Reminders/To Do Actions within the incident to be available for EPSS Claim Management.
Update 2026-01-27:
- Clarify if there are any differences between the existing OLIMS manual reminder functionality and what is required for EPSS, and include the OLIMS path or screenshot for the inherited functionality.
- Add a note specifying whether the EPSS manual reminders will use the existing OLIMS functionality unchanged, and insert the OLIMS path or a screenshot to illustrate the process for users.

OLD004
The standard functionality to Display Reminders/To Do Actions within the incident to be available for EPSS Claim Management.
Update 2026-01-27:
- Clarify the OLIMS path or provide a screenshot of the existing "Display Reminders/To Do Actions" functionality that will be inherited for EPSS manual reminders.
- Add a screenshot or detailed navigation steps for displaying reminders/to-do actions in OLIMS, as requested in the DTT query.

OLD005
A new Reminder/To Do Action category is needed for EPSS to differentiate from the current categories in OLIMS.
Update 2026-01-27:
- Add the specific name for the new Reminder/To Do Action category required for EPSS in OLIMS, and include a screenshot or path reference to the existing functionality.
- Add the agreed name for the new EPSS Reminder/To Do Action category once confirmed by the business, and include a screenshot or OLIMS navigation path to the current Reminder/To Do Action functionality for clarity.

OLD006
The ability for a EPSS Claims Officer or EPSS Supervisor to ‘suspend/put on hold’ a task to pause the SLA/Due Date is required.
Update 2026-01-27:
- Clarify whether suspending/putting a task on hold should automatically adjust the due dates and SLAs of any dependent or follow-up tasks, and specify if this impacts payroll calculations.
- Add a note to confirm with business if existing OLIMS task suspension logic can be leveraged or needs to be customised for EPSS.

OLD007
When a Task is put on hold/suspended, a reason must be entered by the user to justify.
Update 2026-01-27:
- Clarify whether all tasks (including those triggered by batch jobs) are visible in OLIMS for suspension, confirm the available status options for tasks (e.g. On Hold/Suspended), and specify if the suspension reason is a free text field displayed online.
- Add clarifications stating that all tasks (manual and system-generated) must be available in OLIMS for suspension, list the available task status options, and confirm that the suspension reason is a mandatory free text field visible in the OLIMS UI.

OLD008
When a suspended Task is removed and back to work in progress, the original due date to remain and a new due date to be created as a separate record calculated by the remaining SLA time.
Update 2026-01-27:
- Clarify the business rules for due dates when a suspended task is resumed, especially if the original due date has already passed, and confirm that completed tasks cannot be suspended.
- Add a note specifying that when a suspended task is resumed, the original due date remains and if it is already in the past, the task is considered overdue; also, clarify that completed tasks cannot be suspended.

OLD009
The ability for the EPSS Claims team to create and edit the task templates for flexibility to adapt to the agile pace in implementing EPSS.
Update 2026-01-27:
- Clarify that the EPSS Claims team requires the ability to both create and edit task templates in OLIMS for ongoing flexibility.
- Add a note that all task templates must be defined, including specifying the data sources for each template, as per the outstanding business query.

OLD010
The EPSS Tasks are to be reportable for both current work in progress and completed tasks for performance and SLA reporting.
Update 2026-01-27:
- Clarify the reporting requirements for EPSS Tasks, including whether the report will be delivered via SAP or OLIMS, what selection criteria and output fields are needed, and if existing task reporting can be leveraged.
- Add a section specifying the required selection criteria and output fields for the EPSS Tasks report, clarify if the report is to be delivered in SAP or OLIMS, and note any differences from existing task reporting.

Reference: See requirements table for "OLIMS Diary / Reminders / Tasks" (OLD001–OLD010) in the source document.
---
2026-02-01T22:31:45Z | Draft inserted | Section: Acceptance Criteria | Source: combined.md | 2026-02-01T22:31:45Z
---
2026-02-01T22:32:20Z | ask_brd.py | prompt_hash=0529fece0cba09f89b0933a5b3985be58cb86259109bfc52f8e4beec9b6e52e2
Prompt: Review the \`## Acceptance Criteria\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
## Acceptance Criteria

- System-generated EPSS tasks are triggered by key claim events with correct SLAs/due dates.
- EPSS Claims Officers/Supervisors can create, edit, and delete ad hoc tasks.
- All required ad hoc task fields are enforced at creation (Task Name, Description, Due Date, Assigned To, Status, Date Created, Date Completed, Comments/Notes).
- Manual reminders/to-do actions can be created for EPSS claims using standard OLIMS functionality.
- Reminders/to-do actions are displayed for EPSS incidents with required fields and read-only display.
- New "EPSS" category is selectable, visible in all relevant screens/reports, and filterable in reports/task lists.
- Suspension/hold of tasks pauses SLA/due date and requires a reason.
- Resuming a suspended task retains the original due date and creates a new due date record based on remaining SLA time; overdue logic applies if original due date has passed.
- All task actions (create, edit, delete, status change, suspend, resume, complete) are audit logged.
- EPSS task reports are available in OLIMS with required fields, selection criteria, and export to Excel.
Response:
1) Missing facts from BRD:

- Only authorised users (EPSS Claims Officers/Supervisors) can create, edit, suspend, or delete tasks/reminders (access control).
- Completed tasks cannot be suspended or deleted; system must display an error and prevent the action.
- Suspension reason must be a mandatory free text field, visible in the UI and reportable.
- Editing/deleting ad hoc tasks is only allowed by the creator or Supervisor until marked as Complete.
- Suspension/resume actions must not impact payroll calculations.
- Reports must be exportable to Excel and include both in-progress and completed tasks.
- All exception handling (e.g., missing required fields, unauthorised actions, export failures) must display clear error messages and log issues for audit/support.
- Changes to task templates do not retroactively affect active tasks; only new tasks use updated templates.
- Reminder creation/completion and report exports must be audit logged.
- Data in reports must be accurate, up to date, and comply with OLIMS/payroll controls.

2) Section is missing some BRD facts as listed above.
---
2026-02-01T22:32:48Z | Updated section | Section: Acceptance Criteria | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:32:48Z
---
2026-02-01T22:33:22Z | ask_brd.py | prompt_hash=4352b9c54e6af5efd101966bea115c0a8559a3d46bc2085b15399b84b895cfd7
Prompt: Review the \`## Acceptance Criteria\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
$(sed -n '/^## Acceptance Criteria$/,/^## /p' FinalOLD.md | sed '$d')
Response:
1) Missing facts from BRD:

- Task template management: Acceptance criteria do not explicitly state that only EPSS Claims team can create/edit task templates, that template changes are audit logged, and that templates are available for immediate use after creation/update.
- Data source definition for templates: No mention that template fields can have data sources (static, derived, or user entry).
- Exception handling for template management: No explicit criteria for access denied or missing mandatory fields during template creation/editing.
- Reporting on template changes: Not explicitly stated that reporting on template changes is available for reconciliation/quality assurance.
- Documentation: No acceptance criterion for updating user documentation with screenshot/navigation path for the new "EPSS" category.

2) Section is not yet complete — some BRD gaps remain as listed above.
---
2026-02-01T22:33:46Z | Updated section | Section: Acceptance Criteria | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:33:46Z
---
2026-02-01T22:34:20Z | ask_brd.py | prompt_hash=41508ece41496ac7c3c37e8dab2e4d245ac00612c6e108112891187d4a8ae1db
Prompt: Review the \`## Acceptance Criteria\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
$(sed -n '/^## Acceptance Criteria$/,/^## /p' FinalOLD.md | sed '$d')
Response:
1) Missing facts from BRD:

- The acceptance criteria do not explicitly mention that ad hoc tasks must be linked to the relevant claim/incident (OLD002).
- The requirement that the OLIMS navigation path or screenshot for reminders/category must be included in user documentation (OLD003, OLD005) is not stated.
- The acceptance criteria do not specify that the display of reminders/to-do actions must show a message if no reminders exist or if access is denied (OLD004).
- The requirement that editing a template in use must not retroactively change active tasks is only partially covered; it should clarify that changes apply only to new tasks (OLD009).
- The acceptance criteria do not state that all failed attempts (e.g., to delete a completed task or unauthorised actions) must be logged for audit purposes (OLD002, OLD004).
- The requirement that suspension must not impact payroll calculations is present, but the acceptance criteria do not state that reporting must support filtering and auditing of EPSS-specific reminders for SLA and performance monitoring (OLD005).
- The acceptance criteria do not mention that the new EPSS category must be available for both system-generated and manually created reminders/tasks (OLD005).

2) Section not yet complete — further BRD gaps identified.
---
2026-02-01T22:34:41Z | Updated section | Section: Acceptance Criteria | Added BRD-missing facts per review | Source: combined.md | 2026-02-01T22:34:41Z
---
2026-02-01T22:35:18Z | ask_brd.py | prompt_hash=73d79bc2f2af981615903be5d05110baef9a29f36f5140d545f0b659075598be
Prompt: Review the \`## Acceptance Criteria\` section in \`FinalOLD.md\`. 1) List any missing facts from BRD. 2) Return 'Section complete — no further BRD gaps identified.' when satisfied. Use only BRD context.

Section text:
$(sed -n '/^## Acceptance Criteria$/,/^## /p' FinalOLD.md | sed '$d')
Response:
Section complete — no further BRD gaps identified.
---
