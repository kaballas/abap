# Functional Specification: DOB008 — Test and Upload Run Report Download

---

## 1. Business Background

The NSW Police Force (NSWPF) Enhanced Police Support Scheme (EPSS) requires accurate and auditable processing of Workers Compensation (WC) payment data for detached officers. As part of the EML WC payment upload process, claims officers must be able to review, reconcile, and retain evidence of all test and upload runs. This ensures payment quality assurance, supports compliance, and enables transparent claim administration.

---

## 2. Scope

This requirement covers the ability for claims officers to download the results of both ‘test’ and ‘upload’ runs of the EML WC payment upload program from SAP. The downloaded report will be used for claim administration, reconciliation, and payment quality assurance activities. The scope includes specifying the download location, file naming conventions, and output format.

---

## 3. Detailed Functional Requirements

- The EML WC payment upload program must generate a report for both ‘test’ and ‘upload’ runs.
- The report must be available for download as a file directly from SAP.
- The download location must be user-selectable or follow a predefined secure path, as confirmed by business input.
- The filename must follow a standard convention: `EML_WC_Upload_{RunType}_{YYYYMMDD}_{HHMMSS}.xlsx` (where `{RunType}` is TEST or UPLOAD).
- The report must include all input fields, status (success/error), error descriptions, and allow filtering by result type.
- The output format must be Excel (.xlsx).
- The report must be accessible immediately after each run for claims officer review.

---

## 4. Exception Handling

- If the report cannot be generated or downloaded, the system must display a clear error message and log the incident for IT support.
- If the download location is unavailable or access is denied, the user must be prompted to select an alternative location.
- If the report contains errors, these must be clearly flagged in the output for correction before proceeding with payment processing.

---

## 5. Compliance/Controls

- All downloaded reports must be retained in accordance with NSWPF record-keeping and audit policies.
- Access to the download function must be restricted to authorised claims officers.
- The report must be available for audit and reconciliation purposes.
- Any changes to the report output or download process must be subject to change control.

---

## 6. References and Linked Requirements

- Cross-references: DOB005 (test run facility), DOB006 (upload facility), DOB007 (report generation), DOB003 (OLIMS update), DOB004 (file format), DOB002 (file content).
- Related reporting and reconciliation requirements in Section 2.4.7, 2.4.18.

---

## 7. Acceptance Criteria

- [ ] Claims officers can download the test and upload run report from SAP as an Excel file.
- [ ] The report includes all required fields, statuses, and error descriptions.
- [ ] The filename and download location meet business requirements.
- [ ] The report is available immediately after each run.
- [ ] Exception handling is implemented for failed downloads or report generation.
- [ ] Access controls and audit requirements are met.
- [ ] The process supports payment quality assurance and reconciliation activities.