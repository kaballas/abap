# Functional Specification: PT001 — Part-Time Employee EPSS Entitlement Calculation

---

## 1. Business Background

Part-time employees may change their working hours during the course of an EPSS claim (e.g., from part-time to full-time or vice versa). The system must ensure that EPSS entitlements are calculated and paid at the correct rate, reflecting any changes in working hours during Period 1.

---

## 2. Scope

This requirement covers the calculation and payment of EPSS entitlements for employees who change between part-time and full-time hours during Period 1. It applies to all EPSS claims where a change in working hours occurs and impacts the entitlement rate.

---

## 3. Detailed Functional Requirements

- When an employee changes from part-time to full-time hours in Period 1, the system must calculate and pay EPSS entitlements at the full-time rate from the date of change.
- When an employee changes from full-time to part-time hours in Period 1, the system must calculate and pay EPSS entitlements at the part-time rate from the date of change.
- The calculation must use the effective date of the change in working hours as recorded in SAP HR (e.g., IT0007/IT0008).
- Payroll must support mid-period splits if the change occurs mid-pay cycle.
- All changes must be auditable and reflected in payslip and reporting outputs.

---

## 4. Exception Handling

- If the effective date of the change is not recorded or is ambiguous, flag the record for manual review.
- If payroll cannot split payments mid-period, escalate to payroll support for manual adjustment.

---

## 5. Compliance/Controls

- All changes in working hours and corresponding EPSS entitlement calculations must be logged for audit.
- Access to modify working hours and entitlements is restricted to authorised HR/payroll users.
- Reporting must support reconciliation of EPSS payments against working hours history.

---

## 6. References and Linked Requirements

- Cross-references: 1PA001, 1PA002, P1002, P1003, RPE001, RPF001
- SAP HR InfoTypes: IT0007 (Planned Working Time), IT0008 (Basic Pay)
- [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] EPSS entitlements are recalculated at the correct rate from the effective date of any change in working hours during Period 1.
- [ ] Payroll supports mid-period splits for changes in working hours.
- [ ] Payslips and reports reflect the correct entitlement rate and period.
- [ ] All changes are logged and auditable.
- [ ] Exception cases are flagged for manual review.