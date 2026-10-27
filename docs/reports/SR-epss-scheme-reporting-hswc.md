<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: SR -->

# EPSS scheme reporting (HSWC)

|  |  |  |
| --- | --- | --- |
| **Req. #** | **Requirement Description** | **Priority** |
| SR001 | Data will be extracted, transformed and incrementally loaded into the Enterprise Data Warehouse (EDW) at the end of each month (Historical data across all months will be retained and differentiated using the dt\_as\_at field.). | M |
| SR002 | Each load will be a monthly snapshot of the full list of EPSS participants (including ceased and not receiving payments):   * EPSS recipients, those receiving payments and their weeks counting * EPSS participants, those not receiving payments, weeks counting or not counting * EPSS ceased, those no longer eligible | M |
| SR003 | Table requirements outlined below – columns, names, definitions, and example formats. | M |

| **Col** | **Column Name** | **Definitions, source, formula or content** | **Example (for data format)** |
| --- | --- | --- | --- |
| 1 | dt\_as\_at | Indicates the last day of the calendar month in which the payment is made.  *\*All EPSS participants and EPSS ceased will be included each month even if they have no payment received.* | 2025-09-30 |
| 2 | registered\_number | Employee registration number  *\*Each month, all EPSS participants (with or without payments, weeks counting or not counting) and EPSS ceased will still be included in the dataset each month.* | 41344 |
| 3 | claim\_number | EML workers compensation claim number | 256772EML |
| 4 | incident\_number | Workers Compensation incident number | 237831 |
| 5 | first\_name | Employee first name | John |
| 6 | last\_name | Employee last name | Smith |
| 7 | date\_of\_birth | Date of birth of the employee | 1986-09-13 |
| 8 | pay\_period\_begin\_date | Start date of the pay period | 2025-07-18 |
| 9 | pay\_period\_end\_date | End date of the pay period | 2025-07-31 |
| 10 | wc\_amount\_paid | Weekly workers compensation amount received, forming the base for each EPSS top-up payments.  *\*This will be used in modelling reason of weeks not counting.* | 1308.8 |
| 11 | injury\_type | OLIMS injury type of the claim   * Psychological * Physical | Psychological |
| 12 | rank | The employee’s rank at the time of the payment, based on SAP employee record | Detective Constable |
| 13 | command | The employee’s command at the time of the payment, from SAP employee record  *\*e.g. Corporate Services, Metropolitan Field Operations, Regional NSW Field Operations, etc* | Regional NSW Field Operations |
| 14 | region\_branch | The employee’s region branch at the time of the payment, from SAP employee record  *\*e.g. Central Metro, Northern, State Crime Command, etc* | Northern |
| 15 | EPSS\_period\_1\_payment | Amount paid as EPSS period 1 payment, if no payments show 0 | 2202.76 |
| 16 | EPSS\_period\_2\_payment | Amount paid as EPSS period 2 payment, if no payments show 0 | 1440.21 |
| 17 | EPSS\_period\_3\_payment | Amount paid as EPSS period 3 payment, if no payments show 0 | 0 |
| 18 | actual\_weeks\_counted\_p1 | Number of actual weeks counted for the employee in period 1.  *\*For transitional claims, the count may be adjusted on a case-by-case basis to reflect the actual week counts.* | 39 |
| 19 | actual\_days\_counted\_p2 | Number of actual weeks counted for the employee in period 2.  *\*For transitional claims, the count may be adjusted on a case-by-case basis to reflect the actual day counts.* | 1442 |
| 20 | actual\_days\_counted\_p3 | Number of actual weeks counted for the employee in period 3. | 49 |
| 21 | is\_week\_or\_day\_counting | Flag indicating employee’s weeks/days being counted or not, as of the last day of the month   * Y * N   *\*Employees may receive EPSS payments, then have weeks counting stopped and restarted. This flag reflects the status at the end of the month.*  *\*\*Employees with no payment during the month are still included in the data, with all payment amounts shown as 0 and this flag set to either Y or N.* | Y |
| 22 | ordinary\_rate\_of\_pay | Employee’s ordinary rate of pay as provided by the insurer.  *\*This value is used in modelling reason of weeks not counting.* | 1225.42 |
| 23 | other\_income | Indication of employee’s all other income.  *\*This value is used in modelling reason of weeks not counting.* | 524.24 |
| 24 | latest\_COC | The latest certificate of capacity (COC) from the certificate. It should be one of the following:   * Partial capacity * No capacity * PID (pre-injury duty)   *\*This value is used in modelling reason of weeks not counting.* | Partial Capacity |
| 25 | P2\_PID\_duration | Number of days of PID (Pre-injury duty) for Period 2 recipients. Calculated based on the 'from' and 'to' dates of Period 2 PID.  *\*This value is used in modelling reason of weeks not counting.* | 8 |
| 26 | eligibility\_status | Indicates whether the employee is eligible for EPSS as at the last day of the month   * Eligible * Not eligible | Eligible |
| 27 | reason\_ineligible | Indicates the reason the employee is not eligible for EPSS, as at the last day of the month. Must be one of the following:   * WID * Death * Retirement * Disputed / Declined * Claim Closed * Not in receipt of weekly benefits (PID / RTW where there is no wage loss) * No longer employed (resigned, terminated under S181D or S80) * Possible “Other”   *\*If the employee is marked as ‘Eligible’ in the eligibility\_status column, this field will be blank.* | Retirement |
| 28 | transitional\_claims | Indicates whether the employee’s claim has been accepted into EPSS as a transitional claim.   * Y * N   *\*All payments related to transitional claims must be consistently marked with Y.*  *\*\*This value will remain unchanged unless an error is identified and requires correction.* | Y |
| 29 | date\_start\_p1\_actual | Indicates the actual start date of period 1 of a claim.  *\*For transitional claims, the date should be when they are admitted into EPSS. \*\*This value remains unchanged unless an error is identified and requires correction.* | 2024-10-01 |
| 30 | date\_end\_p1\_actual | Indicates the actual end date of period 1 of a claim. This date should be populated when Period 1 is exhausted or when EPSS ceases during Period 1. *\*This value remains unchanged unless an error is identified and requires correction.*  *\*\*This value remains blank unless Period 1 has ended.* | 2025-07-01 |
| 31 | date\_start\_p2\_actual | Indicates the actual start date of period 2 of a claim. Period 2 should begin immediately after Period 1 ends.  *\*For transitional claims, the date should be when they are admitted into EPSS.* *\*\*This value remains unchanged unless an error is identified and requires correction.*  *\*\*\*This value remains blank unless Period 2 has commenced.* | 2025-07-01 |
| 32 | date\_end\_p2\_actual | Indicates the actual end date of period 2 of a claim. This date should be populated when period 2 is exhausted or when EPSS ceases during Period 2. *\*This value remains unchanged unless an error is identified and requires correction.*  *\*\*This value remains blank unless Period 2 has ended.* | 2024-10-01 |
| 33 | date\_start\_p3\_actual | Indication of the actual start date of period 3 of a claim. This date should start right after period 2 ends.  *\*This value remains unchanged unless an error is identified and requires correction.*  *\*\*This value remains blank unless Period 3 has commenced.* | 2024-10-01 |
| 34 | date\_end\_p3\_actual | Indicates the actual end date of period 3 of a claim. This date should be populated when period 3 is exhausted or when EPSS ceases during Period 3.  *\*This value remains unchanged unless an error is identified and requires correction.*  *\*\*This value remains blank unless Period 3 has ended.* | 2024-10-01 |
| 35 | date\_end\_p1\_estimated | Estimated end date period 1 of a claim. | 2025-06-01 |
| 36 | date\_start\_p2\_estimated | Estimated start date period 2 of a claim. | 2025-06-02 |
| 37 | date\_end\_p2\_estimated | Estimated end date period 2 of a claim. | 2032-06-01 |
| 38 | date\_start\_p3\_estimated | Estimated start date period 3 of a claim. | 2032-06-02 |
| 39 | date\_end\_p3\_estimated | Estimated end date period 3 of a claim. | 3035-06-01 |
| 40 | EPSS\_cohort | Indication of participant’s cohort. Should be one of the following:   * Period 1, receiving, weeks counting * Period 1, not receiving, weeks counting * Period 1, not receiving, weeks not counting * Period 2, receiving, weeks counting * Period 2, not receiving, weeks not counting * Period 3 * Period 1 ceased * Period 2 ceased * Period 3 ceased * Transitioned into Period 1 * Transitioned into Period 2   *\*It’s a good to have. Can work it out ourselves if all other columns are accurately provided.* | Period 1, receiving, weeks counting |

## Business Purpose

**Users:** HSWC (Heads of State Workers' Compensation), External Stakeholders, Regulators, Financial Auditors, Scheme Managers

**Frequency:** Monthly snapshots (end of calendar month), historical data retained

**Business Use:**
SR is a comprehensive monthly reporting dataset extracted to the Enterprise Data Warehouse (EDW) for scheme-wide analysis and reporting to external stakeholders. Per SR001:
- Monthly snapshots taken at end of calendar month
- Historical data retained across all months with dt_as_at differentiation
- Supports HSWC reporting on EPSS scheme performance and costs
- Enables modeling of eligibility and week counting reasons
- Provides regulators visibility into scheme participant demographics and benefit payments

**Key Business Decisions:**
- Scheme cost reporting and budget forecasting
- Eligibility and benefit policy compliance monitoring
- Week counting rule validation and trend analysis
- Financial modeling of scheme liabilities
- External stakeholder communication (HSWC, government, media)

## Key Metrics/Columns

**Primary Dataset:** 40 columns per SR003 (comprehensive scheme reporting structure)

**Column Categories:**
1. **Temporal** (1 column): dt_as_at (month snapshot)
2. **Participant Identification** (5 columns): registered_number, claim_number, incident_number, first_name, last_name
3. **Participant Demographics** (4 columns): date_of_birth, rank, command, region_branch
4. **Pay Period & WC Data** (3 columns): pay_period_begin_date, pay_period_end_date, wc_amount_paid
5. **Claim Classification** (2 columns): injury_type, transitional_claims
6. **EPSS Payments** (3 columns): EPSS_period_1_payment, EPSS_period_2_payment, EPSS_period_3_payment
7. **Week/Day Counting Actual** (3 columns): actual_weeks_counted_p1, actual_days_counted_p2, actual_days_counted_p3
8. **Week Counting Status** (1 column): is_week_or_day_counting (Y/N flag)
9. **Income & Offsets** (3 columns): ordinary_rate_of_pay, other_income, latest_COC
10. **Period Dates (Actual)** (6 columns): date_start_p1_actual through date_end_p3_actual
11. **Period Dates (Estimated)** (5 columns): date_end_p1_estimated through date_end_p3_estimated
12. **Eligibility & Cohorts** (3 columns): eligibility_status, reason_ineligible, EPSS_cohort

**Special Attributes:**
- Per SR002: Includes ALL EPSS participants (receiving, not receiving, ceased) each month
- Per SR001: dt_as_at differentiates monthly snapshots

## SAP Field Mappings

| # | Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|---|
| 1 | dt_as_at | Reporting | snapshot_date | Date | - | Last day of calendar month (YYYY-MM-DD) |
| 2 | registered_number | HR | employee_number | Char | 8 | Police officer registration number |
| 3 | claim_number | OLIMS | wc_claim_number | Char | 20 | EML workers compensation claim number |
| 4 | incident_number | OLIMS | incident_number | Char | 10 | WC incident identifier |
| 5 | first_name | HR | first_name | Char | 40 | Officer first name |
| 6 | last_name | HR | last_name | Char | 40 | Officer last name |
| 7 | date_of_birth | HR | date_of_birth | Date | - | Employee DOB (YYYY-MM-DD) |
| 8 | pay_period_begin_date | Payroll | pay_period_start_date | Date | - | Payroll period start (YYYY-MM-DD) |
| 9 | pay_period_end_date | Payroll | pay_period_end_date | Date | - | Payroll period end (YYYY-MM-DD) |
| 10 | wc_amount_paid | Payroll | wc_payment_amount (4901) | Num | 10,2 | Weekly WC amount (AUD); used in week counting modeling |
| 11 | injury_type | OLIMS | injury_type | Char | 20 | Psychological / Physical |
| 12 | rank | HR | rank_code | Char | 40 | Officer rank at time of payment (from SAP) |
| 13 | command | HR | command_code | Char | 100 | Command at time of payment (Corporate Services, Metro Ops, Regional Ops, etc.) |
| 14 | region_branch | HR | region_branch_code | Char | 100 | Region/branch (Central Metro, Northern, State Crime Command, etc.) |
| 15 | EPSS_period_1_payment | Payroll | epss_p1_payment_amount (49E9 + 6A48) | Num | 10,2 | P1 payment amount; 0 if not receiving |
| 16 | EPSS_period_2_payment | Payroll | epss_p2_payment_amount (49S9 + 6A49) | Num | 10,2 | P2 payment amount; 0 if not receiving |
| 17 | EPSS_period_3_payment | Payroll | epss_p3_payment_amount | Num | 10,2 | P3 payment amount; 0 if not receiving |
| 18 | actual_weeks_counted_p1 | OLIMS | period_1_weeks_counted | Num | 4 | Weeks counted in Period 1 (max 39) |
| 19 | actual_days_counted_p2 | OLIMS | period_2_days_counted | Num | 5 | Days counted in Period 2 (note: days not weeks) |
| 20 | actual_days_counted_p3 | OLIMS | period_3_days_counted | Num | 5 | Days counted in Period 3 |
| 21 | is_week_or_day_counting | OLIMS | weeks_counting_flag | Char | 1 | Y = Weeks/days counting; N = Not counting (as at month end) |
| 22 | ordinary_rate_of_pay | Payroll/Insurer | ordinary_rate_of_pay | Num | 10,2 | ORP as provided by insurer (AUD) |
| 23 | other_income | OLIMS | other_income_amount | Num | 10,2 | All other income (offsets) (AUD) |
| 24 | latest_COC | OLIMS | latest_certificate_status | Char | 30 | Partial Capacity / No Capacity / PID |
| 25 | P2_PID_duration | OLIMS | period_2_pid_days | Num | 4 | Days of PID in Period 2 (calculated from cert dates) |
| 26 | eligibility_status | OLIMS | epss_eligibility_status | Char | 20 | Eligible / Not Eligible (as at month end) |
| 27 | reason_ineligible | OLIMS | eligibility_reason_code | Char | 50 | WID / Death / Retirement / Disputed / Claim Closed / Not in receipt of benefits / No longer employed / Other [TBC] |
| 28 | transitional_claims | OLIMS | transitional_claim_flag | Char | 1 | Y = PBRI→EPSS transition; N = Direct EPSS |
| 29 | date_start_p1_actual | OLIMS | period_1_start_actual | Date | - | P1 actual start (YYYY-MM-DD) |
| 30 | date_end_p1_actual | OLIMS | period_1_end_actual | Date | - | P1 actual end; NULL if ongoing (YYYY-MM-DD) |
| 31 | date_start_p2_actual | OLIMS | period_2_start_actual | Date | - | P2 actual start; NULL if not commenced (YYYY-MM-DD) |
| 32 | date_end_p2_actual | OLIMS | period_2_end_actual | Date | - | P2 actual end; NULL if ongoing (YYYY-MM-DD) |
| 33 | date_start_p3_actual | OLIMS | period_3_start_actual | Date | - | P3 actual start; NULL if not commenced (YYYY-MM-DD) |
| 34 | date_end_p3_actual | OLIMS | period_3_end_actual | Date | - | P3 actual end; NULL if ongoing (YYYY-MM-DD) |
| 35 | date_end_p1_estimated | OLIMS | period_1_end_estimated | Date | - | P1 estimated end from forecast (YYYY-MM-DD) |
| 36 | date_start_p2_estimated | OLIMS | period_2_start_estimated | Date | - | P2 estimated start (YYYY-MM-DD) |
| 37 | date_end_p2_estimated | OLIMS | period_2_end_estimated | Date | - | P2 estimated end from forecast (YYYY-MM-DD) |
| 38 | date_start_p3_estimated | OLIMS | period_3_start_estimated | Date | - | P3 estimated start (YYYY-MM-DD) |
| 39 | date_end_p3_estimated | OLIMS | period_3_end_estimated | Date | - | P3 estimated end from forecast (YYYY-MM-DD) |
| 40 | EPSS_cohort | Calculated | epss_cohort_code | Char | 50 | Participant cohort classification (see Lookups below) |

## Selection Criteria & Filters

| Filter | Type | Options | Purpose | Notes |
|---|---|---|---|---|
| Report Month | **Date** | Calendar month-end date | Select reporting period | User selects month; defaults to current/most recent month |
| Show All Participants | **Fixed** | All (active + ceased) | Per SR002: must include all participants | Always enabled; no filtering option |

**Filter Logic:** Report must include all EPSS participants as at the selected month-end, regardless of payment status or eligibility. No filtering options allowed.

## Data Relationships

| Tables | Join Keys | Relationship | Completeness | Notes |
|---|---|---|---|---|
| OLIMS Incident | incident_number | 1:1 per snapshot | Must include all active incidents plus recent cessations | Claim status determines inclusion |
| HR Employee | registered_number | 1:1 per incident | Join to get demographics (rank, command, region) at payment date | Must reflect current (at month-end) org structure |
| Payroll (IT0014/IT0015) | registered_number + pay_period | 1:Many | Payment records for all participants in payment month | Sums payments by wagetype (49E9, 6A48, 49S9, 6A49) |
| OLIMS Certificate | incident_number | Latest cert only | Identifies latest COC status for week counting modeling | Latest by certificate date_from |
| OLIMS Forecast | incident_number | Optional | Links to estimated period dates (forecast calculator) | Used for period end date estimates |

**Data Model Notes:**
- Per SR002: "monthly snapshot of the FULL list of EPSS participants"
  - Includes: Receiving payments AND weeks counting
  - Includes: Receiving payments BUT weeks NOT counting (e.g., RTW, PID status)
  - Includes: NOT receiving payments (no current payment)
  - Includes: EPSS ceased (no longer eligible – for historical tracking)
- dt_as_at links records to specific month for historical analysis
- One row per participant per month snapshot

## Calculated Fields

| Field | Formula | Source Fields | Notes |
|---|---|---|---|
| P2_PID_duration | DATEDIFF(period_2_pid_end_date, period_2_pid_start_date) | period_2_pid_start, period_2_pid_end | Calculated days in PID status during P2 |
| EPSS_cohort | CASE WHEN transitional_claims='Y' AND date_start_p1_actual IS NOT NULL AND date_end_p1_actual IS NULL THEN 'Transitioned into Period 1' WHEN transitional_claims='Y' AND date_start_p2_actual IS NOT NULL THEN 'Transitioned into Period 2' WHEN date_start_p1_actual IS NOT NULL AND date_end_p1_actual IS NULL AND EPSS_period_1_payment > 0 AND is_week_or_day_counting='Y' THEN 'Period 1, receiving, weeks counting' ... [TBC full logic] | Multiple fields | Per SR003: "good to have"; can be derived if other columns accurate |
| Total_EPSS_Payment | EPSS_period_1_payment + EPSS_period_2_payment + EPSS_period_3_payment | All period payments | Total EPSS paid in month |
| is_Active_EPSS | IF(date_end_p1_actual IS NULL OR date_start_p2_actual IS NOT NULL OR date_start_p3_actual IS NOT NULL, 'Yes', 'No') | Period actual dates | Simple indicator of active participant |

## Lookups & Code Translations

| Field | Code | Meaning | Source |
|---|---|---|---|
| injury_type | Psychological | Psychological injury/illness | OLIMS |
| injury_type | Physical | Physical injury | OLIMS |
| latest_COC | Partial Capacity | Partial wage loss capacity | OLIMS cert status |
| latest_COC | No Capacity | Total incapacity | OLIMS cert status |
| latest_COC | PID | Pre-injury duty – fit to return | OLIMS cert status |
| eligibility_status | Eligible | Currently eligible for EPSS | OLIMS |
| eligibility_status | Not Eligible | No longer eligible | OLIMS |
| reason_ineligible | WID | Whole of body impairment dispute | OLIMS code [TBC] |
| reason_ineligible | Death | Officer deceased | OLIMS code [TBC] |
| reason_ineligible | Retirement | Officer retired | OLIMS code [TBC] |
| reason_ineligible | Disputed / Declined | Claim disputed or declined | OLIMS code [TBC] |
| reason_ineligible | Claim Closed | Claim formally closed | OLIMS code [TBC] |
| reason_ineligible | Not in receipt of weekly benefits | PID or RTW with no wage loss | OLIMS code [TBC] |
| reason_ineligible | No longer employed | Resigned / Terminated (S181D, S80) | OLIMS code [TBC] |
| reason_ineligible | Other | Other reason [TBC] | OLIMS code [TBC] |
| transitional_claims | Y | PBRI claim transitioned to EPSS | OLIMS |
| transitional_claims | N | Direct EPSS claim (not transitioned) | OLIMS |
| is_week_or_day_counting | Y | Weeks/days counting toward benefit period | OLIMS (as at month end) |
| is_week_or_day_counting | N | Weeks not counting (paused/suspended) | OLIMS (as at month end) |
| EPSS_cohort | Period 1, receiving, weeks counting | In Period 1, receiving payment, weeks counting | Calculated per SR003 |
| EPSS_cohort | Period 1, not receiving, weeks counting | In Period 1, no current payment, weeks counting | Calculated |
| EPSS_cohort | Period 1, not receiving, weeks not counting | In Period 1, weeks paused | Calculated |
| EPSS_cohort | Period 2, receiving, weeks counting | In Period 2, receiving payment | Calculated |
| EPSS_cohort | Period 2, not receiving, weeks not counting | In Period 2, weeks paused | Calculated |
| EPSS_cohort | Period 3 | In Period 3 (open-ended) | Calculated |
| EPSS_cohort | Period 1 ceased | Ceased while in Period 1 | Calculated |
| EPSS_cohort | Period 2 ceased | Ceased while in Period 2 | Calculated |
| EPSS_cohort | Period 3 ceased | Ceased while in Period 3 | Calculated |

## Outstanding Items [TBC]

| Item | Impact | Owner | Status |
|---|---|---|---|
| EDW platform, schema, and table structure | Data loading and query performance | [TBC] IT/Analytics | Confirm SAP Analytics Cloud, Azure, or custom data warehouse design |
| ETL process for monthly snapshots (automation, schedule, validation) | Data freshness and reliability | [TBC] IT/Analytics | Confirm end-of-month load process and timing (T+1, T+3) |
| Cohort calculation logic (EPSS_cohort column 40) | Accuracy of participant classification | [TBC] Business/Analytics | Per SR003: cohort is "good to have"; full calculation logic needed [TBC] |
| Eligibility reason codes (column 27) | Accurate ineligibility classification | [TBC] OLIMS design | Confirm predefined reason_ineligible values in OLIMS |
| Historical data retention and archiving policy | Storage and query performance | [TBC] IT/Business | Define retention period (7 years typical for workers comp) |
| Data quality rules and validation (completeness, accuracy) | Reporting reliability for external stakeholders | [TBC] Analytics/Business | Define validation rules (e.g., payment amounts must be >= 0) |
| Integration with external systems (icare, TAL, HSWC) | Comprehensive scheme reporting | [TBC] IT/Integration | Confirm data exchange points and formats |
| Confidentiality and PII handling in EDW | Privacy compliance | [TBC] IT Security/Privacy | Define de-identification rules if data shared externally |

## Open Questions (Business)

| Question | Related Req(s) | Why it matters |
|---|---|---|
| What is the exact definition of EPSS_cohort calculation (column 40)? | SR002, SR003 | Per SR003, HSWC can derive it themselves if other columns accurate; confirm priority |
| Should historical data include ceased participants indefinitely, or is there a cutoff? | SR001 | Affects data volume and archive strategy |
| What external stakeholders need access to this data (HSWC, Treasury, etc.)? | SR002 | Determines data governance, security, and de-identification requirements |
| What is the expected query latency (real-time vs. daily refresh acceptable)? | SR001 | Impacts ETL and database design decisions |
| Should the EDW support drill-down to individual claim level, or aggregate only? | SR003 | Clarifies use case (analysis vs. compliance reporting) |
| How frequently will HSWC request custom extracts or ad-hoc analysis? | SR002 | May justify self-service BI tool investment (Power BI, Tableau) |
| What format does HSWC prefer for data delivery (EDW query access, CSV export, API)? | SR001, SR002 | Affects delivery mechanism design |

## Report Column Sequence

| # | Column Name | Source | Type | Format | Notes |
|---|---|---|---|---|---|
| 1 | dt_as_at | Reporting | Date | YYYY-MM-DD | Last day of calendar month |
| 2 | registered_number | HR | Char | 8 digits | Employee registration number |
| 3 | claim_number | OLIMS | Char | 20 chars | EML WC claim number |
| 4 | incident_number | OLIMS | Char | 10 chars | WC incident ID |
| 5 | first_name | HR | Char | 40 chars | Officer first name |
| 6 | last_name | HR | Char | 40 chars | Officer last name |
| 7 | date_of_birth | HR | Date | YYYY-MM-DD | Employee DOB |
| 8 | pay_period_begin_date | Payroll | Date | YYYY-MM-DD | Payroll period start |
| 9 | pay_period_end_date | Payroll | Date | YYYY-MM-DD | Payroll period end |
| 10 | wc_amount_paid | Payroll | Number | 10,2 (AUD) | Weekly WC base amount |
| 11 | injury_type | OLIMS | Char | 20 chars | Psychological / Physical |
| 12 | rank | HR | Char | 40 chars | Officer rank |
| 13 | command | HR | Char | 100 chars | Command/unit |
| 14 | region_branch | HR | Char | 100 chars | Region/branch |
| 15 | EPSS_period_1_payment | Payroll | Number | 10,2 (AUD) | P1 payment; 0 if none |
| 16 | EPSS_period_2_payment | Payroll | Number | 10,2 (AUD) | P2 payment; 0 if none |
| 17 | EPSS_period_3_payment | Payroll | Number | 10,2 (AUD) | P3 payment; 0 if none |
| 18 | actual_weeks_counted_p1 | OLIMS | Number | 3 digits | Weeks counted in P1 (max 39) |
| 19 | actual_days_counted_p2 | OLIMS | Number | 4 digits | Days counted in P2 |
| 20 | actual_days_counted_p3 | OLIMS | Number | 4 digits | Days counted in P3 |
| 21 | is_week_or_day_counting | OLIMS | Char | 1 char | Y / N as at month end |
| 22 | ordinary_rate_of_pay | Payroll/Insurer | Number | 10,2 (AUD) | ORP from insurer |
| 23 | other_income | OLIMS | Number | 10,2 (AUD) | All other income/offsets |
| 24 | latest_COC | OLIMS | Char | 20 chars | Partial / No / PID |
| 25 | P2_PID_duration | OLIMS | Number | 4 digits | Days in PID during P2 |
| 26 | eligibility_status | OLIMS | Char | 20 chars | Eligible / Not Eligible |
| 27 | reason_ineligible | OLIMS | Char | 50 chars | Reason code [TBC] |
| 28 | transitional_claims | OLIMS | Char | 1 char | Y / N |
| 29 | date_start_p1_actual | OLIMS | Date | YYYY-MM-DD | P1 actual start |
| 30 | date_end_p1_actual | OLIMS | Date | YYYY-MM-DD | P1 actual end; NULL if ongoing |
| 31 | date_start_p2_actual | OLIMS | Date | YYYY-MM-DD | P2 actual start; NULL if not commenced |
| 32 | date_end_p2_actual | OLIMS | Date | YYYY-MM-DD | P2 actual end; NULL if ongoing |
| 33 | date_start_p3_actual | OLIMS | Date | YYYY-MM-DD | P3 actual start; NULL if not commenced |
| 34 | date_end_p3_actual | OLIMS | Date | YYYY-MM-DD | P3 actual end; NULL if ongoing |
| 35 | date_end_p1_estimated | OLIMS | Date | YYYY-MM-DD | P1 estimated end |
| 36 | date_start_p2_estimated | OLIMS | Date | YYYY-MM-DD | P2 estimated start |
| 37 | date_end_p2_estimated | OLIMS | Date | YYYY-MM-DD | P2 estimated end |
| 38 | date_start_p3_estimated | OLIMS | Date | YYYY-MM-DD | P3 estimated start |
| 39 | date_end_p3_estimated | OLIMS | Date | YYYY-MM-DD | P3 estimated end |
| 40 | EPSS_cohort | Calculated | Char | 50 chars | Cohort classification [TBC] |

**Delivery Format:** EDW table (supports SQL queries, ETL integration, BI tools)

**Monthly Load Schedule:** T+1 or T+3 days after month-end per SR001

**Data Completeness:** Per SR002, must include all EPSS participants (receiving, not receiving, ceased) each month

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.

