# Functional Specification: RPQ002 — Off Duty Claims Report

---

## 1. Business Background

The NSW Police Force requires comprehensive reporting on EPSS Off Duty claims to support scheme management, compliance, and operational oversight. The Off Duty Claims Report will provide visibility of all off duty claims, their status, and key dates, enabling effective monitoring and decision-making.

---

## 2. Scope

This specification covers the design and implementation of the Off Duty Claims Report (RPQ002) within the OLIMS/EPSS reporting suite. The report will extract and present relevant data fields for all EPSS Off Duty claims, supporting selection, filtering, and export to Excel.

---

## 3. Detailed Functional Requirements

- **Selection Criteria:**
  - Employee Number
  - Duty Type (Off Duty)
  - Incident Number
  - Claim Status

- **Report Columns:**
  - Employee No
  - Duty Type (Off Duty)
  - Incident No
  - Date of Disablement
  - Waiting Period End Date
  - IP Benefit Start Date
  - IP Benefit End Date
  - TAL Claim No
  - Claim Status
  - Date Claim Package Sent
  - Date Claim Package Received
  - Date Claim Lodged
  - Date Claim Admitted
  - EPSS Claims Advisor
  - EPSS Supervisor

- **Additional Fields:**  
  The report must support the addition of new fields as required by future technical solutions for off duty claims.

- **Reminders/Tasks:**  
  Ability to generate a report of OPEN reminders/tasks due for a day or date range for off duty claims.

- **Data Sources:**  
  All fields must be sourced from OLIMS, EPSS, or Payroll systems. Field mapping must be confirmed during technical design.

- **Export:**  
  The report must be exportable to Excel.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must flag these records and continue processing.
- If no records match the selection criteria, the report will display a "No records found" message.
- Any errors during report generation (e.g., data extraction failures) must be logged and reported to the system administrator.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors).
- All report exports and access must be audit logged.
- Data presented must comply with privacy and confidentiality requirements.
- Report output must support compliance and SLA reporting as required by HSWC.

---

## 6. References and Linked Requirements

- Cross-references: OLB001, RPQ001–RPQ005, OLIMS Off Duty tab requirements, Document Overview reporting (RPP001–RPP005), HSWC scheme reporting (SR001–SR003).

---

## 7. Acceptance Criteria

- [ ] Report is accessible to authorised users in the OLIMS/EPSS reporting area.
- [ ] Selection criteria function as specified.
- [ ] All required columns are present and correctly populated.
- [ ] Report supports export to Excel.
- [ ] Additional fields can be added as required.
- [ ] Reminders/tasks for off duty claims are included as specified.
- [ ] Exception handling is implemented as described.
- [ ] Access and export actions are audit logged.
- [ ] Report output supports compliance and SLA reporting needs.
- [ ] All data sources are confirmed and mapped.