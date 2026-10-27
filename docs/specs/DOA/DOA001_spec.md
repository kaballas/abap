# Functional Specification: DOA001 — Handling Workers Compensation Certificates for Detached Officers in SAP ECC (ABAP)

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires that, after a police officer is terminated and rehired as a 'detached officer' (non-employee), Workers Compensation (WC) certificates continue to be received and stored for case management in OLIMS. For EPSS detached officers, no further Workers Compensation payments are to be made via NSW Police payroll/SAP after termination; all such payments are made directly by the insurer EML. The only exception is retroactive payments for periods where the officer was still active (i.e., before the termination).

---

## 2. Scope

This requirement applies to the treatment, handling, and integration of Workers Compensation certificates in OLIMS and SAP for officers who have separated and are rehired as detached officers for EPSS purposes.

---

## 3. Detailed Functional Requirements

### 3.1 Certificate Storage and Upload

- WC certificates for detached officers must be uploaded and stored in OLIMS for ongoing case management.
- OLIMS must validate that a detached officer (non-employee) record exists before allowing certificate upload post-termination.
- Certificates must be linked to both the original (terminated) and detached (non-employee) employee numbers for historical and ongoing management.

### 3.2 Creation of IT0014 9WCO

- After termination and hire as a detached officer, WC certificates must result in IT0014 9WCO records being created against the detached non-employee number (not the original).
- IT0014 9WCO records must not trigger WC payment wagetype 4901 for the detached cohort.

### 3.3 Payroll Processing and Wagetype Suppression

- For detached officers, wagetype 4901 must be suppressed in payroll processing.
- Only retroactive payments for periods prior to termination are permitted via payroll; all other WC payments are made by EML.
- Payroll logic must ensure no WC payments are generated for detached officers except for approved retros.

### 3.4 Case Management, Reporting, and Week Counting

- OLIMS must support ongoing case management for detached officers, including certificate tracking, week counting, and reporting.
- Week counting logic for S36/S37 must be clarified and documented for detached officers when 4901 is not present.
- All actions must be auditable and reportable.

### 3.5 Handling Late/Out-of-Sequence Data

- If a termination or detached officer hire is processed late, manual steps must be documented to ensure correct redirection of IT0014 9WCO records and certificate linkage.
- OLIMS must prevent certificate uploads if no detached officer record exists.

### 3.6 Bulk Uploads

- Bulk upload of WC certificates for detached officers must be supported, with validation and error reporting.
- Uploaded certificates must be mapped to the correct detached officer number.

### 3.7 Error Handling & Audit Trail

- All errors (e.g., missing detached officer record, invalid certificate dates) must be logged and reported to the claims officer.
- All certificate uploads, IT0014 9WCO creations, and wagetype suppressions must be audit-trailed for compliance.

---

## 4. Exception Handling

- Retroactive WC payments for periods before termination are allowed and must be processed against the original employee number.
- All post-termination WC payments are made by EML, not via SAP payroll.
- Manual intervention is required for late terminations or hires to ensure correct record creation and linkage.

---

## 5. Compliance/Controls

- Payroll controls must ensure no WC payments are made to detached officers except for approved retros.
- OLIMS access must be restricted to authorised users for certificate upload and case management.
- All actions must be auditable, with regular reconciliation between OLIMS, SAP, and EML payment records.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001–DOB005, P905 retro logic.
- See also: Open Items 14–34 in the requirements register for related design and process clarifications.

---

## 7. Acceptance Criteria

- WC certificates for detached officers can be uploaded and stored in OLIMS.
- IT0014 9WCO records are created only against the detached non-employee number post-termination.
- Wagetype 4901 is suppressed for detached officers in payroll.
- Retroactive WC payments are only processed for periods before termination.
- All actions are audit-trailed and reportable.
- Error handling and manual processes are documented for late or out-of-sequence data.
- Compliance controls and reconciliation processes are in place.