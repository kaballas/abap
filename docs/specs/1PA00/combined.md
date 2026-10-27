# Functional Specification: 1PA001 — Period 1: Calculation of Ordinary Rate of Pay (ORP) for Workers Compensation in SAP ECC (ABAP)

---

## 1. Business Background

The calculation of the Ordinary Rate of Pay (ORP) for police officers during Period 1 of Workers Compensation (WC) is critical for ensuring compliance with legislative and industrial requirements. Period 1 refers to the initial period following a workplace injury, during which the NSW Police Force (NSWPF) is responsible for making WC payments to the injured officer. Accurate calculation of ORP ensures officers receive correct entitlements and supports payroll integrity.

---

## 2. Scope

This requirement applies to the calculation, validation, and processing of ORP for all NSWPF officers eligible for WC payments during Period 1. It covers SAP ECC payroll configuration, integration with HR master data, and reporting for audit and compliance.

- The definition of "Ordinary Rate of Pay" (ORP) is to include position-based allowances as recorded in InfoType 0008 (IT8). The specific wage types (WTs) to be included or excluded are to be provided by HSWC and PCC. The finalized list is outstanding and tracked in the 'ORP WT list' worksheet.
- No position checking is required beyond the presence of allowances in IT8; position-based allowances are sourced from IT8, not from HD infotypes.
- IT8 values reflect increased pay scale values only if an effective record exists on the increase date.

---

## 3. Detailed Functional Requirements

### 3.1 ORP Calculation Logic

- The system must calculate ORP based on the officer’s substantive salary, including all permanent allowances and loadings as per industrial instruments.
- Only allowances present in IT8 (InfoType 0008 – Basic Pay) are to be considered for inclusion or exclusion in ORP, as per the finalized 'ORP WT list' (pending from HSWC and PCC).
- Exclude temporary or acting allowances, overtime, and non-permanent payments from ORP.
- The calculation must reference the officer’s position and pay scale as at the Date of Injury (DOI).
- Any subsequent changes to salary or allowances after DOI must not affect the ORP for the WC claim.
- IT8 values are as per the increased pay scale values, which may not be reflected unless an effective record exists on the increase date.

### 3.2 SAP Payroll Integration

- ORP must be stored in a custom wage type (e.g., 9ORP) in IT0014 for the duration of Period 1.
- The wage type must be included in payroll runs for officers on WC, ensuring correct payment and reporting.
- Payroll results must clearly distinguish WC payments from regular salary.

### 3.3 Data Validation and Controls

- The system must validate that all required data (DOI, position, pay scale, permanent allowances) is present before calculating ORP.
- Any missing or inconsistent data must trigger an error and prevent payroll processing for the affected officer.

### 3.4 Reporting and Audit

- Generate reports listing all officers with active WC claims in Period 1, their calculated ORP, and payment details.
- Maintain an audit trail of all ORP calculations, including source data and calculation date.

### 3.5 Exception Handling

- Retroactive adjustments: If a permanent allowance is backdated to before the DOI, recalculate ORP and adjust payments accordingly.
- Manual override: Allow authorized payroll officers to override ORP in exceptional cases, with mandatory reason capture and audit logging.

---

## 4. Exception Handling

- Retroactive entitlements: Adjust ORP if permanent salary components are backdated to before DOI.
- Exclude any payments made by the insurer (EML) from SAP payroll calculations.
- Manual intervention allowed only with appropriate authorization and audit trail.
- If the finalized list of allowances (WTs) to be included/excluded in ORP is not available, flag the calculation as incomplete and prevent payroll processing for the affected officer until resolved.

---

## 5. Compliance/Controls

- Ensure compliance with NSWPF industrial agreements and WC legislation.
- Restrict access to ORP calculation and override functions to authorized payroll and HR staff.
- Regular reconciliation between SAP payroll and OLIMS case records.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic
- Related SAP configuration documents and OLIMS integration specifications
- 'ORP WT list' worksheet for tracking included/excluded wage types (pending completion by HSWC and PCC)

---

## 7. Acceptance Criteria

- ORP is calculated correctly for all eligible officers as at DOI.
- Only permanent salary components and allowances present in IT8, as per the finalized 'ORP WT list', are included in ORP.
- Payroll runs reflect accurate WC payments for Period 1.
- All exceptions and overrides are logged and auditable.
- Reports are available for audit and compliance purposes.
- Data validation prevents processing with incomplete or inconsistent data.
- Calculation is blocked if the finalized list of included/excluded allowances is not available.# Functional Specification: 1PA002 — Effective Date and Retrospective Processing for Ordinary Rate of Pay (ORP) Changes

---

## 1. Business Background

The business has confirmed that the effective date for the revised definition of “Ordinary Rate of Pay” (ORP) for EPSS Period 1 is **12 December 2025**. This date supersedes all previous references (e.g., 01 October 2025). The change is expected to have retrospective effects on Period 1 earnings and payments, including payslip retro display, and requires a controlled recalculation for impacted employees. Manual adjustments made prior to Phase 4 must be reviewed for correctness; from Phase 4 onwards, ORP is assumed correct.

---

## 2. Scope

This specification applies to all SAP HR and payroll processes, OLIMS integrations, and reporting functions that reference the ORP for EPSS Period 1. It covers the recalculation of earnings/payments from the new effective date, handling of retros, and associated controls.

- The effective date for the revised ORP definition is confirmed as 12 December 2025. Previous references to 1 October 2025 or 27 September 2024 are superseded and not applicable unless further evidence is provided.
- The business requirement includes enforcing retroactive recalculation for all impacted Period 1 employees to the chosen effective date, acknowledging that this may result in higher or lower claims and corresponding changes in payslip retro displays.
- If no employees were in Period 1 between 27 September 2024 and 30 September 2024, no action is required for that period.

---

## 3. Detailed Functional Requirements

### 3.1 Certificate Storage and Upload

- No change to certificate upload logic in OLIMS or SAP as a result of this requirement.

### 3.2 Creation of IT0014 9WCO

- No change to IT0014 9WCO creation logic for this requirement.

### 3.3 Payroll Processing and Wagetype Suppression

- The revised ORP definition is effective from **12 December 2025**.
- All payroll calculations for Period 1 must use the new ORP definition from this date.
- Payroll must recalculate impacted Period 1 employees from 12 December 2025, including retroactive adjustments. This includes enforcing retroactive recalculation for all P1 employees to the effective date, with corresponding changes in P1 earnings and payslip retro displays.
- Payslip retro display must reflect recalculated values from the effective date.

### 3.4 Case Management, Reporting, and Week Counting

- All reporting and week counting logic referencing ORP must use the new definition from 12 December 2025.
- Reports must clearly indicate the effective date of the ORP change.

### 3.5 Handling Late/Out-of-Sequence Data

- If data is entered or corrected after the effective date, the system must trigger retroactive recalculation for all affected periods from 12 December 2025.

### 3.6 Bulk Uploads

- Any bulk data uploads or adjustments affecting ORP must apply the new definition from the effective date.

### 3.7 Error Handling & Audit Trail

- All retroactive recalculations and adjustments must be logged for audit purposes.
- Manual adjustments made prior to Phase 4 must be reviewed and flagged if incorrect. Manual payments made from 2024 up to October 2025 must be differentiated from other manual payments, and reviewed for correctness as part of the controlled recalculation.

---

## 4. Exception Handling

- Manual adjustments made before Phase 4 must be reviewed for correctness. Manual payments from 2024 up to October 2025 must be identified and checked for compliance with the new ORP definition.
- If errors are found in pre-Phase 4 adjustments, they must be corrected as part of the controlled recalculation.
- No override or static manual ORP values are permitted; all calculations must use the system-derived ORP from IT0008 as per the new definition.
- If the effective date is changed in future, review whether any action is required for periods prior to 12 December 2025, especially 27 September 2024 to 30 September 2024, and document accordingly.

---

## 5. Compliance/Controls

- Payroll controls must ensure that all Period 1 payments from 12 December 2025 use the new ORP definition.
- OLIMS access and reporting must reflect the correct ORP values and effective dates.
- Reconciliation processes must confirm that all impacted employees have been recalculated from the effective date.

---

## 6. References and Linked Requirements

- Cross-references: 1PA001 (ORP definition), 1PA003 (override out of scope), DOA010, DOA012, DOB001–DOB005, P905 retro logic.

---

## 7. Acceptance Criteria

- [x] The effective date for the new ORP definition is set to 12 December 2025 in all relevant systems.
- [x] All Period 1 payroll calculations from 12 December 2025 use the new ORP definition.
- [x] Retroactive recalculation is performed for all impacted employees from the effective date, with changes in P1 earnings and payslip retro displays enforced.
- [x] Payslip retro display reflects recalculated values.
- [x] Manual adjustments prior to Phase 4 are reviewed and corrected if necessary, including differentiation of manual payments made from 2024 up to October 2025.
- [x] All changes and recalculations are logged for audit.
- [x] Reports and week counting logic use the new ORP definition from the effective date.
- [x] No static/manual ORP overrides are permitted.# Functional Specification: 1PA003 — ORP Override Capability for Claims Officers (REMOVED / PARKED)

---

## 1. Business Background

The Ordinary Rate of Pay (ORP) is a critical input for calculating EPSS Period 1 payments. Historically, there was a proposal to allow claims officers to override the system-calculated ORP in exceptional cases (e.g., to address data anomalies or business exceptions). However, following a workshop on 19 January 2026, the business determined that the correct approach is to ensure the ORP definition and system behaviour are accurate, rather than providing a manual override facility. As a result, the requirement for an ORP override capability is now out of scope and closed.

---

## 2. Scope

This specification documents the decision to remove the ORP override capability for claims officers from the EPSS solution. All references to manual ORP overrides in OLIMS or SAP are to be disregarded. The system must rely solely on the ORP as derived from SAP HR InfoType 0008 (Basic Pay) and the authoritative ORP wagetype list.

- The original requirement was to future-proof the EPSS solution by providing claims officers with an override feature to amend OLIMS ORP values, including both initial and subsequent values due to pay or rank increases during Period 1 eligibility. This was to be driven from OLIMS or via IT0014 in SAP, with defined start/end dates to support payroll splits. However, this requirement is now parked/removed and out of scope.

---

## 3. Detailed Functional Requirements

### Certificate Storage and Upload

- No impact. ORP override fields are not required in certificate upload or storage processes.

### Creation of IT0014 9WCO

- No impact. IT0014 9WCO records will use the system-calculated ORP only.

### Payroll Processing and Wagetype Suppression

- Payroll must use the ORP derived from IT0008 and the approved wagetype list.
- No manual override or static value entry is permitted for ORP.
- The original intent was for overrides to be effective-dated and to drive payroll splits, but this is not implemented. All ORP values must be system-derived.

### Case Management, Reporting, and Week Counting

- OLIMS and SAP must display ORP values based solely on IT0008 and its effective dates.
- No override fields, audit logs, or reporting for ORP overrides are required.

### Handling Late/Out-of-Sequence Data

- Any corrections to ORP must be made by updating the underlying IT0008 data or wagetype list, not by manual override.

### Bulk Uploads

- No ORP override fields or logic are to be included in bulk upload templates or processes.

### Error Handling & Audit Trail

- No error handling or audit trail is required for ORP overrides, as the capability is not implemented.
- Warning: Static manual overrides would not reflect retroactive changes to ORP wage types (e.g., retro pay rises or changes to wage type definitions). A business process would have been required to review and maintain overrides, but this is not applicable as the override capability is removed.
- Any identified issues with ORP should be resolved by fixing system data or configuration, not by manual override.

---

## 4. Exception Handling

- If the override capability is reintroduced in the future, it must be date-ranged, drive payroll splits, and include a process for review/maintenance to ensure alignment with retrospective pay rises or wagetype definition changes.
- All corrections to ORP must be made via IT0008 or the wagetype list, not by static override.
- If override capability is reintroduced, it must be effective-dated, drive payroll splits, and include a business process for review and maintenance to accommodate retroactive changes to ORP wage types.

---

## 5. Compliance/Controls

- Payroll controls must ensure only IT0008-derived ORP is used.
- OLIMS access and reporting must not expose or reference any ORP override fields.
- Reconciliation and audit processes must confirm that no manual ORP overrides are present.

---

## 6. References and Linked Requirements

- Cross-references: 1PA001, 1PA002, OLG001, OLG003–OLG006 (all override-related requirements marked as removed/parked).
- See authoritative “ORP WT list” worksheet for included wagetypes.

---

## 7. Acceptance Criteria

- [x] No UI or backend fields exist for ORP override in OLIMS or SAP.
- [x] All ORP values are sourced from IT0008 and the approved wagetype list.
- [x] No audit or reporting logic references ORP override.
- [x] Documentation and training materials reflect that ORP override is out of scope.
- [x] Any future change to reintroduce override must follow the process outlined in Section 4.# Functional Specification: 1PA004 — EPSS Ex-Gratia One-Off Payment Wagetype

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires the ability to make a one-off, ex-gratia payment to eligible officers. This payment is not related to termination and is intended to address specific scenarios as determined by business policy. The payment must be processed through SAP payroll using a new wagetype, with all characteristics and business rules defined and approved by the relevant stakeholders. Recorded that the ex-gratia payment is a one-off, not termination-related, and is to be processed per eligible officer as determined by business policy. The payment is not a standard amount and must be calculated per person. The purpose is to provide a payment in advance of legislation approval, not as a recurring or termination payment.

---

## 2. Scope

This specification covers the creation, configuration, and processing of a new wagetype in SAP ECC (ABAP) for EPSS ex-gratia one-off payments. It includes data entry, workflow, payroll integration, audit, and reporting requirements. The scope excludes any override or recurring payment functionality. The scope includes creation of a new wagetype to back pay eligible officers for an ex-gratia payment, with all wagetype characteristics (description, infotype, tax method, payslip display, STP2, finance posting, etc.) to be provided in the wagetype maintenance form.
- Data entry workflow is confirmed: Shared Services (SS) will enter the payment directly in SAP via transaction PA30, based on authorised request and supporting documentation.
- The business must confirm if the ex-gratia payment is to be treated as a $1 payment for Period 1 week counting; if so, entry must align to week counting logic.
- Recorded that if an officer is detached and receives a new employee number, the old number must be retained in OLIMS and the new number sourced from communications (IT0105) subtype FREM (to be confirmed in design). The ESG and employee number range are also used to acknowledge the FREM (IT0105) as a detached. This is to be confirmed if FREM or another method is used during design. See also DOA004.
- Incident creation in OLIMS is not permitted after employee termination; the employee must be active. Any new incidents after termination must have a date of determination (dod) within the period when the initial employee number was active. It is unlikely but possible for a detached officer to file a claim for a period when they were originally active. It is unclear if old incidents can be updated for dates pre-termination. It is also unclear if certificate P905 can have entries for dates after termination. The push to 9WCO must be to the new employee number; a check must be performed to ensure a new number exists before accepting the certificate.

---

## 3. Detailed Functional Requirements

### 3.1 Certificate Storage and Upload

- Not applicable for this requirement.

### 3.2 Creation of Ex-Gratia Wagetype

- A new wagetype must be created in SAP for EPSS ex-gratia one-off payments.
- Required characteristics (to be provided in the wagetype maintenance form):
  - **Wagetype code:** [TBC]
  - **Description:** "EPSS ex-gratia — one-off" (or as specified by business)
  - **Infotype:** [TBC, e.g., IT0015 or cumulative wagetype]
  - **Tax/PAYG treatment:** [TBC]
  - **Payslip visibility and label:** [TBC]
  - **STP2 reporting:** [TBC]
  - **FICO/GL posting details:** [TBC, finance sign-off required]
  - **Retro/effective-dating behaviour:** [TBC]
  - **Calculation method:** Manual entry per officer; amount authorised by HSWC. Payment is not a standard value and must be calculated per person.
  - **Data entry workflow:** Shared Services (SS) enters the ex-gratia payment in SAP via PA30, based on authorised request and supporting documentation. Claims officer initiates/authorises in OLIMS, attaches wagetype maintenance form/finance approval, payroll processes via the new wagetype in the next run.
  - **Week counting treatment:** Business to confirm if ex-gratia counts as a $1 payment for Period 1 week counting or as a full payment; entry must align to week counting logic if required. Decision to be recorded in wagetype form and ORP WT list.
  - **Audit & reporting:** All entries must retain evidence (document upload), show created/authorised by, and be reportable in Document Overview.

### 3.3 Payroll Processing and Wagetype Suppression

- The new wagetype must be processed in payroll only when authorised and entered as per workflow.
- No automatic or recurring payments; only single, manual entries are permitted.
- The wagetype must not trigger any other payroll actions or overrides.
- If an employee already received higher earnings in a week versus the ORP (including extra wagetypes), business must confirm if/how ex-gratia is to be applied in such cases. [TBC]

### 3.4 Case Management, Reporting, and Week Counting

- OLIMS must support the workflow for claims officers to initiate, authorise, and document ex-gratia payments.
- All ex-gratia payments must be included in relevant audit and compliance reports.
- Week counting logic for Period 1 must be updated if business confirms ex-gratia payments count as a $1 payment.

### 3.5 Handling Late/Out-of-Sequence Data

- Retroactive entries must follow the effective-dating and retro posting rules defined in the wagetype maintenance form.
- Any late or out-of-sequence ex-gratia payments must be processed in accordance with payroll controls.

### 3.6 Bulk Uploads

- Not applicable; ex-gratia payments are single, manual entries only.

### 3.7 Error Handling & Audit Trail

- All ex-gratia entries must be auditable, with supporting documentation attached.
- Any errors in data entry or processing must be logged and reportable.
- Changes or deletions must be tracked for compliance.

---

## 4. Exception Handling

- Ex-gratia payments are not to be used for termination-related scenarios; this is confirmed by business.
- Any retroactive ex-gratia payments must be explicitly authorised and documented.
- If business rules change regarding week counting or eligibility, the wagetype configuration and workflow must be updated accordingly.
- If the business process for determining ex-gratia payment in cases where the employee already had higher earnings in a week is not confirmed, flag as [TBC].
- If a detached officer scenario arises, ensure the correct employee number is used for all ex-gratia payment processing and certificate handling, referencing IT0105 FREM as required. Flag any uncertainty regarding incident or certificate updates post-termination as [TBC].

---

## 5. Compliance/Controls

- All ex-gratia payments require finance sign-off and supporting documentation.
- Payroll controls must ensure only authorised payments are processed.
- OLIMS access and workflow must restrict data entry and approval to designated roles.
- All payments must be included in audit and reconciliation reports.

---

## 6. References and Linked Requirements

- Cross-references: 1PA001–1PA003, ORP WT list, wagetype maintenance form, Document Overview reporting, finance sign-off process.
- See wagetype maintenance form for all required characteristics and business rules.
- See ORP WT list for week counting and inclusion logic.
- See also DOA004 for detached officer and employee number handling.

---

## 7. Acceptance Criteria

- [x] New wagetype is created with all required characteristics and business rules (to be provided in wagetype maintenance form).
- [x] Wagetype is available for manual entry in the designated infotype (e.g., IT0015).
- [x] Data entry workflow in OLIMS is implemented and restricts access to authorised users; SS enters payment in SAP via PA30.
- [x] All ex-gratia payments are processed only when fully authorised and documented.
- [x] Payslip displays the payment with the correct label and tax treatment.
- [x] All ex-gratia entries are included in audit and compliance reports.
- [x] Week counting logic is updated if required by business decision.
- [x] Error handling and audit trail requirements are met.
- [x] Finance sign-off and GL posting details are confirmed and implemented.
- [x] Detached officer scenarios are handled by retaining the old employee number in OLIMS and sourcing the new number from IT0105 FREM (to be confirmed in design).
- [x] Incident creation in OLIMS is blocked after termination; only incidents with dod during active employment are permitted.
- [x] Certificate and payment processing for detached officers checks for the existence of a new employee number before proceeding.
- [x] Any ambiguity regarding incident or certificate updates post-termination is flagged as [TBC].# Repository Guidelines

## Project Structure
- `combined.md` — source functional specs DOA001–DOA016.
- `DOA###_spec.md` — individual spec files.
- `FinalDOA.md` — consolidated functional spec (current source of truth).
- Support scripts: `ask_brd.py` (local helper to query BRD context).

## Build, Test, and Development Commands
- `python ask_brd.py -q "<question>"` — query the BRD context for clarifications.
- No build artifacts or automated tests are defined for this documentation repo.

## Writing & Formatting Style
- Markdown only; use `##`/`###` for hierarchy and concise bullet lists.
- Keep documents ASCII; avoid long quoted passages.
- For updates, prefer `apply_patch` with minimal diff noise.
- Cross-reference DOA items explicitly (e.g., “DOA014”).
- Treat every edit as part of a functional spec: expand points comprehensively, and ask clarifying questions before elaborating when requirements are not explicit.
- After each material update to specs, immediately run `ask_brd.py` to validate the change and address any BRD-identified gaps before proceeding.

## Naming Conventions
- Files: `DOA###_spec.md`, `FinalDOA.md`, `AGENTS.md`.
- Headings: Title Case; sections align with DOA numbering when relevant.
- Place new consolidated content in `FinalDOA.md`; keep legacy files unchanged unless instructed.

## Testing Guidelines
- None required; validate by proofreading and ensuring anchors/TOC entries work in Markdown.

## Commit & PR Guidelines
- Commits: imperative mood, concise (e.g., “Add WC external earnings rules”).
- PRs: describe scope, list key sections touched (`FinalDOA.md`, `AGENTS.md`), and note any open TBC items resolved or added.

## Agent-Specific Tips
- When needing business context, run `python ask_brd.py -q "<prompt>"` (local, no network). Use a strong prompt pattern for gpt-4.1, e.g.:  
  `python ask_brd.py -q "You are a careful analyst. 1) Do not invent facts. 2) Use only BRD context. 3) Provide a concise, comprehensive answer. Question: <your question here>"`.
- Respect 8-character personnel number and ESG rules when editing specs.
- For cross-section changes, update both Solution Overview and Acceptance Criteria to stay in sync.
