# Functional Specification: P1004 — Partial Week Counting for Period 1 (EPSS)

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) provides supplementary support payments to eligible NSW Police Force officers. Accurate week counting in Period 1 is critical for determining benefit duration and transition to subsequent periods. There is ambiguity regarding how partial weeks—where days of total incapacity (e.g., S36/S37) do not cover the full week—should be counted for Period 1. This specification clarifies the rules and calculation method for partial week counting to ensure compliance, fairness, and system consistency.

---

## 2. Scope

This requirement applies to the calculation of Period 1 week counts in the EPSS solution, specifically addressing scenarios where an officer is totally incapacitated for less than a full 7-day week. It covers all EPSS-eligible officers and applies to all relevant SAP/OLIMS processes, reporting, and payroll logic.

---

## 3. Detailed Functional Requirements

- The system must define and implement explicit rules for counting partial weeks in Period 1 when an officer is totally incapacitated (S36/S37) for less than 7 days.
- The following options must be considered and one selected by the business:
    - **Option A:** Any week with at least 1 day of total incapacity counts as a full week.
    - **Option B:** Only weeks with 7 days of total incapacity count as a full week; partial weeks are not counted.
    - **Option C:** Weeks are counted proportionally (e.g., 3 out of 7 days = 0.43 weeks), with rounding rules defined (up, down, or nearest).
- The selected rule must be applied consistently in all week counting, reporting, and payroll calculations.
- The system must support worked examples in documentation and user training.
- The logic must be configurable to allow future policy changes if required.

---

## 4. Exception Handling

- If incapacity days overlap with other leave types or payment suspensions, the system must apply the week counting rule only to eligible days.
- If input data is incomplete (e.g., missing certificate dates), the system must flag the record for manual review and exclude it from automated week counting until resolved.
- If the calculated week count results in a non-integer value, the system must apply the agreed rounding rule and log the calculation for audit.

---

## 5. Compliance/Controls

- All week counting calculations must be auditable, with a clear record of input days, calculation method, and resulting week count.
- Changes to week counting logic or rounding rules must be controlled via configuration and require appropriate approval.
- Reports must be available to reconcile counted weeks against incapacity days and payment records.

---

## 6. References and Linked Requirements

- Cross-references: P1001 (week counting start), P1002 (mid-week proration), P1003 (period transition), P1005–P1006 (partial incapacity), min_a.md (27 Jan 2026 meeting transcript), OLIMS/SAP design documentation.

---

## 7. Acceptance Criteria

- [ ] The system implements the agreed partial week counting rule for Period 1 (Option A, B, or C).
- [ ] Rounding logic is applied as specified and documented.
- [ ] All calculations are auditable and traceable in reports.
- [ ] Exception scenarios (e.g., incomplete data, overlapping leave) are handled as specified.
- [ ] User documentation includes worked examples for partial week counting.
- [ ] Configuration allows for future changes to week counting logic without code changes.