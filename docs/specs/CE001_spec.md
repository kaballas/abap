# Functional Specification: CE001 — Handling Workers Compensation Certificates for Detached Officers in SAP ECC (ABAP)

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires that, after a police officer is terminated and rehired as a 'detached officer' (non-employee), Workers Compensation (WC) certificates continue to be received and stored for case management in OLIMS. However, for EPSS detached officers, no further Workers Compensation payments should be made via NSW Police payroll/SAP after termination; all such payments are made directly by the insurer EML. The only exception is retroactive payments for periods where the officer was still active (i.e., before the termination).

---

## 2. Scope

This requirement applies to the treatment, handling, and integration of Workers Compensation certificates in OLIMS and SAP for officers who have separated and are rehired as detached officers for EPSS purposes.

---

## 3. Detailed Functional Requirements

### 3.1 Certificate Storage and Upload

- WC certificates for detached officers must be uploaded and stored in OLIMS for ongoing case management.
- Certificates uploaded after termination must not trigger any WC payment via SAP payroll.
- Certificates must be linked to the detached officer’s non-employee number for all post-termination records.

### 3.2 Creation of IT0014 9WCO

- Upon upload of a WC certificate for a detached officer, OLIMS must create an IT0014 9WCO record against the detached non-employee number.
- IT0014 9WCO records must not generate or trigger wagetype 4901 for detached officers.

### 3.3 Payroll Processing and Wagetype Suppression

- SAP payroll must suppress wagetype 4901 for all detached officers (identified by ESG/employee group or number range).
- Only retroactive WC payments for periods before termination are permitted; these are processed against the original employee number.
- All insurer (EML) WC payments are excluded from SAP payroll for detached officers.

### 3.4 Case Management, Reporting, and Week Counting

- OLIMS must allow continued case management for detached officers, including certificate upload, week counting, and reporting.
- Week counting logic for S36/S37 must be clarified and documented for detached officers when wagetype 4901 is not present.
- All reporting must distinguish between active and detached officer cohorts.

### 3.5 Handling Late/Out-of-Sequence Data

- If a termination or detached officer hire is processed late, manual steps must be documented to ensure IT0014 9WCO records are created/redirected to the correct employee number.
- OLIMS must validate that a detached non-employee number exists before pushing payroll records.

### 3.6 Bulk Uploads

- OLIMS must support bulk upload of WC certificates for detached officers, ensuring correct linkage and suppression of payroll payments.

### 3.7 Error Handling & Audit Trail

- All certificate uploads, IT0014 9WCO creations, and wagetype suppressions must be audit logged.
- Errors (e.g., missing detached officer number, failed suppression) must be reported to the claims officer for correction.

---

## 4. Exception Handling

- Retroactive WC payments for periods before termination are allowed and processed against the original employee number.
- All post-termination WC payments are made by the insurer (EML) and must not be processed via SAP payroll.
- Manual intervention is required for late terminations or hires to ensure correct record creation.

---

## 5. Compliance/Controls

- Payroll controls must ensure no WC payments are made to detached officers via SAP.
- OLIMS access and audit logs must track all certificate uploads and changes.
- Reporting and reconciliation processes must confirm that all WC payments for detached officers are made only by EML.

---

## 6. References and Linked Requirements

- DOA010, DOA012, DOB001–DOB005, P905 retro logic.
- See also: DOA013, DOB001, DOB006, DOB007, DOB008.

---

## 7. Acceptance Criteria

- WC certificates for detached officers are uploaded and stored in OLIMS without triggering SAP payroll payments.
- IT0014 9WCO records are created only against the detached non-employee number.
- Wagetype 4901 is suppressed for all detached officers.
- Retroactive payments before termination are processed correctly.
- All uploads, suppressions, and errors are audit logged.
- Reports confirm no SAP payroll WC payments for detached officers post-termination.
- Manual steps for late data are documented and followed.
- All compliance and reconciliation controls are met.