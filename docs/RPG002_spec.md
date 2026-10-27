# Functional Specification: RPG002 — EPSS Outbound Leave Report

---

## 1. Business Background

The EPSS Outbound Leave Report is required to support the administration and monitoring of officers on long-term leave who may be eligible for EPSS (Enhanced Police Support Scheme) benefits. This report enables claims officers and business stakeholders to identify and review officers on outbound leave, ensuring compliance with scheme rules and supporting operational decision-making.

---

## 2. Scope

This specification covers the design and implementation of the EPSS Outbound Leave Report (RPG002) within the EPSS Reporting folder. The report will extract and display data from OLIMS, EPSS, and payroll systems, including all required fields for outbound leave analysis. The scope includes report selection criteria, output columns, data sources, and export functionality.

---

## 3. Detailed Functional Requirements

- The report must be accessible in the EPSS Reporting folder.
- Data must be sourced from OLIMS, EPSS, and payroll systems.
- The report must include, at minimum, the following columns:
  - Employee Number
  - Employee Name
  - Incident Number
  - Leave Type Code
  - Leave Type Text
  - **Leave Reason Code** (new)
  - **Leave Reason Text** (new)
  - Leave Start Date
  - Leave End Date
  - Claim Status
  - EPSS Claims Advisor
  - EPSS Supervisor
- The report selection screen must allow filtering by:
  - Employee Number
  - Incident Number
  - Leave Type
  - Leave Reason
  - Date Range (From/To)
- All required fields must be present and accessible in source systems.
- The report must be exportable to Excel for offline analysis.

---

## 4. Exception Handling

- If required data fields are missing or inaccessible, the report must display a clear error message and log the issue for follow-up.
- If no records match the selection criteria, the report must display a "No data found" message.
- Data extraction errors must be logged and reported to the technical support team.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised EPSS users.
- All report exports must be logged for audit purposes.
- Data displayed must comply with privacy and data protection policies.
- The report must support reconciliation and operational reporting requirements.

---

## 6. References and Linked Requirements

- Cross-references: RPG001, RPB002–RPB007, RPE001–RPE004, OLIMS/EPSS/Payroll data mapping documentation.
- See also: [EPSS Reporting Requirements](#Operational_Reporting), [Open Items](#Open_Items_to_finalise_requirements_for_Phase_5).

---

## 7. Acceptance Criteria

- [ ] Report is accessible in the EPSS Reporting folder.
- [ ] Data is sourced from OLIMS, EPSS, and payroll as specified.
- [ ] Leave Reason Code and Leave Reason Text columns are present and correctly populated.
- [ ] Selection criteria function as described.
- [ ] Report can be exported to Excel.
- [ ] Error handling and audit logging are implemented.
- [ ] Access controls and compliance requirements are met.
- [ ] All required fields are present and mapped from source systems.
- [ ] Report output matches business requirements and is validated by stakeholders.