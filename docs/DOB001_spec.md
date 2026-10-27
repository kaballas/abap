# Functional Specification: DOB001 — EML Workers Compensation Payment Suppression for Detached Officers

---

## 1. Business Background

Detached officers (former police officers hired as non-employees under the EPSS On Duty position) are no longer paid Workers Compensation (WC) by NSW Police Force (NSWPF). Instead, the insurer EML is responsible for all WC payments for this cohort. The current OLIMS certificate upload and P905 process must be amended to ensure no WC payments are generated or paid by NSWPF for these officers.

---

## 2. Scope

This requirement applies to all detached officers hired under the new EPSS On Duty position. It covers changes to OLIMS, P905 processing, and SAP payroll integration to suppress WC wagetype 4901 for this cohort. It also clarifies the handling of WC claim details, IT0014 9WCO records, and ensures no WC payments are triggered for detached officers.

---

## 3. Detailed Functional Requirements

- OLIMS and P905 must not generate or pay WC wagetype 4901 for detached officers; EML is responsible for all WC payments for this cohort.
- The process for capturing WC claim details and dates for detached officers must be clarified if P905 is not processed.
- IT0014 9WCO records must not trigger WC payments for detached officers.
- OLIMS/P905 must suppress wagetype 4901 for detached officers.
- The process for capturing WC claim details and dates when P905 is not used must be documented.
- Confirm that IT0014 9WCO should not trigger WC payments for this cohort.

---

## 4. Exception Handling

- If a detached officer is incorrectly paid WC by NSWPF, the system must flag the error and prevent payment processing.
- Any attempt to generate wagetype 4901 for a detached officer must result in an error message and no payment.
- If IT0014 9WCO is created for a detached officer, it must not result in a WC payment.

---

## 5. Compliance/Controls

- Payroll controls must ensure no WC payments are made to detached officers.
- OLIMS access and reporting must clearly identify detached officers and suppress WC payment logic.
- Reconciliation reports must confirm that no wagetype 4901 payments are made for detached officers.

---

## 6. References and Linked Requirements

- Cross-references: DOA001, DOA013, DOB002–DOB008, P905 retro logic
- See [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] OLIMS/P905 does not generate wagetype 4901 for detached officers.
- [ ] No WC payments are made by NSWPF for detached officers.
- [ ] IT0014 9WCO records do not trigger WC payments for detached officers.
- [ ] Error handling is in place for any attempt to pay WC to detached officers.
- [ ] Compliance and reconciliation reports confirm no WC payments for detached officers.
- [ ] Documentation exists for capturing WC claim details and dates for detached officers without P905 processing.