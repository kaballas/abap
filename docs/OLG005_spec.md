# Functional Specification: OLG005 — ORP Override Active/Inactive Record Management

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) project aims to automate and streamline the management of police injury claims, payments, and reporting. During requirements analysis, the need for an Ordinary Rate of Pay (ORP) override capability was considered to allow claims officers to manually override ORP values for specific scenarios. However, after further review and business decision, the ORP override feature—including active/inactive record management for overrides—was determined to be out of scope for the current phase.

---

## 2. Scope

This specification documents the removal of the ORP override active/inactive record management requirement from the EPSS solution. No functionality will be delivered to support manual ORP overrides, nor will there be any UI, audit, or record management for such overrides in OLIMS or SAP.

---

## 3. Detailed Functional Requirements

- No user interface, backend logic, or audit/reporting functionality will be implemented for managing active/inactive ORP override records.
- All ORP calculations and display logic for Period 1 must be based solely on SAP HR InfoType 0008 values and their effective dates.
- Any references to ORP override record management in related modules (OLIMS, SAP, reporting) must be removed or marked as not required.

---

## 4. Exception Handling

- If any process attempts to access or create ORP override records, the system must ignore the request and proceed using standard IT0008-derived values.
- No error messages or warnings are required, as override functionality is not present.

---

## 5. Compliance/Controls

- Payroll controls will rely exclusively on the authoritative “ORP WT list” and IT0008 values.
- No additional access or audit controls are required for override management, as the feature is not implemented.

---

## 6. References and Linked Requirements

- Cross-references: 1PA003, OLG003, OLG004, OLG006 (all related to ORP override capability and its removal)
- See also: [EPSS Phase 5 BRD](#), [OLIMS requirements](#)

---

## 7. Acceptance Criteria

- [ ] No UI or backend logic exists for ORP override active/inactive record management.
- [ ] All ORP values for Period 1 are sourced from IT0008 and the “ORP WT list” only.
- [ ] No audit or reporting of ORP override records is present.
- [ ] All documentation and help content reflect that ORP override is out of scope.