# Functional Specification: RPI001 — EPSS Pay Simulation Report

---

## 1. Business Background

The EPSS Pay Simulation Report is required to support claims officers in forecasting and validating EPSS payments for police officers under the Enhanced Police Support Scheme (EPSS). The report enables simulation of pay outcomes for various scenarios, including pre- and post-payroll runs, and supports operational decision-making, compliance, and quality assurance.

---

## 2. Scope

This specification covers the design, development, and deployment of the EPSS Pay Simulation Report within the OLIMS EPSS Reporting folder. It includes selection criteria, report columns, export functionality, and access controls for restricted employee groups (e.g., Covert Org Unit 653, Senior Executive Officers). The report must support both simulated and actual pay data, depending on the payroll cycle.

---

## 3. Detailed Functional Requirements

- The report must be available in the OLIMS EPSS Reporting folder for claims officers.
- Selection criteria:
    - Payroll Area
    - Payroll Period
    - Employee Number
    - Active and inactive employees
    - Org unit selection for restricted groups (Covert Org Unit 653, Senior Executive Officers)
- The report must generate payroll results for selected employees, including restricted groups.
- Columns to include:
    - Employee Number, Name
    - Incident No., WC Claim No., WC Claim Status
    - For Period End Date, Pay Period End Date
    - Week 1/2: RTW earnings (9WCM), WC earnings (4901), External Earnings (3670), Period 1 ORP, Period 1 (49E9), Period 1 adjs (6A48), Period 2 75% salary, Period 2 (49S9), Period 2 adjs (6A49)
    - RTW Earnings (Total), WC Earnings (Total), External Earnings (Total), Period 1 (Total), Period 2 (Total), PBRI top up (Total)
- The report must support running simulations before payroll is finalized (with simulated data) and after payroll (with actual pay results).
- The report must be exportable to Excel.
- Access to SAP spools and training for claims officers must be confirmed.

---

## 4. Exception Handling

- If roster data is unavailable pre-payroll, the report must display a warning that results may be incomplete/inaccurate.
- If selection criteria return no results, display a user-friendly message.
- If restricted group selection is attempted by unauthorized users, deny access and log the attempt.
- Handle missing or incomplete payroll data gracefully, flagging affected records.

---

## 5. Compliance/Controls

- Access to the report is restricted to authorized EPSS Claims Officers and Supervisors.
- Audit logs must record report execution, selection criteria, and export actions.
- Data must be handled in accordance with NSWPF privacy and security policies.
- Exported files must be stored in secure, approved locations.

---

## 6. References and Linked Requirements

- Cross-references: RPI002–RPI007, RPB002–RPB007, OLIMS reporting folder requirements, SAP payroll data extraction standards.
- Related reports: Detailed EPSS Payment Report (RPE), Period 1 Utilisation Summary (RPF).

---

## 7. Acceptance Criteria

- [ ] Report is available in the OLIMS EPSS Reporting folder.
- [ ] All selection criteria are present and function as specified.
- [ ] Report includes all required columns with correct data mapping.
- [ ] Report can be run pre- and post-payroll, with appropriate data sources.
- [ ] Restricted group selection is enforced and access-controlled.
- [ ] Export to Excel is available and tested.
- [ ] Exception handling and user messages are implemented.
- [ ] Audit logging and compliance controls are in place.
- [ ] User documentation and training are delivered.