# Functional Specification: RPP002 — Document Overview Report

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust reporting on all documents sent and uploaded in the EPSS (Enhanced Police Support Scheme) Document Overview screen. This is essential for compliance, audit, and operational reporting, ensuring transparency and traceability of all correspondence and supporting documents related to EPSS claims.

---

## 2. Scope

This specification covers the design and implementation of the Document Overview Report (RPP002) within the OLIMS/EPSS environment. The report must extract, display, and export all relevant document records, including metadata and audit fields, for compliance and scheme reporting.

---

## 3. Detailed Functional Requirements

- The report must provide a selection screen with filters for Employee No., Incident No., Document Category, Document Sub Category, Date From, and Date To.
- The report must display the following columns for each document record:
  - Employee No.
  - Incident No.
  - Claim No.
  - Duty Type
  - Direction
  - Document Category
  - Document Sub Category
  - Document Title
  - Receiver Type
  - Receiver Name
  - Receive Distribution Method
  - Email ID
  - Date Processed
  - Time Sent
  - Date Received
  - Comments
  - EPSS Claim Advisor
  - EPSS Supervisor
  - Modified By
  - Modified On
  - Modified At
- Each document record must be displayed as an individual line item (no grouping).
- The report must be exportable to Excel.
- Data must be sourced from OLIMS, EPSS, and Payroll systems as required.
- All required fields must be mapped and accessible for extraction.

---

## 4. Exception Handling

- If a required field is missing or inaccessible, the report must flag the record and display a warning in the Comments column.
- If no records match the selection criteria, the report must display a "No records found" message.
- If export to Excel fails, an error message must be shown to the user with guidance to retry or contact support.

---

## 5. Compliance/Controls

- All document records must be included for audit and compliance purposes, including hidden/inactive documents if required by business rules.
- Access to the report must be restricted to authorised EPSS Claims Officers, Supervisors, and compliance staff.
- The report must support periodic reconciliation and be available for internal/external audit review.

---

## 6. References and Linked Requirements

- Cross-references: RPP001, RPP003, RPP004, RPP005
- Related reporting requirements: RPA001, RPE001, RPM001
- OLIMS/EPSS Document Management and Audit Log requirements

---

## 7. Acceptance Criteria

- [ ] Report selection screen includes all required filters.
- [ ] All specified columns are present and populated for each document record.
- [ ] Each document record is displayed as a separate line item.
- [ ] Report can be exported to Excel without data loss.
- [ ] Missing or inaccessible data is flagged appropriately.
- [ ] Access controls are enforced as per compliance requirements.
- [ ] Report output matches data in OLIMS/EPSS/Payroll for the selected criteria.
- [ ] Report is available for audit and compliance review.