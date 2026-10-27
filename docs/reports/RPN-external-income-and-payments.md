<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPN -->

# External Income and Payments

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPN001 | The purpose of this report is to produce the details of income and payments entered in the OLIMS ‘External Income/Payments’ tab for analysis and reporting activities | M |
| RPN002 | Selection Criteria:   * Employee No * Incident No * Records Active / Inactive / Both (ability to select one or all) * Date From * Date To | M |
| RPN003 | Column Headers:   * Employee No. * Incident No. * Claim No. * Earning Type * Earning Category * Date From * Date To * Amount * Frequency (e.g. weekly, fortnightly, monthly, lump) * Description * Document Uploaded (Flag) * Document Count (e.g. count the number of docs uploaded) * Earning Inactive (flag) * Last Modified By * Last Modified On * Last Modified At * EPSS Claims Advisor * EPSS Supervisor | M |
| RPN004 | For every record created to be displayed as an individual line item | M |
| RPN005 | The report to be exported from SAP to allow the EPSS Claims officer to analyse the information, the preferred option for the team is as an excel file | M |

## Business Purpose

**Users:** EPSS Claims Officers, EPSS Supervisors, Managers, Finance teams

**Frequency:** On-demand, weekly/monthly reviews

**Business Use:**
RPN provides detailed visibility of all external income and payments entered by claims officers in the OLIMS 'External Income/Payments' tab. External income/payments offset EPSS calculations:
- Other employment income (PAYG wages from secondary employment)
- Lump sum payments (redundancy, termination pay, settlements)
- Rental income
- Investment income
- Superannuation/pension withdrawals
- Workers Compensation payments
- Other government benefits

These entries are used to:
- Reduce EPSS payment entitlements (per EPSS offset policy)
- Calculate net benefit payable to officers
- Support compliance with income reconciliation requirements
- Audit earnings during benefit receipt period

**Key Business Decisions:**
- Verify accuracy of income offsets applied to claims
- Monitor compliance with income disclosure requirements
- Identify trends in external income types
- Support quarterly/annual external income reviews (per OLIMS tasks)
- Audit trail of income entries and document evidence

## Key Metrics/Columns

**Primary Columns:** 17 columns per RPN003
1. Employee No (officer receiving EPSS benefits)
2. Incident No (identifies the injury incident)
3. Claim No (WC or EPSS claim)
4. Earning Type (type of income/payment code)
5. Earning Category (income or payment – per OLE003)
6. Date From (when income started)
7. Date To (when income ended/ceased)
8. Amount (total amount or weekly/fortnightly amount per frequency)
9. Frequency (weekly, fortnightly, monthly, lump sum)
10. Description (free-text description)
11. Document Uploaded (Flag: Y/N – supporting evidence attached)
12. Document Count (number of documents uploaded)
13. Earning Inactive (Flag: Y/N – entry marked inactive per OLE010)
14. Last Modified By (claims officer who created/updated entry)
15. Last Modified On (date of last modification)
16. Last Modified At (timestamp of last modification)
17. EPSS Claims Advisor (claims officer responsible for claim)
18. EPSS Supervisor (supervisor responsible for case)

## SAP Field Mappings

| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Employee No | OLIMS | employee_number | Char | 8 | Police officer registration number |
| Incident No | OLIMS | incident_number | Char | 10 | WC incident identifier |
| Claim No | OLIMS | claim_number | Char | 20 | WC or EPSS claim number |
| Earning Type | OLIMS | earning_type | Char | 20 | Type code (e.g., PAYG, Lump Sum, Rental, etc.) [TBC] |
| Earning Category | OLIMS | earning_category | Char | 10 | "Income" or "Payment" per OLE003, OLE004, OLE005 |
| Date From | OLIMS | earning_date_from | Date | - | Start date of income/payment |
| Date To | OLIMS | earning_date_to | Date | - | End date of income/payment |
| Amount | OLIMS | earning_amount | Num | 10,2 | Dollar amount (AUD) |
| Frequency | OLIMS | earning_frequency | Char | 20 | weekly / fortnightly / monthly / lump sum [TBC] |
| Description | OLIMS | earning_description | Varchar | 500 | Free-text description of income source |
| Document Uploaded | OLIMS | document_uploaded_flag | Char | 1 | Y/N – supporting evidence attached per OLE002 |
| Document Count | OLIMS | document_count | Num | 3 | Count of documents uploaded (aggregate from documents table) |
| Earning Inactive | OLIMS | earning_inactive_flag | Char | 1 | Y/N – entry marked inactive per OLE010 |
| Last Modified By | OLIMS | last_modified_by | Char | 20 | Claims officer who created/updated entry [TBC] |
| Last Modified On | OLIMS | last_modified_date | Date | - | Date of last modification [TBC] |
| Last Modified At | OLIMS | last_modified_timestamp | Timestamp | - | Timestamp of last modification [TBC] |
| EPSS Claims Advisor | OLIMS | claims_advisor_id | Char | 8 | Claims officer assigned to claim [TBC] |
| EPSS Supervisor | OLIMS | supervisor_id | Char | 8 | Supervisor responsible for case [TBC] |

## Selection Criteria & Filters

| Filter | Type | Options | SAP Source | Notes |
|---|---|---|---|---|
| Employee No | **Text** | Single or multiple employee numbers | OLIMS employee_number | Optional per RPN002; wildcard for partial matches |
| Incident No | **Text** | Single or multiple incident numbers | OLIMS incident_number | Optional per RPN002 |
| Records Status | **Dropdown** | Active / Inactive / Both | OLIMS earning_inactive_flag | Per RPN002: filter by active, inactive, or all records |
| Date From | **Date** | Date range (From Date, To Date) | OLIMS earning_date_from | Filter by income start date |
| Date To | **Date** | Date range (From Date, To Date) | OLIMS earning_date_to | Filter by income end date |
| No Criteria | **Option** | Allow blank criteria (return all) | OLIMS | Per RPN002: when no filters entered, return all records |

**Filter Logic:** AND logic across selected criteria. If all criteria blank, return all active records (Earning Inactive = N by default).

## Data Relationships

| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| OLIMS External Income/Payments Tab | incident_number + earning_id | 1:Many; multiple earnings records per incident | Filter by employee_number, incident_number, date ranges, active/inactive status |
| OLIMS Incident | incident_number | Join to get claim_number, employee_number | Source of incident context |
| OLIMS Employee | employee_number | Join to get employee name, rank (optional) | Optional join for reporting context |
| OLIMS Document Table | earning_id | Left Join to count documents | Count documents uploaded per earning record |
| OLIMS Claims Officer | claims_advisor_id | Join to get claims advisor name | Optional join for officer display |
| OLIMS Supervisor | supervisor_id | Join to get supervisor name | Optional join for supervisor display |

**Data Model Notes:**
- Per RPN004: "For every record created to be displayed as an individual line item" – each earning record is one row
- Per OLE006: Multiple earning types may cover same date range (both shown as separate rows)
- Per OLE010: Can have recurring offsets (start date + end date defines period)
- Per OLE007: Delete-only operations (no updates); deleted entries remain in audit trail per OLE008
- Document count is aggregate from documents table linked to earning_id

## Calculated Fields

| Field | Formula | Source Fields | Notes |
|---|---|---|---|
| Document Count | COUNT(documents WHERE earning_id = current_earning_id) | documents table | Count of documents attached to this earning record |
| Active Status | IF(earning_inactive_flag = 'N', 'Active', 'Inactive') | earning_inactive_flag | Derived for filtering and display |
| Income Period (days) | IF(earning_date_to IS NOT NULL, DATEDIFF(earning_date_to, earning_date_from), NULL) | earning_date_from, earning_date_to | Days between start and end (NULL if ongoing) |
| Annualized Amount | CASE WHEN earning_frequency = 'weekly' THEN earning_amount × 52 WHEN earning_frequency = 'fortnightly' THEN earning_amount × 26 WHEN earning_frequency = 'monthly' THEN earning_amount × 12 WHEN earning_frequency = 'lump sum' THEN earning_amount ELSE NULL END | earning_amount, earning_frequency | Annualized value for comparison |

## Lookups & Code Translations

| Field | Code | Meaning | Source |
|---|---|---|---|
| Earning Category | Income | Income earned by officer (offset to reduce EPSS) | OLE004 |
| Earning Category | Payment | Lump sum or periodic payments received (offset to reduce EPSS) | OLE005 |
| Earning Type | [TBC] | PAYG Income | OLIMS [TBC] code list |
| Earning Type | [TBC] | Rental Income | OLIMS [TBC] code list |
| Earning Type | [TBC] | Investment Income | OLIMS [TBC] code list |
| Earning Type | [TBC] | Superannuation | OLIMS [TBC] code list |
| Earning Type | [TBC] | Lump Sum Settlement | OLIMS [TBC] code list |
| Earning Type | [TBC] | Redundancy/Termination | OLIMS [TBC] code list |
| Earning Type | [TBC] | Workers Compensation | OLIMS [TBC] code list |
| Earning Type | [TBC] | Government Benefits | OLIMS [TBC] code list |
| Frequency | weekly | Income paid weekly | Standard value |
| Frequency | fortnightly | Income paid every 2 weeks | Standard value |
| Frequency | monthly | Income paid monthly | Standard value |
| Frequency | lump sum | Single one-off payment | Standard value |
| Earning Inactive | Y | Entry marked inactive (superseded or cancelled) per OLE010 | Boolean |
| Earning Inactive | N | Entry is active and applies to current EPSS calculation | Boolean |
| Document Uploaded | Y | Supporting documentation attached per OLE002 | Boolean |
| Document Uploaded | N | No documentation attached | Boolean |

**[TBC]:** Confirm actual earning type codes used in OLIMS for income/payment categories.

## Outstanding Items [TBC]

| Item | Impact | Owner | Status |
|---|---|---|---|
| OLIMS External Income/Payments tab table structure and field names | Data extraction accuracy; mapping to RPN003 columns | [TBC] OLIMS design | Awaiting OLIMS technical specification |
| Earning type codes and categories (PAYG, rental, investment, lump sum, WC, etc.) | Accurate filtering and reporting of income types | [TBC] OLIMS design | Confirm predefined earning_type values per OLE004/OLE005 |
| Frequency values and definitions | Accurate calculation of annualized amounts | [TBC] OLIMS design | Confirm values (weekly, fortnightly, monthly, lump sum) and handling of other frequencies |
| Document Count aggregation logic | Accurate count of supporting documents | [TBC] OLIMS design | Confirm document table structure and linking to earning_id |
| OLIMS audit fields (last_modified_by, last_modified_date, last_modified_at) | Audit trail completeness | [TBC] OLIMS design | Awaiting OLIMS audit table documentation |
| Claims advisor and supervisor name mapping | Display friendly names instead of IDs | [TBC] OLIMS design | Confirm HR/OLIMS tables for officer/supervisor lookup |
| Active/Inactive flag implementation and deletion logic | Correct filtering of current vs. superseded entries per OLE007/OLE008/OLE010 | [TBC] OLIMS design | Confirm earning_inactive_flag values and audit trail handling |
| External earnings offset policy and EPSS integration | Correct application of earnings to offset calculations | [TBC] EPSS business | Reference: OLE001 (integration to IT0015) and EPSS offset policy document |

## Open Questions (Business)

| Question | Related Req(s) | Why it matters |
|---|---|---|
| What are the complete list of earning types (income and payment categories) defined in OLIMS? | RPN003, OLE004, OLE005 | Needed to populate filtering options and validate data |
| Should report default to Active records only, or include Inactive as well? | RPN002, OLE010 | Affects default user experience; most users likely need only current/active offsets |
| How frequently are external income reviews conducted (quarterly per RPC, annual per RPC)? | RPN001, OLIMS tasks | Helps set expectations for review frequency and report refresh |
| Should the "Document Uploaded" flag be visual (e.g., checkmark/X) or hidden if document exists (show document icon)? | RPN003, OLE002 | Affects UI/UX and document accessibility |
| When an entry is marked inactive, should it still appear in default report view or only when "Inactive" filter selected? | RPN002, OLE010 | Affects default reporting view and clutter |
| Should report show relationship to which EPSS period (P1, P2, P3) each offset applies to? | RPN001 | Users may want to understand impact by period |
| What is expected refresh frequency (real-time, daily, weekly)? | RPN001 | Impacts users' expectations for currency of income data |

## Report Column Sequence

| # | Column | Source | Type | Length | Notes |
|---|---|---|---|---|---|
| 1 | Employee No | OLIMS employee_number | Char | 8 | Police officer receiving EPSS benefits |
| 2 | Incident No | OLIMS incident_number | Char | 10 | WC incident identifier |
| 3 | Claim No | OLIMS claim_number | Char | 20 | WC or EPSS claim number |
| 4 | Earning Type | OLIMS earning_type | Char | 20 | Code for type of income/payment (PAYG, Rental, etc.) [TBC] |
| 5 | Earning Category | OLIMS earning_category | Char | 10 | "Income" or "Payment" per OLE003 |
| 6 | Date From | OLIMS earning_date_from | Date | - | Start date of income (YYYY-MM-DD) |
| 7 | Date To | OLIMS earning_date_to | Date | - | End date of income; NULL if ongoing (YYYY-MM-DD) |
| 8 | Amount | OLIMS earning_amount | Num | 10,2 | AUD; dollar amount per frequency |
| 9 | Frequency | OLIMS earning_frequency | Char | 20 | weekly / fortnightly / monthly / lump sum [TBC] |
| 10 | Description | OLIMS earning_description | Varchar | 500 | Free-text description of income source |
| 11 | Document Uploaded | OLIMS document_uploaded_flag | Char | 1 | Y/N – supporting evidence attached per OLE002 |
| 12 | Document Count | OLIMS document_count (calculated) | Num | 3 | Count of documents uploaded; 0 if none |
| 13 | Earning Inactive | OLIMS earning_inactive_flag | Char | 1 | Y/N – marked inactive per OLE010 |
| 14 | Last Modified By | OLIMS last_modified_by | Char | 20 | Claims officer ID who created/modified entry [TBC] |
| 15 | Last Modified On | OLIMS last_modified_date | Date | - | Date of last modification (YYYY-MM-DD) |
| 16 | Last Modified At | OLIMS last_modified_timestamp | Time | - | Timestamp of last modification (HH:MM:SS) [TBC] |
| 17 | EPSS Claims Advisor | OLIMS claims_advisor_id / name | Char | 40 | Claims officer assigned to conduct review [TBC] ID or name |
| 18 | EPSS Supervisor | OLIMS supervisor_id / name | Char | 40 | Supervisor responsible for case [TBC] ID or name |

**Export Format:** Excel per RPN005

**Default Sort:** Employee No (ASC), Incident No (ASC), Date From (DESC – most recent first)

**Conditional Formatting (recommended):**
- Highlight Earning Inactive = Y rows in light gray
- Highlight Document Count = 0 rows in yellow (missing evidence)
- Highlight date ranges covering current date in bold (active offsets)

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.

