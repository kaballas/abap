# RPB Report: Functional Specification

**Document Purpose:** Functional specification for the EPSS On Duty Claim Report (RPB) – mapping business requirements to SAP data sources.

**Date Created:** 23 January 2026  
**Document Status:** Handover Specification  
**Source BRD:** brd.md (Deployment Two requirements)  
**Report Spec:** RPB-epss-on-duty-claim-report.md  
**SAP Data Reference:** SAP_Fields.md  

---

## Table of Contents

1. [Executive Summary](#executive-summary)
2. [Business Context & Objectives](#business-context--objectives)
3. [Report Overview & Purpose](#report-overview--purpose)
4. [Data Requirements by Requirement](#data-requirements-by-requirement)
5. [SAP Data Sources](#sap-data-sources)
6. [Selection Criteria & Filtering](#selection-criteria--filtering)
7. [Derived & Calculated Fields](#derived--calculated-fields)
8. [Data Quality & Validation Rules](#data-quality--validation-rules)
9. [Outstanding Clarifications](#outstanding-clarifications)

---

## Executive Summary

The EPSS On Duty Claim Report (RPB) provides EPSS Claims Officers with a comprehensive view of police officers receiving on-duty EPSS benefits. The report consolidates claim management, EPSS entitlement tracking, and benefit calculation data from OLIMS (Online Injury Management System) into a single business intelligence view.

**Key Business Drivers:**
- Support claim administration for on-duty injuries within the Enhanced Police Support Scheme (EPSS)
- Track EPSS entitlement periods (Period 1 and Period 2) and utilisation
- Calculate salary-based benefit amounts with loading and deductions
- Support filtering by claim type (EPSS, Transitioned, PBRI)
- Provide claim status history and audit trail

**Data Scope:** Active and historical on-duty EPSS claims in OLIMS

---

## Business Context & Objectives

### EPSS Background

From 1 October 2024, NSWPF introduced the Enhanced Police Support Scheme (EPSS) to replace the PBRI scheme for injured police officers.

**Report Context:** This report was originally built in November 2024 but lacked several critical fields and capabilities. Phase 5 scope includes:
- Adding missing Period 1 and Period 2 columns
- Incorporating new OLIMS fields built after initial report delivery
- Supporting additional claim type filtering
- Adding EPSS supervisor and claim status tracking

### Intended Users
- EPSS Claims Officers (primary)
- HSWC management (supervisory)
- Finance/HR reporting teams (secondary)

### Key Business Rules
1. Report data sourced from OLIMS case management records
2. Must support filtering by claim type: EPSS, Transitioned to EPSS, PBRI, or All
3. Must support WC type filtering: Primary, Non-Primary, or Both
4. Must exclude organisational hierarchy fields (Command, Region, PAC/PD/Section)
5. Calculations use InfoType 0008 (Basic Pay) as salary source
6. Period 1 entitlement is time-bound and tracked weekly
7. Period 2 entitlement may have indexation and cap thresholds

---

## Report Overview & Purpose

### Report Name
EPSS On Duty Claim Report

### Purpose
Provide a comprehensive list of police officers receiving on-duty EPSS benefits with complete claim history, entitlement tracking, and benefit calculations.

### Core Information Provided
- **Employee Details:** Name, DOB, position, age
- **Claim Information:** Claim number, type, date of disablement, duty status
- **EPSS Entitlements:** Period 1 and 2 dates, weeks utilised, remaining
- **Salary Calculations:** Base rates, loading, percentages, cap compliance
- **Status Tracking:** Claim status, last modified date, examiner/supervisor

### Report Audience
EPSS Claims Officers, HSWC managers, system administrators

---

## Data Requirements by Requirement

Each RPB requirement maps to specific data elements and business logic.

### RPB002: Claim Type Selection Criteria

**Business Requirement:** Allow filtering by insurance claim type

**Supported Filter Values:**
- `EPSS claim` – Officer eligible for EPSS under main scheme
- `Transitioned to EPSS` – Officer transitioned from PBRI to EPSS
- `PBRI claims` – Officer with PBRI membership (legacy scheme)
- `All` – All claim types

**Data Elements Required:**
| Requirement | SAP Table | SAP Field | Business Logic |
|---|---|---|---|
| EPSS Claim Flag | ZIM_IN_CM | DEF_CLAIM | Filter where = 'X' |
| Transitioned Flag | ZIM_IN_CM | TRANSITION_TO_EPSS | Filter where = 'X' |
| PBRI Membership | ZIMLTRVAR1 | PBRIMEMNO | Filter where is not null and not empty |

**Implementation Logic:**
```
IF user selects "EPSS claim" → show records where DEF_CLAIM = 'X'
IF user selects "Transitioned" → show records where TRANSITION_TO_EPSS = 'X'
IF user selects "PBRI claims" → show records where PBRIMEMNO has value
IF user selects "All" → show all records regardless of flag values
```

---

### RPB003: WC Primary and Non-Primary Selection

**Business Requirement:** Allow filtering by WC claim category (Primary, Non-Primary, or Both)

**Current State:** [TBC - Field containing Primary/Non-Primary indicator not yet identified in SAP_Fields.md]

**Data Elements Required:**
| Element | Source | Field | Status |
|---|---|---|---|
| Primary Indicator | ZIM_WC_BENEFITS or ZIM_IN_CM | [TBC] | Awaiting business clarification |
| Non-Primary Indicator | ZIM_WC_BENEFITS or ZIM_IN_CM | [TBC] | Awaiting business clarification |

**Business Logic (pending clarification):**
```
IF user selects "Primary" → filter by Primary indicator
IF user selects "Non-Primary" → filter by Non-Primary indicator
IF user selects "Both" → show both Primary and Non-Primary records
```

**Action Required:** Identify field in SAP containing Primary/Non-Primary classification

---

### RPB004: Remove Organisation Section

**Business Requirement:** Exclude organisational hierarchy fields from report output

**Fields to EXCLUDE from Output:**
- NSW State (location)
- Command (police command)
- Region/Branch (regional assignment)
- PAC/PD/Section (Police Area Command / Police District / Section)
- Organisation Unit (OLIMS organisation entity)

**SAP Fields Not to Display:**
| Field Name | SAP Table | SAP Field | Reason |
|---|---|---|---|
| Org Unit | ZIMLTRVAR1 | ORGEH | Exclude per requirement |
| Org Unit Name | ZIMLTRVAR1 | ORGTXT | Exclude per requirement |
| Employee PAC/PD Description | ZIMLTRVAR1 | EMPLACDESC | Exclude per requirement |
| Employee Region Description | ZIMLTRVAR1 | EMPREGDESC | Exclude per requirement |

**Implementation:** Simply omit these fields from report column output; no data transformation needed.

---

### RPB005: EPSS Period Columns & Salary Calculations

**Business Requirement:** Include Period 1 and Period 2 entitlement tracking plus salary-based calculations

#### Period 1 Columns

| Report Column | SAP Source | Field | Data Type | Business Logic |
|---|---|---|---|---|
| Period 1 – Start Date | ZIM_IN_CM | EPSS_START_DATE_P1 | Date | When Period 1 entitlement begins |
| Period 1 – End Date | ZIM_IN_CM | EPSS_END_DATE_P1 | Date | When Period 1 entitlement ends |
| Period 1 – Weeks Utilised | ZIM_EPSS_WEEK_NO | NO_WEEKS_USED_P1 | Number | Cumulative weeks claimed in Period 1 |
| Period 1 – Weeks Remaining | CALCULATED | (52 – NO_WEEKS_USED_P1) | Number | Remaining weeks available in Period 1 |

**Note:** Period 1 entitlement is typically a fixed 52-week maximum; weeks remaining = 52 minus utilised.

#### Period 2 Columns

| Report Column | SAP Source | Field | Data Type | Business Logic |
|---|---|---|---|---|
| Period 2 – Start Date | ZIM_IN_CM | EPSS_START_DATE_P2 | Date | When Period 2 entitlement begins (after P1 ends) |
| Period 2 – End Date | ZIM_IN_CM | EPSS_END_DATE_P2 | Date | When Period 2 entitlement ends |
| Period 2 – Max Weekly EPSS Cap Breach (flag) | CALCULATED | Formula-based | Flag (Y/N) | 'X' if weekly payment exceeds cap threshold |

**Cap Breach Logic:** 
```
Weekly Rate = (Base Salary * 1.17 * 0.75) / 52 weeks
IF Weekly Rate > Policy Cap THEN flag as 'X'
ELSE flag as blank
```

**Note:** EPSS Cap threshold to be confirmed with business (currently TBC).

#### Salary Calculation Columns

All calculations derive from **PAWE (Proposed Average Weekly Earnings)** stored in ZIM_WC_BENEFITS.

| Report Column | Calculation Formula | Business Logic |
|---|---|---|
| Base + 17% Loading | PAWE × 1.17 | Add 17% loading to base weekly earnings |
| 75% of Base + Loading | (PAWE × 1.17) × 0.75 | Reduce loaded salary to 75% (benefit rate) |
| 75% of Base + Loading (Fortnightly) | [(PAWE × 1.17) × 0.75] ÷ 26 | Fortnightly benefit (26 pay periods/year) |
| 75% of Base + Loading (Weekly) | [(PAWE × 1.17) × 0.75] ÷ 52 | Weekly benefit (52 pay periods/year) |

**Salary Source:** PAWE = ZIM_WC_BENEFITS.PAWE (Proposed Average Weekly Earnings)

---

### RPB006: New Columns Addition

**Business Requirement:** Add 11 new columns to report for comprehensive claim tracking

#### Column 1: Date of Disablement

| Element | Detail |
|---|---|
| SAP Source | ZIM_IN_CM |
| SAP Field | DISABLEMENT_DATE |
| Data Type | Date |
| Business Logic | Date when officer became unable to work due to injury |

#### Column 2: WC Duty Description (On Duty / Off Duty)

| Element | Detail |
|---|---|
| SAP Source | ZIM_IN_CM |
| SAP Field | DUTY_DET |
| Data Type | Text |
| Lookup Logic | 'O' → 'On Duty', 'F' → 'Off Duty', other → 'Unknown' |
| Business Logic | Classification of injury as on-duty vs off-duty |

#### Column 3: PBRI Claim (Flag)

| Element | Detail |
|---|---|
| SAP Source | ZIMLTRVAR1 |
| SAP Field | PBRIMEMNO |
| Data Type | Flag (X or blank) |
| Logic | IF PBRIMEMNO is not null AND not empty THEN 'X' ELSE blank |
| Business Logic | Indicates officer holds PBRI membership |

#### Column 4: EPSS Claim (Flag)

| Element | Detail |
|---|---|
| SAP Source | ZIM_IN_CM |
| SAP Field | DEF_CLAIM |
| Data Type | Flag (X or blank) |
| Business Logic | 'X' indicates EPSS claim, blank indicates non-EPSS |

#### Column 5: Transitioned to EPSS (Flag)

| Element | Detail |
|---|---|
| SAP Source | ZIM_IN_CM |
| SAP Field | TRANSITION_TO_EPSS |
| Data Type | Flag (X or blank) |
| Business Logic | 'X' indicates officer transitioned from PBRI to EPSS scheme |

#### Column 6: Hourly Rate

| Element | Detail |
|---|---|
| SAP Source | PA0008 (InfoType 0008 – Basic Pay) |
| SAP Field | [TBC – requires HR infotype mapping] |
| Data Type | Decimal (hourly rate) |
| Calculation | Base Salary ÷ Planned Hours per Period |
| Status | [TBC – awaiting PA infotype mapping] |

#### Column 7: Age (Number)

| Element | Detail |
|---|---|
| SAP Source | ZIMLTRVAR1 |
| SAP Field | BIRTHDATE |
| Data Type | Number (years) |
| Calculation | Current Date – BIRTHDATE (in years, accounting for birthday not yet occurred) |
| Business Logic | Officer's age in completed years |
| Example | If born 15 Jan 1980 and today is 23 Jan 2026, age = 46 |

#### Column 8: Super Fund Code

| Element | Detail |
|---|---|
| SAP Source | [TBC] |
| SAP Field | [TBC – requires PA table/infotype identification] |
| Data Type | Code (text) |
| Status | [TBC – awaiting superannuation infotype mapping] |

#### Column 9: EPSS Supervisor

| Element | Detail |
|---|---|
| SAP Source | ZIM_IN_CM |
| SAP Field | EPSS_SUPERVISOR |
| Data Type | Personnel Number (numeric) |
| Business Logic | OLIMS EPSS supervisor overseeing claim administration |
| Note | Display as personnel number; can be resolved to name via lookup if needed |

#### Column 10: WCCC Status To

| Element | Detail |
|---|---|
| SAP Source | [TBC] |
| SAP Field | [TBC – status transition field] |
| Data Type | Status code |
| Context | "Add after WCC Status From field" per requirement |
| Status | [TBC – awaiting clarification on field purpose and location] |

#### Column 11: EPSS Claim Status – Period Details

| Sub-Column | SAP Source | SAP Field | Data Type |
|---|---|---|---|
| Claim Status Description | ZIM_IN_CLAIM | CLAIM_DESC | Text (80 chars) |
| Date Modified | ZIM_IN_CLAIM | DATE_UPDATED | Date |
| Sent Date | ZIM_IN_CLAIM | SENT_DATE | Date |

**Business Logic:** Show latest claim status record per incident, including when status was last updated and when communicated to employee.

---

### RPB007: EPSS Claims Advisor & Status Fields

**Business Requirement:** Populate EPSS Claims Advisor and Claim Status from OLIMS fields built post-November 2024

#### EPSS Claims Advisor

| Element | Detail |
|---|---|
| SAP Source | ZIM_IN_CM |
| SAP Field | EPSS_EXAMINER_ID |
| Data Type | Personnel Number (numeric) |
| Business Logic | OLIMS EPSS examiner/claims advisor assigned to case |
| Display Logic | Can be resolved to employee name via lookup if needed |

#### EPSS Claim Status Fields (Latest Record)

| Field | SAP Source | SAP Field | Data Type | Business Logic |
|---|---|---|---|---|
| Claim Type | ZIM_IN_CLAIM | CLAIM_TYPE | Code | Type of claim (e.g., WC, IP, SI) |
| Claim Status Code | ZIM_IN_CLAIM | STAT | Code (1 char) | Status code (to be decoded per business rules) |
| Claim Status Description | ZIM_IN_CLAIM | CLAIM_DESC | Text (80 chars) | Human-readable status (e.g., "Approved", "Pending") |
| Date Modified | ZIM_IN_CLAIM | DATE_UPDATED | Date | When status was last updated in OLIMS |
| Sent Date | ZIM_IN_CLAIM | SENT_DATE | Date | When status notification was sent to employee |

**Selection Logic:** Always show LATEST claim status per incident (identified by maximum DATE_PROCESSED and TIME_PROCESSED).

#### EPSS Claim History (Optional)

| Field | SAP Source | SAP Field | Data Type | Business Purpose |
|---|---|---|---|---|
| Last Changed By | ZIM_IN_CM | EPSS_LAST_CHANGED_BY | User ID | Who made the latest change to EPSS record |
| Last Changed On | ZIM_IN_CM | EPSS_LAST_CHANGED_ON | Date | When EPSS record was last modified |
| Last Changed Time | ZIM_IN_CM | EPSS_LAST_CHANGED_TIME | Time | Time of last EPSS modification |

---

## SAP Data Sources

### Master Data Tables

#### ZIMLTRVAR1 (Employee & Incident Master)

**Purpose:** Primary source for employee personal information and incident details

**Key Fields for Report:**

| Field | Type | Length | Business Use |
|---|---|---|---|
| PERNR | CHAR | 8 | Employee identifier |
| INCIDENT | CHAR | 10 | Incident identifier |
| VORNA | CHAR | 40 | Employee first name |
| NACHN | CHAR | 40 | Employee last name |
| BIRTHDATE | CHAR | 10 | For age calculation |
| PLANS | NUMC | 8 | Position number |
| POSNDESC | CHAR | 40 | Position description |
| PBRIMEMNO | CHAR | 20 | PBRI membership flag |
| ORGEH | NUMC | 8 | Org unit (EXCLUDE per RPB004) |
| ORGTXT | CHAR | 40 | Org unit name (EXCLUDE per RPB004) |
| EMPLACDESC | CHAR | 40 | PAC/Section (EXCLUDE per RPB004) |
| EMPREGDESC | CHAR | 40 | Region (EXCLUDE per RPB004) |

**Data Governance:**
- One record per employee-incident combination
- BIRTHDATE in format YYYY-MM-DD (convert as needed)
- PBRIMEMNO null or empty if no PBRI membership

---

#### ZIM_IN_CM (Incident Case Management)

**Purpose:** Core incident claim management data including EPSS periods, flags, and advisors

**Key Fields for Report:**

| Field | Type | Length | Business Use |
|---|---|---|---|
| PERNR | NUMC | 8 | Link to employee |
| INCIDENT | NUMC | 10 | Link to incident |
| DISABLEMENT_DATE | DATS | 8 | Date injury rendered officer unable to work |
| DUTY_DET | CHAR | 1 | On Duty (O) vs Off Duty (F) |
| DEF_CLAIM | CHAR | 1 | EPSS claim flag ('X' = yes) |
| TRANSITION_TO_EPSS | CHAR | 1 | Transitioned from PBRI flag ('X' = yes) |
| EPSS_START_DATE_P1 | DATS | 8 | Period 1 start date |
| EPSS_END_DATE_P1 | DATS | 8 | Period 1 end date |
| EPSS_START_DATE_P2 | DATS | 8 | Period 2 start date |
| EPSS_END_DATE_P2 | DATS | 8 | Period 2 end date |
| EPSS_EXAMINER_ID | NUMC | 8 | EPSS claims officer/examiner |
| EPSS_SUPERVISOR | NUMC | 8 | EPSS supervisor overseeing case |
| EPSS_LAST_CHANGED_BY | CHAR | 12 | User ID of last change |
| EPSS_LAST_CHANGED_ON | DATS | 8 | Date of last EPSS change |
| EPSS_LAST_CHANGED_TIME | TIMS | 6 | Time of last EPSS change |
| WC_STATUS | CHAR | 1 | WC claim status |
| WC_ADVISOR | NUMC | 8 | WC advisor personnel number |
| WC_END_DATE | DATS | 8 | WC benefit end date |
| WC_CLOSE_DATE | DATS | 8 | WC claim closure date |
| IP_WCLMN | CHAR | 15 | Income Protection claim number |
| SI_WCLMN | CHAR | 15 | Self-Insured claim number |
| TOPUP_END_DATE | DATS | 8 | Top-up benefit end date |

**Data Governance:**
- One record per incident
- Flags are 'X' for true, blank for false
- Dates in YYYYMMDD format (convert as needed)
- All EPSS_ fields may be null if not applicable

---

#### ZIM_WC_BENEFITS (Claim Benefits & Entitlements)

**Purpose:** Workers compensation benefits, rates, and dependents

**Key Fields for Report:**

| Field | Type | Length | Business Use |
|---|---|---|---|
| PERNR | NUMC | 8 | Link to employee |
| INCIDENT | NUMC | 10 | Link to incident |
| DATE_FROM | DATS | 8 | Benefit period start |
| DATE_TO | DATS | 8 | Benefit period end |
| WCLMN | CHAR | 15 | Workcover claim number |
| PAWE | DEC | 15 | Proposed Average Weekly Earnings (salary basis) |
| STAT_RATE | DEC | 15 | Statutory rate per week |
| STAT | CHAR | 1 | Benefit status |
| DEPENDENTS | CHAR | 5 | Number of dependents |
| DEP_SPOUSE | CHAR | 1 | Has dependent spouse |
| DEP_CHILDREN | NUMC | 3 | Count of dependent children |
| TOP_UP | CHAR | 1 | Top-up applied ('X' = yes) |

**Data Governance:**
- Multiple records per incident (one per benefit period)
- Use CURRENT benefit period (DATE_FROM ≤ today ≤ DATE_TO)
- PAWE is decimal with 2 decimal places (e.g., 1234.56)
- STAT_RATE used for statutory calculations

**Critical:** Always select the ACTIVE benefit period (most recent with DATE_FROM in past and DATE_TO in future, or NULL).

---

#### ZIM_IN_CLAIM (Claim Status History)

**Purpose:** Track claim status changes and decisions over time

**Key Fields for Report:**

| Field | Type | Length | Business Use |
|---|---|---|---|
| PERNR | NUMC | 8 | Link to employee |
| INCIDENT | NUMC | 10 | Link to incident |
| CLAIM_TYPE | CHAR | 1 | Type of claim (WC, IP, SI, etc.) |
| BEGDA | DATS | 8 | Status period start |
| ENDDA | DATS | 8 | Status period end |
| DATE_PROCESSED | DATS | 8 | Date status was processed |
| TIME_PROCESSED | TIMS | 6 | Time status was processed |
| STAT | CHAR | 1 | Status code |
| CLAIM_DESC | CHAR | 80 | Status description (text) |
| SENT_DATE | DATS | 8 | Date status sent to employee |
| DATE_UPDATED | DATS | 8 | Date updated in system |

**Data Governance:**
- Multiple records per incident (one per status change)
- Always show LATEST status (ordered by DATE_PROCESSED DESC, TIME_PROCESSED DESC)
- CLAIM_DESC provides human-readable status
- SENT_DATE shows communication to employee

---

#### ZIM_EPSS_WEEK_NO (EPSS Weekly Entitlement Tracking)

**Purpose:** Track weekly EPSS utilisation per pay period

**Key Fields for Report:**

| Field | Type | Length | Business Use |
|---|---|---|---|
| PERNR | NUMC | 8 | Link to employee |
| INCIDENT | NUMC | 10 | Link to incident |
| FPPER | CHAR | 6 | For-Period (YYYYMM payroll format) |
| WEEK | NUMC | 1 | Week identifier (1 or 2) |
| NO_WEEKS_USED_P1 | NUMC | 3 | Cumulative weeks used in Period 1 |
| INPER | CHAR | 6 | In-Period (YYYYMM) |
| LAST_MODIFIED_DATE | DATS | 8 | Date of last modification |
| LAST_MODIFIED_TIME | TIMS | 6 | Time of last modification |
| LAST_MODIFIED_BY | CHAR | 12 | User who modified |

**Data Governance:**
- Multiple records per incident (one per pay period)
- Always show LATEST record (ordered by LAST_MODIFIED_DATE DESC)
- Filter by WEEK = 1 for Period 1 tracking
- NO_WEEKS_USED_P1 is cumulative (not per period, but total used to date)

---

#### ZIM_EPSS_CLAIM_H (EPSS Claim History)

**Purpose:** Historical audit trail of EPSS claim assignments and changes

**Key Fields for Report:**

| Field | Type | Length | Business Use |
|---|---|---|---|
| PERNR | NUMC | 8 | Link to employee |
| INCIDENT | NUMC | 10 | Link to incident |
| SEQ_NO | NUMC | 5 | Sequence number (history sequence) |
| EXAMINER_ID | NUMC | 8 | EPSS examiner assigned (historical) |
| SUPERVISOR | NUMC | 8 | EPSS supervisor (historical) |
| UPD_DATE | DATS | 8 | Date of change |
| UPD_TIME | TIMS | 6 | Time of change |
| UPD_USER | CHAR | 12 | User who made change |

**Data Governance:**
- Multiple records per incident (one per change event)
- Use LATEST record (ordered by SEQ_NO DESC)
- Provides audit trail of examiner/supervisor assignments

---

### Supporting HR Infotype (Not Yet Mapped)

#### PA0008 (Basic Pay) - Hourly Rate Source

**Status:** [TBC]

**Expected Fields (from business requirement):**
- Base salary amount
- Planned working hours (per week/month/year)
- Allowances (inclusion/exclusion flags)

**Action Required:** Obtain mapping of PA0008 fields to support hourly rate calculation.

---

### Supporting Infotype (Not Yet Mapped)

#### Superannuation Fund Code - Source

**Status:** [TBC]

**Business Context:** PBRI scheme involves specific superannuation fund arrangements.

**Action Required:** Identify which PA infotype contains superannuation fund code and mapping rules.

---

## Selection Criteria & Filtering

### Required Filters

#### Filter 1: Claim Type (RPB002)

**UI Control Type:** Radio buttons with multi-select or dropdown

**Filter Options:**
1. All
2. EPSS claim
3. Transitioned to EPSS
4. PBRI claims

**Implementation Logic:**

```
IF Filter = "All"
  THEN include all records

IF Filter = "EPSS claim"
  THEN include only records WHERE ZIM_IN_CM.DEF_CLAIM = 'X'

IF Filter = "Transitioned to EPSS"
  THEN include only records WHERE ZIM_IN_CM.TRANSITION_TO_EPSS = 'X'

IF Filter = "PBRI claims"
  THEN include only records WHERE ZIMLTRVAR1.PBRIMEMNO IS NOT NULL
    AND ZIMLTRVAR1.PBRIMEMNO <> ''
```

**Default:** "All"

---

#### Filter 2: WC Claim Type (RPB003)

**UI Control Type:** Radio buttons

**Filter Options:**
1. Primary
2. Non-Primary
3. Both

**Implementation Logic:**

```
[TBC] – Awaiting identification of Primary/Non-Primary field

Potential location: ZIM_WC_BENEFITS or ZIM_IN_CM
Potential field name: [Classification field TBC]
```

**Default:** "Both"

**Action Required:** Identify field containing Primary/Non-Primary indicator.

---

#### Optional Filters (Business Logic)

| Filter | Control | Values | Purpose |
|---|---|---|---|
| Employee Number Range | Text/Numeric | From–To | Filter by PERNR range |
| Incident Number Range | Text/Numeric | From–To | Filter by INCIDENT range |
| EPSS Start Date Range | Date picker | From–To | Filter by EPSS_START_DATE_P1 |
| Active Claims Only | Checkbox | Yes/No | Show only open claims (END_DATE null or future) |

---

## Derived & Calculated Fields

### Age Calculation

**Source Data:**
- ZIMLTRVAR1.BIRTHDATE

**Business Logic:**
Calculate officer's age in completed years as of report run date.

**Formula:**
```
Age = YEAR(TODAY()) – YEAR(BIRTHDATE)
     – IF(MONTH(BIRTHDATE) > MONTH(TODAY()) 
        OR (MONTH(BIRTHDATE) = MONTH(TODAY()) AND DAY(BIRTHDATE) > DAY(TODAY()))
        THEN 1 ELSE 0)
```

**Example:**
- Officer born: 15 January 1980
- Report date: 23 January 2026
- Age = 2026 – 1980 – 0 = 46 years

**Note:** Subtract 1 if birthday hasn't occurred yet in current year.

---

### Weeks Remaining in Period 1

**Source Data:**
- ZIM_EPSS_WEEK_NO.NO_WEEKS_USED_P1

**Business Logic:**
Period 1 has a fixed 52-week maximum entitlement. Calculate remaining.

**Formula:**
```
Weeks Remaining = 52 – NO_WEEKS_USED_P1
```

**Validation Rules:**
- NO_WEEKS_USED_P1 must be ≤ 52
- Weeks Remaining must be ≥ 0
- If NO_WEEKS_USED_P1 = NULL, treat as 0

---

### Salary Calculations (Base for Period 1 & 2)

**Source Data:**
- ZIM_WC_BENEFITS.PAWE (Proposed Average Weekly Earnings)

**Business Context:**
EPSS benefits are calculated as 75% of salary with loading applied.

#### Calculation 1: Base + 17% Loading

**Formula:**
```
Base + Loading = PAWE × 1.17
```

**Example:**
- PAWE = $2000/week
- Base + 17% = $2000 × 1.17 = $2,340/week

---

#### Calculation 2: 75% of Base + Loading

**Formula:**
```
75% Benefit Rate = (PAWE × 1.17) × 0.75
```

**Example:**
- PAWE = $2000/week
- 75% of ($2000 × 1.17) = $1,755/week

**Business Logic:** This is the weekly benefit rate before any deductions.

---

#### Calculation 3: 75% Base + Loading (Fortnightly)

**Formula:**
```
Fortnightly Benefit = [(PAWE × 1.17) × 0.75] ÷ 26
```

**Rationale:** 26 fortnights per year (52 weeks ÷ 2)

**Example:**
- Weekly rate = $1,755
- Fortnightly = $1,755 ÷ 26 = $67.50 per fortnight

---

#### Calculation 4: 75% Base + Loading (Weekly)

**Formula:**
```
Weekly Benefit = [(PAWE × 1.17) × 0.75] ÷ 52
```

**Rationale:** 52 weeks per year (standard payroll period)

**Example:**
- Weekly = $1,755 per week

---

### Period 2 – Max Weekly EPSS Cap Breach (Flag)

**Source Data:**
- ZIM_WC_BENEFITS.PAWE
- Policy EPSS Cap threshold [TBC]

**Business Logic:**
Flag if officer's weekly benefit exceeds EPSS policy cap.

**Formula:**
```
Weekly Rate = [(PAWE × 1.17) × 0.75] ÷ 52

IF Weekly Rate > EPSS_POLICY_CAP
  THEN flag = 'X' (Cap breached)
ELSE
  flag = '' (blank – within cap)
```

**Status:** [TBC] – Confirm EPSS Policy Cap amount with HSWC.

---

### Hourly Rate Derivation

**Source Data:**
- PA0008 (Basic Pay infotype) [TBC location]

**Business Logic:**
Officer's hourly pay rate for salary-based calculations.

**Formula:**
```
Hourly Rate = Base Annual Salary ÷ Annual Planned Hours
```

**Status:** [TBC] – Requires PA0008 field mapping.

---

## Data Quality & Validation Rules

### Employee Data Validation

| Rule | Check | Action if Failed |
|---|---|---|
| Employee exists | PERNR must match active employee in HR | Exclude from report |
| Incident exists | INCIDENT must be valid in OLIMS | Exclude from report |
| Birth date valid | BIRTHDATE must be past date, reasonable age (18–70) | Flag for review |
| Position exists | PLANS must be valid position code | Show code, flag if unknown |

---

### Claim Data Validation

| Rule | Check | Action if Failed |
|---|---|---|
| Period 1 dates valid | EPSS_START_DATE_P1 < EPSS_END_DATE_P1 | Flag error |
| Period 2 dates valid | EPSS_START_DATE_P2 < EPSS_END_DATE_P2 | Flag error |
| Weeks utilised reasonable | 0 ≤ NO_WEEKS_USED_P1 ≤ 52 | Flag warning |
| PAWE positive | PAWE > 0 for benefit-bearing incidents | Flag warning |
| Claim flags consistent | If TRANSITION_TO_EPSS='X', then DEF_CLAIM should be 'X' | Flag warning |

---

### Calculated Field Validation

| Rule | Check | Action if Failed |
|---|---|---|
| Age reasonable | 18 ≤ Age ≤ 70 | Flag for review |
| Weeks remaining correct | Weeks Remaining = 52 – Weeks Used | Recalculate |
| Salary calcs positive | All salary-derived values ≥ 0 | Flag error |
| Cap breach logic | Weekly rate vs cap threshold applied correctly | Recalculate |

---

### Data Completeness Requirements

| Field | Required? | Null Handling | Business Impact |
|---|---|---|---|
| PERNR | Yes | Reject record | No employee link |
| INCIDENT | Yes | Reject record | No incident link |
| BIRTHDATE | Yes | Flag warning | Age cannot be calculated |
| EPSS_START_DATE_P1 | If EPSS claim | Use NULL (show blank) | Period 1 not applicable |
| PAWE | If calculating salary | Use 0 (show $0) | Salary calcs not possible |
| PBRIMEMNO | If filtering PBRI | Use blank (no PBRI) | Accurate filtering |
| EPSS_SUPERVISOR | If RPB006 | Use blank/TBD | Supervisor unknown |

---

## Outstanding Clarifications

### TBC Items Requiring Business Input

| Item | Impact | Priority | Owner | Due |
|---|---|---|---|---|
| **WC Primary/Non-Primary Field** | RPB003 filtering | MUST | HSWC | TBC |
| Exact field name/table location | Cannot implement RPB003 filter | HIGH | Technical | TBC |
| **Super Fund Code Source** | RPB006 column | MUST | PCC/HSWC | TBC |
| PA infotype or table mapping | Missing data in report | HIGH | HR | TBC |
| **WCCC Status To Field** | RPB006 column | MUST | HSWC | TBC |
| Source table and mapping | Cannot populate field | HIGH | Technical | TBC |
| **Hourly Rate Calculation** | RPB006 column | MUST | PCC | TBC |
| PA0008 field mapping required | Cannot calculate hourly rate | HIGH | HR | TBC |
| **EPSS Policy Cap Amount** | RPB005 calculated field | SHOULD | HSWC | TBC |
| Cap threshold for Period 2 flag | Cap breach flag incorrect | MEDIUM | Policy | TBC |
| **Primary/Non-Primary Logic** | RPB003 filtering | MUST | HSWC | TBC |
| Business definition of values | Cannot implement filter correctly | HIGH | Business | TBC |

---

## Report Output Specification

### Column Sequence

1. Employee Number (PERNR)
2. Incident Number (INCIDENT)
3. Employee Name (VORNA, NACHN)
4. Date of Birth (BIRTHDATE)
5. Age (CALCULATED)
6. Position (PLANS, POSNDESC)
7. Date of Disablement (ZIM_IN_CM.DISABLEMENT_DATE)
8. WC Duty Description (ZIM_IN_CM.DUTY_DET → lookup)
9. WC Claim Number (ZIM_WC_BENEFITS.WCLMN)
10. Claim Flags:
    - PBRI Claim Flag (ZIMLTRVAR1.PBRIMEMNO)
    - EPSS Claim Flag (ZIM_IN_CM.DEF_CLAIM)
    - Transitioned to EPSS Flag (ZIM_IN_CM.TRANSITION_TO_EPSS)
11. WC Status (ZIM_IN_CM.WC_STATUS)
12. WC Advisor (ZIM_IN_CM.WC_ADVISOR)
13. Period 1 Details:
    - Start Date (ZIM_IN_CM.EPSS_START_DATE_P1)
    - End Date (ZIM_IN_CM.EPSS_END_DATE_P1)
    - Weeks Utilised (ZIM_EPSS_WEEK_NO.NO_WEEKS_USED_P1)
    - Weeks Remaining (CALCULATED)
14. Period 2 Details:
    - Start Date (ZIM_IN_CM.EPSS_START_DATE_P2)
    - End Date (ZIM_IN_CM.EPSS_END_DATE_P2)
    - Cap Breach Flag (CALCULATED)
15. Salary Calculations:
    - Base + 17% Loading (CALCULATED)
    - 75% of Base + Loading (CALCULATED)
    - 75% Weekly (CALCULATED)
    - 75% Fortnightly (CALCULATED)
16. Hourly Rate [TBC]
17. Super Fund Code [TBC]
18. EPSS Supervisor (ZIM_IN_CM.EPSS_SUPERVISOR)
19. WCCC Status To [TBC]
20. Claim Status:
    - Description (ZIM_IN_CLAIM.CLAIM_DESC)
    - Date Modified (ZIM_IN_CLAIM.DATE_UPDATED)
    - Sent Date (ZIM_IN_CLAIM.SENT_DATE)

### Sort Order

Primary: Employee Number (PERNR) ascending
Secondary: Incident Number (INCIDENT) ascending

### Page Layout

Landscape orientation (wider columns for salary calculations)
Grouping by Employee Number (optional for readability)

---

**Document Status:** Functional Specification – Ready for Development  
**Last Updated:** 23 January 2026  
**Next Phase:** Technical Design & Development
