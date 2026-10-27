# Functional Specification: OLA008 — New Document Subcategories in OLIMS

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires improved document management within OLIMS to support accurate case management, compliance, and reporting. To address this, new document subcategories must be introduced to classify documents by benefit period and claim lifecycle events.

---

## 2. Scope

This specification covers the addition of new document subcategories in OLIMS for EPSS On Duty and Off Duty claims. It includes UI changes, data model updates, and reporting impacts. The requirement does not cover document template creation or workflow changes outside subcategory selection.

---

## 3. Detailed Functional Requirements

- Add the following document subcategories in OLIMS:
  - Period 1
  - Period 2
  - Period 3
  - Commencement
  - Recommencement
  - Request for Review
  - Dispute
  - Cessation
  - Finalisation
  - Recoveries
- Subcategories must be available for selection when uploading or classifying documents under the "EPSS On Duty" and "EPSS Off Duty" categories.
- The subcategory field must be mandatory for all new document uploads in these categories.
- Subcategories must be visible in the Document Overview screen and available as a filter in document reports.
- If different templates are required for each subcategory, business must provide them; otherwise, the subcategory is for classification only.

---

## 4. Exception Handling

- If a user attempts to upload a document without selecting a subcategory, display an error and prevent upload.
- If a subcategory is missing or invalid, log the error and alert the system administrator.
- If business does not provide required templates for a subcategory, allow upload with classification only and flag for follow-up.

---

## 5. Compliance/Controls

- All document uploads and subcategory selections are audit logged.
- Access to document subcategories is controlled by existing OLIMS user roles.
- Document subcategories are included in compliance and SLA performance reporting.

---

## 6. References and Linked Requirements

- Cross-references: OLA007 (document categories), OLA009 (reporting), OLA013 (data entry fields), OLA014 (compliance reporting)
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/:x:/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx)

---

## 7. Acceptance Criteria

- [ ] All listed subcategories are available for selection under EPSS On Duty and Off Duty document categories.
- [ ] Subcategory selection is mandatory for new uploads.
- [ ] Subcategories are visible and filterable in the Document Overview and reports.
- [ ] Upload is blocked if subcategory is not selected.
- [ ] Audit log records subcategory selection.
- [ ] Compliance reports include subcategory data.
- [ ] If templates are required for subcategories, they are linked or flagged as pending.