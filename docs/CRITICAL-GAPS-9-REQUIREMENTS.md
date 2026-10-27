# EPSS Reporting – 9 Critical Requirements Gaps

**Phase:** Requirements Gathering (Phase 1)  
**Date:** 2026-01-23  
**Status:** These gaps must be filled before Design phase can begin

---

## The 9 Critical Data Source Gaps

The BRD specifies **WHAT** reports need, but **NOT WHERE** the data comes from in SAP/OLIMS.

These 9 gaps are **requirements-level** (not design-level). We need exact table/field names before we can design.

---

## Gap 1: Claim Type Flags (Blocking 4 Reports)

**BRD Says:**
- RPC003: "Show PBRI claim (flag)", "EPSS claim (flag)", "Transitioned to EPSS (flag)"
- RPB002: Same flags needed for filtering
- RPI005: Same flags needed for filtering

**What's Missing:**
Which SAP table stores each flag? What's the exact field name?

**Example of Needed Answer:**
> "PBRI claim flag is in table ZIM_IN_CLAIM, field CLAIM_TYPE (value 'PBRI')  
> EPSS claim flag is in table ZIM_IN_CM, field DEF_CLAIM (value 'X')  
> Transitioned flag is in table ZIM_IN_CM, field TRANSITION_TO_EPSS (value 'X')"

**Owner:** OLIMS/Technical Team

**Reports Blocked:** RPC, RPB, RPI, RPA, RPQ, RPE, RPG, RPM, RPN, RPO

---

## Gap 2: EPSS Calculation Table (Blocking 8 Reports)

**BRD Says:**
- RPI005: "Week X: Period 1 – ORP" and "Week X: Period 2 – 75% of salary"
- RPB: Similar salary calculations
- RPK/RPL: Forecast calculations

**What's Missing:**
Which SAP or OLIMS table stores ORP and Period 2 salary reference values?

**Example of Needed Answer:**
> "EPSS calculations stored in custom table ZIM_EPSS_CALC  
> Fields: orp_amount (ORP), period_2_salary_75pct (Period 2 reference)  
> Primary keys: PERNR, INCIDENT, CALC_DATE"

**Owner:** EPSS Team / Technical

**Reports Blocked:** RPI, RPB, RPK, RPL, RPN, RPO, RPE, RPA

---

## Gap 3: Pre-Injury Salary (Blocking 4 Reports)

**BRD Says:**
- RPI005: "Period 2 – 75% of salary" (implied: 75% of pre-injury salary)
- RPB: Period 2 calculations
- RPK/RPL: Forecast calculations

**What's Missing:**
Which SAP table/field contains pre-injury salary? How is effective date determined?

**Example of Needed Answer:**
> "Pre-injury salary is in SAP table PA0008 (InfoType 0008), field SALARY  
> Effective date: DISABLEMENT_DATE (salary frozen at injury date)  
> Coverage: 95% of police incidents have this field populated"

**Owner:** Payroll / HR

**Reports Blocked:** RPI, RPB, RPK, RPL

---

## Gap 4: Wage Type Data Source (Blocking RPI)

**BRD Says:**
- RPI005: "Show wage type amounts: 9WCM (RTW), 4901 (WC), 3670 (External), 49E9 (P1), 6A48 (P1 adj), 49S9 (P2), 6A49 (P2 adj)"

**What's Missing:**
Which SAP table has wage type amounts? (CE1PAY? COEP? Custom staging?)

**Example of Needed Answer:**
> "Payroll wage amounts in SAP table CE1PAY  
> Fields: WGTYPE (wage type code), BETAG (amount), PAYDT (pay date)  
> Alternative: COEP table for cost accounting view  
> Use CE1PAY as primary source (more current)"

**Owner:** Payroll / SAP Technical

**Reports Blocked:** RPI

---

## Gap 5: Week Splitting Logic (Blocking RPI)

**BRD Says:**
- RPI005: "Week 1: RTW earnings (9WCM)" and "Week 2: RTW earnings (9WCM)"
- Implies a 2-week payroll period is split into Week 1 and Week 2

**What's Missing:**
How are weeks defined? (Calendar weeks Mon-Sun? Payroll weeks Fri-Thu?) How to split?

**Example of Needed Answer:**
> "NSW Police payroll weeks: Friday to Thursday  
> 2-week period: Friday (Wk1) to Thursday (Wk1), Friday (Wk2) to Thursday (Wk2)  
> Field T549S.PEREND marks period end; calculate week splits from there"

**Owner:** Payroll

**Reports Blocked:** RPI

---

## Gap 6: OLIMS Forecast Estimate Table (Blocking RPK)

**BRD Says:**
- RPK001–RPK004: "Summary of estimates entered in OLIMS – EPSS estimator/forecast tab"
- Requires: period_1_future_weeks, period_1_forecast_payments, etc.

**What's Missing:**
What is the OLIMS table name? What are the field names?

**Example of Needed Answer:**
> "OLIMS forecast data in table OLMS_EST_FORECAST  
> Fields: estimate_date_from, period_1_future_weeks, period_1_forecast_total,  
>         period_2_future_weeks, period_2_forecast_total, etc.  
> Status field: record_status (A=Active, I=Inactive)"

**Owner:** OLIMS

**Reports Blocked:** RPK

---

## Gap 7: RPC Downgrade Definition (Blocking RPC)

**BRD Says:**
- RPC001: "Report to generate when there is a downgrade in the current certificate compared to the previous certificate"

**What's Missing:**
What counts as a "downgrade"? Lower hours/day? Lower days/week? Worse status code?

**Example of Needed Answer:**
> "Downgrade = ANY of:  
> - Current hours/day < Previous hours/day, OR  
> - Current days/week < Previous days/week, OR  
> - Current status code is 'worse' than previous (U < P < F)  
> If any value blank: treat as 'no restriction' (highest capacity)"

**Owner:** HSWC Business / Claims Team

**Reports Blocked:** RPC

---

## Gap 8: Org Unit & Executive Identification (Blocking RPI)

**BRD Says:**
- RPI004: "Report limited to Covert Org Unit 653 and Senior Executive Officers"

**What's Missing:**
Which SAP fields identify these groups?

**Example of Needed Answer:**
> "Org Unit 653: SAP field PA0001.ORGEH = '653' (or PA0008.ORGEH)  
> Senior Executives: Position code in PA0001.STELL = 'SEX' (or use PA0008.STELL)  
> OR: Use PBRI flag field in custom table to identify executives"

**Owner:** HR / PBRI

**Reports Blocked:** RPI

---

## Gap 9: OLIMS Audit Field Names (Blocking Multiple Reports)

**BRD Says:**
- Multiple reports reference "Last Modified By" and "Last Modified On" for audit trail

**What's Missing:**
What are the exact OLIMS field names for these audit fields?

**Example of Needed Answer:**
> "OLIMS audit fields:  
> Last Modified By: LAST_MODIFIED_BY (field type: CHAR)  
> Last Modified On: LAST_MODIFIED_DATE (field type: DATE)  
> Alternative: LAST_MODIFIED_AT (timestamp with hour/minute/second)"

**Owner:** OLIMS

**Reports Blocked:** RPB, RPC, RPK, RPI, RPF, RPA, RPE, and others

---

## How to Use This Document

### For Project Manager:
1. Use this list to create clarification requests
2. Send one request per stakeholder group
3. Provide this document as reference
4. Set 1-week response deadline

### For Stakeholders (When Answering):
1. Pick the gaps your team owns (see "Owner" column)
2. Provide exact answers (table names, field names, values)
3. If uncertain, say "TBC" rather than guessing
4. Provide evidence/reference (SAP query, OLIMS docs, etc.)

### For Developer (After Answers Received):
1. Update report files with confirmed table/field names
2. Replace [TBC] markers with actual values
3. Use confirmed data sources to write queries

---

## Document Control

**Created:** 2026-01-23  
**Phase:** Requirements Gathering (Phase 1)  
**Type:** Critical Gaps List (Requirements-Only)  
**Status:** Awaiting stakeholder clarifications

**Related Documents:**
- `/docs/Task.md` – Project overview and phase definition
- `/docs/BUSINESS-COMMUNICATION-PACKAGE.md` – Templates for sending requests
- `/docs/reports/CROSS-REPORT-ANALYSIS.md` – Cross-report dependencies
- `/docs/reports/RPC-epss-down-grade-report.md` – Example report with gaps
- `/docs/reports/RPK-epss-forecast-estimates-summary.md` – Example report with gaps
- `/docs/reports/RPI-epss-pay-simulation-report.md` – Example report with gaps

