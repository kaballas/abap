# Functional Specification: RPB004 — Remove Organisation Section from EPSS On Duty Claim Report

---

## 1. Business Background

The EPSS On Duty Claim Report is a key operational report used by NSW Police Force to monitor and manage claims under the Enhanced Police Support Scheme (EPSS). The Organisation section (including NSW State, Command, Region/Branch, PAC/PD/Section, Organisation Unit) was previously included as part of the report’s selection criteria and output. Recent business review determined that these fields are no longer required for this report and should be removed to streamline reporting and reduce complexity.

---

## 2. Scope

This specification covers the removal of the Organisation section and all related fields from both the selection screen and the output of the EPSS On Duty Claim Report (report ID: RPB004). The change applies to all environments and all users of the report.

---

## 3. Detailed Functional Requirements

- The Organisation section (including NSW State, Command, Region/Branch, PAC/PD/Section, Organisation Unit) must be removed from the selection criteria of the EPSS On Duty Claim Report.
- All Organisation-related columns must be removed from the report output.
- No references to Organisation fields should remain in the report’s user interface, data extraction logic, or documentation.
- The report must continue to function correctly and return results based on the remaining selection criteria and columns.

---

## 4. Exception Handling

- If any Organisation-related fields are referenced in legacy code or data sources, the system must not fail but should ignore or skip these fields.
- Any attempt to access Organisation fields in the report should result in a user-friendly message indicating the fields are no longer available (if applicable).

---

## 5. Compliance/Controls

- Ensure that the removal of Organisation fields does not impact payroll controls, OLIMS access, reporting, or reconciliation processes.
- All changes must be reviewed and approved by the reporting and payroll functional teams prior to deployment.

---

## 6. References and Linked Requirements

- Cross-references: RPB002, RPB003, RPB005–RPB007 (related EPSS On Duty Claim Report requirements)
- See also: [EPSS Phase 5 BRD](#), [EPSS Reporting Requirements](#)

---

## 7. Acceptance Criteria

- [ ] Organisation section is not present in the report selection screen.
- [ ] Organisation-related columns are not present in the report output.
- [ ] Report executes successfully with no errors or references to Organisation fields.
- [ ] Documentation and user guides are updated to reflect the removal.
- [ ] Change is reviewed and signed off by business and payroll/reporting teams.