# Functional Specification: TR013 — PBRI to EPSS Transition Reporting

---

## 1. Business Background

The NSW Police Force (NSWPF) is implementing enhancements to the EPSS (Enhanced Police Support Scheme) to support accurate reporting and management of claims transitioning from the legacy PBRI (Police Blue Ribbon Insurance) scheme to EPSS. Accurate reporting is required to track all transitions, including those involving detached officers, and to ensure compliance, transparency, and effective scheme management.

---

## 2. Scope

This specification covers the minimum required fields and logic for the PBRI to EPSS transition report. The report must include both the original and (if applicable) detached officer employee numbers, recurrence information for Period 1/2, and explicit reporting requirements for detached officers. The solution must align with business assumptions and support operational, compliance, and audit needs.

---

## 3. Detailed Functional Requirements

- The report must include the following fields at minimum:
  - Original employee number (PBRI)
  - Detached officer employee number (if applicable)
  - Incident number
  - Claim number
  - Recurrence date(s) for Period 1 and/or Period 2
  - Transition type (e.g., PBRI to EPSS, direct EPSS)
  - Claim status and sub-status
  - Officer name and rank
  - Any other fields required for detached officer identification and reporting
- The report must support selection/filtering by:
  - Employee number (original or detached)
  - Incident number
  - Transition type
  - Date range (recurrence/transition date)
- The report must include all claims that have transitioned from PBRI to EPSS, including those where the officer is now a detached officer.
- For detached officers, both the original and new employee numbers must be reported and linked.
- Recurrence information for both Period 1 and Period 2 must be included, with clear indication of which period the transition applies to.
- The report must be exportable to Excel and accessible to authorised users via the standard reporting interface.

---

## 4. Exception Handling

- If a claim does not have a detached officer employee number, the field must be left blank or marked as "N/A".
- If recurrence information is missing, the report must flag the record for review.
- Any data inconsistencies (e.g., missing linkage between original and detached numbers) must be highlighted in the report output.

---

## 5. Compliance/Controls

- Access to the report must be restricted to authorised personnel.
- All report generation and export actions must be audit logged.
- The report must support scheme-wide compliance, reconciliation, and audit requirements, including accurate linkage of original and detached officer records.

---

## 6. References and Linked Requirements

Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic, TR001–TR012.

---

## 7. Acceptance Criteria

- [ ] Report includes all required fields (original and detached employee numbers, recurrence info, etc.)
- [ ] Detached officer records are correctly linked and displayed
- [ ] Recurrence dates for Period 1/2 are present and accurate
- [ ] Report is exportable to Excel
- [ ] Exception handling is implemented as specified
- [ ] Access and audit controls are in place
- [ ] All business and compliance requirements are met