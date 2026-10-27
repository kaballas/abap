# Functional Specification: TR002 — PBRI Transitional Claims Starting in Period 2

---

## 1. Business Background

The NSW Police Force (NSWPF) is transitioning from the Police Blue Ribbon Insurance (PBRI) scheme to the Enhanced Police Support Scheme (EPSS). Some officers with existing PBRI claims will transition directly into EPSS Period 2, bypassing Period 1. Accurate recording and processing of these transitions is required for compliance, payroll, and reporting.

---

## 2. Scope

This specification covers the functional requirements for managing PBRI transitional claims that commence in EPSS Period 2. It includes the creation of a new OLIMS screen to record transition details, payroll support for retroactive splits, and restrictions on DOD changes for these incidents.

---

## 3. Detailed Functional Requirements

- A new OLIMS screen must be developed to record EPSS transition details for PBRI transitional claims starting in Period 2.
- The screen must capture:
  - Recurrence (transition) date.
  - Number of PBRI days to offset from the 7-year Period 2 entitlement.
- Payroll logic must support retroactive splits for these transitions.
- The Date of Disablement (DOD) cannot be changed for these incidents; only the recurrence date determines EPSS commencement.
- All data must be auditable and reportable.

---

## 4. Exception Handling

- If the recurrence date or PBRI days offset are missing or invalid, the system must prevent saving and display a clear error message.
- Attempts to change the DOD for these incidents must be blocked, with an explanatory message.
- Retroactive payroll splits must handle overlapping or conflicting periods gracefully, with error logging and user notification.

---

## 5. Compliance/Controls

- All changes to transition details must be logged for audit.
- Access to the new OLIMS screen must be restricted to authorized claims officers.
- Reporting must support reconciliation of PBRI offsets and EPSS Period 2 entitlements.

---

## 6. References and Linked Requirements

- Cross-references: TR001, TR003, TR006, DOA010, DOA012, P905 retro logic.
- Refer to [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/:x:/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV).

---

## 7. Acceptance Criteria

- [ ] New OLIMS screen for PBRI to EPSS Period 2 transitions is available and accessible.
- [ ] Recurrence date and PBRI days offset can be entered, saved, and reported.
- [ ] DOD cannot be changed for these incidents.
- [ ] Payroll supports retroactive splits for these transitions.
- [ ] All changes are audit-logged.
- [ ] Error handling and user messages are clear and actionable.
- [ ] Reports accurately reflect transition details and offsets.