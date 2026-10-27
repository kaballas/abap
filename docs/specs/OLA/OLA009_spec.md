# Functional Specification: OLA009 — Reporting Capability of Documents in the Document Overview Screen

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust document management and reporting for compliance, audit, and operational efficiency. The Document Overview screen in OLIMS is the central location for managing all inbound and outbound documents related to EPSS claims. Accurate and accessible reporting on these documents is essential for scheme monitoring, compliance, and performance reporting.

---

## 2. Scope

This requirement covers the ability to report on all documents sent and uploaded in the OLIMS Document Overview screen. It includes the need to extract, filter, and export document data for compliance, audit, and operational reporting. The scope includes both inbound and outbound documents, with all relevant metadata and user actions.

---

## 3. Detailed Functional Requirements

- The Document Overview screen must provide reporting capability for all documents (sent/uploaded) related to EPSS claims.
- The report must include selection criteria: Employee No., Incident No., Document Category, Document Sub Category, Date From, Date To.
- The report output must include the following columns:
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
- Each document record must be displayed as an individual line item.
- The report must be exportable to Excel for offline analysis.
- All required data fields must be available in OLIMS/EPSS/Payroll for extraction.

---

## 4. Exception Handling

- If a required field is missing for a document, the report must display a blank value and flag the record for review.
- If no documents match the selection criteria, the report must display a “No records found” message.
- If export to Excel fails, an error message must be shown and logged for support.

---

## 5. Compliance/Controls

- All document actions (upload, send, modify, delete) must be audit logged.
- Access to the report and document data must be restricted to authorised users.
- The report supports compliance with payroll controls, OLIMS access, reporting, and reconciliation requirements.

---

## 6. References and Linked Requirements

- Cross-references: OLA006, OLA007, OLA008, OLA013, RPP001–RPP005, OLIMS Document Management, EPSS Reporting, Compliance and SLA reporting.

---

## 7. Acceptance Criteria

- [ ] Report is available from the Document Overview screen in OLIMS.
- [ ] Selection criteria and output columns match the specification.
- [ ] All document records are displayed as individual line items.
- [ ] Export to Excel is functional and includes all selected data.
- [ ] Missing or incomplete data is flagged in the report.
- [ ] Access controls and audit logging are in place.
- [ ] Report supports compliance and reconciliation activities.