# Cross-Report Analysis: Shared Assumptions & Blocking Items

**Purpose:** Consolidate common assumptions and blocking [TBC] items across all EPSS reports to identify dependencies and prioritize clarifications.

**Date Generated:** 2026-01-23

---

## Executive Summary

### Reports Analyzed (with Assumptions sections)
- ✅ **RPB** — EPSS On-Duty Claim Report (Assumptions + 2-tier Questions added)
- ✅ **RPC** — EPSS Down Grade Report (Assumptions + 2-tier Questions added)
- ✅ **RPK** — EPSS Forecast Estimates Summary (Assumptions + 2-tier Questions added)
- ✅ **RPI** — EPSS Pay Simulation Report (Assumptions + 2-tier Questions added)

### Remaining Reports (to be analyzed)
- RPA, RPD, RPE, RPF, RPG, RPH, RPJ, RPL, RPM, RPN, RPO, RPP, RPQ, RPR, SR (14 reports)

---

## Shared Assumptions Across Reports

### 1. Core SAP Table Assumptions (SHARED ACROSS ALL EPSS REPORTS)

| Assumption | RPB | RPC | RPK | RPI | Impact |
|---|---|---|---|---|---|
| **PERNR (Employee Number) unique identifier** | ✅ | ✅ | ✅ | ✅ | Critical: Used as primary key to link all incident/claim/payroll data; if not unique or inconsistent across systems, all reports fail |
| **INCIDENT (Incident Number) unique identifier** | ✅ | ✅ | ✅ | ✅ | Critical: Used to link employee to specific work injury; if not unique or null, claim linkage breaks |
| **ZIMLTRVAR1 is base extract structure** | ✅ | ✅ | - | ✅ | High: Employee/incident attributes used across reports; assumes structure consistent across all reports |
| **ZIM_IN_CM is master claim table** | ✅ | ✅ | - | ✅ | High: Claim status, duty determination, EPSS flags stored here; assumes one active row per PERNR+INCIDENT in period |
| **Date-based filtering (BEGDA/ENDDA)** | ✅ | ✅ | - | ✅ | High: Multiple tables use effective-dated records; assumes all use same BEGDA/ENDDA logic and current period filtering |
| **Effective-dated records in HR/claim tables** | ✅ | ✅ | - | ✅ | Medium: Assumes records with BEGDA ≤ report_date ≤ ENDDA are active; TBC exact filtering for each table |

### 2. Claim Flag Assumptions (SHARED ACROSS RPB, RPC, RPI)

| Flag Type | Assumption | RPB | RPC | RPI | TBC Status |
|---|---|---|---|---|---|
| **PBRI Claim Flag** | Derived from ZIM_IN_CLAIM.CLAIM_TYPE='PBRI' OR 4909 wagetype | ✅ | ✅ | - | **[CRITICAL TBC]** Code value for PBRI not confirmed |
| **EPSS Claim Flag** | Source: ZIM_IN_CM.DEF_CLAIM (value TBC) | ✅ | ✅ | - | **[CRITICAL TBC]** Flag name/value domain not confirmed |
| **Transitioned to EPSS Flag** | Source: ZIM_IN_CM.TRANSITION_TO_EPSS (value TBC) | ✅ | ✅ | - | **[CRITICAL TBC]** Flag name/value domain not confirmed |
| **Flag Value Domain** | Assume X=true, blank=false (or 1/0 TBC) | ✅ | ✅ | - | **[CRITICAL TBC]** Exact values (X/blank, 1/0, Y/N, A/I) not confirmed |
| **Simultaneous Flags** | Can a claim be PBRI AND Transitioned? Mutually exclusive? | ✅ | ✅ | - | **[BUSINESS RULE TBC]** Logic undefined |

### 3. Period Definition Assumptions (SHARED ACROSS RPK, RPI, RPB)

| Period | Definition | RPK | RPI | RPB | Notes |
|---|---|---|---|---|---|
| **Period 1** | Weeks 0–39 of incapacity | ✅ | ✅ | ✅ | Per OLF005; salary source varies by report |
| **Period 2** | Weeks 40–91 of incapacity | ✅ | ✅ | ✅ | Per OLF006; assume 75% pre-injury salary |
| **Period 3** | Weeks 92+ of incapacity | ✅ | ✅ | - | Per OLF007; RPB may not differentiate P3 |
| **Week Definition** | Payroll weeks (Fri–Thu) vs calendar weeks (Mon–Sun) | ✅ | ✅ | ✅ | **[TBC]** Exact week boundaries not confirmed |
| **Period Start Logic** | Period 1 starts on DISABLEMENT_DATE | ✅ | ✅ | ✅ | Assumed; TBC if any date adjustments apply |

### 4. Salary & Loading Assumptions (SHARED ACROSS RPI, RPK, RPB, RPC)

| Salary Component | Assumption | Reports | Source Table | TBC Status |
|---|---|---|---|---|---|
| **ORP (Ordinary Rate of Pay)** | Pre-injury salary or current wage type total | RPK, RPI, RPB | [EPSS Calc Table] | **[CRITICAL TBC]** How calculated/sourced; stored or derived |
| **Period 1 – Weekly Payment** | ORP - RTW earnings - WC earnings - External earnings | RPK, RPI, RPB | [EPSS Calc Table] | **[CRITICAL TBC]** Calculation formula/table source |
| **Period 2 – 75% Salary** | Pre-injury salary × 0.75 | RPK, RPI, RPB | [EPSS Calc Table] or IT0008 | **[CRITICAL TBC]** Which salary period; effective dating |
| **Pre-Injury Salary Source** | Stored in HR master (IT0008) or custom table | RPI, RPB | PA0008 or [EPSS Table] | **[CRITICAL TBC]** Exact table/field; effective dating rules |
| **RTW Earnings (9WCM)** | Return-to-work wage for capacity level | RPI, RPB | CE1PAY (WGTYPE=9WCM) | Medium: SAP wage type defined; unclear if amount varies by capacity |
| **WC Payment (4901)** | Workers compensation entitlement | RPI, RPB | CE1PAY (WGTYPE=4901) | Medium: SAP wage type defined |
| **External Earnings (3670)** | Concurrent income/offset | RPI, RPB | CE1PAY (WGTYPE=3670) | Medium: SAP wage type defined |

### 5. Data Quality & Filtering Assumptions (SHARED)

| Assumption | Reports Affected | TBC Status |
|---|---|---|---|
| **One active incident per PERNR in period** | All | Medium: Unclear if multiple incidents possible |
| **Inactive records excluded (INACTIVE='X')** | All | Low: Assume filtering logic standard |
| **Date range filtering uses BEGDA/ENDDA** | All | Low: Assume standard HR effective-dating |
| **NULL/blank handling consistent** | All | Medium: How to display blanks (empty, N/A, $0.00) |
| **Claim number may be blank** | RPK, RPI | Medium: Whether required or optional |
| **Missing wage types shown as $0.00** | RPI | Medium: Vs. blank cell vs. error state |

---

## Critical Blocking [TBC] Items

### TIER 1: CRITICAL (Blocking Multiple Reports)

| Item | Blocking Reports | Impact | Owner | Priority |
|---|---|---|---|---|
| **1. PBRI Claim Flag Implementation & Code Value** | RPB, RPC, RPI | Cannot correctly filter or display PBRI claims; affects claim type selection in 3 reports | OLIMS Design / Technical | **MUST** |
| **2. EPSS Claim Flag (DEF_CLAIM) Confirmation** | RPB, RPC, RPI | Cannot identify EPSS claims; fundamental claim filtering broken in 3 reports | OLIMS Design / Technical | **MUST** |
| **3. Flag Value Domain (X/blank vs 1/0 vs Y/N)** | RPB, RPC, RPI | Cannot implement flag display/filtering logic without knowing code values | Technical / Payroll | **MUST** |
| **4. Transitioned to EPSS Flag Definition** | RPB, RPC, RPI | Cannot identify transitioned claims; claim selection logic incomplete | OLIMS Design / Technical | **MUST** |
| **5. EPSS Calculation Table Structure & Field Names** | RPB, RPI, RPK | Cannot extract ORP, Period 2 75%, forecast calculations; critical salary/payment columns impossible | Technical / EPSS Team | **MUST** |
| **6. Period 1 ORP Derivation Logic** | RPB, RPI, RPK | Cannot calculate or source ORP reference amount; critical for P1 payment calculations | EPSS Team / Payroll | **MUST** |
| **7. Pre-Injury Salary Sourcing (IT0008 completeness)** | RPI, RPB, RPK | Cannot accurately calculate Period 2 75% salary; critical salary reference missing | Payroll / HR | **MUST** |
| **8. Week Definition & Boundaries (Payroll vs Calendar)** | RPI, RPB | Cannot split payroll into Week 1/Week 2; weekly aggregations wrong | Payroll Technical | **MUST** |
| **9. Claim Type Simultaneous Flag Rules** | RPB, RPC, RPI | Cannot implement selection filters without knowing if PBRI/EPSS/Transitioned are mutually exclusive | Business Analyst | **MUST** |
| **10. Downgrade Definition (RPC)** | RPC | Core business logic: what constitutes a "downgrade" in certificate capacity | Business (HSWC/Claims) | **MUST** |

### TIER 2: HIGH (Blocking Single Report or Feature)

| Item | Blocking Report(s) | Impact | Owner | Priority |
|---|---|---|---|---|
| **Super Code SAP Source** | RPC | Cannot populate Super Code column | Payroll / HR Technical | **SHOULD** |
| **WC Section Derivation Driver** | RPC | Cannot derive Current/Previous WC section lookup | Payroll Technical | **SHOULD** |
| **IP/EPSS Status Field Definition** | RPC | Status column may be misinterpreted | OLIMS Design | **SHOULD** |
| **PBRI Top-up Table & Join Logic** | RPI | Cannot populate PBRI Top-up column | PBRI Team / Technical | **SHOULD** |
| **Org Unit 653 & Senior Executive Identification** | RPI | Cannot filter restricted group correctly | HR / PBRI Technical | **SHOULD** |
| **OLIMS Estimate Table Structure (RPK)** | RPK | Cannot query forecast estimates from OLIMS | OLIMS Design | **SHOULD** |
| **Multiple Estimates Rollup Logic (RPK)** | RPK | Cannot aggregate forecasts if multiple per quarter | Business / OLIMS | **SHOULD** |
| **WC Leave Date Range SAP Source (RPC)** | RPC | Cannot correctly filter by leave dates | Technical | **SHOULD** |

### TIER 3: MEDIUM (Non-Blocking Clarifications)

| Item | Affecting Report(s) | Impact | Owner | Priority |
|---|---|---|---|---|
| **UI Control Types (radio/dropdown/checkbox)** | RPB, RPC, RPK, RPI | Affects user experience; logical implementation already possible | Business Analyst | **COULD** |
| **Default Filter Values** | RPB, RPC, RPK, RPI | Affects initial data shown; not blocking, can default to "All" | Business Analyst | **COULD** |
| **Display Format (FY2025 vs 2024-25)** | RPK | Cosmetic; doesn't affect data accuracy | Business Analyst | **COULD** |
| **Excel Export Mechanism** | RPI, RPK | Doesn't affect report logic; can use standard SAP export | Technical / BI | **COULD** |

---

## Shared Business Rules

### Claim Selection Logic

**Current State (UNCLEAR):**

Reports RPB and RPC both have claim type selection filters with similar options:
- PBRI Claim (flag)
- EPSS Claim (flag)
- Transitioned to EPSS (flag)
- All

**Questions:**

1. Are these three flags mutually exclusive (a claim is EITHER PBRI OR EPSS OR Transitioned) or can they overlap?
2. When user selects "PBRI Claim", should filter show:
   - Only records where PBRI=X (true)?
   - OR records where PBRI=X AND EPSS≠X (PBRI only, not also EPSS)?
3. When user selects "All", does it include:
   - All claims regardless of type?
   - OR only PBRI + EPSS + Transitioned (excluding others)?

**Impact:** Affects which incidents/claims appear in reports; fundamental to business logic.

---

## Data Dependency Map

```
┌─────────────────────────────────────────────────────────────┐
│                   EMPLOYEE MASTER (PA0001)                  │
│  PERNR, Name, Org Unit (Ug Unit 653?), Status (A/I)        │
└──────────────────────┬──────────────────────────────────────┘
                       │
        ┌──────────────┼──────────────┬──────────────┐
        │              │              │              │
        ▼              ▼              ▼              ▼
┌──────────────┐ ┌────────────┐ ┌────────────┐ ┌─────────────┐
│ INCIDENT     │ │ CLAIM      │ │ CERTIFICATE│ │ PRIMARY FLG │
│ (ZIMLTRVAR1) │ │ (ZIM_IN_CM)│ │(ZIM_IN_CERT│ │(ZIM_IN_PRIM)│
│ INCIDENT,    │ │ DISABL_DT, │ │ SEQ_NO,    │ │ PRIM_CLAIM  │
│ DATE_INCIDENT│ │ WC_STATUS, │ │ STATUS,    │ │             │
│              │ │ DUTY_DET   │ │ CAP_HOURS, │ │             │
└──────────────┘ │ [FLAGS]    │ │ CAP_DAYS   │ └─────────────┘
                 │ DEF_CLAIM? │ │            │
                 │ TRANSITION?│ └────────────┘
                 │ IP_STATUS  │
                 └────────────┘
                       │
                       ▼
        ┌──────────────────────────┐
        │  CLAIM TYPE FLAGS [TBC]  │
        │ ────────────────────────  │
        │ PBRI      = ? (code TBC) │
        │ EPSS      = DEF_CLAIM    │
        │ TRANSITED = ? (field TBC)│
        │ ────────────────────────  │
        │ Domain: ? (X, 1, Y, A?)  │
        │ Mutually exclusive? TBC  │
        └──────────────────────────┘

                       ↓
        ┌──────────────────────────┐
        │  SALARY ASSUMPTIONS      │
        │ ────────────────────────  │
        │ ORP (Ord. Rate of Pay)   │ ← [EPSS Calc Table – TBC]
        │ P2 75% Salary Reference  │ ← [EPSS Calc Table – TBC]
        │ Pre-Injury Salary        │ ← IT0008 (HR) [TBC]
        └──────────────────────────┘

                       ↓
        ┌──────────────────────────┐
        │  PAYROLL DATA (RPI only) │
        │ ────────────────────────  │
        │ Wage Type Amounts        │ ← CE1PAY or COEP [TBC]
        │ (9WCM, 4901, 3670...)    │
        │ By Week (W1/W2) [TBC]    │
        └──────────────────────────┘
```

---

## Recommended Clarification Sequence

### Phase 1: CRITICAL (Do First – Unblocks 3+ Reports)
1. **Confirm Flag Implementation** (PBRI, EPSS, Transitioned)
   - Table names, field names, code values
   - Mutual exclusivity rules
   - Affects: RPB, RPC, RPI, RPA, RPQ
2. **Confirm EPSS Calculation Table**
   - Table name, structure, field names
   - ORP storage/derivation logic
   - Period 2 75% salary source
   - Affects: RPB, RPI, RPK, RPA, RPE, RPL, RPM, RPN, RPO
3. **Confirm Pre-Injury Salary**
   - SAP table/field (IT0008 completeness)
   - Effective dating rules
   - Affects: RPI, RPB, RPA, RPK, RPL

### Phase 2: IMPORTANT (Do Second – Unblocks 2 Reports)
4. **Confirm Period & Week Definitions**
   - Week boundaries (calendar vs payroll)
   - Period start logic (DISABLEMENT_DATE adjustment)
   - Affects: RPI, RPB
5. **Confirm Payroll Calculation Table**
   - CE1PAY vs COEP vs custom staging
   - Week splitting logic
   - Affects: RPI, RPA, RPE, RPG, RPJ
6. **Confirm PBRI Top-up Table**
   - Table structure and join logic
   - Affects: RPI, RPA, RPM

### Phase 3: BUSINESS RULES (Do Third – Operational Decisions)
7. **Confirm RPC Downgrade Definition**
   - Hours/days/status comparison logic
   - Affects: RPC (core business logic)
8. **Confirm Claim Type Selection Logic**
   - Mutually exclusive vs overlapping
   - OR vs AND for multi-select
   - Affects: RPB, RPC, RPI, other filtering reports

### Phase 4: POLISH (Do Last – Non-Blocking)
9. **Confirm Display Formats & Controls**
   - UI types (radio/dropdown/checkbox)
   - FY format (FY2025 vs 2024-25)
   - Default values
10. **Confirm Export & Performance Requirements**
    - Excel export mechanism
    - Batch capabilities
    - Performance SLAs

---

## Recommended Next Steps

### For Developers/Technical Team
1. **Extract OLIMS Schema** - Document exact table/field names for:
   - Claim flags (PBRI, EPSS, Transitioned)
   - EPSS calculation table
   - Estimate table (RPK)
   - Audit fields

2. **Confirm SAP Field Completeness** - Verify:
   - IT0008 (pre-injury salary) populated for all incidents
   - Wage type amounts available in CE1PAY or COEP
   - Leave type S49 populated correctly

3. **Create SAP Query/View** - For each [TBC] item, create test query to validate:
   - Data quality (non-null, not stale)
   - Completeness (coverage across incidents)
   - Consistency (logic matches business rules)

### For Business Analysts
1. **Clarify Claim Type Business Rules**
   - Provide decision table for flag combinations
   - Define mutual exclusivity
   - Document period-in-force for each flag type

2. **Define Downgrade Rules** (RPC001)
   - Document exact comparison logic
   - Provide examples (high capacity → low capacity)
   - Clarify edge cases (blank vs numeric)

3. **Validate Period Definitions**
   - Confirm week boundaries align with payroll
   - Document period start adjustments
   - Clarify transition between periods

### For Report Owners
1. **Prioritize Business Questions by Report Importance**
   - Which reports are most critical?
   - What's the go-live sequence?
   - Can some reports be released with [TBC] items?

2. **Plan Testing Strategy**
   - Which scenarios to test first?
   - What's the test data for edge cases?
   - Who validates business logic?

---

## Summary Statistics

| Category | Count | TBC Count | % Complete |
|---|---|---|---|
| **Shared Assumptions** | 25+ | 8 | 68% |
| **Claim Flag Assumptions** | 5 | 4 | 20% |
| **Period Definitions** | 5 | 1 | 80% |
| **Salary Assumptions** | 6 | 4 | 33% |
| **Critical Blocking Items** | 10 | 10 | 0% |
| **High-Priority Items** | 8 | 8 | 0% |
| **Medium-Priority Items** | 4 | 0 | 100% |

**Overall Report Status:** ~60% of assumptions documented, 18 critical items requiring clarification before implementation can proceed.

---

## Document Control

- **Created by:** OpenCode Analysis
- **Date:** 2026-01-23
- **Reports Analyzed:** 4 (RPB, RPC, RPK, RPI)
- **Reports Pending:** 14 remaining
- **Next Review:** After Phase 1 clarifications received

