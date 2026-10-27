# Functional Specification: DOA002 — Handling Workers Compensation Certificates for Detached Officers in SAP ECC (ABAP)

---

## 1. Business Background

Under the Enhanced Police Support Scheme (EPSS), police officers who are terminated and later rehired as 'detached officers' (non-employees) may have their EPSS claims reopened if they suffer a downgrade and the insurer determines weekly benefits are payable. In these cases, OLIMS must allow claims to be set to a new "Reopen" status for ongoing administration, but no further Workers Compensation (WC) payments are to be made via SAP payroll after termination, except for retroactive periods when the officer was still active.

---

## 2. Scope

This specification covers the handling, storage, and integration of Workers Compensation certificates in OLIMS and SAP for officers whose EPSS claims are reopened as detached officers, including claim status management, payroll suppression, and reporting.
- Recorded that "Reopen" is a new claim status to be created in OLIMS for this requirement. "Reopen" is to be used against the old employee number for the relevant existing claim/incident and is not for a brand new incident that came to light late.
- Substatus options (e.g., Period 1/2/3) are required to be tracked within "Reopen" for claim administration.

---

## 3. Detailed Functional Requirements

### 3.1 Certificate Storage and Upload

- WC certificates for detached officers must be uploaded and stored in OLIMS for case management.
- Certificates are linked to the original employee number and incident; no new incident is created.
- Uploading certificates after termination must not trigger WC payments in SAP.
- Certificates uploaded and set to primary/medical certificates backdated to the time when the officer was active may result in EPSS payments backdated against the old number, subject to eligibility and business rules.

### 3.2 Creation of IT0014 9WCO

- Upon claim "Reopen" status, IT0014 9WCO records are created against the detached non-employee number (not the original).
- IT0014 9WCO must not generate wagetype 4901 for detached officers.

### 3.3 Payroll Processing and Wagetype Suppression

- SAP payroll must suppress wagetype 4901 for all detached officers (identified by ESG/number range).
- Only retroactive payments for pre-termination periods are allowed via payroll.
- All post-termination WC payments are made directly by the insurer (EML).

### 3.4 Case Management, Reporting, and Week Counting

- OLIMS must allow claims to be set to "Reopen" status on the original employee number.
- Substatus options must be defined to track Period 1/2/3 statuses within "Reopen".
- Week counting logic must be maintained for S36/S37 even if 4901 is not present; alternative indicators may be required.
- "Reopen" is a new status in OLIMS and must be available for selection on the original employee number for detached officer claims.
- Substatus options must be implemented to keep Period 1/2/3 statuses separate within "Reopen" and other statuses as required.

### 3.5 Handling Late/Out-of-Sequence Data

- If certificates are uploaded late or out-of-sequence, OLIMS must support backdating and correct week counting.
- Manual intervention may be required for late terminations or hires to ensure correct IT0014 9WCO assignment.

### 3.6 Bulk Uploads

- Bulk upload of WC certificates must be supported for detached officers, with validation to ensure correct employee number linkage and no payroll triggers.

### 3.7 Error Handling & Audit Trail

- All certificate uploads, status changes, and IT0014 9WCO creations must be audit logged.
- Errors in upload or processing (e.g., missing detached officer number) must be reported to the claims officer for correction.

---

## 4. Exception Handling

- Retroactive entitlements for periods before termination are processed as per existing business rules.
- All post-termination WC payments are made by EML, not SAP payroll.
- If a claim is incorrectly set to "Reopen" without a valid detached officer number, processing is halted and flagged for review.
- If "Reopen" status is not available or not correctly set on the existing claim/incident, processing must be halted and flagged for review.

---

## 5. Compliance/Controls

- Payroll controls must ensure no WC payments (4901) are made to detached officers post-termination.
- OLIMS access and status changes are restricted to authorised claims officers.
- All actions are audit logged and reportable for reconciliation and compliance.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001–DOB005, P905 retro logic.
- Related requirements: DOA017 (substatus model), DOA013 (certificate upload logic), DOB001 (wagetype suppression).
- Refer to BRD4_Phase 4_Requirements Notes.xlsx for scoping and additional context.

---

## 7. Acceptance Criteria

- [x] OLIMS supports "Reopen" status for detached officer claims on original employee number.
- [x] Substatus options for Period 1/2/3 are available within "Reopen".
- [x] IT0014 9WCO is created only against detached non-employee number.
- [x] Wagetype 4901 is suppressed for all detached officers.
- [x] No WC payments are made via SAP payroll post-termination (except retro).
- [x] All uploads, status changes, and payroll actions are audit logged.
- [x] Errors in certificate upload or processing are reported and require correction.
- [x] Reporting supports compliance and reconciliation for all detached officer WC certificates and payments.