# Functional Specification: RPE002 — Detailed EPSS Payment Report Selection Criteria

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires detailed, auditable reporting of all payment calculations and week utilisation for officers receiving EPSS benefits. The Detailed EPSS Payment Report supports compliance, transparency, and operational review by providing a granular breakdown of payments, week counts, and related factors for each officer and incident.

---

## 2. Scope

This specification covers the selection criteria for the Detailed EPSS Payment Report (RPE002). It defines how users select data for reporting, clarifies inclusion/exclusion logic for pay periods, and specifies whether the report displays original or recalculated payment results.

---

## 3. Detailed Functional Requirements

- **Selection Criteria:**  
  - Employee Number  
  - Incident Number  
  - Date From  
  - Date To

- **Date Range Logic:**  
  - The "Date From/To" criteria must allow users to select pay periods with end dates within the specified range.
  - The report must clarify whether to display the net results per pay period or the latest recalculated view of each pay period.

- **Display Logic:**  
  - The report should show either:
    - The original pay period results as at the time of payment, or
    - The latest recalculated values for each pay period, as determined by business decision.

- **Inclusion/Exclusion:**  
  - Only pay periods with end dates within the selected range are included.
  - The report must support selection by single or multiple employees/incidents.

---

## 4. Exception Handling

- If no records match the selection criteria, the report must display a "No data found" message.
- If invalid or incomplete selection criteria are entered, the user must be prompted to correct the input.
- If a pay period is recalculated after the original payment, the report must indicate which value is displayed (original or latest), per business rules.

---

## 5. Compliance/Controls

- All report access and execution must be logged for audit purposes.
- Data displayed must match payroll and OLIMS records for the selected criteria.
- Only authorised users may access the report, in line with payroll and privacy controls.

---

## 6. References and Linked Requirements

- Cross-references: RPE001 (report columns), RPE003 (report data fields), RPE004 (week counting logic), P1001–P1006 (week counting and proration), DOA010, DOA012, DOB001–DOB005, P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] Report selection screen includes Employee Number, Incident Number, Date From, Date To.
- [ ] Date range logic is implemented as specified.
- [ ] Report displays either original or latest recalculated pay period results, as per business decision.
- [ ] Exception handling is implemented for no data and invalid input.
- [ ] Access and execution are logged for compliance.
- [ ] Data matches payroll/OLIMS for selected criteria.
- [ ] Linked requirements are referenced and traceable.