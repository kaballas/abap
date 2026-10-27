# Functional Specification: OLG002 — Weekly Ordinary Rate of Pay Calculation

---

## 1. Business Background

The EPSS scheme requires accurate calculation and display of the Ordinary Rate of Pay (ORP) for Period 1 supplementary support payments. The business has clarified that the weekly ORP must be derived from the annual amount using a specific divisor to ensure consistency and compliance with regulatory requirements.

---

## 2. Scope

This specification covers the calculation and display of the weekly ORP value in the OLIMS EPSS Case Management module. It applies to all Period 1 claims and excludes any manual override or adjustment functionality for ORP.

---

## 3. Detailed Functional Requirements

- The weekly ORP value must be calculated as:
  $$
  \text{Weekly ORP} = \frac{\text{Annual ORP}}{52.17858}
  $$
- The annual ORP is sourced from SAP HR InfoType 0008 (Basic Pay) and must use only the wagetypes listed in the authoritative “ORP WT list”.
- OLIMS must display the calculated weekly ORP value in the relevant EPSS Case Management screens.
- No manual override or adjustment of the ORP value is permitted (see OLG003/1PA003).
- The calculation logic must be clearly documented in the OLIMS requirements and user help.

---

## 4. Exception Handling

- If the annual ORP value is missing or invalid, OLIMS must display a clear error message and prevent calculation.
- If the “ORP WT list” is not available, flag the calculation as [TBC] and notify the system administrator.

---

## 5. Compliance/Controls

- Calculation must be based solely on SAP IT0008 values and the finalised “ORP WT list”.
- All changes to the calculation method must be approved by HSWC and documented.
- Audit logs must record any changes to the source ORP values or calculation logic.

---

## 6. References and Linked Requirements

- Cross-references: 1PA001, 1PA002, OLG001, OLG003, OLG004, OLG005, OLG006, P1001–P1006
- BRD4_Phase 4_Requirements Notes.xlsx
- [OLG002 feedback, 2026-01-27]

---

## 7. Acceptance Criteria

- [ ] Weekly ORP is calculated as annual amount divided by 52.17858.
- [ ] Only SAP IT0008 values and the “ORP WT list” are used.
- [ ] No manual override/adjustment is possible in OLIMS.
- [ ] Error handling is in place for missing/invalid annual ORP.
- [ ] Calculation logic is documented and visible to users.
- [ ] Audit logs capture changes to source values and logic.