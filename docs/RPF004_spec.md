# Functional Specification: RPF004 — Period 1 Utilisation Summary Report

---

## 1. Business Background

The Period 1 Utilisation Summary Report is required to provide EPSS case officers and management with a consolidated view of Period 1 (P1) week utilisation for officers receiving EPSS supplementary support payments. This report supports scheme monitoring, compliance, and operational decision-making by summarising week counts, incapacity status, and payment details for each incident and employee.

---

## 2. Scope

This specification covers the design, data sources, selection criteria, output fields, and business rules for the Period 1 Utilisation Summary Report (RPF004). The report will be accessible via the OLIMS report menu and will extract data from OLIMS, EPSS, and payroll systems. It is intended for use by EPSS case officers and management for operational and compliance reporting.

---

## 3. Detailed Functional Requirements

- The report must be executed by EPSS case officers via the OLIMS report menu.
- Selection criteria must include: Employee Number, Incident Number, Date From, Date To.
- The report must display one line per week per incident, including:
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
- The report must support week-level splits for multiple incidents in a week and retroactive adjustments.
- Only EPSS payments are to be included (exclude external earnings).
- All EPSS payment splits (wbpb) for wagetypes 49E9 and 49S9 must be retained retroactively.
- The uploaded “Attachment-EPSS Period 1 Summary” file must be linked to the report and follow file naming/location standards.
- Payslip display logic should show a single line for multiple wagetypes in a pay period if possible.

---

## 4. Exception Handling

- If required data fields are missing in OLIMS/EPSS/Payroll, the report must flag the missing data and continue processing other records.
- If multiple incidents exist in a week, the report must output separate lines for each incident.
- If retroactive adjustments affect week counts, the report must recalculate and display the latest values.
- If the uploaded summary file is missing or incorrectly named, the report must display a warning.

---

## 5. Compliance/Controls

- All report data must be sourced from authoritative OLIMS, EPSS, and payroll tables.
- Access to the report is restricted to authorised EPSS case officers and management.
- The report must support audit and reconciliation activities, including week-level splits and payment verification.
- All data extracts must comply with NSWPF data security and privacy policies.

---

## 6. References and Linked Requirements

- Cross-references: RPF001–RPF005, P1001–P1006, OLG001–OLG002, DOA010, DOA012, DOB001–DOB005, P905 retro logic.
- See “Attachment-EPSS Period 1 Summary” template and [reports/RPR-pay-run-qa-not-approved-flags.md](../reports/RPR-pay-run-qa-not-approved-flags.md).

---

## 7. Acceptance Criteria

- [ ] Report is accessible via OLIMS report menu.
- [ ] Selection criteria include Employee Number, Incident Number, Date From, Date To.
- [ ] Report displays all required columns as per section 3.
- [ ] Week-level splits and retroactive adjustments are handled correctly.
- [ ] Only EPSS payments are included; external earnings are excluded.
- [ ] Uploaded summary file is linked and follows naming/location standards.
- [ ] Payslip logic displays a single line for multiple wagetypes if possible.
- [ ] Exception handling is implemented for missing data and multiple incidents.
- [ ] Report is exportable to Excel.
- [ ] Access controls and audit requirements are met.