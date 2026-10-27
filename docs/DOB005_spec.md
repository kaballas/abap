# Functional Specification: DOB005 — EML WC Payment Upload Test Run Facility

---

## 1. Business Background

The NSW Police Force (NSWPF) Enhanced Police Support Scheme (EPSS) requires accurate and auditable processing of Workers Compensation (WC) payments for detached officers. EML, as the insurer, provides files of WC payments made to detached officers. To ensure data integrity and prevent errors in master data, a test run facility is required for the upload program before any updates are made to SAP master data.

---

## 2. Scope

This specification covers the implementation of a ‘test’ run facility within the EML WC payment upload program. The facility will validate the uploaded file, check for errors, and generate a report for review and correction prior to updating master data. It applies only to the EML WC payment upload process for detached officers under EPSS.

---

## 3. Detailed Functional Requirements

- The upload program must provide a ‘test’ run mode, selectable by the user.
- In ‘test’ mode, the program will:
  - Validate the uploaded EML WC payment file for format, mandatory fields, and data consistency.
  - Perform all checks that would occur during a real upload, but without updating any SAP master data.
  - Identify and report errors such as missing fields, invalid employee numbers, date inconsistencies, and duplicate records.
  - Record the user who initiated the test run (batch user or case officer, as per business rules).
- The program will generate a detailed report of all errors and warnings detected during the test run.
- The report must be available for download and review by claims officers before proceeding with the actual upload.

---

## 4. Exception Handling

- If the file fails validation (e.g., incorrect format, missing mandatory fields), the program will halt processing and display all errors in the test run report.
- No changes will be made to SAP master data in test mode, regardless of errors or warnings.
- If critical errors are detected, the user must correct the file and re-run the test before attempting an actual upload.

---

## 5. Compliance/Controls

- All test run activities must be logged for audit purposes, including user ID, timestamp, and file name.
- The test run report must be retained for compliance and quality assurance.
- Only authorized users may execute the test run facility.

---

## 6. References and Linked Requirements

- Cross-references: DOB002, DOB003, DOB004, DOB006, DOB007, DOB008
- Related SAP infotypes: IT0015 (offset master data)
- BRD4_Phase 4_Requirements Notes.xlsx

---

## 7. Acceptance Criteria

- [ ] The upload program provides a selectable ‘test’ run mode.
- [ ] All file validation checks are performed in test mode without updating master data.
- [ ] Errors and warnings are clearly reported in a downloadable report.
- [ ] The test run logs user, timestamp, and file name for audit.
- [ ] Only authorized users can execute the test run.
- [ ] Claims officers can review and correct errors before proceeding to upload.