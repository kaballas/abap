# Functional Specification: P1002 — Period 1 Proration and Payroll Splitting

---

## 1. Business Background

The EPSS scheme requires precise calculation of Period 1 (P1) payments and week counting. When the end date of P1 falls mid-pay week, the system must accurately prorate payments and, if required, split payroll periods to ensure compliance with business rules and legislative requirements. This is critical for correct benefit calculation, reporting, and auditability.

---

## 2. Scope

This specification covers the definition, calculation, and implementation of proration for P1 payments when the period ends mid-pay week. It also addresses the requirement for payroll splitting (e.g., via SAP IT0027) to support this scenario. The scope includes system logic, calculation formula, reporting, and any dependencies on payroll configuration.

---

## 3. Detailed Functional Requirements

- When the P1 end date falls within a pay period (not aligned to the pay cycle end), the system must:
    - Calculate the P1 payment up to the actual end date using a daily proration formula.
    - Calculate the P2 payment (or other subsequent entitlement) from the day after the P1 end date.
    - If payroll splitting is enabled (e.g., via IT0027), generate two payroll segments within the same pay period: one for P1 and one for P2.
    - If payroll splitting is not available, document the limitation and provide a workaround (e.g., manual adjustment).
- The proration formula for P1 payment is:
    $$
    \text{P1 Payment} = \text{Weekly P1 Rate} \times \frac{\text{Number of P1 Days in Pay Period}}{7}
    $$
- The system must ensure that week counting and payment reporting reflect the actual days paid in P1 and P2 for the affected pay period.
- All calculations and splits must be visible in payroll results and reporting.

---

## 4. Exception Handling

- If payroll splitting is not technically feasible, the system must:
    - Flag the affected pay period for manual review.
    - Generate an alert for payroll/claims officers to process a manual adjustment.
- If proration results in a calculated payment below the minimum threshold (e.g., less than $1), the system must round according to business rules and document the rounding logic.
- Any errors in date alignment or calculation must be logged and reported for correction before payroll is finalized.

---

## 5. Compliance/Controls

- All proration and payroll split logic must comply with payroll audit requirements and be traceable in SAP payroll logs.
- Access to override or manually adjust proration must be restricted to authorized payroll or claims officers.
- All changes must be auditable, with user, date, and reason captured.
- Reporting must support reconciliation of proration and split payments for compliance and financial control.

---

## 6. References and Linked Requirements

- Cross-references: P1001 (week counting logic), P1003 (P2 commencement), DOA010, DOA012, RPE001–RPE004 (detailed payment reporting), SAP IT0027 documentation.
- See meeting transcript min_a.md (27 Jan 2026) for business context.

---

## 7. Acceptance Criteria

- [ ] System calculates and pays P1 up to the actual end date when it falls mid-pay week.
- [ ] Proration formula is implemented as specified and matches business calculation examples.
- [ ] Payroll splits are generated within the pay period if supported by system configuration.
- [ ] All proration and splits are visible in payroll results and reports.
- [ ] Exception handling is in place for unsupported scenarios, with alerts and manual adjustment workflow.
- [ ] All changes are auditable and comply with payroll controls.
- [ ] Acceptance test cases cover all proration and split scenarios, including edge cases and error handling.