# Functional Specification: DOD001 — Amending the Date of Disablement in OLIMS

---

## 1. Business Background

The Date of Disablement (DOD) is a critical data point in the EPSS scheme, used to determine scheme eligibility, the initial ordinary rate of pay, and the commencement of Period 1 benefits. The DOD is initially set to the status date of the first uploaded WorkCover Certificate (WCCC) in OLIMS. However, business scenarios require claims officers to amend the DOD to reflect the actual date of disablement, which may differ from the initial certificate date due to late advice, certificate order, or changes in incapacity status. Accurate DOD management ensures correct benefit period calculations and payment processing.

---

## 2. Scope

This specification covers the functional requirements for enabling claims officers to amend the Date of Disablement in OLIMS for EPSS claims, including:
- Allowing DOD amendments and retroactive recalculation of Period 1 and 2 dates/payments.
- Maintaining a change log for all DOD amendments.
- Supporting amendments after Period 1 is exhausted.
- Updating OLIMS screens, week count logic, and related reporting.

---

## 3. Detailed Functional Requirements

- OLIMS must allow claims officers to amend the DOD for EPSS claims.
- Amending the DOD must trigger retroactive recalculation of Period 1 and 2 dates and payments.
- A warning must be displayed to review related records when DOD is amended.
- All DOD changes must be recorded in a change log, including record type, date from, date to, active/inactive status, document upload indicator, and description.
- The DOD amendment table must match the fields visible in the “Top-Up / Disab. Date / IP Dates” OLIMS screen.
- Claims officers must be able to display both active and historical DOD records using the inactive flag/filter.
- Amending DOD after Period 1 is exhausted is permitted; OLIMS screens and week count logic must update accordingly.
- Certificates are uploaded by commands, not by SS or EPSS case officers.

---

## 4. Exception Handling

- If a DOD amendment would result in a conflict with existing benefit periods or payment records, OLIMS must display an error and prevent the change.
- If supporting documentation is not uploaded when required, OLIMS must prompt the user to attach the necessary document.
- Any failed recalculation or system error during DOD amendment must be logged and reported to the system administrator.

---

## 5. Compliance/Controls

- All DOD amendments and related payroll impacts must be audit logged.
- Access to amend DOD is restricted to authorised claims officers.
- The change log must be reportable for compliance and reconciliation.
- Document upload fields must indicate if supporting evidence (e.g., medical certificate) is attached.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic.
- OLIMS “Top-Up / Disab. Date / IP Dates” screen.
- Meeting minutes: min.md, min_a.md (2026-01-27).

---

## 7. Acceptance Criteria

- [ ] Claims officers can amend the DOD in OLIMS for EPSS claims.
- [ ] DOD amendments trigger retroactive recalculation of Period 1 and 2 dates/payments.
- [ ] A change log records all DOD amendments with required fields.
- [ ] OLIMS displays both active and historical DOD records.
- [ ] Amendments after Period 1 exhaustion are supported and update week count logic.
- [ ] System prevents DOD changes that conflict with existing benefit periods/payments.
- [ ] All changes are audit logged and reportable for compliance.