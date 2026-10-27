# Functional Specification: TR009 — REMOVED / PARKED (2026-01-27): New wagetypes for PBRI transitional claims are obsolete

---

## 1. Business Background

The original intent of TR009 was to introduce new wagetypes for PBRI transitional claims to support specific adjustment and payment scenarios during the transition from PBRI to EPSS. However, following business review and workshops, it was determined that existing EPSS wagetypes and adjustment wagetypes are sufficient for these scenarios. All adjustments must be linked to the associated incident and only paid if they overlap with the relevant incident, pending business approval for Phase 5.

---

## 2. Scope

This requirement is now out of scope. No new wagetypes will be created for PBRI transitional claims. All required adjustments and payments will use existing EPSS wagetypes and adjustment wagetypes.

---

## 3. Detailed Functional Requirements

- No new wagetypes will be developed for PBRI transitional claims.
- All adjustments must be linked to the associated incident and only paid if they overlap with the relevant incident.
- Existing EPSS wagetypes and adjustment wagetypes will be used for all payments and adjustments related to PBRI transitional claims.
- Pending business approval for Phase 5, all adjustments and external earnings must record the incident/WC and reason code.

---

## 4. Exception Handling

- If a scenario arises where an adjustment cannot be processed using existing wagetypes, it must be escalated for business review and potential future scope inclusion.
- Any payment or adjustment not linked to a valid incident will not be processed.

---

## 5. Compliance/Controls

- All adjustments must be auditable and linked to the relevant incident for reporting and compliance.
- Payroll controls remain unchanged; no new controls are required for this parked requirement.

---

## 6. References and Linked Requirements

- Cross-references: TR011 (PBRI adjustment wagetype), TR009A (incident linkage for adjustments), DOA010, DOA012, DOB001-DOB005, P905 retro logic.
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [x] No new wagetypes are created for PBRI transitional claims.
- [x] All adjustments for PBRI transitional claims use existing EPSS wagetypes and adjustment wagetypes.
- [x] Adjustments and external earnings are linked to the relevant incident and only paid if overlapping with the incident.
- [x] Any exceptions or gaps are escalated for business review.
- [x] Compliance and audit requirements are met using existing controls.