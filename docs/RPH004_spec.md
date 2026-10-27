# Functional Specification: RPH004 — OLIMS Reminders / To Do List Overview Report

---

## 1. Business Background

The NSW Police Force requires robust operational reporting for the EPSS scheme, including oversight of reminders and tasks managed in OLIMS. The OLIMS Reminders / To Do List Overview Report (RPH004) provides visibility of open and completed reminders/tasks, supporting SLA, KPI, and compliance monitoring for EPSS claims management.

---

## 2. Scope

This specification covers the design and delivery of the OLIMS Reminders / To Do List Overview Report. The report will extract, display, and export reminders/tasks data from OLIMS, supporting selection by status, claim type, and responsible officers. It is intended for use by EPSS Claims Advisors, Supervisors, and management.

---

## 3. Detailed Functional Requirements

- The report must display reminders/tasks from OLIMS, filtered by:
  - Status: Open or Complete (based on ZIM_IN_REM.NOTE_COMP flag)
  - Date or date range (Created Date, Due Date, Completed Date)
  - EPSS Claims/Transitional, WC Primary Claim
  - EPSS Supervisor, EPSS Claims Advisor (individual/all)
- Required report fields:
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
- The report must allow export to Excel.
- The report must support navigation to the OLIMS incident (if technically feasible).
- The completed date and user’s employee number must be updated when a task is marked complete.
- Data sources for each field must be mapped to OLIMS/SAP tables (flag any dependencies).

---

## 4. Exception Handling

- If required data fields are missing or inaccessible, the report must display a clear error message and log the issue for technical review.
- If navigation to OLIMS incident is not technically possible, provide a standalone reminders screen.
- If export to Excel fails, display an error and provide instructions for manual export.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised EPSS users.
- All actions (view, export) must be logged for audit purposes.
- Data must be consistent with payroll and OLIMS records for reconciliation.
- Report output must support compliance and SLA reporting requirements.

---

## 6. References and Linked Requirements

- Cross-references: RPH001, RPH002, RPH003, RPH005, RPH006, RPH007
- Related reports: RPF (Period 1 utilisation), RPE (Detailed EPSS Payment), RPM (Request for Review)
- OLIMS/SAP data mapping dependencies

---

## 7. Acceptance Criteria

- [ ] Report displays all required fields for open and completed reminders/tasks.
- [ ] Selection criteria include status, date range, claim type, and officer.
- [ ] Data sources for all fields are mapped and accessible.
- [ ] Export to Excel is available and functional.
- [ ] Navigation to OLIMS incident is provided or a standalone screen is available.
- [ ] Completed date and user’s employee number update correctly on task completion.
- [ ] Exception handling is implemented for missing data and export errors.
- [ ] Access and audit controls are in place.
- [ ] Report output supports compliance, SLA, and KPI reporting.