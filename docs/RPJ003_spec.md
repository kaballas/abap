# Functional Specification: RPJ003 — EPSS Period 2 – PID Greater Than 7 Days Report

---

## 1. Business Background

The NSW Police Force (NSWPF) Enhanced Police Support Scheme (EPSS) provides supplementary support payments to eligible officers. Accurate reporting on officers in EPSS Period 2 with Pre-Injury Duties (PID) greater than 7 days is required for scheme monitoring, compliance, and operational management. This report supports business needs for tracking extended PID periods, ensuring correct benefit administration, and enabling data-driven decision-making.

---

## 2. Scope

This specification covers the design and delivery of the "EPSS Period 2 – PID Greater Than 7 Days" report (RPJ003). The report will extract and display relevant data from OLIMS, EPSS, and Payroll systems for all officers in EPSS Period 2 with PID certificates exceeding 6 days. It includes selection criteria, output columns, and export functionality.

---

## 3. Detailed Functional Requirements

- The report must be accessible from the OLIMS EPSS report area.
- A standard selection screen must be provided with the following criteria:
    - Employee Number
    - Incident Number
    - WC Primary Claim (when selected, only primary claims are shown; otherwise, all claims are included)
    - Ability to run the report with no selection criteria (returns all records)
- The report must display the following columns:
    - Employee Number
    - Employee Name
    - Incident No.
    - Claim No.
    - EPSS Period 2 (flag)
    - WC Certificate Date From
    - WC Certificate Status
    - No. of Days PID (only include PID certificates with more than 6 PID days)
    - PID-RTD days (new column)
    - RTD Date From
    - RTD Date To
    - RTD Description
    - Record inactive (flag) (refers to the PID certificate)
    - Last Modified By (RTD record)
    - Last Modified On (RTD record)
    - Last Modified At (RTD record)
- The report must be exportable to Excel.
- All required data fields must be available in OLIMS/EPSS/Payroll for extraction.
- The report must support execution in SAP foreground or background as needed.

---

## 4. Exception Handling

- If required data fields are missing or inaccessible, the report must display a clear error message indicating the missing data source.
- If no records match the selection criteria, the report must return a message: "No records found for the selected criteria."
- If export to Excel fails, an error message must be shown and logged for support.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised EPSS Claims Officers, Supervisors, and relevant business users.
- All report exports and executions must be logged for audit purposes.
- Data displayed must comply with NSWPF privacy and data protection policies.
- The report must support reconciliation and operational reporting requirements.

---

## 6. References and Linked Requirements

- Cross-references: RPJ001, RPJ002, RPE001–RPE004 (Detailed EPSS Payment Report), OLIMS/EPSS/Payroll data mapping.
- Related business requirements: PID week counting, Period 2 eligibility, and reporting controls.

---

## 7. Acceptance Criteria

- [ ] Report is accessible from the OLIMS EPSS report area.
- [ ] Selection screen includes all required criteria.
- [ ] Report displays all specified columns with correct data.
- [ ] Only PID certificates with more than 6 days are included.
- [ ] Export to Excel is available and functional.
- [ ] Report can be run with or without selection criteria.
- [ ] Error handling is implemented for missing data and export failures.
- [ ] Access controls and audit logging are in place.
- [ ] All data fields are sourced from OLIMS/EPSS/Payroll as specified.
- [ ] Report output matches business requirements and is validated by business users.