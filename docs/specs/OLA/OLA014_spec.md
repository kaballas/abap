# Functional Specification: OLA014 — EPSS Document Reporting for Compliance and SLA Performance

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust compliance and SLA performance reporting for all inbound and outbound EPSS (Enhanced Police Support Scheme) documents managed within OLIMS (Online Injury Management System). This ensures transparency, auditability, and adherence to scheme requirements for document handling, supporting both operational and regulatory needs.

---

## 2. Scope

This specification covers the reporting of all inbound and outbound EPSS documents in OLIMS, including uploads, correspondence, and generated letters/forms. It defines requirements for data capture, reporting outputs, and compliance/SLA monitoring for both internal and external stakeholders.

---

## 3. Detailed Functional Requirements

- All EPSS-related documents (inbound and outbound) must be reportable in OLIMS.
- The report must include, at minimum: document type (inbound/outbound), category, subcategory, employee number, incident number, claim number, document title, sender/receiver, date sent/received, and comments.
- The report must support selection/filtering by date range, employee, incident, document category/subcategory, and document direction.
- Both uploaded and system-generated documents must be included.
- The report must be exportable to Excel for compliance and SLA analysis.
- The reporting logic must align with existing OLIMS document overview data structures.
- The report must be accessible to EPSS Claims Officers and Supervisors with appropriate OLIMS access.

---

## 4. Exception Handling

- If a document record is missing mandatory fields (e.g., date, employee number), the report must flag the record as incomplete and highlight it for review.
- If document upload or correspondence fails, the system must log the failure and exclude the record from compliance counts, with an error note in the report.
- If access to a document is restricted due to privacy or security, the report must indicate "Restricted" in relevant fields.

---

## 5. Compliance/Controls

- All document actions (upload, send, receive, hide/unhide, delete) must be audit logged.
- Access to the report and underlying document data is restricted to authorised OLIMS users.
- The report supports payroll controls by ensuring all required documentation for EPSS payments is present and tracked.
- The report supports OLIMS access controls and is included in regular compliance and reconciliation activities.

---

## 6. References and Linked Requirements

- Cross-references: OLA013 (Document Overview fields), OLA009 (Reporting capability), OLA010 (Hide/unhide logic), RPP001–RPP005 (Document Overview Report), RPE001 (Detailed EPSS Payment Report), P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] All inbound and outbound EPSS documents are included in the report.
- [ ] Report includes all required fields and supports filtering by key criteria.
- [ ] Report is exportable to Excel.
- [ ] Exception records are flagged and described.
- [ ] Audit log is maintained for all document actions.
- [ ] Access controls are enforced for report and document data.
- [ ] Report output matches compliance and SLA requirements as confirmed by business stakeholders.