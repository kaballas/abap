# Functional Specification: RPF003 — Period 1 Utilisation Summary Report

---

## 1. Business Background

The Period 1 Utilisation Summary Report is required to provide a clear, auditable summary of EPSS Period 1 week utilisation for each officer, supporting scheme performance, compliance, and payment accuracy. It enables case officers and management to track weeks counted, payment status, and capacity for each incident, ensuring correct benefit period transitions and supporting operational and scheme reporting.

---

## 2. Scope

This specification covers the design, data sources, selection criteria, output fields, and business rules for the Period 1 Utilisation Summary Report (RPF003). The report is to be executed by EPSS case officers via the OLIMS report menu, sourcing data from OLIMS, EPSS, and payroll systems. It includes all required logic for week-level splits, multiple incidents, retroactive adjustments, and mapping of capacity to SAP wagetypes.

---

## 3. Detailed Functional Requirements

- The report must be accessible in OLIMS via the standard report menu.
- Selection criteria:
  - Employee Number
  - Incident Number
  - Date From
  - Date To
- The report must display the latest available payment view for the selected period.
- Output columns:
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
- Week-level splits must be supported, including multiple incidents in a week and retroactive adjustments.
- OLIMS capacity fields must be mapped to SAP EPSS payment wagetypes (e.g., 49E9).
- Only EPSS payments are included; external earnings are excluded.
- Payslip logic: if multiple wagetypes are present in a pay period, only one line should be shown if possible.
- All EPSS payment splits (wbpb) for wagetypes 49E9 and 49S9 must be retained retroactively.
- Week counting must support multiple incidents in the same week and operate at the incident level.

---

## 4. Exception Handling

- If required data fields are missing in OLIMS/EPSS/Payroll, the report must flag the missing data and continue processing available records.
- If retroactive adjustments result in negative fortnight checks, these must be handled at the incident level and flagged for review.
- If week-level splits cannot be determined due to data gaps, the report must indicate "Data Incomplete" for the affected weeks.

---

## 5. Compliance/Controls

- All report data must be sourced from auditable OLIMS, EPSS, and payroll tables.
- Access to the report is restricted to authorised EPSS case officers and supervisors.
- The report supports compliance monitoring, reconciliation, and scheme performance reporting.
- All report outputs must be exportable to Excel for audit and reconciliation purposes.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic, P1001–P1006 (week counting), RPF001–RPF005 (report requirements), Attachment-EPSS Period 1 Summary (template).
- See also: [Attachment-EPSS Period 1 Summary](#) for report template.

---

## 7. Acceptance Criteria

- [ ] Report is accessible in OLIMS by authorised users.
- [ ] Selection criteria function as specified.
- [ ] All required columns are present and populated from correct data sources.
- [ ] Week-level splits and multiple incidents per week are supported.
- [ ] Retroactive adjustments are accurately reflected.
- [ ] Payslip logic displays only one line per pay period where possible.
- [ ] Report output is exportable to Excel.
- [ ] Exception handling is implemented for missing/incomplete data.
- [ ] All compliance and audit requirements are met.