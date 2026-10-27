# Functional Specification: RPM001 — Request for Review Report

---

## 1. Business Background

The Request for Review (RfR) process in OLIMS enables tracking, management, and reporting of all review requests (queries, complaints, disputes) related to EPSS claims. Accurate reporting is required for operational oversight, compliance, and scheme performance monitoring.

---

## 2. Scope

This specification covers the design and delivery of the "Request for Review" report (RPM001) in OLIMS, including selection criteria, report columns, export functionality, and data sourcing from OLIMS/EPSS/Payroll. It applies to all in-progress and completed reviews entered in the OLIMS RfR tab.

---

## 3. Detailed Functional Requirements

- The report must list all RfR records (in progress and completed) as individual line items.
- Selection criteria:
    - Employee Number
    - Incident Number
    - Received Date
    - Closed Date
    - Allow execution with no criteria (returns all records)
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
- Data must be sourced from OLIMS/EPSS/Payroll, with field mapping confirmed.
- The report must be exportable to Excel.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a warning and exclude incomplete records.
- If no records match the selection criteria, the report returns an empty result set with a suitable message.
- Data extraction errors must be logged and reported to system administrators.

---

## 5. Compliance/Controls

- Access to the report is restricted to authorised users (EPSS Claims Officers, Supervisors).
- All report exports and accesses are audit logged.
- Data included must comply with privacy and confidentiality requirements.
- The report supports internal and external audit, reconciliation, and scheme performance reporting.

---

## 6. References and Linked Requirements

- Cross-references: OLC001–OLC012 (RfR tab requirements), RPL001–RPL005 (detailed reporting), RPN001–RPN005 (external income/payments), OLIMS reporting standards.
- Related: DOA010, DOA012, DOB001–DOB005, P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] Report lists all RfR records as individual line items.
- [ ] Selection criteria function as specified.
- [ ] All required columns are present and correctly populated.
- [ ] Report can be exported to Excel.
- [ ] Data is sourced and mapped correctly from OLIMS/EPSS/Payroll.
- [ ] Exception handling is implemented as specified.
- [ ] Access controls and audit logging are in place.
- [ ] Report meets compliance and privacy requirements.