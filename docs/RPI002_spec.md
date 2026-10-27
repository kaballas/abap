# Functional Specification: RPI002 — EPSS Pay Simulation Report

---

## 1. Business Background

The EPSS Pay Simulation Report is required to provide claims officers with a detailed, period-based simulation of EPSS payroll results. This enables proactive review and validation of EPSS payments, offsets, and week counting before payroll is finalized, supporting scheme integrity and operational efficiency.

---

## 2. Scope

This specification covers the design, implementation, and delivery of the EPSS Pay Simulation Report within the OLIMS EPSS Reporting folder. It includes selection criteria, report columns, access controls, export functionality, and integration with SAP/OLIMS data sources.

---

## 3. Detailed Functional Requirements

- The report must be available in the OLIMS EPSS Reporting folder for claims officers.
- Selection criteria must include: Payroll Area, Payroll Period, Employee Number, Active/Inactive status, and filters for Covert Org Unit 653 and Senior Executive Officers.
- The report must support both simulated (pre-payroll) and actual (post-payroll) data, with clear indication of the data type.
- Report columns must include:
    - Employee Number, Name
    - Incident No., WC Claim No., WC Claim Status
    - For Period End Date, Pay Period End Date
    - For each week in the pay period: RTW earnings (9WCM), WC earnings (4901), External Earnings (3670), Period 1 ORP, Period 1 (49E9), Period 1 adjs (6A48), Period 2 75% salary, Period 2 (49S9), Period 2 adjs (6A49)
    - Totals for RTW, WC, External Earnings, Period 1, Period 2, PBRI top up
- The report must be exportable to Excel.
- The report must allow selection and filtering by restricted groups (Covert Org Unit 653, Senior Executive Officers).
- The report must support both online and background execution for large data sets.
- The report must clearly indicate if data is simulated or actual, and note any limitations if run pre-payroll (e.g., missing roster data).

---

## 4. Exception Handling

- If required data (e.g., roster uploads) is missing for simulation, the report must display a warning.
- If no employees match the selection criteria, the report must return a clear "No data found" message.
- If the user lacks access to restricted groups, the report must not display those records and must show an access denied message.

---

## 5. Compliance/Controls

- Access to the report is restricted to authorized EPSS Claims Officers and Supervisors.
- Exported data must comply with NSWPF data security and privacy policies.
- All report executions and exports must be audit logged for compliance review.

---

## 6. References and Linked Requirements

- Cross-references: RPI001–RPI007, DOA010, DOA012, DOB001–DOB005, P905 retro logic
- See [EPSS Reporting Requirements](#Operational_Reporting) and [Payroll Controls](#Compliance/Controls)

---

## 7. Acceptance Criteria

- [ ] Report is available in the OLIMS EPSS Reporting folder.
- [ ] Selection criteria and filters function as specified.
- [ ] Report columns match the detailed requirements.
- [ ] Report can be exported to Excel.
- [ ] Simulated and actual data are clearly indicated.
- [ ] Access controls and audit logging are in place.
- [ ] Exception handling is implemented for missing data and access issues.
- [ ] Report supports both online and background execution.