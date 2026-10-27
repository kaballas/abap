# Functional Specification: OLF004 — EPSS Estimation Tab: Grouping and Totals by Benefit Period and Quarter

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires accurate forecasting and reporting of benefit payments across multiple periods (Period 1, 2, and 3). The estimation tab in OLIMS is used by claims officers to enter and review forecasted EPSS payments. To support operational and scheme reporting, estimates must be grouped and totaled by benefit period, quarter, and other key fields.

---

## 2. Scope

This specification covers the requirements for grouping and totaling EPSS estimate records in the OLIMS estimation tab and related reports. It defines the key fields for grouping, clarifies the inclusion of WC section and RTW capacity, and specifies output/reporting needs. It applies to all EPSS estimation records entered in OLIMS.

---

## 3. Detailed Functional Requirements

- The estimation tab must allow grouping and totaling of forecasted EPSS estimates by:
  - Benefit period (Period 1, 2, 3)
  - Quarter (financial year quarter)
  - WC section (if required by business)
  - RTW capacity (if required by business)
- Key fields for grouping and totaling must be clearly defined and used consistently in both the estimation tab and related reports.
- Totals must be calculated for each group and displayed in the estimation tab and available for reporting/export.
- The system must allow filtering and aggregation based on the above fields.
- If WC section is required as an output or grouping field, it must be included in both the estimation tab and reports.

---

## 4. Exception Handling

- If required grouping fields (e.g., WC section, RTW capacity) are missing from an estimate record, the system must flag the record for review and exclude it from group totals until corrected.
- If duplicate or conflicting records exist for the same key fields, the system must display a warning and require user resolution.

---

## 5. Compliance/Controls

- All grouping and totaling logic must be auditable.
- Changes to grouping fields or totals must be logged with user, date, and time.
- Reports must be exportable for reconciliation and compliance review.

---

## 6. References and Linked Requirements

- Cross-references: OLF001–OLF010 (Estimation tab requirements), DOA010, DOA012, DOB001–DOB005, P905 retro logic
- Related business rules and reporting requirements in the EPSS BRD and OLIMS documentation.

---

## 7. Acceptance Criteria

- [ ] Estimates can be grouped and totaled by benefit period and quarter.
- [ ] WC section and RTW capacity are included as grouping/output fields if required.
- [ ] Totals are displayed in the estimation tab and available in reports.
- [ ] Exception handling is in place for missing or conflicting grouping fields.
- [ ] All changes are audit logged.
- [ ] Reports are exportable for compliance and reconciliation.