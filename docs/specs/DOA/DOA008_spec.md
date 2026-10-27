# Functional Specification: DOA008 — Handling Workers Compensation Certificates for Detached Officers in SAP ECC (ABAP)

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires that, after a police officer is terminated and rehired as a 'detached officer' (non-employee), Workers Compensation (WC) certificates continue to be received and stored for case management in OLIMS. However, for EPSS detached officers, no further Workers Compensation payments should be made via NSW Police payroll/SAP after termination; all such payments are made directly by the insurer EML. The only exception is retroactive payments for periods where the officer was still active (i.e., before the termination).

---

## 2. Scope

This requirement applies to the treatment, handling, and integration of Workers Compensation certificates in OLIMS and SAP for officers who have separated and are rehired as detached officers for EPSS purposes.
- Recorded that a PA40 – Hire Action will be required to rehire terminated police officers eligible for ongoing EPSS payments as detached officers. The Hire Action used for PBRI Income Protection (ZM) is to be used as a baseline for the infotypes required (Personal Data, Addresses, Communications, Tax File Number, Planned Working Time, Bank Account).
- Hire is to be performed via PA40 in SAP. A programmatic hire process is also acceptable if it can accommodate auto number defaults. ESS configuration is not in scope unless specifically required.

---

## 3. Detailed Functional Requirements

### 3.1 Certificate Storage and Upload

- WC certificates for detached officers must be uploaded and stored in OLIMS for ongoing case management.
- Certificates uploaded after termination must be linked to the detached non-employee number, not the original employee number.
- OLIMS must validate that a detached non-employee record exists before allowing certificate upload for post-termination periods.

### 3.2 Creation of IT0014 9WCO

- Upon certificate upload for a detached officer, OLIMS must generate IT0014 9WCO records against the detached non-employee number.
- IT0014 9WCO records must not trigger WC payment wagetype 4901 for detached officers.

### 3.3 Payroll Processing and Wagetype Suppression

- SAP payroll must suppress wagetype 4901 for all detached officers (identified by ESG/number range).
- Only retroactive WC payments for pre-termination periods may be processed via payroll; all post-termination WC payments are excluded.
- Any EML WC payments are to be uploaded as external earnings and offset EPSS payments, not processed as payroll WC.

### 3.4 Case Management, Reporting, and Week Counting

- OLIMS must allow ongoing case management of incidents and certificates for detached officers.
- Week counting logic for S36/S37 must be maintained even when 4901 is suppressed; alternative indicators must be used if required.
- All certificate and payment records must be reportable for compliance and audit.

### 3.5 Handling Late/Out-of-Sequence Data

- If a termination or detached hire is processed late, manual steps must ensure that IT0014 9WCO records are created/redirected to the correct detached non-employee number.
- OLIMS must support correction of certificate and payment records in such scenarios.

### 3.6 Bulk Uploads

- Bulk upload of WC certificates for detached officers must be supported, with validation and error reporting.
- Uploaded records must be auditable and linked to the correct detached non-employee.

### 3.7 Error Handling & Audit Trail

- All errors in certificate upload, IT0014 creation, or wagetype suppression must be logged and reportable.
- An audit trail must be maintained for all certificate uploads, IT0014 record creation, and any manual corrections.

---

## 4. Exception Handling

- Retroactive WC payments for periods before termination are permitted and processed via payroll.
- All post-termination WC payments are made by EML and must not be processed by SAP payroll.
- Manual intervention is required for late terminations or hires to ensure correct record creation.
- If the hire action cannot be completed via PA40 or programmatically with auto number defaults, flag for review and document the required workaround.

---

## 5. Compliance/Controls

- Payroll controls must ensure no WC payments are made to detached officers post-termination.
- OLIMS access and data entry must be restricted to authorised users.
- All certificate, payment, and audit records must be available for reporting and reconciliation.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic.
- Related requirements: DOA013 (certificate upload), DOB001 (wagetype suppression), DOA014 (external earnings).
- The PBRI Income Protection (ZM) Hire Action is the baseline for infotype requirements.

---

## 7. Acceptance Criteria

- [x] WC certificates for detached officers can be uploaded and stored in OLIMS.
- [x] IT0014 9WCO records are created only against detached non-employee numbers.
- [x] Wagetype 4901 is suppressed for all detached officers in payroll.
- [x] No WC payments are made via SAP payroll for detached officers post-termination.
- [x] All certificate and payment records are auditable and reportable.
- [x] Manual correction process is documented for late terminations or hires.
- [x] Compliance and audit controls are in place and tested.
- [x] PA40 Hire Action or equivalent programmatic process is used for hiring detached officers, using the PBRI Income Protection (ZM) action as a baseline for infotype updates.