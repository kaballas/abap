# Functional Specification: CE002 — Employee Contribution Wagetype and Fund Code Change

---

## 1. Business Background

The NSW Police Force (NSWPF) is updating the employee contribution wagetype and fund code for Aware Super Death and Terminal Illness cover. This change is required to align with new business rules and reporting requirements, ensuring correct payroll processing and compliance with fund administration standards. The change is limited to contributions processed from the deployment date forward.

---

## 2. Scope

- Applies only to employee contributions for Aware Super Death and Terminal Illness cover.
- Effective from the payroll period when the change is deployed to production.
- No retrospective application to prior periods.
- Retro corrections for periods before go-live will continue to use the old wagetypes.
- Terminated employees are excluded from retro processing for this change.

---

## 3. Detailed Functional Requirements

- Implement a new wagetype and fund code for employee contributions to Aware Super Death and Terminal Illness cover.
- The new wagetype and fund code are to be used only for payroll periods from the deployment date onward.
- Payroll retro-calculations for periods before the deployment date must continue to use the previous wagetype and fund code.
- No retroactive changes will be made to contributions processed before the deployment date.
- Terminated employees are not included in any retro processing for this change.

---

## 4. Exception Handling

- If a retro calculation is triggered for a period before the deployment date, the system must use the old wagetype and fund code.
- If a terminated employee is included in a retro calculation, the system must not apply the new wagetype or fund code.
- Any attempt to apply the new wagetype/fund code to periods before the deployment date must be blocked and logged.

---

## 5. Compliance/Controls

- Payroll controls must ensure correct application of wagetypes and fund codes based on payroll period dates.
- Access to change wagetype/fund code mappings is restricted to authorised payroll administrators.
- Reporting and reconciliation processes must distinguish between old and new wagetypes/fund codes for audit and compliance purposes.

---

## 6. References and Linked Requirements

- Cross-references: CE001, CE003
- Related reporting: Aware Premium Billing report
- Business requirements document: EPSS Phase 5

---

## 7. Acceptance Criteria

- [ ] New wagetype and fund code are used for all contributions from the deployment payroll period onward.
- [ ] No contributions before the deployment date are processed with the new wagetype/fund code.
- [ ] Retro corrections for pre-deployment periods use the old wagetype/fund code.
- [ ] Terminated employees are excluded from retro processing for this change.
- [ ] Payroll reports and reconciliation distinguish between old and new wagetypes/fund codes.
- [ ] Exception handling is implemented and tested for retro and terminated employee scenarios.