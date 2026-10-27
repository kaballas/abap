# Functional Specification: DOA007 — New Non-Employee Position and Employee Subgroup "EPSS On Duty Detached" in SAP ECC (ABAP)

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires a clear distinction between officers rehired as detached non-employees (for ongoing EPSS payments) and other cohorts, such as those under the PBRI solution. To support this, a new non-employee position and employee subgroup, named “EPSS On Duty Detached,” must be created in SAP ECC. This enables correct downstream processing, reporting, and automation for the EPSS detached cohort, ensuring separation from existing PBRI detached arrangements.

---

## 2. Scope

This specification covers the creation and configuration of a new non-employee position and employee subgroup in SAP ECC, specifically for EPSS On Duty Detached officers. It includes all required SAP configuration, downstream system impacts, and integration points with OLIMS and payroll.

- Recorded that a new non-employee position and employee subgroup (ESG) named “EPSS On Duty Detached” is required to differentiate from the current PBRI solution.
- Noted that creating a new ESG will have significant downstream impacts, require updates to automations, and involve multiple stakeholders and implementation teams. If a specific existing subgroup can be used as a reference, this must be confirmed and documented.

---

## 3. Detailed Functional Requirements

### 3.1 Position and Subgroup Creation

- Create a new non-employee position in SAP with the description “EPSS On Duty Detached.”
- Create a new employee subgroup (ESG) or confirm if an existing ESG can be used as a baseline.
- Assign the new position to the new ESG.
- Ensure the position and ESG are clearly named and documented for business and technical reference.

### 3.2 Downstream Behaviours and Automations

- Define all downstream system behaviours triggered by the new ESG, including:
  - Exclusion from SAP access, NSWPF email, and downstream directories.
  - Payroll processing rules specific to EPSS detached officers.
  - Reporting and reconciliation logic.
  - Review and update all automations associated with the creation of a new ESG, referencing previous projects as needed.
- Document any automations or interfaces that must be updated to recognise the new ESG.
- Identify and document all stakeholders and implementation teams impacted by the new ESG.

### 3.3 Integration with OLIMS and Payroll

- Ensure OLIMS can identify and process claims for officers in the new position/ESG.
- Confirm that payroll logic (e.g., wagetype suppression, week counting) recognises the new ESG.
- Update any interfaces or batch jobs that rely on ESG or position for processing.

### 3.4 Data Conversion and Effective Dating

- Define the approach for converting existing detached officers (if required) to the new ESG.
- Specify effective dating rules for new hires and any required data migration.

### 3.5 Documentation and Configuration Management

- All configuration changes must be documented in SAP transport requests.
- Update all relevant business process documentation and user guides.

---

## 4. Exception Handling

- If an existing ESG can be used as a baseline, document the rationale and any configuration changes required.
- If new ESG creation is not feasible due to cost or complexity, define fallback options and their limitations.
- Ensure that legacy PBRI detached officers remain unaffected by these changes.
- Flag any uncertainty regarding downstream impacts or automation requirements as [TBC] until confirmed.

---

## 5. Compliance/Controls

- Payroll controls must ensure only the correct cohort is processed under the new ESG.
- OLIMS access and reporting must be updated to reflect the new position/subgroup.
- Reconciliation reports must be updated to include/exclude the new ESG as appropriate.

---

## 6. References and Linked Requirements

- Cross-references: DOA001–DOA006, DOA009–DOA017, DOB001–DOB008, P905 retro logic.
- Related open items: Confirm baseline ESG, downstream automation, and data conversion (see Open Items 24, 20).
- Refer to previous projects for automation requirements and downstream impacts when creating a new ESG.

---

## 7. Acceptance Criteria

- [x] New non-employee position “EPSS On Duty Detached” created in SAP.
- [x] New employee subgroup (or confirmed existing ESG) configured and documented.
- [x] Downstream systems and automations updated to recognise the new ESG, with all impacted stakeholders and implementation teams identified.
- [x] Payroll and OLIMS integration tested and confirmed for the new cohort.
- [x] All configuration and process documentation updated.
- [x] No impact to legacy PBRI detached officers or other cohorts.
- [x] All changes pass UAT and are signed off by business and technical stakeholders.