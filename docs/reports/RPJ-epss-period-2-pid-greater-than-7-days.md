<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPJ -->

# EPSS Period 2 – PID greater than 7 days

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPJ001 | Purpose of this report is to identify officers with a primary WC claim who have reached Period 2 benefits and also have a current WC Certificate of Capacity with the status of fit for Pre Injury Duties which has elapsed a duration of greater than 7 calendar days.  This will allow the EPSS Claims Officer to review the claim and any other open WC claims to assess the eligibility to apply an extension to the Period 2 benefit if they are completely operational to resume their normal duties unrestricted.  The report to also retrieve any entries added to the OLIMS EPSS Period 2 – Return to Duty tab. | M |
| RPJ002 | **Selection Criteria**   * Employee Number * Incident Number * WC Primary Claim * Ability to run the report with no selection criteria to generate results | M |
| RPJ003 | **Report Columns:**   * Employee Number * Employee Name * Incident No. * Claim No. * EPSS Period 2 (flag) * WC Certificate Date From * WC Certificate Status * No. of Days PID * RTD Date From * RTD Date To * RTD Description * Record inactive (flag) * Last Modified By * Last Modified On * Last Modified At | M |
| RPJ004 | The report to be exported from SAP to allow the EPSS Claims officer to analyse the information, the preferred option for the team is as an excel file | M |

## Business Purpose

**Primary Users:** EPSS claims officers and supervisors assessing Period 2 benefit extension eligibility

**Purpose:** This report identifies officers who:
1. Have a primary WC claim and have reached **Period 2 benefits** (75% of pre-injury salary)
2. Hold a current WC Certificate of Capacity with status **"Fit for Pre-Injury Duties" (PID)** that has been active for **> 7 calendar days**

The report enables claims officers to:
- Review eligibility for **Period 2 extension** (if officer is fully capable of returning to normal unrestricted duties)
- Assess any other open WC claims that may impact Period 2 continuation
- Verify Return-to-Duty (RTD) entries recorded in OLIMS EPSS Period 2 RTD tab
- Make data-driven decisions about transitioning officers from Period 2 benefits back to full duties

**Frequency:** Generated on-demand by claims officers when reviewing Period 2 cases for extension eligibility

**Export Format:** Excel (preferred per RPJ004) for offline analysis

**Business Decisions Supported:**
- Confirmation that officer is fully fit for pre-injury duties (PID status > 7 days)
- Decision to extend or cease Period 2 benefits based on capacity evidence
- Validation that OLIMS RTD tab is consistent with WC certificate evidence
- Audit trail for Period 2 eligibility and return-to-duty determinations

## Key Metrics/Columns

**Required Columns (per RPJ003):**
- **Employee Number** – Unique identifier for the injured officer
- **Employee Name** – Full name of the officer
- **Incident Number** – Work-related incident identifier
- **Claim Number** – WC or EPSS claim number
- **EPSS Period 2 (flag)** – Indicator that officer is currently in Period 2 entitlement
- **WC Certificate Date From** – Date the WC Certificate of Capacity commenced
- **WC Certificate Status** – Current capacity status (e.g., "Fit for Pre-Injury Duties", "Partially Incapacitated", etc.)
- **No. of Days PID** – Number of calendar days the "Fit for Pre-Injury Duties" status has been active (must be > 7 days to appear)
- **RTD Date From** – Return-to-Duty start date from OLIMS Period 2 RTD tab
- **RTD Date To** – Return-to-Duty end date from OLIMS Period 2 RTD tab
- **RTD Description** – Notes or description from OLIMS RTD tab entry
- **Record Inactive (flag)** – Indicator if this RTD or certificate record is marked as inactive
- **Last Modified By** – Employee number/name of user who last modified this record
- **Last Modified On** – Date the record was last modified
- **Last Modified At** – Time of last modification (for audit trail)

**Key Metrics/Indicators:**
- **Days PID (Duration Indicator)** – Critical metric; must be > 7 days to indicate Period 2 extension eligibility
- **Period 2 Eligibility Status** – Derived from Days PID > 7 AND Period 2 flag = Active
- **RTD Consistency Flag** – Whether OLIMS RTD tab has corresponding entry for the certificate period

## SAP Field Mappings
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Employee Number | PA0001 | PERNR | CHAR | 8 | Employee Number |
| Employee Name | PA0002 | ENAME | CHAR | 40 | Formatted Employee Name |
| Incident Number | ZIMLTRVAR | INCIDENT | CHAR | 10 | Incident Number |
| Claim Number | ZIMLTRVAR | CLAIMNO | CHAR | 15 | WC or EPSS Claim Number |
| EPSS Period 2 (flag) | [EPSS Status Table – TBC] | [TBC] | CHAR | 1 | Flag indicating Period 2 entitlement active (Y/N) |
| WC Certificate Date From | [WC Certificate Table – TBC] | [TBC] | DATS | 8 | Certificate of Capacity start date |
| WC Certificate Status | [WC Certificate Table – TBC] | [TBC] | CHAR | 60 | Certificate status (e.g., "Fit for Pre-Injury Duties") |
| No. of Days PID | [Calculated] | [Calculated] | NUMC | 3 | Days since certificate marked as PID (calculated) |
| RTD Date From | [OLIMS RTD Tab – TBC] | [TBC] | DATS | 8 | Return-to-Duty start date from OLIMS EPSS Period 2 RTD tab |
| RTD Date To | [OLIMS RTD Tab – TBC] | [TBC] | DATS | 8 | Return-to-Duty end date from OLIMS EPSS Period 2 RTD tab |
| RTD Description | [OLIMS RTD Tab – TBC] | [TBC] | CHAR | 500 | Return-to-Duty description or notes from OLIMS |
| Record Inactive (flag) | [OLIMS RTD Tab – TBC] | [TBC] | CHAR | 1 | Flag indicating if RTD/certificate record is inactive (Y/N) |
| Last Modified By | [OLIMS RTD Tab – TBC] | [TBC] | CHAR | 8 | Employee number of user who last modified |
| Last Modified On | [OLIMS RTD Tab – TBC] | [TBC] | DATS | 8 | Date of last modification |
| Last Modified At | [OLIMS RTD Tab – TBC] | [TBC] | TIME | 6 | Time of last modification (HHMISS) |

## Selection Criteria & Filters
| Filter | Type | Options | SAP Source |
|---|---|---|---|
| Employee Number | Range (Optional) | Single or range of personnel numbers; optional per RPJ002 | PA0001.PERNR |
| Incident Number | Range (Optional) | Single or range of incident numbers; optional per RPJ002 | ZIMLTRVAR.INCIDENT |
| WC Primary Claim | Filter (Optional) | Include only primary WC claims (filter out secondary claims if applicable); optional per RPJ002 | ZIMLTRVAR.CLAIMNO / Claim Type |
| Period 2 Active Only | Checkbox | Include only officers currently in Period 2 entitlement (default: checked) | [EPSS Status Table] |
| PID Days Threshold | Numeric (Default: > 7) | Minimum number of days in PID status; default 7 per RPJ001 | [Calculated] |
| Certificate Status | Dropdown (Multi-select) | "Fit for Pre-Injury Duties", "Partially Incapacitated", "Totally Incapacitated", or All | [WC Certificate Table] |
| Include Inactive Records | Checkbox | Include records marked as inactive (default: unchecked) | [OLIMS RTD Tab] |
| Run without Criteria | Checkbox | Allow running report with no selection criteria to generate all results per RPJ002 | [All Tables] |

## Data Relationships
| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| PA0001 | MANDT, PERNR | Employee master base table | Retrieve active/inactive employees |
| PA0002 | MANDT, PERNR, INFTY, SUBTY, OBJECTID, BEGDA | Employee names and personal data | Join to PA0001 on PERNR; filter on BEGDA/ENDDA for current period |
| ZIMLTRVAR | PERNR, INCIDENT | EPSS incident and claim data | Join to PA0001 on PERNR; filter by claim type (primary WC) |
| [EPSS Status Table – TBC] | PERNR, INCIDENT, Period_Date | Period 2 eligibility status | Join to ZIMLTRVAR on PERNR/INCIDENT; identify if Period 2 active (flag) |
| [WC Certificate Table – TBC] | [TBC] | WC Certificate of Capacity records | Join to ZIMLTRVAR on CLAIMNO or INCIDENT; retrieve certificate status and dates; filter where status = "PID" AND date range > 7 days |
| [OLIMS RTD Tab – TBC] | [TBC] | Return-to-Duty records from OLIMS EPSS Period 2 RTD tab | Join to ZIMLTRVAR on INCIDENT/claim or PERNR; retrieve RTD dates, description, modification audit fields |

## Calculated Fields
| Field | Formula | Source Fields |
|---|---|---|
| No. of Days PID | DATEDIFF(DAY, Certificate_Status_Date, TODAY()) | WC Certificate status date, Current date |
| PID Status Flag | IF(Certificate_Status = 'Fit for Pre-Injury Duties') THEN 'Y' ELSE 'N' END | WC Certificate Status |
| Period 2 Extension Eligible | IF(EPSS_Period2_Flag = 'Y' AND Days_PID > 7 AND Claim_Status = 'Active') THEN 'Eligible' ELSE 'Not Eligible' END | Period 2 flag, Days PID, Claim Status |
| RTD Consistency | IF([RTD record exists for certificate date range]) THEN 'Consistent' ELSE 'Missing RTD Entry' END | WC Certificate dates, RTD Tab dates |
| Record Status | IF(Record_Inactive_Flag = 'Y') THEN 'Inactive' ELSE 'Active' END | Record Inactive flag |
| Days Since Last Modified | DATEDIFF(DAY, Last_Modified_On, TODAY()) | Last Modified On date, Current date |

## Lookups & Code Translations
| Field | Code | Meaning |
|---|---|---|
| WC Certificate Status | PID | Fit for Pre-Injury Duties – Officer is fully capable of resuming original duties |
| WC Certificate Status | PI | Partially Incapacitated – Officer can perform modified duties |
| WC Certificate Status | TI | Totally Incapacitated – Officer unable to perform any work |
| WC Certificate Status | CUP | Capacity under Review / Pending – Certificate status pending determination |
| EPSS Period 2 Flag | Y | Yes – Officer is currently in Period 2 benefit entitlement |
| EPSS Period 2 Flag | N | No – Officer is not in Period 2 entitlement (may be in Period 1 or discharged) |
| Record Inactive Flag | Y | Yes – RTD record or certificate is marked inactive (historical/superseded) |
| Record Inactive Flag | N | No – Record is active (current) |
| Period 2 Extension Eligible | Eligible | Officer meets criteria for Period 2 extension consideration (PID > 7 days + Period 2 active) |
| Period 2 Extension Eligible | Not Eligible | Officer does not meet extension criteria (PID < 7 days, Period 2 not active, or claim not active) |
| RTD Consistency | Consistent | OLIMS RTD tab contains matching entry for certificate period |
| RTD Consistency | Missing RTD Entry | No RTD record in OLIMS for the certificate date range |

## Outstanding Items [TBC]
| Item | Impact | Owner | Status |
|---|---|---|---|
| Confirm WC Certificate of Capacity table structure | Data mapping: identify exact SAP/OLIMS table that stores certificate records, status codes, and date ranges | SAP Basis / OLIMS Admin | Pending |
| Confirm EPSS Period 2 status tracking table | Data mapping: identify which table/field stores Period 2 eligibility flag and how it is determined/updated | Business Analyst / EPSS Team | Pending |
| Confirm OLIMS EPSS Period 2 RTD tab structure | Data mapping: identify OLIMS table(s) for Return-to-Duty records, including RTD date range, description, and inactive flag fields | OLIMS Admin / Database Analyst | Pending |
| Confirm audit trail fields (Last Modified By/On/At) | Data mapping: verify which table stores modification timestamps and user information for audit purposes; confirm timestamp precision (date vs. date+time) | OLIMS Admin / Database Analyst | Pending |
| Define Period 2 extension eligibility logic | Business rules: clarify any additional conditions beyond PID > 7 days (e.g., all open WC claims closed, physician clearance, etc.) | EPSS Team / Legal | Pending |
| Confirm "no selection criteria" capability | Technical implementation: confirm system can execute report without any filters to generate all Period 2 PID > 7 days records per RPJ002 | BI / Application Development | Pending |
| Define RTD consistency validation logic | Business rules: clarify expectations for matching WC certificate dates to OLIMS RTD entries (exact match, overlapping range, etc.) | EPSS Team / Business Analyst | Pending |
| Confirm Excel export mechanism (RPJ004) | Technical implementation: specify if export is built into reporting tool or requires custom extraction | BI / Application Development | Pending |

## Open Questions (Business)
| Question | Related Req(s) | Why it matters |
|---|---|---|
| What is the exact SAP/OLIMS table structure for WC Certificates of Capacity? | RPJ003 | Must identify correct source for certificate status and date ranges; without this, report cannot be built |
| How is the EPSS Period 2 status tracked and determined – is it a flag in a table or calculated from claim dates? | RPJ003 | Affects data source and filtering logic; determines whether Period 2 flag is pre-calculated or derived in report |
| Where are OLIMS EPSS Period 2 RTD tab entries stored, and what is the exact table structure? | RPJ001, RPJ003 | Critical to retrieve RTD dates, description, and modification audit fields; missing this data blocks report completion |
| What constitutes "fit for Pre-Injury Duties" status – is it a single status code or derived from multiple capacity indicators? | RPJ001 | Affects filtering logic; determines which certificate records qualify for the > 7 days calculation |
| Beyond PID > 7 days and Period 2 active, are there other criteria for Period 2 extension eligibility (e.g., all WC claims resolved, no restrictions, physician approval)? | RPJ001 | Determines whether additional business rules/calculations need to be embedded in the report |
| Should the report show only the most recent WC Certificate for each officer, or all certificates within a date range? | RPJ001 | Affects data grouping and relevance; historical certificates may clutter the report or provide audit trail |
| How should the report handle officers with multiple open WC claims – show one row per claim or consolidated view? | RPJ001 | Affects report structure and user experience; may require sub-grouping or separate tabs |
| Is the modification timestamp (Last Modified At) captured automatically by OLIMS, or manually entered? | RPJ003 | Affects data quality; automatic timestamps are more reliable than manual entry |
| Can officers be in Period 2 and hold a PID certificate simultaneously, or are these mutually exclusive states? | RPJ001 | Affects business logic; determines whether certain data combinations are valid or indicate data issues |
| Should the report flag RTD consistency issues (missing OLIMS entries) as warnings, or just show empty RTD columns for context? | RPJ001 | Affects usability; explicit flagging helps claims officers identify data gaps that may need investigation |

## Report Column Sequence
| # | Column | Source | Type |
|---|---|---|---|
| 1 | Employee Number | PA0001.PERNR | CHAR(8) |
| 2 | Employee Name | PA0002.ENAME | CHAR(40) |
| 3 | Incident Number | ZIMLTRVAR.INCIDENT | CHAR(10) |
| 4 | Claim Number | ZIMLTRVAR.CLAIMNO | CHAR(15) |
| 5 | EPSS Period 2 (flag) | [EPSS Status Table].Period2_Flag | CHAR(1) |
| 6 | WC Certificate Date From | [WC Certificate Table].Cert_Start_Date | DATS |
| 7 | WC Certificate Status | [WC Certificate Table].Cert_Status | CHAR(60) |
| 8 | No. of Days PID | [Calculated] | NUMC(3) |
| 9 | RTD Date From | [OLIMS RTD Tab].RTD_Start_Date | DATS |
| 10 | RTD Date To | [OLIMS RTD Tab].RTD_End_Date | DATS |
| 11 | RTD Description | [OLIMS RTD Tab].RTD_Description | CHAR(500) |
| 12 | Record Inactive (flag) | [OLIMS RTD Tab].Inactive_Flag | CHAR(1) |
| 13 | Last Modified By | [OLIMS RTD Tab].Modified_By_ID | CHAR(8) |
| 14 | Last Modified On | [OLIMS RTD Tab].Modified_Date | DATS |
| 15 | Last Modified At | [OLIMS RTD Tab].Modified_Time | TIME |

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.

