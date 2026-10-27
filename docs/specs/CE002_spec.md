# Functional Specification: CE002 — Employee Contribution Wagetype and Fund Code Change

---

## 1. Business Background

The NSW Police Force is implementing a change to the employee contribution wagetype and fund code for Aware Super Death and Terminal Illness cover. This change is required to align with updated business rules and reporting requirements. The new wagetype and fund code will be effective only from the payroll period when the change is deployed to production. There will be no retrospective application to prior periods, and terminated employees are excluded from retro processing for this change.

---

## 2. Scope

This specification applies to all active employees eligible for Aware Super Death and Terminal Illness cover at the time of deployment. The change covers the introduction of a new wagetype and fund code, updates to payroll processing, and reporting adjustments. It does not apply to periods before the go-live date or to employees who have terminated prior to deployment.

---

## 3. Detailed Functional Requirements

### 3.1 Wagetype and Fund Code Change

- Introduce a new wagetype for employee contributions to Aware Super Death and Terminal Illness cover.
- Introduce a new fund code for Aware Super, not reusing existing codes.
- The new wagetype and fund code are to be used for all contributions from the effective payroll period onwards.
- No retroactive changes: contributions for periods before go-live continue to use the old wagetype and fund code.

### 3.2 Payroll Processing

- Payroll must apply the new wagetype and fund code only from the effective date.
- Retro corrections for periods before go-live must use the old wagetype and fund code.
- Terminated employees are not included in any retro processing for this change.

### 3.3 Reporting

- Payroll and contribution reports must reflect the new wagetype and fund code from the effective date.
- Historical reports for periods before go-live must continue to use the old wagetype and fund code.
- The Aware Premium Billing report must support the new fund code structure.

### 3.4 Data Entry and Validation

- Data entry screens must validate that the new wagetype and fund code are only used for periods on or after the effective date.
- Attempts to use the new wagetype/fund code for earlier periods must be blocked with an error message.

---

## 4. Exception Handling

- No retroactive application: If a retro correction is processed for a period before go-live, the old wagetype and fund code must be used.
- Terminated employees prior to go-live are excluded from this change.
- Any attempt to apply the new wagetype/fund code to ineligible periods or employees must result in an error and no update.

---

## 5. Compliance/Controls

- Payroll controls must ensure correct application of wagetype/fund code by effective date.
- Audit logs must record all changes to wagetype and fund code assignments.
- Reports must reconcile contributions by wagetype and fund code for compliance.

---

## 6. References and Linked Requirements

- Cross-references: CE001, CE003, Aware Premium Billing report requirements.
- Business rules and effective date as confirmed in CE002.
- Payroll retro logic as per standard SAP ECC configuration.

---

## 7. Acceptance Criteria

- [ ] New wagetype and fund code are created and available in SAP from the effective date.
- [ ] Payroll applies the new wagetype/fund code only from the go-live period.
- [ ] No retroactive changes are made for periods before go-live.
- [ ] Terminated employees prior to go-live are not impacted.
- [ ] Reports reflect correct wagetype/fund code by period.
- [ ] Data entry validation prevents incorrect period usage.
- [ ] Audit logs capture all changes for compliance.