# Functional Specification: RPE001 — Detailed EPSS Payment Report

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires robust, transparent, and auditable reporting of all EPSS payments made to officers. The Detailed EPSS Payment Report is designed to provide a comprehensive weekly breakdown of EPSS payments, including mid-week splits, week counting, and all relevant payment components for each officer’s primary Workers Compensation (WC) incident. This report supports compliance, audit, and operational needs by enabling detailed analysis of payment calculations, periods, and entitlements.

---

## 2. Scope

This specification covers the design and delivery of the Detailed EPSS Payment Report (RPE001) for use by claims officers, payroll, and business stakeholders. The report will extract and display weekly payment and calculation details for EPSS recipients, supporting selection by employee and incident, and will include all required data fields from OLIMS, SAP HR/Payroll, and EPSS modules.

---

## 3. Detailed Functional Requirements

- **Selection Criteria:**
  - Employee Number
  - Incident Number
  - Date From
  - Date To
  - The "Date From/To" criteria must include all pay periods with end dates within the range. The report should show the latest recalculated values for each pay period.

- **Report Columns:**
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

- **Calculation and Display Logic:**
  - The report must display a line for each week (or split week) in the selected period, including mid-week splits.
  - For Period 1, if an officer has total incapacity (s36/s37) and no EPSS payment, a line must still be output as a counted week.
  - All payment and week counting logic must align with the latest business rules, including proration for mid-week transitions and correct mapping of wagetypes.
  - The report must support selection for a single employee/incident or multiple employees/incidents.

- **Data Sources:**
  - Data must be sourced from OLIMS, SAP HR/Payroll, and EPSS modules.
  - All required fields must be available and mapped; any gaps must be documented and addressed.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must flag the affected records and provide a clear error message.
- If mid-week splits cannot be calculated due to missing data, the report must indicate "Split Calculation Error" in the relevant fields.
- Any discrepancies between OLIMS and SAP data must be highlighted for review.

---

## 5. Compliance/Controls

- All report outputs must be auditable and retained according to payroll and compliance policies.
- Access to the report must be restricted to authorised users (claims officers, payroll, business analysts).
- The report must support export to Excel for reconciliation and compliance review.
- All calculations must align with EPSS scheme rules and payroll controls.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- Related requirements: P1001–P1006 (week counting), RPF001–RPF005 (utilisation summary), OLIMS/EPSS payment logic

---

## 7. Acceptance Criteria

- [ ] Report can be executed by selection of employee, incident, and date range.
- [ ] All required columns are present and populated as per specification.
- [ ] Mid-week splits and week counting are accurately displayed.
- [ ] Period 1, 2, and 3 payments and calculations are shown for each relevant week.
- [ ] Lines are output for counted weeks even if no EPSS payment is made (e.g., s36/s37).
- [ ] Data is sourced from OLIMS, SAP HR/Payroll, and EPSS modules with no missing fields.
- [ ] Report can be exported to Excel.
- [ ] Exception handling is implemented for missing or inconsistent data.
- [ ] Access controls and audit requirements are met.
- [ ] All business rules for payment calculation and week counting are correctly implemented.