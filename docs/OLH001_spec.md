# Functional Specification: OLH001 — EPSS Claim Closure Sub-Reasons

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires improved scheme-wide reporting to measure cost, performance, and fairness. When an EPSS claim is closed for an On Duty injury, additional sub-reasons must be captured to provide transparency and support compliance, audit, and operational reporting.

---

## 2. Scope

This specification covers the requirement for OLIMS to capture, store, and report additional sub-reasons when an EPSS claim status is set to ‘closed’ for On Duty injuries. It includes the configuration of sub-reasons, audit of overrides, and reporting requirements.

---

## 3. Detailed Functional Requirements

- When an EPSS claim status is set to ‘closed’ for On Duty injuries in OLIMS, the user must select a sub-reason from the following list:
    - WC Claim Closed
    - Non-Compliance of WC Obligations
    - Returned PID
    - Reached retirement age
    - Work Injury Damages (WID)
    - Dismissed S181D
    - Removed S80(3)
    - Appointment as a Police Officer ceased
    - Convicted of Criminal Offence
    - Serving custodial sentence
    - Death
    - Disputed Claim
    - Not in receipt of workers compensation weekly benefits
    - Resigned
    - Other – with free text entry
- Sub-reasons must be mandatory for claim closure and selectable in OLIMS.
- All sub-reasons must be included in relevant OLIMS reports.
- Any change (override) to the reason code or sub-reason after initial entry must be audited.
- A report must be available in OLIMS to monitor and quality-assure all overrides.

---

## 4. Exception Handling

- If a user selects “Other,” a free text field must be provided and required.
- If a sub-reason is not selected, the system must prevent claim closure and display an error.
- All override actions must be logged with user, date/time, and previous/new values.

---

## 5. Compliance/Controls

- All sub-reason selections and overrides are audit-logged.
- Reports on claim closures and overrides are available for compliance and reconciliation.
- Access to override sub-reasons is restricted to authorised roles.

---

## 6. References and Linked Requirements

Cross-references: OLH002, OLH003, RPP001 (Document Overview), RPE001 (Detailed EPSS Payment Report), P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] OLIMS requires a sub-reason to be selected for every EPSS On Duty claim closure.
- [ ] All sub-reasons listed above are available and selectable.
- [ ] “Other” sub-reason requires free text entry.
- [ ] System prevents closure if sub-reason is not selected.
- [ ] All sub-reason selections and overrides are audit-logged.
- [ ] Override report is available and includes all required fields.
- [ ] Only authorised users can override sub-reasons.
- [ ] Sub-reasons are included in all relevant OLIMS reports.