# Functional Specification: P1005 — Clarification of "Days of Partial Incapacity" and Week Counting for Period 1

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires precise week counting logic for Period 1 payments. There is ambiguity regarding how "days of partial incapacity" are defined and whether a minimum payment (e.g., $1) is required for a week to be counted, especially for sections other than S36/S37. This specification clarifies the business rules for week counting in cases of partial incapacity.

---

## 2. Scope

This specification covers:
- The definition of "days of partial incapacity" for EPSS Period 1 week counting.
- The payment threshold required for a week to be counted (e.g., $1 EPSS payment).
- Section-specific rules for week counting (excluding S36/S37).
- System and payroll logic updates to support these rules.

---

## 3. Detailed Functional Requirements

- "Days of partial incapacity" are defined as any day(s) within a 7-day period where the officer is certified as partially incapacitated (not fit for full pre-injury duties).
- For a week to be counted towards the 39-week Period 1 entitlement (excluding S36/S37), there must be at least a $1 EPSS payment made in that week.
- If no EPSS payment is made in a week (and the officer is not under S36/S37), the week is not counted.
- The system must apply these rules consistently, regardless of pay cycle alignment.
- Section S36/S37 week counting logic remains as previously defined and is not affected by this requirement.

---

## 4. Exception Handling

- If a week contains both S36/S37 and partial incapacity days, apply the S36/S37 logic for week counting.
- If a payment is reversed or adjusted retroactively, recalculate week counting based on the final payment status.
- If business rules change, update the logic and recalculate affected periods as directed.

---

## 5. Compliance/Controls

- All week counting and payment logic must be auditable.
- Changes to week counting rules must be documented and traceable.
- Reporting must allow verification of counted weeks and payment thresholds.

---

## 6. References and Linked Requirements

- Cross-references: P1001–P1006, min_a.md (27 Jan 2026), DTT queries, OLIMS/SAP week counting logic.
- Related requirements: S36/S37 week counting, Period 1 payment proration (P1002), retro recalculation logic.

---

## 7. Acceptance Criteria

- [ ] "Days of partial incapacity" are clearly defined in system documentation.
- [ ] System only counts a week if at least $1 EPSS payment is made (excluding S36/S37).
- [ ] Section-specific logic is implemented as described.
- [ ] Exception handling is tested and documented.
- [ ] Audit and reporting confirm correct week counting and payment thresholds.
- [ ] All business and technical stakeholders sign off on the implemented logic.