# Functional Specification: OLG004 — ORP Override UI/Audit Fields (REMOVED / PARKED)

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) project requires accurate calculation and display of the Ordinary Rate of Pay (ORP) for Period 1 payments. Previous phases considered a manual override capability for ORP values, including UI and audit fields to support this. However, following business and workshop decisions, the override capability and associated UI/audit requirements are now out of scope.

---

## 2. Scope

This specification documents the removal/parking of the ORP override UI/audit fields requirement (OLG004). No development or implementation of UI or audit fields for ORP override is required while override capability is out of scope.

---

## 3. Detailed Functional Requirements

- No UI or audit fields for ORP override are to be implemented in OLIMS or SAP.
- All display and calculation logic for Period 1 ORP must be based solely on IT0008 values and their effective dates.
- Any references to ORP override UI/audit fields in related requirements (e.g., OLG003, 1PA003) are to be removed or marked as not required.

---

## 4. Exception Handling

- If future business decisions reinstate the ORP override capability, new requirements for UI and audit fields must be defined and approved before implementation.
- Any system references to ORP override UI/audit fields must be ignored or hidden from users.

---

## 5. Compliance/Controls

- No additional payroll controls, OLIMS access, reporting, or reconciliation are required for this parked requirement.
- Compliance is maintained by ensuring only IT0008-derived ORP values are used.

---

## 6. References and Linked Requirements

- Cross-references: 1PA003, OLG003, OLG005, OLG006, P1C006
- See also: [EPSS Phase 5 BRD](#), [Workshop notes 2026-01-27](#)

---

## 7. Acceptance Criteria

- [x] No UI or audit fields for ORP override are present in OLIMS or SAP.
- [x] All ORP display/calculation logic uses IT0008 values only.
- [x] Documentation and requirements are updated to reflect the removal of override UI/audit fields.
- [x] Any future need for override capability will trigger a new requirements process.