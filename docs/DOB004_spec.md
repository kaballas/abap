# Functional Specification: DOB004 — EML Upload File Minimum Data Requirements

---

## 1. Business Background

The NSW Police Force (NSWPF) requires a robust process for managing EPSS (Enhanced Police Support Scheme) payments for detached officers. As part of this, EML (the workers compensation insurer) will provide a file of weekly workers compensation payments made to detached officers. This file must be uploaded into OLIMS to update claims, offset EPSS payments, and ensure accurate payroll processing.

---

## 2. Scope

This specification covers the minimum data requirements for the EML upload file (DOB004), the mapping and usage of each field in OLIMS and downstream systems, and the validation and handling of the uploaded data for detached officers. It also addresses field length requirements and alignment with SAP/OLIMS data structures.

---

## 3. Detailed Functional Requirements

- The EML upload file must contain, at a minimum, the following fields for each payment record:
    - Claim Number
    - Incident Number
    - Employee Number (specify if original or detached; conversion logic if required)
    - Period Start Date
    - Period End Date
    - Payment Date
    - Workers Compensation Amount
    - Payment Classification Description (WC section/capacity)
    - Capacity Status (No Capacity, Partial Capacity, PID)
    - Estimate of Number of Future Weeks of Payments
    - File Date
- Each field must have a defined maximum length compatible with OLIMS/SAP.
- The intended use of period start/end dates vs. payment date must be documented.
- The upload process must map each field to the correct OLIMS location and ensure downstream payroll integration.
- The system must document and display where each field is loaded and used.
- If the employee number in the file is the original, the system must convert it to the detached number as required.
- The upload must support validation of field formats and mandatory fields before processing.
- The upload must ensure WC payments align with medical certificates for EPSS offsetting; if not, a warning or error is raised.
- If more granularity is needed for reporting or payment logic, the file structure must support this.

---

## 4. Exception Handling

- If mandatory fields are missing or exceed maximum length, the upload is rejected with a clear error message.
- If the employee number does not match a valid detached officer, the record is flagged for review.
- If period dates or payment dates are invalid or inconsistent, the record is rejected.
- If classification or capacity status values are unrecognized, the record is flagged for manual review.
- If WC payments do not align with medical certificates, a warning is issued and the record is flagged for further investigation.

---

## 5. Compliance/Controls

- All uploads must be logged with user, date, and time.
- Uploaded data must be auditable and traceable to the original EML file.
- Access to upload and mapping functions is restricted to authorized users.
- All changes and uploads are subject to payroll and OLIMS audit controls.
- Reports must be available for reconciliation and quality assurance.

---

## 6. References and Linked Requirements

- Cross-references: DOB001, DOB002, DOB003, DOB005, DOB006, DOB007, DOB008
- Related: DOA010, DOA013, OLE001, OLE002

---

## 7. Acceptance Criteria

- [ ] EML upload file contains all required fields with correct formats and lengths.
- [ ] Uploaded data is correctly mapped to OLIMS and payroll.
- [ ] Employee number conversion logic is implemented and documented.
- [ ] All exceptions are handled as specified, with clear error messages.
- [ ] Uploads are logged and auditable.
- [ ] Reports are available for reconciliation.
- [ ] All business rules for field usage and alignment with certificates are met.