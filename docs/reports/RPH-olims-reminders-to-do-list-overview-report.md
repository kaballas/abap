<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPH -->

# OLIMS Reminders / To Do List Overview Report

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPH001 | Ability to generate a report of OPEN reminders/tasks due for a day or date range. | M |
| RPH002 | Ability to generate a report of tasks marked as COMPLETE with a date range for internal SLA and KPI reporting purposes. | M |
| RPH003 | Selection criteria for running reports:   * Open reminders/tasks * Completed tasks * EPSS Claims / EPSS Transitional * WC Primary Claim * EPSS Supervisor * EPSS Claims Advisor (individual or all) | M |
| RPH004 | Fields required in report:   * Employee No * Employee Name * Incident No * WC Claim No * Created Date * Task Name * EPSS Advisor * EPSS Supervisor * Comments * Due Date * No. of Days overdue * Completed date * Updated By | M |
| RPH005 | Ability to click on the task to take the EPSS Claims Officer to the EPSS incident to complete their activities | M |
| RPH006 | Standard process will follow where the claims officer marks the task complete, the completed date is updated with a time stamp and the user’s employee number | M |
| RPH007 | Ability to export reports to Excel for offline analysis and reporting | M |

## Business Purpose

**Primary Users:** EPSS claims officers and supervisors managing task workflows and reminders in OLIMS

**Purpose:** This report provides visibility into task and reminder management across EPSS claims processing. It supports two operational modes:
1. **OPEN Tasks Report** – Tracks open reminders/tasks due within a specified date range to manage workload and ensure timely action
2. **COMPLETED Tasks Report** – Tracks completed tasks within a date range to measure SLA compliance, KPI performance, and claims processing efficiency

**Frequency:** Generated on-demand by claims officers and supervisors throughout the work day; typically reviewed daily for open tasks and periodically (weekly/monthly) for completed tasks metrics

**Source:** OLIMS (Occupational Injury and Liability Management System) task/reminder database

**Business Decisions Supported:**
- Real-time identification of overdue tasks requiring immediate action
- SLA compliance measurement and performance reporting
- Individual and team workload assessment (by Claims Advisor, Supervisor, Claim Type)
- Process improvement through task completion analytics (days to completion, task types, bottlenecks)
- Escalation of overdue or high-risk claims based on task aging
- KPI tracking for claims processing efficiency and timeliness

## Key Metrics/Columns

**Required Columns (per RPH004):**
- **Employee Number** – Unique identifier for the injured worker on the claim
- **Employee Name** – Full name of the injured worker
- **Incident Number** – Work-related incident identifier
- **WC Claim Number** – Workcover claim number
- **Created Date** – Date the task was created
- **Task Name** – Description or title of the task/reminder
- **EPSS Advisor** – Claims officer assigned to the task (individual employee number/name)
- **EPSS Supervisor** – Supervisor of the claims officer
- **Comments** – Notes or comments on the task
- **Due Date** – Date the task is due for completion
- **No. of Days Overdue** – Calculated number of days past due date (if still open)
- **Completed Date** – Date the task was marked complete (blank if still open)
- **Updated By** – Employee number/name of user who last updated or completed the task

**Additional KPIs/Metrics:**
- **Task Status** – Open vs. Completed vs. Overdue
- **Claim Type** – EPSS Claims, EPSS Transitional, WC Primary Claim (per RPH003)
- **Days to Completion** – Total days from created date to completed date (for completed tasks)
- **SLA Compliance Indicator** – Whether task was completed on/before due date
- **Age of Task** – Number of days since creation (for open tasks)

## SAP Field Mappings
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Employee Number | ZIMLTRVAR | PERNR | CHAR | 8 | Employee Number (injured worker) |
| Employee Name | ZIMLTRVAR | ENAME | CHAR | 40 | Formatted Name of Injured Worker |
| Incident Number | ZIMLTRVAR | INCIDENT | CHAR | 10 | Incident Number |
| WC Claim Number | ZIMLTRVAR | CLAIMNO | CHAR | 15 | Workcover Claim Number |
| Created Date | [OLIMS Task Table – TBC] | [TBC] | DATS | 8 | Task creation date |
| Task Name | [OLIMS Task Table – TBC] | [TBC] | CHAR | 80 | Task description or reminder text |
| EPSS Advisor | [OLIMS Task Table – TBC] | [TBC] | CHAR | 8 | Employee number of assigned claims officer |
| EPSS Advisor Name | [OLIMS Task Table – TBC] | [TBC] | CHAR | 40 | Name of assigned claims officer |
| EPSS Supervisor | [OLIMS Task Table – TBC] | [TBC] | CHAR | 8 | Employee number of supervisor |
| EPSS Supervisor Name | [OLIMS Task Table – TBC] | [TBC] | CHAR | 40 | Name of supervisor |
| Comments | [OLIMS Task Table – TBC] | [TBC] | CHAR | 500 | Task comments or notes |
| Due Date | [OLIMS Task Table – TBC] | [TBC] | DATS | 8 | Task due date |
| No. of Days Overdue | [Calculated] | [Calculated] | NUMC | 3 | Days past due date (if open) |
| Completed Date | [OLIMS Task Table – TBC] | [TBC] | DATS | 8 | Task completion date with timestamp |
| Updated By | [OLIMS Task Table – TBC] | [TBC] | CHAR | 8 | Employee number of user who completed task |
| Task Status | [OLIMS Task Table – TBC] | [TBC] | CHAR | 10 | Open, Completed, Overdue |
| Claim Type | [OLIMS Task Table – TBC] | [TBC] | CHAR | 30 | EPSS Claims, EPSS Transitional, WC Primary Claim |

## Selection Criteria & Filters
| Filter | Type | Options | SAP Source |
|---|---|---|---|
| Task Status | Radio Button (required) | Open Reminders/Tasks (RPH001), Completed Tasks (RPH002) | [OLIMS Task Table] |
| Date Range | Date Range (required) | Due Date From / Due Date To (for open), Completion Date From / To (for completed) | [OLIMS Task Table] |
| Claim Type | Dropdown (Multi-select) | EPSS Claims, EPSS Transitional, WC Primary Claim | [OLIMS Task Table] |
| EPSS Claims Advisor | Dropdown (Multi-select) | Individual advisor(s) or All | [OLIMS Task Table] + PA0001.PERNR |
| EPSS Supervisor | Dropdown (Multi-select) | Individual supervisor(s) or All | [OLIMS Task Table] + PA0001.PERNR |
| Overdue Flag (Open Tasks Only) | Checkbox | Include Only Overdue Tasks (Y/N) | [Calculated] |
| Employee Number | Range (Optional) | Single or range of personnel numbers | ZIMLTRVAR.PERNR |
| Incident Number | Range (Optional) | Single or range of incident numbers | ZIMLTRVAR.INCIDENT |

## Data Relationships
| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| [OLIMS Task Table – TBC] | Task_ID, [TBC] | Base table for reminders/tasks | Filter by task status (Open/Completed), date range, claim type, advisor, supervisor |
| ZIMLTRVAR | PERNR, INCIDENT | Join to OLIMS Task Table on [TBC] | Retrieve employee, incident, claim numbers for each task |
| PA0001 | MANDT, PERNR | Join for EPSS Advisor employee data | Retrieve advisor name and employee details |
| PA0001 | MANDT, PERNR | Join for EPSS Supervisor employee data | Retrieve supervisor name and employee details |
| PA0001 | MANDT, PERNR | Join for Updated By user data | Retrieve name of user who completed/updated task |
| [OLIMS Claim Type Master – TBC] | [TBC] | Join to determine claim classification | Map task to claim type (EPSS Claims, Transitional, WC Primary) |

## Calculated Fields
| Field | Formula | Source Fields |
|---|---|---|
| No. of Days Overdue | IF(Task_Status = 'Open' AND TODAY() > Due_Date) THEN DATEDIFF(DAY, Due_Date, TODAY()) ELSE 0 END | Due Date, Current Date, Task Status |
| Task Status | CASE WHEN Completed_Date IS NULL THEN (IF TODAY() > Due_Date THEN 'Overdue' ELSE 'Open' END) ELSE 'Completed' END | Completed Date, Due Date, Current Date |
| Days to Completion | DATEDIFF(DAY, Created_Date, Completed_Date) | Created Date, Completed Date |
| Age of Task | DATEDIFF(DAY, Created_Date, TODAY()) | Created Date, Current Date |
| SLA Compliance Indicator | IF(Task_Status = 'Completed' AND Completed_Date <= Due_Date) THEN 'On Time' ELSE IF(Task_Status = 'Completed' AND Completed_Date > Due_Date) THEN 'Late' ELSE 'Open' END | Completed Date, Due Date, Task Status |
| Days Past Due (for Open Overdue Tasks) | MAX(0, DATEDIFF(DAY, Due_Date, TODAY())) | Due Date, Current Date |
| Completed Date with Timestamp | CONCATENATE(Completed_Date, ' ', Completed_Time) | Completed Date, Completed Time (from system log) |

## Lookups & Code Translations
| Field | Code | Meaning |
|---|---|---|
| Task Status | O | Open – Task created and not yet completed |
| Task Status | C | Completed – Task marked as complete |
| Task Status | OD | Overdue – Task is open and past due date |
| Claim Type | EPSS_C | EPSS Claims – Period 1 or Period 2 EPSS entitlements |
| Claim Type | EPSS_T | EPSS Transitional – Transitional claims for EPSS-eligible officers |
| Claim Type | WC_P | WC Primary Claim – Standard workcover primary claim |
| SLA Compliance | OT | On Time – Task completed on or before due date |
| SLA Compliance | LT | Late – Task completed after due date |
| SLA Compliance | OP | Open – Task not yet completed |
| Task Type | [TBC] | [Standard OLIMS task type codes – e.g., Medical Certificate Review, Payment Approval, etc.] |

## Outstanding Items [TBC]
| Item | Impact | Owner | Status |
|---|---|---|---|
| Confirm OLIMS task/reminder table structure | Data mapping: identify exact OLIMS table name, primary keys, and field names for tasks, reminders, status, dates | SAP Basis / OLIMS Admin | Pending |
| Confirm Completed Date timestamp capture | Data type & format: clarify whether timestamp (date + time) is automatically captured on task completion per RPH006; confirm format for reporting | OLIMS Admin / BI Team | Pending |
| Define hyperlink functionality (RPH005) | Technical implementation: specify how clicking a task should navigate to EPSS incident in OLIMS; requires URL pattern or navigation logic | UI/UX / Application Development | Pending |
| Confirm Excel export capability (RPH007) | Technical implementation: specify whether export to Excel is built into reporting tool or requires custom development | BI / Application Development | Pending |
| Identify task type codes | Data mapping: list all standard OLIMS task types and codes (e.g., Medical Certificate Review, Payment Approval, etc.) for lookups | Business Analyst / OLIMS Admin | Pending |
| Confirm Advisor/Supervisor hierarchy and access control | Business rules: clarify who can filter by which advisors/supervisors (e.g., can supervisors see all their team's tasks, can advisors see only their own) | EPSS Team / IT Security | Pending |

## Open Questions (Business)
| Question | Related Req(s) | Why it matters |
|---|---|---|
| What is the exact structure of the OLIMS task/reminder database? | RPH001–RPH004 | Without understanding the source table(s), field names, and data model, report SQL and filters cannot be designed; blocks report development |
| How are task completion timestamp and user tracking (RPH006) implemented in OLIMS? | RPH006 | Critical for accurate "Completed Date" and "Updated By" capture; affects data quality and SLA measurement accuracy |
| What does "clicking on the task to take the officer to the EPSS incident" entail (RPH005)? | RPH005 | Requires specification of navigation method (URL parameter, OLIMS API call, etc.); affects report design and technical implementation |
| Should the hyperlink be available in both Open and Completed task reports (RPH005)? | RPH005 | Clarifies scope of hyperlink functionality; impacts user workflow when reviewing historical completed tasks |
| What are the SLA thresholds for different task types or claim categories? | RPH001–RPH002 | Needed to define "Days Overdue" logic and "SLA Compliance Indicator"; affects reporting thresholds and alert criteria |
| Can claims officers and supervisors export reports directly to Excel, or does a BI administrator need to generate it (RPH007)? | RPH007 | Determines whether export is end-user functionality or requires IT/BI support; impacts accessibility and frequency of use |
| Should the "No. of Days Overdue" be displayed as a negative number or highlighted for visibility? | RPH001 | Affects UI/UX; negative numbers or color coding may improve visibility of high-risk overdue tasks |
| How should overlapping or related tasks be displayed in the report (e.g., is there a parent-child task hierarchy)? | RPH001–RPH002 | Affects report structure and data grouping; may require additional columns or filtering logic |

## Report Column Sequence
| # | Column | Source | Type |
|---|---|---|---|
| 1 | Employee Number | ZIMLTRVAR.PERNR | CHAR(8) |
| 2 | Employee Name | ZIMLTRVAR.ENAME | CHAR(40) |
| 3 | Incident Number | ZIMLTRVAR.INCIDENT | CHAR(10) |
| 4 | WC Claim Number | ZIMLTRVAR.CLAIMNO | CHAR(15) |
| 5 | Created Date | [OLIMS Task Table].Created_Date | DATS |
| 6 | Task Name | [OLIMS Task Table].Task_Name | CHAR(80) |
| 7 | EPSS Advisor | [OLIMS Task Table].Assigned_Advisor_ID | CHAR(8) |
| 8 | EPSS Advisor Name | PA0001.ENAME (joined on Advisor ID) | CHAR(40) |
| 9 | EPSS Supervisor | [OLIMS Task Table].Supervisor_ID | CHAR(8) |
| 10 | EPSS Supervisor Name | PA0001.ENAME (joined on Supervisor ID) | CHAR(40) |
| 11 | Comments | [OLIMS Task Table].Comments | CHAR(500) |
| 12 | Due Date | [OLIMS Task Table].Due_Date | DATS |
| 13 | No. of Days Overdue | [Calculated] | NUMC(3) |
| 14 | Task Status | [Calculated] | CHAR(10) |
| 15 | Completed Date | [OLIMS Task Table].Completed_Date (with timestamp) | DATS + TIME |
| 16 | Updated By | [OLIMS Task Table].Updated_By_ID | CHAR(8) |
| 17 | Updated By Name | PA0001.ENAME (joined on Updated By ID) | CHAR(40) |
| 18 | Claim Type | [OLIMS Claim Type Master] | CHAR(30) |
| 19 | Age of Task (Days) | [Calculated] | NUMC(4) |
| 20 | SLA Compliance | [Calculated] | CHAR(10) |

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.

