# Functional Specification: RPP004 — Document Overview Report

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust reporting on all documents sent and uploaded in the OLIMS Document Overview screen to support compliance, audit, and operational reporting for the Enhanced Police Support Scheme (EPSS). This report is critical for tracking correspondence, ensuring regulatory compliance, and supporting scheme performance monitoring.

---

## 2. Scope

This specification covers the design and delivery of the Document Overview report (RPP004) within the OLIMS/EPSS reporting suite. The report must extract, display, and export all relevant document records for EPSS claims, including inbound and outbound correspondence, with full audit fields.

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
- Data must be sourced from OLIMS, EPSS, and Payroll systems as required.
- The report must be exportable to Excel.

---

## 4. Exception Handling

- If required fields are missing for any document record, display the field as blank and log a warning in the report output.
- If data extraction fails for any selection criteria, display an error message to the user and do not generate partial results.
- If no records match the selection, display a "No records found" message.

---

## 5. Compliance/Controls

- All document records must be included for compliance and audit purposes.
- Access to the report must be restricted to authorised EPSS Claims Officers and Supervisors.
- The report must support audit trails for document creation, modification, and deletion.
- Exported reports must be stored in accordance with NSWPF data retention and privacy policies.

---

## 6. References and Linked Requirements

- Cross-references: RPP001–RPP005 (Document Overview reporting), OLIMS Document Management, Payroll/OLIMS data mapping.
- Related reports: RPN (External Income/Payments), RPM (Request for Review), RPE (Detailed EPSS Payment Report).

---

## 7. Acceptance Criteria

- [ ] Report displays one line per document record with all required columns.
- [ ] Selection criteria function as specified.
- [ ] Data is sourced and mapped correctly from OLIMS/EPSS/Payroll.
- [ ] Report is exportable to Excel.
- [ ] Exception handling is implemented as specified.
- [ ] Access controls are enforced.
- [ ] Audit trail fields are present and populated.
- [ ] Report meets compliance and privacy requirements.