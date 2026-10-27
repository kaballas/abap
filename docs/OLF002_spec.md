# Functional Specification: OLF002 — EPSS Estimation Tab One-to-One Incident-Estimate Relationship

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires accurate forecasting of benefit payments for each workers compensation incident. To support scheme management, OLIMS must allow claims officers to enter and report a single forecast estimate per incident, ensuring traceability and unique reporting for each claim.

---

## 2. Scope

This specification covers the implementation of a one-to-one relationship between each incident and its forecasted estimate in OLIMS. It defines user roles, required data fields, and reporting keys for EPSS estimation.

---

## 3. Detailed Functional Requirements

- Each incident in OLIMS must have at most one associated forecast estimate record.
- EPSS claims officers are responsible for entering and updating the estimate for each incident.
- Key fields required for unique reporting of estimates:
    - Incident Number
    - Claim Number
    - Date Range (estimate period)
- The system must prevent duplicate estimate records for the same incident.
- Estimate records must be editable by claims officers and auditable.

---

## 4. Exception Handling

- If a user attempts to create a second estimate for an incident, the system must display an error and block the action.
- If required key fields (incident number, claim number, date range) are missing, the system must prompt the user to complete them before saving.

---

## 5. Compliance/Controls

- All estimate entries and changes must be logged for audit purposes.
- Access to create or edit estimates is restricted to EPSS claims officers.
- Reporting must support unique identification and traceability of each estimate.

---

## 6. References and Linked Requirements

- Cross-references: OLF001, OLF003–OLF010, RPK001–RPK004, RPL001–RPL005, icare recoup report logic.

---

## 7. Acceptance Criteria

- [ ] Only one estimate can exist per incident in OLIMS.
- [ ] Key fields (incident number, claim number, date range) are mandatory and uniquely identify each estimate.
- [ ] Only EPSS claims officers can create/edit estimates.
- [ ] All estimate changes are audit logged.
- [ ] Reports can extract and display unique estimates per incident for compliance and scheme management.