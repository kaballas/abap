<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPQ -->

# Off Duty Claims

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPQ001 | The purpose of this report is to produce the details of EPSS off duty claims | M |
| RPQ002 | Selection Criteria:   * Employee No * Duty Type (Off Duty) * Incident No * Claim Status | M |
| RPQ003 | Column Headers:   * Employee No * Duty Type (Off Duty) * Incident No * Date of Disablement * Waiting Period End Date * IP Benefit Start Date * IP Benefit End Date * TAL Claim No * Claim Status * Date Claim Package Sent * Date Claim Package Received * Date Claim Lodged * Date Claim Admitted * EPSS Claims Advisor * EPSS Supervisor | M |
| RPQ004 | Based on the technical solution for off duty, additional fields may need to be added to the report | M |
| RPQ005 | Ability to generate a report of OPEN reminders/tasks due for a day or date range. | M |

## Business Purpose

**Users:** EPSS Claims Officers, EPSS Supervisors, Managers, ODP/TAL coordinators, Finance teams

**Frequency:** On-demand, weekly/monthly reviews

**Business Use:**
RPQ tracks EPSS off-duty claims – workers compensation income protection claims for injuries sustained off-duty (not work-related). Off-duty claims differ from on-duty claims:
- Covered by TAL (TAL Life Limited) insurance policy (not NSWPF workers compensation)
- EPSS supplementary top-up still applies per EPSS policy
- Separate claim and approval workflows through OLIMS Off Duty tab (OLB001)
- TAL claim number tracks insurer case
- Benefit periods and eligibility assessed separately

**Key Business Decisions:**
- Monitor off-duty claim pipeline (pending, lodged, admitted)
- Verify TAL claim forms and documentation complete
- Track benefit eligibility and commencement dates
- Ensure timely claim admission and benefit start
- Monitor EPSS supplementary entitlements for off-duty recipients
- Supervisory oversight of off-duty claim workload

## Key Metrics/Columns

**Primary Columns:** 15 columns per RPQ003
1. Employee No (injured officer)
2. Duty Type (Off Duty – per RPC003 indicates Off Duty vs On Duty)
3. Incident No (identifies the injury incident)
4. Date of Disablement (when injury occurred)
5. Waiting Period End Date (when waiting period expires; 7 or 14 days per TAL policy)
6. IP Benefit Start Date (when income protection benefits commence)
7. IP Benefit End Date (when benefits cease)
8. TAL Claim No (TAL insurer claim identifier)
9. Claim Status (pending, lodged, admitted, approved, closed, etc.)
10. Date Claim Package Sent (when claim forms/documentation sent to TAL)
11. Date Claim Package Received (when TAL acknowledged receipt of claim package)
12. Date Claim Lodged (when formal claim lodged with TAL)
13. Date Claim Admitted (when TAL admits the claim and begins assessment/benefits)
14. EPSS Claims Advisor (claims officer managing claim)
15. EPSS Supervisor (supervisor responsible for claim)

**Optional Fields (per RPQ004 "additional fields may need to be added"):**
- Claim Sub-Status (approved, under review, declined, on hold)
- TAL Decision Date
- EPSS Period Start/End (for EPSS supplementary entitlement)
- Medical Certificate Status
- Return to Work Date/Status

## SAP Field Mappings

| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Employee No | OLIMS | employee_number | Char | 8 | Police officer registration number |
| Duty Type | OLIMS | duty_type | Char | 10 | "Off Duty" (filtered to Off Duty only per RPQ002) |
| Incident No | OLIMS | incident_number | Char | 10 | Off-duty incident identifier |
| Date of Disablement | OLIMS | date_of_disablement | Date | - | When off-duty injury occurred |
| Waiting Period End Date | OLIMS | waiting_period_end_date | Date | - | Expiry of waiting period (usually 7 or 14 days per TAL policy) |
| IP Benefit Start Date | OLIMS | ip_benefit_start_date | Date | - | When TAL income protection begins |
| IP Benefit End Date | OLIMS | ip_benefit_end_date | Date | - | When TAL income protection ends (upon return to work or benefit exhaustion) |
| TAL Claim No | OLIMS | tal_claim_number | Char | 20 | TAL insurer claim identifier |
| Claim Status | OLIMS | claim_status | Char | 20 | Status code (pending, lodged, admitted, approved, closed) [TBC] |
| Date Claim Package Sent | OLIMS | claim_package_sent_date | Date | - | When documentation sent to TAL |
| Date Claim Package Received | OLIMS | claim_package_received_date | Date | - | When TAL confirmed receipt |
| Date Claim Lodged | OLIMS | claim_lodged_date | Date | - | When claim formally lodged with TAL |
| Date Claim Admitted | OLIMS | claim_admitted_date | Date | - | When TAL admitted the claim |
| EPSS Claims Advisor | OLIMS | claims_advisor_id | Char | 8 | Claims officer managing claim [TBC] |
| EPSS Supervisor | OLIMS | supervisor_id | Char | 8 | Supervisor responsible for case [TBC] |

## Selection Criteria & Filters

| Filter | Type | Options | SAP Source | Notes |
|---|---|---|---|---|
| Employee No | **Text** | Single or multiple employee numbers | OLIMS employee_number | Optional per RPQ002; wildcard for partial matches |
| Duty Type | **Fixed** | Off Duty (pre-filtered per RPQ002) | OLIMS duty_type = "Off Duty" | Always filtered to Off Duty; no option to change |
| Incident No | **Text** | Single or multiple incident numbers | OLIMS incident_number | Optional per RPQ002 |
| Claim Status | **Dropdown** | Predefined statuses (Pending, Lodged, Admitted, Approved, Closed) | OLIMS claim_status | Optional per RPQ002; can select multiple |
| No Criteria | **Option** | Allow blank criteria (return all) | OLIMS | When no filters entered, return all off-duty claims |

**Filter Logic:** AND logic across selected criteria. Duty Type always = Off Duty. If all other criteria blank, return all off-duty claims.

## Data Relationships

| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| OLIMS Off Duty Tab | incident_number + claim_id | 1:1 per incident (one off-duty claim per incident) per OLB001 | Filter by employee_number, incident_number, claim_status |
| OLIMS Incident | incident_number | Join to get employee_number, duty_type | Source of incident context |
| OLIMS Employee | employee_number | Join to get employee name, rank, contact info | Optional join for reporting context |
| OLIMS Claims Officer | claims_advisor_id | Join to get claims advisor name | Optional join for officer display |
| OLIMS Supervisor | supervisor_id | Join to get supervisor name | Optional join for supervisor display |
| TAL Interface | tal_claim_number | Lookup to external TAL system (if integrated) | Optional: retrieve TAL claim status/details |

**Data Model Notes:**
- Per OLB001: New Off Duty tab with 1:1 claim per incident
- Off-duty claims managed separately from on-duty EPSS claims
- TAL claim linked to OLIMS incident for coordination
- Benefit dates managed by TAL; EPSS supplementary determined separately

## Calculated Fields

| Field | Formula | Source Fields | Notes |
|---|---|---|---|
| Claim Age (days) | DATEDIFF(TODAY(), date_of_disablement) | date_of_disablement | Days since off-duty injury occurred |
| Days Waiting Period | IF(waiting_period_end_date IS NOT NULL, DATEDIFF(waiting_period_end_date, date_of_disablement), NULL) | date_of_disablement, waiting_period_end_date | Number of days in waiting period (usually 7 or 14) |
| Benefits Active | IF(ip_benefit_start_date IS NOT NULL AND (ip_benefit_end_date IS NULL OR ip_benefit_end_date >= TODAY()), 'Yes', 'No') | ip_benefit_start_date, ip_benefit_end_date | Indicates if benefits currently flowing |
| Days to Admit | IF(claim_admitted_date IS NOT NULL, DATEDIFF(claim_admitted_date, claim_lodged_date), IF(claim_lodged_date IS NOT NULL, DATEDIFF(TODAY(), claim_lodged_date), NULL)) | claim_lodged_date, claim_admitted_date | Days from lodgement to admission (or today if pending) |
| Package Turnaround | IF(claim_package_received_date IS NOT NULL, DATEDIFF(claim_package_received_date, claim_package_sent_date), DATEDIFF(TODAY(), claim_package_sent_date)) | claim_package_sent_date, claim_package_received_date | Days for TAL to receive claim documentation |
| Claim Status Text | CASE WHEN claim_status = 'P' THEN 'Pending' WHEN claim_status = 'L' THEN 'Lodged' WHEN claim_status = 'A' THEN 'Admitted' WHEN claim_status = 'AR' THEN 'Approved' WHEN claim_status = 'C' THEN 'Closed' ELSE claim_status END | claim_status | User-friendly status label |

## Lookups & Code Translations

| Field | Code | Meaning | Source |
|---|---|---|---|
| Duty Type | Off Duty | Injury sustained off-duty (not work-related); covered by TAL | Business rule |
| Claim Status | Pending | Initial claim intake; documentation being prepared | OLIMS [TBC] |
| Claim Status | Lodged | Claim forms/package sent to TAL | OLIMS [TBC] |
| Claim Status | Admitted | TAL has reviewed and admitted the claim | OLIMS [TBC] |
| Claim Status | Approved | TAL benefits approved and scheduled to commence | OLIMS [TBC] |
| Claim Status | Closed | Off-duty claim closed (benefits exhausted or return to work) | OLIMS [TBC] |
| Benefits Active | Yes | Officer currently receiving TAL income protection benefits | Calculated |
| Benefits Active | No | No current benefits (awaiting admission or benefits ended) | Calculated |

**[TBC]:** Confirm actual claim status codes used in OLIMS Off Duty tab.

## Outstanding Items [TBC]

| Item | Impact | Owner | Status |
|---|---|---|---|
| OLIMS Off Duty tab table structure and field names | Data extraction accuracy; mapping to RPQ003 columns | [TBC] OLIMS design | Awaiting OLIMS Off Duty technical specification (OLB001) |
| Claim status codes (Pending, Lodged, Admitted, Approved, Closed) | Accurate filtering and reporting of claim progress | [TBC] OLIMS design | Confirm predefined claim_status values per OLB001 |
| TAL claim linkage and data synchronization | Accurate tracking of TAL claim number and status | [TBC] TAL/OLIMS integration | Confirm integration points: claim number linkage, status updates |
| Waiting period calculation and TAL policy rules | Accurate benefit commencement timing | [TBC] TAL/Business | Confirm waiting period lengths (7, 14 days) and any variations |
| EPSS supplementary entitlement for off-duty claims | Correct EPSS top-up amounts during TAL benefit receipt | [TBC] EPSS policy | Define how EPSS calculates supplementary for off-duty vs on-duty |
| Additional fields per RPQ004 ("additional fields may need to be added") | Complete off-duty claim visibility | [TBC] Business/OLIMS | Confirm which additional fields needed post-Phase 4 implementation |
| Claims advisor and supervisor name mapping | Display friendly names instead of IDs | [TBC] OLIMS design | Confirm HR/OLIMS tables for officer/supervisor lookup |

## Open Questions (Business)

| Question | Related Req(s) | Why it matters |
|---|---|---|
| What are the exact claim status values in OLIMS Off Duty tab? | RPQ003, OLB001 | Needed to configure filtering dropdowns and validate data |
| What SLA targets apply to off-duty claim processing (days to admit, days to approve)? | RPQ001 | Helps identify problematic cases for escalation |
| Should report include TAL claim status (separate from OLIMS status)? | RPQ003, OLB001 | Provides visibility into TAL assessment progress |
| What is the relationship between TAL claim and EPSS supplementary claim? | RPQ001 | Clarifies whether EPSS begins automatically with TAL admission or separately |
| Will there be a separate "TAL Off Duty Claim Forms" report (mentioned in BRD), or is RPQ the primary reporting? | RPQ001 | Clarifies scope and relationship to other off-duty reporting |
| Should report distinguish between waiting period status (before/after) and benefit status? | RPQ003 | May require additional calculated fields |
| What "additional fields may need to be added" per RPQ004 post-technical solution? | RPQ004 | Identifies future enhancements needed |
| What is expected refresh frequency (real-time, daily, weekly)? | RPQ001 | Impacts users' expectations for current data |

## Report Column Sequence

| # | Column | Source | Type | Length | Notes |
|---|---|---|---|---|---|
| 1 | Employee No | OLIMS employee_number | Char | 8 | Police officer with off-duty claim |
| 2 | Duty Type | OLIMS duty_type | Char | 10 | "Off Duty" (fixed filter per RPQ002) |
| 3 | Incident No | OLIMS incident_number | Char | 10 | Off-duty incident identifier |
| 4 | Date of Disablement | OLIMS date_of_disablement | Date | - | When injury occurred (YYYY-MM-DD) |
| 5 | Waiting Period End Date | OLIMS waiting_period_end_date | Date | - | Expiry of waiting period (YYYY-MM-DD); usually 7-14 days |
| 6 | IP Benefit Start Date | OLIMS ip_benefit_start_date | Date | - | When TAL benefits commence (YYYY-MM-DD); may be NULL if claim pending |
| 7 | IP Benefit End Date | OLIMS ip_benefit_end_date | Date | - | When TAL benefits cease (YYYY-MM-DD); NULL if ongoing |
| 8 | TAL Claim No | OLIMS tal_claim_number | Char | 20 | TAL insurer claim reference number |
| 9 | Claim Status | OLIMS claim_status (derived) | Char | 10 | Pending / Lodged / Admitted / Approved / Closed [TBC] |
| 10 | Date Claim Package Sent | OLIMS claim_package_sent_date | Date | - | When documentation sent to TAL (YYYY-MM-DD) |
| 11 | Date Claim Package Received | OLIMS claim_package_received_date | Date | - | When TAL confirmed receipt (YYYY-MM-DD) |
| 12 | Date Claim Lodged | OLIMS claim_lodged_date | Date | - | When claim formally lodged (YYYY-MM-DD) |
| 13 | Date Claim Admitted | OLIMS claim_admitted_date | Date | - | When TAL admitted claim (YYYY-MM-DD) |
| 14 | EPSS Claims Advisor | OLIMS claims_advisor_id / name | Char | 40 | Claims officer managing claim [TBC] ID or name |
| 15 | EPSS Supervisor | OLIMS supervisor_id / name | Char | 40 | Supervisor responsible for claim [TBC] ID or name |

**Export Format:** Excel per RPQ002/RPQ003

**Default Sort:** Date of Disablement (DESC – most recent injuries first), Claim Status (Pending/Lodged first, Closed last), Employee No (ASC)

**Conditional Formatting (recommended):**
- Highlight Claims with Status = "Pending" and > 30 days old in yellow (escalate)
- Highlight Claims with Benefits Active = "Yes" in light green (benefits flowing)
- Highlight Claims with Date Claim Admitted = NULL in orange (awaiting admission)

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.

