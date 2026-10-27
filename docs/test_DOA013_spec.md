# Functional Specification: DOA013 — Handling Workers Compensation Certificates for Detached Officers in SAP ECC (ABAP)

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires that, after a police officer is terminated and subsequently rehired as a 'detached officer' (non-employee), Workers Compensation (WC) certificates must continue to be received and stored for ongoing case management in OLIMS. For these EPSS detached officers, no further Workers Compensation payments are to be processed via NSW Police payroll/SAP after termination; all such payments are made directly by the insurer, EML. The only exception is retroactive payments for periods when the officer was still active (i.e., prior to termination).

---

## 2. Scope

This specification applies to the management, processing, and integration of Workers Compensation certificates in OLIMS and SAP for officers who have separated and are rehired as detached officers under EPSS. It covers certificate handling, payroll suppression, reporting, and exception management.

---

## 3. Detailed Functional Requirements

### 3.1 Certificate Storage and Upload

- All WC certificates for detached officers must be uploaded and stored in OLIMS, regardless of employment status.
- Certificates must be linked to the officer’s case and accessible for review and audit.
- OLIMS must support upload of certificates received after termination.

### 3.2 Creation of IT0014 9WCO

- For detached officers, IT0014 9WCO records must only be created for retroactive periods where the officer was active.
- No new IT0014 9WCO records are to be created for periods after termination.

### 3.3 Payroll Processing and Wagetype Suppression

- SAP payroll must suppress all WC-related wage types for detached officers post-termination.
- Retroactive payments are only permitted for periods before the termination date.
- Any attempt to process WC payments for post-termination periods must trigger an error and be logged.

### 3.4 Case Management, Reporting, and Week Counting

- OLIMS must continue to track and count WC certificate weeks for detached officers for case management and statutory reporting.
- Week counting logic must exclude periods after termination for payroll purposes but include them for case tracking.

### 3.5 Handling Late/Out-of-Sequence Data

- Certificates received late or out-of-sequence must be accepted and stored.
- If a late certificate relates to a period before termination, retroactive payroll processing is permitted.
- If a late certificate relates to a period after termination, it is stored for case management only.

### 3.6 Bulk Uploads

- OLIMS must support bulk upload of WC certificates for detached officers.
- Bulk uploads must validate employment status and apply the same business rules as individual uploads.

### 3.7 Error Handling & Audit Trail

- All exceptions, errors, and suppressed payments must be logged with audit trails in both OLIMS and SAP.
- Users must be notified of any rejected or suppressed transactions with clear error messages.

---

## 4. Exception Handling

- Retroactive entitlements: If a certificate is received for a period before termination, retroactive payment is allowed.
- Insurer payments: All WC payments for periods after termination are made directly by EML, not via SAP payroll.
- Data corrections: If employment status is corrected (e.g., termination date adjusted), system must re-evaluate certificate handling and payroll suppression.

---

## 5. Compliance/Controls

- Payroll controls must ensure no WC payments are processed for detached officers post-termination.
- OLIMS access must be restricted to authorized users for certificate upload and review.
- Regular reporting and reconciliation between OLIMS, SAP, and EML payment records must be performed.

---

## 6. References and Linked Requirements

- DOA010: Detached Officer status management
- DOA012: Payroll suppression logic
- DOB001–DOB005: OLIMS certificate handling
- P905: Retroactive payroll logic

---

## 7. Acceptance Criteria

- WC certificates for detached officers are stored in OLIMS regardless of employment status.
- No WC payments are processed via SAP payroll for periods after termination.
- Retroactive payments are only processed for periods before termination.
- All exceptions and errors are logged and auditable.
- Bulk uploads apply the same business rules as individual uploads.
- Reporting and week counting are accurate for both payroll and case management.
- Compliance controls and reconciliations are in place and effective.