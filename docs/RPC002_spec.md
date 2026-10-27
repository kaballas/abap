# Functional Specification: RPC002 — EPSS Down Grade Report Selection Criteria

---

## 1. Business Background

The EPSS Down Grade Report is required to support the identification and management of police officers whose work capacity has been downgraded, as evidenced by changes in workers compensation certificates. This report assists EPSS claims officers in determining eligibility for EPSS payments or the need to transition a PBRI incident to EPSS. Accurate and flexible selection criteria are essential to ensure the report meets operational and compliance needs.

---

## 2. Scope

This specification covers the selection criteria for the EPSS Down Grade Report (RPC002). It defines the required input fields, their values, and the mapping to SAP/OLIMS data sources. The scope includes all claim types (PBRI, EPSS, Transitioned to EPSS) and WC Primary claim statuses, for incidents before and after 01 October 2024.

---

## 3. Detailed Functional Requirements

- The report selection screen must include the following criteria:
  - **Report Date**: Date the report is generated.
  - **WC Leave Date Range**: Start and End dates to filter WC leave records.
  - **WC Primary Claim**: Options: Primary, Non-Primary, Both.
  - **EPSS/PBRI Claim**: Options: PBRI Claim, EPSS Claim, Transitioned to EPSS claim, All.
- Each selection criterion must be mapped to the correct SAP/OLIMS field and value:
  - WC Primary Claim: Use the field/flag that identifies primary vs non-primary claims (e.g., OLIMS field `WC_PRIMARY_FLAG` with values 'X' for primary, blank/null for non-primary).
  - EPSS/PBRI Claim: Use the claim type indicator field (e.g., OLIMS field `CLAIM_TYPE` with values 'PBRI', 'EPSS', 'TRANSITIONED', or 'ALL').
- The selection screen must allow users to select any combination of the above criteria.
- Default values and field validation must be implemented as per business rules.

---

## 4. Exception Handling

- If no records match the selected criteria, the report must display a "No results found" message.
- Invalid or incomplete selection criteria (e.g., missing required dates) must prompt the user to correct the input before running the report.
- If SAP/OLIMS field mappings are missing or unavailable, the system must log an error and notify the technical support team.

---

## 5. Compliance/Controls

- Access to the report and its selection criteria must be restricted to authorised EPSS claims officers and supervisors.
- All report executions must be logged for audit purposes, including user, timestamp, and selection criteria used.
- Data extracted must comply with NSWPF privacy and data handling policies.

---

## 6. References and Linked Requirements

- Cross-references: RPC001 (EPSS Down Grade Report logic), RPC003 (Report Columns), RPB002–RPB007 (EPSS On Duty Claim Report), RPD001–RPD004 (Date of Disablement misalignment).
- See [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV).

---

## 7. Acceptance Criteria

- [ ] Selection screen includes all required criteria: Report Date, WC Leave Date Range, WC Primary Claim, EPSS/PBRI Claim.
- [ ] Each criterion is mapped to the correct SAP/OLIMS field and value.
- [ ] Users can select any combination of criteria.
- [ ] Validation and error messages are implemented for incomplete/invalid input.
- [ ] Report access and execution are logged for audit.
- [ ] All data handling complies with privacy and payroll controls.