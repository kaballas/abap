# Functional Specification: OLF009 — OLIMS Estimate Fields Mapping and icare Recoup Report Alignment

---

## 1. Business Background

The EPSS scheme requires accurate forecasting and reporting of future liabilities. OLIMS provides an estimation tab where claims officers enter forecasted benefit amounts for each incident. The icare recoup report, used for external reporting and recoupment, requires specific data fields and mapping from OLIMS. There is a need to clarify which estimate fields are entered in OLIMS, their effective dates, and how each field maps to the icare recoup report, as the icare output differs from the internal OLIMS estimation logic.

---

## 2. Scope

This specification covers:
- Definition of estimate fields to be entered in OLIMS for each benefit period (P1, P2, P3).
- Effective dating of each estimate field.
- Mapping rules from OLIMS estimate fields to icare recoup report fields.
- Alignment of OLIMS estimation tab and icare recoup report requirements.

---

## 3. Detailed Functional Requirements

- OLIMS must provide data entry fields for each benefit period (P1, P2, P3) as per OLF005–OLF007.
- Each estimate field must have an effective date, recorded at the time of entry.
- The mapping from OLIMS estimate fields to icare recoup report fields must be explicitly defined and documented.
- The icare recoup report must use the mapped OLIMS estimate fields, applying any required transformations or calculations.
- The mapping logic must be maintained and version-controlled to support future changes in icare reporting requirements.
- Any differences between OLIMS estimation logic and icare recoup report output must be documented and justified.

---

## 4. Exception Handling

- If an OLIMS estimate field required for the icare recoup report is missing or not entered, the report must flag the record as incomplete and exclude it from submission.
- If effective dates are inconsistent or overlap, the system must prompt the user to resolve the conflict before saving.
- Any mapping errors or missing mappings must be logged and reported to system administrators for resolution.

---

## 5. Compliance/Controls

- All estimate field entries and changes must be audit-logged in OLIMS.
- Only authorised users (EPSS claims officers) can enter or modify estimate fields.
- icare recoup report generation must be restricted to users with appropriate reporting access.
- Data mapping documentation must be reviewed and approved by business and reporting teams.

---

## 6. References and Linked Requirements

- OLF005–OLF007: OLIMS estimation tab field definitions and calculation logic.
- icare recoup report requirements (external reporting).
- Cross-references: DOA010, DOA012, DOB001–DOB005, P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] All required estimate fields for P1, P2, and P3 are available in OLIMS with effective dates.
- [ ] Mapping documentation exists and is approved for all OLIMS estimate fields to icare recoup report fields.
- [ ] icare recoup report uses only mapped OLIMS estimate fields and applies required transformations.
- [ ] Exception handling is implemented for missing or inconsistent data.
- [ ] Audit logs are available for all estimate field changes.
- [ ] Access controls are in place for data entry and report generation.
- [ ] All business and reporting stakeholders have reviewed and signed off the mapping and report output.