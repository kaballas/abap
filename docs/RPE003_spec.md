# Functional Specification: RPE003 — Detailed EPSS Payment Report

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires detailed, auditable reporting of all EPSS payments made to officers, including the breakdown of weekly calculations, mid-week splits, and week utilisation for each primary Workers Compensation (WC) incident. This supports scheme transparency, compliance, and operational analysis.

---

## 2. Scope

This specification covers the design and delivery of the "Detailed EPSS Payment Report" (RPE003) for EPSS On Duty claims. The report must extract, calculate, and display all relevant payment and week-counting data for selected employees/incidents, supporting both operational and compliance needs.

---

## 3. Detailed Functional Requirements

- The report must provide a weekly breakdown of EPSS payments and week utilisation for each officer’s primary WC incident.
- Selection criteria must include Employee Number, Incident Number, Date From, and Date To.
- The report must support selection by single/multiple employees or incidents, or open-ended queries.
- Columns to include:
    - Employee Number
    - Incident Number
    - Claim Number
    - Start Date
    - End Date
    - Payment Date
    - Capacity Status (Partial Incapacity, Total Incapacity, Operational Duties)
    - Workers Compensation (4901)
    - Internal Earnings (e.g., 9WCM)
    - External Earnings (6017)
    - WC Factor
    - EPSS Factor
    - P1 – ORP
    - P1 – Payments (49E9 and 6A48)
    - P1 – Week Counted
    - P2 – Salary (75% of loaded salary)
    - P2 – Payments (49S9 and 6A49)
    - P3 – Salary (75% of loaded salary)
    - P3 – Payments (TBA)
- Must display a line for each week, including mid-week splits and zero-payment weeks if counted (e.g., S36/S37).
- All data fields must be sourced from OLIMS, EPSS, and Payroll systems.
- Must support export to Excel.

---

## 4. Exception Handling

- If required data is missing for a selected period, the report must display a warning and output available data with missing fields flagged.
- If no payments or week counts exist for the selection, the report must return a "No data found" message.
- For mid-week splits or retroactive adjustments, the report must show the latest recalculated values.

---

## 5. Compliance/Controls

- All report data must be auditable and traceable to source transactions in SAP/OLIMS.
- Access to the report must be restricted to authorised EPSS Claims Officers and Supervisors.
- Exported reports must be stored in compliance with NSWPF data retention and privacy policies.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- Related reports: RPE001, RPE002, RPF001–RPF005
- Source: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Report displays all required columns for selected employees/incidents and date ranges.
- [ ] Weekly breakdown includes mid-week splits and zero-payment counted weeks.
- [ ] Selection criteria function as specified.
- [ ] Data is sourced and mapped correctly from OLIMS, EPSS, and Payroll.
- [ ] Report is exportable to Excel.
- [ ] Exception handling and access controls are implemented.
- [ ] All compliance and audit requirements are met.