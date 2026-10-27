# Functional Specification: DOA013 — Handling Workers Compensation Certificates for Detached Officers in SAP ECC (ABAP)

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires that, after a police officer is terminated and subsequently rehired as a 'detached officer' (non-employee), Workers Compensation (WC) certificates must continue to be received and stored for ongoing case management in OLIMS. However, for EPSS detached officers, no further Workers Compensation payments are to be processed via NSW Police payroll/SAP after the officer’s termination date; all such payments are made directly by the insurer, EML. The only exception is for retroactive payments relating to periods when the officer was still active (i.e., prior to termination).

---

## 2. Scope

This specification applies to the handling, processing, and integration of Workers Compensation certificates in OLIMS and SAP for officers who have separated and are rehired as detached officers under the EPSS. It covers certificate storage, payroll suppression, reporting, and exception handling for this cohort.

- Recorded that WC certificates will still be acquired by the officer once terminated and will be uploaded into OLIMS for case management activities only. The upload of these WC certificates is not to generate any workers compensation payments.
- Terminated officers' WC payments will not be paid by NSWPF and will be paid by the insurer EML directly.
- The only exception is for retrospective payments to be made to the officer during the period of employment as a police officer, following the existing business process of reprocessing the P905s to generate the backdated payment.
- If there is a blocker in OLIMS that prevents upload of WC certificates against a terminated employee, it must be removed, with restrictions as required (e.g., only if the terminated employee exists as a former employee against an employee in the new Employee subgroup used by detached officers).
- Additional requirement recorded: S36/S37 week counting currently depends on the presence of 4901; this must be enhanced to also check for detached external WC uploads, as detached officers will not have WT 4901. EPSS payment logic for detached must reflect the External WC instead of 4901 for all scenarios where applicable.

---

## 3. Detailed Functional Requirements

### 3.1 Certificate Storage and Upload

- All WC certificates for detached officers must be uploaded and stored in OLIMS, regardless of employment status.
- Certificates must be linked to the officer’s case and accessible for review and audit.
- OLIMS must support upload of certificates received after termination and during detached officer status.
- OLIMS must allow upload of WC certificates against a terminated employee for dates after termination. No OLIMS blocker should prevent this, provided the terminated employee is linked as a former employee to a detached officer record if required.

### 3.2 Creation of IT0014 9WCO

- Upon receipt of a WC certificate, OLIMS must trigger the creation of IT0014 subtype 9WCO in SAP for detached officers only if the certificate period overlaps with pre-termination dates.
- No new IT0014 9WCO entries are to be created for periods after the officer’s termination date.
- Certificates are generally entered in advance, and IT14 9WCO will also be created in advance. If IT14 future records exist post-termination, ensure they do not result in payments for inactive periods.
- Regeneration of P905 will be required once the detached employee is hired so that 9WCO can be created in IT14 against the detached officer for payroll processing. The P905 creation logic must check if the certificate is for dates where a detached employee is active and the attached employee is inactive.

### 3.3 Payroll Processing and Wagetype Suppression

- SAP payroll must suppress all WC-related wage types for detached officers for periods after termination.
- Retroactive payroll processing is permitted only for periods where the officer was active (pre-termination).
- Any attempt to process WC payments for post-termination periods must result in an error and be logged.
- For the new detached employee subgroup, block the creation of WT 4901 but keep the EPSS P1/2/3 payment generation.
- Confirm that the creation of IT14 during detached officer active dates does not push PAWE and WC stat rate to 9WCO, to prevent WT 4901 for the detached officer.

### 3.4 Case Management, Reporting, and Week Counting

- OLIMS must continue to count and report WC certificate weeks for detached officers for case management and statutory reporting.
- Week counting logic must exclude periods after termination from payroll calculations but include them for case tracking.
- S36/S37 week counting currently requires 4901 to be present; this must be enhanced to also check for detached external WC uploads, as detached officers will not have WT 4901. EPSS payment for detached must reflect the External WC instead of 4901 for all scenarios where applicable.
- Additional requirement: S36/S37 week counting logic must be enhanced to check for detached external WC uploads in addition to 4901, ensuring detached officers are included in week counting and EPSS payment logic as required.

### 3.5 Handling Late/Out-of-Sequence Data

- If a WC certificate is received late or out-of-sequence, OLIMS must validate the certificate period and only trigger SAP actions for eligible (pre-termination) periods.
- Late certificates for post-termination periods are stored for reference but do not trigger payroll actions.
- If IT14 9WCO is loaded in advance and the employee terminates after, ensure that IT14 future records are handled so that no payments are made for inactive periods.

### 3.6 Bulk Uploads

- OLIMS must support bulk upload of WC certificates for detached officers, applying the same validation and processing logic as for single uploads.

### 3.7 Error Handling & Audit Trail

- All exceptions, errors, and suppressed payroll actions must be logged in an audit trail.
- OLIMS and SAP must provide error messages and audit records for all suppressed or rejected WC payroll actions.
- If the WC certificate in OLIMS loads IT14 9WCO against either the terminated employee for periods when inactive vs against the detached employee (as per former employee number), ensure business concerns are addressed: no inactive person is paid while inactive.

---

## 4. Exception Handling

- Retroactive entitlements: If a certificate covers a period before termination, retroactive payroll processing is allowed.
- Insurer payments: All WC payments for periods after termination are made directly by EML, not via SAP payroll.
- Certificates received for post-termination periods are stored but do not trigger payroll actions.
- If S36/S37 week counting logic is dependent on 4901, ensure it is enhanced to also consider detached external WC uploads for detached officers.

---

## 5. Compliance/Controls

- Payroll controls must ensure no WC payments are processed for detached officers post-termination.
- OLIMS access controls must restrict certificate upload and viewing to authorized users.
- Regular reporting and reconciliation between OLIMS and SAP to ensure compliance with EPSS requirements.
- For EPSS payment scenarios where only WT4901 is currently considered, ensure that External WC uploads for detached officers are also included in the logic.
- For WC earnings upload, this is a new value and new WT provided by EML, with the value provided as a weekly value, dated per week cycle.

---

## 6. References and Linked Requirements

- DOA010, DOA012, DOB001–DOB005
- P905 retro logic

---

## 7. Acceptance Criteria

- [x] WC certificates for detached officers are stored in OLIMS regardless of employment status.
- [x] No WC payroll payments are processed for periods after termination.
- [x] Retroactive payments are only processed for eligible pre-termination periods.
- [x] All exceptions and suppressed actions are logged and auditable.
- [x] Bulk upload and late certificate handling follow the defined logic.
- [x] Compliance and reconciliation reports are available and accurate.
- [x] OLIMS allows upload of WC certificates for terminated employees for dates after termination, with no blocker, provided linkage to a detached officer record as required.
- [x] S36/S37 week counting logic is enhanced to consider detached external WC uploads in the absence of WT 4901, ensuring correct EPSS payment logic for detached officers.
- [x] For WC earnings upload, a new value and new WT provided by EML is used, provided as a weekly value, dated per week cycle.