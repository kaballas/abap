# Functional Specification: DOA006 — Handling Workers Compensation Certificates for Detached Officers in SAP ECC (ABAP)

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires that, after a police officer is terminated and rehired as a 'detached officer' (non-employee), Workers Compensation (WC) certificates continue to be received and stored for case management in OLIMS. However, for EPSS detached officers, no further Workers Compensation payments should be made via NSW Police payroll/SAP after termination; all such payments are made directly by the insurer EML. The only exception is retroactive payments for periods where the officer was still active (i.e., before the termination).

---

## 2. Scope

This requirement applies to the treatment, handling, and integration of Workers Compensation certificates in OLIMS and SAP for officers who have separated and are rehired as detached officers for EPSS purposes.

- Recorded that the PA40 hire action for detached officers may use a combination of the new series and the officer’s registered number (e.g., 500015682), but this is not mandatory as long as EPSS and PBRI employees can be identified in SAP. Identification outside OLIMS is acceptable.
- The maximum allowable personnel number in SAP is 8 characters. Any proposed numbering scheme must not exceed this limit. The first character is not used for Police, leaving 7 characters for the number.
- Use of the 3100 number range for EPSS detached officers is acceptable if system setup allows clear identification as EPSS detached.

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

- SAP payroll must suppress wagetype 4901 for all detached officers (identified by ESG and/or number range).
- Only retroactive WC payments for periods prior to termination may be processed via payroll; all other WC payments are made by EML.
- Week counting logic for S36/S37 must be maintained even when 4901 is suppressed.

### 3.4 Case Management, Reporting, and Week Counting

- OLIMS must allow ongoing case management of incidents for detached officers, including reporting and week counting.
- Week counting for S36/S37 must not rely solely on the presence of 4901 for detached officers; alternative logic must be implemented.
- All certificate and payment records must be auditable and reportable.

### 3.5 Handling Late/Out-of-Sequence Data

- If a termination or detached hire is processed late, manual steps must be documented to ensure IT0014 9WCO records are created against the correct number.
- OLIMS must support correction of misallocated certificates/payments due to late data entry.

### 3.6 Bulk Uploads

- OLIMS must support bulk upload of WC certificates for detached officers, with validation and error reporting.
- Bulk uploads must ensure all records are linked to the correct detached non-employee number.

### 3.7 Error Handling & Audit Trail

- All errors (e.g., missing detached officer record, invalid certificate dates) must be reported to the user with clear messages.
- All certificate uploads, IT0014 9WCO creations, and wagetype suppressions must be logged for audit purposes.

---

## 4. Exception Handling

- Retroactive WC payments for periods before termination are permitted and must be processed against the original employee number.
- All post-termination WC payments are made by EML and must not be processed via SAP payroll.
- Manual intervention is required if certificates are uploaded before the detached non-employee record exists.
- If a personnel number exceeds 8 characters, or if the numbering scheme does not allow for clear identification of EPSS detached officers, processing must be halted and flagged for review.
- If the number range 3100 is used for EPSS detached, ensure system setup supports correct identification and reporting.

---

## 5. Compliance/Controls

- Payroll controls must ensure no WC payments (4901) are made to detached officers post-termination.
- OLIMS access must be restricted to authorized users for certificate upload and case management.
- All actions must be auditable, and regular reconciliation reports must be available to ensure compliance.
- System configuration must enforce the 8-character personnel number limit.
- Identification of EPSS and PBRI employees in SAP must be maintained, regardless of numbering scheme.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001–DOB005, P905 retro logic.
- Related open items: Confirm week counting logic for S36/S37 without 4901, and P905 regeneration for detached officers.
- [TBC] Confirm how many employees are in 'undefined' series (e.g., 6000, 7000, etc.) for number range planning.

---

## 7. Acceptance Criteria

- [x] WC certificates for detached officers can be uploaded and stored in OLIMS.
- [x] IT0014 9WCO records are created against the detached non-employee number only.
- [x] Wagetype 4901 is suppressed for all detached officers in payroll.
- [x] Week counting and reporting function correctly for detached officers.
- [x] All actions are logged and auditable.
- [x] Error handling and bulk upload processes are implemented and tested.
- [x] Compliance controls and reconciliation reports are in place.
- [x] Personnel number assignment for detached officers does not exceed 8 characters and allows for identification of EPSS detached and PBRI employees.
- [x] Use of 3100 number range for EPSS detached is acceptable if system setup supports correct identification.
- [x] [TBC] Number of employees in undefined series (e.g., 6000, 7000) is confirmed for planning.