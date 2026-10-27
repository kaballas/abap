# Functional Specification: RPH005 — OLIMS Reminders / To Do List Overview Report

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust operational oversight of claims management activities. OLIMS (Online Injury Management System) is the central platform for managing incidents, claims, and associated tasks. To ensure compliance, performance monitoring, and effective workload management, a reporting solution is needed to provide an overview of reminders and to-do tasks within OLIMS, including their status, assignment, and completion details.

---

## 2. Scope

This specification covers the requirements for the OLIMS Reminders / To Do List Overview Report (RPH005). The report will enable users to view, filter, and export reminders/tasks by status (open/complete), date range, and assignment. It will support direct navigation to incidents (where possible), and provide all necessary fields for operational and compliance reporting.

---

## 3. Detailed Functional Requirements

- The report must allow selection/filtering by:
  - Task status (open, complete, both)
  - Date or date range (due date, completed date)
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
  - No. of Days Overdue
  - Completed Date
  - Updated By
- The report must support export to Excel.
- Where technically feasible, the report should allow direct navigation to the OLIMS incident from the report output.
- The process for marking tasks complete must update the completed date and user’s employee number.
- All required data fields must be sourced from OLIMS/EPSS/Payroll tables (e.g., ZIM_IN_REM, NOTE_COMP).

---

## 4. Exception Handling

- If technical constraints prevent direct OLIMS navigation from the report, this must be documented and an alternative (e.g., standalone reminders screen) provided.
- If any required data fields are unavailable, the report must flag these as dependencies for technical mapping.
- Errors in export or data retrieval must be logged and surfaced to the user with clear error messages.

---

## 5. Compliance/Controls

- The report supports compliance by providing a full audit trail of reminders/tasks, including assignment, completion, and overdue status.
- Access to the report and underlying data must be restricted to authorised users (EPSS Claims Officers, Supervisors).
- All actions (e.g., marking complete) must be audit-logged with timestamp and user ID.

---

## 6. References and Linked Requirements

- Cross-references: RPH001–RPH007, OLIMS task management, SAP ZIM_IN_REM, related operational reporting requirements (RPF, RPE).
- See also: [EPSS Operational Reporting](#Operational_Reporting), [OLIMS Task List](#Task_List).

---

## 7. Acceptance Criteria

- [ ] Report displays all required fields as specified.
- [ ] Selection/filtering works as described for all criteria.
- [ ] Export to Excel is available and functional.
- [ ] Completed date and user ID are updated and visible when tasks are marked complete.
- [ ] Direct navigation to OLIMS incident is available or documented as not feasible.
- [ ] All data is sourced from correct OLIMS/EPSS/Payroll tables.
- [ ] Access controls and audit logging are in place.
- [ ] Exception handling is implemented for missing data or technical errors.