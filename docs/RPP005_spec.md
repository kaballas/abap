# Functional Specification: RPP005 — Document Overview Report

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust compliance and operational reporting on all documents sent and uploaded in the Document Overview screen within OLIMS. This is essential for audit, scheme performance, and regulatory obligations. The Document Overview report supports claims officers, supervisors, and auditors in tracking document flows, correspondence, and compliance with scheme requirements.

---

## 2. Scope

This specification covers the design and implementation of the Document Overview report (RPP005) in OLIMS/SAP. The report will extract, display, and export document records related to EPSS claims, including all required metadata for compliance and operational analysis. It includes selection criteria, output columns, export functionality, and data source mapping.

---

## 3. Detailed Functional Requirements

- **RPP001**: The report must provide reporting capability on documents sent and uploaded in the Document Overview screen for compliance and reporting activities on EPSS.
- **RPP002**: The report selection screen must include filters for Employee No., Incident No., Document Category, Document Sub Category, Date From, and Date To.
- **RPP003**: The report output must include the following columns:
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
- **RPP004**: Each document record must be displayed as an individual line item (no grouping).
- **RPP005**: The report must be exportable to Excel for offline analysis by EPSS Claims Officers.

---

## 4. Exception Handling

- If required fields are missing in OLIMS/EPSS/Payroll, the report must display a warning and exclude incomplete records.
- If no records match the selection criteria, the report must display a "No records found" message.
- If export fails, an error message must be shown with troubleshooting steps.

---

## 5. Compliance/Controls

- All document records must be auditable and traceable to the source system (OLIMS/EPSS/Payroll).
- Access to the report and export function must be restricted to authorised users (EPSS Claims Officers, Supervisors, Auditors).
- Exported files must be stored in compliance with NSWPF data retention and privacy policies.

---

## 6. References and Linked Requirements

- Cross-references: RPP001–RPP005 (this report), OLIMS Document Overview screen, SAP/OLIMS data mapping, related reporting requirements (RPA, RPB, RPE).
- Linked requirements: DOA010, DOA012, DOB001–DOB005, P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] Report selection screen includes all required filters.
- [ ] Report output includes all specified columns with correct data mapping.
- [ ] Each document record is a separate line item.
- [ ] Report can be exported to Excel.
- [ ] Access controls are enforced.
- [ ] Exception handling is implemented as specified.
- [ ] All data fields are sourced from OLIMS/EPSS/Payroll and are accurate.
- [ ] Report meets compliance and audit requirements.