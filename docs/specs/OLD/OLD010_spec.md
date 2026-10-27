# Functional Specification: OLD010 — EPSS Tasks Reporting

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