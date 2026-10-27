# Functional Specification: TR008 — Period 2 Salary Overwrite (Obsolete)

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) project includes requirements for managing salary calculations during transitions from PBRI (Police Blue Ribbon Insurance) to EPSS. Initially, a requirement was identified to allow manual overwriting of the Period 2 salary for transitional claims. However, following business review and feedback (DK 22/01/2026), this requirement is now obsolete.

---

## 2. Scope

This specification documents the removal of the Period 2 salary overwrite capability for PBRI transitional claims. No further implementation or design action is required for this feature.

---

## 3. Detailed Functional Requirements

- The system **must not** provide any UI, backend logic, or data model support for manual overwriting of Period 2 salary for PBRI transitional claims.
- All Period 2 salary calculations for transitional claims must follow the standard EPSS rules, using the salary as at the day before the P2 recurrence date, with the same wage type definition as standard P2 calculations.
- Any references to Period 2 salary overwrite in related documentation, screens, or processes must be removed or marked as obsolete.

---

## 4. Exception Handling

- If any attempt is made to access or use a Period 2 salary overwrite function (e.g., via legacy UI or API), the system must display an error or warning indicating the feature is not supported.
- Historical data or audit logs referencing this feature should be retained for traceability but marked as inactive/obsolete.

---

## 5. Compliance/Controls

- Ensure payroll controls and reporting do not include any logic for manual Period 2 salary overwrites.
- OLIMS access and audit logs must not show any active functionality for this feature.
- Reconciliation processes should confirm that all Period 2 salary values are derived per standard rules.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, TR001–TR006, P905 retro logic
- See also: TR007 (ORP override, also obsolete), TR009/TR010 (obsolete wagetype requirements)

---

## 7. Acceptance Criteria

- [ ] No UI or backend logic exists for Period 2 salary overwrite for PBRI transitional claims.
- [ ] All documentation and help text referencing this feature are updated to reflect its removal.
- [ ] Payroll and reporting outputs do not show any overwritten Period 2 salary values.
- [ ] Exception handling is in place for any legacy access attempts.
- [ ] Compliance and audit controls confirm no use of this feature post-removal.