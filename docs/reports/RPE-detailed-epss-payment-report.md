<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPE -->

# Detailed EPSS Payment Report

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPE001 | Purpose of the report is to provide the weekly calculation and payment breakdown, including any mid-week splits, of EPSS payments and weeks utilised of an officer’s primary WC incident. This will assist the EPSS claims officer to troubleshoot and explain any enquiries, complaints or disputes received and fill in any EPSS letters, forms and attachments in development.  The report can be generated for a single employee with one or more incidents, for multiple employees or incidents or open ended to generate results. | M |
| RPE002 | **Selection Criteria:**   * Employee Number * Incident Number * Date From * Date To | M |
| RPE003 | **Report Columns:**   * Employee Number * Incident Number * Claim Number * Start Date * End Date * Payment Date * Capacity Status (Partial Incapacity, Total Incapacity, Operational Duties) * Workers Compensation (4901) * Internal Earnings (eg 9WCM) * External Earnings (6017) * WC Factor * EPSS Factor * P1 – ORP * P1 – Payments (49E9 and 6A48) * P1 – Week Counted * P2 – Salary (75% of loaded salary) * P2 – Payments (49S9 and 6A49) * P3 – Salary (75% of loaded salary) * P3 – Payments (TBA) | M |
| RPE004 | If the officer is during Period 1 and has total incapacity (s36/s37) and is not receiving an EPSS payment, they are still be shown on the report as a P1 week counted even though the EPSS P1 payment is zero. | M |

## Business Purpose
Provide a week-by-week, pay-level reconciliation of EPSS calculation inputs and outputs for an employee+incident.  Primary users: EPSS Claims Officers and Payroll QA teams.  Uses: troubleshooting payment enquiries, dispute support, QA of automated EPSS calculations, and audit evidence of mid-week splits and offsets.

## Key Metrics/Columns
Weekly break-down of: RTW earnings, WC earnings, External earnings, ORP, EPSS payment components (P1/P2/P3), week-count flags, capacity status and supporting identifiers (employee/incident/claim).

## SAP Field Mappings
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Employee Number | `ZIMLTRVAR` | `PERNR` | CHAR | 8 | Employee number |
| Employee Name | `ZIMLTRVAR` | `VORNA`/`NACHN` | CHAR | 40/40 | First / Last name |
| Incident Number | `ZIMLTRVAR` | `INCIDENT` | CHAR | 10 | OLIMS incident id |
| Claim Number | `ZIMLTRVAR` | `CLAIMNO` | CHAR | 15 | Workcover claim number |
| Week Start / End Date | `Payroll / OLIMS weekly records` | `BEGDA` / `ENDDA` | DATS | 8 | Payment week date range (source: payroll or WC weekly records) |
| Payment Date / Pay Period End | `Payroll` | `PAY_PERIOD_END` / `DATE_PROCESSED` | DATS | 8 | Payroll payment or pay period end date (tbd) |
| Capacity Status | `ZIMLTRVAR` | `WCMCSTATUS` | CHAR | 60 | Medical Certificate Work Status (Total/Partial/PID) |
| WC Earnings (WT4901) | `Payroll wage lines` | `LGART`=`4901` + `AMOUNT` | CURR | 13 | Workers comp weekly amount |
| Internal Earnings (e.g. 9WCM) | `Payroll wage lines` | `LGART`=`9WCM` (or equivalent) + `AMOUNT` | CURR | 13 | Internal (paid) earnings used to offset EPSS |
| External Earnings (WT6017) | `Payroll wage lines` | `LGART`=`6017` + `AMOUNT` | CURR | 13 | External earnings wagetype (per BRD) |
| ORP (P1) | `ZIM_IN_PAWE` / `IT0008` | `WKLY_FULL_SAL` | CURR | 13 | Ordinary Rate of Pay (weekly) – confirm final derivation rules |
| P1 Payments (49E9) | `Payroll wage lines` | `LGART`=`49E9` + `AMOUNT` | CURR | 13 | EPSS Period 1 payment amount (payroll wagetype) |
| P1 Adjustments (6A48) | `Payroll wage lines` | `LGART`=`6A48` + `AMOUNT` | CURR | 13 | Manual adjustments / adjs for P1 |
| P1 - Week Counted | `Calculated` | n/a | CHAR | 1 | Whether the week was counted towards Period 1 (includes Total Incapacity even if payment=0 per RPE004) |
| P2 Salary (75% loaded) | `ZIM_IN_PAWE` / payroll | `WKLY_PFULL_CUR` / computed | CURR | 13 | 75% of loaded salary (weekly) used for Period 2 calculation |
| P2 Payments (49S9) | `Payroll wage lines` | `LGART`=`49S9` + `AMOUNT` | CURR | 13 | EPSS Period 2 payment amount |
| P2 Adjustments (6A49) | `Payroll wage lines` | `LGART`=`6A49` + `AMOUNT` | CURR | 13 | Manual adjustments for P2 |
| WC Factor | `calculated` | n/a | DEC | 8 | Factor applied to WC amounts (business rule / TBC) |
| EPSS Factor | `calculated` | n/a | DEC | 8 | Any additional EPSS calculation factor (business rule / TBC) |

> Notes: Where a specific lug-type table name/field is unclear (payroll wage table containing `LGART` + `AMOUNT`), we’ve referenced the logical source and wagetype code.  Confirm the canonical payroll wage table name and field names for `LGART`/`AMOUNT` in the target environment (TBC).

## Selection Criteria & Filters
| Filter | Type | Options | SAP Source |
|---|---|---|---|
| Employee Number | text / single | [PERNR] | `ZIMLTRVAR.PERNR` |
| Incident Number | text / single | [INCIDENT] | `ZIMLTRVAR.INCIDENT` |
| Date Range | date range | [Date From, Date To] | `Payroll.DATE_PROCESSED` / weekly BEGDA–ENDDA |

## Calculated Fields
| Field | Formula | Source Fields |
|---|---|---|
| P1 Payment (computed) | max(0, ORP - RTW_SAL - WC_PAYMENT - EXTERNAL_EARNINGS) | ORP (WKLY_FULL_SAL or IT0008), RTW earnings (9WCM), WC (4901), External (6017) |
| P1 Week Counted Flag | Business rules P1001–P1006 applied to week date-range and capacity; counts if week meets rule (includes Total Incapacity even if payment=0) | Certificate status, payment amount, week date ranges |
| P2 Payment (computed) | max(0, 0.75 * LOADED_SALARY - RTW_SAL - WC_PAYMENT - EXTERNAL_EARNINGS) | WKLY_PFULL_CUR (or 75% formula), RTW, WC, External |
| WC / EPSS Factors | Business-defined multipliers (TBC) | Source inputs per business rule |

## Data Relationships
| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| `ZIMLTRVAR` | `PERNR, INCIDENT` | Base employee/incident/claim identifiers | Use as primary identifier set for the report |
| `ZIM_IN_PAWE` | `PERNR, INCIDENT, SEQ_NO` | Join on `PERNR, INCIDENT` and week range overlaps `BEGDA/ENDDA` | Choose record active for the week (BEGDA ≤ week end and ENDDA ≥ week start) and `INACTIVE` != 'X' |
| `Payroll wage lines` (payroll table) | `PERNR, PAY_PERIOD` | Join to payroll by employee + pay period to obtain LGART amounts | Filter on `LGART` in {4901, 49E9, 6A48, 49S9, 6A49, 6017, 9WCM} |
| `ZIM_IN_EPSS_EARN` | `PERNR, INCIDENT, SEQ_NO` | Join on `PERNR, INCIDENT` and date overlaps `BEGDA/ENDDA` | Use for external earnings if payroll wagetype is not the chosen source (TBC) |
| `ZIM_EPSS_WEEK_NO` | `PERNR, INCIDENT, FPPER, WEEK` | Join on `PERNR, INCIDENT` and payroll period/week | Use `NO_WEEKS_USED_P1` for validation only (it is a counter, not a per-week counted flag) |

## Lookups & Code Translations
| Field | Code | Meaning |
|---|---|---|
| Capacity status | `WCMCSTATUS` / `STATUS` | e.g. `Total Incapacity`, `Partial Incapacity`, `PID` (Pre Injury Duties) |
| Claim Type | `CLAIM_TYPE` | `PBRI`, `EPSS`, `Transitioned` |
| Wagetype | `LGART` | Wagetype code values (e.g. `4901`, `49E9`, `6A48`) |

## Outstanding Items [TBC]
| Item | Impact | Owner | Status |
|---|---|---|---|
| Confirm canonical payroll wage table and exact field names for wagetype & amounts (LGART/AMOUNT) | Required to implement SQL extraction | Technical / Payroll | TBC |
| Confirm business definition and formula for `WC Factor` and `EPSS Factor` | Calculation accuracy | Business / Actuarial | TBC |
| Confirm how zero-value P1 weeks with Total Incapacity should appear (explicit flag vs payment=0 + week counted) | Report presentation & filtering | Business | TBC |
| Confirm P3 wagetype and calculation (TBA in BRD) | P3 payments | Business / Payroll | TBC |
| Confirm external earnings wagetype (BRD references 6017) and whether external earnings should source from payroll wagetype vs `ZIM_IN_EPSS_EARN` | Calculation accuracy + implementable mappings | Business / Payroll / Technical | TBC |
| Confirm whether “Claim Number” is always the Workcover claim number (`ZIMLTRVAR.CLAIMNO`) | Column meaning and reconciliation | Business | TBC |

## Open Questions (Business)
| Question | Related Req(s) | Why it matters |
|---|---|---|
| Confirm whether the Payment Date should be `Pay Period End Date` or actual `Date Paid` used by payroll | RPE003 | Affects reconciliation & date-based filters |
| Confirm WC/EPSS factor definitions and whether these are static or derived per week | RPE003 | Impacts calculation columns and traceability |

## Report Column Sequence
| # | Column | Source | Type |
|---|---|---|---|
| 1 | Employee Number | `ZIMLTRVAR.PERNR` | Direct |
| 2 | Employee Name | `ZIMLTRVAR.VORNA/NACHN` | Direct |
| 3 | Incident Number | `ZIMLTRVAR.INCIDENT` | Direct |
| 4 | Claim Number | `ZIMLTRVAR.CLAIMNO` | Direct |
| 5 | Week Start | `Payroll / weekly` | Direct |
| 6 | Week End | `Payroll / weekly` | Direct |
| 7 | Capacity Status | `ZIMLTRVAR.WCMCSTATUS` | Direct |
| 8 | ORP (P1) | `ZIM_IN_PAWE.WKLY_FULL_SAL` / `IT0008` | Direct / Derived |
| 9 | RTW Earnings (9WCM) | `Payroll` (LGART) | Direct |
| 10 | WC Earnings (4901) | `Payroll` (LGART) | Direct |
| 11 | External Earnings (6017) | `Payroll` (LGART) | Direct |
| 12 | P1 Payment (49E9) | `Payroll` (LGART) | Direct |
| 13 | P1 Adjs (6A48) | `Payroll` (LGART) | Direct |
| 14 | P1 Week Counted | `ZIM_EPSS_WEEK_NO` / calc | Direct / Computed |
| 15 | P2 Salary / Payment | `ZIM_IN_PAWE` / payroll | Direct / Computed |
| 16 | P3 Salary / Payment | `TBC` | TBC |

## Notes
- Use `docs/reports/SAP_Fields.md` as the canonical field reference and update this mapping as technical table names are confirmed.  Include sample SQL snippets next to each mapping during implementation.
- Follow the Generic Report Specification Process in `docs/brd.md` and capture any business clarifications in the `Outstanding Items [TBC]` table.
