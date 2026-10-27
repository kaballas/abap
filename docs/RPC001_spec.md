# Functional Specification: RPC001 — EPSS Down Grade Report

---

## 1. Business Background

The EPSS Down Grade Report is required to identify police officers who have experienced a downgrade in work capacity, as evidenced by workers compensation certificates entered in SAP/OLIMS. This report enables EPSS claims officers to proactively investigate eligibility for EPSS payments or determine if a PBRI incident should transition to EPSS. The report supports scheme compliance, timely benefit administration, and accurate scheme reporting.

---

## 2. Scope

This specification covers the design, logic, and implementation of the EPSS Down Grade Report (RPC001) within the SAP/OLIMS environment. The report will:
- Detect and list incidents where a downgrade in certificate status has occurred (e.g., from full to partial/no capacity, or partial to no capacity).
- Support selection and filtering by date, claim type, and claim status.
- Output all required fields for claims officer review and downstream reporting.
- Cover incidents before and after 01 October 2024.

---

## 3. Detailed Functional Requirements

- The report must identify and display all incidents where a certificate downgrade has occurred, defined as:
  - Change from full to partial or no capacity.
  - Change from partial to no capacity.
- The report must compare the current certificate status to the previous certificate status for each incident.
- Selection criteria must include:
  - Report date.
  - WC Leave Date Range (Start and To).
  - WC Primary claim (Primary, Non-Primary, Both).
  - EPSS/PBRI Claim (PBRI Claim, EPSS Claim, Transitioned to EPSS claim, All).
- The report must output the following columns:
  - Emp No.
  - First Name
  - Last Name
  - WC Primary Claim (flag)
  - PBRI claim (flag)
  - EPSS claim (flag)
  - Transitioned to EPSS (flag)
  - Incident No.
  - WC Claim No.
  - Incident Date
  - Date of Disablement
  - WC Status
  - WC Claim Status
  - WC Duty Desc.
  - IP/EPSS Status
  - Super Code (SAP source: IT0220/FONDS)
  - Current Cert Status
  - Current – Hours/Day
  - Current – Days/Week
  - Current – WC section
  - Previous Cert Status
  - Previous – Hours/Day
  - Previous – Days/Week
  - Previous – WC section
  - EPSS/IP Advisor
- The logic for selecting "Previous" certificate fields must be clearly defined (e.g., most recent prior certificate by date).
- The report must be able to run for incidents before and after 01 October 2024.
- SAP/OLIMS field mappings for selection criteria and output columns must be documented.

---

## 4. Exception Handling

- If no downgrade is detected between certificates, the incident is excluded from the report.
- If multiple certificates exist for the same date, the most recent by upload timestamp is used.
- If required data fields are missing or incomplete, the report must flag the record and continue processing.
- If SAP/OLIMS data sources are unavailable, the report must display an error message and abort gracefully.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised EPSS claims officers and supervisors.
- All report executions must be logged for audit purposes.
- The report must support export to Excel for compliance and reconciliation.
- Data must be sourced only from approved SAP/OLIMS tables and fields.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic.
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Report identifies all incidents with a certificate downgrade as per business rule.
- [ ] Selection criteria match specification and are mapped to correct SAP/OLIMS fields.
- [ ] All required columns are present and populated as per field mapping.
- [ ] Report can be run for any date range and claim type.
- [ ] Report excludes incidents with no downgrade.
- [ ] Exception handling is implemented for missing data and system errors.
- [ ] Report is exportable to Excel.
- [ ] Access and audit controls are in place.
- [ ] All logic and field mappings are documented and reviewed by business and technical teams.