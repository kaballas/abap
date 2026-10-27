# Functional Specification: P1003 — Period 2 Must Commence Immediately After Actual End Date of Period 1

---

## 1. Business Background

The EPSS scheme requires precise alignment between benefit periods to ensure correct entitlements and compliance. Historically, transitions between Period 1 and Period 2 were aligned to pay cycles, which could result in over- or under-payments. The business has clarified that Period 2 must commence immediately after the actual end date of Period 1, even if this falls mid-pay cycle, to ensure accurate benefit calculation and compliance with scheme rules.

---

## 2. Scope

This requirement covers the system, payroll, and reporting changes needed to ensure that Period 2 EPSS payments and week counting commence immediately after the actual end date of Period 1, regardless of pay cycle alignment. It includes support for mid-period splits (e.g., via IT0027) and impacts all EPSS participants transitioning from Period 1 to Period 2.

---

## 3. Detailed Functional Requirements

- The system must detect the actual end date of Period 1 for each claim.
- Period 2 must commence on the calendar day immediately following the Period 1 end date, even if this is not the start of a pay period.
- Payroll logic must support mid-period splits (e.g., using IT0027) to enable correct proration of payments for both periods within the same pay cycle.
- Week counting and payment calculations for Period 2 must begin from the correct date, with no gap or overlap.
- All relevant reports must reflect the actual transition date and split payments accordingly.

---

## 4. Exception Handling

- If the actual end date of Period 1 is not available or is in the future, the system must not commence Period 2 payments.
- If payroll split logic cannot be applied due to technical constraints, the system must flag the case for manual review and notify payroll administrators.
- Any discrepancies between calculated and actual transition dates must be logged and reported for audit.

---

## 5. Compliance/Controls

- All transitions must be auditable, with a record of the actual end date of Period 1 and the start date of Period 2.
- Payroll controls must ensure that no double payments or gaps occur during the transition.
- Reports must support reconciliation of split payments and week counts across periods.

---

## 6. References and Linked Requirements

Cross-references: P1001 (week counting logic), P1002 (proration for mid-week transitions), DOA010, DOA012, P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] Period 2 always commences the day after Period 1 ends, regardless of pay cycle.
- [ ] Payroll supports mid-period splits and correct proration for both periods.
- [ ] Reports accurately reflect transition dates and payment splits.
- [ ] Exception cases are flagged and auditable.
- [ ] No double payments or gaps occur at the transition point.