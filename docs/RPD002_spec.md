# Functional Specification: RPD002 — Date of Disablement Misalignment Report

---

## 1. Business Background

The Date of Disablement (DOD) is a critical data point in the administration of EPSS and PBRI claims. Accurate alignment between the DOD and the first Certificate of Capacity (WCCC) uploaded in OLIMS is essential for correct benefit period calculation, payment commencement, and compliance. Misalignments can result in incorrect benefit periods, payment errors, and reporting discrepancies.

---

## 2. Scope

This specification covers the requirements for the RPD002 report, which identifies cases where the DOD and the first WCCC in OLIMS are misaligned. The report is intended for use by claims officers, payroll, and compliance teams to support data quality, audit, and corrective action.

---

## 3. Detailed Functional Requirements

- **RPD002.1**: The report must output results when either of the following conditions are met:
    1. The first WCCC is PID and its status start date matches the DOD.
    2. The first WCCC is not PID and its status start date does NOT match the DOD.
- **RPD002.2**: The "status from date" is defined as the "from" field of the first certificate in OLIMS.
- **RPD002.3**: For overlapping certificates, the most recent certificate is valid from its effective date; prior certificates are valid only up to the day before the new certificate starts.
- **RPD002.4**: The report must include the following columns:
    - Employee Number
    - First Name
    - Last Name
    - WC Primary Claim (flag)
    - PBRI claim (flag)
    - EPSS claim (flag)
    - Transitioned to EPSS (flag)
    - Incident Number
    - WC Claim Number
    - Incident Date
    - Date of Disablement
    - First WC Certificate – Status
    - Status From Date
    - Inactive WCCC (flag)
- **RPD002.5**: The report must provide selection criteria for:
    - WC Primary Claim (Primary, Non-Primary, Both)
    - EPSS/PBRI claim (PBRI, EPSS, Transitioned to EPSS, All)
- **RPD002.6**: Data sources for all fields must be confirmed with Payroll/OLIMS teams; any unavailable fields must be flagged for development.

---

## 4. Exception Handling

- If required data fields are missing or inaccessible, the report must display a warning and exclude those records.
- For certificates with overlapping or ambiguous dates, the report must apply the rule in RPD002.3 and flag any records where logic cannot be applied.
- If no records meet the report criteria, the report must return a "No results found" message.

---

## 5. Compliance/Controls

- The report supports payroll controls and compliance by identifying potential errors in DOD and certificate alignment.
- Access to the report must be restricted to authorised users (claims, payroll, compliance).
- All report executions must be logged for audit purposes.
- The report output must be exportable to Excel for reconciliation and reporting.

---

## 6. References and Linked Requirements

- Cross-references: RPD001, DOD001–DOD003, OLIMS certificate upload logic, PBRI/EPSS claim management.
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] The report outputs records only when RPD002.1 conditions are met.
- [ ] All required columns are present and populated from confirmed data sources.
- [ ] Selection criteria function as specified.
- [ ] Exception handling is implemented for missing or ambiguous data.
- [ ] Report is accessible only to authorised users and exportable to Excel.
- [ ] All report executions are logged for audit.
- [ ] The report logic for overlapping certificates matches RPD002.3.
- [ ] Stakeholder review confirms the report meets business and compliance needs.