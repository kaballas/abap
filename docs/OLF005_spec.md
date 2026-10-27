# Functional Specification: OLF005 — Period 1 Estimate Section in EPSS Estimation Tab

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires accurate forecasting of future liabilities and payments. The Period 1 estimate section in the OLIMS EPSS estimation tab enables claims officers to project expected payments, supporting financial planning, scheme reporting, and icare recoupment processes.

---

## 2. Scope

This specification covers the Period 1 estimate section within the OLIMS EPSS estimation/forecasting tab. It defines required data fields, calculation logic, data sources, user input requirements, and reporting integration for Period 1 estimates only.

---

## 3. Detailed Functional Requirements

- **Definitions & Data Sources**
  - *RTW hours*: Number of hours the officer is expected to work during the forecast period. User-entered.
  - *RTW salary*: Salary corresponding to RTW hours. System-derived from SAP IT0008 or user-entered if unavailable.
  - *Weekly EPSS payment*: Forecasted weekly payment, calculated as $ \text{ORP} - \text{WC payment} - \text{External earnings} $.
  - *Future number of weeks*: User-entered, capped at 39 weeks.
- **User Input Fields**
  - Incident number (auto-populated)
  - Claim number (auto-populated)
  - Date range (user-entered)
  - RTW hours (user-entered)
  - RTW salary (system-derived or user-entered)
  - Weekly EPSS payment (system-calculated, editable if required)
  - Future number of weeks (user-entered, validation: $ \leq 39 $)
- **Calculation Logic**
  - Weekly EPSS payment uses the latest ORP and WC payment values.
  - Total forecast = $ \text{Weekly EPSS payment} \times \text{Future number of weeks} $
  - All calculations use actuals if available; otherwise, use averages.
- **Reporting**
  - Each estimate is uniquely identified by incident number, claim number, and date range.
  - Estimates are saved for reporting and can be included in the icare recoup report.

---

## 4. Exception Handling

- Validation errors if required fields are missing or future number of weeks exceeds 39.
- If system cannot derive RTW salary, prompt user to enter value.
- If calculation fails, display error and prevent save.

---

## 5. Compliance/Controls

- All user entries and changes are audit-logged.
- Only authorized EPSS claims officers can enter or edit estimates.
- Data is reportable for compliance and reconciliation.

---

## 6. References and Linked Requirements

- Cross-references: OLF001–OLF010 (EPSS estimation tab), RPK/RPL (forecast estimate reports), icare recoup logic, P1001–P1006 (week counting).
- See also: DOA010, DOA012 (salary sourcing), P1C001–P1C009 (Period 1 payment controls).

---

## 7. Acceptance Criteria

- [ ] All required fields for Period 1 estimate are present and validated.
- [ ] Calculation logic matches business rules and formulas.
- [ ] User can save, edit, and report on Period 1 estimates.
- [ ] Audit log captures all changes.
- [ ] Estimates integrate with icare recoup and summary/detailed forecast reports.
- [ ] Exception handling and validation are implemented as specified.