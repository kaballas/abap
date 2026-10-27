# Functional Specification: RPQ003 — Off Duty Claims Report

---

## 1. Business Background

The NSW Police Force requires robust reporting on EPSS Off Duty claims to support scheme management, compliance, and performance monitoring. The Off Duty Claims Report enables analysis of claim volumes, processing timelines, and key data points for officers with off duty incidents, supporting both operational and strategic decision-making.

---

## 2. Scope

This specification covers the design and delivery of the Off Duty Claims Report (RPQ003) within the OLIMS/SAP environment. The report will extract, display, and export all relevant data for EPSS Off Duty claims, including claim status, dates, and responsible officers. It includes selection criteria, output columns, and export functionality.

---

## 3. Detailed Functional Requirements

- The report must extract data for all EPSS Off Duty claims from OLIMS, SAP HR, and Payroll.
- Selection criteria must include: Employee Number, Duty Type (Off Duty), Incident Number, and Claim Status.
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
- The report must allow export to Excel.
- Additional fields may be added based on the final technical solution for off duty claims.
- The report must support selection and filtering by open reminders/tasks due for a day or date range.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a clear error message and log the issue for review.
- If no records match the selection criteria, the report must return a “No records found” message.
- Data extraction errors must be logged and notified to the system administrator.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised users (EPSS Claims Officers, Supervisors).
- All report exports must be logged for audit purposes.
- Data displayed must comply with privacy and confidentiality requirements.
- The report must support compliance and reconciliation activities as part of scheme reporting.

---

## 6. References and Linked Requirements

- Cross-references: OLB001 (EPSS Off Duty tab), RPP (Document Overview), RPH (Reminders/To Do List), RPA (Data Extraction), and related reporting requirements.
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] Report extracts all required fields for EPSS Off Duty claims.
- [ ] Selection criteria include Employee No, Duty Type (Off Duty), Incident No, Claim Status.
- [ ] Output columns match the specification and are correctly populated.
- [ ] Report can be exported to Excel.
- [ ] Exception handling is implemented for missing data and extraction errors.
- [ ] Access controls and audit logging are in place.
- [ ] Report supports compliance and reconciliation requirements.
- [ ] Additional fields are added if required by the final technical solution.