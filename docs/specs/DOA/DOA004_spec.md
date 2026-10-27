# Functional Specification: DOA004 — Handling Workers Compensation Certificates for Detached Officers in SAP ECC (ABAP)

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires that, after a police officer is terminated and rehired as a 'detached officer' (non-employee), Workers Compensation (WC) certificates continue to be received and stored for case management in OLIMS. However, for EPSS detached officers, no further Workers Compensation payments should be made via NSW Police payroll/SAP after termination; all such payments are made directly by the insurer EML. The only exception is retroactive payments for periods where the officer was still active (i.e., before the termination).

---

## 2. Scope

This requirement applies to the treatment, handling, and integration of Workers Compensation certificates in OLIMS and SAP for officers who have separated and are rehired as detached officers for EPSS purposes.
- Recorded that non-employee EPSS hires will not require access to SAP, NSWPF email accounts, or downstream NSWPF systems and directories. ESG value (e.g., "XV") will be used to exclude these hires from downstream systems. XV is currently used for PBRI employees (3000 series) and EPSS (3100 series, manual assignment). The transition from PBRI to EPSS will not occur for a detached employee; they remain either EPSS or PBRI.

---

## 3. Detailed Functional Requirements

### 3.1 Certificate Storage and Upload

- WC certificates for detached officers must be uploaded and stored in OLIMS for ongoing case management.
- Certificates uploaded after termination must be linked to the detached non-employee number, not the original employee number.
- OLIMS must validate that a detached non-employee record exists before allowing certificate upload for post-termination periods.

### 3.2 Creation of IT0014 9WCO

- Upon certificate upload for a detached officer, OLIMS must create IT0014 9WCO records against the detached non-employee number.
- IT0014 9WCO records must not trigger WC payment wagetype 4901 for detached officers.

### 3.3 Payroll Processing and Wagetype Suppression

- For detached officers, wagetype 4901 must be suppressed in payroll processing.
- Only retroactive payments for periods prior to termination may be processed via payroll; all other WC payments are made by EML.
- Ensure week counting logic for S36/S37 is maintained even when 4901 is not present.
- Preference is to utilise ESG value "XV" to exclude detached officers from downstream systems. XV is currently paid manually but should be considered for automation under the same rules as the detached requirement in the BRD. If XV is used, data conversion and effective dating for auto payment must be reviewed.

### 3.4 Case Management, Reporting, and Week Counting

- OLIMS must allow ongoing case management of incidents and certificates for detached officers.
- Week counting for EPSS entitlements must continue based on certificate data, regardless of WC payment status.
- All certificate and payment data must be reportable for compliance and audit.

### 3.5 Handling Late/Out-of-Sequence Data

- If certificates are uploaded late or out-of-sequence, OLIMS must support manual correction and ensure IT0014 9WCO records are created/updated accordingly.
- Manual steps must be documented for scenarios where termination or detached hire occurs after certificate upload.

### 3.6 Bulk Uploads

- OLIMS must support bulk upload of WC certificates for detached officers, with validation and error reporting.
- Bulk upload must ensure correct linkage to detached non-employee numbers and prevent duplicate or misallocated records.

### 3.7 Error Handling & Audit Trail

- All errors (e.g., missing detached non-employee record, invalid certificate dates) must be reported to the user with clear messages.
- All certificate uploads, IT0014 9WCO creations, and wagetype suppressions must be audit logged, including user, date/time, and action taken.

---

## 4. Exception Handling

- Retroactive WC payments for periods before termination are allowed and must be processed against the original employee number.
- All WC payments for periods after termination are made directly by EML and must not be processed via SAP payroll.
- Any manual intervention required for late terminations or hires must be documented and auditable.
- If XV ESG value is used for detached officers, ensure that automation for EPSS detached (3100 range) is implemented, while PBRI detached (3000 range) remains manual. Any issues with data conversion or effective dating for auto payment must be flagged for review.

---

## 5. Compliance/Controls

- Payroll controls must ensure no WC payments are made via SAP for detached officers post-termination.
- OLIMS access must be restricted to authorized users for certificate upload and case management.
- All actions must be audit logged and available for reporting and reconciliation.
- SAP support/technical teams must ensure that non-employee EPSS hires with ESG "XV" are excluded from SAP access, NSWPF email, and downstream systems.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic.
- Related documents: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- WC certificates for detached officers can be uploaded and stored in OLIMS.
- IT0014 9WCO records are created only against detached non-employee numbers.
- Wagetype 4901 is suppressed for detached officers in payroll.
- No WC payments are made via SAP for periods after termination.
- Week counting and case management continue for detached officers.
- All actions are audit logged and reportable.
- Error handling and manual correction processes are documented and functional.
- [x] Non-employee EPSS hires are excluded from SAP, NSWPF email, and downstream systems using ESG value (e.g., "XV").
- [x] XV ESG value is used for exclusion and automation is implemented for EPSS detached (3100 range); PBRI detached (3000 range) remains manual.
- [x] Any issues with data conversion or effective dating for auto payment are flagged and addressed.