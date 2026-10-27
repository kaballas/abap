# Functional Specification: OLH005 — EPSS Period 2 Payment Control

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) provides supplementary support payments to eligible NSW Police Force officers. Currently, EPSS Period 2 payments are automatically triggered when Period 1 is exhausted and a valid Workers Compensation (WC) certificate is uploaded and processed in OLIMS. However, business requirements have changed to introduce manual control over the commencement, pausing, and recommencement of Period 2 payments, ensuring payments are only made when eligibility is confirmed.

---

## 2. Scope

This specification covers the functional changes required to:
- Prevent automatic calculation and payment of EPSS Period 2 upon Period 1 exhaustion.
- Introduce a manual approval flag in OLIMS for Period 2 payments.
- Allow claims officers to start, pause, and recommence Period 2 payments, with appropriate audit and reporting.
- Ensure WC payments continue independently of EPSS payment status.

---

## 3. Detailed Functional Requirements

- **OLH005.1**: A new flag, defaulting to “Not approved to pay”, must be added in OLIMS for all new Period 2 claims.
- **OLH005.2**: Only when the flag is set to “Approved to pay” by an EPSS Claims Officer, will SAP automation commence Period 2 calculation and payments.
- **OLH005.3**: Claims Officers must be able to pause and recommence Period 2 payments at any time, with date-driven entries and no gaps allowed.
- **OLH005.4**: All changes to the approval flag must be logged with user, date/time, and reason.
- **OLH005.5**: The system must allow retrospective recalculation for missed payroll periods due to late advice.
- **OLH005.6**: Workers Compensation payments (IT0014 9WCO) must continue regardless of the EPSS Period 2 payment flag status.

---

## 4. Exception Handling

- If a claims officer attempts to approve, pause, or recommence payments with missing or invalid dates, the system must display an error and prevent the action.
- If the flag is not set to “Approved to pay”, no EPSS Period 2 payments are processed, but WC payments are unaffected.
- Any attempt to create overlapping or gap periods in payment status changes must be blocked with a validation error.

---

## 5. Compliance/Controls

- All changes to the Period 2 payment flag and related actions must be audit-logged for compliance.
- Access to change the flag is restricted to authorised EPSS Claims Officers.
- Reports must be available to reconcile payment status, audit flag changes, and support payroll reconciliation.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic, OLH001–OLH004 (Period 2 payment control), P1C001–P1C009 (Period 1 payment control).

---

## 7. Acceptance Criteria

- [ ] OLIMS displays a “Not approved to pay” flag for all new Period 2 claims.
- [ ] Only authorised users can change the flag and must provide a reason.
- [ ] System prevents automatic Period 2 payments unless the flag is set to “Approved to pay”.
- [ ] Claims Officers can pause and recommence Period 2 payments with date tracking and no gaps.
- [ ] All flag changes are audit-logged and reportable.
- [ ] WC payments continue regardless of EPSS Period 2 payment status.
- [ ] Retrospective recalculation is supported for late approvals.
- [ ] Exception handling and validation are implemented as specified.