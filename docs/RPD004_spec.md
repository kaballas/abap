# Functional Specification: RPD004 — Date of Disablement Misalignment Report

---

## 1. Business Background

The NSW Police Force requires robust reporting to identify misalignments between the Date of Disablement (DOD) and the first Certificate of Capacity (WCCC) uploaded in OLIMS. Accurate alignment is critical for correct scheme eligibility, benefit period calculation, and compliance with regulatory and payroll requirements. Misalignments can result in incorrect benefit periods, payment errors, and audit issues.

---

## 2. Scope

This specification covers the design and implementation of the RPD004 report, which identifies cases where the DOD and the first WCCC status or date are not aligned as per business rules. The report will be accessible to payroll, claims, and compliance teams for review and remediation.

---

## 3. Detailed Functional Requirements

- **Selection Criteria:**
  - WC Primary Claim (Primary, Non-Primary, Both)
  - EPSS/PBRI claim (PBRI, EPSS, Transitioned to EPSS, All)
- **Report Output Columns:**
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
- **Logic:**
  - Output results when:
    1. First WCCC is PID and status start date matches DOD
    2. First WCCC is not PID and the status start date does NOT match the DOD
  - "Status from date" is the "from" field of the first certificate in OLIMS.
  - For overlapping certificates, the most recent certificate is valid from its effective date; prior certificates are valid only up to the day before the new certificate starts.
- **Data Sources:** All fields must be sourced from OLIMS, SAP HR, and Payroll tables as confirmed by Payroll/OLIMS teams.

---

## 4. Exception Handling

- If required data fields are missing or inaccessible, the report must flag the record and provide a warning message.
- If multiple certificates exist for the same date, the report must select the most recent by effective date.
- Any technical errors during report generation must be logged and notified to the system administrator.

---

## 5. Compliance/Controls

- Access to the report is restricted to authorised payroll, claims, and compliance staff.
- All report runs are logged for audit purposes.
- The report supports compliance with payroll controls, OLIMS access policies, and reporting/reconciliation requirements.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001–DOB005, P905 retro logic
- Related requirements: RPD001, RPD002, RPD003 (see above for detailed context)

---

## 7. Acceptance Criteria

- [ ] Report includes all specified selection criteria and output columns.
- [ ] Logic for identifying misalignments is implemented as described.
- [ ] Data sources are confirmed and mapped for all fields.
- [ ] Exception handling is in place for missing or conflicting data.
- [ ] Access controls and audit logging are implemented.
- [ ] Report is available to authorised users and exportable to Excel.
- [ ] All business and compliance requirements are met.