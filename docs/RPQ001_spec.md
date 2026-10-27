# Functional Specification: RPQ001 — Off Duty Claims Report

---

## 1. Business Background

The NSW Police Force requires robust reporting on EPSS Off Duty claims to support scheme management, compliance, and operational oversight. The Off Duty Claims Report will provide a consolidated view of all EPSS Off Duty claims, including key claim details, status, and workflow dates, enabling effective monitoring and analysis.

---

## 2. Scope

This specification covers the design and implementation of the Off Duty Claims Report (RPQ001) within the OLIMS/EPSS reporting framework. The report will extract and present data on all EPSS Off Duty claims, with selection and output fields as defined below. It will support both online viewing and export to Excel.

---

## 3. Detailed Functional Requirements

- The report must extract data from OLIMS, EPSS, and Payroll systems, displaying one line per Off Duty claim.
- Selection criteria must include:
  - Employee Number
  - Duty Type (Off Duty)
  - Incident Number
  - Claim Status
- Output columns must include:
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
- The report must allow for additional fields to be added as required by future technical solutions.
- The report must support filtering for open reminders/tasks by date or date range.
- All data fields must be mapped to their source tables/fields in OLIMS/EPSS/Payroll.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a blank value and log a warning for review.
- If no records match the selection criteria, the report must display a "No records found" message.
- Any technical errors during report generation must be logged and a user-friendly error message displayed.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors).
- All report exports must be logged for audit purposes.
- Data presented must comply with privacy and confidentiality requirements.
- The report must support compliance and SLA reporting as required by HSWC and FABS.

---

## 6. References and Linked Requirements

- Cross-references: OLB001 (Off Duty Claim Management), RPP (Document Overview), RPH (Reminders/To Do List), RPA (Data Extraction), and related reporting requirements.
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Report displays all required fields for each Off Duty claim.
- [ ] Selection criteria function as specified.
- [ ] Report can be exported to Excel.
- [ ] Handles missing data and errors as specified.
- [ ] Access controls and audit logging are in place.
- [ ] Report output matches business requirements and is validated by stakeholders.
- [ ] Additional fields can be added without major redesign.
- [ ] Compliance and privacy requirements are met.