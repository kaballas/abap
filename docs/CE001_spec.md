# Functional Specification: CE001 — Employee Contributions for Aware Super Death and Terminal Illness Cover

---

## 1. Business Background

The NSW Police Force (NSWPF) provides Aware Super Death and Terminal Illness cover to eligible employees. Employee contributions are deducted via payroll and reported to the fund. Recent changes require a new wagetype and fund code for these contributions, with updated reporting and processing rules. Business confirmation is required on whether TAL requires a membership number for contribution reporting, which may impact fund code structure.

---

## 2. Scope

This specification covers:
- Creation of a new wagetype and fund code for Aware Super Death and Terminal Illness cover employee contributions.
- Payroll deduction and reporting logic for the new wagetype.
- Effective date and retroactivity rules.
- Data entry, validation, and reporting requirements.
- Excludes retrospective changes to prior periods and terminated employees.

---

## 3. Detailed Functional Requirements

- A new wagetype and fund code will be created for Aware Super Death and Terminal Illness cover employee contributions.
- The new wagetype/fund code will be used for all contributions from the deployment payroll period onwards.
- The contribution percentage and effective date will be specified by the business.
- Payroll deductions will be processed only for active employees from the effective date.
- Retro corrections for periods before go-live will use the old wagetypes.
- Terminated employees are excluded from retro processing for this change.
- Data entry validations will ensure correct fund code and wagetype usage.
- Reporting must support the new wagetype/fund code, including in the Aware Premium Billing report.
- Business must confirm if TAL requires a membership number for reporting; if so, separate fund codes may be required.

---

## 4. Exception Handling

- If the new wagetype/fund code is not selected for eligible employees, payroll will generate an error and prevent processing.
- Retroactive changes before the effective date will not apply the new wagetype/fund code.
- If business confirmation on TAL membership number is not received, default to a single fund code for Aware Super only.

---

## 5. Compliance/Controls

- Payroll controls will ensure only eligible employees receive the new deduction.
- OLIMS access and reporting will reflect the new wagetype/fund code.
- Reconciliation processes will include the new wagetype/fund code in payroll and fund reporting.

---

## 6. References and Linked Requirements

Cross-references: CE002, CE003, RPE001, Aware Premium Billing report, SAP IT0220, wagetype maintenance form.

---

## 7. Acceptance Criteria

- [ ] New wagetype and fund code created and visible in SAP.
- [ ] Payroll deductions processed correctly from the effective date.
- [ ] No retroactive application to periods before go-live.
- [ ] Terminated employees excluded from retro processing.
- [ ] Data entry validations enforced.
- [ ] Reporting includes new wagetype/fund code.
- [ ] Business confirmation received on TAL membership number and fund code structure.
- [ ] All compliance and reconciliation controls updated.