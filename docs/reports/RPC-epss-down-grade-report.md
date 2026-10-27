<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPC -->

# EPSS Down Grade Report

## Business Purpose
Identify work capacity downgrades (current Certificate of Capacity vs previous Certificate) where workers compensation leave has been entered in SAP, prompting EPSS claims officers to investigate eligibility for EPSS payments or transition of a PBRI incident to EPSS.

## Key Metrics/Columns
The report focuses on employee/incident identifiers, claim flags and statuses, key claim dates, and a side-by-side comparison of current vs previous certificate capacity (hours/day, days/week) and related WC section.

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPC001 | Purpose of the report is to identify work capacity downgrades with workers compensation leave entered in SAP that will trigger a EPSS claims officer to investigate to determine eligibility for EPSS payments or the PBRI incident to transition to EPSS.  The report to generate when there is a downgrade in the current certificate compared to the previous certificate.  Report on incidents before and after 01 October 2024 | M |
| RPC002 | **Selection Criteria:**   * Report date * WC Leave Date Range   + Start and To * WC Primary claim   + Primary   + Non-Primary Claim   + Both * EPSS/PBRI Claim   + PBRI Claim   + EPSS Claim   + Transitioned to EPSS claim   + All | M |
| RPC003 | **Report Columns:**   * Emp No. * First Name * Last Name * WC Primary Claim (flag) * PBRI claim (flag) * EPSS claim (flag) * Transitioned to EPSS (flag) * Incident No. * WC Claim No. * Incident Date * Date of Disablement * WC Status * WC Claim Status * WC Duty Desc. * IP/EPSS Status * Super Code * Current Cert Status * Current – Hours/Day * Current – Days/Week * Current – WC section * Previous Cert Status * Previous – Hours/Day * Previous – Days/Week * Previous – WC section * EPSS/IP Advisor | M |

## SAP Field Mappings

### Employee & Incident (RPC003)
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Emp No. | ZIMLTRVAR1 | PERNR | CHAR | 8 | Employee Number |
| First Name | ZIMLTRVAR1 | VORNA | CHAR | 40 | First Name |
| Last Name | ZIMLTRVAR1 | NACHN | CHAR | 40 | Last Name |
| Incident No. | ZIMLTRVAR1 | INCIDENT | CHAR | 10 | Incident Number |
| Incident Date | ZIMLTRVAR1 | DATEINCIDENT | CHAR | 10 | Date of Incident |

### Claim Flags (RPC002, RPC003)
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| WC Primary Claim (flag) | ZIM_IN_PRIM | PRIM_CLAIM | CHAR | 1 | Primary claim indicator (for PIAWE) |
| PBRI claim (flag) | ZIM_IN_CLAIM | CLAIM_TYPE | CHAR | 1 | Derived: claim type indicates PBRI (code mapping TBC) |
| EPSS claim (flag) | ZIM_IN_CM | DEF_CLAIM | CHAR | 1 | Default claim flag (assumed EPSS claim flag; confirm) |
| Transitioned to EPSS (flag) | ZIM_IN_CM | TRANSITION_TO_EPSS | CHAR | 1 | Transitioned to EPSS |

### Claim Dates & Status (RPC003)
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| WC Claim No. | ZIM_WC_BENEFITS | WCLMN | CHAR | 15 | Workcover Claim Number |
| Date of Disablement | ZIM_IN_CM | DISABLEMENT_DATE | DATS | 8 | Date of Disablement |
| WC Status | ZIM_IN_CM | WC_STATUS | CHAR | 1 | Workers Compensation Status |
| WC Claim Status | ZIM_WC_BENEFITS | STAT | CHAR | 1 | Claim status code |
| WC Duty Desc. | ZIM_IN_CM | DUTY_DET | CHAR | 1 | Duty determination (code; translate to On/Off Duty) |
| IP/EPSS Status | ZIM_IN_CM | IP_STATUS | CHAR | 1 | Income Protection status (EPSS portion/combined status TBC) |
| EPSS/IP Advisor | ZIM_IN_CM | IP_ADVISOR | NUMC | 8 | Income Protection Advisor (confirm if this is the intended “EPSS/IP Advisor”) |

### Superannuation (RPC003)
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Super Code | TBC | TBC | TBC | TBC | Identify SAP source for super fund code used by reporting (not found in BRD excerpt) |

### Certificate Comparison (RPC001, RPC003)
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Current Cert Status | ZIM_IN_CERT | STATUS | CHAR | 2 | Medical Certificate Status (latest certificate) |
| Current – Hours/Day | ZIM_IN_CERT | CAP_HOURS1 | CHAR | 5 | Capabilities: Hours/Day (latest certificate) |
| Current – Days/Week | ZIM_IN_CERT | CAP_DAYS1 | CHAR | 1 | Capabilities: Days/Week (latest certificate) |
| Previous Cert Status | ZIM_IN_CERT | STATUS | CHAR | 2 | Medical Certificate Status (previous certificate) |
| Previous – Hours/Day | ZIM_IN_CERT | CAP_HOURS1 | CHAR | 5 | Capabilities: Hours/Day (previous certificate) |
| Previous – Days/Week | ZIM_IN_CERT | CAP_DAYS1 | CHAR | 1 | Capabilities: Days/Week (previous certificate) |

### WC Section (RPC003)
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Current – WC section | ZIM_CODE_SECTION | WC_SECTION | CHAR | 2 | WC section (driver field to map from RULE_ZWC1 is TBC) |
| Previous – WC section | ZIM_CODE_SECTION | WC_SECTION | CHAR | 2 | WC section (driver field to map from RULE_ZWC1 is TBC) |

## Selection Criteria & Filters

| Filter Name | Control Type | Options | SAP Source | SAP Field |
|---|---|---|---|---|
| Report date | date | Single date | ZIMLTRVAR1 | CURDATE |
| WC Leave Date Range (Start/To) | date range | Start, To | ZIM_SCREEN | S49_BEGDA / S49_ENDDA |
| WC Primary claim | radio | Primary, Non-Primary, Both | ZIM_IN_PRIM | PRIM_CLAIM |
| EPSS/PBRI Claim | dropdown | PBRI, EPSS, Transitioned to EPSS, All | ZIM_IN_CLAIM / ZIM_IN_CM | CLAIM_TYPE / TRANSITION_TO_EPSS / DEF_CLAIM |

## Data Relationships

| Table | Primary Keys | Join To | Link Fields | Selection Logic |
|---|---|---|---|---|
| ZIMLTRVAR1 | N/A (extract structure) | ZIM_IN_CM, ZIM_WC_BENEFITS, ZIM_IN_CERT, ZIM_IN_PRIM, ZIM_IN_CLAIM | PERNR + INCIDENT | Base employee/incident attributes |
| ZIM_IN_CM | MANDT, PERNR, INCIDENT | ZIMLTRVAR1 | PERNR + INCIDENT | One row per incident/person |
| ZIM_WC_BENEFITS | N/A (extract structure) | ZIMLTRVAR1 | PERNR + INCIDENT | Filter by relevant period if multiple rows exist (DATE_FROM/DATE_TO) |
| ZIM_IN_PRIM | MANDT, PERNR, INCIDENT, SEQ_NO | ZIMLTRVAR1 | PERNR + INCIDENT | Use row active for report date (BEGDA ≤ report date ≤ ENDDA) and INACTIVE != 'X' |
| ZIM_IN_CLAIM | MANDT, PERNR, INCIDENT, CLAIM_TYPE, BEGDA, ENDDA | ZIMLTRVAR1 | PERNR + INCIDENT | Use row active for report date; derive claim flags by CLAIM_TYPE |
| ZIM_IN_CERT | MANDT, PERNR, INCIDENT, SEQ_NO | ZIMLTRVAR1 | PERNR + INCIDENT | Current certificate = MAX(SEQ_NO) (or latest by DATE_FROM); previous certificate = next MAX(SEQ_NO) below current |

## Calculated Fields

| Calculated Field | Business Logic | Source Fields | Output Type |
|---|---|---|---|
| Downgrade trigger | Determine if current certificate represents a downgrade vs previous (definition TBC: compare CAP_HOURS1 and/or CAP_DAYS1 and/or STATUS) | ZIM_IN_CERT.CAP_HOURS1, ZIM_IN_CERT.CAP_DAYS1, ZIM_IN_CERT.STATUS | Flag |
| PBRI claim (flag) | True when an active claim record exists for PBRI claim type | ZIM_IN_CLAIM.CLAIM_TYPE | Flag |
| EPSS claim (flag) | True when DEF_CLAIM indicates EPSS claim (confirm coding) | ZIM_IN_CM.DEF_CLAIM | Flag |

## Lookups & Code Translations

| Field | Code | Meaning |
|---|---|---|
| DUTY_DET | O | On Duty |
| DUTY_DET | F | Off Duty |

## Open Questions (Business)

| Question | Related Req(s) | Why it matters |
|---|---|---|
| What is the exact definition of “downgrade” (compare hours/day, days/week, certificate status, or combination; how to treat blanks/non-numeric values)? | RPC001/RPC003 | Determines which incidents appear and the comparison logic for current vs previous certificate |
| What should “IP/EPSS Status” display to users (IP status only, EPSS claim status, combined value, or separate columns)? | RPC003 | Ensures the report column matches business expectations and avoids misinterpretation |
| Does “Report on incidents before and after 01 October 2024” mean no incident-date restriction, or a specific split/filter requirement in the UI? | RPC001 | Impacts selection criteria and any default filtering/reporting behaviour |

## Outstanding Items [TBC]

| Outstanding Item | Impact | Priority | Owner | Status |
|---|---|---|---|---|
| Define “downgrade” rules (hours/day, days/week, status, or combination) | RPC001/RPC003 drives which incidents appear | MUST | Business (HSWC/Claims) | TBC |
| Confirm EPSS claim flag source (DEF_CLAIM vs CLAIM_TYPE mapping) | RPC002/RPC003 claim filtering + flags | MUST | Functional/Technical | TBC |
| Confirm CLAIM_TYPE code values for PBRI/EPSS/Transitioned | RPC002/RPC003 claim filtering + flags | MUST | Technical | TBC |
| Confirm “WC Leave Date Range” SAP source (S49 leave vs other leave types) | RPC002 selection criteria correctness | MUST | Technical | TBC |
| Identify “Super Code” SAP source and code list | RPC003 report column | SHOULD | Payroll/HR Technical | TBC |
| Identify “Current/Previous – WC section” derivation (RULE_ZWC1 driver) | RPC003 report columns | SHOULD | Payroll Technical | TBC |
| Clarify “IP/EPSS Status” combined field definition | RPC003 report column | SHOULD | Business/Technical | TBC |

## Report Column Sequence

| # | Column Name | Source | Type | Notes |
|---|---|---|---|---|
| 1 | Emp No. | ZIMLTRVAR1.PERNR | Direct |  |
| 2 | First Name | ZIMLTRVAR1.VORNA | Direct |  |
| 3 | Last Name | ZIMLTRVAR1.NACHN | Direct |  |
| 4 | WC Primary Claim (flag) | ZIM_IN_PRIM.PRIM_CLAIM | Direct | “Non-Primary” derived when not flagged |
| 5 | PBRI claim (flag) | ZIM_IN_CLAIM.CLAIM_TYPE | Calculated | Requires CLAIM_TYPE code mapping |
| 6 | EPSS claim (flag) | ZIM_IN_CM.DEF_CLAIM | Direct | Confirm |
| 7 | Transitioned to EPSS (flag) | ZIM_IN_CM.TRANSITION_TO_EPSS | Direct |  |
| 8 | Incident No. | ZIMLTRVAR1.INCIDENT | Direct |  |
| 9 | WC Claim No. | ZIM_WC_BENEFITS.WCLMN | Direct |  |
| 10 | Incident Date | ZIMLTRVAR1.DATEINCIDENT | Direct |  |
| 11 | Date of Disablement | ZIM_IN_CM.DISABLEMENT_DATE | Direct |  |
| 12 | WC Status | ZIM_IN_CM.WC_STATUS | Direct |  |
| 13 | WC Claim Status | ZIM_WC_BENEFITS.STAT | Direct |  |
| 14 | WC Duty Desc. | ZIM_IN_CM.DUTY_DET | Lookup | O/F translation |
| 15 | IP/EPSS Status | ZIM_IN_CM.IP_STATUS | Direct | EPSS component TBC |
| 16 | Super Code | TBC | TBC |  |
| 17 | Current Cert Status | ZIM_IN_CERT.STATUS | Direct | Latest certificate |
| 18 | Current – Hours/Day | ZIM_IN_CERT.CAP_HOURS1 | Direct | Latest certificate |
| 19 | Current – Days/Week | ZIM_IN_CERT.CAP_DAYS1 | Direct | Latest certificate |
| 20 | Current – WC section | ZIM_CODE_SECTION.WC_SECTION | Lookup | Driver mapping TBC |
| 21 | Previous Cert Status | ZIM_IN_CERT.STATUS | Direct | Previous certificate |
| 22 | Previous – Hours/Day | ZIM_IN_CERT.CAP_HOURS1 | Direct | Previous certificate |
| 23 | Previous – Days/Week | ZIM_IN_CERT.CAP_DAYS1 | Direct | Previous certificate |
| 24 | Previous – WC section | ZIM_CODE_SECTION.WC_SECTION | Lookup | Driver mapping TBC |
| 25 | EPSS/IP Advisor | ZIM_IN_CM.IP_ADVISOR | Direct | Confirm advisor role |

## Assumptions

### Data Sources & System Integration
1. **Primary Data Source:** ZIMLTRVAR1 extract provides base employee/incident attributes (name, incident number, dates) linked to detailed claim tables via PERNR+INCIDENT keys
2. **Leave Data Source:** "WC Leave Date Range" (RPC002) is assumed to reference SAP leave type S49 (workers compensation leave) in the leave master; assumes leave records exist in HR leave module for incidents
3. **Multiple Records:** Assumes only ONE active incident row per PERNR+INCIDENT in period; if multiple, assume latest by date or status indicator
4. **Certificate Sequencing:** Current = latest by SEQ_NO in ZIM_IN_CERT; Previous = second-latest; assumes both exist for comparison (if not, blank/N/A handling TBC)
5. **Claim Filtering:** Assume all claim type records exist and are active during report period; inactive/historical claims filtered by BEGDA/ENDDA date ranges

### Claim Type & Selection Criteria
6. **PBRI vs EPSS Flag Derivation:** PBRI flag = ZIM_IN_CLAIM records with CLAIM_TYPE='PBRI' (code value TBC); EPSS flag = ZIM_IN_CM.DEF_CLAIM='X' (value TBC); Transitioned = ZIM_IN_CM.TRANSITION_TO_EPSS='X'
7. **Flag Value Domains:** Assume flags are CHAR(1) with values: 'X'=true, blank/spaces=false (or '1'/'0' TBC); confirm actual domain values with Technical Team
8. **Simultaneous Flags:** Assume a claim can be EITHER PBRI, EPSS, or Transitioned (mutually exclusive) OR allow a claim to be both PBRI and Transitioned (business rule TBC)
9. **Selection Filter Logic:** RPC002 filter "EPSS/PBRI Claim" uses OR logic: show records where (PBRI=true) OR (EPSS=true) OR (Transitioned=true) OR (All) returns all; confirm OR vs AND logic
10. **UI Control Type:** Assume RPC002 filters are implemented as RADIO buttons (single select per filter category) or CHECKBOXES (multi-select); assume WC Primary Claim uses RADIO (Primary/Non-Primary/Both); EPSS/PBRI uses DROPDOWN or CHECKBOXES (confirm interaction pattern)

### Period & Date Handling
11. **Report Date Filter:** RPC002 "Report date" is a single date (not range); assumes report is run for snapshot at that date and filters all claim/certificate records as-of that date
12. **WC Leave Date Range:** Assumes "WC Leave Date Range Start/To" filters leave records in HR leave module; unclear if this filters INCIDENTS or LEAVE; likely filters leave records created between Start and To dates (TBC)
13. **October 2024 Cutoff:** RPC001 says "incidents before and after 01 October 2024"; interpret as NO incident date filter (report all), but allow UI option to filter by incident date if needed (TBC)
14. **Active as-of Date:** All ZIM_IN_PRIM, ZIM_IN_CLAIM, ZIM_IN_CERT records filtered to BEGDA ≤ report date ≤ ENDDA and INACTIVE ≠ 'X' to get active records at report date

### Downgrade Definition & Triggers
15. **Downgrade Comparison Logic:** RPC001 triggers when "current certificate represents downgrade vs previous"; definition unclear: does downgrade mean ANY of: (a) lower CAP_HOURS1, (b) lower CAP_DAYS1, (c) worse STATUS code, (d) combination? (TBC)
16. **Numeric Handling:** Assumes CAP_HOURS1 and CAP_DAYS1 are numeric (or formatted numeric strings); blank/non-numeric values treated as "no restriction" (highest level); confirm handling of edge cases
17. **Status Code Ordering:** Assume STATUS codes in ZIM_IN_CERT have implicit order (e.g., 'U'=Unfit < 'P'=Partially Fit < 'F'=Fit); used to determine downgrade (TBC)
18. **Certificate Status Blank:** If current or previous certificate missing, assume report still includes row with downgrade=N/A or blank; confirm whether to exclude or flag differently

### Salary & Loading Calculations
19. **Not Applicable to RPC:** This report does not include salary or loading calculations; all columns are direct from SAP tables or simple lookups

### Field Mappings & Missing Implementations
20. **Super Code Source:** Field "Super Code" (RPC003) not found in mapped ZIM tables; likely HR module field (IT0220/FONDS) but not confirmed in available field list; [TBC] which table/field
21. **WC Section Derivation:** "Current/Previous – WC section" mapped to ZIM_CODE_SECTION but driver field for lookup (e.g., RULE_ZWC1) unclear; document derivation logic when confirmed
22. **IP/EPSS Status:** RPC003 column maps to ZIM_IN_CM.IP_STATUS but unclear if this is IP status ONLY or combined EPSS component; confirm field definition
23. **WC Duty Desc Lookup:** DUTY_DET field has codes (O/F) that need translation to display text; confirm code list and whether other codes exist beyond O/F

### Payroll & Payment Integration
24. **Not Applicable to RPC:** This report does not include payroll or payment data; focuses on certificate capacity comparison only

### Selection Logic & Filter Interaction
25. **Filter Combination Logic:** Assume WC Leave Date Range filters INCIDENTS (by leave dates related to incident); assume claim filters (PBRI/EPSS) use OR logic; assume WC Primary uses AND logic (Primary AND PBRI, or Non-Primary AND EPSS); confirm composite filter logic
26. **Default Selection:** Report UI assumes Report Date = TODAY() by default; WC Leave Date Range = empty (last 30 days? TBC); Claim Type = All; WC Primary = Both
27. **No Criteria Behavior:** If all criteria blank, assume report returns ALL incidents with ANY WC leave in period; confirm whether this is intended default behavior

### Data Quality & Completeness
28. **Missing Certificate History:** If incident has only 1 certificate (no previous), assume row included with "Previous Cert Status=blank" or excluded entirely; confirm handling
29. **Inactive Claims Exclusion:** Assume inactive claims (INACTIVE='X') excluded from results; confirm that BEGDA/ENDDA filtering is sufficient vs. explicit flag check
30. **Leave Type Assumption:** Assume S49 (WC Leave) is the ONLY leave type relevant to RPC; other leave types (sick, annual) excluded even if employees on those leave
31. **Claim Status Interpretation:** WC_STATUS and CLAIM_STATUS both appear as columns; assume WC_STATUS is from ZIM_IN_CM (incident-level) and CLAIM_STATUS is from ZIM_WC_BENEFITS (benefit-level); both used in parallel without derived combination

## Open Questions (Business)

### TIER 1: Confirmed from BRD (No Further Questions Needed)

| BRD Requirement | What We Know | Evidence |
|---|---|---|
| **Report Purpose** | Identify work capacity downgrades with WC leave to trigger EPSS/PBRI review | RPC001 explicitly states purpose |
| **Report Scope** | Incidents before AND after 01 October 2024 (no date cutoff filtering) | RPC001 states "incidents before and after 01 Oct 2024" |
| **Selection Filters** | Report date, WC Leave Date Range, WC Primary Claim (Primary/Non-Primary/Both), EPSS/PBRI Claim (PBRI/EPSS/Transitioned/All) | RPC002 explicitly lists all filter options |
| **Report Columns** | 25 specific columns listed from employee ID to advisor | RPC003 explicitly enumerates all columns |
| **Base SAP Tables** | ZIMLTRVAR1 (base), ZIM_IN_CM (claim), ZIM_WC_BENEFITS (benefits), ZIM_IN_CERT (certificates), ZIM_IN_PRIM (primary flag) | Confirmed via field mapping against BRD requirements |

### TIER 2: Clarification Needed from Business

| Question | BRD Ref | What's Missing | Impact |
|---|---|---|---|
| **What does "downgrade" mean in RPC001?** | RPC001 | BRD says "report when there is a downgrade in the current certificate compared to the previous certificate" but doesn't define: Does "downgrade" mean lower hours/day? Lower days/week? Worse status code? Or a combination? How to handle blanks/missing data? | Cannot build report filtering logic without knowing which scenarios count as "downgrade" |
| **What are the valid values for PBRI, EPSS, and Transitioned claim flags?** | RPC002, RPC003 | BRD requires report to filter by "PBRI claim", "EPSS claim", "Transitioned to EPSS claim" but doesn't specify which SAP fields store these flags or what code values indicate true/false (X? 1? Y? null?) | Cannot filter correctly if flag values unknown |
| **Which SAP table/field is "Super Code"?** | RPC003 | BRD requires "Super Code" column but doesn't specify SAP source (assumed IT0220/FONDS in HR, but not confirmed) | Cannot map column to SAP without knowing table/field |
| **How are PBRI/EPSS/Transitioned flags combined?** | RPC002 | BRD doesn't clarify: Can a claim have multiple flags simultaneously? Are they mutually exclusive? Example: Can claim be BOTH PBRI AND Transitioned? | Affects data accuracy and filter results |
| **What is "IP/EPSS Status" vs "WC Status"?** | RPC003 | BRD shows two status columns (WC Status, IP/EPSS Status) but doesn't clarify if IP/EPSS Status is from IP module or combined/derived field, or how they differ | Cannot interpret or validate status columns without understanding source/meaning |
| **What SAP table/field drives "Current/Previous – WC section" derivation?** | RPC003 | BRD requires WC section in report but doesn't specify which field is the "driver" (assumed RULE_ZWC1 mapping but not confirmed) | Cannot populate column without knowing driver field |
| **Are DUTY_DET codes (O/F) complete?** | RPC003 | BRD requires "WC Duty Desc" lookup but only shows O (On Duty), F (Off Duty). Are there other possible codes (S=Suspended, etc.)? | Lookup translation incomplete; may show untranslated codes in reports |
| **What to do if previous certificate missing?** | RPC001, RPC003 | BRD doesn't specify: If incident has only one certificate (current, no previous), should row be included or excluded? What should be displayed for "Previous Cert Status", "Previous Hours/Day", etc.? | Unclear how to handle missing historical data |

## Notes

- RPC001 requires reporting incidents both before and after 01 October 2024; interpret as no restriction by incident date, but allow filtering by incident date if required (TBC).

