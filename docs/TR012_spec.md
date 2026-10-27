# Functional Specification: TR012 — PBRI Transition to EPSS Claim Status Type

---

## 1. Business Background

The NSW Police Force (NSWPF) is implementing enhancements to the EPSS (Enhanced Police Support Scheme) and OLIMS (Online Injury Management System) to support new business processes for managing claims that transition from the legacy PBRI (Police Blue Ribbon Insurance) scheme to EPSS. As part of this, a new claim status type is required in OLIMS for reporting and operational clarity.

---

## 2. Scope

This specification covers the introduction of a new “PBRI Transition to EPSS” claim status type in the OLIMS Claim Status tab. The requirement is limited to reporting and user interface changes in OLIMS and does not trigger any payroll actions or downstream integrations. It also includes restricting claim status options based on the selected claim type for PBRI transitional claims.

---

## 3. Detailed Functional Requirements

- Add a new claim status type “PBRI Transition to EPSS” in the OLIMS Claim Status tab.
- The new status type is for reporting purposes only and must not trigger any payroll actions or changes in SAP or other systems.
- When a claim is marked as a PBRI transitional claim, the claim status drop-down in OLIMS must restrict available status options according to the claim type.
- Provide a configuration table or mapping that lists allowed claim statuses per claim type (e.g., EPSS, PBRI, Transitioned to EPSS).
- Ensure the new status type and restricted status options are visible in all relevant OLIMS screens and reports.
- No changes are required to payroll logic, interfaces, or calculations as a result of this status.

---

## 4. Exception Handling

- If a user attempts to select a claim status not permitted for the current claim type, OLIMS must display a clear error message and prevent the selection.
- If the new status type is selected for a non-transitional claim, OLIMS must block the action and prompt the user to review the claim type.
- Any technical errors in updating or displaying the new status type must be logged and reported to system administrators.

---

## 5. Compliance/Controls

- All changes to claim status must be audit logged in OLIMS, including user, timestamp, previous and new status.
- Access to update claim status remains restricted to authorised OLIMS users as per existing controls.
- No payroll, financial, or external reporting compliance impacts are introduced by this change.

---

## 6. References and Linked Requirements

- Cross-references: TR001, TR003, TR004, TR005, TR006, TR011, TR012A, RPB002, RPB003, RPB004, RPB005, RPB006, RPB007
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] “PBRI Transition to EPSS” status type is available in OLIMS Claim Status tab.
- [ ] Selecting this status does not trigger any payroll or SAP actions.
- [ ] Claim status drop-down is restricted to allowed options based on claim type.
- [ ] Attempting to select an invalid status for a claim type is blocked with an error message.
- [ ] All status changes are audit logged.
- [ ] Status type and restrictions are visible in relevant OLIMS reports.
- [ ] No impact to payroll, financial, or external reporting systems.