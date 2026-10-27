# Functional Specification: RPH007 — OLIMS Reminders / To Do List Overview Report

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust operational oversight of claims management activities. OLIMS (Online Injury Management System) supports reminders and to-do tasks for EPSS Claims Officers and Supervisors. A consolidated overview report is needed to monitor open and completed reminders/tasks, support SLA/KPI tracking, and enable direct follow-up and compliance activities.

---

## 2. Scope

This specification covers the design and delivery of the OLIMS Reminders / To Do List Overview Report (RPH007). The report will provide a consolidated view of reminders/tasks, including open and completed items, with export functionality for offline analysis. It will be accessible to EPSS Claims Officers and Supervisors via OLIMS.

---

## 3. Detailed Functional Requirements

- The report must display both open and completed reminders/tasks, filterable by date range, status, claim type, and assigned officer.
- Selection criteria must include:
    - Open/Complete status
    - EPSS Claims/Transitional
    - WC Primary Claim
    - EPSS Supervisor
    - EPSS Claims Advisor (individual/all)
- Report columns must include:
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
- The report must allow navigation to the OLIMS incident (if technically feasible).
- Task completion must update the completed date and user’s employee number.

---

## 4. Exception Handling

- If required data fields are missing or inaccessible, the report must display a clear error message.
- If technical constraints prevent direct OLIMS navigation, this feature will be omitted and noted in documentation.
- If export fails, users must be notified with troubleshooting steps.

---

## 5. Compliance/Controls

- All report data must respect OLIMS access controls and user permissions.
- Audit trails must be maintained for task completion and updates.
- Exported data must be handled in accordance with NSWPF data security and privacy policies.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- Related requirements: RPH001–RPH006 (reminders/tasks reporting), OLIMS task management modules

---

## 7. Acceptance Criteria

- [ ] Report displays open and completed reminders/tasks with all required columns.
- [ ] Selection criteria function as specified.
- [ ] Export to Excel is available and works as intended.
- [ ] Task completion updates are correctly reflected in the report.
- [ ] Access controls and audit requirements are met.
- [ ] Direct navigation to OLIMS incident is available or documented as not feasible.
- [ ] Error handling is implemented for missing data or export failures.