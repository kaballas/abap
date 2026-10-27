# Functional Specification: OLC011 — Request for Review Tab Reporting

---

## 1. Business Background

The Request for Review (RfR) process in OLIMS enables EPSS Claims Officers and Supervisors to manage, track, and report on queries, complaints, and disputes raised by claimants or stakeholders. Accurate and timely reporting on RfR records is essential for scheme performance, compliance, and service quality monitoring.

---

## 2. Scope

This specification covers the reporting requirements for the Request for Review tab in OLIMS, including the creation of a new report to list in-progress and completed reviews, selection criteria, report columns, export functionality, and auditability. It applies to all EPSS claims managed in OLIMS.

---

## 3. Detailed Functional Requirements

- The system must provide a report listing all Request for Review records (queries, complaints, disputes) entered in OLIMS.
- Selection criteria must include: Employee Number, Incident Number, Received Date, Closed Date, with the ability to run the report with no criteria (all records).
- Report columns must include: Employee Number, Incident Number, Claim Number, Type of Review, Query/Complaint/Dispute Type, Other Type (Text), Requestor, Other Requestor (Text), Date Received, Due Date, Closed Date, Escalation Flag, EPSS Claims Advisor, EPSS Supervisor.
- Each review record must be displayed as a separate line item.
- The report must be exportable to Excel.
- All required data fields must be available in OLIMS/EPSS/Payroll for extraction.
- The report must support both in-progress and completed reviews.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a warning and exclude incomplete records.
- If export to Excel fails, the system must display an error message and log the incident for support.
- If selection criteria return no results, the report must display a "No records found" message.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised EPSS Claims Officers and Supervisors.
- All report exports and access must be logged for audit purposes.
- The report must support compliance with scheme reporting and internal SLA monitoring.

---

## 6. References and Linked Requirements

- Cross-references: OLC001–OLC012 (Request for Review tab enhancements), RPM001–RPM005 (Request for Review reporting), OLIMS reporting framework, SAP/OLIMS data extraction standards.

---

## 7. Acceptance Criteria

- [ ] Report lists all RfR records with required columns and selection criteria.
- [ ] Report supports filtering by Employee Number, Incident Number, Received Date, Closed Date, or no filter.
- [ ] Each review record appears as a separate line.
- [ ] Report is exportable to Excel.
- [ ] Access and export actions are logged.
- [ ] Missing or incomplete data is handled with appropriate warnings.
- [ ] Only authorised users can access and export the report.