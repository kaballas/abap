# Functional Specification: DOA005 — New Employee Number Range for Detached Officers (EPSS) in SAP ECC

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires that police officers who are terminated and subsequently rehired as detached officers (non-employees) are assigned a new employee number in SAP. This is to ensure clear separation between the original employment record and the detached officer record, supporting accurate case management, payroll processing, and reporting. The preferred approach is to use a new, automatically assigned sequential employee number range (e.g., 5000xxxx series) for EPSS detached officers. If this is not feasible due to cost or technical constraints, the fallback is to use the existing ESG XV with manual number assignment. Only EPSS detached hires are in scope for automation; PBRI detached cohorts remain manual and are not affected by this change.

---

## 2. Scope

This specification covers the assignment and management of new employee numbers for EPSS detached officers in SAP ECC. It includes automatic sequential number assignment, fallback manual assignment, and the associated business rules and system configuration. The scope excludes PBRI detached officer cohorts and any downstream system access for detached officers.

---

## 3. Detailed Functional Requirements

### 3.1 Employee Number Assignment

- **Automatic Assignment:**  
  - SAP must assign a new employee number from a dedicated range (e.g., 5000xxxx) when hiring an EPSS detached officer as a non-employee.
  - The number range must be unique and not overlap with existing personnel number series.
  - Assignment must be sequential and automated during the PA40 Hire Action or equivalent programmatic hire.
  - If automation is not feasible, manual assignment in the 5000xxxx range is permitted, using a structure such as '05' plus the original employee number (allowing for 6 digits for the original number).

- **Manual Assignment (Fallback):**  
  - If automatic assignment is not feasible, the system must allow manual entry of the employee number using ESG XV, ensuring no duplication.
  - Only the EPSS detached cohort (currently 3100 range) is in scope for this fallback.
  - PBRI detached cohorts remain manual and are not included in this automation.

### 3.2 System Configuration

- **Number Range Definition:**  
  - Define and configure a new personnel number range in SAP for EPSS detached officers.
  - Ensure the range does not exceed SAP’s 8-character personnel number limit.

- **Cohort Identification:**  
  - EPSS detached officers must be identifiable in SAP by their employee subgroup (ESG) and/or personnel number range.
  - The configuration must support reporting and downstream processing based on this identification.

### 3.3 Hire Process

- **PA40 Hire Action:**  
  - The hire process for detached officers must use the new number range and assign the correct ESG.
  - The process must not require SAP, NSWPF email, or downstream system access for the detached officer.

- **Data Integrity:**  
  - The system must prevent assignment of duplicate employee numbers.
  - All hires must be auditable, with logs of number assignment and user actions.

### 3.4 Reporting and Audit

- **Reporting:**  
  - Reports must be able to filter and display EPSS detached officers based on the new number range and ESG.
- **Audit Trail:**  
  - All employee number assignments must be logged for audit and compliance purposes.

---

## 4. Exception Handling

- If automatic number assignment is not possible, manual assignment using ESG XV is permitted for EPSS detached officers only, and the number must be in the 5000xxxx range (e.g., '05' plus original employee number).
- PBRI detached officer cohorts remain manual and are not included in this automation.
- Any conflicts or overlaps in number ranges must trigger an error and prevent hire completion.
- If there is any ambiguity or technical constraint regarding number range assignment, flag as [TBC] and escalate for resolution.

---

## 5. Compliance/Controls

- Only authorized users may configure or assign employee numbers for detached officers.
- All changes to number range configuration must be logged.
- Regular reconciliation reports must be run to ensure no duplicate or out-of-range numbers are assigned.

---

## 6. References and Linked Requirements

- Cross-references: DOA001–DOA009, DOA017, DOB001–DOB008, P905 retro logic
- Related open items: Confirm number range, ESG usage, and fallback process (see Open Items #21–23 in the BRD).

---

## 7. Acceptance Criteria

- [x] New employee numbers for EPSS detached officers are assigned automatically from the configured 5000xxxx range, or manually in this range if automation is not feasible.
- [x] Manual assignment is available as a fallback, with ESG XV, for EPSS detached officers only.
- [x] No duplicate or out-of-range numbers are assigned.
- [x] Detached officers are clearly identifiable in SAP by number range and ESG.
- [x] All assignments are logged and auditable.
- [x] Reports can filter and display EPSS detached officers by number range and ESG.
- [x] PBRI detached officer cohorts remain manual and are not affected by this change.