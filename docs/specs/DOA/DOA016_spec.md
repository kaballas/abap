# Functional Specification: DOA016 — Detached Officer Indexation of Period 2 and 3 Entitlements

---

## 1. Business Background

Detached officers (former police officers exited on medical grounds) remain eligible for EPSS benefits under certain conditions. After termination, their entitlements for Period 2 and Period 3 must be maintained in line with scheme rules. The business requires clarity and automation for indexation of these entitlements, ensuring fairness and compliance with policy.

---

## 2. Scope

This specification covers the rules and system changes required to ensure that detached officers receive indexation (CPI or equivalent) on both:
- The 75% of loaded salary for Period 2 and Period 3, and
- The maximum monthly benefit amount,
after their termination date. It excludes pay scale/Award increases post-termination.

---

## 3. Detailed Functional Requirements

- Detached officers’ Period 2 and Period 3 entitlements must be indexed annually by the approved indexation rate (e.g., CPI), as determined by business policy.
- Indexation applies to:
    - The 75% of loaded salary (as calculated at the end of Period 1, based on the last active IT0008 record).
    - The maximum monthly benefit amount.
- No Award pay scale increases are to be applied after the officer’s termination date.
- Any retrospective salary changes (e.g., backdated increments) that relate to the period of employment must be processed, but only up to the termination date.
- The system must clearly distinguish between indexation and pay scale increases for detached officers.
- Indexation must be applied automatically each year on the effective date, with the indexed value used for all subsequent Period 2 and 3 calculations.
- All indexation calculations and effective dates must be auditable and reportable.

---

## 4. Exception Handling

- If indexation rates are not available by the scheduled update date, the previous year’s rate will be used until updated.
- If a retrospective salary change is entered after termination, it must only affect entitlements up to the termination date.
- Any attempt to apply Award pay scale increases to a detached officer after termination must be blocked and logged as an error.

---

## 5. Compliance/Controls

- All indexation updates must be logged with user, date, and applied rate.
- Changes must be reportable for audit and reconciliation.
- Access to override or manually adjust indexation for detached officers must be restricted to authorised payroll administrators.
- All calculations must be traceable for compliance with payroll and OLIMS access controls.

---

## 6. References and Linked Requirements

- DOA010: Salary source for detached officers
- DOA012: Exclusion of Award pay increases post-termination
- DOB001–DOB005: Workers compensation payment upload for detached officers
- P905 retro logic
- Open Items: Finalisation of indexation constant (see Open Items to finalise deployment of deferred Phase 4 items)

---

## 7. Acceptance Criteria

- [ ] Detached officers’ Period 2 and 3 entitlements are indexed annually by the approved rate.
- [ ] No Award pay scale increases are applied after termination.
- [ ] Retrospective salary changes only affect entitlements up to termination.
- [ ] Indexation is applied automatically and is auditable.
- [ ] All calculations and updates are reportable and compliant with payroll controls.
- [ ] Exception handling is implemented as specified.
- [ ] Access controls for indexation overrides are enforced.