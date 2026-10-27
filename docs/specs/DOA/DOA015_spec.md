# Functional Specification: DOA015 — EPSS Claims Officer Override of WC External Earnings in IT0015

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires accurate calculation of supplementary support payments, offset by any Workers Compensation (WC) external earnings. WC payments made by the insurer (EML) are uploaded into OLIMS and passed to SAP via IT0015. Occasionally, retrospective changes or adjustment advice from the insurer necessitate manual overrides to ensure correct EPSS benefit calculation.

---

## 2. Scope

This specification covers the ability for EPSS Claims Officers to override WC External Earnings in IT0015 for detached officers, in response to retrospective changes or adjustment advice from the WC insurer. It clarifies which earnings types are in scope for override and the business process for making such adjustments.

- Recorded that the EPSS Claims Officer must have the ability in IT0015 to override the WC External Earnings for any retrospective changes or adjustment advice from the WC insurer.
- This implies retrospective payroll recalculation with payment changes in retrospect. The change may be made via OLIMS or PA30. Entries via PA30 and OLIMS must both be visible in the OLIMS screen display for IT15 uploads.
- The export to SAP must be to the detached officer, and WC external earnings should only be valid for periods where the detached officer is valid. EML will provide all key identifiers, including the old attached employee number, but WC external earnings must be loaded against the detached employee number. Validations must ensure dates are within the active period of the detached officer.
- Only one WC External Earnings wagetype may be entered per day; multiple entries for the same day are not permitted (to be reflected in the wagetype maintenance form).
- Payroll QA report is required to check for duplications; this is to be actioned by SAP support and is not part of the report designs.

---

## 3. Detailed Functional Requirements

- The EPSS Claims Officer must be able to create, update, or delete override entries in IT0015 for WC External Earnings.
- The override applies to WC External Earnings uploaded via OLIMS (as per DOA014) and/or WT 3670, subject to business confirmation.
- The system must clearly distinguish between original uploaded WC External Earnings and manual overrides.
- All overrides must be auditable, capturing the user, date/time, and reason for the adjustment. Entries via PA30 will have the SAP standard audit trail; OLIMS entries will have the OLIMS audit trail.
- The override amount must be used in EPSS payment calculations for the relevant pay period(s), superseding the original value.
- The override process must not allow changes if the payroll control record is locked.
- WC external earnings must only be loaded against the detached employee number and for dates within the active period of the detached officer.
- Only one WC External Earnings wagetype may be entered per day for a given detached officer.
- Both OLIMS and PA30 entries must be visible in the OLIMS screen display for IT15 uploads.

---

## 4. Exception Handling

- If an override is attempted during a payroll lock, the system must display an error and prevent the change.
- If an override is entered for a period with no original WC External Earnings, the system must allow creation but flag for review.
- All failed override attempts must be logged for audit and troubleshooting.
- If WC external earnings are entered for dates outside the active period of the detached officer, the system must reject the entry.
- If multiple WC External Earnings entries are attempted for the same day, the system must prevent duplication and flag for review.

---

## 5. Compliance/Controls

- All override actions must be logged and reportable for audit purposes.
- Only authorised EPSS Claims Officers may perform overrides; access must be role-based.
- Supporting documentation for overrides must be attached in OLIMS and referenced in the override record, except for entries via PA30 which will only have the SAP standard audit trail.
- Overrides must be included in reconciliation and reporting processes.
- Payroll QA report is required to check for duplications (to be actioned by SAP support).

---

## 6. References and Linked Requirements

- DOA014: WC External Earnings upload process
- DOA017: OLIMS claim status/substatus model
- OLE001–OLE010: External Income and Payment offset model
- CR001: Manual entry of earnings to offset via IT0015
- P905 retro logic

---

## 7. Acceptance Criteria

- [x] EPSS Claims Officer can create, update, and delete WC External Earnings overrides in IT0015.
- [x] Overrides are limited to specified earnings types (WT 3670 and/or OLIMS-uploaded WC payments).
- [x] All override actions are logged with user, date/time, and reason, with audit trail from SAP (PA30) or OLIMS as applicable.
- [x] System prevents overrides during payroll lock.
- [x] Supporting documentation can be attached and referenced for OLIMS entries; PA30 entries have SAP audit trail only.
- [x] Overrides are reflected in EPSS payment calculations and reports.
- [x] Only authorised users can perform overrides.
- [x] Only one WC External Earnings wagetype may be entered per day for a given detached officer.
- [x] Overrides are valid only for periods where the detached officer is active.
- [x] Payroll QA report is available to check for duplications (actioned by SAP support).
- [x] All requirements are tested and verified in UAT.