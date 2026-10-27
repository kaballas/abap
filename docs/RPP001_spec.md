# Functional Specification: RPP001 — Document Overview Reporting

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust reporting on all documents sent and uploaded in the OLIMS Document Overview screen to support compliance, audit, and operational reporting for the Enhanced Police Support Scheme (EPSS). This reporting is essential for monitoring document flows, ensuring regulatory compliance, and supporting scheme performance reviews.

---

## 2. Scope

This specification covers the design and delivery of the Document Overview report (RPP001) within OLIMS/SAP for EPSS. The report must extract, display, and export all relevant document records, including metadata and audit fields, for all EPSS-related claims and incidents. It includes selection criteria, output columns, export functionality, and data source mapping.

---

## 3. Detailed Functional Requirements

- The Document Overview report must display all documents sent or uploaded in OLIMS for EPSS claims/incidents.
- Selection criteria must include: Employee No., Incident No., Document Category, Document Sub Category, Date From, Date To.
- Output columns must include: Employee No., Incident No., Claim No., Duty Type, Direction, Document Category, Document Sub Category, Document Title, Receiver Type, Receiver Name, Receive Distribution Method, Email ID, Date Processed, Time Sent, Date Received, Comments, EPSS Claim Advisor, EPSS Supervisor, Modified By, Modified On, Modified At.
- Each document record must be displayed as a separate line item.
- The report must be exportable to Excel.
- Data must be sourced from OLIMS, EPSS, and Payroll as required; field mapping to be confirmed with Payroll functional team.
- The report must support compliance, audit, and operational reporting needs.

---

## 4. Exception Handling

- If required data fields are missing or unavailable, the report must display a warning and exclude incomplete records.
- If no records match the selection criteria, the report must display a "No records found" message.
- Export errors (e.g., file system issues) must be logged and a user-friendly error message shown.

---

## 5. Compliance/Controls

- All document records must be included for audit and compliance purposes.
- Access to the report must be restricted to authorised EPSS Claims Officers, Supervisors, and compliance staff.
- Exported reports must be handled in accordance with NSWPF data security and privacy policies.
- Audit fields (Modified By, Modified On, Modified At) must be included for traceability.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- Related reports: RPE (Detailed EPSS Payment), RPF (Period 1 Utilisation), RPN (External Income/Payments)
- OLIMS Document Management requirements (OLA001–OLA014)

---

## 7. Acceptance Criteria

- [ ] Report displays all required columns for each document record.
- [ ] Selection criteria function as specified.
- [ ] Report can be exported to Excel.
- [ ] Data is sourced and mapped correctly from OLIMS/EPSS/Payroll.
- [ ] Audit fields are present for all records.
- [ ] Access controls are enforced.
- [ ] Exception handling is implemented as described.
- [ ] Report meets compliance and operational reporting needs.