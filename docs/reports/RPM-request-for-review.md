<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPM -->

# Request for Review

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPM001 | Purpose of the report is to produce a list of in progress and completed reviews entered in the OLIMS “Request for review’ tab for analysis and reporting activities. | M |
| RPM002 | Selection Criteria:   * Employee No. * Incident No. * Received Date * Closed Date * Allow for no criteria to be entered | M |
| RPM003 | Column Headers:   * Employee No * Incident No * Claim No * Type of Review * Query/Complaint/Dispute Type * Other Type – Text- * Requestor * Other Requestor - Text * Date Received * Due Date * Closed Date * Escalation Flag * EPSS Claims Advisor * EPSS Supervisor | M |
| RPM004 | For every record created to be displayed as an individual line item | M |
| RPM005 | The report to be exported from SAP to allow the EPSS Claims officer to analyse the information, the preferred option for the team is as an excel file | M |

## Business Purpose

**Users:** EPSS Claims Officers, EPSS Supervisors, Management, Quality Assurance teams

**Frequency:** On-demand, daily monitoring

**Business Use:**
RPM tracks all review requests submitted by claims officers, supervisors, or external parties through the OLIMS "Request for Review" tab. Review requests include:
- Query/Complaint/Dispute escalations requiring investigation
- Claims under review for various reasons (capacity changes, overpayment investigation, eligibility reassessment)
- Internal quality assurance reviews
- External/third-party requests for case review

**Key Business Decisions:**
- Workload management: identify open (in-progress) reviews requiring action
- SLA monitoring: track due dates and closure dates for performance reporting
- Root cause analysis: identify patterns in review types and dispute sources
- Quality assurance: monitor escalation frequency and review outcomes
- Supervisory oversight: track which officers requested reviews and supervisor approval status

## Key Metrics/Columns

**Primary Columns:** 14 columns per RPM003
1. Employee No (officer whose claim is under review)
2. Incident No (identifies the injury incident)
3. Claim No (WC or EPSS claim)
4. Type of Review (predefined categories)
5. Query/Complaint/Dispute Type (detailed type code)
6. Other Type – Text (free-text when type is "Other")
7. Requestor (who initiated the review request)
8. Other Requestor - Text (free-text if requestor is "Other")
9. Date Received (when review request received)
10. Due Date (SLA due date for completing review)
11. Closed Date (when review was completed/closed)
12. Escalation Flag (Y/N – if escalated to supervisor/manager)
13. EPSS Claims Advisor (claims officer assigned to review)
14. EPSS Supervisor (supervisor overseeing review)

**Additional Audit Fields (recommended):**
- Record Status (Open/Closed/On Hold)
- Days Overdue (calculated)
- Last Modified By / On / At

## SAP Field Mappings

| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Employee No | OLIMS | employee_number | Char | 8 | Police officer registration number |
| Incident No | OLIMS | incident_number | Char | 10 | WC incident identifier |
| Claim No | OLIMS | claim_number | Char | 20 | WC or EPSS claim number |
| Type of Review | OLIMS | review_type | Char | 20 | Review category code [TBC] |
| Query/Complaint/Dispute Type | OLIMS | review_subtype | Char | 20 | Detailed type code [TBC] |
| Other Type – Text | OLIMS | review_subtype_other_text | Varchar | 250 | Free-text description when subtype="Other" |
| Requestor | OLIMS | requestor_type | Char | 20 | Who requested the review [TBC] |
| Other Requestor - Text | OLIMS | requestor_type_other_text | Varchar | 250 | Free-text when requestor="Other" |
| Date Received | OLIMS | review_date_received | Date | - | Date review request was received |
| Due Date | OLIMS | review_due_date | Date | - | SLA due date for review completion |
| Closed Date | OLIMS | review_date_closed | Date | - | Date review was completed/closed |
| Escalation Flag | OLIMS | escalation_flag | Char | 1 | Y/N – escalated to supervisor |
| EPSS Claims Advisor | OLIMS | claims_advisor_id | Char | 8 | Officer ID assigned to conduct/oversee review |
| EPSS Supervisor | OLIMS | supervisor_id | Char | 8 | Supervisor ID responsible for case |

## Selection Criteria & Filters

| Filter | Type | Options | SAP Source | Notes |
|---|---|---|---|---|
| Employee No | **Text** | Single or multiple employee numbers | OLIMS employee_number | Optional per RPM002; wildcard for partial matches |
| Incident No | **Text** | Single or multiple incident numbers | OLIMS incident_number | Optional per RPM002 |
| Received Date | **Date** | From Date, To Date | OLIMS review_date_received | Filter by when review was received |
| Closed Date | **Date** | From Date, To Date | OLIMS review_date_closed | Filter by when review was closed (allows null for open reviews) |
| No Criteria | **Option** | Allow blank criteria (return all) | OLIMS | Per RPM002: when no filters entered, return all review records |

**Filter Logic:** AND logic across selected criteria. If all criteria blank, return all records (both open and closed).

**Special Notes:**
- Closed Date allows NULL (for open reviews still in progress)
- Can filter for "Open" reviews: Received Date populated but Closed Date = NULL

## Data Relationships

| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| OLIMS Request for Review Tab | incident_number + review_id | 1:Many; multiple reviews can exist per incident | Filter by employee_number, incident_number, date ranges |
| OLIMS Incident | incident_number | Join to get claim_number, employee_number | Source of incident context |
| OLIMS Employee | employee_number | Join to get employee name, rank (optional) | Optional join for reporting context |
| OLIMS Claims Officer | claims_advisor_id | Join to get claims advisor name | Optional join for officer display |
| OLIMS Supervisor | supervisor_id | Join to get supervisor name | Optional join for supervisor display |

**Data Model Notes:**
- Per RPM004: "For every record created to be displayed as an individual line item" – each review record is one row
- 1:Many relationship between incidents and reviews (multiple reviews per incident possible)
- Review can be in-progress (Closed Date NULL) or completed (Closed Date populated)

## Calculated Fields

| Field | Formula | Source Fields | Notes |
|---|---|---|---|
| Record Status | IF(review_date_closed IS NULL, 'Open', 'Closed') | review_date_closed | Derived status for filtering/grouping |
| Days Overdue | IF(review_date_closed IS NULL AND review_due_date < TODAY(), TODAY() - review_due_date, 0) | review_due_date, review_date_closed | Calculated only for open, past-due reviews |
| Days to Resolve | IF(review_date_closed IS NOT NULL, review_date_closed - review_date_received, TODAY() - review_date_received) | review_date_closed, review_date_received | Days from received to closed (or today if still open) |

## Lookups & Code Translations

| Field | Code | Meaning | Source |
|---|---|---|---|
| Type of Review | [TBC] | Query | OLIMS review_type code [TBC] |
| Type of Review | [TBC] | Complaint | OLIMS review_type code [TBC] |
| Type of Review | [TBC] | Dispute | OLIMS review_type code [TBC] |
| Query/Complaint/Dispute Type | [TBC] | Overpayment Investigation | OLIMS review_subtype code [TBC] |
| Query/Complaint/Dispute Type | [TBC] | Eligibility Reassessment | OLIMS review_subtype code [TBC] |
| Query/Complaint/Dispute Type | [TBC] | Capacity Change Appeal | OLIMS review_subtype code [TBC] |
| Query/Complaint/Dispute Type | [TBC] | Other | OLIMS review_subtype code [TBC] |
| Requestor | [TBC] | Claims Officer | OLIMS requestor_type code [TBC] |
| Requestor | [TBC] | Supervisor | OLIMS requestor_type code [TBC] |
| Requestor | [TBC] | External Party | OLIMS requestor_type code [TBC] |
| Requestor | [TBC] | Injured Officer | OLIMS requestor_type code [TBC] |
| Requestor | [TBC] | Other | OLIMS requestor_type code [TBC] |
| Escalation Flag | Y | Escalated to supervisor/manager | Boolean indicator |
| Escalation Flag | N | Not escalated | Boolean indicator |

**[TBC]:** Confirm actual code values used in OLIMS for review types, subtypes, and requestor types.

## Outstanding Items [TBC]

| Item | Impact | Owner | Status |
|---|---|---|---|
| OLIMS "Request for Review" tab table structure and field names | Data extraction accuracy; mapping to RPM003 columns | [TBC] OLIMS design | Awaiting OLIMS technical specification for review tab |
| Review type codes and categories (query, complaint, dispute, etc.) | Accurate filtering and reporting of review categories | [TBC] OLIMS design | Confirm predefined values for review_type field |
| Review subtype codes (overpayment, eligibility, capacity, other) | Accurate breakdown by issue type | [TBC] OLIMS design | Confirm review_subtype values and mapping to user-facing labels |
| Requestor type codes (claims officer, supervisor, external, injured officer, other) | Accurate attribution of who initiated review | [TBC] OLIMS design | Confirm requestor_type values and labels |
| Escalation Flag implementation | Identify escalated cases for management oversight | [TBC] OLIMS design | Confirm field name and Y/N vs boolean values |
| OLIMS audit fields (last_modified_by, last_modified_date) | Audit trail completeness | [TBC] OLIMS design | Awaiting OLIMS audit table documentation |
| Claims advisor and supervisor name mapping | Display friendly names instead of IDs | [TBC] OLIMS design | Confirm HR/OLIMS tables for officer/supervisor lookup |

## Open Questions (Business)

| Question | Related Req(s) | Why it matters |
|---|---|---|
| What are the exact predefined "Type of Review" categories? | RPM003 | Needed to populate dropdown filter and validate data |
| Should report default to showing only OPEN reviews, or all (open + closed)? | RPM001, RPM003 | Affects default user experience; open reviews are usually more relevant |
| What is the SLA target for review completion? | RPM003 (Due Date) | Helps set performance expectations and overdue threshold |
| Should escalation cases have higher priority/visual highlighting in report? | RPM003 (Escalation Flag) | Supports supervisory oversight and workload prioritization |
| How should "Other Type – Text" and "Other Requestor - Text" fields be displayed (always visible or only when Type/Requestor = "Other")? | RPM003 | Affects column layout and readability |
| Should report include supervisor approval status or sign-off timestamp? | RPM001 | May be needed for audit trail and SLA verification |
| What is expected refresh frequency (real-time, daily, weekly)? | RPM001 | Impacts users' expectations for currency of review status |

## Report Column Sequence

| # | Column | Source | Type | Length | Notes |
|---|---|---|---|---|---|
| 1 | Employee No | OLIMS employee_number | Char | 8 | Police officer whose claim is under review |
| 2 | Incident No | OLIMS incident_number | Char | 10 | WC incident identifier |
| 3 | Claim No | OLIMS claim_number | Char | 20 | WC or EPSS claim number |
| 4 | Type of Review | OLIMS review_type | Char | 20 | Query / Complaint / Dispute [TBC] |
| 5 | Query/Complaint/Dispute Type | OLIMS review_subtype | Char | 20 | Detailed type code (e.g., Overpayment, Eligibility) [TBC] |
| 6 | Other Type – Text | OLIMS review_subtype_other_text | Varchar | 250 | Free-text when subtype = "Other"; may be blank |
| 7 | Requestor | OLIMS requestor_type | Char | 20 | Claims Officer / Supervisor / External / Injured Officer / Other [TBC] |
| 8 | Other Requestor - Text | OLIMS requestor_type_other_text | Varchar | 250 | Free-text when requestor = "Other"; may be blank |
| 9 | Date Received | OLIMS review_date_received | Date | - | When review request was received (YYYY-MM-DD) |
| 10 | Due Date | OLIMS review_due_date | Date | - | SLA due date for review completion (YYYY-MM-DD) |
| 11 | Closed Date | OLIMS review_date_closed | Date | - | When review was completed; NULL if still open (YYYY-MM-DD) |
| 12 | Escalation Flag | OLIMS escalation_flag | Char | 1 | Y = Escalated to supervisor; N = Not escalated |
| 13 | EPSS Claims Advisor | OLIMS claims_advisor_id / claims_advisor_name | Char | 40 | Claims officer assigned to conduct review [TBC] display ID or name |
| 14 | EPSS Supervisor | OLIMS supervisor_id / supervisor_name | Char | 40 | Supervisor responsible for case [TBC] display ID or name |

**Export Format:** Excel per RPM005

**Default Sort:** Date Received (DESC), Escalation Flag (Y first), Due Date (ASC – show overdue first)

**Conditional Formatting (recommended):**
- Highlight Overdue rows (Closed Date = NULL AND Due Date < TODAY()) in yellow
- Highlight Escalated cases (Escalation Flag = Y) in orange
- Highlight Closed cases (Closed Date NOT NULL) in light gray

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.

