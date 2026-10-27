# Functional Specification: TR003 — PBRI to EPSS Transitional Claims – Override and Payroll Split Logic

---

## 1. Business Background

The NSW Police Force (NSWPF) is transitioning certain claims from the Police Blue Ribbon Insurance (PBRI) scheme to the Enhanced Police Support Scheme (EPSS). This transition requires OLIMS and SAP Payroll to support manual override of weeks used for Period 1 and days used for Period 2, as well as accurate payroll splits and tracking of pause/commencement dates. This ensures correct benefit period calculations, compliance, and reporting for transitional claims.

---

## 2. Scope

This specification covers:
- OLIMS functionality to support PBRI to EPSS claim transitions.
- Manual override of Period 1 weeks and Period 2 days used.
- Payroll logic for benefit period splits, tracking, and reporting.
- Audit and reporting requirements for overrides and transitions.

---

## 3. Detailed Functional Requirements

- OLIMS must allow claims officers to transition a claim from PBRI to EPSS, recording the transition date and benefit period.
- Claims officers can override the number of weeks used in Period 1 and days used in Period 2 for transitional claims.
- All overrides must be tracked with user, date/time, and reason.
- Payroll must support mid-period splits and proration when transitions or overrides occur, ensuring correct payment and week/day counting.
- OLIMS and payroll must track all pause/commencement dates and ensure no overlapping or gaps in benefit periods.
- All changes must be reflected in reporting and audit logs.

---

## 4. Exception Handling

- If an override or transition is attempted with overlapping or invalid dates, the system must display an error and prevent saving.
- Only one active period selection is allowed at a time; previous selections are not retained as history.
- If payroll split/proration is not technically feasible for a scenario, the system must flag the case for manual review and notify the claims officer.

---

## 5. Compliance/Controls

- All overrides and transitions must be audit logged (user, date/time, reason).
- Access to override and transition functions is restricted to authorised claims officers and managers.
- Reports must be available for monitoring overrides, transitions, and payroll splits.
- All changes must be traceable for compliance and reconciliation.

---

## 6. References and Linked Requirements

Cross-references: TR001, TR002, TR005, TR006, TR011, P1001–P1006, OLIMS “Top-Up / Disab. Date / IP Dates” tab, payroll split logic, reporting requirements.

---

## 7. Acceptance Criteria

- [ ] OLIMS supports PBRI to EPSS transitions with manual override of Period 1 weeks and Period 2 days.
- [ ] Payroll correctly splits and prorates payments/entitlements at transition points.
- [ ] All overrides and transitions are audit logged with required details.
- [ ] Reports reflect overrides, transitions, and payroll splits accurately.
- [ ] Exception handling prevents invalid or overlapping entries.
- [ ] Access controls restrict override/transition functions to authorised users.