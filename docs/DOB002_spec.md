# Functional Specification: DOB002 — EML Workers Compensation Payment File Upload

---

## 1. Business Background

The NSW Police Force (NSWPF) Enhanced Police Support Scheme (EPSS) requires accurate offsetting of EPSS payments for detached officers who receive workers compensation (WC) payments directly from the insurer, EML. To ensure correct calculation of EPSS benefits, EML will provide NSWPF with a file of WC payments made to detached officers. This file must be uploaded into OLIMS to update claims, external earnings, and payroll offsets.

---

## 2. Scope

This specification covers the requirements for uploading EML WC payment files into OLIMS, including file format, mapping of payment dates to EPSS payment periods, and integration with payroll for offsetting EPSS benefits for detached officers. It excludes manual entry of WC payments and any changes to the EML payment process itself.

- The EML payment file format will be provided. If the EML layout differs from the required format, the file must be adjusted by the case officer before upload.
- The system must support upload of files in CSV format. EML currently provides Excel files, which are converted to CSV by OLIMS officers prior to upload.

---

## 3. Detailed Functional Requirements

- EML will provide NSWPF with a file of ‘weekly’ WC payments for detached officers on a regular (fortnightly, TBC) basis.
- The file must be in a specified format (CSV). If the EML layout differs, the file must be adjusted before upload.
- Each payment record must include: Claim Number, Incident Number, Employee Number, Period Start/End Date, Payment Date, WC Amount, Payment Classification Description, Capacity Status, Estimate of Future Weeks, File Date.
- The upload process must map payment dates to the correct EPSS payment week/fortnight for cap calculations. The date the WC payment is dated determines which week in the fortnight it is applied to for EPSS calculations. EML values will be converted to weekly values and dated accordingly.
- The system must validate the file format and required fields before processing.
- Uploaded payments must be linked to the correct detached officer (employee number) in OLIMS and payroll.
- The upload must not create or trigger WC payment wagetypes (e.g., 4901) for detached officers.

---

## 4. Exception Handling

- If the file format or required fields are missing/invalid, the upload must fail with a clear error message.
- If an employee number does not match a detached officer, the record must be flagged for review and not processed.
- Duplicate payment records (same claim, period, and payment date) must be detected and rejected.
- Any mapping errors (e.g., payment date not aligning with EPSS periods) must be reported for manual correction.
- If the file is not in CSV format, the upload must be rejected and the user instructed to convert the file before uploading.

---

## 5. Compliance/Controls

- All uploads must be logged with user, date/time, and file details for audit.
- Only authorised users may upload EML payment files.
- Uploaded data must be reportable for reconciliation and quality assurance.
- Payroll controls must ensure that only valid offsets are applied to EPSS payments.

---

## 6. References and Linked Requirements

- Cross-references: DOB001, DOB003, DOB004, DOB005, DOA010, DOA013, OLE001, OLE002
- See [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [x] EML WC payment file can be uploaded in the specified CSV format and extension.
- [x] All required fields are validated and mapped correctly.
- [x] Payment dates are mapped to the correct EPSS payment periods based on the date of the WC payment.
- [x] Only detached officers’ records are processed; others are flagged.
- [x] No WC payment wagetypes are triggered for detached officers.
- [x] All uploads are logged and reportable for audit and reconciliation.
- [x] Errors and exceptions are clearly reported for user action, including file format issues.