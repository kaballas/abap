# Functional Specification: DOB007 — EML WC Payment Upload Test/Upload Run Report

---

## 1. Business Background

The NSW Police Force (NSWPF) Enhanced Police Support Scheme (EPSS) requires accurate and auditable processing of Workers Compensation (WC) payments for detached officers. EML, as the insurer, provides files of WC payments made to detached officers. These files are uploaded into OLIMS and SAP to offset EPSS payments. To ensure data integrity and compliance, a report must be generated for both ‘test’ and ‘upload’ runs of the EML WC payment upload program, allowing claims officers to reconcile errors and review successful or unsuccessful upload results.

---

## 2. Scope

This specification covers the requirements for generating a report after both ‘test’ and ‘upload’ runs of the EML WC payment upload program. The report must provide a clear summary of all processed records, including errors, successful uploads, and unsuccessful uploads, and must be available for download from SAP for administrative and quality assurance purposes.

---

## 3. Detailed Functional Requirements

- The upload program must generate a report after both ‘test’ and ‘upload’ runs.
- The report must include all input fields from the EML upload file, with additional columns for status (success/error) and error descriptions.
- The report must clearly distinguish between successful and unsuccessful records.
- Filtering options must be available for claims officers to view only errors, only successes, or all records.
- The report must be available for download from SAP as a file (e.g., Excel or CSV).
- The report must be generated in real time or immediately after processing, with no significant delay.
- If staging tables are used, the report must reflect the latest data from these tables.

---

## 4. Exception Handling

- Any record with missing or invalid mandatory fields must be flagged as an error in the report, with a descriptive error message.
- If the upload program encounters a system error, the report must indicate a general failure and provide relevant technical details.
- In case of partial upload (some records succeed, some fail), the report must accurately reflect the status of each record.
- If the report generation fails, an error notification must be sent to the claims officer and system administrator.

---

## 5. Compliance/Controls

- All upload and report activities must be logged for audit purposes.
- The report must be retained according to NSWPF data retention and payroll audit policies.
- Access to the report must be restricted to authorised claims officers and payroll administrators.
- The report must support reconciliation and quality assurance activities as part of payroll controls.

---

## 6. References and Linked Requirements

- Cross-references: DOB001–DOB006 (EML WC payment upload process), DOB008 (report download), DOA001–DOA016 (detached officer payment management), P905 retro logic.
- See also: SAP payroll audit requirements, OLIMS integration documentation.

---

## 7. Acceptance Criteria

- [ ] Report is generated after both ‘test’ and ‘upload’ runs.
- [ ] Report includes all input fields, status, and error descriptions.
- [ ] Claims officers can filter by status (success/error/all).
- [ ] Report is downloadable from SAP in the required format.
- [ ] All errors and exceptions are clearly described in the report.
- [ ] Report supports reconciliation and quality assurance activities.
- [ ] Access and retention controls are in place and documented.