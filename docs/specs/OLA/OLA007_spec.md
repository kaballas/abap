# Functional Specification: OLA007 — New Document Categories for EPSS On Duty and EPSS Off Duty

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust document management within OLIMS to support compliance, reporting, and efficient claims processing. As part of Phase 5 enhancements, new document categories are needed to clearly distinguish between EPSS On Duty and EPSS Off Duty documentation, supporting both operational and reporting requirements.

---

## 2. Scope

This specification covers the addition of two new document categories—"EPSS On Duty" and "EPSS Off Duty"—within the OLIMS document management module. The change applies to all OLIMS screens and workflows where document categories are selected, displayed, or reported.

---

## 3. Detailed Functional Requirements

- Add two new document categories in OLIMS:
  - "EPSS On Duty"
  - "EPSS Off Duty"
- These categories must be selectable when uploading or managing documents in OLIMS.
- The new categories must appear in all relevant OLIMS screens, including document upload, document overview, and reporting screens.
- Existing documents are not to be re-categorised automatically; only new uploads will use the new categories.
- The categories must be available for selection in all document-related reports and filters.

---

## 4. Exception Handling

- If a user attempts to upload a document without selecting a category, the system must display an error and prevent upload.
- If the new categories are not visible due to configuration error, OLIMS must log the issue and alert system administrators.

---

## 5. Compliance/Controls

- All document uploads must be auditable, including the selected category.
- Access to document categories must follow existing OLIMS access controls.
- Document category selection must be included in compliance and reconciliation reports.

---

## 6. References and Linked Requirements

- OLA008: New document subcategories
- OLA009: Reporting capability in Document Overview
- OLA014: Compliance and SLA reporting for EPSS documents

---

## 7. Acceptance Criteria

- [ ] "EPSS On Duty" and "EPSS Off Duty" categories are available in OLIMS document upload and management screens.
- [ ] Users can select the new categories when uploading documents.
- [ ] The new categories are available as filters in document overview and reporting screens.
- [ ] Attempting to upload a document without a category triggers an error.
- [ ] All document uploads with the new categories are audit logged.
- [ ] Document category appears in compliance and reconciliation reports.