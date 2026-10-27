# Functional Specification: OLF008 — Forecast Estimate Roll-Up Logic

---

## 1. Business Background

The EPSS scheme requires accurate forecasting of future benefit payments for financial planning, reporting, and recoupment with icare. OLIMS provides an estimation tab where claims officers enter forecasted values for each benefit period (Period 1, 2, 3) per incident. There is a need to clarify whether the system must roll up (aggregate) total estimates per benefit period for each forecasted quarter, and if this roll-up is required in OLIMS, the icare recoup report, or both.

---

## 2. Scope

This requirement covers the logic for rolling up total forecast estimates per benefit period for each forecasted quarter. It defines where the roll-up is required (OLIMS, icare recoup report, or both), the inclusion of Period 3 estimates, and the minimum reporting requirement.

---

## 3. Detailed Functional Requirements

- The system must support aggregation (roll-up) of forecasted estimates per benefit period (P1, P2, P3) for each forecasted quarter.
- The roll-up logic must be implemented in both the OLIMS online forecast estimation tab and the icare recoup report.
- Period 3 estimates must be included in the roll-up for reporting purposes.
- The roll-up must sum all individual estimates for each benefit period and quarter, grouped by incident and claim number.
- The minimum requirement is that the icare recoup report includes the rolled-up totals for each benefit period and quarter, even if OLIMS online display is not enhanced.
- All relevant fields (e.g., incident number, claim number, benefit period, quarter, forecasted amount, forecasted weeks) must be included in the roll-up output.

---

## 4. Exception Handling

- If no estimates exist for a benefit period in a given quarter, the roll-up must display zero for that period/quarter.
- If Period 3 estimates are not entered, the roll-up must still display a placeholder (zero or blank as per OLF003).
- Any data entry errors or missing required fields must trigger a validation error and prevent roll-up calculation until resolved.

---

## 5. Compliance/Controls

- All roll-up calculations must be auditable, with a record of the user, date, and source of each estimate included in the roll-up.
- Access to roll-up reports must be restricted to authorised claims officers and reporting users.
- Roll-up data must be included in monthly extracts for reconciliation and reporting to icare and internal stakeholders.

---

## 6. References and Linked Requirements

- OLF001–OLF007: Estimation tab data entry, calculation, and reporting logic
- OLF009: Mapping of OLIMS estimate fields to icare recoup report
- OLF010: Technical platform for forecast report (OLIMS vs SAP)
- RPK001–RPK004, RPL001–RPL005: Forecast estimate reporting requirements
- icare recoup report specification

---

## 7. Acceptance Criteria

- [ ] Roll-up of forecasted estimates per benefit period and quarter is implemented in the icare recoup report.
- [ ] Period 3 estimates are included in the roll-up output.
- [ ] OLIMS online forecast tab displays rolled-up totals per benefit period and quarter (if in scope).
- [ ] Roll-up displays zero or blank for periods/quarters with no estimates.
- [ ] All required fields are present in the roll-up output.
- [ ] Exception handling and validation are in place for missing or invalid data.
- [ ] Roll-up data is included in compliance and reconciliation extracts.
- [ ] Access controls and audit trails are implemented for roll-up calculations and reports.