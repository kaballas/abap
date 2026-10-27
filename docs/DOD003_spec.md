# Functional Specification: DOD003 — Display Active and Historical Date of Disablement Records

---

## 1. Business Background

The Date of Disablement (DOD) is a key data point in the EPSS scheme, determining scheme eligibility, benefit periods, and payment calculations. Accurate tracking and visibility of both current (active) and historical (inactive) DOD records is essential for claims management, audit, and compliance. OLIMS currently supports DOD record management via the "Top-Up / Disab. Date / IP Dates" screen.

---

## 2. Scope

This specification covers the requirement for claims officers to display both active and historical DOD records in OLIMS for EPSS claims. It confirms that this is supported via the existing inactive flag/filter functionality and documents the expected behaviour.

---

## 3. Detailed Functional Requirements

- Claims officers must be able to view all DOD records (active and inactive) for a claim in OLIMS.
- The "Top-Up / Disab. Date / IP Dates" screen will display DOD records, with an indicator for active/inactive status.
- Users can filter or toggle between active and historical (inactive) records.
- Historical DOD records are retained for audit and reference; only one record is active at any time.
- No changes are required to the underlying data model or screen layout, as this functionality is already present.

---

## 4. Exception Handling

- If no DOD records exist, the screen displays a "No records found" message.
- If only inactive records exist, the screen clearly indicates that there is no current active DOD.
- Any errors in retrieving DOD records (e.g., database issues) are logged and a user-friendly error message is displayed.

---

## 5. Compliance/Controls

- All changes to DOD records are audit logged, including activation/inactivation.
- Access to DOD record viewing and editing is restricted to authorised claims officers.
- Historical records cannot be deleted, only marked inactive.

---

## 6. References and Linked Requirements

- Cross-references: DOD001, DOD002, OLIMS "Top-Up / Disab. Date / IP Dates" screen.
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Claims officers can view both active and inactive DOD records for any EPSS claim in OLIMS.
- [ ] The inactive flag/filter is available and functions as described.
- [ ] Only one DOD record is active at any time; historical records are retained and visible.
- [ ] All DOD record changes are audit logged.
- [ ] No regression or loss of existing DOD data or functionality.