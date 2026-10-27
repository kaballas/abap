# Functional Specification: RPM004 — Request for Review Report

---

## 1. Business Background

The Request for Review (RFR) process in OLIMS enables tracking, management, and reporting of all review requests (queries, complaints, disputes) related to EPSS claims. Accurate reporting is required for scheme performance, compliance, and operational oversight.

---

## 2. Scope

This specification covers the design and delivery of the "Request for Review" report (RPM004) in OLIMS/EPSS. The report must extract, display, and export all RFR records, including in-progress and completed reviews, with all required fields and selection criteria.

---

## 3. Detailed Functional Requirements

- The report must display each review record as a separate line item.
- Selection criteria:
    - Employee Number
    - Incident Number
    - Received Date
    - Closed Date
    - Allow for no criteria to be entered (returns all records)
- Report columns:
    - Employee Number
    - Incident Number
    - Claim Number
    - Type of Review
    - Query/Complaint/Dispute Type
    - Other Type – Text
    - Requestor
    - Other Requestor – Text
    - Date Received
    - Due Date
    - Closed Date
    - Escalation Flag
    - EPSS Claims Advisor
    - EPSS Supervisor
- All required data fields must exist and be populated in OLIMS/EPSS/Payroll before report development.
- The report must be exportable to Excel.

---

## 4. Exception Handling

- If required fields are missing in source systems, the report must flag the record and display a warning.
- If no records match the selection criteria, the report displays "No records found."
- Data extraction errors must be logged and notified to the system administrator.

---

## 5. Compliance/Controls

- Access to the report is restricted to authorised users (EPSS Claims Officers, Supervisors).
- All report exports are logged for audit purposes.
- Data must comply with privacy and confidentiality requirements.

---

## 6. References and Linked Requirements

- Cross-references: OLC001–OLC012 (Request for Review tab requirements), RPM001–RPM005 (report requirements), OLIMS data model, SAP/Payroll integration.
- Related reports: RPN (External Income and Payments), RPP (Document Overview).

---

## 7. Acceptance Criteria

- [ ] Report displays one line per review record with all required columns.
- [ ] Selection criteria function as specified.
- [ ] Report can be exported to Excel.
- [ ] Missing data is flagged and does not cause report failure.
- [ ] Access and export actions are audit logged.
- [ ] All data fields are sourced from OLIMS/EPSS/Payroll as specified.
- [ ] Report output matches business requirements and sample layouts.