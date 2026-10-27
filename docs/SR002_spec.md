# Functional Specification: SR002 — Monthly EPSS Scheme Snapshot Data Extract

---

## 1. Business Background

The NSW Police Force (NSWPF) requires monthly scheme-wide reporting for the Enhanced Police Support Scheme (EPSS) to support cost, performance, and fairness analysis. This reporting must include all EPSS participants (active, inactive, and ceased), capturing payment, eligibility, and week/day counting status as at the end of each month. The data will be loaded into the Enterprise Data Warehouse (EDW) for analytics and compliance.

---

## 2. Scope

This specification covers the extraction, transformation, and loading (ETL) of a monthly snapshot of all EPSS participants, including ceased and non-paying cases, into the EDW. The extract includes all required columns, definitions, and formats as outlined in the business requirements.

---

## 3. Detailed Functional Requirements

- A monthly data extract will be generated on the last day of each calendar month.
- The extract will include all EPSS participants (receiving payments, not receiving payments, weeks counting/not counting, and ceased).
- Each record will include the columns, definitions, and formats as per the requirements table (see Section 6).
- The extract will be a full snapshot (not incremental) and will retain historical data by month using the `dt_as_at` field.
- Data sources include SAP HR, Payroll, and OLIMS.
- All payment amounts will be shown as 0 if no payment was made in the month, but the participant will still be included.
- The extract will be delivered in a format compatible with EDW ingestion (e.g., CSV or as specified by EDW team).

---

## 4. Exception Handling

- If a required data field is missing for a participant, the field will be left blank or set to a default value as per EDW requirements.
- Any extract failures or data mapping errors will be logged and reported to the Payroll/EDW support team for resolution.
- If a participant cannot be included due to critical data issues, the extract process will flag the record for manual review.

---

## 5. Compliance/Controls

- All data extracts must comply with NSWPF data privacy and security policies.
- Access to the extract and underlying data is restricted to authorised personnel only.
- Audit logs of extract generation and data access will be maintained.
- Reconciliation checks will be performed to ensure all active and ceased EPSS participants are included each month.

---

## 6. References and Linked Requirements

- Cross-references: SR001, SR003, RPA001, RPE001, RPF001, OLIMS/Payroll reporting requirements.
- Source: Business Requirements Document (BRD), Section "EPSS scheme reporting (HSWC)".
- See also: [SR003 — Table requirements for EPSS scheme reporting].

---

## 7. Acceptance Criteria

- [ ] Extract includes all required columns with correct names, definitions, and formats.
- [ ] All EPSS participants (active, inactive, ceased) are present in each monthly extract.
- [ ] Payment and week/day counting status are accurate as at the end of the month.
- [ ] Historical data is retained and differentiated by `dt_as_at`.
- [ ] Extract is successfully loaded into EDW without errors.
- [ ] Exception handling and reconciliation controls are in place and tested.
- [ ] Data privacy and access controls are enforced.
- [ ] Documentation of data mapping and extract process is complete and approved.