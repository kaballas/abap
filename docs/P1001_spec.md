# Functional Specification: P1001 — Period 1 Week Counting Logic

---

## 1. Business Background

The EPSS scheme requires accurate calculation of Period 1 (P1) benefit entitlements for eligible police officers. Historically, P1 week counting was aligned to the pay cycle, which led to underpayments and misalignment with the intended 39 calendar weeks of support. Recent business decisions require week counting to start from the first date of incapacity, using 7-day blocks, regardless of pay cycle alignment.

---

## 2. Scope

This specification covers the system, payroll, and reporting changes required to implement the new P1 week counting logic:
- Week counting starts from the first date of incapacity, in 7-day blocks.
- Counting is not aligned to pay cycles.
- Any payment in a week (even $1) counts as a week.
- Weeks may also count if no payment is made, depending on incapacity status.
- Transition to Period 2 must occur immediately after the actual end date of Period 1, even if this falls mid-pay cycle.
- Payroll logic must support mid-period splits and proration for partial weeks.

---

## 3. Detailed Functional Requirements

- The system must calculate P1 weeks from the first date of incapacity, in 7-day increments, independent of pay cycle boundaries.
- Any payment within a 7-day period (even partial, e.g., $1) counts as a week for payment purposes.
- Weeks may count even if no payment is made, provided the officer is unfit (e.g., on PID or total incapacity).
- If the end date of P1 falls mid-pay week, proration of payments must be applied using the formula:  
  $$
  \text{Prorated Payment} = \frac{\text{Number of Eligible Days}}{7} \times \text{Weekly Entitlement}
  $$
- Payroll logic must support mid-period splits (e.g., via IT0027) to enable correct transition between periods.
- The system must allow for multiple suspension periods, with no overlapping or gaps, and track active/inactive status for audit.
- Reporting must reflect actual weeks counted, including partial weeks and retroactive adjustments.
- All changes must be auditable, with clear traceability to the source of week counting logic.

---

## 4. Exception Handling

- If incapacity starts mid-pay cycle, the system must not delay week counting to the next pay cycle.
- If a week contains both paid and unpaid days, the week is counted if any payment is made or if incapacity status warrants it.
- If payroll cannot split mid-period due to technical constraints, the system must flag the case for manual review and adjustment.
- Any discrepancies between system-calculated and manually adjusted week counts must be logged and reported.

---

## 5. Compliance/Controls

- All week counting and payment calculations must be traceable and auditable.
- Changes must comply with payroll controls and OLIMS access policies.
- Reporting and reconciliation processes must be updated to reflect the new week counting logic.
- Retrospective recalculations must be controlled and documented.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic, P1002–P1006
- Meeting transcript: min_a.md (27 Jan 2026)
- [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] P1 week counting starts from the first date of incapacity, in 7-day blocks, not pay cycle-aligned.
- [ ] Any payment in a week (even $1) counts as a week.
- [ ] Weeks may count if no payment is made, based on incapacity status.
- [ ] Proration is applied for P1 end dates falling mid-pay week, using the documented formula.
- [ ] Payroll supports mid-period splits and correct period transitions.
- [ ] All week counting and payment calculations are auditable and traceable.
- [ ] Reports accurately reflect actual weeks counted, including partial and retroactive adjustments.
- [ ] Exception cases are flagged and logged for manual review.
- [ ] All changes are compliant with payroll controls and OLIMS access policies.