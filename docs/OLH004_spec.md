# Functional Specification: OLH004 — EPSS Period 2 Payment Control

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) provides supplementary support payments to eligible NSW Police Force officers. Currently, EPSS Period 2 payments are automatically triggered when Period 1 is exhausted and a valid Workers Compensation (WC) certificate is uploaded. This automation has led to instances where payments commence without manual review, potentially resulting in overpayments or payments to ineligible officers. The business requires a manual control to approve, pause, or recommence Period 2 payments, ensuring compliance and accuracy.

---

## 2. Scope

This specification covers the introduction of a manual approval flag for EPSS Period 2 payments within OLIMS, including the ability to start, pause, and recommence payments. The solution must ensure that WC payments continue independently of the EPSS flag status. The scope includes UI changes, workflow, audit, reporting, and integration with SAP payroll.

---

## 3. Detailed Functional Requirements

- A new "Approved to Pay" flag for Period 2 must be added in OLIMS, defaulting to "Not approved to pay" for all new claims.
- Only EPSS Claims Officers can set the flag to "Approved to pay"; only managers can revert it.
- When the flag is "Not approved to pay," EPSS Period 2 payments are not calculated or paid, but WC payments continue.
- The system must allow pausing and recommencing Period 2 payments, with date tracking and mandatory reason selection for each change.
- All flag changes must be audit logged, including user, date/time, and reason.
- Retrospective recalculation must occur for missed payroll periods when the flag is set to "Approved."
- OLIMS must provide a QA report showing the flag status and reasons for all active claims.
- Access to change the flag must be role-restricted.

---

## 4. Exception Handling

- If a user without the required role attempts to change the flag, display an error and prevent the action.
- If a flag change is attempted without a reason, display a mandatory field error.
- If payroll is locked, prevent flag changes and display an appropriate message.
- System must handle retroactive changes gracefully, recalculating only affected periods.

---

## 5. Compliance/Controls

- All flag changes are audit logged for compliance.
- Only authorized users (Claims Officers/Managers) can change the flag.
- QA reporting enables monitoring of claims with "Not approved to pay" status.
- No impact on WC payments or week counting when EPSS flag is "Not approved to pay."
- All changes are reportable for reconciliation and audit.

---

## 6. References and Linked Requirements

Cross-references: OLH001, OLH002, OLH003, P1C001–P1C009, OLIMS Phase 4/5 requirements, SAP payroll integration, and reporting requirements.

---

## 7. Acceptance Criteria

- [ ] "Approved to Pay" flag for Period 2 is present in OLIMS and defaults to "Not approved to pay."
- [ ] Only authorized users can change the flag, with role-based access enforced.
- [ ] Mandatory reason is required for every flag change.
- [ ] All flag changes are audit logged with user, date/time, and reason.
- [ ] When flag is "Not approved to pay," no EPSS Period 2 payments are made, but WC payments continue.
- [ ] Retrospective recalculation occurs when flag is set to "Approved."
- [ ] QA report is available showing flag status and reasons for all active claims.
- [ ] Exception handling is implemented as specified.
- [ ] No impact on WC payments or week counting when flag is "Not approved to pay."
- [ ] All requirements are tested and signed off in UAT.