# Functional Specification: RPH002 — OLIMS Reminders / To Do List Overview Report (Completed Tasks)

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust reporting on the completion of reminders and tasks within the OLIMS (Online Injury Management System) to support internal SLA and KPI monitoring for the EPSS (Enhanced Police Support Scheme). Accurate reporting of completed tasks is essential for compliance, performance management, and operational oversight.

---

## 2. Scope

This specification covers the development of a report within OLIMS to display all reminders/tasks marked as COMPLETE within a user-specified date range. The report will support SLA/KPI analysis and must be exportable to Excel. It is limited to tasks/reminders managed in OLIMS for EPSS claims.

---

## 3. Detailed Functional Requirements

- The report must list all reminders/tasks with status COMPLETE, filtered by a user-specified date range.
- Selection criteria must include:
  - Date range for completed date
  - Task status (open/complete)
  - EPSS Claims/Transitional
  - WC Primary Claim
  - EPSS Supervisor
  - EPSS Claims Advisor (individual/all)
- The report must display the following fields:
  - Employee No
  - Employee Name
  - Incident No
  - WC Claim No
  - Created Date
  - Task Name
  - EPSS Advisor
  - EPSS Supervisor
  - Comments
  - Due Date
  - No. of Days overdue
  - Completed date
  - Updated By
- Only tasks with status COMPLETE (e.g., ZIM_IN_REM.NOTE_COMP = 'X') are included.
- The report must be exportable to Excel.
- Data sources and field mappings must be confirmed with technical teams.

---

## 4. Exception Handling

- If no completed tasks are found for the selected date range, the report will display a message: "No completed tasks found for the selected criteria."
- If required fields are missing from OLIMS, the report will flag the missing data and log the issue for remediation.
- If export to Excel fails, an error message will be shown and logged.

---

## 5. Compliance/Controls

- Access to the report is restricted to authorised EPSS Claims Officers, Supervisors, and relevant management.
- All report exports and accesses are logged for audit purposes.
- Data displayed is read-only and does not allow modification of underlying OLIMS records.

---

## 6. References and Linked Requirements

- Cross-references: RPH001 (Open tasks), RPH003–RPH007, OLIMS task management module, ZIM_IN_REM table.
- Related reports: RPH001 (Open Reminders), RPF (Period 1 Utilisation), RPP (Document Overview).

---

## 7. Acceptance Criteria

- [ ] Report lists all completed reminders/tasks within the selected date range.
- [ ] All required fields are displayed as specified.
- [ ] Selection criteria function as described.
- [ ] Only tasks with status COMPLETE are included.
- [ ] Report can be exported to Excel.
- [ ] Access controls and audit logging are in place.
- [ ] Exception handling is implemented for no data and export errors.
- [ ] Data sources and field mappings are confirmed and documented.