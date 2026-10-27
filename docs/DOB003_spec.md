# Functional Specification: DOB003 — EML WC Payment Upload Facility

---

## 1. Business Background

The NSW Police Force (NSWPF) Enhanced Police Support Scheme (EPSS) requires accurate offsetting of EPSS payments for detached officers by external Workers Compensation (WC) payments made by EML. Detached officers, after medical exit, receive WC payments directly from EML, not NSWPF. To ensure correct EPSS benefit calculation, EML WC payments must be uploaded into OLIMS, recorded against the relevant claim, and passed to payroll as offsets.

---

## 2. Scope

This requirement covers the design and implementation of a facility in OLIMS for EPSS claims officers to upload EML WC payment files. The upload must:
- Update the relevant OLIMS incident/claim.
- Update the OLIMS EPSS external earnings tab.
- Pass the uploaded WC payment data to payroll to offset/reduce the calculated EPSS benefit.

---

## 3. Detailed Functional Requirements

- OLIMS must provide a user interface for uploading EML WC payment files.
- Upon upload, the system must:
  1. Match and update the corresponding OLIMS incident/claim using identifiers (e.g., claim number, incident number, employee number).
  2. Update the EPSS external earnings tab with payment details (amount, dates, classification, capacity status, etc.).
  3. Pass the payment data to payroll (SAP) as offsets, reducing the EPSS benefit for the relevant pay period(s).
- The upload must support the required file format and field mapping as defined in DOB004.
- The upload process must validate data integrity and provide error feedback.
- Uploaded payment records must be auditable and reportable.

---

## 4. Exception Handling

- If the upload file contains errors (e.g., missing mandatory fields, unmatched claim/incident), the system must reject the affected records and present clear error messages for correction.
- If a payment cannot be matched to an existing claim/incident, it must not update master data and must be flagged for manual review.
- Duplicate uploads for the same period/claim must be detected and prevented.
- Any payroll interface errors must be logged and reported to the claims officer.

---

## 5. Compliance/Controls

- All uploads and resulting data changes must be audit-logged (user, date/time, action).
- Only authorised EPSS claims officers may access the upload facility.
- Uploaded payment data must be included in compliance, reporting, and reconciliation processes.
- Payroll controls must ensure offsets are applied only to eligible claims and periods.

---

## 6. References and Linked Requirements

- Cross-references: DOB001, DOB002, DOB004, DOB005, DOB006, DOB007, DOB008
- Related: DOA010, DOA013, OLE001–OLE010 (external earnings integration), P905 retro logic

---

## 7. Acceptance Criteria

- [ ] OLIMS provides a working upload interface for EML WC payment files.
- [ ] Uploaded payments update the correct OLIMS incident/claim and external earnings tab.
- [ ] Uploaded payments are passed to payroll and offset EPSS benefits as required.
- [ ] Error handling and reporting are implemented for upload failures.
- [ ] All actions are audit-logged and reportable.
- [ ] Only authorised users can perform uploads.
- [ ] Upload process and results meet compliance and reconciliation requirements.