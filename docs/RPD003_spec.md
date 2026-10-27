# Functional Specification: RPD003 — Date of Disablement Misalignment Report

---

## 1. Business Background

The Date of Disablement (DOD) is a critical field in the management of EPSS and PBRI claims. Accurate alignment between the DOD and the first WorkCover Certificate of Capacity (WCCC) uploaded in OLIMS is essential for correct scheme assignment, benefit period calculation, and compliance. Misalignments can result in incorrect payments, reporting errors, and audit issues. This report is required to identify and highlight cases where the DOD and the first WCCC do not align as expected, supporting data quality, compliance, and operational review.

---

## 2. Scope

This specification covers the requirements for the RPD003 report, which identifies misalignments between the DOD and the first WCCC in OLIMS. The report will be accessible to claims officers and relevant stakeholders for all EPSS and PBRI claims, including transitioned claims. It will include selection criteria, output columns, and logic as detailed below. The report does not perform system validation or correction; it is for identification and reporting only.

---

## 3. Detailed Functional Requirements

- **Selection Criteria:**
  - WC Primary Claim (Primary, Non-Primary, Both)
  - EPSS/PBRI claim (PBRI, EPSS, Transitioned to EPSS, All)
  - Data sources for each criterion must be confirmed and mapped from OLIMS/Payroll/SAP.

- **Report Logic:**
  - Output results when:
    1. First WCCC is PID and status start date matches DOD.
    2. First WCCC is not PID and status start date does NOT match DOD.
  - "Status from date" is the "from" field of the first certificate in OLIMS.
  - For overlapping certificates: the most recent certificate is valid from its effective date; prior certificates are valid only up to the day before the new certificate starts.

- **Report Columns:**
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
  - Data sources for each column must be confirmed and mapped.

- **Output:**
  - Each record meeting the logic above is displayed as a separate line item.
  - The report must be exportable to Excel.

---

## 4. Exception Handling

- If required data fields are missing or inaccessible, the report must flag these records with a warning message.
- If multiple certificates exist for the same incident, the logic for "first" and "most recent" must be consistently applied as per the requirements.
- If data mapping is incomplete, the report must log the issue for technical review.

---

## 5. Compliance/Controls

- The report supports payroll controls and compliance by identifying potential misalignments that could affect payment accuracy.
- OLIMS access controls apply; only authorized users can generate and view the report.
- The report supports audit and reconciliation activities by providing traceable evidence of DOD/WCCC alignment.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- Related requirements: RPD001, RPD002, RPD004 (see above for detailed context)
- Source: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Report includes all required selection criteria and columns as specified.
- [ ] Logic for identifying misalignments is implemented as described.
- [ ] Data sources for all fields are confirmed and mapped.
- [ ] Report is accessible to authorized users in OLIMS/Payroll/SAP.
- [ ] Report is exportable to Excel.
- [ ] Exception handling is implemented for missing/incomplete data.
- [ ] Report output is validated with sample data for accuracy.
- [ ] Compliance and audit requirements are met.