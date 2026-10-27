# Functional Specification: RPI004 — EPSS Pay Simulation Report

---

## 1. Business Background

The EPSS Pay Simulation Report is required to support the administration and quality assurance of the Enhanced Police Support Scheme (EPSS) payroll process. It enables claims officers and payroll teams to simulate and review EPSS payment calculations for restricted employee groups, including Covert Org Unit 653 and Senior Executive Officers, prior to payroll finalisation. This ensures accuracy, transparency, and compliance with scheme rules.

---

## 2. Scope

This specification covers the design, development, and deployment of the EPSS Pay Simulation Report (RPI004) within SAP and OLIMS. The report must generate simulated payroll results for restricted groups, allow selection by group, and provide detailed breakdowns of EPSS-related payments and offsets for each pay period. The solution must support both online and background execution, with export to Excel.

---

## 3. Detailed Functional Requirements

- The report must generate simulated payroll results for:
  - Covert Org Unit 653
  - Senior Executive Officers
- Selection criteria must include:
  - Payroll Area
  - Payroll Period
  - Employee Number
  - Active and inactive status
  - Org Unit (including filters for restricted groups)
- The report must be accessible in the OLIMS EPSS Reporting folder.
- Output columns must include (per pay period and week):
  - Employee Number, Name
  - Incident No., WC Claim No., WC Claim Status
  - For Period End Date, Pay Period End Date
  - RTW earnings (9WCM), WC earnings (4901), External Earnings (3670)
  - Period 1 – ORP, Period 1 (49E9), Period 1 – adjs (6A48)
  - Period 2 – 75% of salary, Period 2 (49S9), Period 2 – adjs (6A49)
  - PBRI top up (Total)
- Totals for each payment type must be included.
- The report must support running simulations before payroll is finalised, with a note that accuracy may be affected if roster data is not yet loaded.
- Export to Excel must be supported.
- Access to SAP spools for EPSS Claims Officers must be confirmed and training provided if required.

---

## 4. Exception Handling

- If no employees are found for the selected restricted group, display a clear message.
- If required data (e.g., roster uploads) is missing, display a warning about possible inaccuracies.
- If the user lacks access to SAP spools or report folders, display an access error and provide escalation instructions.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised EPSS Claims Officers and Payroll staff.
- All report executions must be logged for audit purposes.
- Data exported must comply with NSWPF privacy and security policies.
- The report must not allow editing of payroll data—read-only output only.

---

## 6. References and Linked Requirements

- Cross-references: RPI001–RPI007, DOA010, DOA012, DOB001–DOB005, P905 retro logic
- See also: [EPSS Pay Simulation Report requirements section](#_EPSS_Pay_Simulation)

---

## 7. Acceptance Criteria

- [ ] Report generates simulated payroll results for Covert Org Unit 653 and Senior Executive Officers.
- [ ] Selection criteria include Payroll Area, Payroll Period, Employee Number, Active/Inactive, Org Unit.
- [ ] Output columns match specification and include all required payment/offset fields.
- [ ] Report is accessible in OLIMS EPSS Reporting folder.
- [ ] Report can be exported to Excel.
- [ ] Access controls and audit logging are in place.
- [ ] Exception handling is implemented as specified.
- [ ] User documentation and training (if required) are delivered.