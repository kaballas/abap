# Functional Specification: RPI003 — EPSS Pay Simulation Report

---

## 1. Business Background

The EPSS Pay Simulation Report is required to support claims officers in forecasting and validating EPSS payments for police officers under the Enhanced Police Support Scheme (EPSS). The report enables simulation of pay outcomes for a selected payroll period, employee, or group, supporting both operational and compliance needs. It is critical for ensuring payment accuracy, transparency, and supporting business processes such as claim assessment, review, and audit.

---

## 2. Scope

This specification covers the design, development, and deployment of the EPSS Pay Simulation Report (RPI003) within the OLIMS/SAP environment. The report will be accessible to EPSS claims officers and supervisors, supporting both simulated (pre-payroll) and actual (post-payroll) pay data. It includes selection criteria, output columns, export functionality, and access controls.

---

## 3. Detailed Functional Requirements

- **Selection Criteria:**
  - Payroll Area
  - Payroll Period
  - Employee Number
  - Active and inactive employees
  - Org unit selection for restricted groups (e.g., Covert Org Unit 653, Senior Executive Officers)

- **Report Output Columns:**
  - Employee Number
  - Employee Name
  - Incident No.
  - WC Claim No.
  - WC Claim Status
  - For Period End Date
  - Pay Period End Date
  - Week 1: RTW earnings (9WCM)
  - Week 1: WC earnings (4901)
  - Week 1: External Earnings (3670)
  - Week 1: Period 1 – ORP
  - Week 1: Period 1 (49E9)
  - Week 1: Period 1 – adjs (6A48)
  - Week 1: Period 2 – 75% of salary
  - Week 1: Period 2 (49S9)
  - Week 1: Period 2 – adjs (6A49)
  - Week 2: RTW earnings (9WCM)
  - Week 2: WC earnings (4901)
  - Week 2: External Earnings (3670)
  - Week 2: Period 1 – ORP
  - Week 2: Period 1 (49E9)
  - Week 2: Period 1 – adjs (6A48)
  - Week 2: Period 2 – 75% of salary
  - Week 2: Period 2 (49S9)
  - Week 2: Period 2 – adjs (6A49)
  - RTW Earnings (Total)
  - WC Earnings (Total)
  - External Earnings (Total)
  - Period 1 (Total)
  - Period 2 (Total)
  - PBRI top up (Total)

- **Execution:**
  - Report can be run for a single employee, multiple employees, or all employees in a payroll area.
  - Supports both simulated (pre-payroll) and actual (post-payroll) data.
  - Accessible via OLIMS EPSS Reporting folder.
  - Exportable to Excel.

- **Special Logic:**
  - Must support restricted group selection (Covert Org Unit 653, Senior Executive Officers).
  - Handles both active and inactive employees.
  - Must clarify and document the timing of report execution (pre- or post-payroll) and data accuracy limitations if run pre-payroll.

---

## 4. Exception Handling

- If required data is unavailable (e.g., missing roster uploads pre-payroll), the report must display a warning regarding potential inaccuracy.
- If selection criteria return no results, display a user-friendly message.
- If user lacks access to restricted groups, display an access denied message.
- Errors during export must be logged and a notification displayed to the user.

---

## 5. Compliance/Controls

- Access to the report is restricted to authorised EPSS claims officers and supervisors.
- Exported data must comply with NSWPF data security and privacy policies.
- All report executions and exports are to be audit logged.
- Report must not expose data for unauthorised org units or employee groups.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- Related reports: RPE (Detailed EPSS Payment Report), RPF (Period 1 Utilisation Summary)
- Source: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Report is accessible in OLIMS EPSS Reporting folder.
- [ ] Selection criteria match specification.
- [ ] Output columns match specification and are correctly populated.
- [ ] Report supports both simulated and actual pay data.
- [ ] Restricted group selection is enforced.
- [ ] Export to Excel is available and functional.
- [ ] Exception handling is implemented as specified.
- [ ] All access and exports are audit logged.
- [ ] Data security and privacy controls are enforced.
- [ ] User documentation and training materials are provided.