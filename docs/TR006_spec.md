# Functional Specification: TR006 — PBRI Transitional Claims Starting in Period 2

---

## 1. Business Background

PBRI (Police Blue Ribbon Insurance) transitional claims refer to cases where an officer transitions from the legacy PBRI scheme to the EPSS (Enhanced Police Support Scheme). For some officers, the transition occurs directly into Period 2 of EPSS, bypassing Period 1. The correct calculation of benefit duration and salary base is critical to ensure fairness and compliance with scheme rules.

---

## 2. Scope

This requirement applies to all PBRI transitional claims that commence EPSS participation in Period 2. It covers the calculation of the reduction from the 7-year Period 2 benefit and the determination of the salary base for Period 2 recurrence.

---

## 3. Detailed Functional Requirements

- The reduction from the 7-year Period 2 EPSS benefit must be based on the actual number of calendar days of prior IP/TAL/PBRI payments, not a fixed value (e.g., 65 days was only an example).
- The system must calculate the exact number of calendar days the officer received IP/TAL/PBRI payments before transitioning to EPSS Period 2.
- The salary for Period 2 recurrence is to be taken as at the day before the P2 recurrence date, using the same wage type definition as standard Period 2 calculations.
- All calculations must use the current wage type list for Period 2 salary, as defined for EPSS.
- The solution must support retroactive adjustments if prior payment days or salary data are updated.

---

## 4. Exception Handling

- If the number of prior IP/TAL/PBRI payment days cannot be determined due to missing data, the system must flag the claim for manual review and prevent automatic calculation.
- If the salary as at the day before the P2 recurrence date is unavailable, the system must prompt for manual entry or escalate to payroll for resolution.

---

## 5. Compliance/Controls

- All calculations and overrides must be auditable, with changes logged and reportable.
- Access to manual overrides or adjustments must be restricted to authorised users.
- Reports must be available to reconcile the number of days offset and the salary base used for each transitional claim.

---

## 6. References and Linked Requirements

Cross-references: TR001, TR002, TR003, TR005, DOA010, DOA012, P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] The system reduces the 7-year Period 2 benefit by the actual number of calendar days of prior IP/TAL/PBRI payments.
- [ ] The salary for Period 2 recurrence is taken as at the day before the P2 recurrence date, using the correct wage type definition.
- [ ] Retroactive changes to prior payment days or salary are reflected in recalculated benefits.
- [ ] Exception cases (missing data) are flagged for manual review.
- [ ] All calculations and changes are logged and reportable.
- [ ] Only authorised users can perform manual overrides or adjustments.