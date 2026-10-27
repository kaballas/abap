# Functional Specification: RPO002 — EPSS Salary Rate Overrides Report

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust audit and compliance controls for the management of salary rate overrides within the Enhanced Police Support Scheme (EPSS). Period 1, 2, and 3 salary rates may be overridden by EPSS Claims Officers under certain business rules. To ensure transparency, quality assurance, and compliance, a dedicated report is needed to track all overrides, including details of the original and new rates, effective dates, and user actions.

---

## 2. Scope

This specification covers the design and implementation of the "EPSS Salary Rate Overrides" report in OLIMS and SAP. The report will provide a complete audit trail of all salary rate overrides for EPSS Periods 1, 2, and 3, including selection criteria, column definitions, export functionality, and compliance requirements. Implementation is subject to final business decisions on override capability for each period.

---

## 3. Detailed Functional Requirements

- The report must display all overrides of EPSS salary rates (Periods 1, 2, 3) processed by EPSS Claims Officers.
- Each override record must include:
    - Employee No.
    - Incident No.
    - Claim No.
    - EPSS Period (1, 2, or 3)
    - Original Amount, Date From, Date To
    - New Amount, Date From, Date To
    - Last Modified By, On, At
    - EPSS Claims Advisor, Supervisor
- Selection criteria:
    - Employee No
    - Incident No
    - Last Modified On (date range)
    - EPSS Claims Advisor
- Each override action is displayed as a separate line item.
- The report must be exportable to Excel.
- Implementation is deferred until override business rules for Periods 1 and 2 are finalised.

---

## 4. Exception Handling

- If required data fields are missing in OLIMS/EPSS/Payroll, the report must flag the record and display a warning.
- If no overrides exist for the selected criteria, the report returns an empty result set with a suitable message.
- If export fails, an error message must be shown and logged for support.

---

## 5. Compliance/Controls

- All override actions must be audit logged, including user, timestamp, and before/after values.
- Access to the report is restricted to authorised EPSS Claims Officers, Supervisors, and Audit/Compliance roles.
- The report supports payroll reconciliation and scheme compliance reviews.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001–DOB005, P905 retro logic
- Related requirements: 1PA003, OLG003, OLG004, OLG005, OLG006 (override out of scope for P1 as at Jan 2026)
- Linked reports: RPO001–RPO005

---

## 7. Acceptance Criteria

- [ ] Report displays all required columns for each override action.
- [ ] Selection criteria function as specified.
- [ ] Each override is a separate line item.
- [ ] Report is exportable to Excel.
- [ ] Access controls are enforced.
- [ ] Audit log includes all override actions.
- [ ] Exceptions and missing data are handled as specified.
- [ ] All required data fields are sourced from OLIMS/EPSS/Payroll or flagged if unavailable.
- [ ] Report is delivered only after override business rules are finalised.