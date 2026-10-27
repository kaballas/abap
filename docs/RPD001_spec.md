# Functional Specification: RPD001 — Date of Disablement Misalignment Report

---

## 1. Business Background

The Date of Disablement (DOD) is a critical data point for determining eligibility and commencement of EPSS benefits. Misalignment between the DOD and the first Certificate of Capacity (WCCC) uploaded in OLIMS can result in incorrect benefit periods, payment errors, and compliance risks. This report is required to identify such misalignments for review and correction.

---

## 2. Scope

This specification covers the design and requirements for the "Date of Disablement Misalignment" report (RPD001–RPD004). The report will be available to EPSS claims officers and relevant stakeholders for operational review, data quality, and compliance purposes. It will extract and display cases where the DOD and the first WCCC status or date are not aligned, as per defined business rules.

---

## 3. Detailed Functional Requirements

- **RPD001:** The report identifies misalignments between the DOD and the first Certificate of Capacity uploaded in OLIMS. Main scenarios:
    1. First WCCC is a fit for Pre-Injury Duties (PID) and the second WCCC is the first total/partial incapacity.
    2. WCCC certificates not uploaded in correct date order, causing the first uploaded WCCC to be out of sequence.
    *Note: These are background scenarios, not system validations.*

- **RPD002:** The report outputs results when:
    1. First WCCC is PID and status start date matches DOD.
    2. First WCCC is not PID and status start date does NOT match DOD.
    - "Status from date" is the "from" field of the first certificate in OLIMS.
    - For overlapping certificates, the most recent certificate is valid from its effective date; prior certificates are valid up to the day before the new certificate.

- **RPD003:** Selection Criteria:
    - WC Primary Claim (Primary, Non-Primary, Both)
    - EPSS/PBRI claim (PBRI, EPSS, Transitioned to EPSS, All)
    - Data sources for each criterion must be confirmed and mapped.

- **RPD004:** Report Columns:
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
    - First WC Certificate – Status
    - Status From Date
    - Inactive WCCC (flag)
    - Data sources for each column must be confirmed.

---

## 4. Exception Handling

- If required data fields are missing or inaccessible, the report must flag these records for manual review.
- If multiple certificates exist for the same start date, the system will select the earliest uploaded certificate.
- Any technical errors during report generation must be logged and notified to the system administrator.

---

## 5. Compliance/Controls

- The report supports payroll controls and compliance by identifying potential errors in DOD and certificate alignment.
- Access to the report is restricted to authorised users (EPSS claims officers, payroll, compliance).
- All report runs and exports are logged for audit purposes.
- Data used in the report must comply with privacy and data protection policies.

---

## 6. References and Linked Requirements

- Cross-references: DOD001–DOD003 (OLIMS DOD amendment), RPE001–RPE004 (Detailed EPSS Payment Report), RPB002–RPB007 (EPSS On Duty Claim Report)
- Source: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Report is available to authorised users in OLIMS/EPSS reporting area.
- [ ] Selection criteria match RPD003 and are mapped to correct data sources.
- [ ] Report columns match RPD004 and display correct data for each record.
- [ ] Report correctly identifies all misalignment scenarios as per RPD001–RPD002.
- [ ] All exceptions and missing data are flagged for manual review.
- [ ] Report can be exported to Excel.
- [ ] All report runs are logged for audit.
- [ ] Data privacy and access controls are enforced.