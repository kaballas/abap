<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPB -->

# EPSS On Duty Claim Report

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPB002 | In the Section Criteria, the ability to select the type of insurance claim   * EPSS claim * Transitioned to EPSS * PBRI claims * All | M |
| RPB003 | Amend the WC Primary and Non-Primary claim radio buttons to also include an option to select “BOTH” | M |
| RPB004 | Remove the Organisation section from the report:   * NSW State * Command * Region/Branch * PAC/PD/Section * Organisation Unit | M |
| RPB005 | Include columns / requirements not delivered in the December 2024 release:   * Period 1 – start date * Period 1 – weeks utilised * Period 1 – weeks remaining * Period 1 – end date * Base + 17% loading * 75% of base + loading * 75% of base + loading (fortnightly) – *new requirement* * 75% of base + loading (weekly) – *new requirement* * Period 2 – start date * Period 2 – end date * Period 2 – max weekly EPSS Cap breach (flag) | M |
| RPB006 | Addition of new columns in the report:   * Date of Disablement * WC Duty Desc. (On Duty / Off Duty) * PBRI claim (Flag) * EPSS claim (Flag) * Transitioned to EPSS (flag) * Hourly Rate (from IT008 salary) * Age (number) * Super Fund Code * EPSS Supervisor * WCCC Status To (add after WCC Status From field) * LO screenshot Period – EPSS Claim Status fields to pull over   + Date Modified   + Description | M |
| RPB007 | The EPSS Claims Advisor and EPSS Claim Status fields to populate from OLIMS fields that have been built after this report was originally built in November 2024 | M |

## SAP Field Mappings

### Core Employee Information
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Employee Number | ZIMLTRVAR1 | PERNR | CHAR | 8 | Employee Number |
| Incident Number | ZIMLTRVAR1 | INCIDENT | CHAR | 10 | Incident Number |
| First Name | ZIMLTRVAR1 | VORNA | CHAR | 40 | First Name |
| Last Name | ZIMLTRVAR1 | NACHN | CHAR | 40 | Last Name |
| Date of Birth | ZIMLTRVAR1 | BIRTHDATE | CHAR | 10 | Date of Birth |
| Position | ZIMLTRVAR1 | PLANS | NUMC | 8 | Position |
| Position Description | ZIMLTRVAR1 | POSNDESC | CHAR | 40 | Position Description |

### Claim Information (RPB002, RPB006)
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Date of Disablement | ZIM_IN_CM | DISABLEMENT_DATE | DATS | 8 | OLIMS - Date of Disablement |
| WC Claim Number | ZIM_WC_BENEFITS | WCLMN | CHAR | 15 | Workcover Claim Number |
| WC Duty Determination | ZIM_IN_CM | DUTY_DET | CHAR | 1 | OLIMS - Claim Duty Determination |
| IP Claim Number | ZIM_IN_CM | IP_WCLMN | CHAR | 15 | OLIMS - Income Protection Claim Number |
| SI Claim Number | ZIM_IN_CM | SI_WCLMN | CHAR | 15 | OLIMS - Self Insured Claim Number |
| PBRI Membership No | ZIMLTRVAR1 | PBRIMEMNO | CHAR | 20 | Superannuation Fund Membership Number Australia |

### EPSS Period 1 (RPB005)
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Period 1 - Start Date | ZIM_IN_CM | EPSS_START_DATE_P1 | DATS | 8 | OLIMS - EPSS Period 1 Start Date |
| Period 1 - End Date | ZIM_IN_CM | EPSS_END_DATE_P1 | DATS | 8 | OLIMS - EPSS Period 1 End Date |
| Period 1 - Weeks Utilised | ZIM_EPSS_WEEK_NO | NO_WEEKS_USED_P1 | NUMC | 3 | OLIMS - EPSS: Number of Weeks Used of Period 1 |

### EPSS Period 2 (RPB005)
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Period 2 - Start Date | ZIM_IN_CM | EPSS_START_DATE_P2 | DATS | 8 | OLIMS - EPSS Period 2 Start Date |
| Period 2 - End Date | ZIM_IN_CM | EPSS_END_DATE_P2 | DATS | 8 | OLIMS - EPSS Period 2 End Date |

### EPSS Claim Management (RPB006, RPB007)
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| EPSS claim (Flag) | ZIM_IN_CM | DEF_CLAIM | CHAR | 1 | OLIMS - Default Claim |
| Transitioned to EPSS (flag) | ZIM_IN_CM | TRANSITION_TO_EPSS | CHAR | 1 | OLIMS - Transition to EPSS |
| EPSS Examiner ID | ZIM_IN_CM | EPSS_EXAMINER_ID | NUMC | 8 | OLIMS - EPSS Examiner ID |
| EPSS Supervisor | ZIM_IN_CM | EPSS_SUPERVISOR | NUMC | 8 | OLIMS - EPSS Supervisor |
| EPSS Last Changed By | ZIM_IN_CM | EPSS_LAST_CHANGED_BY | CHAR | 12 | OLIMS - Transition to EPSS Last Changed By |
| EPSS Last Changed On | ZIM_IN_CM | EPSS_LAST_CHANGED_ON | DATS | 8 | OLIMS - Transition to EPSS Last Changed On |
| EPSS Last Changed Time | ZIM_IN_CM | EPSS_LAST_CHANGED_TIME | TIMS | 6 | OLIMS - Transition to EPSS Time of Last Change |

### EPSS Claim Status (RPB007)
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Claim Type | ZIM_IN_CLAIM | CLAIM_TYPE | CHAR | 1 | OLIMS - Claim Type |
| Claim Status | ZIM_IN_CLAIM | STAT | CHAR | 1 | Claim status code |
| Claim Status Description | ZIM_IN_CLAIM | CLAIM_DESC | CHAR | 80 | OLIMS - Claim Status Description |
| Claim Status Date Updated | ZIM_IN_CLAIM | DATE_UPDATED | DATS | 8 | Date Processed |
| Claim Status Sent Date | ZIM_IN_CLAIM | SENT_DATE | DATS | 8 | OLIMS - Claim Status Sent Date |

### WC Benefits and Salary (RPB005, RPB006)
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| WC Status | ZIM_IN_CM | WC_STATUS | CHAR | 1 | OLIMS - Workers Compensation Status |
| WC Advisor | ZIM_IN_CM | WC_ADVISOR | NUMC | 8 | OLIMS - Workers Compensation Advisor |
| WC End Date | ZIM_IN_CM | WC_END_DATE | DATS | 8 | OLIMS - Workers Compensation End Date |
| WC Close Date | ZIM_IN_CM | WC_CLOSE_DATE | DATS | 8 | OLIMS - Workers Compensation Closure Date |
| Stat Rate | ZIM_WC_BENEFITS | STAT_RATE | DEC | 15 | Workers Compensation - Stat Rate |
| PAWE | ZIM_WC_BENEFITS | PAWE | DEC | 15 | OLIMS - Proposed Average Weekly Earnings |
| Dependents | ZIM_WC_BENEFITS | DEPENDENTS | CHAR | 5 | OLIMS - WC Dependents |
| Top Up Flag | ZIM_WC_BENEFITS | TOP_UP | CHAR | 1 | Checkbox |
| Top Up End Date | ZIM_IN_CM | TOPUP_END_DATE | DATS | 8 | OLIMS - Top-up End Date |

### Salary Wage Types (RPB005)
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Wage Type | ZIM_WC_SALARY | LGART | CHAR | 4 | Wage Type |
| Salary Amount | ZIM_WC_SALARY | BETRG | DEC | 15 | Workers Compensation - Allowances |
| Exclude Allowance | ZIM_WC_SALARY | EXCL_ALLOW | CHAR | 1 | OLIMS - Exclude Allowance |

### Additional EPSS History (RPB007)
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| EPSS Examiner ID (History) | ZIM_EPSS_CLAIM_H | EXAMINER_ID | NUMC | 8 | OLIMS - EPSS Examiner ID |
| EPSS Supervisor (History) | ZIM_EPSS_CLAIM_H | SUPERVISOR | NUMC | 8 | OLIMS - EPSS Supervisor |
| EPSS Update Date | ZIM_EPSS_CLAIM_H | UPD_DATE | DATS | 8 | Date |
| EPSS Update Time | ZIM_EPSS_CLAIM_H | UPD_TIME | TIMS | 6 | Time |
| EPSS Update User | ZIM_EPSS_CLAIM_H | UPD_USER | CHAR | 12 | User Name |

### Calculated Fields (RPB005)
| Report Column | Calculation/Source | Description |
|---|---|---|
| Age (number) | Calculated: Current Date - BIRTHDATE | Employee age in years |
| Hourly Rate | IT0008 infotype (Basic Pay / Hours) | Derived from IT0008 salary record |
| Period 1 - Weeks Remaining | Calculated: 52 - NO_WEEKS_USED_P1 | Remaining weeks in Period 1 |
| Base + 17% loading | Calculated: Base Salary * 1.17 | Base salary with loading |
| 75% of base + loading | Calculated: (Base Salary * 1.17) * 0.75 | 75% of loaded salary |
| 75% of base + loading (fortnightly) | Calculated: (Base Salary * 1.17 * 0.75) / 26 | Fortnightly rate |
| 75% of base + loading (weekly) | Calculated: (Base Salary * 1.17 * 0.75) / 52 | Weekly rate |
| Period 2 - max weekly EPSS Cap breach (flag) | Calculated: Check if weekly payment exceeds cap | Flag for cap breach |

## Assumptions

### Data Sources & System Integration

| Assumption | Description | Impact | Status |
|---|---|---|---|
| **OLIMS Data Currency** | All OLIMS data (claim status, periods, earnings, eligibility) is available and current as of the report run date | Report accuracy depends on real-time or near-real-time OLIMS data synchronization | Assumed available in production |
| **SAP HR Integration** | Employee demographics (rank, command, region, position, DOB) are maintained in SAP HR and synchronized to reporting layer | Missing HR data will result in blank columns for rank, command, region; report may need error handling | Depends on HR master data completeness |
| **SAP Payroll Integration** | EPSS and WC payment amounts are correctly posted to SAP payroll via wage types (49E9, 6A48, 49S9, 6A49) | Payment accuracy depends on correct payroll configuration; wage type mapping must be verified | Requires SAP payroll validation |

### Claim Type & Selection Criteria

| Assumption | Description | Impact | Status |
|---|---|---|---|
| **Claim Type Classification** | Claims are classified as EPSS, Transitioned to EPSS, or PBRI using system flags: `DEF_CLAIM`, `TRANSITION_TO_EPSS`, `PBRIMEMNO` | Report filtering relies on accurate flag values in OLIMS/HR; miscoded claims will be misclassified | Must validate flag accuracy before reporting |
| **WC Primary/Non-Primary Distinction** | WC Primary vs Non-Primary designation is available and maintainable via report UI radio buttons (RPB003) | Users must be able to select Primary, Non-Primary, or Both; impacts claim scope | UI must support tri-state selection |
| **No Org Unit Filtering** | Organisation section columns (NSW State, Command, Region, PAC/PD/Section, Org Unit) are REMOVED from report per RPB004 | Report output simplified; users cannot filter by org structure; may limit operational use cases | User workflow impact - assess if filtering needed |

### Period & Week Counting

| Assumption | Description | Impact | Status |
|---|---|---|---|
| **52-Week Period Assumption** | Period 1 has a maximum duration of 52 weeks; "Period 1 - Weeks Remaining" calculated as `52 - NO_WEEKS_USED_P1` | If actual period duration varies, this formula will be incorrect; requires validation | Confirm max week duration with business |
| **Week Counting Data Availability** | `NO_WEEKS_USED_P1` and related week count fields are accurately maintained in ZIM_EPSS_WEEK_NO table | Report accuracy depends on correct week counting maintenance; gaps/errors will propagate | OLIMS must implement week tracking consistently |
| **Mid-Week Period Handling** | If periods start or end mid-week, week counting logic is not yet defined (marked as [TBC] in Phase 5); current assumption is full-week increments | Week calculations may be inaccurate for mid-week period changes; affects P1/P2 accuracy | **CRITICAL: Awaiting business decision on 3-out-of-7 rule** |

### Salary & Loading Calculations

| Assumption | Description | Impact | Status |
|---|---|---|---|
| **IT0008 Basic Pay Source** | Base Salary is sourced from IT0008 (Basic Pay infotype), wage type 1000 (or equivalent), as of injury/claim start date | Salary calculations dependent on correct IT0008 selection; multiple records require date-based filtering | IT0008 field names and wage types must be confirmed |
| **Base Salary Extraction Method** | Extract base salary as of the most recent IT0008 record valid on the report date or injury date | If no valid IT0008 exists, report may show blank/null values | Requires business logic for date selection |
| **Loading Multiplier = 1.17** | Base salary calculations apply a 17% loading factor (e.g., `Base * 1.17` for "Base + 17% loading" column); this is a fixed multiplier | If actual loading percentage varies by employee/agreement, calculations will be incorrect | Confirm 17% applies uniformly; consider parameterization |
| **75% Reduction Factor** | EPSS benefit calculations apply a 75% reduction of loaded salary (e.g., `(Base * 1.17) * 0.75`); not a net benefit amount | This is a standardized reduction rate per scheme rules; must align with policy | Confirm percentage with business rules |
| **Hourly Rate = Annual Salary / 1976 Hours** | Hourly rate calculated as IT0008 annual salary divided by standard annual hours (typically 1976, equivalent to 38 hours/week × 52 weeks) | If employee is part-time or has variable hours, this assumption is incorrect; requires IT0007 integration | Standard hours (1976 vs 2080) must be confirmed |

### Missing Field Implementations

| Assumption | Description | Impact | Status |
|---|---|---|---|
| **PBRI Claim Flag (RPB006)** | Until OLIMS implements a dedicated PBRI flag field, assume flag is blank or derived from legacy claim type indicators | Report will show blank values for PBRI flag; cannot reliably identify PBRI claims | **[TBC] OLIMS design** – awaiting field implementation |
| **Super Fund Code (RPB006)** | Super Fund Code sourced from SAP HR IT0220 (Retirement, Pension, Savings Plans), field FONDS | If IT0220 is not complete or maintained, column will show blanks; impacts superannuation reporting | **[TBC] HR data completeness** – requires validation |
| **WCCC Status To (RPB006)** | WCCC Status To field represents the end date of a WC certificate status period; sourced from PA2001-ENDDA or OLIMS status history | If status history not tracked in OLIMS, assume blank; may need custom field implementation | **[TBC] OLIMS design** – status history tracking required |
| **WC Duty Desc Lookup** | WC Duty Determination (`DUTY_DET` field) requires text translation via code lookup; assumes lookup table exists mapping codes to "On Duty" / "Off Duty" | If lookup table missing, report shows code instead of descriptive text; impacts usability | Code table must be created/confirmed |

### Payroll & Payment Assumptions

| Assumption | Description | Impact | Status |
|---|---|---|---|
| **EPSS Payment Extraction** | EPSS Period 1/2/3 payment amounts extracted from SAP payroll wage types 49E9, 6A48 (P1), 49S9, 6A49 (P2) for each pay period in reporting month | If wage types incorrect or not configured, payment amounts will be zero/incorrect | Wage type configuration must be validated |
| **Zero Amounts for Non-Payment Months** | If no EPSS payment in a given period, amount columns show 0 (not blank) | Report will include zero-payment records; filters must handle zero values if needed | Report should clarify zero vs null semantics |
| **Claim Status Data Freshness** | EPSS Claim Status columns (Claim Type, Claim Status, Date Updated, Sent Date) are sourced from ZIM_IN_CLAIM and reflect most recent updates from OLIMS | Status may lag behind actual OLIMS changes if report refresh is infrequent; assume report run updates data | **[TBC] OLIMS integration** – confirm update frequency |

### Transitioned Claim Logic

| Assumption | Description | Impact | Status |
|---|---|---|---|
| **PBRI → EPSS Transition Identification** | Transitioned claims identified via `TRANSITION_TO_EPSS` flag in ZIM_IN_CM; flag = 'Y' indicates PBRI→EPSS transition | If transition flag not set correctly, transitioned claims will not be identified; requires audit trail | Data quality depends on flag maintenance accuracy |
| **Transition Week Count Adjustment** | For transitioned claims, week counts may be adjusted on a case-by-case basis (noted in SR report column 18 spec); RPB report assumes week counts stored in ZIM_EPSS_WEEK_NO are correct | If adjustments not captured/stored, week counts for transitioned claims may be incorrect | **[TBC] Transition logic** – case-by-case adjustment rules needed |

### OLIMS Field Availability

| Assumption | Description | Impact | Status |
|---|---|---|---|
| **EPSS Examiner/Supervisor IDs** | Employee ID fields (EPSS_EXAMINER_ID, EPSS_SUPERVISOR) are numeric (NUMC 8) and link to HR employee master | If IDs not maintained or not linked to employee master, report cannot join to employee names/details | Requires HR master verification |
| **EPSS Last Changed Metadata** | EPSS_LAST_CHANGED_BY (CHAR 12), EPSS_LAST_CHANGED_ON (DATS), EPSS_LAST_CHANGED_TIME (TIMS) track audit trail for EPSS updates | If audit fields not populated, audit trail is incomplete; impacts compliance/audit use cases | OLIMS must populate all audit fields |
| **Multiple Period Date Fields** | Period start/end dates stored separately for P1, P2, P3 in ZIM_IN_CM (EPSS_START_DATE_P1, EPSS_END_DATE_P1, etc.) | Report includes all dates; if any date field null, that period is not active/ended | Requires careful null handling for ongoing periods |

### Data Quality & Completeness

| Assumption | Description | Impact | Status |
|---|---|---|---|
| **No Data Validation Rules** | Report assumes all source data (SAP, OLIMS, HR, Payroll) is complete and accurate; no field-level validation is defined | Invalid or missing data will propagate to report; no data quality gates | **[TBC] Define validation rules** – e.g., payment amounts >= 0, dates in logical order |
| **Active Claims Only** | Report scope assumes "active" claims (not ceased, not deleted) unless explicitly requested; definition of "active" per RPB002 selection | If user selects "All" claim types, includes ceased claims as per requirement; may be large dataset | Selection criteria must be clearly communicated to users |
| **Report Date Snapshot** | Report output reflects data as of the report run date; no historical snapshots unless explicitly stored | If report re-run later, results may differ due to data changes; no audit trail of prior report runs | Consider archiving historical reports if needed |

## Open Questions (Business)

**This section separates what is ALREADY DEFINED in the BRD from what requires business clarification.**

### Confirmed from BRD (No Further Questions Needed)

Based on review of the BRD, the following aspects of RPB002 claim type selection are **already clearly defined**:

| Item | BRD Definition | Evidence |
|---|---|---|
| **Claim Type Options** | Four selection options available: EPSS claim, Transitioned to EPSS, PBRI claims, All | RPB002, RPC002 |
| **PBRI Claim Identification** | PBRI claims are identified by wagetype 4909 (Clause 129 top-up); dedicated PBRI claim flag field exists in OLIMS | RPB006 specifies "PBRI claim (Flag)" column; TR001-TR006 detail PBRI transitional scenarios; TR012 specifies "PBRI Transition to EPSS" claim type |
| **Claim Type Flags Required** | Distinct flags exist for: PBRI claim, EPSS claim, Transitioned to EPSS | RPB006 requires three separate flag columns; RPC003 confirms same flags |
| **Transitional Claim Handling** | PBRI claims can transition to EPSS with detailed scenario-based logic | TR001-TR006 document five specific PBRI→EPSS transition scenarios with week count adjustments |
| **OLIMS Case Management** | OLIMS supports both PBRI and EPSS case management with transition capability | TR003, TR005-TR006 specify OLIMS facilities for transitioning and recalculating benefits |

---

### VERIFIED REQUIREMENTS (From BRD Requirement Gathering - 2026-01-23)

**The following requirements have been verified through BRD analysis:**

| Item | Verified Specification | Related Req(s) | Status | Implementation Notes |
|---|---|---|---|---|
| **Flag Value Domains** | DEF_CLAIM, TRANSITION_TO_EPSS, PBRI_FLAG all use domain: **Y** = True, **N/NULL** = False | RPB002, RPB006 | ✅ VERIFIED | Use consistent Y/N convention across all three flags; treat NULL as False/No |
| **Flag Combination Rules** | Claims CAN have multiple flags simultaneously (e.g., DEF_CLAIM='Y' AND TRANSITION_TO_EPSS='Y' are not mutually exclusive) | RPB002 | ✅ VERIFIED | Confirm with OLIMS if this combination occurs in production data; design filters to handle multi-flag scenarios |
| **Selection Filter Logic - EPSS Claim** | Show ONLY pure EPSS claims: `WHERE DEF_CLAIM = 'Y' AND TRANSITION_TO_EPSS IS NULL` | RPB002 | ✅ VERIFIED | Excludes transitioned claims from "EPSS claim" selection |
| **Selection Filter Logic - Transitioned to EPSS** | Show transitioned claims: `WHERE DEF_CLAIM = 'Y' AND TRANSITION_TO_EPSS = 'Y'` | RPB002 | ✅ VERIFIED | Identifies claims that originated as PBRI, now managed as EPSS |
| **Selection Filter Logic - PBRI Claims** | Show pure PBRI claims: `WHERE PBRIMEMNO IS NOT NULL AND TRANSITION_TO_EPSS IS NULL` | RPB002 | ✅ VERIFIED | Excludes PBRI claims that have transitioned to EPSS |
| **Selection Filter Logic - All** | Show all accessible claims (respects user role-based access control): No filter restriction on claim type | RPB002 | ✅ VERIFIED | Apply RBAC at query level; no additional data quality filtering |
| **UI Control Type** | Use **Radio Buttons** for both RPB002 (claim type) and RPB003 (WC Primary/Non-Primary) | RPB002, RPB003 | ✅ VERIFIED | Single selection only; mutually exclusive options |
| **Multi-Select Behavior** | Users can select **ONE claim type at a time** (cannot combine "EPSS claim" + "PBRI claims") | RPB002, RPB003 | ✅ VERIFIED | "All" and "Both" options indicate single-selection pattern |
| **"All" Option Scope** | Show every claim in system that user has access to view | RPB002 | ✅ VERIFIED | Respects user access permissions (command, region, RBAC); not restricted to only complete/valid data |

### Clarification Still Needed from Business

**These items require business stakeholder sign-off before implementation:**

| Question | Related Req(s) | Why it Matters | Priority | Status |
|---|---|---|---|---|
| **PBRI Flag Field Status** | RPB006 | Is dedicated PBRI flag field implemented in OLIMS, or should we derive it from PBRIMEMNO? | High | 🟡 TBC - OLIMS design |
| **Default Selection** | RPB002 | What should be the default when report first loads? (All? EPSS only? User's previous?) | Medium | 🟡 TBC - UX decision |
| **Ceased Claims Handling** | RPB002 | Include ceased claims? If yes, show by default or via checkbox option? | Medium | 🟡 TBC - Business decision |
| **Multi-Flag Visibility** | RPB002 | If claim has both EPSS and Transitioned flags, show in: (a) Both selections, (b) Only "All", (c) Primary only? | Medium | 🟡 TBC - Data model decision |
| **Flag Combination in Production** | RPB002 | Confirm actual occurrence of DEF_CLAIM='Y' AND TRANSITION_TO_EPSS='Y' in live data | High | 🟡 TBC - Data audit |
| **Mid-Week Period Handling** | RPB005 | How to calculate weeks if periods start/end mid-week? (3-out-of-7 rule or full weeks only?) | Critical | 🔴 BLOCKING - Phase 5 TBC |

## Implementation Guide - SQL Filter Patterns (RPB002)

Based on verified requirements, use these SQL filter patterns for claim type selection:

### Filter 1: EPSS Claim (Pure EPSS - Not Transitioned)
```sql
WHERE DEF_CLAIM = 'Y' 
  AND (TRANSITION_TO_EPSS IS NULL OR TRANSITION_TO_EPSS = 'N')
```

### Filter 2: Transitioned to EPSS (PBRI → EPSS)
```sql
WHERE DEF_CLAIM = 'Y' 
  AND TRANSITION_TO_EPSS = 'Y'
```

### Filter 3: PBRI Claims (Pure PBRI - Not Transitioned)
```sql
WHERE PBRIMEMNO IS NOT NULL 
  AND (TRANSITION_TO_EPSS IS NULL OR TRANSITION_TO_EPSS = 'N')
```

### Filter 4: All (Respecting User Access Control)
```sql
WHERE (user_has_access_to_scope = TRUE)  -- Apply RBAC
  AND claim_status != 'DELETED'          -- Exclude deleted records
  -- No filtering on DEF_CLAIM, TRANSITION_TO_EPSS, or PBRIMEMNO
```

## Recommended UI Implementation (RPB002, RPB003)

**Control Type:** Radio Button Group (Single Selection)

**RPB002 - Claim Type Selection:**
- ○ EPSS claim (Pure EPSS claims only)
- ○ Transitioned to EPSS (PBRI → EPSS transitions)
- ○ PBRI claims (Pure PBRI claims only)
- ○ All (All accessible claims)
- **Default:** All

**RPB003 - WC Primary/Non-Primary:**
- ○ Primary
- ○ Non-Primary
- ○ Both
- **Default:** Both

## Notes

- IT0008 (Basic Pay infotype) is referenced for salary calculations but specific field mappings require further technical specification
- Super Fund Code field mapping requires identification of the specific PA table/infotype used for superannuation fund information
- WC Duty Desc. (On Duty / Off Duty) appears to be derived from DUTY_DET field with text lookup
- WCCC Status To field requires clarification - may need additional table mapping for status history
- All flag comparisons use consistent Y/N/NULL domain per verified requirements
- Role-based access control (RBAC) must be enforced at the SQL query level for "All" selection
