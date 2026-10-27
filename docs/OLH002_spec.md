# Functional Specification: OLH002 — EPSS Claim Closure Sub-Reasons in OLIMS

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires detailed scheme-wide reporting on claim closures to measure cost, performance, and fairness. For On Duty injury claims, capturing specific sub-reasons for claim closure is essential for compliance, transparency, and operational analysis. OLIMS must support the recording and reporting of these sub-reasons.

---

## 2. Scope

This specification covers the configuration, display, data entry, and reporting of EPSS claim closure sub-reasons in OLIMS for On Duty injuries. It ensures all required sub-reasons are available, selectable, and reportable, and that changes (overrides) are audited.

---

## 3. Detailed Functional Requirements

- OLIMS must present the following sub-reasons when an EPSS On Duty claim status is set to ‘closed’:
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
  - Other – with free text
- The sub-reason list must match the business requirement exactly; none may be omitted.
- Sub-reasons must be selectable in OLIMS and included in all relevant reports.
- If “Other” is selected, a free text field must be provided.
- Any change to the sub-reason after initial entry (override) must be audited.
- A report must be available to monitor and quality-assure all overrides.

---

## 4. Exception Handling

- If a user attempts to close a claim without selecting a sub-reason, OLIMS must display an error and prevent closure.
- If “Other” is selected but no free text is entered, OLIMS must display an error and prevent saving.
- If a sub-reason is changed, the audit log must record the user, date/time, previous value, and new value.

---

## 5. Compliance/Controls

- All sub-reason selections and overrides must be audit-logged for compliance.
- Reports must be available for scheme-wide analysis and quality assurance.
- Access to override sub-reasons and view audit logs must be restricted to authorised roles.

---

## 6. References and Linked Requirements

- Cross-references: OLH001, OLH003, DOA010, DOA012, DOB001-DOB005, P905 retro logic

---

## 7. Acceptance Criteria

- [ ] All sub-reasons listed above are available and selectable in OLIMS when closing an EPSS On Duty claim.
- [ ] “Other” sub-reason requires mandatory free text entry.
- [ ] Sub-reason selection is mandatory for claim closure.
- [ ] Any override/change to sub-reason is audit-logged with user, date/time, old/new value.
- [ ] A report is available in OLIMS to display all sub-reason overrides for monitoring.
- [ ] Only authorised users can override sub-reasons or access the audit report.
- [ ] All sub-reasons are included in scheme-wide reporting.