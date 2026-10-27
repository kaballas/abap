# Functional Specification: RPB006 — EPSS On Duty Claim Report: Field Mapping and Data Source Clarification

---

## 1. Business Background

The EPSS On Duty Claim Report is a key operational report required for the administration and oversight of the Enhanced Police Support Scheme (EPSS). It provides detailed information on EPSS On Duty claims, supporting scheme management, compliance, and reporting. Recent business feedback has identified the need to clarify the data sources and field definitions for new and existing columns, particularly for Hourly Rate, LO screenshot period, Date Modified, and Description, to ensure accuracy and consistency in reporting.

---

## 2. Scope

This specification covers the clarification and documentation of data sources and field definitions for all columns in the EPSS On Duty Claim Report (RPB006). It includes explicit field mappings, definitions, and any required business logic for new columns, as well as the resolution of outstanding queries regarding data extraction from OLIMS, SAP HR/Payroll, and related systems.

---

## 3. Detailed Functional Requirements

- **Field Mapping:**  
  - For each report column, provide the exact data source (OLIMS table/field, SAP infotype/field, or other system).
  - Define calculation logic where applicable (e.g., Hourly Rate = Annual Salary / Standard Hours / 52.17858).
  - For new columns (Hourly Rate, LO screenshot period, Date Modified, Description), specify:
    - **Hourly Rate:** Source from SAP IT0008 (Basic Pay) or calculated from annual salary and standard hours.
    - **LO Screenshot Period:** Define as the period covered by the latest OLIMS screenshot or status update; source from OLIMS claim history.
    - **Date Modified:** Last modified timestamp from OLIMS claim record or SAP change log.
    - **Description:** Free-text field from OLIMS claim notes or summary field.
- **Field Definitions:**  
  - Document the business meaning of each field, including any transformation or formatting required.
  - Confirm with business which OLIMS fields/tables to use for ambiguous columns.
- **Outstanding Queries:**  
  - Resolve any open questions in the DTT section regarding field mapping, especially for fields with multiple potential sources.
  - Document any assumptions or business decisions made during clarification.
- **Data Consistency:**  
  - Ensure all field mappings are consistent across reporting periods and align with other EPSS reports.
  - Where multiple sources exist, specify the source of truth.

---

## 4. Exception Handling

- If a required field is missing or cannot be mapped, the report must display a blank value and log a warning for review.
- If multiple values exist for a field (e.g., multiple modifications in a period), use the latest value as of the report run date.
- Any calculation errors (e.g., division by zero in Hourly Rate) must result in a blank field and an error log entry.

---

## 5. Compliance/Controls

- All field mappings and data extraction must comply with payroll controls and OLIMS access permissions.
- Reporting must support audit and reconciliation requirements, including traceability of data back to source systems.
- Changes to field mappings must be documented and version-controlled.

---

## 6. References and Linked Requirements

- Cross-references: RPB002, RPB003, RPB004, RPB005, RPB007, DOA010, DOA012, DOB001–DOB005, P905 retro logic.
- Source documents: BRD4_Phase 4_Requirements Notes.xlsx, DTT queries, OLIMS/SAP data dictionaries.

---

## 7. Acceptance Criteria

- [ ] All report columns have a documented data source and field definition.
- [ ] New columns (Hourly Rate, LO screenshot period, Date Modified, Description) are mapped and defined.
- [ ] Outstanding field mapping queries are resolved and documented.
- [ ] The report displays accurate, consistent data as per business requirements.
- [ ] Exception handling is implemented for missing or ambiguous data.
- [ ] Compliance and audit requirements are met.
- [ ] Documentation is reviewed and signed off by business and technical stakeholders.