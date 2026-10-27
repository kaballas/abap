<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPD -->

# Date of Disablement misalignment

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPD001 | Purpose of the report is to identify misalignment of the date of disablement and the first Certificate of capacity uploaded in OLIMS.  Main scenarios include:   1. First WCCC is a fit for Pre Injury Duties certificate and the second WCCC is the first total/partial incapacity 2. The WCCC were not uploaded correctly in date range order and the first WCCC uploaded was actually meant to be the third | M |
| RPD002 | The report will output results when the below conditions are met:   1. First WCCC is PID and status start date matches DOD 2. First WCCC is not PID and the status start date does NOT match the DOD | M |
| RPD003 | **Selection Criteria**   * WC Primary Claim   + Primary   + Non Primary   + Both * EPSS/PBRI claim   + PBRI   + EPSS   + Transitioned to EPSS   + All | M |
| RPD004 | **Report Columns:**   * Emp No. * First Name * Last Name * WC Primary Claim (flag) * PBRI claim (flag) * EPSS claim (flag) * Transitioned to EPSS (flag) * Incident No. * WC Claim No. * Incident Date * Date of Disablement * First WC Certificate – Status * Status From Date * Inactive WCCC (flag) | M |

## Business Purpose

**Users:** EPSS Claims Officers, OLIMS Case Managers, Data Quality teams, Supervisors

**Frequency:** On-demand, periodic data quality audits (weekly/monthly)

**Business Use:**
RPD identifies data quality issues where the Date of Disablement (DOD) in OLIMS doesn't align with the first Workers Compensation Certificate of Capacity (WCCC) upload. DOD is critical because:
- Used to determine EPSS eligibility (employee injured while employed)
- Used to calculate Period 1 commencement and week counting
- Used to determine initial ORP and benefit starting point
- Per DOD001: Can be amended if initial default DOD is incorrect

Common misalignment scenarios (per RPD001):
1. First WCCC is PID (fit for pre-injury duties) but should not be the DOD event
2. Second WCCC is first incapacity certificate (should be true DOD)
3. Certificates uploaded out of date order
4. Inactive/superseded certificate incorrectly marked as first certificate

**Key Business Decisions:**
- Identify cases requiring DOD correction
- Verify certificate sequence and status
- Quality assurance on data entry accuracy
- Support case management corrections
- Prevent payment miscalculations from incorrect DOD

## Key Metrics/Columns

**Primary Columns:** 14 columns per RPD004
1. Emp No (employee registration number)
2. First Name (officer first name)
3. Last Name (officer last name)
4. WC Primary Claim (flag: Y/N – is primary claim)
5. PBRI claim (flag: Y/N – claim registered under PBRI)
6. EPSS claim (flag: Y/N – transitioned to EPSS or EPSS-only)
7. Transitioned to EPSS (flag: Y/N – migrated from PBRI to EPSS)
8. Incident No (injury incident number)
9. WC Claim No (workers comp claim number)
10. Incident Date (when injury/incident occurred)
11. Date of Disablement (official DOD used for EPSS calculations)
12. First WC Certificate – Status (PID / Partial Incapacity / Total Incapacity / Other)
13. Status From Date (start date of first certificate)
14. Inactive WCCC (flag: Y/N – first certificate marked inactive)

## SAP Field Mappings

| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Emp No | OLIMS | employee_number | Char | 8 | Police officer registration number |
| First Name | HR | first_name | Char | 40 | Employee first name |
| Last Name | HR | last_name | Char | 40 | Employee last name |
| WC Primary Claim | OLIMS | wc_primary_claim_flag | Char | 1 | Y = Primary claim; N = Non-primary |
| PBRI claim | OLIMS | pbri_claim_flag | Char | 1 | Y = Claim registered under PBRI scheme |
| EPSS claim | OLIMS | epss_claim_flag | Char | 1 | Y = Claim under EPSS scheme |
| Transitioned to EPSS | OLIMS | epss_transitioned_flag | Char | 1 | Y = Migrated from PBRI to EPSS per DOD criteria |
| Incident No | OLIMS | incident_number | Char | 10 | WC incident identifier |
| WC Claim No | OLIMS | claim_number | Char | 20 | WC claim number |
| Incident Date | OLIMS | incident_date | Date | - | Date of injury/incident |
| Date of Disablement | OLIMS | date_of_disablement | Date | - | DOD used for EPSS calculations (per DOD001, can be amended) |
| First WC Certificate – Status | OLIMS | first_certificate_status | Char | 30 | PID / Partial Incapacity / Total Incapacity [TBC] |
| Status From Date | OLIMS | first_certificate_date_from | Date | - | Start date of first certificate uploaded |
| Inactive WCCC | OLIMS | first_certificate_inactive_flag | Char | 1 | Y = First certificate marked inactive; N = Active |

## Selection Criteria & Filters

| Filter | Type | Options | SAP Source | Notes |
|---|---|---|---|---|
| WC Primary Claim | **Dropdown** | Primary / Non-Primary / Both | OLIMS wc_primary_claim_flag | Per RPD003: filter by claim type |
| EPSS/PBRI Claim | **Dropdown** | PBRI / EPSS / Transitioned to EPSS / All | OLIMS pbri_claim_flag, epss_claim_flag, epss_transitioned_flag | Per RPD003: filter by scheme |
| Show Only Misaligned | **Checkbox** | Yes / No (default: Yes) | Calculated logic per RPD002 | When Yes, only show cases matching misalignment conditions |

**Filter Logic:** AND logic across selected criteria. Default filters to show only misaligned cases (per RPD002 logic).

## Data Relationships

| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| OLIMS Incident | incident_number | Primary source of DOD and incident data | Filter by primary claim flag, scheme flags |
| OLIMS Certificate | certificate_id + incident_number | Join to get first certificate data (ordered by certificate_date_from) | Identify first uploaded certificate and its status |
| OLIMS Claim | claim_number + incident_number | Join to get claim type (WC/PBRI/EPSS) and transitional flags | Identify scheme and transition status |
| HR Employee | employee_number | Join to get employee name details | Optional join for reporting context |

**Data Model Notes:**
- First Certificate = earliest certificate by date_from (irrespective of upload order)
- Misalignment conditions (per RPD002):
  - Condition 1: First WCCC = PID AND status_from_date = DOD (expected scenario – no misalignment)
  - Condition 2: First WCCC ≠ PID AND status_from_date ≠ DOD (misalignment – needs review)
- Report flags for investigation when conditions don't match expected pattern

## Calculated Fields

| Field | Formula | Source Fields | Notes |
|---|---|---|---|
| Misalignment Type | CASE WHEN first_certificate_status = 'PID' AND first_certificate_date_from = date_of_disablement THEN 'None - Aligned' WHEN first_certificate_status = 'PID' AND first_certificate_date_from ≠ date_of_disablement THEN 'PID Mismatch' WHEN first_certificate_status IN ('Partial', 'Total') AND first_certificate_date_from ≠ date_of_disablement THEN 'Incapacity Mismatch' ELSE 'Other' END | first_certificate_status, first_certificate_date_from, date_of_disablement | Categorizes type of misalignment |
| Days Difference | DATEDIFF(first_certificate_date_from, date_of_disablement) | first_certificate_date_from, date_of_disablement | Number of days between DOD and first cert date (negative = cert before DOD) |
| Requires Review | IF(Misalignment Type ≠ 'None - Aligned', 'Yes', 'No') | Misalignment Type | Flags cases needing DOD correction review per DOD001 |
| Claim Type Summary | CASE WHEN epss_transitioned_flag = 'Y' THEN 'Transitioned (PBRI→EPSS)' WHEN epss_claim_flag = 'Y' THEN 'EPSS Direct' WHEN pbri_claim_flag = 'Y' THEN 'PBRI Only' ELSE 'Unknown' END | epss_claim_flag, pbri_claim_flag, epss_transitioned_flag | User-friendly claim type |

## Lookups & Code Translations

| Field | Code | Meaning | Source |
|---|---|---|---|
| First Certificate Status | PID | Pre-Injury Duty (fit for original duties) | OLIMS certificate status |
| First Certificate Status | Partial | Partial Incapacity (partial wage loss) | OLIMS certificate status |
| First Certificate Status | Total | Total Incapacity (unable to work) | OLIMS certificate status |
| WC Primary Claim | Y | Primary claim (initial injury compensation) | OLIMS |
| WC Primary Claim | N | Non-primary claim (secondary/related injury) | OLIMS |
| PBRI claim | Y | Claim registered under PBRI scheme | OLIMS |
| PBRI claim | N | Not PBRI (pre-EPSS scheme) | OLIMS |
| EPSS claim | Y | Claim under EPSS scheme | OLIMS |
| EPSS claim | N | Not EPSS | OLIMS |
| Transitioned to EPSS | Y | Migrated from PBRI to EPSS per DOD criteria | OLIMS |
| Transitioned to EPSS | N | Direct EPSS or PBRI-only (not transitioned) | OLIMS |
| Inactive WCCC | Y | First certificate marked inactive | OLIMS |
| Inactive WCCC | N | First certificate is active | OLIMS |

## Outstanding Items [TBC]

| Item | Impact | Owner | Status |
|---|---|---|---|
| OLIMS certificate ordering and first certificate identification logic | Accurate misalignment detection | [TBC] OLIMS design | Confirm how "first certificate" is determined (by upload date vs. certificate date_from) |
| Certificate status codes (PID, Partial Incapacity, Total Incapacity) | Accurate classification of certificate types | [TBC] OLIMS design | Confirm predefined status codes for certificates |
| DOD amendment audit trail (per DOD001) | Track when DOD was corrected and why | [TBC] OLIMS design | Confirm if amendments are tracked with reason/approval |
| Inactive certificate flag and supersession tracking | Identify certificates that should not be the DOD basis | [TBC] OLIMS design | Confirm how inactive/superseded certificates are marked |
| Transitional claim identification logic | Accurate classification of PBRI→EPSS transitions | [TBC] OLIMS design | Confirm fields/flags used to identify transitioned claims |
| WC Primary Claim flag definition | Distinguish primary from secondary claims | [TBC] OLIMS design | Confirm whether this is a system flag or derived field |

## Open Questions (Business)

| Question | Related Req(s) | Why it matters |
|---|---|---|
| What is the root cause of misalignment when it occurs (user error in certificate upload, incorrect amendment, late certificates)? | RPD001, RPD002 | Helps design preventive controls |
| Should inactive first certificates automatically trigger a "requires review" flag? | RPD001, RPD002, DOD001 | Clarifies whether inactive certs invalidate DOD alignment |
| When a DOD amendment occurs (per DOD001), should the report show before/after dates for audit trail? | RPD001, DOD001 | Helps track correction history |
| What is the acceptable date difference tolerance between DOD and first certificate date (e.g., allow 0-7 day variance)? | RPD002 | Some variance may be acceptable (late certificate upload) |
| Should report highlight cases where first certificate is PID but second certificate is incapacity (common scenario per RPD001)? | RPD001 | May require additional calculation to flag secondary certificates |
| What action should be taken when misalignment is detected (auto-suggest DOD amendment, flag for supervisory review, escalate)? | RPD001, DOD001 | Affects remediation workflow |

## Report Column Sequence

| # | Column | Source | Type | Length | Notes |
|---|---|---|---|---|---|
| 1 | Emp No | OLIMS employee_number | Char | 8 | Police officer registration number |
| 2 | First Name | HR first_name | Char | 40 | Officer first name |
| 3 | Last Name | HR last_name | Char | 40 | Officer last name |
| 4 | WC Primary Claim | OLIMS wc_primary_claim_flag | Char | 1 | Y/N – Primary claim flag per RPD003 |
| 5 | PBRI claim | OLIMS pbri_claim_flag | Char | 1 | Y/N – PBRI scheme flag |
| 6 | EPSS claim | OLIMS epss_claim_flag | Char | 1 | Y/N – EPSS scheme flag |
| 7 | Transitioned to EPSS | OLIMS epss_transitioned_flag | Char | 1 | Y/N – Transitioned from PBRI per DOD001 |
| 8 | Incident No | OLIMS incident_number | Char | 10 | WC incident identifier |
| 9 | WC Claim No | OLIMS claim_number | Char | 20 | Workers compensation claim number |
| 10 | Incident Date | OLIMS incident_date | Date | - | Date injury/incident occurred (YYYY-MM-DD) |
| 11 | Date of Disablement | OLIMS date_of_disablement | Date | - | DOD used for EPSS calculations (YYYY-MM-DD) |
| 12 | First WC Certificate – Status | OLIMS first_certificate_status | Char | 30 | PID / Partial / Total Incapacity [TBC] |
| 13 | Status From Date | OLIMS first_certificate_date_from | Date | - | Start date of first certificate (YYYY-MM-DD) |
| 14 | Inactive WCCC | OLIMS first_certificate_inactive_flag | Char | 1 | Y/N – First certificate marked inactive |

**Export Format:** Excel per standard reporting requirement

**Default Sort:** Requires Review (Yes first), Employee No (ASC), Incident No (ASC)

**Conditional Formatting (recommended):**
- Highlight Misalignment Type ≠ "None - Aligned" in yellow (requires review)
- Highlight Inactive WCCC = Y in orange (first cert inactive – unusual)
- Highlight Days Difference > 14 in red (large date gap – investigate)

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.

