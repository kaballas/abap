# Functional Specification: RPF001 — Period 1 Utilisation Summary Report

---

## 1. Business Background

The Period 1 Utilisation Summary Report is required to provide EPSS case officers and management with a consolidated view of Period 1 (P1) week utilisation for each officer’s primary Workers Compensation (WC) incident. This report supports scheme monitoring, compliance, and operational decision-making by summarising week counts, incapacity status, and payment outcomes for P1.

---

## 2. Scope

This specification covers the design, data sources, selection criteria, output fields, and reporting logic for the Period 1 Utilisation Summary Report. The report will be accessible via the OLIMS report menu and will extract data from OLIMS, EPSS, and SAP Payroll systems.

---

## 3. Detailed Functional Requirements

- The report must be executable by EPSS case officers from the OLIMS report menu.
- Standard selection criteria must include: Employee Number, Incident Number, Date From, Date To.
- The report must display the latest available payment view for the selected period, supporting both single and mass reporting across employees/incidents.
- Output columns must include:
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
- The report must support week-level splits, including multiple incidents in a week and retroactive adjustments.
- Mapping of OLIMS capacity fields to SAP EPSS payment wagetypes (e.g., 49E9) and reason codes must be documented.
- Only EPSS payments are to be included; external earnings are excluded.
- Payslip logic should ensure only one line is shown for multiple wagetypes in a pay period, if possible.
- All EPSS payment splits (wbpb) for wagetypes 49E9 and 49S9 must be retained retroactively for accurate reporting.
- The report must allow week counting for multiple incidents in the same week and revise negative checks to operate at the incident level.

---

## 4. Exception Handling

- If required data fields are missing from OLIMS/EPSS/Payroll, the report must flag these as data gaps and notify the user.
- If multiple incidents overlap in a week, each must be reported separately, and any negative week counts must be flagged for review.
- If retroactive adjustments result in changes to week counts or payments, the report must reflect the latest recalculated values.

---

## 5. Compliance/Controls

- All report data must be sourced from authoritative OLIMS, EPSS, and SAP Payroll tables.
- Access to the report is restricted to authorised EPSS case officers and management.
- The report output must be exportable to Excel for compliance, audit, and reconciliation purposes.
- All payment splits and week counts must be retained for audit and scheme reporting.

---

## 6. References and Linked Requirements

- Cross-references: P1001–P1006 (week counting logic), RPE001–RPE004 (Detailed EPSS Payment Report), RPF002–RPF005 (this report), OLIMS/EPSS/SAP Payroll data mapping.
- See also: [Attachment-EPSS Period 1 Summary] and [reports/RPR-pay-run-qa-not-approved-flags.md].

---

## 7. Acceptance Criteria

- [ ] Report is accessible via OLIMS report menu.
- [ ] Selection criteria include Employee Number, Incident Number, Date From, Date To.
- [ ] Output columns match specification and are populated from correct data sources.
- [ ] Week-level splits and multiple incidents per week are accurately reported.
- [ ] Payslip logic displays a single line per pay period where possible.
- [ ] Report is exportable to Excel.
- [ ] All payment splits and week counts are retained and auditable.
- [ ] Data gaps or exceptions are flagged to the user.
- [ ] Report logic aligns with week counting and payment rules as per P1001–P1006.