# Functional Specification: RPO003 — EPSS Salary Rate Overrides Report

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust audit and compliance controls for all overrides of EPSS salary rates (Periods 1, 2, and 3) processed by EPSS Claims Officers. This is to ensure transparency, quality assurance, and scheme integrity, especially as manual override capability for Period 1 has been removed, but may be supported for Periods 2 and 3 in future phases.

---

## 2. Scope

This specification covers the design and delivery of the "EPSS Salary Rate Overrides" report in OLIMS/SAP. The report will provide a detailed audit trail of all overrides to salary rates for EPSS claims, including original and new values, effective dates, user actions, and related claim metadata. Implementation is deferred until override capability for Periods 2 and 3 is confirmed.

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
- Selection criteria must include Employee No, Incident No, Last Modified On (date range), and EPSS Claims Advisor.
- Each override event is displayed as a separate line item.
- The report must be exportable to Excel.
- Implementation is postponed until override capability for Periods 2 and 3 is confirmed.

---

## 4. Exception Handling

- If no overrides exist for the selected criteria, the report must display a "No records found" message.
- If required data fields are missing in OLIMS/EPSS/Payroll, the report must flag the missing data and log an error for remediation.
- If override capability is not enabled for any period, the report must display a message indicating "No override functionality enabled for selected period(s)."

---

## 5. Compliance/Controls

- All override actions must be audit-logged, including user, timestamp, and before/after values.
- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors, Audit/Compliance).
- The report supports payroll controls, OLIMS access review, and reconciliation of overrides for compliance and scheme reporting.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- Related requirements: 1PA003, OLG003–OLG006 (override out of scope for P1), RPO001–RPO005 (this report), OLH003 (audit of claim status overrides)

---

## 7. Acceptance Criteria

- [ ] Report displays all required columns for each override event.
- [ ] Selection criteria function as specified.
- [ ] Each override is a separate line item.
- [ ] Report is exportable to Excel.
- [ ] Access controls are enforced.
- [ ] Exception handling is implemented as described.
- [ ] All audit fields (user, timestamp, before/after values) are present.
- [ ] No data gaps for required fields; errors are logged if fields are missing.
- [ ] Implementation is deferred until override capability for Periods 2/3 is confirmed.