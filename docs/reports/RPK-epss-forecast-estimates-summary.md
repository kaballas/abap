<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPK -->

# EPSS forecast estimates – summary

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPK001 | Purpose of the report is to produce a summary of the estimates entered in the OLIMS – EPSS estimator/forecast tab | M |
| RPK002 | Selection Criteria:   * Date Range: To and From dates * Employee No. * Incident No. * Allow for no criteria to be entered | M |
| RPK003 | Column Headers:   * Financial Year * Quarter No * Employee No * Incident No * Claim No * Period 1 – future no of weeks * Period 1 – forecast payments * Period 2 – future no of weeks * Period 2 – forecast payments * Period 3 – future no of weeks * Period 3 – forecast payments | M |
| RPK004 | The report to be exported from SAP to allow the EPSS Claims officer to analyse the information, the preferred option for the team is as an excel file | M |

## Business Purpose

**Users:** EPSS Claims Officers, EPSS Supervisors, Managers, Finance teams

**Frequency:** On-demand

**Business Use:**
This report provides a summary of all EPSS forecasted estimates entered by claims officers in the OLIMS EPSS estimator/forecast tab. Claims officers use the forecast calculator to estimate EPSS payments and future costs for the next quarter and future quarters based on:
- Ordinary Rate of Pay (ORP)
- Return-to-Work (RTW) capacity and salary
- Workers Compensation payments
- External earnings offsets
- Benefit periods (Period 1, 2, 3)

**Key Business Decisions:**
- Financial planning and budgeting for estimated EPSS liabilities
- Forecasting total estimated costs by financial year and quarter
- Assessing quantum of anticipated payments by period
- Supporting icare recoup report with estimated costs per claim (OLF009)
- Ad-hoc reporting for claim analysis and workload management

## Key Metrics/Columns

**Primary Columns:** 11 columns per RPK003
1. Financial Year (from forecast date)
2. Quarter No (1, 2, 3, 4)
3. Employee No (from incident)
4. Incident No (identifies the injury incident)
5. Claim No (WC or EPSS claim number)
6. Period 1 – future no of weeks (forecast weeks remaining)
7. Period 1 – forecast payments (total estimated P1 payments)
8. Period 2 – future no of weeks (forecast weeks remaining)
9. Period 2 – forecast payments (total estimated P2 payments)
10. Period 3 – future no of weeks (forecast weeks remaining)
11. Period 3 – forecast payments (total estimated P3 payments)

**Additional Audit Fields (recommended for context):**
- Last Modified By (claims officer who entered estimate)
- Last Modified On / At (audit trail)
- Record Status (Active / Inactive per OLF008)

## SAP Field Mappings

| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Financial Year | OLIMS | estimate_date_from | Date | - | Derive FY from estimate date (e.g., Jan-Jun = FY ending Jun 30) |
| Quarter No | OLIMS | estimate_date_from | Date | - | Derive Q from estimate date (Q1=Jul-Sep, Q2=Oct-Dec, Q3=Jan-Mar, Q4=Apr-Jun) |
| Employee No | OLIMS | employee_number | Char | 8 | Police officer registration number |
| Incident No | OLIMS | incident_number | Char | 10 | WC incident identifier |
| Claim No | OLIMS | claim_number | Char | 20 | WC or EPSS claim number |
| Period 1 – future no of weeks | OLIMS | period_1_future_weeks | Num | 3 | Whole number; cannot exceed 39 weeks per OLF005 |
| Period 1 – forecast payments | OLIMS | period_1_forecast_total | Num | 10,2 | Calculation: Period_1_weekly_payment × future_weeks |
| Period 2 – future no of weeks | OLIMS | period_2_future_weeks | Num | 3 | Whole number; cannot exceed 52 weeks per OLF006 |
| Period 2 – forecast payments | OLIMS | period_2_forecast_total | Num | 10,2 | Calculation: Period_2_weekly_payment × future_weeks |
| Period 3 – future no of weeks | OLIMS | period_3_future_weeks | Num | 3 | Whole number; cannot exceed 52 weeks per OLF007 |
| Period 3 – forecast payments | OLIMS | period_3_forecast_total | Num | 10,2 | Calculation: Period_3_weekly_payment × future_weeks |
| Last Modified By | OLIMS | last_modified_by | Char | 20 | [TBC] OLIMS audit field name |
| Last Modified On | OLIMS | last_modified_date | Date | - | [TBC] OLIMS audit field name |

## Selection Criteria & Filters

| Filter | Type | Options | SAP Source | Notes |
|---|---|---|---|---|
| Date Range | **Date** | From Date, To Date | OLIMS estimate_date_from | Filter estimates created/modified within range per OLF002 |
| Employee No | **Text** | Single or multiple employee numbers | OLIMS employee_number | Optional per RPK002; wildcard pattern matching for partial matches |
| Incident No | **Text** | Single or multiple incident numbers | OLIMS incident_number | Optional per RPK002; can filter by WC incident identifier |
| No Criteria | **Option** | Allow blank criteria (return all) | OLIMS | Per RPK002: when no filters entered, return all active estimates |

**Filter Logic:** AND logic applied across all selected criteria. If all criteria blank, return all active estimate records.

## Data Relationships

| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| OLIMS Estimate Tab | incident_number + estimate_id | 1:1 per OLF002; one estimate per incident per period/date range | Filter by employee_number, incident_number, date range |
| OLIMS Incident | incident_number | Join to get employee_number, claim_number | Source of incident context |
| OLIMS Employee | employee_number | Join to get employee name, rank (for optional display) | Optional join for reporting context |

**Data Model Notes:**
- Per OLF002: "one to one relationship of the incident and the forecasted estimate entered in OLIMS"
- Per OLF004: Multiple records can exist for same quarter (e.g., split by WC section s36 vs s37, or capacity upgrades/downgrades)
- Per OLF008: When multiple records per period, totals roll up for reporting purposes
- Estimates are linked to incidents (not claims) but must retrieve claim_number from incident

## Calculated Fields

| Field | Formula | Source Fields | Notes |
|---|---|---|---|
| Financial Year | CASE WHEN month(estimate_date) IN (7,8,9,10,11,12) THEN YEAR(estimate_date) ELSE YEAR(estimate_date)-1 END | estimate_date_from | NSW FY: Jul-Jun; year shown is the end year |
| Quarter No | CASE WHEN month(estimate_date) IN (7,8,9) THEN 1 WHEN month IN (10,11,12) THEN 2 WHEN month IN (1,2,3) THEN 3 ELSE 4 END | estimate_date_from | Q1=Jul-Sep, Q2=Oct-Dec, Q3=Jan-Mar, Q4=Apr-Jun |
| Period 1 – forecast payments | period_1_weekly_payment × period_1_future_weeks | OLF005 calculation | Weekly = ORP − RTW_salary − WC_payment − External_earnings |
| Period 2 – forecast payments | period_2_weekly_payment × period_2_future_weeks | OLF006 calculation | Weekly = 75%_loaded_salary − RTW_salary − WC_payment − External_earnings |
| Period 3 – forecast payments | period_3_weekly_payment × period_3_future_weeks | OLF007 calculation | Weekly = 75%_loaded_salary − RTW_salary − WC_payment − External_earnings |

## Lookups & Code Translations

| Field | Code | Meaning | Source |
|---|---|---|---|
| Record Status | A | Active estimate record | OLIMS |
| Record Status | I | Inactive estimate record (superseded or cancelled) | OLIMS |
| Period | P1 | Period 1 (0-39 weeks) | Business rule per OLF005 |
| Period | P2 | Period 2 (40-91 weeks) | Business rule per OLF006 |
| Period | P3 | Period 3 (92+ weeks) | Business rule per OLF007 |

**Financial Year Display:** Show as "FY2025" (end year) or "2024-25" format per organizational standard [TBC]

## Outstanding Items [TBC]

| Item | Impact | Owner | Status |
|---|---|---|---|
| OLIMS estimate table structure and field names | Data extraction accuracy; mapping to report columns | [TBC] OLIMS design | Awaiting OLIMS technical specification |
| OLIMS audit field names (last_modified_by, last_modified_date) | Audit trail completeness | [TBC] OLIMS design | Awaiting OLIMS audit table documentation |
| Multiple estimate records per incident per period rollup logic | Report accuracy for summary view | [TBC] Business/OLIMS | Per OLF008: clarify rollup method (SUM, LATEST, or split display) |
| Period 1/2/3 weekly payment calculation source | Accurate forecast total calculation | [TBC] OLIMS design | Are calculations stored in table or need to be derived from input fields? |
| Record status / active/inactive flag implementation | Filtering out superseded estimates | [TBC] OLIMS design | Confirm field name and values used for inactive records |
| Financial Year and Quarter display format | Report consistency and usability | [TBC] Business | Clarify FY display format (FY2025 vs 2024-25) and timezone for date derivation |

## Open Questions (Business)

| Question | Related Req(s) | Why it matters |
|---|---|---|
| When multiple estimates exist for same incident/quarter (e.g., split by WC section), should report show all detail rows or aggregate totals? | RPK003, OLF004, OLF008 | Clarifies whether RPK is truly "summary" (aggregate) or detailed list with rollup option |
| Should report include only P1 estimates, or all three periods (P1, P2, P3) on single row? | RPK003, OLF003 | Affects column layout: 11 columns (3 periods) vs expanded (split by period) |
| How are estimates marked inactive/superseded in OLIMS? | OLF008, OLE008 | Needed to filter out cancelled estimates and show audit trail of changes |
| What is the expected refresh frequency for this report (real-time, daily, weekly)? | RPK001 | Impacts users' expectations for currency of forecast data |
| Should report allow drill-down/export to show detail input fields (e.g., ORP, RTW hours, WC payment, External Earnings)? | RPK004, OLF001, OLF002 | Users may need to audit which input assumptions drove the forecast totals |

## Report Column Sequence

| # | Column | Source | Type | Length | Notes |
|---|---|---|---|---|---|
| 1 | Financial Year | OLIMS estimate_date_from (derived) | Char | 6 | Format: "FY2025" or "2024-25" [TBC] |
| 2 | Quarter No | OLIMS estimate_date_from (derived) | Num | 1 | Range: 1-4 |
| 3 | Employee No | OLIMS employee_number | Char | 8 | Police officer registration number |
| 4 | Incident No | OLIMS incident_number | Char | 10 | WC incident identifier |
| 5 | Claim No | OLIMS claim_number | Char | 20 | WC or EPSS claim number linked to incident |
| 6 | Period 1 – future no of weeks | OLIMS period_1_future_weeks | Num | 3 | Whole number; max 39 weeks |
| 7 | Period 1 – forecast payments | OLIMS period_1_forecast_total (calculated) | Num | 10,2 | Currency: AUD; 2 decimal places |
| 8 | Period 2 – future no of weeks | OLIMS period_2_future_weeks | Num | 3 | Whole number; max 52 weeks |
| 9 | Period 2 – forecast payments | OLIMS period_2_forecast_total (calculated) | Num | 10,2 | Currency: AUD; 2 decimal places |
| 10 | Period 3 – future no of weeks | OLIMS period_3_future_weeks | Num | 3 | Whole number; max 52 weeks |
| 11 | Period 3 – forecast payments | OLIMS period_3_forecast_total (calculated) | Num | 10,2 | Currency: AUD; 2 decimal places |

**Export Format:** Excel per RPK004

**Default Sort:** Financial Year (DESC), Quarter No (DESC), Employee No (ASC), Incident No (ASC)

## Assumptions

### Data Sources & System Integration
1. **OLIMS as Primary Source:** Assumes all estimate data (period 1/2/3 weeks and forecast payments) stored in OLIMS custom tables; SAP does NOT contain forecast estimate calculations, only employee/incident/payroll master data
2. **Estimate Table Structure:** Assumes OLIMS has estimate table with fields: incident_number, estimate_id (PK), estimate_date_from, employee_number, claim_number, period_1/2/3_future_weeks, period_1/2/3_forecast_total, last_modified_by, last_modified_date, status
3. **One-to-One Mapping:** Per OLF002 assumes "one to one relationship of the incident and the forecasted estimate"; interpret as at most ONE active estimate per incident per reporting period; if multiple (split by WC section per OLF004), assume they roll up or are shown as separate rows (TBC)
4. **Estimate Date Definition:** Assumes estimate_date_from is the date estimate was created/entered in OLIMS; used to derive Financial Year and Quarter No for reporting
5. **Join to SAP:** Assumes OLIMS incident_number matches SAP INCIDENT field; employee_number matches PA0001.PERNR; claim_number manually maintained or derived in OLIMS from SAP

### Claim Type & Selection Criteria
6. **Claim Number Population:** Assume claim_number in OLIMS is populated for all incidents (may be WC claim or EPSS claim); blank claims handled as "Not yet assigned" or linked to incident only
7. **No Criteria Default:** RPK002 allows "no criteria to be entered"; assume this returns ALL active estimate records from OLIMS (no date range, employee, or incident filter applied)
8. **Active/Inactive Records:** Assume OLIMS has status/flag field to mark estimates as Active (A) or Inactive (I) per OLF008; Report filters to Active only by default; unclear if Inactive are shown on request

### Period & Week Counting
9. **Period Definitions:** Assume periods defined by week count: Period 1 = weeks 0–39 (per OLF005), Period 2 = weeks 40–91 (per OLF006), Period 3 = weeks 92+ (per OLF007); estimates can span multiple periods
10. **Future Weeks Logic:** Assume period_X_future_weeks represents REMAINING weeks in that period as-of estimate date; e.g., if estimate dated week 35, P1 future weeks = 39-35 = 4 weeks remaining
11. **Week Definition:** Assume weeks are payroll weeks (Friday–Thursday or Monday–Sunday per organization standard); unclear if estimate_date_from maps to specific week or is used to calculate remaining weeks

### Salary & Loading Calculations
12. **Forecast Payment Calculation:** Assume period_X_forecast_total = period_X_weekly_payment × period_X_future_weeks; weekly payment values sourced from OLIMS calculation fields (ORP, RTW salary, WC payment, External earnings offsets applied)
13. **Input Fields vs. Stored Totals:** Assume OLIMS stores BOTH input assumptions (ORP, RTW hours, WC payment, External earnings) AND calculated totals (period_X_weekly_payment, period_X_forecast_total); report shows totals only, detail inputs optional (TBC)

### Financial Year & Quarter Calculation
14. **NSW Financial Year:** Assume FY runs Jul–Jun; July = Q1, October = Q2, January = Q3, April = Q4; FY end year used in display (e.g., FY2025 = year ending 30 June 2025)
15. **Display Format:** Assume FY display format (FY2025 vs 2024-25) TBC; default to "FY2025" unless Business specifies otherwise
16. **Timezone Consideration:** Assume estimate_date_from stored in system timezone (likely Sydney); quarter calculation uses month from this date without timezone conversion

### Field Mappings & Missing Implementations
17. **Audit Field Names:** RPC missing confirmation of OLIMS audit field names (last_modified_by, last_modified_date); assume these follow naming convention but exact field names TBC until OLIMS table documented
18. **Record Status Codes:** Assume OLIMS uses A (Active) and I (Inactive) for record status; other codes possible (e.g., D for Deleted, S for Suspended); TBC from OLIMS design
19. **Rollup Logic for Multiple Estimates:** Per OLF004/OLF008 multiple estimates can exist per quarter (split by WC section); assume report shows: (a) separate rows per estimate, or (b) aggregated total per incident/quarter (TBC)
20. **Deposit/Draft Estimates:** Assume all estimates in OLIMS are "committed" entries; TBC whether draft/unsaved estimates included or excluded from report output

### Data Quality & Completeness
21. **Missing Weeks:** If period_X_future_weeks = 0 or blank, assume no forecast for that period; report shows blank or $0.00 (TBC)
22. **Missing Claim Number:** If claim_number blank in OLIMS, report shows blank; assume incident alone is sufficient identifier
23. **Inactive Records Handling:** If estimate marked inactive (status=I), assume filtered out of default view; TBC whether Business Users can opt to see inactive estimates (e.g., "Include Inactive" checkbox)

## Open Questions (Business)

### TIER 1: Confirmed from BRD (No Further Questions Needed)

| BRD Requirement | What We Know | Evidence |
|---|---|---|
| **Report Purpose** | Summarize forecasted estimates entered in OLIMS for financial planning and budgeting | RPK001 explicitly states purpose for Claims Officers and Finance teams |
| **Primary Columns** | 11 columns: FY, Quarter, Employee, Incident, Claim, P1 weeks, P1 payment, P2 weeks, P2 payment, P3 weeks, P3 payment | RPK003 lists exact column headers |
| **Selection Criteria** | Optional Date Range, Employee No, Incident No (no criteria = show all) | RPK002 explicitly allows optional criteria and no-criteria default |
| **Export Format** | Excel preferred for analysis by Claims Officers | RPK004 states "preferred option for team is as an excel file" |
| **Period Definitions** | Period 1 (0-39 weeks), Period 2 (40-91 weeks), Period 3 (92+ weeks) | Per OLF005/OLF006/OLF007 referenced in BRD |
| **Audit Trail** | Multiple records can exist per quarter (OLF004); they roll up (OLF008) | OLF008 clarifies rollup behavior |

### TIER 2: Clarification Needed from Business

| Question | BRD Ref | What's Missing | Impact |
|---|---|---|---|
| **What is the exact OLIMS table structure for forecast estimates?** | RPK001–RPK004, OLF002–OLF008 | BRD requires extracting estimate data (period weeks, forecast payments) but doesn't specify which OLIMS table(s) contain this data or field names | Cannot create data extraction query without table/field specification |
| **How should multiple estimates per incident/quarter be handled?** | RPK003, OLF004, OLF008 | BRD allows multiple estimates per quarter (per OLF004) and requires rollup (OLF008) but doesn't specify: Should report show detail rows (all estimates) or only aggregated totals per incident/quarter? | Affects report output structure and row counts |
| **How are estimates marked as inactive/superseded?** | OLF008, OLE008 | BRD mentions filtering out cancelled/replaced estimates (OLF008) but doesn't specify which field/value indicates status (Active vs Inactive/Cancelled) | Cannot filter correctly if status field/values unknown |
| **What calculation stores Period X weekly payment values?** | RPK001, OLF005–OLF007 | BRD requires period_X_forecast_total = period_X_weekly_payment × future_weeks, but doesn't specify where weekly payment values are stored (in OLIMS calc table? or derived from input fields?) | Cannot populate forecast total columns without knowing calculation source |
| **What are the field names for OLIMS audit trail?** | RPK001 | BRD requires "Last Modified By" and "Last Modified On" columns (recommended per Key Metrics section) but doesn't specify exact OLIMS field names | Cannot extract audit columns without knowing field names |
| **Are estimate records committed or can they be drafts?** | RPK001, RPK002 | BRD doesn't clarify: Should report include draft/unsaved estimates or only committed ones? If included, how are they marked? | Unclear whether report shows all estimates or only finalized ones |

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.

