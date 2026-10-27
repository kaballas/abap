# Functional Specification: OLF007 — Period 3 Estimation Logic

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires accurate forecasting of future liabilities for officers progressing through benefit periods. Period 3 (P3) estimation is critical for financial planning, reporting, and scheme management. OLF007 addresses the need for clear calculation rules, data sources, and user input requirements for P3 estimation in OLIMS.

---

## 2. Scope

This specification covers the functional requirements for Period 3 estimation logic in the OLIMS EPSS estimation tab/forecasting calculator. It defines calculation formulas, user/system fields, data sources, effective dates, and validation rules for P3 estimates.

---

## 3. Detailed Functional Requirements

- The Period 3 estimation section must include:
    - User-entered fields (marked with *) and system-calculated fields.
    - Data sources and effective dates for each field.
    - Calculation logic for forecasted P3 payments.
    - Validation to cap "Future # of weeks" at 52 (one year).
- Required fields:
    - *Incident Number
    - *Claim Number
    - *Date Range (From/To)
    - *Future # of weeks (max 52)
    - *Estimated Weekly P3 Payment
    - System-calculated: Total Forecasted P3 Payment = Estimated Weekly P3 Payment × Future # of weeks
    - Effective date for each estimate must be recorded.
- Calculation rules:
    - Estimated Weekly P3 Payment is entered by the case officer based on current entitlements and indexation rules.
    - Total Forecasted P3 Payment is calculated automatically.
    - All estimates are stored for reporting and audit.
- Data sources:
    - Incident/Claim numbers: OLIMS
    - Effective dates: User entry
    - Weekly payment: User entry, with reference to SAP/OLIMS data if available.

---

## 4. Exception Handling

- If "Future # of weeks" exceeds 52, display an error and prevent save.
- If required fields are missing, prompt user to complete before saving.
- If system-calculated fields cannot be derived, display as blank and log for review.

---

## 5. Compliance/Controls

- All estimate entries and changes are audit logged.
- Only authorised users (EPSS Claims Officers) can enter or edit estimates.
- Reporting and reconciliation must include all P3 estimates for compliance.

---

## 6. References and Linked Requirements

- Cross-references: OLF005 (P1 estimation), OLF006 (P2 estimation), OLF009 (icare recoup mapping), RPK003/RPL003 (forecast reporting), P1001–P1006 (week counting logic).

---

## 7. Acceptance Criteria

- [ ] P3 estimation tab includes all required fields with correct data sources.
- [ ] User cannot enter more than 52 weeks for "Future # of weeks".
- [ ] Total Forecasted P3 Payment is calculated automatically.
- [ ] All entries are audit logged and reportable.
- [ ] Error messages are displayed for missing/invalid data.
- [ ] Effective dates are recorded for each estimate.
- [ ] Only authorised users can create/edit P3 estimates.