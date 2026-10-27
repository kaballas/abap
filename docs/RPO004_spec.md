# Functional Specification: RPO004 — EPSS Salary Rate Overrides Report

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust audit and compliance controls for the EPSS (Enhanced Police Support Scheme) salary rate override process. While override capability for Period 1 has been removed, overrides for Period 2 and 3 may be supported in future phases. This report is intended to provide ongoing monitoring and quality assurance of any overrides to salary rates processed by EPSS Claims Officers.

---

## 2. Scope

This specification covers the design and delivery of the "EPSS Salary Rate Overrides Report" in OLIMS/SAP. The report will display all overrides to Period 1, 2, and 3 salary rates (where supported), including audit details for each change. Implementation is deferred until override capability for Period 2/3 is confirmed.

---

## 3. Detailed Functional Requirements

- The report must list every override of EPSS salary rates (Period 1, 2, 3) as an individual line item.
- Selection criteria:
    - Employee Number
    - Incident Number
    - Last Modified On (date range)
    - EPSS Claims Advisor
- Report columns:
    - Employee Number
    - Incident Number
    - Claim Number
    - EPSS Period (1, 2, or 3)
    - Original Amount
    - Original Date From
    - Original Date To
    - New Amount
    - New Date From
    - New Date To
    - Last Modified By
    - Last Modified On
    - Last Modified At
    - EPSS Claims Advisor
    - EPSS Supervisor
- Each override record must be displayed as a separate line.
- The report must be exportable to Excel.

---

## 4. Exception Handling

- If no overrides exist for the selected criteria, the report will display a "No records found" message.
- If required data fields are missing in OLIMS/EPSS/Payroll, the report will flag the missing data and prompt for technical review.
- If override capability is not enabled for a period, the report will display a note indicating this.

---

## 5. Compliance/Controls

- All overrides must be audit logged, including before/after values, user, and timestamp.
- Only authorised users (EPSS Claims Officers/Supervisors) can process overrides.
- The report supports payroll controls, OLIMS access reviews, and reconciliation activities.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- Related requirements: 1PA003, OLG003–OLG006 (override out of scope for P1), RPO001–RPO005 (this report)
- See [EPSS Phase 5 BRD](#) for full context.

---

## 7. Acceptance Criteria

- [ ] Report displays all salary rate override records as individual line items.
- [ ] Selection criteria and columns match specification.
- [ ] Report is exportable to Excel.
- [ ] All override actions are audit logged with before/after values and user details.
- [ ] Report displays appropriate messages for no data or missing fields.
- [ ] Access is restricted to authorised users.
- [ ] Compliance and reconciliation requirements are met.