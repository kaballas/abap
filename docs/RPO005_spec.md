# Functional Specification: RPO005 — EPSS Salary Rate Overrides Report

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust audit and compliance controls for the management of salary rate overrides within the Enhanced Police Support Scheme (EPSS). While override capability for Period 1 salary rates has been removed, overrides for Period 2 and 3 may be supported in future phases. This report is intended to provide ongoing monitoring and quality assurance of any salary rate overrides processed by EPSS Claims Officers, ensuring transparency and compliance with scheme rules.

---

## 2. Scope

This specification covers the design and delivery of the "EPSS Salary Rate Overrides Report" in OLIMS/SAP. The report will audit all overrides of Period 1, 2, and 3 rates of pay (where supported), displaying each override as a separate line item with full audit trail details. Implementation is deferred until override capability for Period 2 and 3 is confirmed.

---

## 3. Detailed Functional Requirements

- The report must list all salary rate override actions for EPSS Periods 1, 2, and 3, including original and new values, effective dates, and user/audit details.
- Selection criteria must include: Employee Number, Incident Number, Last Modified On (date range), and EPSS Claims Advisor.
- Column headers must include: Employee No., Incident No., Claim No., EPSS Period, Original Amount, Original Date From/To, New Amount, New Date From/To, Last Modified By, Last Modified On/At, EPSS Claims Advisor, EPSS Supervisor.
- Each override record must be displayed as an individual line item.
- The report must be exportable to Excel from SAP/OLIMS.
- Implementation is postponed until override functionality for Period 2/3 is confirmed.

---

## 4. Exception Handling

- If no overrides exist for the selected criteria, the report must display a "No records found" message.
- If required data fields are missing in OLIMS/EPSS/Payroll, the report must flag the missing data and log an error for technical review.
- If override capability is not enabled for a period, the report must exclude that period and display a note.

---

## 5. Compliance/Controls

- All override actions must be audit logged, including user, timestamp, and before/after values.
- Access to the report must be restricted to authorised EPSS Claims Officers, Supervisors, and compliance staff.
- The report supports payroll controls, OLIMS access reviews, and reconciliation of override actions for audit purposes.

---

## 6. References and Linked Requirements

- Cross-references: 1PA003, OLG003, TR007, TR008, RPO001–RPO005
- Linked to: OLIMS audit log, SAP HR/Payroll override functionality, Document Overview reporting

---

## 7. Acceptance Criteria

- [ ] Report lists all salary rate overrides for supported periods with full audit details.
- [ ] Selection criteria and column headers match specification.
- [ ] Each override is a separate line item.
- [ ] Report is exportable to Excel.
- [ ] Access controls are enforced.
- [ ] Exceptions and missing data are handled as specified.
- [ ] Implementation deferred until override capability for Period 2/3 is confirmed.