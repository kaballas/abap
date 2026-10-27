# Functional Specification: TR004 — PBRI to EPSS Transition Period Selection Finality

---

## 1. Business Background

The NSW Police Force (NSWPF) is implementing enhancements to the EPSS (Enhanced Police Support Scheme) to support seamless transition from the legacy PBRI (Police Blue Ribbon Insurance) scheme. For claims transitioning from PBRI to EPSS, it is critical to ensure that once the benefit period (Period 1 or Period 2) is selected for the transition, the selection is final and cannot be reverted or toggled. This ensures data integrity, prevents benefit period manipulation, and aligns with business rules for scheme administration.

---

## 2. Scope

This specification covers the system logic and user interface requirements in OLIMS (Online Injury Management System) for handling the selection of EPSS benefit periods during PBRI to EPSS transitions. It applies to all PBRI transitional claims processed in OLIMS and impacts both claims officers and system automation. The scope excludes historical claims where the transition period has already been set and does not require retroactive changes.

---

## 3. Detailed Functional Requirements

- Once a benefit period (Period 1 or Period 2) is selected for a PBRI to EPSS transition claim in OLIMS, the system must:
    - Retain only the latest selection as the active period.
    - Prevent users from toggling back and forth between periods; only the most recent selection is valid.
    - Not retain previous period selections as inactive or historical records.
    - Ensure that only one period selection is valid at any time for each transitional claim.
- Any change to the selected period overwrites the previous selection; no history of prior selections is required.
- The user interface must clearly indicate that the selection is final and that only the current selection is stored.

---

## 4. Exception Handling

- If a user attempts to select a period that has already been set, the system must display a warning that only the latest selection will be retained.
- If a technical error occurs during the update, the system must not save partial or conflicting period selections and must prompt the user to retry.
- If a claim is incorrectly transitioned, correction must follow the standard incident correction/escalation process outside of OLIMS period selection logic.

---

## 5. Compliance/Controls

- All changes to the benefit period selection must be logged in the OLIMS audit trail for compliance review.
- Only authorized users (claims officers with appropriate permissions) may set or change the transition period.
- Reporting must reflect only the current, valid period selection for each transitional claim.

---

## 6. References and Linked Requirements

- Cross-references: TR001, TR002, TR003, TR005, DOA010, DOA012, DOB001-DOB005, P905 retro logic.
- See [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV).

---

## 7. Acceptance Criteria

- [ ] Only the latest benefit period selection is retained for each PBRI to EPSS transitional claim.
- [ ] Previous period selections are not stored as inactive/history records.
- [ ] The user interface prevents toggling between periods and displays a clear message about selection finality.
- [ ] All changes are audit logged.
- [ ] Only authorized users can set/change the period.
- [ ] Reports show only the current valid period for each claim.
- [ ] Exception handling is implemented as specified.