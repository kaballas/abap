# Functional Specification: RPA001 — Data Extraction

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust, auditable, and comprehensive data extraction from SAP OLIMS, HR, and Payroll systems to support operational, compliance, and scheme reporting for the Enhanced Police Support Scheme (EPSS). Accurate data extraction underpins all downstream reporting, analytics, and regulatory obligations.

---

## 2. Scope

This specification covers the extraction of all required data elements from SAP OLIMS, HR, and Payroll tables/fields for EPSS reporting. It includes mapping, validation, and documentation of data sources, and identifies any gaps or dependencies for successful extraction.

---

## 3. Detailed Functional Requirements

- Extract all required data fields for EPSS reporting from SAP OLIMS, HR, and Payroll systems.
- Document a detailed data mapping for each required field, including:
  - Field name
  - Source table
  - Source field
  - Data type/format
- Ensure all required data elements are available and accessible for extraction.
- Identify and document any data gaps or dependencies.
- Extraction must support both scheduled and ad-hoc reporting needs.
- Data must be exportable in standard formats (e.g., CSV, Excel).
- Extraction logic must be version-controlled and auditable.

---

## 4. Exception Handling

- If a required field is missing or inaccessible, log the exception and notify the data owner.
- Extraction jobs must fail gracefully with clear error messages if source systems are unavailable.
- Partial extractions must be flagged and reported for remediation.

---

## 5. Compliance/Controls

- Data extraction must comply with NSWPF data security and privacy policies.
- Access to extraction logic and output must be restricted to authorised users.
- All extraction activities must be logged for audit and reconciliation.
- Regular reconciliation between extracted data and source systems is required.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] All required data fields are mapped, documented, and available for extraction.
- [ ] Extraction jobs run successfully and produce complete, accurate data sets.
- [ ] Exception handling is implemented and tested.
- [ ] Compliance controls are in place and auditable.
- [ ] Data extraction supports all downstream reporting requirements.
- [ ] Any data gaps or dependencies are documented and tracked to resolution.