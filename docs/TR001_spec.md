# Functional Specification: TR001 — PBRI Transitional Claims Management

---

## 1. Business Background

The NSW Police Force (NSWPF) is transitioning from the Police Blue Ribbon Insurance (PBRI) scheme to the Enhanced Police Support Scheme (EPSS). Some officers with existing PBRI claims will transition into EPSS, requiring accurate management of benefit period transitions, week/day offsets, and payroll adjustments. This ensures fair and compliant entitlements for officers and supports scheme reporting and auditability.

---

## 2. Scope

This specification covers the functional requirements for managing PBRI transitional claims in OLIMS and SAP, including:
- Offsetting PBRI weeks/days from EPSS entitlements
- Manual override of transition weeks/days
- Payroll logic for benefit period splits and retroactive adjustments
- Audit and reporting of transitions and overrides

---

## 3. Detailed Functional Requirements

- OLIMS must allow entry and override of PBRI weeks used (Period 1) and days used (Period 2) for transitional claims.
- Transition logic and overrides are implemented in the “Top-Up / Disab. Date / IP Dates” tab.
- Payroll must support retroactive splits and correct benefit period transitions based on overrides.
- For claims starting in Period 2, a new OLIMS screen records the recurrence date and PBRI days to offset from the 7-year entitlement.
- Only the latest period selection is valid; history of changes is not required.
- Adjustments and external earnings must be linked to the relevant incident and paid only if overlapping.
- A new manual adjustment wagetype is required for PBRI Base Salary Adjustment (retro to WT 4909).
- Reporting must include both original and detached officer employee numbers, recurrence info, and transition details.

---

## 4. Exception Handling

- If transition overrides are missing or invalid, the system must flag the claim for review and prevent payroll processing until resolved.
- Errors in week/day offsets or recurrence dates must trigger user alerts and require correction before proceeding.
- Only one period selection is valid at any time; conflicting entries are rejected.

---

## 5. Compliance/Controls

- All overrides and transitions are audit-logged, including user, date/time, and reason.
- Reports must be available for monitoring overrides, transitions, and manual adjustments.
- Access to override and transition functions is restricted to authorised roles.
- All adjustments must be linked to incidents for traceability.

---

## 6. References and Linked Requirements

Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic, TR002–TR013.

---

## 7. Acceptance Criteria

- [ ] OLIMS supports entry and override of PBRI weeks/days for transitional claims.
- [ ] Payroll correctly splits benefit periods and processes retroactive adjustments.
- [ ] Only one period selection is valid per claim; history is not retained.
- [ ] All overrides and transitions are audit-logged and reportable.
- [ ] Manual adjustment wagetype for PBRI Base Salary Adjustment is implemented.
- [ ] Reports include required fields for both original and detached officers.
- [ ] Exception handling prevents processing on invalid or missing data.
- [ ] Access controls and compliance requirements are met.