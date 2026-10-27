# Functional Specification: SR001 — EPSS Scheme Reporting (HSWC)

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust, scheme-wide reporting for the Enhanced Police Support Scheme (EPSS) to support cost, performance, and fairness analysis. Data must be extracted monthly from SAP/OLIMS/Payroll, transformed, and loaded into the Enterprise Data Warehouse (EDW) for analytics and compliance. This reporting covers all EPSS participants, including those ceased or not currently receiving payments.

---

## 2. Scope

This specification covers the extraction, transformation, and monthly incremental loading of EPSS participant data into the EDW. It includes all current and ceased EPSS participants, with historical data retained and differentiated by snapshot date. The scope includes the definition of required data fields, extraction logic, and reporting requirements.

---

## 3. Detailed Functional Requirements

- Data will be extracted, transformed, and incrementally loaded into the EDW at the end of each month.
- Each load is a monthly snapshot of all EPSS participants (including ceased and not receiving payments).
- Historical data is retained, differentiated by the `dt_as_at` field.
- The extract includes all columns as per the table below, with definitions, sources, and example formats.
- All EPSS participants and ceased participants are included each month, even if no payment is received.
- Data sources include SAP HR, Payroll, and OLIMS.
- The extract must support downstream analytics, compliance, and scheme performance reporting.

**Required Columns:**

| Col | Column Name | Definition/Source | Example |
| --- | --- | --- | --- |
| 1 | dt_as_at | Last day of the calendar month | 2025-09-30 |
| 2 | registered_number | Employee registration number | 41344 |
| 3 | claim_number | EML WC claim number | 256772EML |
| 4 | incident_number | WC incident number | 237831 |
| 5 | first_name | Employee first name | John |
| 6 | last_name | Employee last name | Smith |
| 7 | date_of_birth | Date of birth | 1986-09-13 |
| 8 | pay_period_begin_date | Pay period start date | 2025-07-18 |
| 9 | pay_period_end_date | Pay period end date | 2025-07-31 |
| 10 | wc_amount_paid | Weekly WC amount received | 1308.8 |
| 11 | injury_type | OLIMS injury type | Psychological |
| 12 | rank | Employee rank at payment | Detective Constable |
| 13 | command | Command at payment | Regional NSW Field Operations |
| 14 | region_branch | Region branch at payment | Northern |
| 15 | EPSS_period_1_payment | Amount paid as EPSS P1 | 2202.76 |
| 16 | EPSS_period_2_payment | Amount paid as EPSS P2 | 1440.21 |
| 17 | EPSS_period_3_payment | Amount paid as EPSS P3 | 0 |
| 18 | actual_weeks_counted_p1 | Actual weeks counted P1 | 39 |
| 19 | actual_days_counted_p2 | Actual days counted P2 | 1442 |
| 20 | actual_days_counted_p3 | Actual days counted P3 | 49 |
| 21 | is_week_or_day_counting | Weeks/days counting flag (Y/N) | Y |
| 22 | ordinary_rate_of_pay | ORP as provided by insurer | 1225.42 |
| 23 | other_income | All other income | 524.24 |
| 24 | latest_COC | Latest certificate of capacity | Partial Capacity |
| 25 | P2_PID_duration | Days of PID in P2 | 8 |
| 26 | eligibility_status | Eligibility as at month end | Eligible |
| 27 | reason_ineligible | Reason not eligible | Retirement |
| 28 | transitional_claims | Transitional claim flag (Y/N) | Y |
| 29 | date_start_p1_actual | Actual P1 start date | 2024-10-01 |
| 30 | date_end_p1_actual | Actual P1 end date | 2025-07-01 |
| 31 | date_start_p2_actual | Actual P2 start date | 2025-07-01 |
| 32 | date_end_p2_actual | Actual P2 end date | 2024-10-01 |
| 33 | date_start_p3_actual | Actual P3 start date | 2024-10-01 |
| 34 | date_end_p3_actual | Actual P3 end date | 2024-10-01 |
| 35 | date_end_p1_estimated | Estimated P1 end date | 2025-06-01 |
| 36 | date_start_p2_estimated | Estimated P2 start date | 2025-06-02 |
| 37 | date_end_p2_estimated | Estimated P2 end date | 2032-06-01 |
| 38 | date_start_p3_estimated | Estimated P3 start date | 2032-06-02 |
| 39 | date_end_p3_estimated | Estimated P3 end date | 3035-06-01 |
| 40 | EPSS_cohort | Participant cohort | Period 1, receiving, weeks counting |

---

## 4. Exception Handling

- If data for a required field is unavailable, the field must be left blank or set to a default value (e.g., 0 for payments).
- If a participant is not eligible or has ceased, payment fields are 0 and eligibility/reason fields are populated accordingly.
- Any extraction or transformation errors must be logged and reported for remediation before EDW load.

---

## 5. Compliance/Controls

- All data extracts must comply with NSWPF data privacy and security policies.
- Access to the extract and EDW must be restricted to authorised users.
- Audit logs must be maintained for all data loads and changes.
- Data must be reconciled monthly against SAP/OLIMS/Payroll to ensure accuracy and completeness.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- Related reporting requirements: RPA001, RPB002, RPE001, RPF001, RPP001

---

## 7. Acceptance Criteria

- [ ] Monthly extract includes all required columns and definitions as specified.
- [ ] All EPSS participants (active, ceased, not receiving payments) are included in each monthly snapshot.
- [ ] Historical data is retained and differentiated by `dt_as_at`.
- [ ] Data is loaded into EDW by the agreed schedule.
- [ ] Exception handling and error logging are implemented.
- [ ] Data privacy, access controls, and audit logging are in place.
- [ ] Data is reconciled and validated against SAP/OLIMS/Payroll each month.
- [ ] All required fields are populated or defaulted as per specification.
- [ ] Compliance with all referenced requirements and linked reports.