# Functional Specification: TR011 — PBRI Base Salary Adjustment Wagetype

---

## 1. Business Background

The transition from the Police Blue Ribbon Insurance (PBRI) scheme to the Enhanced Police Support Scheme (EPSS) requires accurate handling of retroactive salary adjustments for officers whose claims move from PBRI to EPSS. Retro adjustments to the PBRI base salary (wagetype 4909) must be processed and reported correctly, ensuring compliance and transparency for both payroll and scheme reporting.

---

## 2. Scope

This specification covers the creation and implementation of a new manual adjustment wagetype for PBRI Base Salary Adjustment. The wagetype will be used for retro adjustments to WT 4909, with incident linkage for reporting derived from 9WCO unless otherwise recorded. The scope includes wagetype definition, data entry, reporting, and audit requirements.

---

## 3. Detailed Functional Requirements

- A new manual adjustment wagetype must be created for PBRI Base Salary Adjustment (for retro adjustments to WT 4909).
- The wagetype must be available for manual entry by authorised payroll officers.
- The wagetype must allow entry of adjustment amount, effective date, and incident number.
- Incident linkage for reporting should be derived from 9WCO unless otherwise recorded.
- The wagetype must be included in all relevant payroll and scheme reports.
- Action: Obtain and attach the completed wagetype maintenance form for this new adjustment wagetype.

---

## 4. Exception Handling

- If the incident number is not provided, the system must attempt to derive it from 9WCO.
- If neither is available, the entry must be flagged for review and not processed until resolved.
- Manual entries must be validated for duplicate or conflicting adjustments within the same pay period.

---

## 5. Compliance/Controls

- All manual adjustments must be audit logged, including user, date/time, and reason for adjustment.
- Only authorised payroll officers may enter or approve adjustments.
- Adjustment entries must be reportable for reconciliation and compliance checks.
- GL posting and tax treatment must follow the details in the wagetype maintenance form (to be provided).

---

## 6. References and Linked Requirements

- Cross-references: TR001, TR003, TR009A, DOB001-DOB005, P905 retro logic.
- Refer to the wagetype maintenance form and “ORP WT list” for configuration details.

---

## 7. Acceptance Criteria

- [ ] New wagetype is created and available for manual entry.
- [ ] Adjustment entries require incident linkage (direct or via 9WCO).
- [ ] All adjustments are audit logged and reportable.
- [ ] Only authorised users can enter/approve adjustments.
- [ ] GL posting and tax treatment match the approved wagetype maintenance form.
- [ ] All requirements above are tested and signed off by business and payroll teams.