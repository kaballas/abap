# Functional Specification: RPF002 — Period 1 Utilisation Summary Report

---

## 1. Business Background

The Period 1 Utilisation Summary Report is required to provide EPSS case officers and management with a clear, auditable summary of Period 1 (P1) week utilisation for each officer’s primary WC incident. This supports scheme monitoring, compliance, and operational decision-making, ensuring accurate week counting, payment status, and capacity tracking for all EPSS participants.

---

## 2. Scope

This specification covers the design, data sources, selection criteria, output fields, and reporting logic for the Period 1 Utilisation Summary Report (RPF002). The report is to be executed by EPSS case officers via the OLIMS report menu, sourcing data from OLIMS, EPSS, and payroll systems.

---

## 3. Detailed Functional Requirements

- **Selection Criteria:**
  - Employee Number
  - Incident Number
  - Date From
  - Date To
  - Clarification: Specify if the report displays the latest available payment view or the period view as at the time of payment. Confirm if mass reporting across all employees/incidents is required or restricted to single employee/incident selection (pending HSW input).

- **Report Columns:**
  - Employee Number
  - Incident Number
  - Claim Number
  - Date From
  - End To
  - Week Count
  - Capacity (Total Incapacity, Partial Incapacity, No Incapacity)
  - Counted/Not Counted
  - EPSS Supplementary Support Payment made (Yes/No)
  - EPSS Payment Received

- **Logic:**
  - Report must support week-level splits, including multiple incidents in a week and retroactive adjustments.
  - OLIMS capacity fields must be mapped to SAP EPSS payment wagetypes (e.g., 49E9) and reason codes.
  - Only EPSS payments are included (exclude external earnings).
  - Payslip display logic: if multiple wagetypes in a pay period, show a single line if possible.
  - All EPSS payment splits (wbpb) for wagetypes 49E9 and 49S9 must be retained retroactively for accurate reporting.
  - Allow week counting for multiple incidents in the same week; negative checks operate at the incident level.

- **Attachment Template:**
  - The “Attachment-EPSS Period 1 Summary” must be uploaded into OLIMS using the specified upload screen, following file naming/location standards, and linked to the report.

---

## 4. Exception Handling

- If required data fields are missing in OLIMS/EPSS/Payroll, the report must flag the missing data and continue processing other records.
- If multiple incidents occur in a week, the report must handle and display each incident separately.
- If retroactive adjustments affect week counts or payments, the report must reflect the latest recalculated values.

---

## 5. Compliance/Controls

- All report data must be auditable and traceable to source transactions in OLIMS, EPSS, and payroll.
- Access to the report must be restricted to authorised EPSS case officers and management.
- The report supports compliance monitoring for week counting, payment status, and scheme eligibility.

---

## 6. References and Linked Requirements

- Cross-references: RPF001, RPF003–RPF005, P1001–P1006, OLIMS/EPSS reporting requirements, P905 retro logic.
- See also: [Attachment-EPSS Period 1 Summary] and [reports/RPR-pay-run-qa-not-approved-flags.md].

---

## 7. Acceptance Criteria

- [ ] Report is accessible via OLIMS report menu.
- [ ] Selection criteria and output columns match specification.
- [ ] Data is sourced from OLIMS, EPSS, and payroll as defined.
- [ ] Week-level splits, multiple incidents, and retroactive adjustments are handled correctly.
- [ ] Payslip logic displays a single line for multiple wagetypes where possible.
- [ ] Attachment template is uploaded and linked as specified.
- [ ] Report is exportable to Excel.
- [ ] Exception handling and compliance controls are implemented.
- [ ] All required fields are present and mapped; missing data is flagged.
- [ ] User access is restricted to authorised personnel.