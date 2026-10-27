<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPI -->

# EPSS Pay Simulation Report

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPI001 | This report is required to streamline the current manual process of producing pay simulations in bulk where the EPSS claims officer exports to PDF to review the payroll results during the off pay week payroll process. Outcomes in reviewing the data to identify any incorrect workers compensation payments, recalculate EPSS entitlements for any manual workaround processes and to ensure the integrity of the EPSS payments made to eligible officers. | M |
| RPI002 | Report to be made available in OLIMS EPSS Reporting folder | M |
| RPI003 | **Selection Criteria**   * Payroll Area * Payroll Period * Employee Number * Active and inactive | M |
| RPI004 | The report to generate payroll results for restricted groups; Covert Org Unit 653 and Senior Executive Officers | M |
| RPI005 | **Report Columns**   * Employee Number * Employee Name * Incident No. * WC Claim No. * WC Claim Status * For Period End Date * Pay Period End Date * Week 1: RTW earnings (9WCM) * Week 1: WC earnings (4901) * Week 1: External Earnings (3670) * Week 1: Period 1 – ORP * Week 1: Period 1 (49E9) * Week 1: Period 1 – adjs (6A48) * Week 1: Period 2 – 75% of salary * Week 1: Period 2 (49S9) * Week 1: Period 2 – adjs (6A49) * Week 2: RTW earnings (9WCM) * Week 2: WC earnings (4901) * Week 2: External Earnings (3670) * Week 2: Period 1 – ORP * Week 2: Period 1 (49E9) * Week 2: Period 1 – adjs (6A48) * Week 2: Period 2 – 75% of salary * Week 2: Period 2 (49S9) * Week 2: Period 2 – adjs (6A49) * RTW Earnings (Total) * WC Earnings (Total) * External Earnings (Total) * Period 1 (Total) * Period 2 (Total) * PBRI top up (Total) | M |
| RPI006 | The report to be able to run a simulation for the current payroll period at any time during the payroll cycle | M |
| RPI007 | The report to be exported from SAP to allow the EPSS Claims officer to analyse the information, the preferred option for the team is as an excel file | M |

## Business Purpose

**Primary Users:** EPSS claims officers, payroll administrators, and supervisors verifying payroll integrity during off-pay-week processing

**Purpose:** This report streamlines the current manual process of producing pay simulations in bulk for EPSS-eligible officers. It enables:
- **Payroll Verification**: Review payroll results and wage calculations during off-pay-week payroll cycles
- **EPSS Entitlement Review**: Validate Period 1 and Period 2 EPSS supplementary payment calculations
- **Error Detection**: Identify incorrect workers compensation payments and calculation discrepancies
- **Manual Workaround Tracking**: Recalculate EPSS entitlements where manual interventions have been applied
- **Payment Integrity**: Ensure accuracy and compliance of EPSS payments to eligible officers
- **Bulk Simulation**: Generate simulations for multiple employees (limited to Covert Org Unit 653 and Senior Executive Officers per RPI004)

**Frequency:** Generated on-demand at any time during the payroll cycle (per RPI006) to support "what-if" analysis and validation

**Export Format:** Excel (preferred per RPI007) for offline analysis and reporting

**Business Decisions Supported:**
- Validation that RTW, WC, and external earnings are correctly captured and categorized
- Confirmation that EPSS supplementary payments align with period rules and capacity status
- Identification of calculation errors before payroll submission
- Audit trail for adjustment justifications (6A48, 6A49 adjustment wagetypes)

## Key Metrics/Columns

**Employee/Claim Identifiers (Base Columns):**
- **Employee Number** – Unique identifier for the officer
- **Employee Name** – Full name of the officer
- **Incident Number** – Work-related incident identifier
- **WC Claim Number** – Workcover claim number
- **WC Claim Status** – Current status of the claim (Active, Suspended, Closed, etc.)
- **For Period End Date** – EPSS period end date for calculation
- **Pay Period End Date** – SAP payroll period end date

**Weekly Wage Detail Columns (Week 1 and Week 2, 7 columns each):**
- **RTW Earnings (9WCM)** – Return-to-work earnings wage type
- **WC Earnings (4901)** – Workers compensation earnings wage type
- **External Earnings (3670)** – External income/concurrent earnings wage type
- **Period 1 – ORP** – Period 1 ordinary rate of pay (base reference)
- **Period 1 (49E9)** – Period 1 EPSS supplementary payment wage type
- **Period 1 – Adjustments (6A48)** – Period 1 manual adjustment wage type
- **Period 2 – 75% of Salary** – Period 2 reference (75% of pre-injury salary)
- **Period 2 (49S9)** – Period 2 EPSS supplementary payment wage type
- **Period 2 – Adjustments (6A49)** – Period 2 manual adjustment wage type

**Total/Summary Columns:**
- **RTW Earnings (Total)** – Sum of RTW earnings for both weeks
- **WC Earnings (Total)** – Sum of WC earnings for both weeks
- **External Earnings (Total)** – Sum of external earnings for both weeks
- **Period 1 (Total)** – Total Period 1 EPSS payments + adjustments
- **Period 2 (Total)** – Total Period 2 EPSS payments + adjustments
- **PBRI Top-up (Total)** – Any top-up payments from PBRI scheme

**Key Metrics/Indicators:**
- **Weekly EPSS Eligibility** – Calculated eligibility based on capacity and earnings
- **Calculation Variance** – Difference between expected and actual amounts
- **Adjustment Flag** – Indicates if manual adjustments were applied (6A48/6A49)

## SAP Field Mappings
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Employee Number | PA0001 | PERNR | CHAR | 8 | Employee Number |
| Employee Name | PA0002 | ENAME | CHAR | 40 | Formatted Employee Name |
| Incident Number | ZIMLTRVAR | INCIDENT | CHAR | 10 | Incident Number |
| WC Claim Number | ZIMLTRVAR | CLAIMNO | CHAR | 15 | Workcover Claim Number |
| WC Claim Status | ZIMLTRVAR | CLAIMSTATUS | CHAR | 60 | Claim Status |
| For Period End Date | [EPSS Calc Table – TBC] | [TBC] | DATS | 8 | EPSS period end date |
| Pay Period End Date | T549S | PEREND | DATS | 8 | Payroll period end date |
| Week 1: RTW Earnings (9WCM) | CE1PAY or COEP | WGTYPE=9WCM, AMOUNT | CURR | 15 | Return-to-work earnings |
| Week 1: WC Earnings (4901) | CE1PAY or COEP | WGTYPE=4901, AMOUNT | CURR | 15 | Workers compensation earnings |
| Week 1: External Earnings (3670) | CE1PAY or COEP | WGTYPE=3670, AMOUNT | CURR | 15 | External/concurrent income |
| Week 1: Period 1 – ORP | [EPSS Calc Table] | [TBC] | CURR | 15 | Period 1 ordinary rate of pay reference |
| Week 1: Period 1 (49E9) | CE1PAY or COEP | WGTYPE=49E9, AMOUNT | CURR | 15 | Period 1 EPSS supplementary payment |
| Week 1: Period 1 – Adjs (6A48) | CE1PAY or COEP | WGTYPE=6A48, AMOUNT | CURR | 15 | Period 1 manual adjustments |
| Week 1: Period 2 – 75% Salary | [EPSS Calc Table] | [TBC] | CURR | 15 | Period 2 reference (75% pre-injury) |
| Week 1: Period 2 (49S9) | CE1PAY or COEP | WGTYPE=49S9, AMOUNT | CURR | 15 | Period 2 EPSS supplementary payment |
| Week 1: Period 2 – Adjs (6A49) | CE1PAY or COEP | WGTYPE=6A49, AMOUNT | CURR | 15 | Period 2 manual adjustments |
| Week 2: RTW Earnings (9WCM) | CE1PAY or COEP | WGTYPE=9WCM (Week 2), AMOUNT | CURR | 15 | Return-to-work earnings (Week 2) |
| Week 2: WC Earnings (4901) | CE1PAY or COEP | WGTYPE=4901 (Week 2), AMOUNT | CURR | 15 | WC earnings (Week 2) |
| Week 2: External Earnings (3670) | CE1PAY or COEP | WGTYPE=3670 (Week 2), AMOUNT | CURR | 15 | External earnings (Week 2) |
| Week 2: Period 1 – ORP | [EPSS Calc Table] | [TBC] | CURR | 15 | Period 1 ORP (Week 2) |
| Week 2: Period 1 (49E9) | CE1PAY or COEP | WGTYPE=49E9 (Week 2), AMOUNT | CURR | 15 | Period 1 EPSS (Week 2) |
| Week 2: Period 1 – Adjs (6A48) | CE1PAY or COEP | WGTYPE=6A48 (Week 2), AMOUNT | CURR | 15 | Period 1 Adjs (Week 2) |
| Week 2: Period 2 – 75% Salary | [EPSS Calc Table] | [TBC] | CURR | 15 | Period 2 ref (Week 2) |
| Week 2: Period 2 (49S9) | CE1PAY or COEP | WGTYPE=49S9 (Week 2), AMOUNT | CURR | 15 | Period 2 EPSS (Week 2) |
| Week 2: Period 2 – Adjs (6A49) | CE1PAY or COEP | WGTYPE=6A49 (Week 2), AMOUNT | CURR | 15 | Period 2 Adjs (Week 2) |
| RTW Earnings (Total) | [Calculated] | [Calculated] | CURR | 15 | Sum of 9WCM (Week 1 + Week 2) |
| WC Earnings (Total) | [Calculated] | [Calculated] | CURR | 15 | Sum of 4901 (Week 1 + Week 2) |
| External Earnings (Total) | [Calculated] | [Calculated] | CURR | 15 | Sum of 3670 (Week 1 + Week 2) |
| Period 1 (Total) | [Calculated] | [Calculated] | CURR | 15 | Sum of 49E9 + 6A48 (both weeks) |
| Period 2 (Total) | [Calculated] | [Calculated] | CURR | 15 | Sum of 49S9 + 6A49 (both weeks) |
| PBRI Top-up (Total) | [PBRI Table – TBC] | [TBC] | CURR | 15 | Personnel and Payroll Resource Information top-up |

## Selection Criteria & Filters
| Filter | Type | Options | SAP Source |
|---|---|---|---|
| Payroll Area | Dropdown (Multi-select) | All payroll areas or specific area(s) | T549S.PAYAR |
| Payroll Period | Dropdown (required) | Current period or selection of open/closed periods | T549S.PERPE |
| Employee Number | Range | Single or range of personnel numbers | PA0001.PERNR |
| Activity Status | Radio Button | Active, Inactive, or Both | PA0001.STAT |
| Org Unit Filter | Dropdown | Include/Exclude Covert Org Unit 653 and/or Senior Executives (per RPI004) | [PBRI/HR Org Master] |
| Claim Status | Dropdown (Multi-select) | Active, Suspended, Closed, or All | ZIMLTRVAR.CLAIMSTATUS |
| Include Simulation | Checkbox | Generate simulation for current period (even if not yet paid) per RPI006 | [Calculation Flag] |

## Data Relationships
| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| PA0001 | MANDT, PERNR | Employee master base table | Retrieve active/inactive employees; filter by org unit (653 + Senior Execs) |
| PA0002 | MANDT, PERNR, INFTY, SUBTY, OBJECTID, BEGDA | Employee names and personal data | Join to PA0001 on PERNR; filter on BEGDA/ENDDA for current period |
| ZIMLTRVAR | PERNR, INCIDENT | EPSS incident and claim data | Join to PA0001 on PERNR; retrieve incident, claim, claim status |
| CE1PAY or COEP | MANDT, PERNR, PAYID, PAYDT, WGTYPE | Payroll calculation/earnings records | Join to PA0001 on PERNR; filter by payroll period; retrieve wage amounts by type |
| T549S | MANDT, PAYAR, PERPE, PERBE, PEREND | Payroll period master | Join to payroll records on PAYAR/PERPE; retrieve period dates |
| [EPSS Calc Table – TBC] | [TBC] | EPSS supplementary payment calculations | Join to payroll on PERNR/period; retrieve ORP, Period 2 reference, eligibility flags |
| [PBRI Org Unit Master – TBC] | [TBC] | Organizational unit hierarchy and executive flags | Join to PA0001 on org unit; identify Org Unit 653 and Senior Executive Officers |
| [PBRI Top-up Table – TBC] | [TBC] | Personnel and Payroll Resource Information top-up payments | Join to payroll records on PERNR/period; retrieve top-up amounts |

## Calculated Fields
| Field | Formula | Source Fields |
|---|---|---|
| Week 1: Period 1 – ORP | [From EPSS Calc] or DERIVED from base salary + adjustments | Injury period, salary, capacity info |
| Week 1: Period 2 – 75% Salary | Pre_Injury_Weekly_Salary * 0.75 | Pre-injury salary, payroll period |
| Week 2: Period 1 – ORP | [From EPSS Calc] or DERIVED from base salary + adjustments | Injury period, salary, capacity info |
| Week 2: Period 2 – 75% Salary | Pre_Injury_Weekly_Salary * 0.75 | Pre-injury salary, payroll period |
| RTW Earnings (Total) | SUM(Week1_9WCM, Week2_9WCM) | Weekly RTW earnings |
| WC Earnings (Total) | SUM(Week1_4901, Week2_4901) | Weekly WC earnings |
| External Earnings (Total) | SUM(Week1_3670, Week2_3670) | Weekly external earnings |
| Period 1 (Total) | SUM(Week1_49E9 + Week1_6A48, Week2_49E9 + Week2_6A48) | Period 1 payments + adjustments |
| Period 2 (Total) | SUM(Week1_49S9 + Week1_6A49, Week2_49S9 + Week2_6A49) | Period 2 payments + adjustments |
| EPSS Eligibility (Weekly) | IF(Capacity_Status = 'Incapacity' AND Claim_Status = 'Active') THEN 'Eligible' ELSE [Check other rules] | Capacity, claim status, payment rules |
| Adjustment Flag | IF(6A48 > 0 OR 6A49 > 0) THEN 'Manual Adj Applied' ELSE 'None' | Adjustment wagetype amounts |
| Simulation Status | IF(Payroll_Posted = 'N') THEN 'Simulation' ELSE 'Actual' | Payroll posting indicator |

## Lookups & Code Translations
| Field | Code | Meaning |
|---|---|---|
| Wagetype | 9WCM | Return to Work earnings (all capacity levels) |
| Wagetype | 4901 | Workers Compensation earnings (WC entitlement) |
| Wagetype | 3670 | External Income / Concurrent Earnings |
| Wagetype | 49E9 | Period 1 EPSS Supplementary Support Payment |
| Wagetype | 6A48 | Period 1 Manual Adjustments |
| Wagetype | 49S9 | Period 2 EPSS Supplementary Support Payment (75% of salary) |
| Wagetype | 6A49 | Period 2 Manual Adjustments |
| Claim Status | A | Active – Claim is open and payments are due |
| Claim Status | S | Suspended – Claim suspended, payments frozen pending review |
| Claim Status | C | Closed – Claim closed, no further payments |
| Claim Status | R | Rejected – Claim rejected, not eligible |
| Capacity | TI | Total Incapacity – Unable to work |
| Capacity | PI | Partial Incapacity – Able to perform modified duties |
| Capacity | NI | No Incapacity – Able to perform original duties |
| Simulation Status | S | Simulation – Not yet posted to payroll |
| Simulation Status | A | Actual – Posted to payroll |
| Org Unit | 653 | Covert Org Unit 653 (restricted group per RPI004) |
| Position | SEX | Senior Executive Officer (restricted group per RPI004) |

## Outstanding Items [TBC]
| Item | Impact | Owner | Status |
|---|---|---|---|
| Confirm EPSS calculation table(s) structure | Data mapping: identify SAP/custom table that stores ORP, Period 2 reference, eligibility logic, and period-to-period calculations | Business Analyst / SAP Basis | Pending |
| Confirm payroll calculation table (CE1PAY vs. COEP) | Data mapping: clarify which SAP table holds wage type amounts for payroll simulations; understand posting status tracking | Payroll / SAP Basis | Pending |
| Confirm Org Unit 653 and Senior Executive identification | Data mapping: identify HR master fields that identify Covert Org Unit 653 and Senior Executive positions; confirm filtering logic per RPI004 | HR / Business Analyst | Pending |
| Confirm PBRI Top-up table and source | Data mapping: identify which SAP/PBRI table stores top-up amounts and how to join to payroll records | PBRI Team / Business Analyst | Pending |
| Define real-time simulation capability (RPI006) | Technical implementation: confirm whether report can generate simulations for current unposted periods; clarify calculation basis (draft vs. final) | Payroll / SAP Basis | Pending |
| Confirm Period 1 ORP derivation logic | Business rules: clarify if ORP is a stored value or calculated field; document formula for reference amounts | EPSS Team / Payroll | Pending |
| Define pre-injury salary sourcing | Data mapping: identify which SAP table stores pre-injury salary for Period 2 75% calculation; confirm effective dating | Payroll / HR | Pending |
| Confirm Excel export mechanism (RPI007) | Technical implementation: specify if export is built into SAP reporting tool or requires custom extraction | BI / Application Development | Pending |

## Open Questions (Business)
| Question | Related Req(s) | Why it matters |
|---|---|---|
| How are Period 1 ORP and Period 2 75% salary reference amounts calculated and stored in SAP? | RPI005 | Critical for accurate EPSS payment calculations; determines whether values are pre-calculated or derived in report logic |
| What payroll calculation table should be the primary source – CE1PAY, COEP, or custom staging table? | RPI005 | Affects data accuracy and timing; different tables may have different update frequencies and validation states |
| How should the report handle employees with mid-period capacity or claim status changes? | RPI001, RPI005 | Impacts calculation logic; determines whether to show split calculations or aggregate amounts for the period |
| Are Week 1 and Week 2 strictly calendar weeks (Mon–Sun) or payroll-defined weeks (e.g., Friday–Thursday)? | RPI005 | Affects wage type grouping and accuracy of weekly aggregations; must align with payroll period definition |
| What is the specific definition of "Covert Org Unit 653" and how is it identified in the system (org unit code, cost center, position, etc.)? | RPI004 | Required to correctly filter the restricted group; incorrect filtering could expose restricted payroll data |
| How should the report handle employees with no EPSS entitlement (e.g., those on workers comp only)? | RPI001 | Determines whether to include such employees or filter them out; affects report scope and user experience |
| Can claims officers run simulations for future payroll periods (pre-forecasting) or only for the current/past periods? | RPI006 | Clarifies the business use case; affects data availability and calculation basis (draft vs. actual) |
| What is the expected turnaround time for Excel export, and should it support batch exports for multiple employees? | RPI007 | Impacts usability and performance requirements; affects system design and scheduling |
| Should the report include variance/audit columns showing expected vs. actual EPSS calculations? | RPI001 | Would enhance error detection; clarifies whether analysis columns should be built-in or calculated offline |
| How should adjustment wagetypes (6A48, 6A49) be justified or explained in the report (e.g., with comment fields or approval indicators)? | RPI001 | Important for audit trail; determines if report needs additional columns for adjustment justification |

## Report Column Sequence
| # | Column | Source | Type |
|---|---|---|---|
| 1 | Employee Number | PA0001.PERNR | CHAR(8) |
| 2 | Employee Name | PA0002.ENAME | CHAR(40) |
| 3 | Incident Number | ZIMLTRVAR.INCIDENT | CHAR(10) |
| 4 | WC Claim Number | ZIMLTRVAR.CLAIMNO | CHAR(15) |
| 5 | WC Claim Status | ZIMLTRVAR.CLAIMSTATUS | CHAR(60) |
| 6 | For Period End Date | [EPSS Calc Table].Period_End_Date | DATS |
| 7 | Pay Period End Date | T549S.PEREND | DATS |
| 8 | Week 1: RTW Earnings (9WCM) | CE1PAY.AMOUNT (WGTYPE=9WCM, Week 1) | CURR(15) |
| 9 | Week 1: WC Earnings (4901) | CE1PAY.AMOUNT (WGTYPE=4901, Week 1) | CURR(15) |
| 10 | Week 1: External Earnings (3670) | CE1PAY.AMOUNT (WGTYPE=3670, Week 1) | CURR(15) |
| 11 | Week 1: Period 1 – ORP | [EPSS Calc Table].ORP_W1 | CURR(15) |
| 12 | Week 1: Period 1 (49E9) | CE1PAY.AMOUNT (WGTYPE=49E9, Week 1) | CURR(15) |
| 13 | Week 1: Period 1 – Adjs (6A48) | CE1PAY.AMOUNT (WGTYPE=6A48, Week 1) | CURR(15) |
| 14 | Week 1: Period 2 – 75% of Salary | [EPSS Calc Table].Period2_75Pct_W1 | CURR(15) |
| 15 | Week 1: Period 2 (49S9) | CE1PAY.AMOUNT (WGTYPE=49S9, Week 1) | CURR(15) |
| 16 | Week 1: Period 2 – Adjs (6A49) | CE1PAY.AMOUNT (WGTYPE=6A49, Week 1) | CURR(15) |
| 17 | Week 2: RTW Earnings (9WCM) | CE1PAY.AMOUNT (WGTYPE=9WCM, Week 2) | CURR(15) |
| 18 | Week 2: WC Earnings (4901) | CE1PAY.AMOUNT (WGTYPE=4901, Week 2) | CURR(15) |
| 19 | Week 2: External Earnings (3670) | CE1PAY.AMOUNT (WGTYPE=3670, Week 2) | CURR(15) |
| 20 | Week 2: Period 1 – ORP | [EPSS Calc Table].ORP_W2 | CURR(15) |
| 21 | Week 2: Period 1 (49E9) | CE1PAY.AMOUNT (WGTYPE=49E9, Week 2) | CURR(15) |
| 22 | Week 2: Period 1 – Adjs (6A48) | CE1PAY.AMOUNT (WGTYPE=6A48, Week 2) | CURR(15) |
| 23 | Week 2: Period 2 – 75% of Salary | [EPSS Calc Table].Period2_75Pct_W2 | CURR(15) |
| 24 | Week 2: Period 2 (49S9) | CE1PAY.AMOUNT (WGTYPE=49S9, Week 2) | CURR(15) |
| 25 | Week 2: Period 2 – Adjs (6A49) | CE1PAY.AMOUNT (WGTYPE=6A49, Week 2) | CURR(15) |
| 26 | RTW Earnings (Total) | [Calculated] SUM(Col8, Col17) | CURR(15) |
| 27 | WC Earnings (Total) | [Calculated] SUM(Col9, Col18) | CURR(15) |
| 28 | External Earnings (Total) | [Calculated] SUM(Col10, Col19) | CURR(15) |
| 29 | Period 1 (Total) | [Calculated] SUM(Col12+Col13, Col21+Col22) | CURR(15) |
| 30 | Period 2 (Total) | [Calculated] SUM(Col15+Col16, Col24+Col25) | CURR(15) |
| 31 | PBRI Top-up (Total) | [PBRI Top-up Table].Total_Topup | CURR(15) |

## Assumptions

### Data Sources & System Integration
1. **Multi-Table Integration:** Report integrates employee (PA0001/PA0002), incident (ZIMLTRVAR), payroll calculation (CE1PAY or COEP), payroll period (T549S), and [EPSS Calc Table – TBC] custom table
2. **EPSS Calculation Table:** Assumes custom SAP/OLIMS table exists with ORP, Period 2 75% salary reference, eligibility flags, and period-to-period calculations; table name and structure TBC from Technical Team
3. **Payroll Staging Table:** Unclear if report sources from CE1PAY (payroll calculation), COEP (costing), or custom staging table; assumes chosen table has wage type amounts for all 7 wagetypes per week (9WCM, 4901, 3670, 49E9, 6A48, 49S9, 6A49)
4. **Week Splitting:** Assumes payroll period can be split into Week 1 and Week 2; TBC whether split is calendar weeks (Mon–Sun), payroll weeks (Fri–Thu), or defined elsewhere
5. **Simulation Capability:** Assumes system can flag records as 'Simulation' (unposted) vs. 'Actual' (posted) and query simulated payroll before posting per RPI006

### Claim Type & Selection Criteria
6. **Active/Inactive Employees:** Assumes PA0001.STAT field identifies employee status; filter includes Active (A), Inactive (I), or Both per RPI003
7. **Org Unit 653 Definition:** Assumes employees in "Covert Org Unit 653" identified by org unit code in PA0001 or PA0002; TBC which field (ORGEH, KOSTL, or other) and filtering logic
8. **Senior Executive Officers:** Assumes SEX position code identifies Senior Executive Officers; TBC if this is SAP position code or PBRI-specific flag
9. **Org Unit Filter:** RPI004 states "restricted groups"; assume report LIMITED to only these groups (NOT all employees); unclear if filter is OR (653 OR SEX) or separate UI controls for each

### Period & Week Counting
10. **Payroll Period Definition:** Assumes T549S.PERPE (payroll period) maps to standard payroll periods; PEREND is period end date
11. **Two-Week Assumption:** RPI005 specifies "Week 1" and "Week 2"; assume payroll periods are exactly 2 weeks (14 days); TBC if week boundaries align with calendar weeks or are defined per payroll configuration
12. **Week Date Range:** Unclear if Week 1 = first 7 days of period, Week 2 = last 7 days, or if week splitting is different; TBC
13. **Current Period Simulation:** RPI006 allows simulation for "current payroll period at any time during payroll cycle"; assume current period = latest T549S.PERPE; TBC whether future periods allowed

### Salary & Calculation Assumptions
14. **ORP Source:** "Week X: Period 1 – ORP" assumes [EPSS Calc Table] contains pre-calculated ORP value; TBC if ORP is stored field or derived from base salary + adjustments
15. **Period 2 75% Calculation:** "Week X: Period 2 – 75% Salary" assumes pre-calculated value in [EPSS Calc Table]; TBC if derived as Pre_Injury_Weekly_Salary × 0.75 or sourced as stored field
16. **Pre-Injury Salary Source:** Assume pre-injury salary stored in HR master (PA) or EPSS table; TBC exact table/field and effective-dating logic
17. **Wage Type Amounts:** Assumes CE1PAY (or COEP) contains wage type detail with fields: WGTYPE (wagetype code), AMOUNT (value); may require pivot/grouping to get per-week amounts

### Field Mappings & Missing Implementations
18. **PBRI Top-up Table:** Assumes separate PBRI top-up table exists (custom SAP or external system); TBC structure, key fields, and join logic to payroll
19. **EPSS Eligibility Logic:** "EPSS Eligibility (Weekly)" calculated field assumes rule exists (e.g., IF Capacity = TI AND Claim = Active THEN Eligible); TBC exact business rule
20. **Adjustment Justification:** RPI001 mentions "manual workaround processes"; assumes adjustment wagetypes (6A48, 6A49) may require comment/justification fields; TBC if these fields exist in payroll or EPSS table

### Data Quality & Completeness
21. **Missing Week 2 Data:** If payroll period has < 2 weeks or Week 2 data blank, assume report shows blank or $0.00 for Week 2 columns; TBC behavior
22. **Mid-Period Status Changes:** TBC how to handle employees with capacity or claim status changes mid-period; assume report shows status as-of period start or end (TBC)
23. **No EPSS Entitlement:** Employees on workers compensation only (no EPSS eligibility) TBC whether included in report output; likely included but with blank Period 1/2 columns
24. **Wage Type Variability:** Assume all 7 wagetypes present in all payroll records; TBC how to handle missing wagetypes (blank vs. $0.00)

### Security & Data Restrictions
25. **Org Unit 653 Visibility:** RPI004 restricts report to "Covert Org Unit 653 and Senior Executive Officers"; assume technical security controls (row-level filtering) applied; TBC whether enforced at database or application level
26. **Export Security:** RPI007 Excel export TBC if governed by standard export controls; assume no sensitive payroll data beyond report columns exported

## Open Questions (Business)

### TIER 1: Confirmed from BRD (No Further Questions Needed)

| BRD Requirement | What We Know | Evidence |
|---|---|---|
| **Report Purpose** | Validate payroll results, EPSS calculations, and payment integrity during off-pay-week processing | RPI001 explicitly states purpose and use cases |
| **Primary Users** | EPSS claims officers, payroll administrators, supervisors | RPI001 states "EPSS claims officer" and related roles |
| **Report Columns** | 31 columns specified: employee/claim base, Week 1 (9 cols), Week 2 (9 cols), totals (5 cols) | RPI005 enumerates all columns |
| **Base Data Sources** | Employee (PA0001/PA0002), incident (ZIMLTRVAR), payroll (CE1PAY/COEP), payroll period (T549S) | Confirmed via field mapping against SAP tables |
| **Wage Types** | 7 wagetypes defined: 9WCM (RTW), 4901 (WC), 3670 (External), 49E9 (P1), 6A48 (P1 adj), 49S9 (P2), 6A49 (P2 adj) | RPI005 explicitly lists all wagetypes with codes |
| **Restricted Groups** | Report limited to Covert Org Unit 653 and Senior Executive Officers | RPI004 explicitly restricts group |
| **Export Format** | Excel preferred for analysis | RPI007 states "preferred option for team is as an excel file" |

### TIER 2: Clarification Needed from Business

| Question | BRD Ref | What's Missing | Impact |
|---|---|---|---|
| **Which SAP table contains the EPSS calculation data (ORP, Period 2 75% reference)?** | RPI005 | BRD requires "Week X: Period 1 – ORP" and "Week X: Period 2 – 75% Salary" columns but doesn't specify which SAP or OLIMS table stores these calculation reference values | Cannot extract ORP or Period 2 75% columns without knowing source table |
| **Which SAP table is authoritative for wage type amounts: CE1PAY or COEP?** | RPI005 | BRD requires extracting wage type amounts (9WCM, 4901, 3670, 49E9, etc.) but doesn't specify whether to use CE1PAY (payroll calculation) or COEP (cost accounting) or custom staging table | May extract wrong amounts if source table unclear |
| **How is "simulation" (unposted payroll) distinguished from actual payroll in SAP?** | RPI006 | BRD requires "simulation for the current payroll period at any time during the payroll cycle" but doesn't specify which field/value indicates whether a payroll record is posted or simulated | Cannot identify/filter simulated vs actual payroll without status indicator |
| **What SAP table/field identifies "Covert Org Unit 653" for filtering?** | RPI004 | BRD restricts report to "Covert Org Unit 653" but doesn't specify which SAP field contains org unit code or how 653 is identified | Cannot apply security filtering without knowing org unit field |
| **How are "Senior Executive Officers" identified in SAP?** | RPI004 | BRD restricts to "Senior Executive Officers" but doesn't specify which SAP field/code indicates SEX (position code? grade code? PBRI flag?) | Cannot apply security filtering without knowing how to identify executives |
| **What is the source table for PBRI top-up amounts?** | RPI005 | BRD requires "PBRI Top-up (Total)" column but doesn't specify which SAP or PBRI table contains top-up amounts | Cannot populate PBRI top-up column without knowing source table |
| **How is pre-injury salary sourced and effective-dated for Period 2 calculation?** | RPI005 | BRD requires "Period 2 – 75% Salary" (assumed as pre-injury salary × 0.75) but doesn't specify: which SAP field stores pre-injury salary, which effective date is used (injury date? current date?), what happens if salary missing | Cannot accurately calculate Period 2 reference without salary sourcing rules |
| **What is the exact week splitting logic for "Week 1" and "Week 2"?** | RPI005 | BRD shows "Week 1" and "Week 2" earnings columns but doesn't specify: Are weeks calendar weeks (Mon-Sun), payroll weeks (Fri-Thu), or something else? How are weeks split when payroll period = 2 weeks? | May aggregate wage types to wrong columns if week boundaries unclear |
| **What is the scope of "active and inactive" employee status filter?** | RPI003 | BRD allows filter for "Active and inactive" employees but doesn't specify: Are terminated employees included? What date is used to determine active (report date? period end date?) | Filter may include/exclude wrong employees |

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.

