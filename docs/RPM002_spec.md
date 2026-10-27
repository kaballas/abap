# Functional Specification: RPM002 — Request for Review Report

---

## 1. Business Background

The Request for Review process in OLIMS enables tracking, management, and reporting of all review requests (queries, complaints, disputes) related to EPSS claims. Accurate reporting is required for operational oversight, compliance, and performance monitoring.

---

## 2. Scope

This specification covers the requirements for the "Request for Review" report (RPM002), including selection criteria, report columns, export functionality, and data source alignment with OLIMS, EPSS, and Payroll systems.

---

## 3. Detailed Functional Requirements

- The report must list all in-progress and completed reviews from the OLIMS "Request for Review" tab.
- Selection criteria:
    - Employee Number
    - Incident Number
    - Received Date
    - Closed Date
    - Ability to run with no criteria (returns all records)
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
- Each review record must be displayed as a separate line item.
- The report must be exportable to Excel.
- All required data fields must be available in OLIMS/EPSS/Payroll.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a warning and exclude incomplete records.
- If no records match the selection criteria, the report will display a "No records found" message.
- Export errors (e.g., file write issues) must be logged and a user-friendly error message shown.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorized users (EPSS Claims Officers, Supervisors).
- Audit logs must record report generation and export actions.
- Data must be handled in accordance with privacy and data retention policies.

---

## 6. References and Linked Requirements

- Cross-references: RPM001, RPM003–RPM005, OLC001–OLC012, OLIMS Request for Review tab, SAP/OLIMS/Payroll data mapping.

---

## 7. Acceptance Criteria

- [ ] Report displays all required columns for each review record.
- [ ] Selection criteria function as specified, including "no criteria" option.
- [ ] Report can be exported to Excel.
- [ ] Only authorized users can access and export the report.
- [ ] Audit logs are generated for report access and export.
- [ ] All data fields are sourced from OLIMS/EPSS/Payroll as required.
- [ ] Exception handling is implemented for missing data and export errors.