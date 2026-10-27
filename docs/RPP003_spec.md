# Functional Specification: RPP003 — Document Overview Report

---

## 1. Business Background

The Document Overview report is required to support compliance, audit, and operational reporting for the EPSS scheme. It enables the EPSS Claims team and supervisors to track all documents sent and uploaded in OLIMS, ensuring transparency, traceability, and adherence to scheme requirements. The report is essential for monitoring document flows, supporting quality assurance, and meeting regulatory obligations.

---

## 2. Scope

This specification covers the design and implementation of the Document Overview report (RPP003) in OLIMS/SAP. The report will extract, display, and export document records related to EPSS claims, including inbound and outbound correspondence, with all relevant metadata. The scope includes selection criteria, report columns, export functionality, and compliance controls.

---

## 3. Detailed Functional Requirements

- The report must display one line per document record, with no grouping or summarisation.
- Selection criteria must include: Employee No., Incident No., Document Category, Document Sub Category, Date From, Date To.
- Report columns must include:
  - Employee No.
  - Incident No.
  - Claim No.
  - Duty Type
  - Direction (Inbound/Outbound)
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
- The report must be exportable to Excel.
- Data must be sourced from OLIMS, EPSS, and Payroll systems as required.
- All required fields must be available and mapped for extraction.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a clear error message and log the issue for follow-up.
- If no records match the selection criteria, the report must display a "No records found" message.
- Export failures must be logged and reported to the user with troubleshooting steps.

---

## 5. Compliance/Controls

- All document records must be retained for audit and compliance purposes.
- Access to the report must be restricted to authorised EPSS Claims Officers and Supervisors.
- The report must support audit trails for document creation, modification, and deletion.
- Exported files must be stored in accordance with NSWPF data retention and privacy policies.

---

## 6. References and Linked Requirements

- Cross-references: RPP001, RPP002, RPP004, RPP005 (Document Overview reporting requirements)
- Related reporting requirements: RPA001 (Data extraction), RPM (Request for Review), RPN (External Income/Payments)
- OLIMS Document Management module

---

## 7. Acceptance Criteria

- [ ] Report displays one line per document record with all specified columns.
- [ ] Selection criteria function as specified.
- [ ] All required data fields are present and correctly mapped.
- [ ] Report can be exported to Excel.
- [ ] Exception handling is implemented for missing data and export errors.
- [ ] Access controls and audit trails are in place.
- [ ] Report meets compliance and retention requirements.
- [ ] User acceptance testing is completed and signed off.