# Functional Specification: SR003 — EPSS Scheme Reporting Table Requirements

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires robust, scheme-wide reporting to measure cost, performance, and fairness. Monthly data extracts are needed for the Enterprise Data Warehouse (EDW) to support analytics, compliance, and operational oversight. This specification defines the required table structure, data elements, and reporting logic for the EPSS scheme reporting extract.

---

## 2. Scope

This specification covers the design and requirements for the EPSS scheme reporting table (SR003), including:
- Monthly extraction of all EPSS participants (active and ceased)
- Data fields, definitions, and formats
- Inclusion of payment, eligibility, and cohort information
- Support for historical and incremental reporting

---

## 3. Detailed Functional Requirements

- A monthly snapshot of all EPSS participants (including ceased and not receiving payments) must be extracted and loaded into the EDW.
- Each record must include the columns, names, definitions, and formats as per the table below.
- All data must be sourced from SAP HR, Payroll, and OLIMS as specified.
- Historical data must be retained and differentiated using the `dt_as_at` field.
- All payment and week/day counting fields must be populated for each participant, even if zero.
- Eligibility and cohort status must reflect the participant’s state as at the end of the reporting month.
- Transitional claims and period transitions must be accurately flagged and dated.

**Table Structure:**

| Col | Column Name | Definition/Source/Formula | Example |
| --- | --- | --- | --- |
| 1 | dt_as_at | Last day of the calendar month | 2025-09-30 |
| 2 | registered_number | Employee registration number | 41344 |
| 3 | claim_number | EML workers compensation claim number | 256772EML |
| 4 | incident_number | Workers Compensation incident number | 237831 |
| 5 | first_name | Employee first name | John |
| 6 | last_name | Employee last name | Smith |
| 7 | date_of_birth | Date of birth | 1986-09-13 |
| 8 | pay_period_begin_date | Start date of pay period | 2025-07-18 |
| 9 | pay_period_end_date | End date of pay period | 2025-07-31 |
| 10 | wc_amount_paid | Weekly workers compensation amount received | 1308.8 |
| 11 | injury_type | OLIMS injury type (Psychological/Physical) | Psychological |
| 12 | rank | Employee’s rank at payment time | Detective Constable |
| 13 | command | Command at payment time | Regional NSW Field Operations |
| 14 | region_branch | Region branch at payment time | Northern |
| 15 | EPSS_period_1_payment | Amount paid as EPSS period 1 | 2202.76 |
| 16 | EPSS_period_2_payment | Amount paid as EPSS period 2 | 1440.21 |
| 17 | EPSS_period_3_payment | Amount paid as EPSS period 3 | 0 |
| 18 | actual_weeks_counted_p1 | Actual weeks counted in period 1 | 39 |
| 19 | actual_days_counted_p2 | Actual days counted in period 2 | 1442 |
| 20 | actual_days_counted_p3 | Actual days counted in period 3 | 49 |
| 21 | is_week_or_day_counting | Y/N flag for week/day counting | Y |
| 22 | ordinary_rate_of_pay | Ordinary rate of pay | 1225.42 |
| 23 | other_income | All other income | 524.24 |
| 24 | latest_COC | Latest certificate of capacity | Partial Capacity |
| 25 | P2_PID_duration | Days of PID in Period 2 | 8 |
| 26 | eligibility_status | Eligible/Not eligible as at month end | Eligible |
| 27 | reason_ineligible | Reason not eligible (if applicable) | Retirement |
| 28 | transitional_claims | Y/N flag for transitional claim | Y |
| 29 | date_start_p1_actual | Actual start date of period 1 | 2024-10-01 |
| 30 | date_end_p1_actual | Actual end date of period 1 | 2025-07-01 |
| 31 | date_start_p2_actual | Actual start date of period 2 | 2025-07-01 |
| 32 | date_end_p2_actual | Actual end date of period 2 | 2024-10-01 |
| 33 | date_start_p3_actual | Actual start date of period 3 | 2024-10-01 |
| 34 | date_end_p3_actual | Actual end date of period 3 | 2024-10-01 |
| 35 | date_end_p1_estimated | Estimated end date period 1 | 2025-06-01 |
| 36 | date_start_p2_estimated | Estimated start date period 2 | 2025-06-02 |
| 37 | date_end_p2_estimated | Estimated end date period 2 | 2032-06-01 |
| 38 | date_start_p3_estimated | Estimated start date period 3 | 2032-06-02 |
| 39 | date_end_p3_estimated | Estimated end date period 3 | 3035-06-01 |
| 40 | EPSS_cohort | Participant’s cohort status | Period 1, receiving, weeks counting |

---

## 4. Exception Handling

- If a required field is missing, default to blank or zero as appropriate.
- If eligibility cannot be determined, set `eligibility_status` to "Not eligible" and provide a reason if available.
- If payment data is unavailable for a participant, include the record with payment fields as zero.

---

## 5. Compliance/Controls

- All data extracts must comply with payroll controls and OLIMS access policies.
- Reporting must support reconciliation with SAP payroll and OLIMS records.
- Access to the extract and EDW load must be restricted to authorised personnel.
- Audit trails must be maintained for all data loads and changes.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001–DOB005, P905 retro logic
- Source: EPSS Phase 5 BRD, SAP/OLIMS reporting requirements

---

## 7. Acceptance Criteria

- [ ] Monthly extract includes all required columns and data for every EPSS participant (active and ceased)
- [ ] Data matches SAP HR, Payroll, and OLIMS sources as per definitions
- [ ] Historical data is retained and differentiated by `dt_as_at`
- [ ] All payment, eligibility, and cohort fields are populated as specified
- [ ] Extract supports reconciliation and compliance reporting
- [ ] Exception handling is implemented for missing or incomplete data
- [ ] Access and audit controls are in place for extract and EDW load