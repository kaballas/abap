# Functional Specification: OLA013 — Document Overview Screen Enhancements

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust document management and compliance tracking within OLIMS. Claims officers need to record and report on all inbound and outbound documents related to EPSS claims. To support compliance, audit, and operational efficiency, enhancements are required to the Document Overview screen to capture additional metadata for each document.

---

## 2. Scope

This specification covers the addition of two new data entry fields—**Date Received** and **Comments**—to the Document Overview screen in OLIMS for EPSS claims. The enhancements apply to all document types managed in the EPSS Case Management module and must support both inbound and outbound documents.

---

## 3. Detailed Functional Requirements

- The Document Overview screen must include two new fields for claims officer data entry:
    - **Date Received**: A date field to record when the document was received by the EPSS claims officer.
    - **Comments**: A free-text field for additional notes (field length to be confirmed; recommend 255 characters).
- These fields must be available during document upload/import and visible in the Document Overview listing.
- Both fields must be editable by claims officers and supervisors with appropriate access.
- The fields must be included in document reporting and export functionality.
- Field placement: Confirm with business whether these fields should appear in the import document sub-screen or main overview grid.

---

## 4. Exception Handling

- If **Date Received** is not entered, prompt the user before saving (mandatory/optional status to be confirmed by business).
- If **Comments** exceeds the maximum allowed length, display an error and prevent saving.
- If user lacks permission to edit, fields must be read-only.

---

## 5. Compliance/Controls

- All entries and edits to **Date Received** and **Comments** must be audit logged (user, timestamp, old/new value).
- Access to edit these fields must be restricted to authorised EPSS claims officers and supervisors.
- Fields must be included in compliance and SLA performance reporting for inbound/outbound documents.

---

## 6. References and Linked Requirements

- Cross-references: OLA005, OLA012, RPP001–RPP005 (Document Overview reporting), OLIMS Document Management requirements.
- Related open items: Confirm field location and comments field length with business.

---

## 7. Acceptance Criteria

- [ ] Document Overview screen displays **Date Received** and **Comments** fields for all EPSS documents.
- [ ] Fields are available during document upload/import and visible in the overview.
- [ ] Fields are editable by authorised users and audit logged.
- [ ] Fields are included in document export/reporting.
- [ ] Exception handling is implemented as specified.
- [ ] Field placement and length confirmed with business and documented.