# Functional Specification: RPE004 — Period 1 Week Count Reporting for Total Incapacity (s36/s37) with Zero EPSS Payment

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) provides supplementary support payments to eligible NSW Police Force officers during periods of incapacity. Accurate reporting of Period 1 (P1) week utilisation is critical for scheme integrity, compliance, and transition to subsequent benefit periods. A specific scenario arises when an officer is under total incapacity (sections 36/37) during P1 but does not receive an EPSS payment (e.g., due to full workers compensation coverage). For transparency and correct week counting, these instances must be reported as a counted P1 week, even if the EPSS payment is zero.

---

## 2. Scope

This specification covers the reporting logic and system behaviour for the Detailed EPSS Payment Report (RPE) to ensure that, during P1, any week where an officer is under total incapacity (s36/s37) but receives no EPSS payment is still output as a counted week. The requirement applies to all relevant reporting tools and data extracts used for scheme monitoring and compliance.

---

## 3. Detailed Functional Requirements

- For any officer in Period 1, if the capacity status is "Total Incapacity" (s36/s37) and no EPSS payment is made for the week (i.e., payment wagetypes 49E9/6A48 are zero or absent), the report must still output a line for that week.
- The week must be flagged as "P1 week counted" in the report, regardless of payment amount.
- The logic must not rely solely on the presence of EPSS payment wagetypes; it must also check capacity status from OLIMS or payroll data.
- The report must include all standard columns (employee, incident, dates, capacity status, payment details, week counted flag, etc.).
- This logic applies only to Period 1 and only for total incapacity (s36/s37) scenarios.

---

## 4. Exception Handling

- If capacity status cannot be determined for a week, the report must flag the record for manual review.
- If conflicting data is found (e.g., both partial and total incapacity in the same week), the report must output both records and flag for review.
- If the officer is not in Period 1, or capacity status is not s36/s37, standard reporting logic applies.

---

## 5. Compliance/Controls

- All counted weeks (including zero-payment total incapacity weeks) must be auditable and traceable to source data in OLIMS and payroll.
- The report must support reconciliation with week-counting logic used for benefit period transitions.
- Access to the report and underlying data must comply with OLIMS access controls and payroll reporting standards.

---

## 6. References and Linked Requirements

- Cross-references: RPE001–RPE003 (Detailed EPSS Payment Report), P1001–P1006 (Period 1 week counting logic), DOA010, DOA012, DOB001–DOB005, P905 retro logic.
- Meeting notes: min_a.md (27 Jan 2026), DTT queries.

---

## 7. Acceptance Criteria

- [ ] For every P1 week with total incapacity (s36/s37) and zero EPSS payment, a report line is output and flagged as "P1 week counted".
- [ ] Capacity status is sourced from OLIMS or payroll and not inferred solely from payment wagetypes.
- [ ] All standard report columns are present and populated.
- [ ] Exception cases (missing or conflicting data) are flagged for manual review.
- [ ] The report supports audit and reconciliation requirements.
- [ ] Access and data handling comply with payroll and OLIMS controls.