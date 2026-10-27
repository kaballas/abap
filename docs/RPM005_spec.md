# Functional Specification: RPM005 — Request for Review Report

---

## 1. Business Background

The Request for Review (RFR) process within OLIMS enables EPSS Claims Officers and Supervisors to log, track, and manage queries, complaints, and disputes related to EPSS claims. Accurate and timely reporting on these reviews is essential for scheme monitoring, performance analysis, and compliance with internal and external requirements.

---

## 2. Scope

This specification covers the design and delivery of the "Request for Review" report (RPM005) in OLIMS. The report will extract, display, and export all in-progress and completed review records, supporting operational, compliance, and quality assurance activities.

---

## 3. Detailed Functional Requirements

- The report must list all Request for Review records entered in OLIMS, including both open and closed reviews.
- Selection criteria must include: Employee Number, Incident Number, Received Date, Closed Date, and allow for no criteria to be entered (i.e., return all records).
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

- If mandatory data fields are missing for any record, the report must flag the record and display a warning in the output.
- If no records match the selection criteria, the report must display a "No records found" message.
- If data extraction fails, an error message must be shown and logged for support review.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised EPSS Claims Officers and Supervisors.
- All report exports must be logged for audit purposes.
- The report must support compliance monitoring, including SLA adherence and escalation tracking.

---

## 6. References and Linked Requirements

- Cross-references: OLC001–OLC012 (Request for Review tab requirements), RPM001–RPM005 (report requirements), OLIMS reporting framework.
- Related: DOA010, DOA012, DOB001–DOB005, P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] Report displays all Request for Review records with required columns.
- [ ] Selection criteria function as specified, including support for blank criteria.
- [ ] Each review record is a separate line item.
- [ ] Report is exportable to Excel.
- [ ] Missing or incomplete data is flagged in the report output.
- [ ] Access and export actions are logged for audit.
- [ ] Report meets compliance and operational reporting needs as confirmed by business stakeholders.