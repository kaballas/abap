# Functional Specification: RPI007 — EPSS Pay Simulation Report Export to Excel

---

## 1. Business Background

The EPSS Pay Simulation Report is a critical tool for EPSS Claims Officers to review, analyse, and validate simulated or actual pay results for officers under the Enhanced Police Support Scheme (EPSS). The ability to export this report to Excel is required to facilitate offline analysis, compliance checks, and operational reporting.

---

## 2. Scope

This specification covers the requirement to enable export of the EPSS Pay Simulation Report (RPI007) from SAP to Excel format, ensuring EPSS Claims Officers can access, download, and analyse report data as needed. It includes confirmation of user access to SAP spools and any necessary training for the export process.

---

## 3. Detailed Functional Requirements

- The EPSS Pay Simulation Report must be exportable from SAP in Excel (.xlsx or .csv) format.
- The export function must be available to EPSS Claims Officers with appropriate SAP access.
- The exported file must include all columns and data as displayed in the SAP report output.
- The export process must be straightforward, with clear instructions provided to users.
- If required, training or user guides must be delivered to EPSS Claims Officers on how to export reports from SAP to Excel.
- The export must preserve data integrity, formatting, and column headers for further analysis.

---

## 4. Exception Handling

- If a user does not have access to SAP spools or the export function, an error message must be displayed with instructions to request access.
- If the export fails due to technical issues (e.g., file size, SAP errors), a clear error message must be shown and logged for support follow-up.
- If the report contains no data, the export should still generate a file with column headers and a message indicating "No data found".

---

## 5. Compliance/Controls

- Exported files must be handled in accordance with NSWPF data security and privacy policies.
- Access to the export function must be restricted to authorised EPSS Claims Officers.
- Audit logs must record report export actions, including user ID, date/time, and report parameters.

---

## 6. References and Linked Requirements

- Cross-references: RPI001–RPI006 (EPSS Pay Simulation Report requirements), OLIMS reporting folder, SAP spool/export access controls.
- Related reports: RPE (Detailed EPSS Payment Report), RPF (Period 1 Utilisation Summary).

---

## 7. Acceptance Criteria

- [ ] EPSS Claims Officers can export the EPSS Pay Simulation Report from SAP to Excel format.
- [ ] Exported files contain all required columns and data as per the SAP report output.
- [ ] Export process is documented and training is provided if needed.
- [ ] Access controls and audit logging are in place for report exports.
- [ ] Exception handling is implemented for access and technical errors.
- [ ] Exported files comply with data security and privacy requirements.