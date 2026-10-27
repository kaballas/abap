# Functional Specification: RPH006 — OLIMS Reminders / To Do List Overview Report

---

## 1. Business Background

The OLIMS Reminders / To Do List Overview Report is required to provide visibility and oversight of all reminders and tasks managed within the OLIMS system for EPSS claims administration. This report supports operational management, SLA monitoring, and compliance by enabling claims officers, supervisors, and management to track open and completed tasks, monitor overdue items, and ensure timely completion of claim-related activities.

---

## 2. Scope

This specification covers the design, development, and deployment of the OLIMS Reminders / To Do List Overview Report. The report will extract and display reminders/tasks from OLIMS, supporting selection by status (open/complete), date range, claim type, and responsible officer. It will include all required fields for operational, compliance, and performance reporting, and provide export to Excel functionality.

---

## 3. Detailed Functional Requirements

- The report must allow users to generate a list of open reminders/tasks due for a specific day or date range.
- The report must allow users to generate a list of tasks marked as complete within a specified date range.
- Selection criteria must include:
  - Task status (open/complete)
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
- The report must support direct navigation to the OLIMS incident from the report output (if technically feasible).
- The standard process will ensure that when a claims officer marks a task as complete, the completed date is updated with a timestamp and the user’s employee number.
- The report must include an export to Excel function.

---

## 4. Exception Handling

- If required data fields (e.g., completed date, updated by) do not exist in OLIMS, the report must flag missing data and log the exception for remediation.
- If technical constraints prevent direct navigation to OLIMS incidents from the report, this feature will be omitted and documented.
- If data extraction fails or required fields are unavailable, the report must display an error message and provide guidance for resolution.

---

## 5. Compliance/Controls

- All report data must be sourced from OLIMS, SAP HR, and Payroll tables as per approved access controls.
- Only authorized users (claims officers, supervisors, management) may access the report.
- Audit trails must be maintained for report generation and export activities.
- The report supports compliance with internal SLA, KPI, and quality assurance requirements.

---

## 6. References and Linked Requirements

- Cross-references: RPH001–RPH007, DOA010, DOA012, DOB001–DOB005, P905 retro logic
- OLIMS Reminders / To Do List Overview Report requirements as per EPSS Phase 5 BRD
- [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Report can be generated for open and completed tasks by date range.
- [ ] All required selection criteria and columns are present and correctly populated.
- [ ] Completed date and updated by fields are accurately recorded and displayed.
- [ ] Export to Excel function is available and outputs all report data.
- [ ] Only authorized users can access and export the report.
- [ ] Exception handling is implemented for missing data or technical constraints.
- [ ] Report supports direct navigation to OLIMS incidents (if technically feasible).
- [ ] Audit trail is maintained for report generation and export actions.