<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPL -->

# EPSS forecast estimates – detailed

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPL001 | Purpose of the report is to produce a detailed extract of the estimates entered in the OLIMS – EPSS estimator/forecast tab | M |
| RPL002 | Selection Criteria:   * Date Range: To and From dates * Employee No. * Incident No. * Allow for no criteria to be entered | M |
| RPL003 | Column Headers:   * Financial Year * Quarter No * Employee No * Incident No * Claim No * All Period 1 fields * All Period 2 fields * All Period 3 fields | M |
| RPL004 | For every record created to be displayed as an individual line item | M |
| RPL005 | The report to be exported from SAP to allow the EPSS Claims officer to analyse the information, the preferred option for the team is as an excel file | M |

## Business Purpose

**Users:** EPSS Claims Officers, EPSS Supervisors, Finance teams, Managers

**Frequency:** On-demand

**Business Use:**
RPL is the detailed version of the forecast estimates report, providing claims officers complete visibility into all input assumptions and calculations for EPSS payment forecasts. Unlike RPK (summary), RPL shows every input field used to calculate Period 1, 2, and 3 forecasts:
- Ordinary Rate of Pay (ORP) and loaded salary rates
- Return-to-Work capacity assumptions (hours/week and corresponding salary)
- Workers Compensation offsets
- External earnings impacts
- Weekly and total forecast payment calculations
- Per OLF004: supports records split by WC section or capacity changes (each shown as separate line item)

**Key Business Decisions:**
- Audit assumptions driving forecast totals (validate reasonableness of ORP, RTW hours, WC, external earnings)
- Identify which WC sections (e.g., s36 vs s37) or capacity changes (upgrade/downgrade) drove the estimates
- Verify calculations step-by-step for compliance and quality assurance
- Support icare recoup manual adjustments by showing detailed input data per claim
- Financial planning with full transparency on forecast components

## Key Metrics/Columns

**Primary Columns:** 28 columns per RPL003
- Identifier: Financial Year, Quarter No, Employee No, Incident No, Claim No (5 columns)
- **Period 1 Detail Fields (10 columns per OLF005):**
  - ORP (weekly), Hourly salary rate, RTW hours (weekly), RTW salary (weekly)
  - WC payment (weekly), External Earnings (weekly)
  - Period 1 payment (weekly) – calculated
  - Future # of weeks (Period 1), Forecast Period 1 payments (total) – calculated
- **Period 2 Detail Fields (10 columns per OLF006):**
  - 75% of loaded base salary (weekly), Hourly salary rate, RTW hours (weekly), RTW salary (weekly)
  - WC payment (weekly), External Earnings (weekly)
  - Period 2 payment (weekly) – calculated
  - Future # of weeks (Period 2), Forecast Period 2 payments (total) – calculated
- **Period 3 Detail Fields (10 columns per OLF007):**
  - 75% of loaded base salary (weekly), Hourly salary rate, RTW hours (weekly), RTW salary (weekly)
  - WC payment (weekly), External Earnings (weekly)
  - Period 3 payment (weekly) – calculated
  - Future # of weeks (Period 3), Forecast Period 3 payments (total) – calculated

**Additional Audit Fields (recommended):**
- Record ID (unique identifier for each estimate record)
- Last Modified By, Last Modified On / At (audit trail)
- Record Status (Active / Inactive)

## SAP Field Mappings

| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Financial Year | OLIMS | estimate_date_from | Date | - | Derive FY from estimate date |
| Quarter No | OLIMS | estimate_date_from | Date | - | Derive Q from estimate date |
| Employee No | OLIMS | employee_number | Char | 8 | Police officer registration number |
| Incident No | OLIMS | incident_number | Char | 10 | WC incident identifier |
| Claim No | OLIMS | claim_number | Char | 20 | WC or EPSS claim number |
| **PERIOD 1 INPUT FIELDS** |
| Period 1 – ORP (weekly) | OLIMS | p1_orp_weekly | Num | 8,2 | Ordinary Rate of Pay per week |
| Period 1 – Hourly salary rate | OLIMS | p1_hourly_salary_rate | Num | 6,2 | Hourly rate (derived from ORP or SAP) |
| Period 1 – RTW hours (weekly) | OLIMS | p1_rtw_hours_weekly | Num | 4,2 | Return-to-work hours per week |
| Period 1 – RTW salary (weekly) | OLIMS | p1_rtw_salary_weekly | Num | 8,2 | Calculated: p1_hourly_rate × p1_rtw_hours |
| Period 1 – WC payment (weekly) | OLIMS | p1_wc_payment_weekly | Num | 8,2 | Workers Compensation weekly amount |
| Period 1 – External Earnings (weekly) | OLIMS | p1_external_earnings_weekly | Num | 8,2 | Other income offsets per week |
| Period 1 – payment (weekly) | OLIMS | p1_payment_weekly | Num | 8,2 | Calculated per OLF005: ORP − RTW_salary − WC − External_earnings |
| Period 1 – Future # of weeks | OLIMS | p1_future_weeks | Num | 3 | Whole number; max 39 weeks |
| Period 1 – Forecast payments (total) | OLIMS | p1_forecast_total | Num | 10,2 | Calculated: p1_payment_weekly × p1_future_weeks |
| **PERIOD 2 INPUT FIELDS** |
| Period 2 – 75% loaded salary (weekly) | OLIMS | p2_loaded_salary_75pct_weekly | Num | 8,2 | 75% of loaded base salary per week |
| Period 2 – Hourly salary rate | OLIMS | p2_hourly_salary_rate | Num | 6,2 | Hourly rate for Period 2 |
| Period 2 – RTW hours (weekly) | OLIMS | p2_rtw_hours_weekly | Num | 4,2 | Return-to-work hours per week |
| Period 2 – RTW salary (weekly) | OLIMS | p2_rtw_salary_weekly | Num | 8,2 | Calculated: p2_hourly_rate × p2_rtw_hours |
| Period 2 – WC payment (weekly) | OLIMS | p2_wc_payment_weekly | Num | 8,2 | Workers Compensation weekly amount |
| Period 2 – External Earnings (weekly) | OLIMS | p2_external_earnings_weekly | Num | 8,2 | Other income offsets per week |
| Period 2 – payment (weekly) | OLIMS | p2_payment_weekly | Num | 8,2 | Calculated per OLF006: 75%_salary − RTW_salary − WC − External_earnings |
| Period 2 – Future # of weeks | OLIMS | p2_future_weeks | Num | 3 | Whole number; max 52 weeks |
| Period 2 – Forecast payments (total) | OLIMS | p2_forecast_total | Num | 10,2 | Calculated: p2_payment_weekly × p2_future_weeks |
| **PERIOD 3 INPUT FIELDS** |
| Period 3 – 75% loaded salary (weekly) | OLIMS | p3_loaded_salary_75pct_weekly | Num | 8,2 | 75% of loaded base salary per week |
| Period 3 – Hourly salary rate | OLIMS | p3_hourly_salary_rate | Num | 6,2 | Hourly rate for Period 3 |
| Period 3 – RTW hours (weekly) | OLIMS | p3_rtw_hours_weekly | Num | 4,2 | Return-to-work hours per week |
| Period 3 – RTW salary (weekly) | OLIMS | p3_rtw_salary_weekly | Num | 8,2 | Calculated: p3_hourly_rate × p3_rtw_hours |
| Period 3 – WC payment (weekly) | OLIMS | p3_wc_payment_weekly | Num | 8,2 | Workers Compensation weekly amount |
| Period 3 – External Earnings (weekly) | OLIMS | p3_external_earnings_weekly | Num | 8,2 | Other income offsets per week |
| Period 3 – payment (weekly) | OLIMS | p3_payment_weekly | Num | 8,2 | Calculated per OLF007: 75%_salary − RTW_salary − WC − External_earnings |
| Period 3 – Future # of weeks | OLIMS | p3_future_weeks | Num | 3 | Whole number; max 52 weeks |
| Period 3 – Forecast payments (total) | OLIMS | p3_forecast_total | Num | 10,2 | Calculated: p3_payment_weekly × p3_future_weeks |

## Selection Criteria & Filters

| Filter | Type | Options | SAP Source | Notes |
|---|---|---|---|---|
| Date Range | **Date** | From Date, To Date | OLIMS estimate_date_from | Filter estimates created/modified within range |
| Employee No | **Text** | Single or multiple employee numbers | OLIMS employee_number | Optional per RPL002; wildcard pattern matching |
| Incident No | **Text** | Single or multiple incident numbers | OLIMS incident_number | Optional per RPL002 |
| No Criteria | **Option** | Allow blank criteria (return all) | OLIMS | Per RPL002: when no filters entered, return all active estimate records |

**Filter Logic:** AND logic across all selected criteria. If all criteria blank, return all active records.

## Data Relationships

| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| OLIMS Estimate Tab | incident_number + estimate_id | 1:1 per OLF002; one estimate per incident per period/date range per OLF004 | Filter by employee_number, incident_number, date range |
| OLIMS Incident | incident_number | Join to get employee_number, claim_number | Source of incident context |
| OLIMS Employee | employee_number | Join to get employee name, rank (optional) | Optional join for reporting context |

**Data Model Notes:**
- Per RPL004: "For every record created to be displayed as an individual line item" – each estimate record is one row
- Per OLF004: Multiple records can exist for same incident/quarter (split by WC section or capacity change)
- Each row shows all inputs and calculated values for that specific estimate record
- No rollup/aggregation in RPL; all detail preserved

## Calculated Fields

| Field | Formula | Source Fields | Notes |
|---|---|---|---|
| Financial Year | CASE WHEN month(estimate_date) IN (7,8,9,10,11,12) THEN YEAR(estimate_date) ELSE YEAR(estimate_date)-1 END | estimate_date_from | NSW FY: Jul-Jun; year shown is end year |
| Quarter No | CASE WHEN month(estimate_date) IN (7,8,9) THEN 1 WHEN month IN (10,11,12) THEN 2 WHEN month IN (1,2,3) THEN 3 ELSE 4 END | estimate_date_from | Q1=Jul-Sep, Q2=Oct-Dec, Q3=Jan-Mar, Q4=Apr-Jun |
| P1 RTW salary (weekly) | p1_hourly_salary_rate × p1_rtw_hours_weekly | OLF005 | Hourly rate × RTW hours |
| P1 payment (weekly) | p1_orp_weekly − p1_rtw_salary_weekly − p1_wc_payment_weekly − p1_external_earnings_weekly | OLF005 | ORP − RTW_salary − WC − External_earnings |
| P1 Forecast payments (total) | p1_payment_weekly × p1_future_weeks | OLF005 | Weekly × weeks (max 39) |
| P2 RTW salary (weekly) | p2_hourly_salary_rate × p2_rtw_hours_weekly | OLF006 | Hourly rate × RTW hours |
| P2 payment (weekly) | p2_loaded_salary_75pct_weekly − p2_rtw_salary_weekly − p2_wc_payment_weekly − p2_external_earnings_weekly | OLF006 | 75%_salary − RTW_salary − WC − External_earnings |
| P2 Forecast payments (total) | p2_payment_weekly × p2_future_weeks | OLF006 | Weekly × weeks (max 52) |
| P3 RTW salary (weekly) | p3_hourly_salary_rate × p3_rtw_hours_weekly | OLF007 | Hourly rate × RTW hours |
| P3 payment (weekly) | p3_loaded_salary_75pct_weekly − p3_rtw_salary_weekly − p3_wc_payment_weekly − p3_external_earnings_weekly | OLF007 | 75%_salary − RTW_salary − WC − External_earnings |
| P3 Forecast payments (total) | p3_payment_weekly × p3_future_weeks | OLF007 | Weekly × weeks (max 52) |

## Lookups & Code Translations

| Field | Code | Meaning | Source |
|---|---|---|---|
| Record Status | A | Active estimate record | OLIMS |
| Record Status | I | Inactive estimate record (superseded or cancelled) | OLIMS |

**Currency:** All monetary fields displayed as AUD with 2 decimal places.

## Outstanding Items [TBC]

| Item | Impact | Owner | Status |
|---|---|---|---|
| OLIMS estimate table structure and detailed input field names | Data extraction accuracy; mapping to all 28 columns | [TBC] OLIMS design | Awaiting OLIMS technical specification for all OLF005/006/007 input fields |
| RTW salary calculation: is it stored or derived? | Calculation accuracy | [TBC] OLIMS design | Confirm if p1/p2/p3_rtw_salary fields are stored in table or must be calculated from hourly_rate × rtw_hours |
| Weekly payment calculations: stored or derived? | Report calculation accuracy | [TBC] OLIMS design | Confirm if p1/p2/p3_payment_weekly are stored or must be calculated from formula |
| Forecast total calculations: stored or derived? | Calculation accuracy | [TBC] OLIMS design | Confirm if p1/p2/p3_forecast_total are stored or must be calculated from payment_weekly × future_weeks |
| OLIMS audit field names (last_modified_by, last_modified_date) | Audit trail completeness | [TBC] OLIMS design | Awaiting OLIMS audit table documentation |
| Record status / active/inactive flag implementation | Filtering out superseded estimates | [TBC] OLIMS design | Confirm field name and values for inactive records |
| Financial Year and Quarter display format | Report consistency | [TBC] Business | Clarify FY format (FY2025 vs 2024-25) and timezone for date derivation |

## Open Questions (Business)

| Question | Related Req(s) | Why it matters |
|---|---|---|
| How should the report handle blank/null values for Period 2 or Period 3 fields if the estimate only covers Period 1? | RPL003, OLF005/006/007 | Affects column layout: show blank columns, omit empty periods, or fill with zeros? |
| Should report include WC section identifier (e.g., s36, s37) or capacity change notation on each line per OLF004? | RPL004, OLF004 | Helps claims officers identify which estimate record corresponds to which WC section/capacity change |
| What is expected refresh frequency (real-time, daily, weekly)? | RPL001 | Impacts users' expectations for currency of input data |
| Should report allow drill-down to show audit history (e.g., prior versions of same incident's estimates)? | OLE008 | Users may want to track how estimates have changed over time |
| For display purposes, should calculated fields (RTW salary, payment weekly, forecast total) be labeled as "Calculated" or shown without distinction? | OLF005/006/007 | Affects clarity on which fields are inputs vs derived |

## Report Column Sequence

| # | Column | Source | Type | Length | Notes |
|---|---|---|---|---|---|
| 1 | Financial Year | OLIMS estimate_date_from (derived) | Char | 6 | Format: "FY2025" or "2024-25" [TBC] |
| 2 | Quarter No | OLIMS estimate_date_from (derived) | Num | 1 | Range: 1-4 |
| 3 | Employee No | OLIMS employee_number | Char | 8 | Police officer registration number |
| 4 | Incident No | OLIMS incident_number | Char | 10 | WC incident identifier |
| 5 | Claim No | OLIMS claim_number | Char | 20 | WC or EPSS claim number |
| **PERIOD 1 COLUMNS (6-15)** |
| 6 | Period 1 – ORP (weekly) | OLIMS p1_orp_weekly | Num | 8,2 | AUD; ordinary rate of pay |
| 7 | Period 1 – Hourly salary rate | OLIMS p1_hourly_salary_rate | Num | 6,2 | AUD; hourly rate |
| 8 | Period 1 – RTW hours (weekly) | OLIMS p1_rtw_hours_weekly | Num | 4,2 | Decimal hours; e.g. 20.5 |
| 9 | Period 1 – RTW salary (weekly) | OLIMS p1_rtw_salary_weekly (calculated) | Num | 8,2 | AUD; = hourly_rate × rtw_hours |
| 10 | Period 1 – WC payment (weekly) | OLIMS p1_wc_payment_weekly | Num | 8,2 | AUD; workers compensation offset |
| 11 | Period 1 – External Earnings (weekly) | OLIMS p1_external_earnings_weekly | Num | 8,2 | AUD; other income offset |
| 12 | Period 1 – Payment (weekly) | OLIMS p1_payment_weekly (calculated) | Num | 8,2 | AUD; = ORP − RTW − WC − Ext_Earn |
| 13 | Period 1 – Future weeks | OLIMS p1_future_weeks | Num | 3 | Whole number; max 39 |
| 14 | Period 1 – Forecast payments (total) | OLIMS p1_forecast_total (calculated) | Num | 10,2 | AUD; = payment_weekly × future_weeks |
| **PERIOD 2 COLUMNS (15-24)** |
| 15 | Period 2 – 75% loaded salary (weekly) | OLIMS p2_loaded_salary_75pct_weekly | Num | 8,2 | AUD; 75% of loaded base salary |
| 16 | Period 2 – Hourly salary rate | OLIMS p2_hourly_salary_rate | Num | 6,2 | AUD; hourly rate |
| 17 | Period 2 – RTW hours (weekly) | OLIMS p2_rtw_hours_weekly | Num | 4,2 | Decimal hours; e.g. 20.5 |
| 18 | Period 2 – RTW salary (weekly) | OLIMS p2_rtw_salary_weekly (calculated) | Num | 8,2 | AUD; = hourly_rate × rtw_hours |
| 19 | Period 2 – WC payment (weekly) | OLIMS p2_wc_payment_weekly | Num | 8,2 | AUD; workers compensation offset |
| 20 | Period 2 – External Earnings (weekly) | OLIMS p2_external_earnings_weekly | Num | 8,2 | AUD; other income offset |
| 21 | Period 2 – Payment (weekly) | OLIMS p2_payment_weekly (calculated) | Num | 8,2 | AUD; = 75%_sal − RTW − WC − Ext_Earn |
| 22 | Period 2 – Future weeks | OLIMS p2_future_weeks | Num | 3 | Whole number; max 52 |
| 23 | Period 2 – Forecast payments (total) | OLIMS p2_forecast_total (calculated) | Num | 10,2 | AUD; = payment_weekly × future_weeks |
| **PERIOD 3 COLUMNS (24-33)** |
| 24 | Period 3 – 75% loaded salary (weekly) | OLIMS p3_loaded_salary_75pct_weekly | Num | 8,2 | AUD; 75% of loaded base salary |
| 25 | Period 3 – Hourly salary rate | OLIMS p3_hourly_salary_rate | Num | 6,2 | AUD; hourly rate |
| 26 | Period 3 – RTW hours (weekly) | OLIMS p3_rtw_hours_weekly | Num | 4,2 | Decimal hours; e.g. 20.5 |
| 27 | Period 3 – RTW salary (weekly) | OLIMS p3_rtw_salary_weekly (calculated) | Num | 8,2 | AUD; = hourly_rate × rtw_hours |
| 28 | Period 3 – WC payment (weekly) | OLIMS p3_wc_payment_weekly | Num | 8,2 | AUD; workers compensation offset |
| 29 | Period 3 – External Earnings (weekly) | OLIMS p3_external_earnings_weekly | Num | 8,2 | AUD; other income offset |
| 30 | Period 3 – Payment (weekly) | OLIMS p3_payment_weekly (calculated) | Num | 8,2 | AUD; = 75%_sal − RTW − WC − Ext_Earn |
| 31 | Period 3 – Future weeks | OLIMS p3_future_weeks | Num | 3 | Whole number; max 52 |
| 32 | Period 3 – Forecast payments (total) | OLIMS p3_forecast_total (calculated) | Num | 10,2 | AUD; = payment_weekly × future_weeks |

**Export Format:** Excel per RPL005

**Default Sort:** Financial Year (DESC), Quarter No (DESC), Employee No (ASC), Incident No (ASC)

**Notes:** 
- Report width is 32 columns; consider breaking P1/P2/P3 into separate tab views or landscape orientation in Excel
- All monetary values in AUD with 2 decimal places
- Each row is one estimate record; no aggregation (per RPL004)

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.

