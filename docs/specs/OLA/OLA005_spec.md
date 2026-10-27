# Functional Specification: OLA005 — Add "Date Received" Field for Documents in OLIMS

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust document management within OLIMS (Online Injury Management System) to support compliance, audit, and operational efficiency. Currently, there is no dedicated field to record the date a document is received by the EPSS claims officer, which is necessary for accurate tracking, reporting, and compliance with scheme requirements.

---

## 2. Scope

This specification covers the addition of a new "Date Received" field in OLIMS for documents managed by EPSS claims officers. The field will be available for all document types relevant to EPSS On Duty and Off Duty claims, and will be included in the Document Overview screen and related reporting.

---

## 3. Detailed Functional Requirements

- A new field, "Date Received," must be added to OLIMS for each document record.
- The "Date Received" field must be available for data entry by EPSS claims officers at the time of document upload or when editing document metadata.
- The field must accept a valid date in the format DD/MM/YYYY.
- The "Date Received" value must be stored as an attribute of the document record and linked to the relevant WC/incident number.
- The field must be visible in the Document Overview screen and included in document-related reports.
- The field must be editable only by users with appropriate OLIMS permissions.
- The field must be mandatory for all new document uploads; for existing documents, it should be editable if not already populated.

---

## 4. Exception Handling

- If an invalid date is entered, the system must display an error and prevent saving until a valid date is provided.
- If the "Date Received" field is left blank during document upload, the system must prompt the user to enter a value before proceeding.
- For legacy documents where the date is unknown, a default value (e.g., "Unknown" or a system flag) may be used, subject to business approval.

---

## 5. Compliance/Controls

- All entries and edits to the "Date Received" field must be audit logged, including user, timestamp, and previous value.
- Access to edit the "Date Received" field must be restricted to EPSS claims officers and supervisors.
- The field must be included in compliance and SLA performance reporting for document management.

---

## 6. References and Linked Requirements

- OLA013: Addition of "Date Received" and "Comments" fields in Document Overview.
- OLA004: Requirement to save correspondence details and dates in OLIMS.
- RPP001–RPP005: Document Overview reporting requirements.
- OLIMS Document Management module.

---

## 7. Acceptance Criteria

- [ ] "Date Received" field is present and visible for all EPSS documents in OLIMS.
- [ ] Field is mandatory for new uploads and editable for existing documents (if not already set).
- [ ] Field accepts only valid dates and prevents invalid entries.
- [ ] Field is included in Document Overview and related reports.
- [ ] All changes to the field are audit logged.
- [ ] Access to edit the field is restricted to authorized users.
- [ ] Field is linked to the correct WC/incident number for each document.
- [ ] Exception handling is implemented as specified.