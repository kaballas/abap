<!-- Added 2026-01-20 based on workshop decisions (min_a.md) -->
<!-- Requirement prefix: RPR -->

# Pay-run QA Report – "Not approved to pay" flags

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPR001 | A QA report to be available for each payroll run to provide visibility of active primary EPSS claims where the "Not approved to pay" flag remains set (preventing payment commencement). The report should include claim number, employee number, claim status, flag status, and the reason for non-approval (if available). | M |
| RPR002 | This report is to be delivered to the EPSS team (not payroll) to enable claims officers to monitor and action claims awaiting approval for payment. | M |
| RPR003 | The report should be generated as part of the payroll run process, either via a scheduled job (SM37) or as part of the standard payroll QA reporting suite. Delivery mechanism to be confirmed during UAT. | M |
| RPR004 | This QA report is to operate independently of the standard Workers Compensation payment processing; EPSS claims may remain flagged "Not approved to pay" while workers compensation payments continue. | M |

**Source:** Workshop decision (min_a.md, line 322–348). Flag must be visible in OLIMS for tracking and review purposes to ensure claims are not inadvertently held from payment.

**Related requirements:**
- OLG001 — Period 1 approval control
- OLG002 — Manual approval trigger

## Business Purpose

**Users:** EPSS Claims Officers, EPSS Supervisors, EPSS Management/Team Leaders

**Frequency:** Per payroll run (weekly), ad-hoc for monitoring

**Business Use:**
RPR is a critical QA report for EPSS payment approval control. Per OLG001 and OLH001, EPSS Period 1 and Period 2 payments require manual approval before calculation and payment commence. Claims default to "Not approved to pay" flag and must be explicitly approved by the claims officer.

This report identifies all active EPSS primary claims where the "Not approved to pay" flag remains set, preventing benefit payment. Used to:
- Monitor claims awaiting approval (identify bottlenecks in approval process)
- Ensure claims don't remain stuck in "not approved" status inadvertently
- Track approval status per payroll cycle
- Support supervisory review of pending approvals
- Quality assurance: verify flag status matches business intent

**Key Business Decisions:**
- Approve/release claims for payment after eligibility and documentation review complete
- Identify claims that should be approved but remain flagged (process failures)
- Monitor approval turnaround time (from claim receipt to approval)
- Escalate claims stuck in "not approved" status (risk mitigation)

## Key Metrics/Columns

**Primary Columns (per RPR001):**
1. Employee No (injured officer)
2. Incident No (identifies the injury incident)
3. Claim No (EPSS claim identifier)
4. Claim Status (status code: active, approved, etc.)
5. EPSS Period (Period 1 or Period 2)
6. Not Approved to Pay Flag (Y/N – approval status)
7. Reason for Non-Approval (if available – free-text reason)
8. Date Flag Set (when approval hold was initiated)
9. Date Claim Received (when claim was first created)
10. Days in Not Approved Status (calculated)
11. EPSS Claims Advisor (officer managing claim)
12. EPSS Supervisor (supervisor responsible for claim)

**Optional Fields (recommended):**
- Last Modified By / On / At (audit trail)
- Certificate Status (latest WC certificate status)
- Week Count Status (weeks counting Y/N)

## SAP Field Mappings

| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Employee No | OLIMS | employee_number | Char | 8 | Police officer registration number |
| Incident No | OLIMS | incident_number | Char | 10 | WC incident identifier |
| Claim No | OLIMS | claim_number | Char | 20 | EPSS primary claim number |
| Claim Status | OLIMS | claim_status | Char | 20 | Active, Pending, Closed, etc. [TBC] |
| EPSS Period | OLIMS | epss_period | Char | 3 | P1 (Period 1) or P2 (Period 2) |
| Not Approved to Pay Flag | OLIMS | not_approved_to_pay_flag | Char | 1 | Y = Not approved (payment blocked); N = Approved (can pay) |
| Reason for Non-Approval | OLIMS | not_approved_reason | Varchar | 250 | Free-text reason for approval hold [TBC] |
| Date Flag Set | OLIMS | not_approved_flag_date | Date | - | When not-approved flag was set [TBC] |
| Date Claim Received | OLIMS | claim_received_date | Date | - | When claim was created/received |
| EPSS Claims Advisor | OLIMS | claims_advisor_id | Char | 8 | Claims officer managing claim [TBC] |
| EPSS Supervisor | OLIMS | supervisor_id | Char | 8 | Supervisor responsible for case [TBC] |

## Selection Criteria & Filters

| Filter | Type | Options | SAP Source | Notes |
|---|---|---|---|---|
| Payroll Run Date | **Date** | Specific payroll run date | SAP payroll | Fixed to current payroll period; may filter by date range |
| EPSS Period | **Dropdown** | Period 1, Period 2, Both | OLIMS epss_period | Optional; filter by period |
| Claim Status | **Dropdown** | Active (pre-filtered), All Active/Pending | OLIMS claim_status | Pre-filtered to active claims per RPR001 |
| Not Approved to Pay Flag | **Fixed** | Y (pre-filtered to not-approved only) | OLIMS not_approved_to_pay_flag | Always filtered to flag = Y per report purpose |

**Default Filtering:** Report defaults to:
- Claim Status = Active
- Not Approved to Pay Flag = Y (only show flagged claims)
- For current payroll run date (or date range selected)

## Data Relationships

| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| OLIMS Claim | incident_number + claim_id | Primary source of approval flag and claim status | Filter to active primary EPSS claims with flag = Y |
| OLIMS Incident | incident_number | Join to get employee_number | Source of incident context |
| OLIMS Employee | employee_number | Join to get employee name, rank (optional) | Optional join for reporting context |
| OLIMS Claims Officer | claims_advisor_id | Join to get claims advisor name | Optional join for officer display |
| OLIMS Supervisor | supervisor_id | Join to get supervisor name | Optional join for supervisor display |
| SAP Payroll | Matching employee/claim to payroll run | Link to current payroll cycle | Filter to active claims in current payroll run |

**Data Model Notes:**
- Per OLG001: Flag defaults to "Not approved to pay"; must be explicitly set to approved (N) before payments commence
- Per OLH001: Period 2 also uses same flag control
- Per OLH005: Workers compensation payments continue regardless of EPSS approval status
- Report filters to active claims only (exclude closed claims)

## Calculated Fields

| Field | Formula | Source Fields | Notes |
|---|---|---|---|
| Days in Not Approved Status | DATEDIFF(TODAY(), not_approved_flag_date) | not_approved_flag_date | Number of days flag has been set |
| Days Since Claim Received | DATEDIFF(TODAY(), claim_received_date) | claim_received_date | Days since claim entered system |
| Approval Status Text | IF(not_approved_to_pay_flag = 'Y', 'Not Approved', 'Approved') | not_approved_to_pay_flag | User-friendly status |
| Approval Overdue | IF(not_approved_to_pay_flag = 'Y' AND DATEDIFF(TODAY(), claim_received_date) > 14, 'Yes', 'No') | not_approved_to_pay_flag, claim_received_date | Flags claims pending approval > 14 days [TBC threshold] |

## Lookups & Code Translations

| Field | Code | Meaning | Source |
|---|---|---|---|
| Not Approved to Pay Flag | Y | Payment blocked; claim awaiting approval | OLG001/OLH001 |
| Not Approved to Pay Flag | N | Approved for payment; benefits can be calculated/paid | OLG001/OLH001 |
| EPSS Period | P1 | Period 1 (0-39 weeks) | Business rule |
| EPSS Period | P2 | Period 2 (40-91 weeks) | Business rule |
| Approval Status Text | Not Approved | Awaiting approval; payment blocked | Calculated |
| Approval Status Text | Approved | Approved for payment | Calculated |
| Approval Overdue | Yes | Claim waiting > threshold days for approval | Calculated [TBC threshold] |
| Approval Overdue | No | Within approval timeframe | Calculated |

**[TBC]:** Confirm approval SLA threshold (days from claim receipt to required approval).

## Outstanding Items [TBC]

| Item | Impact | Owner | Status |
|---|---|---|---|
| OLIMS not-approved flag field name, values, and structure | Report accuracy and filtering | [TBC] OLIMS design | Awaiting OLIMS implementation (OLG001/OLH001) |
| Not Approved Reason field (free-text) implementation | Context for why claim is held from payment | [TBC] OLIMS design | Confirm if reason field exists and what values are captured |
| Date Flag Set tracking | Audit trail for approval hold duration | [TBC] OLIMS design | Confirm field exists or if must be derived from audit log |
| Integration with payroll run calendar | Accurate mapping of report to specific payroll cycle | [TBC] Payroll/SAP | Confirm integration points: payroll run date determination |
| Report delivery mechanism (SM37 scheduled job vs. standard QA suite) | Automation of report generation per RPR003 | [TBC] SAP/Payroll | Confirm delivery via scheduled job (SM37) or custom report |
| Approval SLA threshold (days to approve claim) | Identify overdue approvals | [TBC] Business/HSWC | Define SLA for claim approval (e.g., 14 days from receipt) |
| Claims advisor and supervisor name mapping | Display friendly names instead of IDs | [TBC] OLIMS design | Confirm HR/OLIMS tables for officer/supervisor lookup |

## Open Questions (Business)

| Question | Related Req(s) | Why it matters |
|---|---|---|
| What is the target SLA for approving claims (days from receipt to approval)? | RPR001, OLG001, OLH001 | Needed to identify overdue approvals and escalate |
| Should report be generated automatically per payroll run, or on-demand? | RPR003 | Affects delivery mechanism (scheduled job vs. manual run) |
| Should report include only Period 1 claims, or both Period 1 and Period 2? | RPR001, OLG001, OLH001 | Both periods have approval flags; clarify scope |
| Should report highlight claims held for > X days with visual indicator? | RPR001, RPR002 | Helps prioritize approvals for claims officers |
| What approval reasons should be captured (eligibility review pending, medical info awaited, supervisory review, etc.)? | RPR001 | Helps categorize and manage approval bottlenecks |
| Should reverting the flag from approved to not-approved (per OLG001 manager transaction ZRE_CMMGR) be tracked separately? | OLG001, RPR001 | May identify cases of re-flagging and require different handling |
| What is expected refresh frequency (per payroll run, daily, weekly)? | RPR003 | Impacts users' expectations for current data |

## Report Column Sequence

| # | Column | Source | Type | Length | Notes |
|---|---|---|---|---|---|
| 1 | Employee No | OLIMS employee_number | Char | 8 | Police officer with claim under not-approved status |
| 2 | Incident No | OLIMS incident_number | Char | 10 | WC incident identifier |
| 3 | Claim No | OLIMS claim_number | Char | 20 | EPSS primary claim number |
| 4 | Claim Status | OLIMS claim_status | Char | 20 | Active / Pending / Closed (filtered to active per RPR001) [TBC] |
| 5 | EPSS Period | OLIMS epss_period | Char | 9 | "Period 1" or "Period 2" (derived) |
| 6 | Not Approved to Pay Flag | OLIMS not_approved_to_pay_flag (derived) | Char | 10 | "Not Approved" (filtered to Y per RPR001) |
| 7 | Reason for Non-Approval | OLIMS not_approved_reason | Varchar | 250 | Free-text reason for approval hold [TBC] |
| 8 | Date Flag Set | OLIMS not_approved_flag_date | Date | - | When not-approved flag was set (YYYY-MM-DD) [TBC] |
| 9 | Date Claim Received | OLIMS claim_received_date | Date | - | When claim was created/received (YYYY-MM-DD) |
| 10 | Days in Not Approved Status | (calculated) | Num | 4 | DATEDIFF(TODAY(), not_approved_flag_date) |
| 11 | EPSS Claims Advisor | OLIMS claims_advisor_id / name | Char | 40 | Claims officer managing claim [TBC] ID or name |
| 12 | EPSS Supervisor | OLIMS supervisor_id / name | Char | 40 | Supervisor responsible for case [TBC] ID or name |

**Export Format:** Excel (can be imported into SAP for bulk approval via ZRE_CMMGR transaction if needed)

**Default Sort:** Days in Not Approved Status (DESC – show longest-pending first), EPSS Period (P1 first), Employee No (ASC)

**Conditional Formatting (recommended):**
- Highlight rows with Days in Not Approved Status > 14 in red (overdue)
- Highlight rows with Days in Not Approved Status 7-14 in yellow (approaching due date)
- Highlight Period 1 claims in light blue, Period 2 in light green (visual period distinction)

**Notes:**
- Report is specific to payroll QA cycle; filters to active primary EPSS claims only
- Workers compensation payments continue regardless of EPSS approval flag (per OLH005)
- Reverting flag from approved to not-approved is restricted to EPSS managers via ZRE_CMMGR (per OLG001)
- Report delivered to EPSS team, not payroll, for claims officer action (per RPR002)

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.

