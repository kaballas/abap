# Functional Specification: DOA003 — Handling Workers Compensation Certificates for Detached Officers in SAP ECC (ABAP)

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires that, after a police officer is terminated and rehired as a 'detached officer' (non-employee), Workers Compensation (WC) certificates continue to be received and stored for case management in OLIMS. However, for EPSS detached officers, no further Workers Compensation payments should be made via NSW Police payroll/SAP after termination; all such payments are made directly by the insurer EML. The only exception is retroactive payments for periods where the officer was still active (i.e., before the termination).

---

## 2. Scope

This requirement applies to the treatment, handling, and integration of Workers Compensation certificates in OLIMS and SAP for officers who have separated and are rehired as detached officers for EPSS purposes.
- Recorded that for detached officers eligible for EPSS payments, the business process requires a new hire as a non-employee to enable OLIMS case management and payments through payroll. The expectation is that a new non-employee number is created, not a rehire of the old employee number. [TBC during design]

---

## 3. Detailed Functional Requirements

### 3.1 Certificate Storage and Upload

- WC certificates for detached officers must be uploaded and stored in OLIMS for ongoing case management.
- Certificates uploaded after termination must be linked to the detached officer’s non-employee number.
- OLIMS must prevent WC certificate uploads from generating WC payment wagetypes for detached officers.

### 3.2 Creation of IT0014 9WCO

- Upon upload of a WC certificate for a detached officer, OLIMS must create an IT0014 9WCO record against the detached non-employee number (not the original employee number).
- IT0014 9WCO records for detached officers must not trigger WC payment wagetype 4901.

### 3.3 Payroll Processing and Wagetype Suppression

- SAP payroll must suppress wagetype 4901 for all detached officers (identified by ESG/number range).
- Only retroactive WC payments for periods before termination are permitted via payroll; all post-termination WC payments are made by EML.
- Week counting and EPSS payment logic must not rely on 4901 for detached officers.

### 3.4 Case Management, Reporting, and Week Counting

- OLIMS must allow ongoing case management of incidents for detached officers, including certificate review and week counting.
- Week counting for S36/S37 must be supported even when 4901 is not present, using alternative indicators as required.
- All actions must be reportable for audit and compliance.

### 3.5 Handling Late/Out-of-Sequence Data

- If a WC certificate is uploaded late or out-of-sequence, OLIMS must ensure IT0014 9WCO is created/updated against the correct detached officer number.
- Manual intervention steps must be documented for scenarios where termination or detached hire occurs after certificate upload.

### 3.6 Bulk Uploads

- OLIMS must support bulk upload of WC certificates for detached officers, ensuring correct linkage and suppression of payment wagetypes.

### 3.7 Error Handling & Audit Trail

- Any errors in certificate upload, IT0014 creation, or wagetype suppression must be logged and reportable.
- All certificate uploads, IT0014 creations, and wagetype suppression actions must be audit-trailed with user, date/time, and action details.

---

## 4. Exception Handling

- Retroactive WC payments for periods before termination are allowed and must be processed against the original employee number.
- All post-termination WC payments are made by EML and must not be processed via SAP payroll.
- Manual correction process must be defined for late terminations or hires impacting certificate linkage.
- If the business process for hiring detached officers as non-employees is not followed, or if there is an attempt to rehire using the old employee number, flag as [TBC] and halt processing until resolved.

---

## 5. Compliance/Controls

- Payroll controls must ensure no WC payments are made to detached officers post-termination.
- OLIMS access and actions must be restricted to authorised users.
- All certificate uploads, IT0014 records, and wagetype suppression must be included in reporting and reconciliation processes.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001–DOB005, P905 retro logic.
- Related requirements: DOA013, DOA014, DOA017.

---

## 7. Acceptance Criteria

- [x] WC certificates for detached officers are uploaded and stored in OLIMS without triggering SAP WC payments.
- [x] IT0014 9WCO records are created only against detached non-employee numbers.
- [x] Wagetype 4901 is suppressed for all detached officers.
- [x] Week counting and reporting function correctly without reliance on 4901.
- [x] All actions are audit-trailed and reportable.
- [x] Exception scenarios (retro payments, late data) are handled per documented process.
- [x] Detached officer is hired as a non-employee with a new number, not as a rehire of the old employee number. [TBC during design]