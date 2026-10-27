# Functional Specification: OLF006 — EPSS Estimation Tab/Forecasting Calculator — Period 2 Estimate Fields

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires accurate forecasting of future benefit payments for operational, actuarial, and financial planning. The OLIMS EPSS estimation tab/forecasting calculator is being enhanced to support detailed estimation for each benefit period, including Period 2. This ensures claims officers can enter, validate, and report on future Period 2 payments, supporting scheme reporting and recoupment processes.

---

## 2. Scope

This specification covers the functional requirements for the Period 2 estimate section within the OLIMS EPSS estimation tab/forecasting calculator. It defines required data fields, calculation logic, validation rules (including the "Future # of weeks" cap), and integration with reporting and downstream processes.

---

## 3. Detailed Functional Requirements

- The Period 2 estimate section must include the following fields:
    - Incident Number (system-derived)
    - Claim Number (system-derived)
    - Period 2 Start Date (system-derived)
    - Period 2 End Date (system-derived or user-entered)
    - Future # of Weeks (user-entered, integer, max 52)
    - Estimated Weekly Payment Amount (user-entered or system-calculated)
    - Total Estimated Period 2 Payment (system-calculated: $Estimated\ Weekly\ Payment \times Future\ \#\ of\ Weeks$)
    - Comments/Notes (user-entered, optional)
- "Future # of Weeks" must be validated not to exceed 52.
- All fields must be available for reporting and audit.
- Data entry must be restricted to authorised EPSS claims officers.
- System must prevent saving if validation fails.

---

## 4. Exception Handling

- If "Future # of Weeks" > 52, display error and prevent save.
- If required fields are missing, display error and prevent save.
- If calculation fails (e.g., invalid numeric input), display error and prevent save.
- All validation errors must be clearly described to the user.

---

## 5. Compliance/Controls

- All estimate entries and changes must be audit logged (user, date/time, before/after values).
- Access to estimation tab is restricted to authorised users.
- Data is reportable for compliance and reconciliation.
- Changes to estimates must be tracked for reporting and audit.

---

## 6. References and Linked Requirements

- Cross-references: OLF001–OLF010 (EPSS estimation tab), RPK001–RPL005 (forecast estimate reporting), P1001–P1006 (week counting logic), DOA010/DOA012 (salary derivation for detached officers).

---

## 7. Acceptance Criteria

- [ ] Period 2 estimate section includes all required fields.
- [ ] "Future # of Weeks" cannot exceed 52; validation enforced.
- [ ] Total estimated payment is correctly calculated.
- [ ] All fields are available for reporting and audit.
- [ ] Only authorised users can enter/edit estimates.
- [ ] All changes are audit logged.
- [ ] Error handling is clear and prevents invalid saves.