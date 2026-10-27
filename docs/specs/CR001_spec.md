# Functional Specification: CR001 — Handling Workers Compensation Certificates for Detached Officers in SAP ECC (ABAP)

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
- Certificates uploaded after termination must not trigger WC payments in SAP payroll.
- OLIMS must validate that a detached non-employee record exists before allowing certificate upload for post-termination periods.

### 3.2 Creation of IT0014 9WCO

- After termination and hire as a detached officer, WC certificates must result in IT0014 9WCO records being created against the detached non-employee number (not the original).
- IT0014 9WCO records for detached officers must not generate wagetype 4901.

### 3.3 Payroll Processing and Wagetype Suppression

- SAP payroll must suppress wagetype 4901 for all detached officers (identified by ESG/number range).
- Only retroactive payments for periods before termination may be processed via payroll for the original employee number.
- All ongoing WC payments for detached officers are made by EML, not via SAP payroll.

### 3.4 Case Management, Reporting, and Week Counting

- OLIMS must continue to support case management, reporting, and week counting for detached officers.
- Week counting logic for S36/S37 must be clarified and documented when 4901 is not present for detached officers.

### 3.5 Handling Late/Out-of-Sequence Data

- If certificates are uploaded late or out of sequence, OLIMS must ensure correct mapping to the detached non-employee number and prevent duplicate or erroneous payroll records.
- Manual intervention steps must be documented for late terminations or hires.

### 3.6 Bulk Uploads

- Bulk upload of WC certificates for detached officers must be supported, with validation to prevent payroll triggers.
- Uploaded data must be auditable and linked to the correct detached officer record.

### 3.7 Error Handling & Audit Trail

- All certificate uploads, IT0014 9WCO creations, and wagetype suppressions must be logged for audit.
- Errors (e.g., missing detached officer record, upload failures) must be reported to the user with clear messages and retained in an audit log.

---

## 4. Exception Handling

- Retroactive WC payments for periods before termination are permitted and must be processed against the original employee number.
- All post-termination WC payments are made by EML and must not be processed via SAP payroll.
- Manual correction is required if certificates are uploaded before the detached officer record is created.

---

## 5. Compliance/Controls

- Payroll controls must ensure no WC payments (4901) are made to detached officers post-termination.
- OLIMS access and upload permissions must be restricted to authorised users.
- All actions must be auditable, and regular reconciliation between OLIMS, SAP, and EML payment files must be performed.

---

## 6. References and Linked Requirements

- DOA010, DOA012, DOB001–DOB005, P905 retro logic
- Related SAP and OLIMS documentation

---

## 7. Acceptance Criteria

- WC certificates for detached officers are uploaded and stored in OLIMS without triggering SAP payroll payments.
- IT0014 9WCO records are created only against detached non-employee numbers.
- Wagetype 4901 is suppressed for all detached officers.
- All actions are logged and auditable.
- Exception scenarios (retro payments, late uploads) are handled as specified.
- Compliance and reconciliation controls are in place and tested.