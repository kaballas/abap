<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPG -->

# EPSS Outbound Leave Report

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPG001 | This report is utilised to identify possible officers who are on long term non work related absence who may be eligible to submit a claim for off duty income protection. The current report can be optimised to streamline additional data collection and analysis activities completed by a claims officer. Utilise the PBRI Outbound Leave report as the basis for the new report | M |
| RPG002 | Report to be made available in the EPSS Reporting folder | M |
| RPG003 | Utilise the current report made available but add two columns after the leave type text column:   * Leave Reason Code * Leave Reason Text | M |

## Business Purpose

**Primary Users:** EPSS claims officers and supervisors processing off-duty income protection claims

**Purpose:** This report identifies officers on long-term non-work-related absence who may be eligible to submit a claim for off-duty income protection (ODP). The report:
- Lists employees with extended outbound leave periods
- Enriches existing PBRI Outbound Leave report data with Leave Reason Code and Leave Reason Text (new columns)
- Streamlines identification and analysis of potential off-duty income protection claimants
- Reduces manual data collection effort by claims officers

**Source:** Based on the PBRI (Personnel and Payroll Resource Information) Outbound Leave report

**Frequency:** Generated on a regular basis (frequency TBC) to identify new or ongoing leave absences that may trigger off-duty income protection eligibility

**Business Decisions Supported:**
- Identification of officers eligible for off-duty income protection claim submission
- Prioritization of claims based on leave reason and duration
- Validation that leave is non-work-related before processing ODP claim
- Audit trail for off-duty claim eligibility assessments

## Key Metrics/Columns

**Primary Columns (from PBRI Outbound Leave Report):**
- **Employee Number** – Unique identifier for the employee
- **Employee Name** – Full name of the employee
- **Incident Number** – Work-related incident number (if applicable)
- **Claim Number** – Workcover or EPSS claim number (if applicable)
- **Leave Start Date** – Date leave commenced
- **Leave End Date** – Date leave is scheduled to end (or blank if ongoing)
- **Leave Type** – Classification of leave (e.g., Personal Leave, Sick Leave, Unpaid Leave, etc.)
- **Leave Duration (Days)** – Calculated number of days on leave

**New Columns (RPG Enhancement):**
- **Leave Reason Code** – System code for the leave reason (new – added per RPG003)
- **Leave Reason Text** – Business description of leave reason (new – added per RPG003)

**Key Metrics/Indicators:**
- **Total Days on Leave** – Duration indicator to identify long-term absence
- **Leave Type Classification** – Filter for non-work-related leave only
- **ODP Eligibility Flag** – Indicator if employee may be eligible for off-duty income protection claim

## SAP Field Mappings
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Employee Number | PA0001 (or PBRI) | PERNR | CHAR | 8 | Employee Number |
| Employee Name | PA0002 (or PBRI) | ENAME | CHAR | 40 | Employee Name (formatted) |
| Incident Number | [PBRI or Custom] | INCIDENT | CHAR | 10 | Work-related incident number |
| Claim Number | [PBRI or Custom] | CLAIMNO | CHAR | 15 | Workcover/EPSS Claim Number |
| Leave Start Date | PA2001 (or PBRI) | BEGDA | DATS | 8 | Leave start date |
| Leave End Date | PA2001 (or PBRI) | ENDDA | DATS | 8 | Leave end date |
| Leave Type | PA2001 (or PBRI) | ABSTY | CHAR | 2 | Absence type code |
| Leave Type Text | T549T (or PBRI) | STEXT | CHAR | 40 | Absence type description |
| Leave Duration (Days) | [Calculated] | [Calculated] | NUMC | 4 | Number of days on leave |
| Leave Reason Code | [TBC] | [TBC] | CHAR | 4 | Leave reason code (new – RPG003) |
| Leave Reason Text | [TBC] | [TBC] | CHAR | 60 | Leave reason description (new – RPG003) |

## Selection Criteria & Filters
| Filter | Type | Options | SAP Source |
|---|---|---|---|
| Employee Number | Range | Single or range of personnel numbers | PA0001.PERNR |
| Leave Start Date | Date Range | Date from / Date to (required) | PA2001.BEGDA |
| Leave End Date | Date Range | Date from / Date to (optional) | PA2001.ENDDA |
| Leave Type | Dropdown (Multi-select) | All leave types, or specific types (e.g., Personal, Sick, Unpaid) | PA2001.ABSTY |
| Leave Duration (Minimum Days) | Numeric | Minimum number of days to filter long-term absences (e.g., > 14 days) | [Calculated] |
| Leave Reason | Dropdown (Multi-select) | All reasons or specific non-work-related reasons | [TBC] |
| Include Ongoing Leave | Checkbox | Y/N – Include absences without end dates | PA2001.ENDDA |
| Status | Dropdown | Active Leaves, Ended Leaves, All | [TBC] |

## Data Relationships
| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| PA0001 | MANDT, PERNR | Base table for employee master data | Retrieve active/inactive employee numbers |
| PA0002 | MANDT, PERNR, INFTY, SUBTY, OBJECTID, BEGDA | Employee name and personal data | Join to PA0001 on PERNR; filter on BEGDA/ENDDA |
| PA2001 | MANDT, PERNR, INFTY, SUBTY, OBJECTID, BEGDA | Leave/absence records (PBRI source) | Join to PA0001 on PERNR; filter by leave date range and type |
| T549T (or SAP Leave Reason Master) | MANDT, SPRSL, ABSTY, STEXT | Leave type descriptions | Join to PA2001 on ABSTY; retrieve leave type text |
| [Leave Reason Master – TBC] | [TBC] | Leave reason codes and descriptions (new for RPG003) | Join to PA2001 or [TBC] on Leave Reason Code; retrieve reason text |
| [PBRI Custom Extension – TBC] | [TBC] | Extended PBRI data (incident, claim numbers, ODP flags) | Join to PA2001 on PERNR/leave dates; retrieve incident, claim, eligibility data |

## Calculated Fields
| Field | Formula | Source Fields |
|---|---|---|
| Leave Duration (Days) | DATEDIFF(DAY, Leave_Start_Date, COALESCE(Leave_End_Date, TODAY())) | Leave Start Date, Leave End Date |
| Days on Leave (Current) | DATEDIFF(DAY, Leave_Start_Date, TODAY()) | Leave Start Date, Current Date |
| Leave Status | CASE WHEN ENDDA IS NULL OR ENDDA >= TODAY() THEN 'Ongoing' ELSE 'Ended' END | Leave End Date, Current Date |
| ODP Eligibility Flag | IF(Leave_Type IN ('Non-work-related') AND Days_on_Leave >= [Threshold] AND [ODP_Criteria_Met]) THEN 'Eligible' ELSE 'Not Eligible' END | Leave Type, Leave Duration, Leave Reason |
| Is Long-Term Absence | IF(Leave_Duration_Days >= 14) THEN 'Yes' ELSE 'No' END | Leave Duration |

## Lookups & Code Translations
| Field | Code | Meaning |
|---|---|---|
| Leave Type | AL | Annual Leave |
| Leave Type | SL | Sick Leave |
| Leave Type | PL | Personal Leave |
| Leave Type | UL | Unpaid Leave |
| Leave Type | CTR | Carer's Leave / Family Leave |
| Leave Type | OTH | Other Leave |
| Leave Reason | [TBC] | [TBC – Requires business definition of leave reason codes] |
| Leave Status | Ongoing | Leave end date is in future or not set |
| Leave Status | Ended | Leave end date is in the past |
| ODP Eligibility | Eligible | Employee meets criteria for off-duty income protection claim |
| ODP Eligibility | Not Eligible | Employee does not meet ODP criteria |

## Outstanding Items [TBC]
| Item | Impact | Owner | Status |
|---|---|---|---|
| Confirm PBRI Outbound Leave report source structure | Data mapping: identify exact PBRI table/view name and field names; clarify if it's a standard SAP PBRI or custom extension | SAP Basis / BI Team | Pending |
| Confirm Leave Reason Code/Text source | Data mapping: identify which SAP table stores leave reason codes and descriptions (PA2001, custom table, or PBRI extension) | HR / Business Analyst | Pending |
| Define ODP eligibility criteria threshold | Business rules: confirm minimum leave duration, acceptable leave types, and reason codes that trigger ODP eligibility | EPSS Team / Legal | Pending |
| Confirm report frequency and scheduling | Operations: determine how often report should run (daily, weekly, ad-hoc) and where it should be deployed in EPSS Reporting folder | EPSS Team / SAP Basis | Pending |
| Clarify handling of employees with multiple simultaneous leaves | Data logic: confirm whether report shows all leaves separately or consolidates overlapping leave periods | Business Analyst | Pending |

## Open Questions (Business)
| Question | Related Req(s) | Why it matters |
|---|---|---|
| What is the exact definition and structure of the "PBRI Outbound Leave report"? | RPG001 | Must identify the correct source (standard SAP PBRI, custom view, or BW cube) before building SQL; unclear source blocks report development |
| Where should Leave Reason Code and Text be sourced from? | RPG003 | Critical to add the two new columns; without identifying the source table, these fields cannot be populated |
| What constitutes "long-term non-work-related absence" for ODP eligibility? | RPG001 | Determines which employees are identified; impacts filtering and selection logic; needs business definition |
| Should the report show all leave types or only non-work-related leaves? | RPG001 | Affects scope and relevance of report; ODP is typically for non-work-related absences (e.g., personal health, family matters) |
| How should ongoing leaves (without end dates) be handled in the report? | RPG001 | Affects data interpretation; impacts whether EPSS team should follow up on indefinite absences |
| Are there specific leave reason codes that automatically qualify or disqualify for ODP? | RPG001 | May simplify claims officer workflow; requires definition of approved/rejected reason codes |
| Should the report include a calculated field showing days since leave commenced? | RPG001 | Helps claims officers prioritize claims based on duration; supports audit trail for ODP eligibility assessment |

## Report Column Sequence
| # | Column | Source | Type |
|---|---|---|---|
| 1 | Employee Number | PA0001.PERNR | CHAR(8) |
| 2 | Employee Name | PA0002.ENAME | CHAR(40) |
| 3 | Leave Start Date | PA2001.BEGDA | DATS |
| 4 | Leave End Date | PA2001.ENDDA | DATS |
| 5 | Leave Type | PA2001.ABSTY | CHAR(2) |
| 6 | Leave Type Text | T549T.STEXT | CHAR(40) |
| 7 | Leave Reason Code | [TBC] | CHAR(4) |
| 8 | Leave Reason Text | [TBC] | CHAR(60) |
| 9 | Leave Duration (Days) | [Calculated] | NUMC(4) |
| 10 | Days on Leave (Current) | [Calculated] | NUMC(4) |
| 11 | Leave Status | [Calculated] | CHAR(10) |
| 12 | Incident Number | [PBRI/Custom] | CHAR(10) |
| 13 | Claim Number | [PBRI/Custom] | CHAR(15) |
| 14 | ODP Eligibility Flag | [Calculated] | CHAR(15) |

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.

