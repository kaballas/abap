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
- Compliance controls and reconciliation processes are in place
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

# Functional Specification: DOA003 — Handling Workers Compensation Certificates for Detached Officers in SAP ECC (ABAP)

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires that, after a police officer is terminated and rehired as a 'detached officer' (non-employee), Workers Compensation (WC) certificates continue to be received and stored for case management in OLIMS. However, for EPSS detached officers, no further Workers Compensation payments should be made via NSW Police payroll/SAP after termination; all such payments are made directly by the insurer EML. The only exception is retroactive payments for periods where the officer was still active (i.e., before the termination).

---

## 2. Scope

This requirement applies to the treatment, handling, and integration of Workers Compensation certificates in OLIMS and SAP for officers who have separated and are rehired as detached officers for EPSS purposes.
- Recorded that for detached officers eligible for EPSS payments, the business process requires a new hire as a non-employee to enable OLIMS case management and payments through payroll. The expectation is that a new non-employee number is created, not a rehire of the old employee number. [TBC during design]

---

## 3. Detailed Functional Requirements

### 3.1 Certificate Storage and Upload

- WC certificates for detached officers must be uploaded and stored in OLIMS for ongoing case management.
- Certificates uploaded after termination must be linked to the detached officer’s non-employee number.
- OLIMS must prevent WC certificate uploads from generating WC payment wagetypes for detached officers.

### 3.2 Creation of IT0014 9WCO

- Upon upload of a WC certificate for a detached officer, OLIMS must create an IT0014 9WCO record against the detached non-employee number (not the original employee number).
- IT0014 9WCO records for detached officers must not trigger WC payment wagetype 4901.

### 3.3 Payroll Processing and Wagetype Suppression

- SAP payroll must suppress wagetype 4901 for all detached officers (identified by ESG/number range).
- Only retroactive WC payments for periods before termination are permitted via payroll; all post-termination WC payments are made by EML.
- Week counting and EPSS payment logic must not rely on 4901 for detached officers.

### 3.4 Case Management, Reporting, and Week Counting

- OLIMS must allow ongoing case management of incidents for detached officers, including certificate review and week counting.
- Week counting for S36/S37 must be supported even when 4901 is not present, using alternative indicators as required.
- All actions must be reportable for audit and compliance.

### 3.5 Handling Late/Out-of-Sequence Data

- If a WC certificate is uploaded late or out-of-sequence, OLIMS must ensure IT0014 9WCO is created/updated against the correct detached officer number.
- Manual intervention steps must be documented for scenarios where termination or detached hire occurs after certificate upload.

### 3.6 Bulk Uploads

- OLIMS must support bulk upload of WC certificates for detached officers, ensuring correct linkage and suppression of payment wagetypes.

### 3.7 Error Handling & Audit Trail

- Any errors in certificate upload, IT0014 creation, or wagetype suppression must be logged and reportable.
- All certificate uploads, IT0014 creations, and wagetype suppression actions must be audit-trailed with user, date/time, and action details.

---

## 4. Exception Handling

- Retroactive WC payments for periods before termination are allowed and must be processed against the original employee number.
- All post-termination WC payments are made by EML and must not be processed via SAP payroll.
- Manual correction process must be defined for late terminations or hires impacting certificate linkage.
- If the business process for hiring detached officers as non-employees is not followed, or if there is an attempt to rehire using the old employee number, flag as [TBC] and halt processing until resolved.

---

## 5. Compliance/Controls

- Payroll controls must ensure no WC payments are made to detached officers post-termination.
- OLIMS access and actions must be restricted to authorised users.
- All certificate uploads, IT0014 records, and wagetype suppression must be included in reporting and reconciliation processes.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001–DOB005, P905 retro logic.
- Related requirements: DOA013, DOA014, DOA017.

---

## 7. Acceptance Criteria

- [x] WC certificates for detached officers are uploaded and stored in OLIMS without triggering SAP WC payments.
- [x] IT0014 9WCO records are created only against detached non-employee numbers.
- [x] Wagetype 4901 is suppressed for all detached officers.
- [x] Week counting and reporting function correctly without reliance on 4901.
- [x] All actions are audit-trailed and reportable.
- [x] Exception scenarios (retro payments, late data) are handled per documented process.
- [x] Detached officer is hired as a non-employee with a new number, not as a rehire of the old employee number. [TBC during design]

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

# Functional Specification: DOA005 — New Employee Number Range for Detached Officers (EPSS) in SAP ECC

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires that police officers who are terminated and subsequently rehired as detached officers (non-employees) are assigned a new employee number in SAP. This is to ensure clear separation between the original employment record and the detached officer record, supporting accurate case management, payroll processing, and reporting. The preferred approach is to use a new, automatically assigned sequential employee number range (e.g., 5000xxxx series) for EPSS detached officers. If this is not feasible due to cost or technical constraints, the fallback is to use the existing ESG XV with manual number assignment. Only EPSS detached hires are in scope for automation; PBRI detached cohorts remain manual and are not affected by this change.

---

## 2. Scope

This specification covers the assignment and management of new employee numbers for EPSS detached officers in SAP ECC. It includes automatic sequential number assignment, fallback manual assignment, and the associated business rules and system configuration. The scope excludes PBRI detached officer cohorts and any downstream system access for detached officers.

---

## 3. Detailed Functional Requirements

### 3.1 Employee Number Assignment

- **Automatic Assignment:**  
  - SAP must assign a new employee number from a dedicated range (e.g., 5000xxxx) when hiring an EPSS detached officer as a non-employee.
  - The number range must be unique and not overlap with existing personnel number series.
  - Assignment must be sequential and automated during the PA40 Hire Action or equivalent programmatic hire.
  - If automation is not feasible, manual assignment in the 5000xxxx range is permitted, using a structure such as '05' plus the original employee number (allowing for 6 digits for the original number).

- **Manual Assignment (Fallback):**  
  - If automatic assignment is not feasible, the system must allow manual entry of the employee number using ESG XV, ensuring no duplication.
  - Only the EPSS detached cohort (currently 3100 range) is in scope for this fallback.
  - PBRI detached cohorts remain manual and are not included in this automation.

### 3.2 System Configuration

- **Number Range Definition:**  
  - Define and configure a new personnel number range in SAP for EPSS detached officers.
  - Ensure the range does not exceed SAP’s 8-character personnel number limit.

- **Cohort Identification:**  
  - EPSS detached officers must be identifiable in SAP by their employee subgroup (ESG) and/or personnel number range.
  - The configuration must support reporting and downstream processing based on this identification.

### 3.3 Hire Process

- **PA40 Hire Action:**  
  - The hire process for detached officers must use the new number range and assign the correct ESG.
  - The process must not require SAP, NSWPF email, or downstream system access for the detached officer.

- **Data Integrity:**  
  - The system must prevent assignment of duplicate employee numbers.
  - All hires must be auditable, with logs of number assignment and user actions.

### 3.4 Reporting and Audit

- **Reporting:**  
  - Reports must be able to filter and display EPSS detached officers based on the new number range and ESG.
- **Audit Trail:**  
  - All employee number assignments must be logged for audit and compliance purposes.

---

## 4. Exception Handling

- If automatic number assignment is not possible, manual assignment using ESG XV is permitted for EPSS detached officers only, and the number must be in the 5000xxxx range (e.g., '05' plus original employee number).
- PBRI detached officer cohorts remain manual and are not included in this automation.
- Any conflicts or overlaps in number ranges must trigger an error and prevent hire completion.
- If there is any ambiguity or technical constraint regarding number range assignment, flag as [TBC] and escalate for resolution.

---

## 5. Compliance/Controls

- Only authorized users may configure or assign employee numbers for detached officers.
- All changes to number range configuration must be logged.
- Regular reconciliation reports must be run to ensure no duplicate or out-of-range numbers are assigned.

---

## 6. References and Linked Requirements

- Cross-references: DOA001–DOA009, DOA017, DOB001–DOB008, P905 retro logic
- Related open items: Confirm number range, ESG usage, and fallback process (see Open Items #21–23 in the BRD).

---

## 7. Acceptance Criteria

- [x] New employee numbers for EPSS detached officers are assigned automatically from the configured 5000xxxx range, or manually in this range if automation is not feasible.
- [x] Manual assignment is available as a fallback, with ESG XV, for EPSS detached officers only.
- [x] No duplicate or out-of-range numbers are assigned.
- [x] Detached officers are clearly identifiable in SAP by number range and ESG.
- [x] All assignments are logged and auditable.
- [x] Reports can filter and display EPSS detached officers by number range and ESG.
- [x] PBRI detached officer cohorts remain manual and are not affected by this change
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

# Functional Specification: DOA007 — New Non-Employee Position and Employee Subgroup "EPSS On Duty Detached" in SAP ECC (ABAP)

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires a clear distinction between officers rehired as detached non-employees (for ongoing EPSS payments) and other cohorts, such as those under the PBRI solution. To support this, a new non-employee position and employee subgroup, named “EPSS On Duty Detached,” must be created in SAP ECC. This enables correct downstream processing, reporting, and automation for the EPSS detached cohort, ensuring separation from existing PBRI detached arrangements.

---

## 2. Scope

This specification covers the creation and configuration of a new non-employee position and employee subgroup in SAP ECC, specifically for EPSS On Duty Detached officers. It includes all required SAP configuration, downstream system impacts, and integration points with OLIMS and payroll.

- Recorded that a new non-employee position and employee subgroup (ESG) named “EPSS On Duty Detached” is required to differentiate from the current PBRI solution.
- Noted that creating a new ESG will have significant downstream impacts, require updates to automations, and involve multiple stakeholders and implementation teams. If a specific existing subgroup can be used as a reference, this must be confirmed and documented.

---

## 3. Detailed Functional Requirements

### 3.1 Position and Subgroup Creation

- Create a new non-employee position in SAP with the description “EPSS On Duty Detached.”
- Create a new employee subgroup (ESG) or confirm if an existing ESG can be used as a baseline.
- Assign the new position to the new ESG.
- Ensure the position and ESG are clearly named and documented for business and technical reference.

### 3.2 Downstream Behaviours and Automations

- Define all downstream system behaviours triggered by the new ESG, including:
  - Exclusion from SAP access, NSWPF email, and downstream directories.
  - Payroll processing rules specific to EPSS detached officers.
  - Reporting and reconciliation logic.
  - Review and update all automations associated with the creation of a new ESG, referencing previous projects as needed.
- Document any automations or interfaces that must be updated to recognise the new ESG.
- Identify and document all stakeholders and implementation teams impacted by the new ESG.

### 3.3 Integration with OLIMS and Payroll

- Ensure OLIMS can identify and process claims for officers in the new position/ESG.
- Confirm that payroll logic (e.g., wagetype suppression, week counting) recognises the new ESG.
- Update any interfaces or batch jobs that rely on ESG or position for processing.

### 3.4 Data Conversion and Effective Dating

- Define the approach for converting existing detached officers (if required) to the new ESG.
- Specify effective dating rules for new hires and any required data migration.

### 3.5 Documentation and Configuration Management

- All configuration changes must be documented in SAP transport requests.
- Update all relevant business process documentation and user guides.

---

## 4. Exception Handling

- If an existing ESG can be used as a baseline, document the rationale and any configuration changes required.
- If new ESG creation is not feasible due to cost or complexity, define fallback options and their limitations.
- Ensure that legacy PBRI detached officers remain unaffected by these changes.
- Flag any uncertainty regarding downstream impacts or automation requirements as [TBC] until confirmed.

---

## 5. Compliance/Controls

- Payroll controls must ensure only the correct cohort is processed under the new ESG.
- OLIMS access and reporting must be updated to reflect the new position/subgroup.
- Reconciliation reports must be updated to include/exclude the new ESG as appropriate.

---

## 6. References and Linked Requirements

- Cross-references: DOA001–DOA006, DOA009–DOA017, DOB001–DOB008, P905 retro logic.
- Related open items: Confirm baseline ESG, downstream automation, and data conversion (see Open Items 24, 20).
- Refer to previous projects for automation requirements and downstream impacts when creating a new ESG.

---

## 7. Acceptance Criteria

- [x] New non-employee position “EPSS On Duty Detached” created in SAP.
- [x] New employee subgroup (or confirmed existing ESG) configured and documented.
- [x] Downstream systems and automations updated to recognise the new ESG, with all impacted stakeholders and implementation teams identified.
- [x] Payroll and OLIMS integration tested and confirmed for the new cohort.
- [x] All configuration and process documentation updated.
- [x] No impact to legacy PBRI detached officers or other cohorts.
- [x] All changes pass UAT and are signed off by business and technical stakeholders
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
- [x] PA40 Hire Action or equivalent programmatic process is used for hiring detached officers, using the PBRI Income Protection (ZM) action as a baseline for infotype updates
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
- [x] Non-employee rehire is linked to the prior employee number for ongoing case management and historical access in OLIMS, with the prior number stored in IT0105 FREM. [TBC in design]# Functional Specification: DOA010 — IT0008 Basic Pay Derivation for Detached Officers

---

## 1. Business Background

The EPSS scheme requires ongoing salary and benefit calculations for police officers who exit the organisation on medical grounds but remain eligible for EPSS payments as detached officers. For these officers, salary and benefit calculations must be based on their last active employment record, ensuring compliance with scheme rules and preventing future Award increases from being applied post-termination.

---

## 2. Scope

This specification covers the derivation and application of IT0008 (Basic Pay) for detached officers in the EPSS scheme. It defines how Period 1 Ordinary Rate of Pay (ORP) and Period 2 salary are sourced, how capacity utilisation is applied, and how retroactive changes are handled. It excludes override functionality and future Award pay increases for detached officers.

- Recorded that IT0008 basic pay record for a detached officer must default to the police officer’s last active IT0008 record and capacity utilisation (full time or part time) at the time of termination.
- For Period 2 salary, the calculation for detached officers is the same as when the employee was attached: the last salary at the end of Period 1 (while attached) is used as the base, with CPI applied as per normal. The 7-year clock for Period 2 continues from the original employee’s Period 2 start date, regardless of any employment gap.
- Only EPSS detached officers (distinctly identified, e.g., 5 series employees) are in scope for this requirement.

---

## 3. Detailed Functional Requirements

- For EPSS detached officers, Period 1 ORP and Period 2 salary must be derived from the last active IT0008 record of the original (attached) employee number, including capacity utilisation as at the last active date.
- For Period 2, the starting salary is the last Period 1 salary plus CPI applied until termination, then CPI is applied further for the detached officer for future pay runs. The calculation is as if the employee is continuous from attached to detached.
- The derived value remains static for Period 1 and is updated only for retro changes to the original record. No pay rises are to be added to ORP for detached officers; only CPI/indexation applies for Period 2.
- The system must identify and handle detached officers as a distinct cohort (e.g., by employee number range or ESG), ensuring correct salary sourcing and calculation logic.
- The Period 2 seven-year clock continues from the original employee’s Period 2 start date, regardless of any gap between termination and non-employee hire. RTD entries may be used to extend the Period 2 end date based on PID assessments, entered in OLIMS against the old employee number.
- Retro changes to the original attached IT0008 may impact detached Period 1/2/3 salary outcomes; these must be reflected in detached officer payments.
- The new detached officer employee group will not allow entry of all wage types in IT0008 as relevant for other employee groups. ORP/P2 salary is expected to be managed via manual entry against a new cumulative wage type or dynamic read back to the old terminated employee’s last active salary. Design to confirm.
- The current system behaviour is dynamic salary selection based on current salary in the payroll period. For detached officers, IT0008 must be frozen and not updated with future Award increases. Only CPI/indexation and retro changes to the original record are allowed.

---

## 4. Exception Handling

- If the original IT0008 record is missing or incomplete, flag the case for manual review and prevent automated payment calculation until resolved.
- If retro changes are made to the original IT0008 after the officer becomes detached, trigger recalculation of relevant payments for the detached record.
- If capacity utilisation data is inconsistent or unavailable, default to the last known value and log for audit.
- If the detached officer cannot be distinctly identified (e.g., by number range or ESG), flag for review and [TBC].

---

## 5. Compliance/Controls

- All salary derivations must be auditable, with clear linkage between the detached officer’s non-employee record and the original employee number.
- Changes to IT0008 on the original record after detachment must be logged and reported.
- Access to modify salary derivation logic or override values is restricted and monitored.
- Payroll controls must ensure no future Award increases are applied to detached officers post-termination.

---

## 6. References and Linked Requirements

- DOA010 (this requirement)
- DOA012 (no Award increases post-termination)
- DOA009 (linkage of employee numbers)
- DOA002, DOA017 (claim status/substatus for detached officers)
- [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [x] Period 1 ORP and Period 2 salary for detached officers are sourced from the last active IT0008 of the original employee, including capacity utilisation as at the last active date.
- [x] No future Award pay increases are applied to detached officers after termination; only CPI/indexation and retro changes are allowed.
- [x] Capacity utilisation is correctly applied as per the original record.
- [x] Retro changes to the original IT0008 are reflected in detached officer payments.
- [x] Detached officers are identified and processed as a distinct cohort (e.g., by number range or ESG).
- [x] All derivations and changes are auditable and reportable.
- [x] Exception scenarios (missing data, retro changes, identification issues) are handled as specified
# Functional Specification: DOA011 — Claims Officer IT0008 Override for Detached Officers (REMOVED / OBSOLETE)

---

## 1. Business Background

The EPSS scheme supports ongoing payments to police officers who exit the organisation on medical grounds. For detached officers, salary calculations for EPSS payments are derived from the original employee record. Previously, there was a requirement for claims officers to override the IT0008 (Basic Pay) record for detached officers to manage exceptions or corrections.

---

## 2. Scope

This specification addresses the removal of the override capability for claims officers to adjust the IT0008 basic pay record for detached officers. All references to this override function are to be removed from system design and documentation.
- Recorded that the requirement for claims officers to override the IT0008 basic pay record for detached officers is now obsolete. This is because salary for detached officers is derived from the records of the old employee, and pay rises/increments are only applied if effective for dates when the old number was active.
- Ignore prior discussions regarding claims officer access to PA30, IT0008, or IT0014 for override purposes. Confirmed that EPSS case officers update IT0014 via OLIMS, not IT0008, and override is not to be implemented for the new or old number.

---

## 3. Detailed Functional Requirements

- The requirement for claims officers to override the detached officer's IT0008 basic pay record is obsolete.
- Detached officer salary for EPSS is to be derived from the original (attached) employee record only.
- No UI, workflow, or audit fields for IT0008 override are to be implemented for detached officers.
- Remove any references to override capability for detached officer IT0008 in related requirements, screens, and reports.

---

## 4. Exception Handling

- If any override functionality for detached officer IT0008 is encountered in the system, it must be disabled and flagged for removal.
- Any attempt to access or use an override function for detached officer IT0008 should result in a user-facing message: "Override not supported for detached officers."
- Any previous assumptions or discussions about claims officer override access for IT0008 (either for the old or new number) are superseded and not to be implemented.

---

## 5. Compliance/Controls

- Ensure audit logs confirm that no overrides are processed for detached officer IT0008 records.
- Payroll controls must enforce that only original employee IT0008 data is used for detached officer salary calculations.
- Reporting and reconciliation processes must not reference or expect override data for detached officer IT0008.

---

## 6. References and Linked Requirements

- Cross-references: DOA010 (salary derivation), DOA012 (retro increases), OLG003–OLG006 (override removal), 1PA003 (override out of scope).

---

## 7. Acceptance Criteria

- [x] No UI or backend capability exists for claims officers to override detached officer IT0008 records.
- [x] All documentation and requirements referencing override for detached officer IT0008 are updated or removed.
- [x] Payroll and OLIMS derive detached officer salary only from the original employee record.
- [x] System prevents and logs any attempt to override detached officer IT0008.
- [x] Compliance/audit confirms no overrides processed for detached officer IT0008
# Functional Specification: DOA012 — Detached Officer Salary Indexation and Retro Processing

---

## 1. Business Background

Detached officers (former police officers exited on medical grounds) may continue to receive EPSS benefits. Their salary for EPSS purposes must be managed to ensure only eligible increases are applied post-termination, in line with business rules and regulatory requirements.

---

## 2. Scope

This specification covers the rules and system behaviour for salary increases for detached officers, specifically:
- Exclusion of future Award pay increases after termination.
- Inclusion of retrospective salary changes during employment.
- Application of indexation (CPI) increases post-termination.
- Business process for retro changes to ensure correct payment outcomes.

**Additional Notes:**
- Recorded that detached officers will not be entitled to any future Award pay increases after their termination date. Only retrospective changes in salary during their employment as a police officer are to be processed.
- Retro increases are not paid via the detached officer; they are paid via the terminated employee number.
- Override of salary in DOA011 is now obsolete, as salary is read from the original attached employee for application against the detached employee.
- The current logic for P1/P2 salaries for detached officers must not use the current payscale structure (T510); instead, salaries are sourced from the original attached officer.

---

## 3. Detailed Functional Requirements

- Detached officers are **not entitled** to future Award pay increases after their termination date.
- Only **retrospective salary changes** (e.g., backdated increments) that relate to the period of employment as a police officer are to be processed for detached officers.
- **Indexation increases** (e.g., CPI) are to be applied to detached officer salaries for Period 2 and Period 3 entitlements.
- Retro salary increases must be processed against the **original (terminated) employee number**, not the detached non-employee number.
- The current payscale structure (e.g., T510) is **not relevant** for detached officer salary calculations post-termination; salary is sourced from the original attached officer.
- A business process must be defined to ensure retro changes are correctly applied to detached officer payments, including when Police receive retro increases or increments.

---

## 4. Exception Handling

- If a retro salary change is detected for a period after termination, the system must **not apply** the increase to the detached officer’s salary.
- If a retro salary change is detected for a period during employment, the system must process the adjustment and update the detached officer’s payment accordingly, with payment made via the terminated employee number.
- Any errors in retro processing must be logged and flagged for manual review.

---

## 5. Compliance/Controls

- Payroll controls must ensure only eligible salary increases are processed for detached officers.
- OLIMS access and audit logs must track all retro salary changes and indexation applications.
- Reporting and reconciliation processes must verify that no Award increases are applied post-termination and that all retro changes are correctly attributed.

---

## 6. References and Linked Requirements

- DOA010: Salary derivation for detached officers.
- DOA011: Override of salary is obsolete; see DOA011 for details.
- DOA013: Certificate and payment processing for detached officers.
- DOA016: Indexation rules for detached officers.
- P905 retro logic.
- [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [x] No Award pay increases are applied to detached officer salaries after termination.
- [x] Retro salary changes during employment are processed and reflected in detached officer payments, with payment made via the terminated employee number.
- [x] Indexation increases are applied as per business rules.
- [x] Retro changes are processed against the original employee number.
- [x] All exceptions are logged and available for audit.
- [x] Reporting confirms compliance with salary processing rules for detached officers
# Functional Specification: DOA013 — Handling Workers Compensation Certificates for Detached Officers in SAP ECC (ABAP)

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires that, after a police officer is terminated and subsequently rehired as a 'detached officer' (non-employee), Workers Compensation (WC) certificates must continue to be received and stored for ongoing case management in OLIMS. However, for EPSS detached officers, no further Workers Compensation payments are to be processed via NSW Police payroll/SAP after the officer’s termination date; all such payments are made directly by the insurer, EML. The only exception is for retroactive payments relating to periods when the officer was still active (i.e., prior to termination).

---

## 2. Scope

This specification applies to the handling, processing, and integration of Workers Compensation certificates in OLIMS and SAP for officers who have separated and are rehired as detached officers under the EPSS. It covers certificate storage, payroll suppression, reporting, and exception handling for this cohort.

- Recorded that WC certificates will still be acquired by the officer once terminated and will be uploaded into OLIMS for case management activities only. The upload of these WC certificates is not to generate any workers compensation payments.
- Terminated officers' WC payments will not be paid by NSWPF and will be paid by the insurer EML directly.
- The only exception is for retrospective payments to be made to the officer during the period of employment as a police officer, following the existing business process of reprocessing the P905s to generate the backdated payment.
- If there is a blocker in OLIMS that prevents upload of WC certificates against a terminated employee, it must be removed, with restrictions as required (e.g., only if the terminated employee exists as a former employee against an employee in the new Employee subgroup used by detached officers).
- Additional requirement recorded: S36/S37 week counting currently depends on the presence of 4901; this must be enhanced to also check for detached external WC uploads, as detached officers will not have WT 4901. EPSS payment logic for detached must reflect the External WC instead of 4901 for all scenarios where applicable.

---

## 3. Detailed Functional Requirements

### 3.1 Certificate Storage and Upload

- All WC certificates for detached officers must be uploaded and stored in OLIMS, regardless of employment status.
- Certificates must be linked to the officer’s case and accessible for review and audit.
- OLIMS must support upload of certificates received after termination and during detached officer status.
- OLIMS must allow upload of WC certificates against a terminated employee for dates after termination. No OLIMS blocker should prevent this, provided the terminated employee is linked as a former employee to a detached officer record if required.

### 3.2 Creation of IT0014 9WCO

- Upon receipt of a WC certificate, OLIMS must trigger the creation of IT0014 subtype 9WCO in SAP for detached officers only if the certificate period overlaps with pre-termination dates.
- No new IT0014 9WCO entries are to be created for periods after the officer’s termination date.
- Certificates are generally entered in advance, and IT14 9WCO will also be created in advance. If IT14 future records exist post-termination, ensure they do not result in payments for inactive periods.
- Regeneration of P905 will be required once the detached employee is hired so that 9WCO can be created in IT14 against the detached officer for payroll processing. The P905 creation logic must check if the certificate is for dates where a detached employee is active and the attached employee is inactive.

### 3.3 Payroll Processing and Wagetype Suppression

- SAP payroll must suppress all WC-related wage types for detached officers for periods after termination.
- Retroactive payroll processing is permitted only for periods where the officer was active (pre-termination).
- Any attempt to process WC payments for post-termination periods must result in an error and be logged.
- For the new detached employee subgroup, block the creation of WT 4901 but keep the EPSS P1/2/3 payment generation.
- Confirm that the creation of IT14 during detached officer active dates does not push PAWE and WC stat rate to 9WCO, to prevent WT 4901 for the detached officer.

### 3.4 Case Management, Reporting, and Week Counting

- OLIMS must continue to count and report WC certificate weeks for detached officers for case management and statutory reporting.
- Week counting logic must exclude periods after termination from payroll calculations but include them for case tracking.
- S36/S37 week counting currently requires 4901 to be present; this must be enhanced to also check for detached external WC uploads, as detached officers will not have WT 4901. EPSS payment for detached must reflect the External WC instead of 4901 for all scenarios where applicable.
- Additional requirement: S36/S37 week counting logic must be enhanced to check for detached external WC uploads in addition to 4901, ensuring detached officers are included in week counting and EPSS payment logic as required.

### 3.5 Handling Late/Out-of-Sequence Data

- If a WC certificate is received late or out-of-sequence, OLIMS must validate the certificate period and only trigger SAP actions for eligible (pre-termination) periods.
- Late certificates for post-termination periods are stored for reference but do not trigger payroll actions.
- If IT14 9WCO is loaded in advance and the employee terminates after, ensure that IT14 future records are handled so that no payments are made for inactive periods.

### 3.6 Bulk Uploads

- OLIMS must support bulk upload of WC certificates for detached officers, applying the same validation and processing logic as for single uploads.

### 3.7 Error Handling & Audit Trail

- All exceptions, errors, and suppressed payroll actions must be logged in an audit trail.
- OLIMS and SAP must provide error messages and audit records for all suppressed or rejected WC payroll actions.
- If the WC certificate in OLIMS loads IT14 9WCO against either the terminated employee for periods when inactive vs against the detached employee (as per former employee number), ensure business concerns are addressed: no inactive person is paid while inactive.

---

## 4. Exception Handling

- Retroactive entitlements: If a certificate covers a period before termination, retroactive payroll processing is allowed.
- Insurer payments: All WC payments for periods after termination are made directly by EML, not via SAP payroll.
- Certificates received for post-termination periods are stored but do not trigger payroll actions.
- If S36/S37 week counting logic is dependent on 4901, ensure it is enhanced to also consider detached external WC uploads for detached officers.

---

## 5. Compliance/Controls

- Payroll controls must ensure no WC payments are processed for detached officers post-termination.
- OLIMS access controls must restrict certificate upload and viewing to authorized users.
- Regular reporting and reconciliation between OLIMS and SAP to ensure compliance with EPSS requirements.
- For EPSS payment scenarios where only WT4901 is currently considered, ensure that External WC uploads for detached officers are also included in the logic.
- For WC earnings upload, this is a new value and new WT provided by EML, with the value provided as a weekly value, dated per week cycle.

---

## 6. References and Linked Requirements

- DOA010, DOA012, DOB001–DOB005
- P905 retro logic

---

## 7. Acceptance Criteria

- [x] WC certificates for detached officers are stored in OLIMS regardless of employment status.
- [x] No WC payroll payments are processed for periods after termination.
- [x] Retroactive payments are only processed for eligible pre-termination periods.
- [x] All exceptions and suppressed actions are logged and auditable.
- [x] Bulk upload and late certificate handling follow the defined logic.
- [x] Compliance and reconciliation reports are available and accurate.
- [x] OLIMS allows upload of WC certificates for terminated employees for dates after termination, with no blocker, provided linkage to a detached officer record as required.
- [x] S36/S37 week counting logic is enhanced to consider detached external WC uploads in the absence of WT 4901, ensuring correct EPSS payment logic for detached officers.
- [x] For WC earnings upload, a new value and new WT provided by EML is used, provided as a weekly value, dated per week cycle
# Functional Specification: DOA014 — Workers Compensation External Earnings Offset for Detached Officers

---

## 1. Business Background

Detached officers (former police officers exited on medical grounds) may continue to receive EPSS benefits. For these officers, Workers Compensation (WC) payments are made directly by the insurer (EML), not by NSWPF. To ensure correct calculation of EPSS supplementary support, WC earnings from EML must be captured and offset against EPSS payments.

---

## 2. Scope

This requirement covers the process for uploading WC earnings paid by EML into OLIMS, creating a new WC External Earnings wagetype in SAP HR (IT0015) for detached officers, and ensuring these earnings reduce EPSS payments accordingly. It applies only to detached officers under the EPSS On Duty scheme.

- Recorded that Workers Compensation earnings from the insurer are to be uploaded as a file in OLIMS and create a Workers Compensation External Earnings wagetype in IT0015 to reduce the EPSS supplementary support payment for detached officers.
- WT 4901 "Workers Compensation" is not allowed in IT0015; a new wagetype is required for detached officer WC earnings, with characteristics to be provided in the wagetype maintenance form.
- The new wagetype is not the same as existing external earnings (e.g., 3670); it is a separate WT for detached WC.
- The OLIMS interface for IT0015 load will use the same area as for external earnings, with WT number input required for load/manual entries.

---

## 3. Detailed Functional Requirements

- A new wagetype (code TBC) is to be created in IT0015 for "WC External Earnings" for detached officers. This wagetype is separate from existing external earnings wagetypes (e.g., 3670).
- EML will provide a file of WC payments, which will be uploaded by the EPSS Claims Officer via OLIMS.
- The upload will:
  - Update the relevant OLIMS incident/claim.
  - Update the OLIMS EPSS external earnings tab.
  - Create/update the WC External Earnings wagetype in IT0015 for the detached officer’s non-employee number.
- The new wagetype will offset/reduce the calculated EPSS supplementary support payment in payroll, following the same behaviour as WT 4901 for top-up reduction.
- The wagetype must be reportable and auditable.
- The business process must clarify how this wagetype interacts with week counting and EPSS top-up calculations. If the employee is on S36 or S37, the new external earning WC should be read instead of 4901 to count weeks if there is no EPSS top-up.
- Specify that this wagetype does not replace existing wagetypes (e.g., 4901, 3670) but is a new, separate WT for detached officer WC payments.

---

## 4. Exception Handling

- If the EML upload file is missing mandatory fields or contains errors, the upload must fail with a clear error message and not update master data.
- If the employee number in the upload does not match a valid detached officer, the entry is rejected.
- If duplicate entries for the same period are detected, the system must flag for review before processing.
- If business processes require, clarify whether two wagetypes must be uploaded or if the new WT alone is sufficient for detached officer WC payments.

---

## 5. Compliance/Controls

- All uploads and changes to WC External Earnings must be logged for audit.
- Only authorised EPSS Claims Officers may upload or override WC External Earnings.
- All entries must retain supporting documentation (uploaded file/evidence).
- Reporting and reconciliation must be available for all WC External Earnings offsets.

---

## 6. References and Linked Requirements

- DOA013 (WC certificate upload logic for detached officers)
- DOB001–DOB008 (EML payment upload process)
- OLE001–OLE010 (External income offset model)
- CR001 (Manual entry of offsets via IT0015)
- P1001–P1006 (Week counting logic)
- RPN001–RPN005 (External Income and Payments reporting)
- WT maintenance form to be provided for the new wagetype.
- New requirement for S36/S37 week counting logic to read the new external earning WC if 4901 is not present (to be explained in a new BRD version).

---

## 7. Acceptance Criteria

- [x] New WC External Earnings wagetype is created in IT0015 and visible in SAP for detached officers, with characteristics provided in the wagetype maintenance form.
- [x] EML WC payment file can be uploaded via OLIMS, updating both OLIMS and SAP.
- [x] Uploaded WC earnings offset EPSS payments in payroll for detached officers, following the same behaviour as WT 4901 for top-up reduction.
- [x] All uploads, overrides, and deletions are audit logged.
- [x] Reports can be generated showing all WC External Earnings entries and their impact on EPSS payments.
- [x] Error handling is in place for invalid or duplicate uploads.
- [x] Supporting documentation is attached to each entry.
- [x] Business rules for week counting and offset logic are documented and implemented, including S36/S37 logic to read the new WT if 4901 is not present
# Functional Specification: DOA015 — EPSS Claims Officer Override of WC External Earnings in IT0015

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires accurate calculation of supplementary support payments, offset by any Workers Compensation (WC) external earnings. WC payments made by the insurer (EML) are uploaded into OLIMS and passed to SAP via IT0015. Occasionally, retrospective changes or adjustment advice from the insurer necessitate manual overrides to ensure correct EPSS benefit calculation.

---

## 2. Scope

This specification covers the ability for EPSS Claims Officers to override WC External Earnings in IT0015 for detached officers, in response to retrospective changes or adjustment advice from the WC insurer. It clarifies which earnings types are in scope for override and the business process for making such adjustments.

- Recorded that the EPSS Claims Officer must have the ability in IT0015 to override the WC External Earnings for any retrospective changes or adjustment advice from the WC insurer.
- This implies retrospective payroll recalculation with payment changes in retrospect. The change may be made via OLIMS or PA30. Entries via PA30 and OLIMS must both be visible in the OLIMS screen display for IT15 uploads.
- The export to SAP must be to the detached officer, and WC external earnings should only be valid for periods where the detached officer is valid. EML will provide all key identifiers, including the old attached employee number, but WC external earnings must be loaded against the detached employee number. Validations must ensure dates are within the active period of the detached officer.
- Only one WC External Earnings wagetype may be entered per day; multiple entries for the same day are not permitted (to be reflected in the wagetype maintenance form).
- Payroll QA report is required to check for duplications; this is to be actioned by SAP support and is not part of the report designs.

---

## 3. Detailed Functional Requirements

- The EPSS Claims Officer must be able to create, update, or delete override entries in IT0015 for WC External Earnings.
- The override applies to WC External Earnings uploaded via OLIMS (as per DOA014) and/or WT 3670, subject to business confirmation.
- The system must clearly distinguish between original uploaded WC External Earnings and manual overrides.
- All overrides must be auditable, capturing the user, date/time, and reason for the adjustment. Entries via PA30 will have the SAP standard audit trail; OLIMS entries will have the OLIMS audit trail.
- The override amount must be used in EPSS payment calculations for the relevant pay period(s), superseding the original value.
- The override process must not allow changes if the payroll control record is locked.
- WC external earnings must only be loaded against the detached employee number and for dates within the active period of the detached officer.
- Only one WC External Earnings wagetype may be entered per day for a given detached officer.
- Both OLIMS and PA30 entries must be visible in the OLIMS screen display for IT15 uploads.

---

## 4. Exception Handling

- If an override is attempted during a payroll lock, the system must display an error and prevent the change.
- If an override is entered for a period with no original WC External Earnings, the system must allow creation but flag for review.
- All failed override attempts must be logged for audit and troubleshooting.
- If WC external earnings are entered for dates outside the active period of the detached officer, the system must reject the entry.
- If multiple WC External Earnings entries are attempted for the same day, the system must prevent duplication and flag for review.

---

## 5. Compliance/Controls

- All override actions must be logged and reportable for audit purposes.
- Only authorised EPSS Claims Officers may perform overrides; access must be role-based.
- Supporting documentation for overrides must be attached in OLIMS and referenced in the override record, except for entries via PA30 which will only have the SAP standard audit trail.
- Overrides must be included in reconciliation and reporting processes.
- Payroll QA report is required to check for duplications (to be actioned by SAP support).

---

## 6. References and Linked Requirements

- DOA014: WC External Earnings upload process
- DOA017: OLIMS claim status/substatus model
- OLE001–OLE010: External Income and Payment offset model
- CR001: Manual entry of earnings to offset via IT0015
- P905 retro logic

---

## 7. Acceptance Criteria

- [x] EPSS Claims Officer can create, update, and delete WC External Earnings overrides in IT0015.
- [x] Overrides are limited to specified earnings types (WT 3670 and/or OLIMS-uploaded WC payments).
- [x] All override actions are logged with user, date/time, and reason, with audit trail from SAP (PA30) or OLIMS as applicable.
- [x] System prevents overrides during payroll lock.
- [x] Supporting documentation can be attached and referenced for OLIMS entries; PA30 entries have SAP audit trail only.
- [x] Overrides are reflected in EPSS payment calculations and reports.
- [x] Only authorised users can perform overrides.
- [x] Only one WC External Earnings wagetype may be entered per day for a given detached officer.
- [x] Overrides are valid only for periods where the detached officer is active.
- [x] Payroll QA report is available to check for duplications (actioned by SAP support).
- [x] All requirements are tested and verified in UAT
# Functional Specification: DOA016 — Detached Officer Indexation of Period 2 and 3 Entitlements

---

## 1. Business Background

Detached officers (former police officers exited on medical grounds) remain eligible for EPSS benefits under certain conditions. After termination, their entitlements for Period 2 and Period 3 must be maintained in line with scheme rules. The business requires clarity and automation for indexation of these entitlements, ensuring fairness and compliance with policy.

---

## 2. Scope

This specification covers the rules and system changes required to ensure that detached officers receive indexation (CPI or equivalent) on both:
- The 75% of loaded salary for Period 2 and Period 3, and
- The maximum monthly benefit amount,
after their termination date. It excludes pay scale/Award increases post-termination.

---

## 3. Detailed Functional Requirements

- Detached officers’ Period 2 and Period 3 entitlements must be indexed annually by the approved indexation rate (e.g., CPI), as determined by business policy.
- Indexation applies to:
    - The 75% of loaded salary (as calculated at the end of Period 1, based on the last active IT0008 record).
    - The maximum monthly benefit amount.
- No Award pay scale increases are to be applied after the officer’s termination date.
- Any retrospective salary changes (e.g., backdated increments) that relate to the period of employment must be processed, but only up to the termination date.
- The system must clearly distinguish between indexation and pay scale increases for detached officers.
- Indexation must be applied automatically each year on the effective date, with the indexed value used for all subsequent Period 2 and 3 calculations.
- All indexation calculations and effective dates must be auditable and reportable.

---

## 4. Exception Handling

- If indexation rates are not available by the scheduled update date, the previous year’s rate will be used until updated.
- If a retrospective salary change is entered after termination, it must only affect entitlements up to the termination date.
- Any attempt to apply Award pay scale increases to a detached officer after termination must be blocked and logged as an error.

---

## 5. Compliance/Controls

- All indexation updates must be logged with user, date, and applied rate.
- Changes must be reportable for audit and reconciliation.
- Access to override or manually adjust indexation for detached officers must be restricted to authorised payroll administrators.
- All calculations must be traceable for compliance with payroll and OLIMS access controls.

---

## 6. References and Linked Requirements

- DOA010: Salary source for detached officers
- DOA012: Exclusion of Award pay increases post-termination
- DOB001–DOB005: Workers compensation payment upload for detached officers
- P905 retro logic
- Open Items: Finalisation of indexation constant (see Open Items to finalise deployment of deferred Phase 4 items)

---

## 7. Acceptance Criteria

- [ ] Detached officers’ Period 2 and 3 entitlements are indexed annually by the approved rate.
- [ ] No Award pay scale increases are applied after termination.
- [ ] Retrospective salary changes only affect entitlements up to termination.
- [ ] Indexation is applied automatically and is auditable.
- [ ] All calculations and updates are reportable and compliant with payroll controls.
- [ ] Exception handling is implemented as specified.
- [ ] Access controls for indexation overrides are enforced.