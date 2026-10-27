# Functional Specification: OLF010 — EPSS Forecast Report Platform and Override Logic

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires robust forecasting and reporting of future benefit payments for operational, financial, and scheme management purposes. Accurate forecasting supports scheme sustainability, compliance with regulatory requirements, and enables proactive management of liabilities. The business has identified the need to clarify the technical platform for the EPSS forecast report (OLIMS vs SAP) and to determine whether manual entry/override of icare recoup report values is required, or if the report should only reflect OLIMS-entered forecast data.

---

## 2. Scope

This specification covers the technical and functional requirements for the EPSS forecast report, specifically:
- Determining the system of record and delivery platform (OLIMS or SAP) for the forecast report.
- Defining whether manual entry or override of icare recoup report values is supported.
- Ensuring the report reflects accurate, up-to-date forecast data for all relevant EPSS claims and periods.

---

## 3. Detailed Functional Requirements

- The EPSS forecast report must be delivered on the platform confirmed by business (OLIMS or SAP).
- The report must use forecast data entered in the OLIMS estimation/forecast tab as the primary data source.
- If business requires, the report must allow for manual entry or override of icare recoup report values; otherwise, it will only reflect OLIMS-entered forecast data.
- The report must include all required fields for each benefit period (P1, P2, P3), including incident number, claim number, date range, and forecasted payment amounts.
- The report must be accessible to EPSS Claims Officers and relevant stakeholders with appropriate access controls.
- The report must be exportable to Excel for further analysis.

---

## 4. Exception Handling

- If the platform (OLIMS or SAP) is not confirmed, the report will not be developed until a decision is made.
- If manual override is enabled, all overrides must be logged with user, date, and reason.
- If required forecast data is missing for a claim, the report must flag the record as incomplete and exclude it from totals.

---

## 5. Compliance/Controls

- Access to the report and any override functionality must be restricted to authorised users.
- All manual overrides must be auditable, with a full change log available for compliance review.
- The report must comply with payroll controls, OLIMS access policies, and reporting standards.

---

## 6. References and Linked Requirements

- Cross-references: OLF001–OLF009 (EPSS estimation tab/forecasting calculator), icare recoup report logic, DOA010/DOA012 (salary sourcing for detached officers), RPK/RPL (forecast reporting).
- Related open items: Confirm platform and override policy (see Open Items #8, #9).

---

## 7. Acceptance Criteria

- [ ] The forecast report is delivered on the agreed platform (OLIMS or SAP).
- [ ] The report uses OLIMS-entered forecast data as the default source.
- [ ] If required, manual override of icare recoup report values is supported and fully auditable.
- [ ] All required fields and periods are included in the report output.
- [ ] The report is accessible only to authorised users.
- [ ] The report can be exported to Excel.
- [ ] Exception handling and audit logging are implemented as specified.