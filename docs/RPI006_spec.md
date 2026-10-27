# Functional Specification: RPI006 — EPSS Pay Simulation Report

---

## 1. Business Background

The EPSS Pay Simulation Report is required to support the administration of the Enhanced Police Support Scheme (EPSS) by enabling claims officers to simulate and review payroll results for EPSS participants before payroll is finalized. This assists in identifying and resolving potential payment issues, ensuring accuracy, and supporting compliance with scheme rules.

---

## 2. Scope

This specification covers the design, data sources, selection criteria, output fields, access controls, and export requirements for the EPSS Pay Simulation Report. The report must be accessible to EPSS Claims Officers and Supervisors, support both simulated and actual payroll data, and be exportable for further analysis.

---

## 3. Detailed Functional Requirements

- The report must be available in the OLIMS EPSS Reporting folder.
- Selection criteria must include:
  - Payroll Area
  - Payroll Period
  - Employee Number
  - Active and inactive status
  - Org Unit selection for restricted groups (e.g., Covert Org Unit 653, Senior Executive Officers)
- The report must support running simulations before payroll is finalized (pre-payroll) and after payroll is run (post-payroll).
- Output columns must include:
  - Employee Number, Name
  - Incident No., WC Claim No., WC Claim Status
  - For Period End Date, Pay Period End Date
  - Week 1/2: RTW earnings (9WCM), WC earnings (4901), External Earnings (3670), Period 1 ORP, Period 1 (49E9), Period 1 adjs (6A48), Period 2 salary, Period 2 (49S9), Period 2 adjs (6A49)
  - RTW Earnings (Total), WC Earnings (Total), External Earnings (Total), Period 1 (Total), Period 2 (Total), PBRI top up (Total)
- The report must allow selection and filtering for Covert Org Unit 653 and Senior Executive Officers.
- The report must be exportable to Excel.
- The report must support both online and background execution for large data sets.
- The report must display one line per employee/incident/pay period combination.

---

## 4. Exception Handling

- If roster data is not available pre-payroll, the report must display a warning that results may be incomplete or inaccurate.
- If required data fields are missing or inaccessible, the report must flag the affected records and continue processing other records.
- If the user does not have access to SAP spools or export functionality, an error message must be displayed with instructions to contact support.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorized EPSS Claims Officers and Supervisors.
- All report exports and downloads must be logged for audit purposes.
- The report must comply with payroll data privacy and security requirements.
- The report must support reconciliation and quality assurance activities for EPSS payments.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- Related reports: RPE (Detailed EPSS Payment Report), RPF (Period 1 Utilisation Summary)
- See: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Report is available in the OLIMS EPSS Reporting folder.
- [ ] Selection criteria and output columns match specification.
- [ ] Report supports both simulated (pre-payroll) and actual (post-payroll) data.
- [ ] Report can be filtered for Covert Org Unit 653 and Senior Executive Officers.
- [ ] Report is exportable to Excel.
- [ ] Exception handling is implemented as specified.
- [ ] Access controls and audit logging are in place.
- [ ] All required data fields are sourced and mapped correctly.
- [ ] Report output is validated by business users for accuracy and completeness.