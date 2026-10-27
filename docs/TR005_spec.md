# Functional Specification: TR005 — Manual Adjustment of Period 1 Week Count for PBRI Transitional Claims

---

## 1. Business Background

PBRI transitional claims require accurate tracking of benefit periods when transitioning from the Police Blue Ribbon Insurance (PBRI) scheme to the Enhanced Police Support Scheme (EPSS). For these claims, the number of weeks used in Period 1 may not align with system-calculated values due to historical complexities, partial weeks, or manual corrections. To ensure correct benefit entitlements and compliance, OLIMS must support manual adjustment (override) of the Period 1 week count for PBRI transitional claims.

---

## 2. Scope

This requirement applies to all PBRI transitional claims managed in OLIMS where the Period 1 week count must be manually adjusted. It covers:
- UI and backend changes in OLIMS to allow manual override of Period 1 weeks used.
- Ensuring payroll and reporting logic reflect the adjusted week count.
- Tracking and auditability of all manual adjustments and their impact on benefit period transitions.

---

## 3. Detailed Functional Requirements

- OLIMS must provide a field for claims officers to manually enter or override the Period 1 week count for PBRI transitional claims.
- The manual week count must be used in all calculations of remaining Period 1 entitlement and transition to Period 2.
- Any manual adjustment must be logged with user, date/time, and reason for audit purposes.
- Payroll logic must reference the overridden week count for payment calculations and period transitions.
- Reports must display both the original system-calculated and manually adjusted week counts, with clear indication of overrides.
- The system must prevent negative or illogical values (e.g., week count cannot exceed maximum allowed or be less than zero).
- Any pauses or splits in benefit periods must be tracked and reflected in both the UI and reporting.

---

## 4. Exception Handling

- If a manual week count is entered that exceeds the maximum allowable for Period 1, the system must display an error and prevent saving.
- If a manual adjustment is attempted without a required reason, the system must prompt the user to enter a reason.
- If payroll or reporting cannot process the override due to technical issues, an error must be logged and the claims officer notified.

---

## 5. Compliance/Controls

- All manual adjustments must be audit logged (user, date/time, old value, new value, reason).
- Only authorised users (claims officers, supervisors) may perform manual overrides.
- Reports must support reconciliation of manual adjustments for compliance and scheme reporting.
- Changes must be visible in the Document Overview and audit logs for review.

---

## 6. References and Linked Requirements

- Cross-references: TR001, TR002, TR003, TR004, TR011, P1001–P1006, RPF003, RPF005, RPE001–RPE004, OLIMS audit/reporting requirements.
- See also: PBRI to EPSS transition logic, week counting rules, and payroll split handling.

---

## 7. Acceptance Criteria

- [ ] OLIMS UI allows manual entry/override of Period 1 week count for PBRI transitional claims.
- [ ] Manual overrides are reflected in all benefit calculations, payroll, and reports.
- [ ] All manual adjustments are audit logged with user, timestamp, and reason.
- [ ] System prevents invalid week counts and enforces required fields.
- [ ] Reports display both original and overridden week counts, with override indicator.
- [ ] Only authorised users can perform overrides.
- [ ] Exception handling and error messages are implemented as specified.
- [ ] Compliance and audit requirements are met.