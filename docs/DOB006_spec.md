# Functional Specification: DOB006 — EML WC Payment Upload to IT0015

---

## 1. Business Background

The NSW Police Force (NSWPF) Enhanced Police Support Scheme (EPSS) requires the ability to offset EPSS payments for detached officers by uploading Workers Compensation (WC) payments made by EML (the insurer) into SAP. This ensures that EPSS supplementary payments are reduced by external WC payments, maintaining compliance and accurate benefit calculation for detached officers.

---

## 2. Scope

This requirement covers the development of an upload facility in SAP to process EML-provided WC payment files, updating offset master data in IT0015 for detached officers. It includes file processing, data validation, error handling, and integration with payroll for correct offsetting of EPSS payments.

---

## 3. Detailed Functional Requirements

- The upload program must provide an ‘upload’ facility to process EML WC payment files and update offset master data in IT0015.
- The program must create new offset entries in IT0015 for each valid record in the upload file.
- The upload must support the required data fields: claim number, incident number, employee number, period start/end dates, payment date, WC amount, payment classification, capacity status, estimate of future weeks, and file date.
- The upload must ensure that only detached officers (as defined by employee group/subgroup or number range) are updated.
- The program must log all upload actions for audit and reporting.

---

## 4. Exception Handling

- If the upload file contains invalid or missing data, the program must reject the affected records and log errors for review.
- If an employee number does not match a detached officer, the record must be skipped and flagged in the error log.
- If IT0015 is locked or unavailable, the upload must abort and notify the user.
- Duplicate entries for the same period/employee must be detected and prevented.

---

## 5. Compliance/Controls

- All upload actions must be audit logged, including user, timestamp, and data changes.
- Only authorised users may execute the upload.
- Uploaded data must be reportable for reconciliation and compliance.
- The process must comply with payroll controls and OLIMS access policies.

---

## 6. References and Linked Requirements

- Cross-references: DOB001–DOB005 (EML WC upload process), DOA010 (detached officer salary logic), OLE001–OLE010 (external income offset model), P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] Upload program processes EML WC payment files and updates IT0015 for detached officers.
- [ ] All required data fields are mapped and stored correctly.
- [ ] Error handling and logging are implemented for invalid records.
- [ ] Audit trail is maintained for all upload actions.
- [ ] Only detached officers are updated by the upload.
- [ ] Uploaded offsets are reflected in EPSS payment calculations and reports.
- [ ] Access and compliance controls are enforced.