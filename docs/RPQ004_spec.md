# Functional Specification: RPQ004 — Off Duty Claims Report

---

## 1. Business Background

The NSW Police Force requires robust reporting on EPSS Off Duty claims to support scheme management, compliance, and operational oversight. The Off Duty Claims Report (RPQ004) provides a consolidated view of all EPSS Off Duty claims, including key claim milestones, responsible officers, and claim status, enabling effective monitoring and decision-making.

---

## 2. Scope

This specification covers the design and implementation of the Off Duty Claims Report (RPQ004) within the OLIMS/EPSS reporting framework. The report will extract and present data from OLIMS, EPSS, and Payroll systems, focusing on Off Duty claims and their associated workflow milestones.

---

## 3. Detailed Functional Requirements

- **RPQ001**: The report must produce a detailed list of EPSS Off Duty claims, including all required fields for analysis and compliance.
- **RPQ002**: Selection criteria must include Employee Number, Duty Type (Off Duty), Incident Number, and Claim Status.
- **RPQ003**: Report columns must include:
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
- **RPQ004**: Additional fields may be added based on the final technical solution for Off Duty claims.
- **RPQ005**: The report must provide the ability to generate a list of open reminders/tasks due for a day or date range.
- The report must be exportable to Excel for offline analysis.
- Data sources for each field must be confirmed and mapped from OLIMS, EPSS, or Payroll.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must flag these records and display a warning message.
- If no records match the selection criteria, the report must display a "No records found" message.
- Any errors during report generation (e.g., data extraction failures) must be logged and an error notification displayed to the user.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors, and relevant reporting staff).
- All report exports and accesses must be logged for audit purposes.
- The report must support compliance and SLA performance reporting by including all required claim milestones and responsible officers.

---

## 6. References and Linked Requirements

- Cross-references: OLB001–OLB003 (OLIMS Off Duty Claim Management), RPP001–RPP005 (Document Overview), RPH001–RPH007 (Reminders/To Do List Overview Report)
- Related reporting requirements: RPA001 (Data Extraction), RPE001 (Detailed EPSS Payment Report)

---

## 7. Acceptance Criteria

- [ ] The report displays all required fields for EPSS Off Duty claims as specified.
- [ ] Selection criteria function as described and filter results accurately.
- [ ] The report is exportable to Excel.
- [ ] Exception handling is implemented for missing data and errors.
- [ ] Access controls and audit logging are in place.
- [ ] All data sources are confirmed and mapped.
- [ ] The report supports compliance and operational reporting needs.