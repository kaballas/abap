# Functional Specification: RPB002 — EPSS On Duty Claim Report

---

## 1. Business Background

The EPSS On Duty Claim Report is a core operational report required for the administration and oversight of the Enhanced Police Support Scheme (EPSS). It provides claims officers, supervisors, and business stakeholders with a consolidated view of all EPSS On Duty claims, including key claim details, benefit periods, payment status, and claim management information. The report supports scheme monitoring, compliance, and performance analysis.

---

## 2. Scope

This specification covers the requirements for the EPSS On Duty Claim Report, including selection criteria, report columns, data sources, business rules, and output/export functionality. It applies to all EPSS On Duty, Transitioned to EPSS, and PBRI claims managed in OLIMS and SAP. The report is to be delivered as part of the Phase 5 EPSS reporting suite.

---

## 3. Detailed Functional Requirements

- **RPB002.1**: The report selection screen must allow users to select between EPSS claim, Transitioned to EPSS, PBRI claims, or All. Default selection to be confirmed by business.
- **RPB002.2**: Users must be able to filter by "WC Primary", "Non-Primary", or "BOTH" claims. A 'BOTH' option must be available.
- **RPB002.3**: The Organisation section (NSW State, Command, Region/Branch, PAC/PD/Section, Organisation Unit) must be removed from both the selection screen and report output.
- **RPB002.4**: The report must include all additional columns listed in RPB005, including:
  - Period 1/2 dates
  - Weeks utilised/remaining
  - Base + loading calculations
  - EPSS Cap breach flag
- **RPB002.5**: Field definitions and data sources for new columns (e.g., Hourly Rate, LO screenshot period, Date Modified, Description) must be explicitly mapped and documented.
- **RPB002.6**: The "EPSS Claims Advisor" and "EPSS Claim Status" fields must be included, with logic to display either current or historical status as specified by business.
- **RPB002.7**: The report must be exportable to Excel for offline analysis.
- **RPB002.8**: All data fields must be sourced from OLIMS, SAP HR, and Payroll, with technical mapping confirmed.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a warning and exclude those records from the output.
- If no claims match the selected criteria, the report must display a "No records found" message.
- Any errors during report generation or export must be logged and a user-friendly error message displayed.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised EPSS Claims Officers, Supervisors, and approved business users.
- All report exports must be logged for audit purposes.
- Data displayed must comply with privacy and confidentiality requirements for employee and claim information.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001–DOB005, P905 retro logic
- Related reports: RPE (Detailed EPSS Payment Report), RPF (Period 1 Utilisation Summary)
- Source: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Selection screen includes claim type (EPSS, Transitioned to EPSS, PBRI, All) and WC Primary/Non-Primary/BOTH options.
- [ ] Organisation section is removed from selection and output.
- [ ] All required columns (including new fields) are present and correctly mapped.
- [ ] Report displays correct data for all selected claims.
- [ ] Export to Excel is available and functional.
- [ ] Access and export actions are logged.
- [ ] Error and exception handling is implemented as specified.
- [ ] Compliance and privacy controls are in place.