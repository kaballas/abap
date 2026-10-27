# Functional Specification: RPC003 — EPSS Down Grade Report Columns

---

## 1. Business Background

The EPSS Down Grade Report is required to identify police officers who have experienced a downgrade in work capacity, as evidenced by changes in their workers compensation certificates. This report enables EPSS claims officers to proactively investigate eligibility for EPSS payments or determine if a PBRI incident should transition to EPSS. Accurate reporting of downgrades ensures timely intervention and compliance with scheme rules.

---

## 2. Scope

This specification covers the design and delivery of the RPC003 report columns for the EPSS Down Grade Report. The report will be available to authorised users in the EPSS reporting suite and will extract data from SAP, OLIMS, and payroll systems. It applies to all incidents before and after 01 October 2024.

---

## 3. Detailed Functional Requirements

- The report must include the following columns:
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

- Logic for "Previous" certificate fields: select the most recent prior certificate for comparison.
- "WC/IP/EPSS Status" should reflect the status as at the report run date.
- "Super Code" must be sourced from SAP IT0220/FONDS.

---

## 4. Exception Handling

- If any required field is missing or unavailable, the report must display a blank value and log a warning.
- If multiple previous certificates exist for the same date, select the one with the latest effective date prior to the current certificate.
- If no previous certificate exists, previous fields should be blank.

---

## 5. Compliance/Controls

- Access to the report is restricted to authorised EPSS claims officers and supervisors.
- All report extracts must be auditable and retained according to NSWPF data retention policies.
- Data must be sourced only from approved SAP, OLIMS, and payroll tables.

---

## 6. References and Linked Requirements

- Cross-references: RPC001, RPC002, RPB005, RPB006, RPA001
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] All specified columns are present in the report output.
- [ ] "Previous" certificate logic is implemented as described.
- [ ] "Super Code" is sourced from SAP IT0220/FONDS.
- [ ] Report handles missing or ambiguous data as per exception handling.
- [ ] Access controls and audit requirements are met.
- [ ] Report is available in the EPSS reporting suite and exportable to Excel.