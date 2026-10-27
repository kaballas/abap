# Functional Specification: OLG006 — ORP Override Audit Report

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust audit and compliance controls for all payroll-related overrides. While the ability to override the Ordinary Rate of Pay (ORP) for Period 1 has been removed from scope (see OLG003/1PA003), an audit report was originally requested to monitor any such overrides for quality assurance and compliance purposes. This specification documents the requirements for the OLG006 ORP Override Audit Report, noting its current status as removed/parked.

---

## 2. Scope

This specification covers the design and requirements for an audit report that would track all manual overrides of the Period 1 ORP in OLIMS and SAP. As the override capability is now out of scope, this report is not required for implementation but is documented here for traceability and future reference.

---

## 3. Detailed Functional Requirements

- The report would have listed all manual overrides to the Period 1 ORP, including:
  - Employee Number
  - Incident Number
  - Claim Number
  - Original ORP Amount and Effective Dates
  - Overridden ORP Amount and Effective Dates
  - User ID of the person making the override
  - Date and time of override
  - Reason code/comment for override
- The report would be accessible to payroll, audit, and compliance teams.
- All changes would be audit-logged and reportable for compliance checks.

---

## 4. Exception Handling

- If no overrides exist (as override capability is removed), the report would return no results.
- Any attempt to access or generate the report when override functionality is disabled should display a message: "ORP override capability is not enabled; no audit data available."

---

## 5. Compliance/Controls

- No payroll controls or audit actions are required as ORP override is not in scope.
- No OLIMS access, reporting, or reconciliation activities are required for this report.

---

## 6. References and Linked Requirements

- Cross-references: 1PA003, OLG003, OLG004, OLG005
- See also: [EPSS Phase 5 BRD](#), [OLIMS Audit Logging](#)

---

## 7. Acceptance Criteria

- [ ] Report is not available in the system while ORP override is out of scope.
- [ ] Any attempt to access the report displays a clear message that the feature is not enabled.
- [ ] Documentation and traceability of the removed requirement are maintained for future reference.

---

**Note:** All ORP display and calculation logic for Period 1 must be based solely on IT0008 values and their effective dates. ORP override/manual override is out of scope and not required.