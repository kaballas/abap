# Functional Specification: RPI005 — EPSS Pay Simulation Report

---

## 1. Business Background

The EPSS Pay Simulation Report is required to provide claims officers and payroll teams with a detailed, period-based simulation of EPSS-related payments, earnings, and offsets for eligible officers. This report supports pre- and post-payroll analysis, quality assurance, and operational decision-making for the Enhanced Police Support Scheme (EPSS).

---

## 2. Scope

This specification covers the design, data requirements, selection criteria, output fields, and access controls for the EPSS Pay Simulation Report (RPI005). It includes requirements for data extraction, report generation, export functionality, and support for restricted employee groups (e.g., Covert Org Unit 653, Senior Executive Officers).

---

## 3. Detailed Functional Requirements

- The report must be available in the OLIMS EPSS Reporting folder and accessible to EPSS Claims Officers.
- Selection criteria must include: Payroll Area, Payroll Period, Employee Number, Active/Inactive status, and filters for Covert Org Unit 653 and Senior Executive Officers.
- The report must support both simulated (pre-payroll) and actual (post-payroll) data, with clear indication of the data source.
- Output columns must include, for each week in the selected period:
    - Employee Number, Employee Name, Incident No., WC Claim No., WC Claim Status, For Period End Date, Pay Period End Date
    - Week 1/2: RTW earnings (9WCM), WC earnings (4901), External Earnings (3670), Period 1 – ORP, Period 1 (49E9), Period 1 – adjs (6A48), Period 2 – 75% of salary, Period 2 (49S9), Period 2 – adjs (6A49)
    - Totals: RTW Earnings, WC Earnings, External Earnings, Period 1, Period 2, PBRI top up
- The report must be exportable to Excel.
- The report must allow selection and output for restricted groups (Covert Org Unit 653, Senior Executive Officers) using SAP/OLIMS fields.
- The report must support both online and background execution for performance.
- The report must clarify if run pre- or post-payroll, and display a flag indicating the data type.
- The report must include logic for handling transitional claims and new wagetypes.

---

## 4. Exception Handling

- If required data is unavailable (e.g., missing roster uploads for pre-payroll simulation), the report must display a warning.
- If selection criteria return no results, the report must display a "No data found" message.
- If the user lacks access to restricted groups, the report must not display those records.
- Any technical errors during report generation must be logged and a user-friendly error message shown.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised EPSS Claims Officers and payroll staff.
- Exported data must comply with NSWPF data security and privacy policies.
- All report executions and exports must be audit logged.
- The report must support reconciliation and quality assurance activities for payroll and claims processing.

---

## 6. References and Linked Requirements

- Cross-references: RPI001–RPI007, DOA010, DOA012, DOB001–DOB005, P905 retro logic
- See also: [EPSS Pay Simulation Report requirements in BRD](#_EPSS_Pay_Simulation)

---

## 7. Acceptance Criteria

- [ ] Report is available in the OLIMS EPSS Reporting folder.
- [ ] Selection criteria include Payroll Area, Payroll Period, Employee Number, Active/Inactive, restricted groups.
- [ ] Report displays all required columns for each week and totals.
- [ ] Report can be run pre- and post-payroll, with data type flag.
- [ ] Report is exportable to Excel.
- [ ] Access controls and audit logging are implemented.
- [ ] Exception handling is user-friendly and robust.
- [ ] Report logic supports transitional claims and new wagetypes.
- [ ] All data sources are mapped and validated with Payroll/OLIMS teams.