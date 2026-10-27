# Functional Specification: RPM003 — Request for Review Report

---

## 1. Business Background

The Request for Review process in OLIMS allows EPSS Claims Officers and Supervisors to log, track, and manage queries, complaints, and disputes related to EPSS claims. Accurate and timely reporting on these reviews is essential for scheme performance, compliance, and quality assurance.

---

## 2. Scope

This specification covers the design and delivery of the "Request for Review" operational report (RPM003) in OLIMS/EPSS. The report will extract, display, and export all in-progress and completed review records, supporting analysis, compliance, and performance monitoring.

---

## 3. Detailed Functional Requirements

- The report must extract all review records from the OLIMS "Request for Review" tab, including both open and closed items.
- Selection criteria must include: Employee Number, Incident Number, Received Date, Closed Date, and allow for no criteria (return all records).
- Report columns must include:
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
- All required data fields must be available in OLIMS/EPSS/Payroll for accurate report generation.

---

## 4. Exception Handling

- If required data fields are missing or incomplete, the report must flag these records and display a warning message.
- If no records match the selection criteria, the report must return a "No records found" message.
- If export to Excel fails, an error message must be displayed with guidance to retry or contact support.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised EPSS Claims Officers and Supervisors.
- All report exports and access must be logged for audit purposes.
- The report must support compliance with internal reporting, reconciliation, and scheme monitoring requirements.

---

## 6. References and Linked Requirements

- Cross-references: OLC001–OLC012 (Request for Review tab requirements), RPN001–RPN005 (External Income and Payments reporting), RPP001–RPP005 (Document Overview reporting), P905 retro logic.
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Report extracts all review records as per selection criteria.
- [ ] All required columns are present and populated.
- [ ] Each review record is a separate line item.
- [ ] Report can be exported to Excel.
- [ ] Exception handling is implemented for missing data and export errors.
- [ ] Access and export actions are logged for audit.
- [ ] Report meets compliance and reconciliation requirements.
- [ ] All data fields are sourced from OLIMS/EPSS/Payroll as specified.