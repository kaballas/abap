<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPO -->

# EPSS salary rate overrides

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPO001 | A report to be available within OLIMS to audit any overrides of Period 1, 2 and 3 rates of pay processed by EPSS Claims Officers for ongoing monitoring and quality assurance checks | M |
| RPO002 | Selection Criteria:   * Employee No * Incident No * Last Modified On (date range) * EPSS Claims Advisor | M |
| RPO003 | Column Headers:   * Employee No. * Incident No. * Claim No. * EPSS Period (e.g. Period 1, 2 or 3) * Original Amount * Original Date From * Original Date To * New Amount * New Date From * New Date To * Last Modified By * Last Modified On * Last Modified At * EPSS Claims Advisor * EPSS Supervisor | M |
| RPO004 | For every record created to be displayed as an individual line item | M |
| RPO005 | The report to be exported from SAP to allow the EPSS Claims officer to analyse the information, the preferred option for the team is as an excel file | M |

## Business Purpose

**Users:** EPSS Supervisors, Managers, Quality Assurance teams, Audit teams

**Frequency:** Monthly, ad-hoc for audits

**Business Use:**
RPO is an audit and quality assurance report tracking all manual overrides of EPSS salary rates (ORP, 75% loaded salary) made by claims officers for Periods 1, 2, and 3. Overrides occur when:
- Initial rate calculation is incorrect and needs correction
- Officer's pay increases (rank, increment) need to be reflected
- Retroactive adjustments are required
- Special circumstances (leave without pay, suspension) affect salary calculation

**Key Business Decisions:**
- Monitor claims officer compliance: ensure overrides are justified and approved
- Quality assurance: identify patterns of overrides that may indicate system/process issues
- Audit trail: maintain complete record of who made which change and when
- Supervisory approval: verify supervisor review of significant overrides
- Policy compliance: ensure overrides follow EPSS salary determination rules

## Key Metrics/Columns

**Primary Columns:** 15 columns per RPO003
1. Employee No (officer with EPSS claim)
2. Incident No (injury incident)
3. Claim No (WC or EPSS claim)
4. EPSS Period (Period 1, 2, or 3)
5. Original Amount (original salary rate/ORP)
6. Original Date From (start date of original rate)
7. Original Date To (end date of original rate)
8. New Amount (overridden/new salary rate)
9. New Date From (start date of new rate)
10. New Date To (end date of new rate)
11. Last Modified By (claims officer who made override)
12. Last Modified On (date of override)
13. Last Modified At (timestamp of override)
14. EPSS Claims Advisor (claims officer responsible for claim)
15. EPSS Supervisor (supervisor who approved/oversees claim)

**Audit Fields (recommended):**
- Override Reason (free-text description of why override was needed)
- Approval Status (approved/pending/rejected)
- Supporting Documentation (Y/N flag for evidence)

## SAP Field Mappings

| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Employee No | OLIMS | employee_number | Char | 8 | Police officer registration number |
| Incident No | OLIMS | incident_number | Char | 10 | WC incident identifier |
| Claim No | OLIMS | claim_number | Char | 20 | WC or EPSS claim number |
| EPSS Period | OLIMS | period_override_period | Char | 3 | P1 / P2 / P3 – which period override applies to |
| Original Amount | OLIMS | period_override_original_amount | Num | 10,2 | Original salary rate (AUD per week or as calculated) |
| Original Date From | OLIMS | period_override_original_date_from | Date | - | Start date of original rate |
| Original Date To | OLIMS | period_override_original_date_to | Date | - | End date of original rate |
| New Amount | OLIMS | period_override_new_amount | Num | 10,2 | Overridden salary rate (AUD) |
| New Date From | OLIMS | period_override_new_date_from | Date | - | Start date of new rate |
| New Date To | OLIMS | period_override_new_date_to | Date | - | End date of new rate |
| Last Modified By | OLIMS | last_modified_by | Char | 20 | Claims officer ID who created override [TBC] |
| Last Modified On | OLIMS | last_modified_date | Date | - | Date override was made (YYYY-MM-DD) |
| Last Modified At | OLIMS | last_modified_timestamp | Timestamp | - | Timestamp override was made [TBC] |
| EPSS Claims Advisor | OLIMS | claims_advisor_id | Char | 8 | Claims officer responsible for claim [TBC] |
| EPSS Supervisor | OLIMS | supervisor_id | Char | 8 | Supervisor responsible for case [TBC] |

## Selection Criteria & Filters

| Filter | Type | Options | SAP Source | Notes |
|---|---|---|---|---|
| Employee No | **Text** | Single or multiple employee numbers | OLIMS employee_number | Optional per RPO002; wildcard for partial matches |
| Incident No | **Text** | Single or multiple incident numbers | OLIMS incident_number | Optional per RPO002 |
| Last Modified On | **Date** | Date range (From Date, To Date) | OLIMS last_modified_date | Filter by when override was made |
| EPSS Claims Advisor | **Text/Dropdown** | Single or multiple claims officer IDs | OLIMS claims_advisor_id | Optional per RPO002; filter by officer who made override |
| No Criteria | **Option** | Allow blank criteria (return all) | OLIMS | When no filters entered, return all override records |

**Filter Logic:** AND logic across selected criteria. If all criteria blank, return all override records.

## Data Relationships

| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| OLIMS Period Override Tab | incident_number + override_id | 1:Many; multiple overrides per incident/period possible | Filter by employee_number, incident_number, date range, claims advisor |
| OLIMS Incident | incident_number | Join to get claim_number, employee_number | Source of incident context |
| OLIMS Employee | employee_number | Join to get employee name, rank (optional) | Optional join for reporting context |
| OLIMS Claims Officer | claims_advisor_id | Join to get claims advisor name | Optional join for officer display |
| OLIMS Supervisor | supervisor_id | Join to get supervisor name | Optional join for supervisor display |

**Data Model Notes:**
- Per RPO004: "For every record created to be displayed as an individual line item" – each override is one row
- Multiple overrides can apply to same incident (e.g., different date ranges or different periods)
- Original vs New shows what changed (allows comparison for audit purposes)

## Calculated Fields

| Field | Formula | Source Fields | Notes |
|---|---|---|---|
| Amount Change | new_amount − original_amount | original_amount, new_amount | Dollar difference between original and overridden rate |
| Percent Change | ((new_amount − original_amount) / original_amount) × 100 | original_amount, new_amount | Percentage change for impact analysis |
| Period Text | CASE WHEN period_override_period = 'P1' THEN 'Period 1' WHEN period_override_period = 'P2' THEN 'Period 2' ELSE 'Period 3' END | period_override_period | User-friendly period label |
| Override Type | IF(new_amount > original_amount, 'Increase', 'Decrease') | original_amount, new_amount | Direction of override |
| Days in Effect | IF(period_override_new_date_to IS NOT NULL, DATEDIFF(period_override_new_date_to, period_override_new_date_from), DATEDIFF(TODAY(), period_override_new_date_from)) | period_override_new_date_from, period_override_new_date_to | Number of days new rate was/is in effect |

## Lookups & Code Translations

| Field | Code | Meaning | Source |
|---|---|---|---|
| EPSS Period | P1 | Period 1 (0-39 weeks) | Business rule |
| EPSS Period | P2 | Period 2 (40-91 weeks) | Business rule |
| EPSS Period | P3 | Period 3 (92+ weeks) | Business rule |
| Override Type | Increase | New amount greater than original | Calculated |
| Override Type | Decrease | New amount less than original | Calculated |

## Outstanding Items [TBC]

| Item | Impact | Owner | Status |
|---|---|---|---|
| OLIMS Period Override table structure and field names | Data extraction accuracy; mapping to RPO003 columns | [TBC] OLIMS design | Awaiting OLIMS technical specification for salary override records |
| Period override audit trail storage | Complete audit of what changed and when | [TBC] OLIMS design | Confirm whether historical versions are stored or only latest override |
| OLIMS audit fields (last_modified_by, last_modified_date, last_modified_at) | Audit trail completeness | [TBC] OLIMS design | Awaiting OLIMS audit table documentation |
| Claims advisor and supervisor name mapping | Display friendly names instead of IDs | [TBC] OLIMS design | Confirm HR/OLIMS tables for officer/supervisor lookup |
| Override reason/justification field | Audit trail context and compliance | [TBC] OLIMS design | Confirm if reason/comment field exists and should be included in report |
| Approval workflow for overrides | Quality assurance and compliance tracking | [TBC] OLIMS design | Confirm if supervisor approval is required and tracked per override |
| Integration with salary calculation tables | Accurate reflection of overrides in benefit calculations | [TBC] EPSS/payroll design | Confirm which SAP tables (e.g., ORP, COEP) are updated when override is made |

## Open Questions (Business)

| Question | Related Req(s) | Why it matters |
|---|---|---|
| What are the common reasons for salary rate overrides? | RPO001 | Helps categorize and analyze patterns in overrides |
| Is supervisory approval required for all overrides or only above a certain amount? | RPO002, RPO001 | Affects control framework and risk assessment |
| Should report show the impact of overrides on calculated EPSS payments (e.g., $X difference in benefit)? | RPO001 | Helps assess financial significance of overrides |
| How often are reviews of overrides conducted (monthly, quarterly, annually)? | RPO001 | Helps set report refresh expectations |
| Should report highlight overrides made by specific officers for quality assurance targeted reviews? | RPO002 | Supports targeted audit approach |
| What is the retention period for override history (current only vs. historical)? | RPO001 | Affects data volume and archive strategy |
| Should report include link to supporting documentation (evidence for why override was needed)? | RPO001 | Supports complete audit trail |

## Report Column Sequence

| # | Column | Source | Type | Length | Notes |
|---|---|---|---|---|---|
| 1 | Employee No | OLIMS employee_number | Char | 8 | Police officer with EPSS claim |
| 2 | Incident No | OLIMS incident_number | Char | 10 | WC incident identifier |
| 3 | Claim No | OLIMS claim_number | Char | 20 | WC or EPSS claim number |
| 4 | EPSS Period | OLIMS period_override_period (derived) | Char | 9 | "Period 1" / "Period 2" / "Period 3" |
| 5 | Original Amount | OLIMS period_override_original_amount | Num | 10,2 | AUD; original salary rate |
| 6 | Original Date From | OLIMS period_override_original_date_from | Date | - | Start date (YYYY-MM-DD) |
| 7 | Original Date To | OLIMS period_override_original_date_to | Date | - | End date (YYYY-MM-DD) |
| 8 | New Amount | OLIMS period_override_new_amount | Num | 10,2 | AUD; overridden salary rate |
| 9 | New Date From | OLIMS period_override_new_date_from | Date | - | Start date of new rate (YYYY-MM-DD) |
| 10 | New Date To | OLIMS period_override_new_date_to | Date | - | End date of new rate (YYYY-MM-DD) |
| 11 | Last Modified By | OLIMS last_modified_by | Char | 20 | Claims officer ID who made override [TBC] |
| 12 | Last Modified On | OLIMS last_modified_date | Date | - | Date override was created (YYYY-MM-DD) |
| 13 | Last Modified At | OLIMS last_modified_timestamp | Time | - | Timestamp of override (HH:MM:SS) [TBC] |
| 14 | EPSS Claims Advisor | OLIMS claims_advisor_id / name | Char | 40 | Claims officer responsible for claim [TBC] ID or name |
| 15 | EPSS Supervisor | OLIMS supervisor_id / name | Char | 40 | Supervisor responsible for case [TBC] ID or name |

**Export Format:** Excel per RPO005

**Default Sort:** Last Modified On (DESC – most recent first), Employee No (ASC), Incident No (ASC)

**Conditional Formatting (recommended):**
- Highlight overrides with Amount Change > 10% in yellow (significant changes)
- Highlight decreases (New Amount < Original Amount) in light red
- Highlight increases (New Amount > Original Amount) in light green

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.

