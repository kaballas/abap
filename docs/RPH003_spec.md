# Functional Specification: RPH003 — OLIMS Reminders / To Do List Overview Report

---

## 1. Business Background

The OLIMS Reminders / To Do List Overview Report is required to provide visibility and oversight of reminders and tasks managed within the OLIMS system for EPSS claims administration. This report supports operational management, SLA monitoring, and compliance by enabling EPSS Claims Officers and Supervisors to track open and completed tasks, overdue actions, and user activity.

---

## 2. Scope

This specification covers the design and implementation of the OLIMS Reminders / To Do List Overview Report (RPH003), including selection criteria, report fields, data sources, export functionality, and integration with OLIMS and SAP. The report will be accessible to EPSS Claims Officers, Supervisors, and relevant stakeholders.

---

## 3. Detailed Functional Requirements

- The report must provide selection criteria for:
  - Task status (Open/Complete)
  - EPSS Claims/Transitional
  - WC Primary Claim (Primary/Non-Primary/Both)
  - EPSS Supervisor (individual/all)
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
  - No. of Days Overdue
  - Completed Date
  - Updated By
- The report must allow export to Excel for offline analysis.
- The report must support direct navigation to the OLIMS incident (if technically feasible).
- The report must update the completed date and user’s employee number when a task is marked complete.
- Data sources must be mapped from OLIMS/SAP tables (e.g., ZIM_IN_REM, NOTE_COMP).

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a warning and exclude incomplete records.
- If technical constraints prevent direct OLIMS navigation, a note must be displayed in the report output.
- If export to Excel fails, an error message must be shown with retry instructions.

---

## 5. Compliance/Controls

- Access to the report is restricted to authorised EPSS Claims Officers, Supervisors, and management.
- All actions (e.g., marking tasks complete) are audit logged with timestamp and user ID.
- Exported reports must not contain confidential information beyond the user’s access rights.
- The report supports SLA and KPI monitoring for compliance reporting.

---

## 6. References and Linked Requirements

- Cross-references: RPH001, RPH002, RPH004–RPH007, OLIMS task management requirements, SAP ZIM_IN_REM table, payroll reporting controls.

---

## 7. Acceptance Criteria

- [ ] Report provides all required selection criteria and fields as specified.
- [ ] Report displays both open and completed tasks with correct status.
- [ ] Export to Excel function is available and works as intended.
- [ ] Completed date and user ID are updated and visible when tasks are marked complete.
- [ ] Report supports direct navigation to OLIMS incident or provides a clear note if not feasible.
- [ ] All data sources are mapped and available from OLIMS/SAP.
- [ ] Access controls and audit logging are in place.
- [ ] Exception handling is implemented for missing data and export errors.