# Functional Specification: OLF001 — EPSS Estimation Tab / Forecasting Calculator

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires accurate forecasting of future benefit payments for scheme participants. The EPSS estimation tab/forecasting calculator in OLIMS enables claims officers to estimate future EPSS liabilities for each incident, supporting operational planning, financial reporting, and compliance with icare recoupment requirements.

---

## 2. Scope

This specification covers the design and implementation of the EPSS estimation tab/forecasting calculator in OLIMS, including all data entry fields, calculation logic, storage, reporting, and integration with existing OLIMS screens and reports. It applies to all EPSS On Duty claims and supports Periods 1, 2, and 3.

---

## 3. Detailed Functional Requirements

- **OLF001**: The estimation tab must allow entry of forecast data for each incident (one-to-one relationship). Required fields include incident number, claim number, date range, benefit period, quarter, WC section, RTW capacity, and all relevant estimate values for Periods 1–3.
- **OLF002**: Only one forecast estimate per incident is permitted; key fields for reporting are incident number, claim number, and date range.
- **OLF003**: Period 3 fields must display as blank (not zero) when no data is entered.
- **OLF004**: Totals for multiple estimate records must be grouped by benefit period, quarter, WC section, and RTW capacity. WC section is required as a grouping/output field.
- **OLF005**: Period 1 estimate section must include: RTW hours, RTW salary, forecast weekly payment, and future number of weeks. Definitions and data sources for each field must be documented. Forecast uses actuals or averages as confirmed by business.
- **OLF006**: Period 2 estimate section must include all required fields and calculation logic. "Future # of weeks" input must be validated not to exceed 52.
- **OLF007**: Period 3 estimate section must include detailed calculation rules, formulas, and data sources. User-entered fields must be marked, and "future # of weeks" is capped at 52.
- **OLF008**: Roll-up of total estimates per benefit period for the forecasted quarter is required in both OLIMS and the icare recoup report.
- **OLF009**: All estimate fields, effective dates, and mapping to the icare recoup report must be documented.
- **OLF010**: The forecast report is to be developed in OLIMS. Manual overrides to icare recoup report values are not required; the report uses OLIMS forecast data only.

---

## 4. Exception Handling

- If required fields are missing, the system must prevent saving and display an error.
- If "future # of weeks" exceeds 52, the system must display a validation error.
- If a duplicate estimate is entered for the same incident, the system must block the entry.
- If data mapping to icare recoup report fails, an error log must be generated for review.

---

## 5. Compliance/Controls

- All estimate entries and changes must be audit logged (user, date/time, before/after values).
- Only authorised EPSS claims officers may enter or edit estimates.
- Reports must be exportable for reconciliation and compliance checks.
- Data must be retained in accordance with NSWPF and icare reporting requirements.

---

## 6. References and Linked Requirements

- Cross-references: OLF002–OLF010, RPK/RPL (forecast estimate reports), icare recoup report mapping, DOA010, DOA012, P1001–P1006 (week counting logic).

---

## 7. Acceptance Criteria

- [ ] Estimation tab is available in OLIMS for all EPSS On Duty incidents.
- [ ] All required fields for Periods 1–3 are present and validated.
- [ ] Only one estimate per incident is permitted.
- [ ] Period 3 fields display as blank when not populated.
- [ ] Grouping and roll-up logic matches requirements.
- [ ] All calculations and field mappings are documented and correct.
- [ ] Audit log captures all changes.
- [ ] Reports are exportable and match OLIMS data.
- [ ] Exception handling is implemented as specified.
- [ ] User access and controls are enforced.