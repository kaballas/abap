# Functional Specification: TR010 — New Wagetype for Period 2 and Manual Adjustments for PBRI Transitional Claims

---

## 1. Business Background

The NSW Police Force (NSWPF) is implementing enhancements to the EPSS (Enhanced Police Support Scheme) and PBRI (Police Blue Ribbon Insurance) payroll and claims management processes. During the transition from PBRI to EPSS, there was a proposal to introduce new wagetypes for Period 2 and manual adjustments for PBRI transitional claims. This was intended to support accurate payroll processing and reporting for officers transitioning between schemes.

---

## 2. Scope

This specification covers the requirement TR010, which was originally to introduce new wagetypes for Period 2 and manual adjustments for PBRI transitional claims. The scope includes the assessment, decision, and documentation of the requirement’s status.

---

## 3. Detailed Functional Requirements

- **TR010 is now REMOVED / PARKED (2026-01-27):**  
  The requirement to create new wagetypes for Period 2 and manual adjustments for PBRI transitional claims is obsolete.  
  - Existing EPSS wagetypes and adjustment wagetypes will be used for these payments and adjustments.
  - All adjustments must be linked to the associated incident and only paid if they overlap with the relevant incident, pending business approval for Phase 5.
  - No new wagetypes will be created for this scenario.

---

## 4. Exception Handling

- If a scenario arises that cannot be handled by existing wagetypes, it must be escalated to the payroll and business teams for review.
- Any required adjustments outside the current wagetype structure must be documented and processed via manual exception handling, pending further business decision.

---

## 5. Compliance/Controls

- All adjustments and payments must be auditable and linked to the relevant incident in OLIMS and SAP.
- Payroll controls remain unchanged; no new compliance risks are introduced by not creating new wagetypes.
- Reporting and reconciliation will continue to use existing wagetypes and processes.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic, TR011 (manual adjustment wagetype for PBRI Base Salary Adjustment)
- See also: TR009A (incident linkage for adjustments), TR011 (manual adjustment wagetype), and Phase 5 scope documentation.

---

## 7. Acceptance Criteria

- [x] No new wagetypes are created for Period 2 or manual adjustments for PBRI transitional claims.
- [x] Existing EPSS wagetypes and adjustment wagetypes are confirmed as sufficient for all required scenarios.
- [x] All adjustments are linked to the relevant incident and processed only if overlapping with the incident.
- [x] Documentation reflects the removal/parking of TR010 and references alternative solutions.
- [x] Stakeholders are notified of the change and agree that no further action is required for TR010.