# Functional Specification: OLF003 — Period 3 Estimate Field Display Logic

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires accurate forecasting and reporting of benefit payments across all periods. In the OLIMS system, the estimation tab/forecasting calculator is used by EPSS Claims Officers to enter and review forecasted benefit payments for each incident and period. There is a need to clarify how Period 3 (P3) estimate fields should display when no data is entered, to ensure consistency and avoid misinterpretation in reporting and downstream processes.

---

## 2. Scope

This specification covers the display logic for Period 3 fields in the EPSS estimation tab within OLIMS. It defines the required placeholder behaviour (blank or zero) when no estimate data is entered for Period 3. The requirement applies to all OLIMS screens and reports that present Period 3 estimate fields.

---

## 3. Detailed Functional Requirements

- When no data is entered for any Period 3 estimate field in the OLIMS estimation tab, the field must display as **blank** (not zero).
- If a value is entered and then cleared by the user, the field must revert to blank.
- Reports and exports generated from OLIMS must reflect blank values for Period 3 fields where no data exists, not zero.
- This logic applies to all Period 3 estimate fields, including but not limited to: future number of weeks, forecast payments, and any other P3-specific fields.
- The display logic must be consistent across the OLIMS UI, exports (e.g., Excel), and any downstream reporting or integration.

---

## 4. Exception Handling

- If a technical limitation prevents displaying a blank (e.g., in certain export formats), a business-approved placeholder (such as "N/A") may be used, but never zero unless zero is a valid, user-entered value.
- Any system errors encountered when rendering blank fields must be logged and reported to the support team.

---

## 5. Compliance/Controls

- All changes must be auditable in OLIMS.
- Reporting must accurately reflect the absence of data for Period 3 estimates.
- No impact on payroll controls or financial reconciliation is expected.

---

## 6. References and Linked Requirements

- Cross-references: OLF001, OLF002, OLF004–OLF010 (EPSS estimation tab requirements)
- Related reporting requirements: RPK001–RPK004, RPL001–RPL005

---

## 7. Acceptance Criteria

- [ ] When no Period 3 estimate data is entered, all P3 fields display as blank in OLIMS.
- [ ] Clearing a previously entered value in a P3 field results in a blank display.
- [ ] OLIMS reports and exports show blank (not zero) for empty P3 estimate fields.
- [ ] No system errors occur when displaying blank P3 fields.
- [ ] Any exceptions (e.g., "N/A" used) are documented and approved by business.