<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPF -->

# Period 1 utilisation summary

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPF001 | A claims officer will be required to fill in an attachment to a Period 2 transition letter that contains a week-by-week breakdown of Period 1 utilisation | M |
| RPF002 | **Selection Criteria:**   * Employee Number * Incident Number * Date From * Date To | M |
| RPF003 | **Report Columns:**   * Employee Number * Incident Number * Claim Number * Date From * End To * Week Count * Capacity   + Total Incapacity, Partial Incapacity or No Incapacity * Counted/Not Counted * EPSS Supplementary Support Payment made   + Yes or No * EPSS Payment Received | M |
| RPF004 | The document “Attachment-EPSS Period 1 Summary”, to be uploaded into OLIMS and this report to populate the data in the table | M |

Below is an example of the attachment template

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Date from | Date to | Week count | Capacity | Counted/Not Counted | EPSS Supplementary Support Payment made Yes/No |
| DD Month YYYYY | DD Month YYYY | 1 | Partial incapacity | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |

## Business Purpose

**Primary Users:** Claims officers preparing Period 2 transition letters for injured workers

**Purpose:** This report provides a week-by-week breakdown of Period 1 utilisation for injured workers transitioning from Period 1 (26 weeks) to Period 2 (ongoing) under the EPSS (Employment Protection and Support Scheme). The summary quantifies:
- Weekly capacity status (Total Incapacity, Partial Incapacity, No Incapacity)
- Whether weeks were counted under the EPSS entitlement ("Counted/Not Counted")
- EPSS Supplementary Support Payment eligibility and payment status

**Frequency:** Generated on an ad-hoc basis by claims officers when processing Period 2 transitions (typically after Week 26 of Period 1 commences)

**Business Decisions Supported:**
- Confirmation of Period 1 week count eligibility for calculating remaining entitlements
- Verification that EPSS payments align with capacity status and week-counting rules
- Documentation for the attachment to the Period 2 transition letter ("Attachment-EPSS Period 1 Summary") uploaded to OLIMS
- Audit trail for claims processing and payment justification

## Key Metrics/Columns

**Primary Columns:**
- **Employee Number** – Unique identifier for the injured worker
- **Incident Number** – Unique identifier for the work-related incident
- **Claim Number** – Workcover claim number
- **Date From / Date To** – Weekly date range for the utilisation period
- **Week Count** – Sequential week number (1–26) in Period 1

**KPIs/Status Indicators:**
- **Capacity** – Work capacity during the week:
  - Total Incapacity (unable to work)
  - Partial Incapacity (reduced work capacity)
  - No Incapacity (full work capacity)
- **Counted/Not Counted** – Whether the week counts toward the 26-week EPSS entitlement period
- **EPSS Supplementary Support Payment Made** – Yes/No indicator of payment during that week
- **EPSS Payment Received** – Amount or summary of payments received (if applicable)

## SAP Field Mappings
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Employee Number | ZIMLTRVAR | PERNR | CHAR | 8 | Employee Number |
| Incident Number | ZIMLTRVAR | INCIDENT | CHAR | 10 | Incident Number |
| Claim Number | ZIMLTRVAR | CLAIMNO | CHAR | 15 | Workcover Claim Number |
| Date From | Calculated | n/a | DATS | 8 | Start date of the week row (week boundary definition TBC: calendar week vs rolling 7-day) |
| Date To | Calculated | n/a | DATS | 8 | End date of the week row (week boundary definition TBC: calendar week vs rolling 7-day) |
| Week Count | [Calculated] | [Calculated] | NUMC | 2 | Sequential week number (1–26) |
| Capacity | ZIM_IN_CERT | STATUS | CHAR | 2 | Certificate status code applicable for the week (mapping to Total/Partial/No Incapacity is TBC) |
| Counted/Not Counted | Calculated | n/a | CHAR | 12 | Indicates whether the week counts toward Period 1 utilisation (business rules TBC) |
| EPSS Supplementary Support Payment Made | Calculated | n/a | CHAR | 3 | Yes/No derived from whether EPSS payment amount for the week is > 0 (payment source table TBC) |
| EPSS Payment Received | Calculated | n/a | CURR | 13 | EPSS payment amount received for the week (payment source table + wagetypes TBC) |

## Selection Criteria & Filters
| Filter | Type | Options | SAP Source |
|---|---|---|---|
| Employee Number | Range | Single or range of personnel numbers | ZIMLTRVAR.PERNR |
| Incident Number | Range | Single or range of incident numbers | ZIMLTRVAR.INCIDENT |
| Date From | Date | Period 1 utilisation start date (required) | User input |
| Date To | Date | Period 1 utilisation end date (required) | User input |

Optional (enhancement) filters:

| Filter | Type | Options | SAP Source |
|---|---|---|---|
| Capacity | Dropdown (Multi-select) | Total Incapacity, Partial Incapacity, No Incapacity | ZIM_IN_CERT.STATUS (mapped) |
| Counted/Not Counted | Dropdown | Counted, Not Counted, All | Calculated |
| EPSS Payment Made | Dropdown | Yes, No, All | Calculated |

## Data Relationships
| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| ZIMLTRVAR | PERNR, INCIDENT | Base table for Period 1 utilisation data | Filter by PERNR and/or INCIDENT from user selection |
| ZIM_IN_CERT | MANDT, PERNR, INCIDENT, SEQ_NO | Join to ZIMLTRVAR on PERNR + INCIDENT | Pick certificate record overlapping the week (DATE_FROM ≤ week end AND DATE_TO ≥ week start) and INACTIVE != 'X'; tie-break by latest SEQ_NO |
| Payroll wage lines (TBC) | TBC | Join to ZIMLTRVAR on PERNR (and incident if available) plus week/pay-period | Used to derive “EPSS Supplementary Support Payment Made” and “EPSS Payment Received”; wagetype list/source TBC |
| ZIM_EPSS_WEEK_NO | MANDT, PERNR, INCIDENT, FPPER, WEEK | Join to ZIMLTRVAR on PERNR + INCIDENT | Use NO_WEEKS_USED_P1 for validation / reconciliation; not a per-week counted flag by itself |

## Calculated Fields
| Field | Formula | Source Fields |
|---|---|---|
| Date From / Date To | Generate week rows between user-selected Date From/To using the agreed week boundary (calendar week vs rolling 7-day) | User input Date From/To |
| Week Count | Sequential numbering of generated week rows (1..N) within the selected Date From/To range | Generated week rows |
| Capacity | Determine capacity classification for the week from certificate(s) overlapping the week (mapping from ZIM_IN_CERT.STATUS to Total/Partial/No Incapacity is TBC) | ZIM_IN_CERT.DATE_FROM, ZIM_IN_CERT.DATE_TO, ZIM_IN_CERT.STATUS |
| Counted/Not Counted | Apply Period 1 week counting business rules to the week row (TBC); must support “counted even when payment is zero” scenarios where applicable | Capacity, EPSS payments, week date range |
| EPSS Supplementary Support Payment Made | Yes when EPSS payment amount for the week is > 0 (wagetypes/source TBC) | Payroll wage lines (TBC) |
| EPSS Payment Received | Sum of EPSS payment wage types for that week (source + wagetypes TBC) | Payroll wage lines (TBC) |

## Lookups & Code Translations
| Field | Code | Meaning |
|---|---|---|
| Capacity | (various) | Certificate status codes to be translated into report values: Total Incapacity / Partial Incapacity / No Incapacity (mapping TBC) |
| EPSS Payment Made | Yes/No | Derived from EPSS Payment Received amount for the week |
| Counted/Not Counted | Counted/Not Counted | Derived from Period 1 week counting rules (TBC) |

## Outstanding Items [TBC]
| Outstanding Item | Impact | Priority | Owner | Status |
|---|---|---|---|---|
| Confirm how to build week rows (calendar week vs rolling 7-day) | Drives Date From/To generation and Week Count | MUST | Business | TBC |
| Confirm certificate status mapping to Capacity (Total/Partial/No Incapacity) | Drives Capacity column values | MUST | Business | TBC |
| Confirm source of EPSS payment amounts per week (payroll wage table + incident linkage) | Needed for “Payment Made” and “Payment Received” | MUST | Payroll/Technical | TBC |
| Confirm which wage types constitute “EPSS Supplementary Support Payment” for Period 1 | Needed to compute payment amount and Yes/No flag | MUST | Business/Payroll | TBC |
| Define Counted/Not Counted business rules (including mid-week changes) | Drives entitlement utilisation in the attachment | MUST | Business | TBC |
| Confirm whether Date From/To selection must be constrained to Period 1 (first 26 weeks) | Controls allowable input range and validations | SHOULD | Business | TBC |

## Open Questions (Business)
| Question | Related Req(s) | Why it matters |
|---|---|---|
| What are the business rules to translate certificate status/capacity into Capacity = Total/Partial/No Incapacity? | RPF003 | Ensures the attachment uses the same capacity labels the claims team expects |
| Should week rows be calendar-aligned (e.g., Mon–Sun) or rolling 7-day periods from the selected Date From? | RPF002/RPF003 | Determines Date From/To per row and Week Count numbering |
| Should the report show "Week Count" as a sequential number (1–26) or as an absolute date range? | RPF003 | Affects how claims officers understand which week in Period 1 is being summarized; impacts clarity of the attachment |
| When a week-counting rule applies mid-week (e.g., approval changes on Day 4 of Week 5), how is that week marked in the report? | RPF002/RPF003 | Determines whether the week counts toward entitlement and how the attachment is completed |
| Are there any exceptions to the "Counted/Not Counted" rule (e.g., specific scenarios that are always Not Counted)? | RPF003 | Avoids incorrect entitlement utilisation being communicated to the worker |
| Is the "EPSS Payment Received" field meant to be a Yes/No flag or a currency amount? | RPF003 | Affects data type and column width; impacts usability of the attachment |

## Report Column Sequence
| # | Column | Source | Type |
|---|---|---|---|
| 1 | Employee Number | ZIMLTRVAR.PERNR | CHAR(8) |
| 2 | Incident Number | ZIMLTRVAR.INCIDENT | CHAR(10) |
| 3 | Claim Number | ZIMLTRVAR.CLAIMNO | CHAR(15) |
| 4 | Date From | [Calculated] | DATS |
| 5 | Date To | [Calculated] | DATS |
| 6 | Week Count | [Calculated] | NUMC(2) |
| 7 | Capacity | ZIM_IN_CERT.STATUS (mapped) | Text | Mapping TBC |
| 8 | Counted/Not Counted | [Calculated] | Text | Rules TBC |
| 9 | EPSS Supplementary Support Payment Made | [Calculated] | Text | Derived from payment amount |
| 10 | EPSS Payment Received | [Calculated] | CURR | Wagetypes/source TBC |

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.
