# EPSS Reporting Requirements – Clarification Pack

## Executive Summary for Stakeholders

**TO:** HSWC Leadership, EPSS Team, Payroll, HR, OLIMS Project Team  
**FROM:** Analysis Team (OpenCode)  
**DATE:** 2026-01-23  
**PHASE:** Requirements Gathering (Phase 1) – NOT Design  
**RE:** Requirements Clarifications Needed Before Design Phase Can Begin  
**PRIORITY:** HIGH – 9 blocking items prevent requirements from being locked

---

## Important Note: Requirements vs Design Phase

This document is focused **exclusively on REQUIREMENTS GATHERING**. We are identifying:

✅ **WHAT we need to build** (from BRD)  
✅ **WHERE the data comes from** (which SAP/OLIMS tables)  
✅ **WHAT'S MISSING** from the BRD specification  

❌ **NOT addressing yet:**
- How the UI should look (radio buttons vs checkboxes)
- Filter logic implementation (OR vs AND)
- Default values
- Edge case handling
- Any design-level decisions

**Timeline:** Requirements locked → Design phase (4-6 weeks later) → Development

---

## Key Finding

We have completed detailed analysis of 4 major EPSS reports (RPB, RPC, RPK, RPI) by:
1. **Reading the BRD carefully** and extracting exact requirements
2. **Mapping each requirement** to SAP/OLIMS data sources
3. **Identifying gaps** where BRD doesn't specify data source or field details

**Result:** 9 critical requirements gaps prevent design from proceeding.

### What This Means

- ✅ Report structure, columns, and basic data sources identified
- ✅ Business requirements extracted from BRD
- ✅ Data flow mapped
- ❌ **Cannot design queries without resolving data source gaps**
- ❌ **Risk: Specifications will be incomplete if we proceed without clarification**

---

## Critical Requirements Gaps (9 Items – Must Resolve First)

### Priority 1: Claim Type Flags (Blocking 4 Reports)

**The Problem:** BRD requires reports to filter by claim types (PBRI, EPSS, Transitioned) but doesn't specify which SAP tables/fields store these flags.

**What We Need:**

| Item | Current BRD State | What's Missing | Owner | Blocking Reports |
|---|---|---|---|---|
| **PBRI Claim Flag** | "PBRI claim (flag)" in RPC003 | Which SAP table? Which field name? | OLIMS/Technical | RPC, RPB, RPI |
| **EPSS Claim Flag** | "EPSS claim (flag)" in RPC003 | Which SAP table? Which field name? | OLIMS/Technical | RPC, RPB, RPI |
| **Transitioned to EPSS Flag** | "Transitioned to EPSS (flag)" in RPC003 | Which SAP table? Which field name? | OLIMS/Technical | RPC, RPB, RPI |
| **Complete PBRI/EPSS/Transitioned Flag Definitions** | Flags mentioned but not fully specified | Which SAP tables/fields identify each claim type? (May be ZIM_IN_CLAIM, ZIM_IN_CM, or other tables not yet referenced) | Technical/OLIMS | All claim filtering |

**Impact if Not Resolved:** Cannot build WHERE clauses to filter claims by type; all reports showing claim type filters will have incomplete specifications.

**Recommendation:** Request formal table/field specification from OLIMS technical lead identifying exact SAP/OLIMS table and field name for each flag type.

---

### Priority 2: EPSS Calculation Table (Blocking 8 Reports)

**The Problem:** BRD requires salary-based calculations (ORP, Period 2 75% salary) but doesn't specify which SAP or OLIMS table stores these values.

**What We Need:**

| Item | Current BRD State | What's Missing | Owner | Blocking Reports |
|---|---|---|---|---|
| **EPSS Calculation Table Name** | ORP and Period 2 calculations referenced but not source table specified | Which table in SAP or OLIMS contains ORP values and Period 2 salary reference? | Technical/EPSS | RPI, RPB, RPA, RPK, RPL, RPN, RPO, RPE |
| **ORP Field Location** | "Period 1 – ORP" required in RPI005 and RPB | Which SAP table/field contains ORP value? (Assumed custom EPSS table but not confirmed) | Technical/EPSS | RPI, RPB, RPK, RPL |
| **Period 2 75% Salary Location** | "Period 2 – 75% of salary" required in RPI005 and RPB | Which SAP table/field contains this reference value? (Assumed calculated, but stored where?) | Technical/EPSS | RPI, RPB, RPK, RPL |

**Impact if Not Resolved:** Cannot populate any salary-based report columns; critical calculations missing from 8 reports.

**Recommendation:** Request "EPSS Calculation Table Specification" from EPSS Team or Technical Team identifying exact table name, primary keys, and all field names.

---

### Priority 3: Pre-Injury Salary Source (Blocking 4 Reports)

**The Problem:** BRD requires Period 2 75% salary calculation but doesn't specify which SAP table stores pre-injury salary.

**What We Need:**

| Item | Current BRD State | What's Missing | Owner | Blocking Reports |
|---|---|---|---|---|
| **Pre-Injury Salary SAP Source** | Period 2 calculations mention "75% of pre-injury salary" but don't specify SAP source | Is pre-injury salary in PA0008 (IT0008)? Or in custom EPSS table? Or calculated elsewhere? | Payroll/HR | RPI, RPB, RPK, RPL |
| **Effective Dates for Salary** | No mention of how pre-injury salary is effective-dated | Is salary frozen at DISABLEMENT_DATE, or updated per payroll rules? Which date used to select salary record? | Payroll/HR | RPI, RPB, RPK, RPL |

**Impact if Not Resolved:** Cannot accurately calculate Period 2 75% reference; critical salary columns incomplete or wrong.

**Recommendation:** Request Payroll/HR to confirm: (1) which SAP table stores pre-injury salary, (2) which effective date to use, (3) whether all incidents have this data populated.

---

### Priority 4: Payroll Wage Type Data Source (Blocking RPI)

**The Problem:** RPI requires wage type amounts (9WCM, 4901, 3670, 49E9, etc.) but doesn't specify which SAP table to query.

**What We Need:**

| Item | Current BRD State | What's Missing | Owner | Blocking Reports |
|---|---|---|---|---|
| **SAP Table for Wage Type Amounts** | RPI005 lists 7 wagetypes needed but doesn't specify source table | Is the source CE1PAY (payroll calculation), COEP (cost accounting), or custom staging table? Which is authoritative? | Payroll/Technical | RPI |
| **Week Splitting Logic** | RPI requires "Week 1" and "Week 2" earnings but doesn't specify how weeks are split | Are weeks calendar weeks (Mon-Sun), payroll weeks (Fri-Thu), or defined elsewhere? How to split a 2-week payroll period into Week 1/Week 2? | Payroll | RPI |

**Impact if Not Resolved:** Cannot extract payroll wage type data correctly; RPI report has no data or wrong data.

**Recommendation:** Request Payroll to specify: (1) source table (CE1PAY/COEP/other), (2) field names for wage type and amount, (3) week splitting definition.

---

### Priority 5: OLIMS Forecast Estimate Table (Blocking RPK)

**The Problem:** RPK requires extracting forecast estimates from OLIMS but doesn't specify table structure.

**What We Need:**

| Item | Current BRD State | What's Missing | Owner | Blocking Reports |
|---|---|---|---|---|
| **OLIMS Estimate Table Name & Structure** | OLF002–OLF008 reference estimates but don't specify OLIMS table name or field names | What is the OLIMS table name? What fields exist? (period_1_weeks? period_1_total? estimate_date? status?) | OLIMS | RPK |
| **Multiple Estimates Per Quarter Handling** | OLF004/OLF008 mention multiple estimates possible but don't specify how aggregated | Should RPK show detail rows (all estimates) or aggregated totals per incident/quarter? | Business/OLIMS | RPK |

**Impact if Not Resolved:** Cannot extract forecast data from OLIMS; RPK report has no data source.

**Recommendation:** Request OLIMS technical team to provide formal table specification for forecast estimate storage.

---

### Priority 6-9: Other Critical Requirements Gaps

| # | Item | BRD Ref | What's Missing | Owner | Impact |
|---|---|---|---|---|---|
| 6 | **RPC Downgrade Definition** | RPC001 | BRD says "report when there is a downgrade" but doesn't define: Is it lower hours/day? Lower days/week? Worse status? How to handle blanks? | HSWC Business | Cannot build report logic without knowing what counts as "downgrade" |
| 7 | **"Super Code" SAP Source** | RPC003 | RPC requires "Super Code" column but doesn't specify which SAP table/field (assumed IT0220/FONDS but not confirmed) | Payroll/HR | Cannot map column to SAP data |
| 8 | **Org Unit 653 & Senior Executive Identification** | RPI004 | RPI requires filtering to "Covert Org Unit 653" and "Senior Executive Officers" but doesn't specify which SAP fields identify these groups | HR/PBRI | Cannot apply security filtering correctly |
| 9 | **OLIMS Field Names for Audit Trail** | Multiple reports | Several reports require audit fields (Last Modified By, Last Modified On) but don't specify exact OLIMS field names | OLIMS | Cannot extract audit trail data without field specifications |

---

## Why These Matter (Simple Explanation)

Think of building a report like following a recipe:

- **BRD = Recipe instructions:** "Add pre-injury salary × 0.75"
- **Data source = Ingredient location:** "Pre-injury salary is in SAP table PA0008, field SALARY"
- **Gap = Missing information:** "Add the thing but we don't know what table it's in or what it's called"

**Without knowing which ingredient (SAP table) has the thing you need (salary), you can't follow the recipe.**

These 9 items are the "missing ingredient locations." Once we know which SAP/OLIMS table has the data, we can write the queries.

---

## Recommended Clarification Process

### Week 1: Send Requests
1. Create specific requests for each stakeholder:
   - OLIMS team → flags, estimate table, audit field names
   - Payroll team → wage table, pre-injury salary, org unit identification
   - EPSS team → EPSS calculation table, ORP source
   - Business → RPC downgrade definition
2. Set **1-week response deadline**

### Week 2: Conduct 1-Hour Working Sessions
3. Schedule 30-min to 1-hour session with each stakeholder group
4. Document exact answers (table names, field names, etc.)
5. Request stakeholder review and sign-off

### Week 3: Update Requirements
6. Update report specifications with confirmed data sources
7. Finalize requirements document for Design phase

### Week 4: Design Phase Begins
8. With confirmed requirements, design phase can start

**Total:** 3-4 weeks from now, design phase begins

---

## Communication Templates

### For OLIMS Project Team

**Subject:** Data Source Specification Request – EPSS Reporting Requirements

**Body:**

We are documenting detailed requirements for EPSS reports and need specification of the following OLIMS data structures:

**1. Claim Type Flags** (Required for RPB, RPC, RPI reports)
- Which OLIMS table stores PBRI claim flag? What is exact field name?
- Which OLIMS table stores EPSS claim flag? What is exact field name?
- Which OLIMS table stores Transitioned to EPSS flag? What is exact field name?

**2. EPSS Calculation Table** (Required for salary-based calculations in RPI, RPB, RPK, RPL, RPN, RPO, RPE)
- What is the OLIMS or SAP table name that stores ORP (Ordinary Rate of Pay)?
- What is the OLIMS or SAP table name that stores Period 2 75% salary reference?
- What are the primary key fields?
- List all field names related to salary calculations.

**3. Forecast Estimate Data** (Required for RPK report)
- What is the OLIMS table name for forecast estimates (OLF002–OLF008)?
- What field names exist? (e.g., period_1_weeks, period_1_total, estimate_date, status?)
- What is the primary key?
- How is status/inactive marked?

**4. Audit Trail Field Names**
- What is the exact OLIMS field name for "last modified by"?
- What is the exact OLIMS field name for "last modified date"?

Please provide schema extract, data dictionary, or example query.

---

### For Payroll/HR Technical Team

**Subject:** SAP Data Source Specification Request – EPSS Reporting

**Body:**

We are documenting detailed requirements for EPSS reports and need specification of the following SAP data sources:

**1. Pre-Injury Salary** (Required for RPI, RPB, RPK, RPL)
- Which SAP table stores pre-injury salary? (Confirm: PA0008 / IT0008?)
- Which field contains the salary amount?
- Which effective date is used to select salary record? (Injury date? Period start? Report date?)
- What percentage of incidents have pre-injury salary populated?

**2. Wage Type Amounts** (Required for RPI)
- Which SAP table is authoritative for payroll wage type amounts: CE1PAY, COEP, or other?
- What are the field names for: employee (PERNR), wage type (WGTYPE), amount (BETAG?), period dates?
- How to distinguish simulation (unposted) from actual (posted) payroll?

**3. Payroll Week Definition** (Required for RPI)
- How are payroll weeks defined: calendar weeks (Mon-Sun) or payroll-specific (Fri-Thu)?
- For a 2-week payroll period, how should Week 1 and Week 2 be split? What are exact date boundaries?

**4. Org Unit Identification** (Required for RPI security filtering)
- Which SAP field identifies "Covert Org Unit 653"? (ORGEH? KOSTL? PA0001 field?)
- Which SAP field identifies "Senior Executive Officers"? (Position code SEX? Grade code? Other?)

Please provide table names, field names, data types, and example queries if available.

---

### For EPSS Team

**Subject:** EPSS Calculation & ORP Data Source Specification

**Body:**

We are documenting detailed requirements for EPSS reports and need specification of:

**1. EPSS Calculation Data** (Required for RPI, RPB, RPK, RPL, RPN, RPO, RPE)
- Which table stores EPSS calculation data (ORP, Period 2 reference, eligibility flags)? (SAP table? OLIMS table?)
- What is the exact table name and primary key?
- What field names exist? (e.g., orp, period_2_75_pct, period_1_weeks, period_2_weeks?)

**2. ORP (Ordinary Rate of Pay) Definition** (Required for all salary calculations)
- Which SAP table/field stores ORP value? (Is it stored or calculated per pay period?)
- What is the effective date used for ORP selection?
- How is ORP derived? (Salary from IT0008? Adjusted for anything?)

**3. Period 2 75% Salary Reference** (Required for RPI, RPB, RPK, RPL)
- Is this pre-injury salary × 0.75?
- Which SAP table stores this calculation? (Custom EPSS table? IT0008?)
- Is this pre-calculated and stored, or calculated on-demand?
- How is pre-injury salary sourced and effective-dated?

**4. Period Definitions** (Required for all period-based reports)
- Confirm: Period 1 = weeks 0–39, Period 2 = weeks 40–91, Period 3 = weeks 92+?
- How is "week 0" defined? (From DISABLEMENT_DATE?)
- Are weeks calendar weeks or payroll weeks?

---

### For Business Analyst / HSWC Leadership

**Subject:** RPC Report – Downgrade Definition Required

**Body:**

For the RPC (EPSS Down Grade Report), the BRD states:

*"Report to generate when there is a downgrade in the current certificate compared to the previous certificate."*

To complete the specification, we need clarification on what constitutes a "downgrade":

**Question 1:** Does "downgrade" mean:
- (a) Current Hours/Day < Previous Hours/Day?
- (b) Current Days/Week < Previous Days/Week?
- (c) Current Status code is "worse" than Previous Status code?
- (d) A combination of the above?

**Question 2:** How should blanks/missing values be handled?
- If Previous Hours/Day is blank, is it treated as "no restriction" (highest capacity)?
- If Current Hours/Day is blank, how is that compared?

**Question 3:** Provide 2-3 examples:
- Example: "Previous cert: 8 hrs/day, 5 days/week. Current cert: 4 hrs/day, 5 days/week. This is a downgrade? Yes/No"

These clarifications are needed to complete the RPC report specification.

---

## Q&A Tracking Template

Use this template to track clarification responses:

```
| Sent To | Date Sent | Question | Answer | Date Received | Status |
|---|---|---|---|---|---|
| OLIMS Team | 2026-01-30 | PBRI flag table/field? | [waiting] | | Pending |
| Payroll | 2026-01-30 | Pre-injury salary SAP source? | [waiting] | | Pending |
| EPSS Team | 2026-01-30 | EPSS calc table name? | [waiting] | | Pending |
| Business | 2026-01-30 | RPC downgrade definition? | [waiting] | | Pending |
| OLIMS Team | 2026-01-30 | Forecast table structure? | [waiting] | | Pending |
| Payroll | 2026-01-30 | Wage type table (CE1PAY/COEP)? | [waiting] | | Pending |
| OLIMS Team | 2026-01-30 | Org unit/executive ID? | [waiting] | | Pending |
| OLIMS Team | 2026-01-30 | Audit field names? | [waiting] | | Pending |
| Payroll | 2026-01-30 | Week splitting logic? | [waiting] | | Pending |
```

---

## Risk Assessment

### Current Status

| Phase | Task | Status | Risk |
|---|---|---|---|
| **Requirements** | Extract BRD requirements | ✅ 95% Complete | ✅ Low |
| **Requirements** | Identify data sources | 70% Complete | 🔴 High (missing 9 sources) |
| **Requirements** | Lock requirements | Pending clarifications | 🔴 High (blocked) |
| **Design** | Create data model | Not started | 🔴 High (blocked by requirements) |
| **Development** | Write queries | Not started | 🔴 High (blocked by design) |

### Timeline Impact

**If clarifications received within 1 week:**
- Weeks 2-3: Lock requirements + update specs
- Weeks 4-5: Design phase
- Weeks 6-13: Development
- Weeks 14-16: Testing
- **Go-live: ~4 months from today**

**If clarifications delayed 2-4 weeks:**
- **Go-live slips to 5-6 months**

**If clarifications unavailable:**
- Risk of building wrong specifications
- Major rework required after design/dev
- Testing failures
- Go-live delay 3+ months

---

## Document Control

**Created:** 2026-01-23  
**Phase:** Requirements Gathering (Phase 1)  
**Status:** READY FOR STAKEHOLDER REVIEW  
**Next Review:** After clarifications received (Week 2-3)

---

**END OF REQUIREMENTS CLARIFICATION PACK**


---

## Critical Blockers (10 Items – Must Resolve First)

### Priority 1: Claim Type Flags (Blocking 4 Reports)

**The Problem:** Reports need to filter and display claims by type (PBRI, EPSS, Transitioned), but the source fields, code values, and rules are undefined.

**What We Need:**

| Item | Current State | What's Needed | Who | Why Critical |
|---|---|---|---|---|
| **PBRI Claim Flag** | Undefined; assumed from CLAIM_TYPE or IT0220 | Exact SAP table/field name; code value (X, 1, Y?) | OLIMS/Technical | 3 reports (RPB, RPC, RPI) depend on this |
| **EPSS Claim Flag** | Assumed: ZIM_IN_CM.DEF_CLAIM, value unknown | Confirm table/field; confirm code value (X, 1, Y?) | OLIMS/Technical | Fundamental to all reports |
| **Transitioned to EPSS Flag** | Assumed: ZIM_IN_CM.TRANSITION_TO_EPSS, undefined | Confirm field exists; confirm code value | OLIMS/Technical | Claim selection filtering broken without this |
| **Flag Value Domain** | Assumed: X=true, blank=false | Confirm: X/blank? Or 1/0? Or Y/N? Or A/I? | Technical | Report code will fail if values wrong |
| **Mutual Exclusivity Rules** | Undefined; can claim be PBRI AND Transitioned? | Provide decision table showing valid flag combinations | Business Analyst | Selection filter logic depends on this |

**Impact if Not Resolved:** Cannot implement claim filtering; reports will show wrong claims or crash.

**Recommendation:** Schedule 1-hour working session with OLIMS technical lead to extract flag definitions from OLIMS data model.

---

### Priority 2: EPSS Calculation Table (Blocking 8 Reports)

**The Problem:** Reports need Ordinary Rate of Pay (ORP), Period 2 75% salary reference, and forecast calculations, but the SAP/OLIMS table is unknown.

**What We Need:**

| Item | Current State | What's Needed | Who | Why Critical |
|---|---|---|---|---|
| **EPSS Calculation Table Name** | Unknown; referenced as [EPSS Calc Table – TBC] | Exact table name in SAP or OLIMS | Technical/EPSS | Cannot write query without table name |
| **Table Structure (fields)** | Unknown | List all fields: ORP, Period 2 ref, eligibility flags, etc. | Technical/EPSS | Must map to report columns |
| **ORP Source/Calculation** | Undefined; assumed stored or derived | Is ORP a stored field or calculated? If calculated, what's the formula? | Payroll/EPSS | Critical for P1 payment accuracy |
| **Period 2 75% Calculation** | Assumed: Pre-injury salary × 0.75 | Confirm formula; confirm it's stored or calculated on-demand | Payroll/EPSS | Critical for P2 payment accuracy |
| **Eligibility Flags** | Undefined | What fields indicate Period 1/2/3 eligibility? | EPSS | Need to filter by period eligibility |
| **Primary Keys/Join Logic** | Unknown | How to join to PERNR/INCIDENT/payroll records? | Technical | Cannot link salary data to claims |

**Impact if Not Resolved:** Cannot calculate or display any salary-based columns (ORP, Period 2 reference, forecast payments); 8+ reports fail.

**Recommendation:** Request "EPSS Calculation Table Specification" document from EPSS Team or request Technical to run SAP query to locate where ORP/Period 2 values are stored.

---

### Priority 3: Pre-Injury Salary (Blocking 4 Reports)

**The Problem:** Period 2 EPSS payments are 75% of pre-injury salary, but we don't know which SAP field/table stores this.

**What We Need:**

| Item | Current State | What's Needed | Who | Why Critical |
|---|---|---|---|---|
| **SAP Source Table/Field** | Assumed: PA0008 (IT0008 salary infotype) | Confirm which SAP table/field contains pre-injury salary | HR/Payroll | Cannot populate Period 2 columns |
| **Effective Dating** | Assumed: Salary frozen at DISABLEMENT_DATE | Confirm: Is salary frozen at injury or updated? Which date used to select salary record? | HR/Payroll | Wrong date = wrong salary = wrong P2 amount |
| **Completeness** | Assumed: Populated for all incidents | How many incidents have missing pre-injury salary? | HR/Data Quality | May need to develop workaround if gaps |
| **Multiple Records** | Assumed: One salary per person/period | If employee had salary changes before disablement, which one use? | Payroll | Edge case handling needed |

**Impact if Not Resolved:** Cannot calculate Period 2 75% salary reference; P2 payment columns wrong or blank.

**Recommendation:** Request HR/Payroll to confirm IT0008 is 100% populated for police officers; request query showing salary history for sample incidents.

---

### Priority 4: Week Definition (Blocking 2 Reports)

**The Problem:** RPI report shows "Week 1" and "Week 2" earnings, but payroll weeks may not align with calendar weeks.

**What We Need:**

| Item | Current State | What's Needed | Who | Why Critical |
|---|---|---|---|---|
| **Week Boundaries** | Undefined; assumed payroll weeks (Fri–Thu) | Confirm: Calendar weeks (Mon–Sun) or payroll weeks (Fri–Thu)? Exact dates? | Payroll | Wrong week boundaries = wage types in wrong columns |
| **Week Splitting Logic** | Undefined | If payroll period = 2 weeks, how are Week 1 and Week 2 defined exactly? | Payroll | Reports aggregating by week will fail |
| **Period Boundary Weeks** | Undefined | If pay period spans across period boundary (e.g., week 38–39 and 40), how split? | Payroll | Edge case: P1 to P2 transition handling |
| **SAP Payroll Configuration** | Unknown | What does T549S.PERPE (payroll period) contain for Week 1 vs Week 2? | Technical | Query logic depends on this |

**Impact if Not Resolved:** Week 1 and Week 2 columns in RPI may show wage types in wrong columns; user confusion.

**Recommendation:** Request Payroll to confirm NSW Police payroll week definition (should be standard); request sample payroll period showing Week 1/Week 2 split.

---

### Priority 5: Payroll Calculation Table (Blocking RPI Report)

**The Problem:** RPI report needs wage type amounts (9WCM, 4901, 3670, 49E9, etc.) but unclear which SAP table has this data.

**What We Need:**

| Item | Current State | What's Needed | Who | Why Critical |
|---|---|---|---|---|
| **Source Table** | Assumed: CE1PAY or COEP; unclear which | Confirm: CE1PAY (payroll calc) or COEP (costing) or custom staging table? | Payroll/Technical | Cannot query wage type amounts without table name |
| **Table Structure** | Assumed: WGTYPE, AMOUNT, dates | Confirm field names for wage type, amount, period, etc. | Technical | Query logic depends on exact field names |
| **Record Timing** | Undefined | When are records available (real-time, end-of-period, posted only)? Affects simulation capability | Payroll/Technical | RPI006 requires simulation during payroll cycle |
| **Multiple Records** | Assumed: One per employee/payroll period/wagetype | Can there be multiple records per wagetype per period (e.g., adjustments)? How to aggregate? | Payroll | May need rollup logic |
| **Post Status** | Undefined | How to distinguish "Simulation" (unposted) vs "Actual" (posted) records? | Payroll/Technical | RPI006 requires both capabilities |

**Impact if Not Resolved:** Cannot populate RPI wage columns; core report logic breaks.

**Recommendation:** Request Payroll technical specialist to provide CE1PAY or COEP query specification for extracting payroll amounts by wage type.

---

### Priority 6–10: Other Blocking Items

| # | Item | Reports | Impact | Resolution Owner |
|---|---|---|---|---|
| 6 | **RPC Downgrade Definition** | RPC | Cannot determine which incidents to include in downgrade report; core business logic undefined | HSWC Business Analyst |
| 7 | **PBRI Top-up Table** | RPI | Cannot populate PBRI top-up column | PBRI Team / Technical |
| 8 | **Org Unit 653 & Senior Executive Identification** | RPI | Cannot correctly restrict to authorized users; security risk | HR / PBRI Technical |
| 9 | **WC Leave Date Range Source** | RPC | Cannot filter by WC leave dates; unsure if filtering leave records or incidents | Technical |
| 10 | **OLIMS Estimate Table Structure** | RPK | Cannot extract forecast estimates from OLIMS | OLIMS Design |

---

## Communication Template for Each Stakeholder Group

### For HSWC Business Leadership

**Subject:** EPSS Reporting Clarifications Required Before Development

**Body:**

We are ready to build the EPSS reports (RPB, RPC, RPK, RPI) from the BRD specifications. However, we have identified **10 critical clarifications needed** before development can proceed.

**The most urgent are:**

1. **Claim Type Flags (PBRI, EPSS, Transitioned)** – What fields/codes identify each type?
2. **Period 2 Salary Calculation** – How is 75% of pre-injury salary calculated?
3. **RPC Downgrade Logic** – What constitutes a "downgrade" in capacity?

Without these clarifications, our team will have to **guess** at the implementation, which creates risk of:
- Reports showing wrong data
- Incorrect claim filtering
- Wrong payment calculations
- Failed testing and delayed go-live

**Action Required:** Please identify the technical lead and business analyst who can provide these answers (details in attached "Critical Blockers" section).

---

### For OLIMS Project Team

**Subject:** OLIMS Flag & Table Specification Request

**Body:**

For EPSS reporting integration, we need specification of the following OLIMS tables/fields:

**1. Claim Type Flags** (Required for RPB, RPC, RPI filtering)
- PBRI Claim Flag: Table name, field name, code values (X/blank? 1/0? Y/N?)
- EPSS Claim Flag: Table name, field name, code values
- Transitioned to EPSS Flag: Table name, field name, code values
- Question: Are these mutually exclusive or can overlap?

**2. EPSS Calculation Table** (Required for salary reference columns)
- Table name, all field names
- Which fields contain: ORP, Period 2 75% reference, eligibility flags?
- Primary keys and join logic to PERNR/INCIDENT/payroll

**3. Estimate Table** (Required for RPK Forecast report)
- Table name and structure (for RPK report)
- How multiple estimates per quarter are stored/aggregated (per OLF004/OLF008)
- Record status/active indicator field name and code values

**4. Audit Fields** (Optional but helpful)
- Last modified by / last modified date field names and types

Please provide schema extract, data dictionary, or sample queries showing these structures.

---

### For Payroll/HR Technical Team

**Subject:** SAP Table & Field Specification Request – EPSS Reporting

**Body:**

For EPSS report development, we need confirmation of the following SAP tables/fields:

**1. Pre-Injury Salary** (Required for Period 2 calculations)
- Confirm: IT0008 (PA0008) contains pre-injury salary for all police incidents?
- Effective dating: Is salary frozen at DISABLEMENT_DATE?
- Completeness: What % of incidents have pre-injury salary populated?

**2. Payroll Wage Type Amounts** (Required for RPI Pay Simulation)
- Source table: CE1PAY, COEP, or other? Which is authoritative?
- Field names for: WGTYPE, AMOUNT, period dates, employee, etc.
- Can you provide sample query for extracting amounts by wagetype?

**3. Payroll Period Definition** (Required for week splitting in RPI)
- NSW Police payroll week boundaries: Calendar (Mon–Sun) or Fri–Thu?
- T549S.PERPE (payroll period) structure – how to identify Week 1 vs Week 2?
- How to handle period-boundary weeks (e.g., P1 weeks 38–39 + P2 week 40)?

**4. WC Leave Type** (Required for RPC leave date filtering)
- Is leave type S49 the correct WC leave type?
- Leave record structure – how to filter by leave dates?

---

### For EPSS Team

**Subject:** EPSS Calculation & ORP Specification

**Body:**

For EPSS reporting, we need to understand how ORP and Period 2 salary are calculated and stored:

**1. ORP (Ordinary Rate of Pay)** – Required for all salary-based reports
- Where is ORP stored or calculated? Custom table? OLIMS?
- Is ORP a stored value or calculated on-demand?
- Formula: Is it the ordinary rate at injury date, current rate, or something else?

**2. Period 2 75% Salary** – Required for Period 2 payment calculations
- Where is this calculated/stored?
- Formula: Pre-injury salary × 0.75, or something else?
- Effective dating: Is this recalculated when salary changes post-injury?

**3. Period Definitions & Week Counting** – Required for all period-based reports
- Confirm: Period 1 = weeks 0–39, Period 2 = 40–91, Period 3 = 92+?
- How is week 0 defined? (From DISABLEMENT_DATE or date-based?)
- Are weeks calendar weeks (Mon–Sun) or payroll weeks?

**4. Eligibility Logic** – Required for RPI simulation report
- What fields/flags indicate Period 1/2/3 eligibility?
- Are there any capacity-based eligibility rules (e.g., TI/PI/NI)?
- How to determine if employee is eligible for multiple periods?

---

## Q&A Responses Tracking Template

**To:** EPSS Reporting Team
**Purpose:** Track clarifications as they are received from stakeholders

```
| Date | Question | Answer | Provided By | Status | Impact |
|---|---|---|---|---|---|
| | Claim flag code values | | | Pending | Blocks RPB, RPC, RPI |
| | EPSS Calc table name | | | Pending | Blocks 8 reports |
| | Pre-injury salary source | | | Pending | Blocks P2 calculations |
| | Week boundaries | | | Pending | Blocks RPI |
| | Payroll wage table | | | Pending | Blocks RPI |
| | RPC downgrade logic | | | Pending | Blocks RPC core logic |
| | PBRI top-up table | | | Pending | Blocks RPI |
| | Org Unit 653 ID | | | Pending | Blocks RPI security |
| | WC leave type | | | Pending | Blocks RPC filtering |
| | OLIMS estimate table | | | Pending | Blocks RPK |
```

---

## Risk Assessment

### Current Status

| Phase | Task | Status | Risk Level |
|---|---|---|---|
| **Analysis** | Extract requirements from BRD ✅ | Complete | ✅ Low |
| **Analysis** | Document assumptions ✅ | Complete | ✅ Low |
| **Analysis** | Identify data sources | 50% Complete | ⚠️ Medium |
| **Design** | Create ERD / data model | Pending | 🔴 High (blocked) |
| **Development** | Write SQL queries | Pending | 🔴 High (blocked) |
| **Development** | Implement report logic | Pending | 🔴 High (blocked) |
| **Testing** | Test data extraction | Pending | 🔴 High (blocked) |
| **Testing** | Validate calculations | Pending | 🔴 High (blocked) |
| **Implementation** | Deploy to production | Pending | 🔴 High (blocked) |

### Timeline Impact

**If clarifications received within 1 week:**
- Design phase: 2 weeks
- Development: 6-8 weeks
- Testing: 3-4 weeks
- **Go-live: ~3 months from today**

**If clarifications delayed 2-4 weeks:**
- Go-live slips to **4-5 months**

**If clarifications delayed >4 weeks:**
- Risk of scope creep and re-work
- May need to split reports (high-priority first, non-critical later)

---

## Recommended Process for Clarifications

### 1. Create Clarification Request List (1 day)
- Send individual requests to: OLIMS, Payroll, HR, EPSS, HSWC Business
- Use templates provided above
- Set response deadline: **1 week**

### 2. Conduct 1-Hour Working Sessions per Stakeholder (2-3 days)
- OLIMS tech lead: Confirm flag and table specifications
- Payroll lead: Confirm wage table and week definitions
- HR lead: Confirm pre-injury salary source
- EPSS lead: Confirm ORP and period calculation logic
- Business analyst: Confirm RPC downgrade logic and selection rules

### 3. Document Answers & Update Assumption Docs (2 days)
- Update report markdown files with confirmed values
- Remove [TBC] markers
- Create test cases based on confirmed logic

### 4. Validation Check (1 day)
- Request stakeholders review updated documents
- Confirm no gaps remain
- Sign off on assumptions

### 5. Begin Design Phase (Day 1 after clarifications)
- Create data model diagrams
- Write ERD (entity-relationship diagrams)
- Design query logic and pseudocode

---

## Deliverables in This Package

1. **CROSS-REPORT-ANALYSIS.md** – Detailed matrix of shared assumptions and blocking items across 4 reports
2. **This Document** – Business communication templates and escalation guide
3. **Report Files with Assumptions Sections:**
   - `/reports/RPB-epss-on-duty-claim-report.md` – 31+ assumptions + 2-tier questions
   - `/reports/RPC-epss-down-grade-report.md` – 31+ assumptions + 2-tier questions
   - `/reports/RPK-epss-forecast-estimates-summary.md` – 23+ assumptions + 2-tier questions
   - `/reports/RPI-epss-pay-simulation-report.md` – 26+ assumptions + 2-tier questions

---

## Next Steps

### For Project Manager
1. Schedule kickoff meeting with all stakeholders (OLIMS, Payroll, HR, EPSS, Business)
2. Distribute clarification request templates
3. Set 1-week response deadline
4. Schedule 4-5 working sessions (1 hour each) with technical leads
5. Track clarification responses in Q&A template
6. Escalate any delays to HSWC leadership

### For Development Team
1. Review "Assumptions" sections in each report markdown file
2. Review CROSS-REPORT-ANALYSIS.md for shared patterns
3. Prepare design questions in advance of clarifications
4. Plan parallel work tracks (design, architecture, infrastructure setup)
5. Identify any additional [TBC] items as you read the specs

### For Business Analysts
1. Review "Open Questions (Tier 2)" in each report
2. Identify which questions are genuinely unclear vs. already in BRD
3. Prepare examples/test cases for RPC downgrade logic
4. Review claim type selection rules and provide decision table

---

## Escalation Path (If Delays Occur)

**If no response within 1 week:**
1. Escalate to HSWC Program Manager
2. Request executive decision on priorities
3. Consider phased delivery (high-priority reports first)

**If ambiguity persists after 2 weeks:**
1. Schedule executive steering committee meeting
2. Present impact analysis (go-live date risk)
3. Request explicit decision on assumptions if BRD doesn't specify

**If critical clarifications unavailable:**
1. Document assumptions with rationale
2. Implement with "best guess" but flag as high-risk
3. Plan post-implementation validation testing to confirm assumptions
4. Agree on fallback plan if assumptions wrong

---

## Questions & Contact

**For questions about this analysis:**
- Review the detailed report files in `/reports/` directory
- Refer to CROSS-REPORT-ANALYSIS.md for dependency map
- Contact Analysis Team (OpenCode) for clarification on assumptions

**For questions about BRD requirements:**
- Check brd.md (source of truth for business requirements)
- Contact Business Analyst if BRD text is ambiguous

**For technical questions:**
- Refer to SAP_Fields.md for confirmed field mappings
- Contact Technical Team for SAP table specifications

---

## Approval & Sign-Off

**This document and attached reports are ready for:**

- ✅ Stakeholder review and clarification
- ✅ Technical design (pending clarifications)
- ⏳ Development (waiting for clarifications)
- ⏳ Implementation (waiting for design completion)

**Date Prepared:** 2026-01-23
**Prepared By:** OpenCode Analysis Team
**Status:** READY FOR STAKEHOLDER REVIEW

---

**END OF BUSINESS COMMUNICATION PACKAGE**

