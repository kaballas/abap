# Functional Specification: RPH001 — OLIMS Reminders / To Do List Overview Report

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust operational oversight of reminders and tasks managed within OLIMS (Online Injury Management System). Timely completion of reminders and tasks is critical for compliance, service level monitoring, and effective claims management. A dedicated report is needed to provide visibility of all open and completed reminders/tasks, support performance tracking, and enable direct follow-up by EPSS Claims Officers and Supervisors.

---

## 2. Scope

This specification covers the design and delivery of the OLIMS Reminders / To Do List Overview Report. The report will:
- Display open and completed reminders/tasks for a selected date or date range.
- Include selection criteria for filtering by task status, claim type, WC Primary Claim, EPSS Advisor/Supervisor, and more.
- Present all required fields for operational, compliance, and audit purposes.
- Support export to Excel for offline analysis.
- Be accessible to EPSS Claims Officers and Supervisors.

---

## 3. Detailed Functional Requirements

- **RPH001:** Ability to generate a report of OPEN reminders/tasks due for a day or date range. "Open" tasks are identified in OLIMS (e.g., via ZIM_IN_REM where NOTE_COMP is not 'X'). Confirm technical source for open tasks.
- **RPH002:** Ability to generate a report of tasks marked as COMPLETE with a date range for SLA/KPI reporting. "Complete" tasks are identified in OLIMS (e.g., ZIM_IN_REM.NOTE_COMP = 'X').
- **RPH003:** Selection criteria must include:
    - Task status (Open/Complete)
    - EPSS Claims/Transitional
    - WC Primary Claim
    - EPSS Supervisor
    - EPSS Claims Advisor (individual/all)
- **RPH004:** Report fields must include:
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
    - (Specify system/table/field for each, or flag as dependency)
- **RPH005:** Confirm if direct navigation to the OLIMS incident from the report is required or if a standalone reminders screen is sufficient.
- **RPH006:** When a task is marked complete, the completed date and user’s employee number must be updated (audit). Confirm if these fields exist or require new development.
- **RPH007:** The report must include an export to Excel function.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a clear error message and log the issue for follow-up.
- If technical constraints prevent direct OLIMS navigation from the report, provide a standalone reminders screen as fallback.
- If export to Excel fails, display an error and provide instructions for manual data retrieval.

---

## 5. Compliance/Controls

- All actions (creation, completion, update) on reminders/tasks must be audit logged, including user and timestamp.
- Access to the report and underlying data must be restricted to authorised EPSS Claims Officers and Supervisors.
- Report output must be retained in accordance with NSWPF data retention and privacy policies.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- Related requirements: OLD001–OLD010 (OLIMS Diary/Reminders/Tasks), RPF001–RPF005 (Period 1 utilisation summary), RPP001–RPP005 (Document Overview)

---

## 7. Acceptance Criteria

- [ ] Report displays all open reminders/tasks for a selected date or date range.
- [ ] Report displays all completed reminders/tasks for a selected date or date range.
- [ ] All required selection criteria are available and functional.
- [ ] All required report fields are present and correctly populated.
- [ ] Export to Excel is available and produces accurate output.
- [ ] Audit logging is in place for all reminder/task actions.
- [ ] Access controls are enforced.
- [ ] Exception handling is implemented as specified.
- [ ] Technical source for open/complete tasks is confirmed and documented.
- [ ] Direct OLIMS navigation from the report is available or a suitable alternative is provided.