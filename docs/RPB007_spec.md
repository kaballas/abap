# Functional Specification: RPB007 — EPSS On Duty Claim Report – Claims Advisor and Claim Status Fields

---

## 1. Business Background

The EPSS On Duty Claim Report is a key operational report for the NSW Police Force’s Enhanced Police Support Scheme (EPSS). It provides detailed information on EPSS On Duty claims, supporting scheme management, compliance, and performance monitoring. Recent business feedback requires clarification and documentation of the source and logic for the "EPSS Claims Advisor" and "EPSS Claim Status" fields in this report, including whether to display the current or historical status as of a specific date.

---

## 2. Scope

This specification covers the requirements for the "EPSS Claims Advisor" and "EPSS Claim Status" fields in the EPSS On Duty Claim Report (RPB007). It defines the data sources, logic, and display rules for these fields, ensuring alignment with business needs and reporting standards.

---

## 3. Detailed Functional Requirements

- The report must include two columns: "EPSS Claims Advisor" and "EPSS Claim Status".
- **EPSS Claims Advisor**:
  - Source: OLIMS incident/claim record, field capturing the currently assigned claims officer.
  - Logic: Display the claims advisor assigned to the claim as of the report run date.
  - If historical status is required, provide the claims advisor as at the selected date (if selection criteria include a date).
- **EPSS Claim Status**:
  - Source: OLIMS claim status field.
  - Logic: Display the current claim status as of the report run date.
  - If historical status is required, display the status as at the selected date (if selection criteria include a date).
- Both fields must be mapped to the exact OLIMS fields/tables as confirmed by business and technical teams.
- The report must allow selection criteria to filter by claim status and/or claims advisor if required.

---

## 4. Exception Handling

- If the claims advisor or claim status is not available for a claim, display as blank or "Not Assigned".
- If historical data is requested for a date where no record exists, display as blank or "No Data".
- Any data extraction errors must be logged and reported to the system administrator.

---

## 5. Compliance/Controls

- Access to the report and its fields must be restricted to authorised users.
- All report outputs must comply with data privacy and confidentiality requirements.
- Changes to the logic or data sources for these fields must be documented and approved by scheme governance.

---

## 6. References and Linked Requirements

- Cross-references: RPB002–RPB006 (EPSS On Duty Claim Report), OLIMS data model, SAP HR/Payroll integration.
- Related business requirements: DOA010, DOA012, DOB001–DOB005, P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] "EPSS Claims Advisor" column displays the correct advisor as per OLIMS for each claim.
- [ ] "EPSS Claim Status" column displays the correct status as per OLIMS for each claim.
- [ ] Report logic for current vs historical status is implemented as specified.
- [ ] Exception handling is in place for missing or unavailable data.
- [ ] Data sources and field mappings are documented and traceable.
- [ ] Access controls and compliance requirements are met.
- [ ] Report passes user acceptance testing with sample data and edge cases.