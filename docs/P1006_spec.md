# Functional Specification: P1006 — Clarification of "Days of Partial Incapacity" and $1 EPSS Payment Requirement for Week Counting

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires precise week counting logic for Period 1 payments. There is ambiguity regarding how "days of partial incapacity" are defined and whether a minimum EPSS payment (e.g., $1) is required for a week to be counted when partial incapacity applies. This specification addresses the need for clear, auditable rules to ensure consistent week counting and compliance with scheme policy.

---

## 2. Scope

This specification covers:
- The definition of "days of partial incapacity" for EPSS Period 1 week counting.
- The rule for whether a $1 EPSS payment is required for a week to be counted under partial incapacity.
- System and payroll logic changes to support the clarified rule.
- Excludes changes to S36/S37 (total incapacity) week counting, which are covered elsewhere.

---

## 3. Detailed Functional Requirements

- "Days of partial incapacity" are defined as any calendar day(s) within a 7-day week where the officer is certified as partially incapacitated (not fit for pre-injury duties, but not totally incapacitated).
- For a week to be counted as a Period 1 week under partial incapacity, the system must confirm that at least $1 of EPSS payment has been made for that week.
- If no EPSS payment is made in a week where only partial incapacity applies, that week is not counted towards the 39-week Period 1 entitlement.
- The system must apply this rule consistently, regardless of pay cycle alignment.
- The logic must be auditable and reportable for compliance and scheme reporting.

---

## 4. Exception Handling

- If a week contains both total incapacity (S36/S37) and partial incapacity days, the week counting logic for S36/S37 takes precedence (see P1004).
- If a technical or data error prevents determination of payment or incapacity status, the system must flag the week for manual review and exclude it from automatic week counting until resolved.

---

## 5. Compliance/Controls

- All week counting decisions and payment thresholds must be logged for audit.
- Reports must be able to show, for each week, the incapacity status, payment made, and whether the week was counted.
- Manual overrides must be restricted and require justification and audit logging.

---

## 6. References and Linked Requirements

- Cross-references: P1001–P1005 (week counting logic), S36/S37 logic, OLIMS week counting reports, payroll calculation modules.
- Related meeting notes: min_a.md (27 Jan 2026), DTT queries (SM, DK).

---

## 7. Acceptance Criteria

- [ ] "Days of partial incapacity" are clearly defined in system documentation.
- [ ] System only counts a week with partial incapacity if at least $1 EPSS payment is made.
- [ ] Weeks with no EPSS payment under partial incapacity are not counted.
- [ ] Exception weeks are flagged for manual review.
- [ ] Audit logs and reports reflect week counting decisions and payment status.
- [ ] Manual overrides are restricted and auditable.