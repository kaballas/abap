# Functional Specification: OLG003 — ORP Override Capability (REMOVED / PARKED)

---

## 1. Business Background

The business previously considered providing claims officers with the ability to override the Ordinary Rate of Pay (ORP) for Period 1 EPSS payments. This was intended to address scenarios where system-calculated ORP did not reflect the officer’s actual entitlement due to data or process issues. After review, the business determined that correcting the ORP definition and system behaviour is the preferred approach, and manual override capability is not required.

---

## 2. Scope

This specification documents the decision to remove the ORP override capability for Period 1 from scope. No override UI, audit, or record management functionality will be delivered for this feature. All related requirements and queries are closed as not required.

---

## 3. Detailed Functional Requirements

- The system must not provide any user interface or backend functionality for claims officers to override the Period 1 ORP.
- All Period 1 ORP values must be derived solely from SAP HR InfoType 0008 (Basic Pay) and the authoritative “ORP WT list” worksheet.
- Any references to ORP override/manual override for Period 1 in requirements, UI, or reports must be removed.
- If override capability is reintroduced in the future, it must be date-ranged, drive payroll splits, and include a process for review/maintenance.

---

## 4. Exception Handling

- If a user attempts to access or request an ORP override function, the system must display a message: “ORP override is not available. Please refer to the ORP definition and escalate data issues via standard support channels.”
- No override records should exist or be processed in the system.

---

## 5. Compliance/Controls

- All ORP calculations and payments are to be based on system-derived values from IT0008 and the approved wagetype list.
- No manual intervention or override is permitted for Period 1 ORP.
- Audit and reporting controls must confirm that no overrides are present or processed.

---

## 6. References and Linked Requirements

- Cross-references: 1PA003, OLG003, OLG004, OLG005, OLG006, TR007
- See also: “ORP WT list” worksheet, SAP HR InfoType 0008, EPSS Phase 5 BRD

---

## 7. Acceptance Criteria

- [ ] No UI or backend function exists for ORP override for Period 1.
- [ ] All ORP values for Period 1 are derived from IT0008 and the “ORP WT list.”
- [ ] Any attempt to override ORP is blocked and a clear message is shown.
- [ ] Reports and audit logs confirm no ORP overrides are present.
- [ ] All related requirements and queries referencing ORP override are marked as closed/not required.