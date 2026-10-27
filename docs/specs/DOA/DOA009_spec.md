# Functional Specification: DOA009 — Handling Workers Compensation Certificates for Detached Officers in SAP ECC (ABAP)

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires that, after a police officer is terminated and rehired as a 'detached officer' (non-employee), Workers Compensation (WC) certificates continue to be received and stored for case management in OLIMS. However, for EPSS detached officers, no further Workers Compensation payments should be made via NSW Police payroll/SAP after termination; all such payments are made directly by the insurer EML. The only exception is retroactive payments for periods where the officer was still active (i.e., before the termination).

---

## 2. Scope

This requirement applies to the treatment, handling, and integration of Workers Compensation certificates in OLIMS and SAP for officers who have separated and are rehired as detached officers for EPSS purposes.
- Recorded that the non-employee rehire must have a link to the police officer’s active registered number to allow ongoing case management in OLIMS of the existing incidents and the ability to view historical information.
- Business process is required to save the prior employee number as a former employee number in the communications IT0105 subtype FREM. [TBC in design]

---

## 3. Detailed Functional Requirements

### 3.1 Certificate Storage and Upload

- WC certificates for detached officers must be uploaded and stored in OLIMS for ongoing case management.
- Certificates uploaded after termination must be linked to the detached officer's non-employee record.
- OLIMS must prevent WC certificate uploads from triggering WC payments via SAP payroll for detached officers.

### 3.2 Creation of IT0014 9WCO

- Upon upload of a WC certificate for a detached officer, OLIMS must create an IT0014 9WCO record against the detached non-employee number (not the original employee number).
- IT0014 9WCO records for detached officers must not generate WC payment wagetype 4901.

### 3.3 Payroll Processing and Wagetype Suppression

- SAP payroll must suppress wagetype 4901 for all detached officers (identified by ESG/number range).
- Only retroactive payments for periods before termination may be processed via payroll, using the original employee number.
- No new WC payments are to be made for detached officers; all ongoing WC payments are made by EML.

### 3.4 Case Management, Reporting, and Week Counting

- OLIMS must allow ongoing case management of incidents and certificates for detached officers.
- Week counting logic for S36/S37 must be clarified and implemented for detached officers, even when 4901 is not present.
- All certificate and payment data must be reportable for compliance and audit.
- OLIMS must support the ability to link the detached officer’s non-employee record to the prior active registered number for ongoing case management and historical data access.
- The prior employee number should be stored in IT0105 subtype FREM for traceability. [TBC in design]

### 3.5 Handling Late/Out-of-Sequence Data

- If a WC certificate is uploaded after the officer's termination but relates to a period before termination, the system must support retroactive payment processing via the original employee number.
- Manual intervention may be required for late terminations or hires to ensure correct record creation and payment suppression.

### 3.6 Bulk Uploads

- OLIMS must support bulk upload of WC certificates for detached officers, ensuring correct linkage and suppression of payroll payments.

### 3.7 Error Handling & Audit Trail

- All certificate uploads, IT0014 9WCO creations, and wagetype suppressions must be logged for audit.
- Errors in certificate upload or payroll suppression must be reported to the claims officer for resolution.

---

## 4. Exception Handling

- Retroactive WC payments for periods before termination are permitted and must be processed against the original employee number.
- All WC payments after termination are made by EML and must not be processed via SAP payroll.
- Manual correction is required if certificates are uploaded out of sequence or if system linkage fails.
- If the prior employee number is not available or not correctly linked in IT0105 FREM, flag for review and halt processing until resolved. [TBC in design]

---

## 5. Compliance/Controls

- Payroll controls must ensure no WC payments are made to detached officers post-termination.
- OLIMS access must be restricted to authorised users for certificate upload and case management.
- All actions must be auditable, and regular reconciliation between OLIMS, SAP, and EML payment files is required.
- Ensure that the link between the non-employee rehire and the prior employee number is auditable and maintained in SAP (IT0105 FREM).

---

## 6. References and Linked Requirements

- DOA010, DOA012, DOB001–DOB005, P905 retro logic
- Related business rules and open items as per Phase 5 requirements
- Reference to business process for saving prior employee number in IT0105 FREM. [TBC in design]

---

## 7. Acceptance Criteria

- [x] WC certificates for detached officers are uploaded and stored in OLIMS without triggering SAP payroll payments.
- [x] IT0014 9WCO records are created only against the detached non-employee number.
- [x] Wagetype 4901 is suppressed for all detached officers.
- [x] Retroactive payments are processed only for periods before termination.
- [x] All actions are logged and reportable for audit and compliance.
- [x] Error handling and manual correction processes are documented and tested.
- [x] Non-employee rehire is linked to the prior employee number for ongoing case management and historical access in OLIMS, with the prior number stored in IT0105 FREM. [TBC in design]