# Functional Specification: CE003 — Handling Workers Compensation Certificates for Detached Officers in SAP ECC (ABAP)

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
- Certificates must be linked to the detached officer's non-employee record (new employee number).

### 3.2 Creation of IT0014 9WCO

- After termination and hire as a detached officer, IT0014 9WCO records must be created against the detached non-employee number (not the original).
- IT0014 9WCO must not generate WC payment wagetype 4901 for detached officers.
- P905 regeneration must ensure IT0014 9WCO is created for the correct employee number and period.

### 3.3 Payroll Processing and Wagetype Suppression

- For detached officers, wagetype 4901 must be blocked/suppressed in payroll processing.
- Only retro payments for periods before termination are allowed via payroll.
- EML-provided WC payments are not processed as payroll payments but may be uploaded for offsetting EPSS payments.

### 3.4 Case Management, Reporting, and Week Counting

- OLIMS must allow ongoing case management for detached officers, including certificate upload, incident tracking, and reporting.
- Week counting logic for S36/S37 must be clarified and documented, especially when 4901 is not present.
- All relevant reporting must distinguish between attached and detached officer records.

### 3.5 Handling Late/Out-of-Sequence Data

- If certificates are uploaded late or out-of-sequence, manual steps must be documented for correcting IT0014 9WCO records and ensuring no incorrect payments are made.
- OLIMS must provide error messages or warnings for late uploads or missing detached officer records.

### 3.6 Bulk Uploads

- Bulk upload of WC certificates for detached officers must be supported in OLIMS.
- Uploaded data must be validated to ensure correct linkage to detached officer records and no payroll payment triggers.

### 3.7 Error Handling & Audit Trail

- All certificate uploads, IT0014 9WCO creations, and wagetype suppressions must be audit-logged.
- Errors (e.g., missing detached officer record, upload to wrong employee number) must be reported to the claims officer for correction.

---

## 4. Exception Handling

- Retroactive WC payments for periods before termination are permitted and must be processed against the original employee number.
- All WC payments after termination are made directly by EML, not via SAP payroll.
- Manual intervention is required for late terminations or hires to ensure correct record creation and payment suppression.

---

## 5. Compliance/Controls

- Payroll controls must ensure no WC payments are made to detached officers post-termination.
- OLIMS access must be restricted to authorised users for certificate upload and case management.
- All actions must be auditable, and regular reconciliation/reporting must be available to confirm compliance.

---

## 6. References and Linked Requirements

- DOA010, DOA012, DOB001–DOB005, P905 retro logic
- Related business requirements and open items as per EPSS Phase 5 documentation

---

## 7. Acceptance Criteria

- WC certificates for detached officers are uploaded and stored in OLIMS without triggering SAP payroll payments.
- IT0014 9WCO records are created only for the detached non-employee number.
- Wagetype 4901 is suppressed for detached officers in payroll.
- Retro payments before termination are processed correctly.
- All uploads, suppressions, and exceptions are audit-logged.
- Reports accurately reflect certificate status and payment suppression for detached officers.
- Error handling and manual correction processes are documented and tested.