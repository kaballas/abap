# Functional Specification: CE003 — Update Employee Contribution Percentage for Aware Super Death and Terminal Illness Cover

---

## 1. Business Background

The NSW Police Force provides Aware Super Death and Terminal Illness cover to eligible employees. Employee contributions are deducted via payroll at a specified percentage. A change to the employee contribution percentage is required to align with updated fund requirements and ensure correct deduction and reporting.

---

## 2. Scope

This specification covers the update of the employee contribution percentage for Aware Super Death and Terminal Illness cover, including:
- Implementation of the new contribution rate in SAP payroll.
- Confirmation of retroactivity (if any).
- Impact on the Aware Premium Billing report and fund code structure.

---

## 3. Detailed Functional Requirements

- The new employee contribution percentage for Aware Super Death and Terminal Illness cover must be updated in SAP payroll.
- The effective date for the new rate must be specified and implemented accordingly.
- The change applies only from the effective payroll period; no retrospective adjustments to prior periods.
- Confirm if the Aware Premium Billing report requires separate fund codes or can use a single fund setup.
- Ensure all payroll deductions, reporting, and payslip displays reflect the new rate from the effective date.

---

## 4. Exception Handling

- If the effective date is not provided or is in the past, the system must prevent the update and alert payroll administrators.
- If the fund code structure is not confirmed, default to the existing setup and flag for follow-up.
- Any errors in deduction calculation must be logged and reported for manual review.

---

## 5. Compliance/Controls

- Payroll controls must ensure only eligible employees are updated.
- OLIMS access to contribution data must be restricted to authorised users.
- Reporting and reconciliation processes must be updated to reflect the new rate and fund code structure.

---

## 6. References and Linked Requirements

Cross-references: CE001, CE002, Aware Premium Billing report, SAP payroll configuration documentation.

---

## 7. Acceptance Criteria

- [ ] New employee contribution percentage is implemented in SAP payroll as specified.
- [ ] Effective date is correctly applied; no retroactive changes to prior periods.
- [ ] Payslips and payroll reports reflect the new rate from the effective date.
- [ ] Aware Premium Billing report uses the correct fund code structure.
- [ ] Exception handling and compliance controls are in place and tested.
- [ ] All changes are documented and approved by business stakeholders.