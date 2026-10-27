# Functional Specification: RPO001 — EPSS Salary Rate Overrides Audit Report

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust audit and quality assurance mechanisms for the management of EPSS (Enhanced Police Support Scheme) salary rate overrides. Period 1, 2, and 3 rates of pay may be overridden by EPSS Claims Officers under certain business rules. To ensure transparency, compliance, and ongoing monitoring, an audit report is required to track all such overrides, supporting scheme integrity and external/internal reporting obligations.

---

## 2. Scope

This specification covers the design and delivery of an OLIMS-based report to audit all overrides of Period 1, 2, and 3 rates of pay processed by EPSS Claims Officers. The report will provide selection criteria, detailed change history, and export functionality for analysis. Implementation is subject to confirmation of override capability for Period 2 and 3, as Period 1 override is currently out of scope.

---

## 3. Detailed Functional Requirements

- The report must list all overrides of Period 1, 2, and 3 salary rates, including original and new values, effective dates, and user details.
- Selection criteria must include Employee No, Incident No, Last Modified On (date range), and EPSS Claims Advisor.
- Each override record must be displayed as an individual line item.
- Column headers must include: Employee No, Incident No, Claim No, EPSS Period (1/2/3), Original Amount, Original Date From/To, New Amount, New Date From/To, Last Modified By, Last Modified On/At, EPSS Claims Advisor, EPSS Supervisor.
- The report must be exportable to Excel.
- All data must be sourced from OLIMS/EPSS/Payroll systems, with field mapping confirmed before build.
- Implementation is deferred until override capability for Period 2/3 is confirmed.

---

## 4. Exception Handling

- If no overrides exist for the selected criteria, the report must display a "No records found" message.
- If required data fields are missing or inaccessible, the report must display an error and log the issue for technical review.
- If export to Excel fails, an error message must be shown and the incident logged.

---

## 5. Compliance/Controls

- All override actions must be audit-logged, including user, timestamp, and before/after values.
- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors, Auditors).
- Exported data must comply with NSWPF data handling and privacy policies.
- The report supports payroll controls, OLIMS access review, and reconciliation activities.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- Related requirements: 1PA003, OLG003–OLG006 (Period 1 override out of scope), RPO002–RPO005 (this report)
- See [EPSS Phase 5 BRD](#) for full context.

---

## 7. Acceptance Criteria

- [ ] Report lists all salary rate overrides for Period 1, 2, and 3, with all required columns.
- [ ] Selection criteria function as specified.
- [ ] Each override is a separate line item.
- [ ] Export to Excel is available and works as intended.
- [ ] Access is restricted to authorised users.
- [ ] All data fields are sourced and mapped correctly.
- [ ] Exception handling is implemented for missing data and export errors.
- [ ] Audit log is maintained for all override actions.
- [ ] Report supports compliance and reconciliation requirements.