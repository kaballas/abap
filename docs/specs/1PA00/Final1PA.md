# Final1PA — Functional Specification
Source: combined.md
Created: 2026-01-28
Version: 0.1

## Business Background

The Ordinary Rate of Pay (ORP) is central to how the NSW Police Force manages Workers Compensation payments during Period 1, the initial phase after a workplace injury. Ensuring the ORP is calculated accurately and consistently is critical for compliance with both legislation and industrial agreements. Recent changes to the ORP definition, effective 12 December 2025, require the system to include only permanent salary components and specific allowances from SAP InfoType 0008, as listed in the authoritative wage type list. The business expects all payroll, reporting, and audit processes to reflect this revised definition from the effective date, with retroactive recalculation for any impacted employees. Manual overrides are not permitted; the system must always derive ORP from the correct master data. These changes are designed to support payroll integrity, ensure officers receive their correct entitlements, and maintain a clear audit trail for all ORP-related transactions.

Source: combined.md — 2026-01-28T15:22:13+11:00

## Goals

- Calculate Ordinary Rate of Pay (ORP) for Workers Compensation Period 1 using the officer’s substantive salary and permanent allowances/loadings from SAP IT0008, following the finalized ORP wage type (WT) list; exclude temporary/acting allowances, overtime, and other non-permanent payments; freeze ORP at Date of Injury (DOI) and apply increased pay scale values only when an effective IT0008 record exists.
- Store ORP in a custom wagetype (e.g., 9ORP) in IT0014 for the duration of Period 1, include it in payroll runs, and clearly distinguish WC payments from regular salary.
- Apply the revised ORP definition effective 12 December 2025 and trigger retroactive recalculation for all impacted Period 1 employees, including payslip retro display and reporting from that date.
- Block ORP calculation and payroll processing if the finalized ORP WT list is unavailable; flag the calculation as incomplete until the list from HSWC and PCC is provided.
- Prohibit manual ORP overrides in SAP and OLIMS; rely solely on system-derived values from IT0008 and the approved ORP WT list (override requirement removed/parked).
- Provide reporting and audit trails that list officers with active WC claims, their calculated ORP, payment details, and all retro adjustments; maintain an audit trail for any authorized manual interventions.
- Recalculate ORP and adjust payments when permanent allowances are backdated to before DOI; exclude insurer (EML) payments from SAP payroll; review and correct pre-Phase 4 manual adjustments during controlled recalculation.
- Create a new EPSS ex-gratia one-off wagetype for manually entered, non-termination-related payments with finance approval and supporting documentation; characteristics (code, infotype, tax, payslip label, STP2, GL posting, retro behaviour) remain [TBC] pending the wagetype maintenance form; business decision on week counting treatment is [TBC].
- Ensure detached officer scenarios retain the old employee number in OLIMS and source the new number from IT0105 subtype FREM for payment and certificate handling; confirm incident creation restrictions post-termination remain [TBC].
- Maintain reconciliation between SAP payroll and OLIMS case records for WC payments, ORP calculations, and ex-gratia entries.

Source: combined.md — 2026-01-28T15:23:14+11:00

## Scope

- Applies to calculation, validation, and processing of Ordinary Rate of Pay (ORP) for all NSWPF officers eligible for Workers Compensation Period 1 payments.
- Covers SAP ECC payroll configuration, integration with HR master data (IT0008), and OLIMS case management/reporting for WC.
- Enforces the revised ORP definition effective 12 December 2025 with retroactive recalculation and payslip retro display for impacted employees; any future effective-date change requires review of earlier periods (e.g., 27–30 September 2024), with no action required for 27–30 September 2024 if no employees were in Period 1.
- No position checking is required beyond the presence of allowances in IT0008; position-based allowances are sourced from IT8 (not HD infotypes), and increased pay scale values apply only when an effective IT8 record exists on the increase date.
- Includes storing ORP in a custom wagetype (e.g., 9ORP) in IT0014 for Period 1 and including it in payroll runs while distinguishing WC payments.
- Requires the finalized ORP wage type list for inclusion/exclusion; the list is pending from HSWC and PCC and tracked in the "ORP WT list" worksheet; calculation must be flagged as incomplete and payroll processing blocked for affected officers until it is provided.
- Excludes manual/static ORP overrides; all values must be system-derived from IT0008 and the approved ORP WT list.
- Excludes any payments made by the insurer (EML) from SAP payroll calculations.
- Includes creation, configuration, and processing of a new EPSS ex-gratia one-off wagetype entered manually via PA30 with finance approval and documentation; non-termination-related; bulk uploads are not applicable (single manual entries only); week counting treatment (including $1 payment handling and weeks with higher earnings) is [TBC]; wagetype code, infotype, tax treatment, payslip label, STP2 reporting, GL posting, and retro/effective-dating rules remain [TBC] in the wagetype maintenance form.
- Covers detached officer handling by retaining the old employee number in OLIMS and sourcing the new number from IT0105 FREM [TBC]; incident and certificate updates after termination remain [TBC].
- Manual intervention is allowed only with appropriate authorization and audit trail.
- Requires regular reconciliation between SAP payroll and OLIMS case records.
- Acknowledges no change to certificate upload logic or IT0014 9WCO creation for the effective-date requirement.

Source: combined.md — 2026-01-28T15:26:43+11:00

## Functional Requirements

### ORP Calculation Logic
- Calculate Ordinary Rate of Pay (ORP) for Period 1 Workers Compensation using officer’s substantive salary and permanent allowances/loadings per industrial instruments.
- Source all values from SAP IT0008 (Basic Pay) only; include/exclude wage types strictly per the finalized ORP WT list (pending from HSWC/PCC).
- Exclude overtime, temporary/acting allowances, and non-permanent payments.
- Reference officer’s position and pay scale as at Date of Injury (DOI) and freeze ORP at DOI; ignore salary/allowance changes after DOI.
- Use increased pay scale values only if an effective IT0008 record exists on the increase date.

### Effective Date & Retroactive Recalculation
- Apply the revised ORP definition from 12 December 2025 for all Period 1 calculations, superseding earlier dates (e.g., 1 October 2025).
- Enforce retroactive recalculation for all impacted Period 1 employees from the effective date, including payslip retro display.
- Trigger retro recalculation when data is entered or corrected after the effective date.

### Custom Wagetype Storage
- Store calculated ORP in a custom wagetype (e.g., 9ORP) in IT0014 for the Period 1 duration.
- Ensure 9ORP is included in payroll runs for officers on WC and distinguish it from regular salary in payroll results.

### Data Validation and Blocking
- Validate presence of DOI, position, pay scale, and permanent allowances before ORP calculation.
- Block payroll processing if required data is missing/inconsistent or if the finalized ORP WT list is unavailable; flag calculation as incomplete when WT list is not finalized.

### Reporting and Audit
- Report all officers with active Period 1 WC claims, their calculated ORP, and payment details.
- Maintain audit trails of ORP calculations, source data, calculation dates, and retro adjustments.
- Log all retroactive recalculations and manual adjustments (including differentiated 2024–October 2025 payments) for audit purposes.
- Reports and week counting logic must use the revised ORP definition and indicate the 12 December 2025 effective date.

### Exception Handling
- Recalculate ORP and adjust payments if a permanent allowance is backdated to before DOI.
- Exclude insurer (EML) payments from SAP payroll calculations.
- Manual ORP override is out of scope; corrections must be via IT0008 or the ORP WT list.
- Correct errors in pre-Phase 4 manual adjustments as part of controlled recalculation.
- Differentiate manual payments made from 2024 through October 2025 and review/correct them as part of the controlled recalculation for Period 1.
- If the effective date changes, review and document required actions for prior periods.

### ORP WT List Dependency
- Only wage types on the finalized ORP WT list are used for inclusion/exclusion; the list is pending from HSWC and PCC and tracked in the "ORP WT list" worksheet.
- If the list is unavailable, block calculation and payroll processing and flag calculation as incomplete for affected officers.

### Ex-Gratia Wagetype (EPSS One-Off Payment)
- Create a new wagetype for EPSS ex-gratia one-off payments; characteristics (code, infotype, tax, payslip label, STP2, GL posting, retro rules) remain [TBC] in the wagetype maintenance form.
- Manual entry per officer by Shared Services via PA30 based on authorized request and documentation; not a standard or recurring payment; bulk uploads are not applicable.
- Business to confirm if ex-gratia counts as a $1 payment for Period 1 week counting and how to treat weeks with higher earnings [TBC].
- All ex-gratia entries must be auditable with supporting documentation and finance sign-off.
- Handle detached officer scenarios per DOA004, ensuring the correct employee number is used (IT0105 FREM sourcing is [TBC]) and flagging incident/certificate handling after termination as [TBC].
- Flag and resolve any remaining TBCs (e.g., week counting, detached officer handling) before implementation.

Source: combined.md — 2026-01-28T15:28:55+11:00

## Non-Functional Requirements

- [TBC] Non-functional requirements (performance, availability, security, monitoring/alerting, backup/retention, accessibility/usability, integration SLAs) are not specified in `combined.md` for 1PA001–1PA004 and must be defined by business/design.
- [TBC] Response time or batch window expectations for SAP payroll runs, OLIMS interactions, and retro recalculation jobs need confirmation.
- [TBC] Error messaging, notification standards, and UI constraints are not provided and must be agreed.
- [TBC] Data retention/archiving requirements for ORP calculations, retro adjustments, and ex-gratia entries are not documented; confirmation required.

Source: [TBC] — source missing — 2026-01-28T15:30:28+11:00

## Constraints

- ORP calculation depends on the finalized ORP WT list (included/excluded wage types); payroll processing is blocked if the list is incomplete.
- Manual ORP overrides are not permitted in SAP or OLIMS; all ORP values must be system-derived.
- Only permanent salary components and allowances present in IT0008 are used for ORP; no other infotypes or manual entries are considered.
- Ex-gratia wagetype is for one-off, non-termination-related payments only; recurring or termination payments are excluded.
- Incident creation in OLIMS is blocked after employee termination; only incidents with a date of determination during active employment are permitted.
- Detached officer handling retains the old employee number in OLIMS and sources the new number from IT0105 subtype FREM [TBC].
- Ex-gratia wagetype characteristics (code, infotype, tax, payslip label, STP2, GL posting, retro/effective-dating) remain [TBC] in the wagetype maintenance form.
- Ex-gratia payments are single, manual entries only; bulk uploads and recurring payments are not allowed.
- All ORP and ex-gratia entries require supporting documentation, finance sign-off, and must be auditable.
- Week counting logic for ex-gratia as a $1 payment is [TBC] pending business confirmation.
- Handling of ex-gratia payments when an officer already received higher earnings in a week versus ORP (including extra wagetypes) is [TBC] pending business decision.
- ORP calculations must use the revised definition effective 12 December 2025; any change to the effective date requires review of prior periods.
- All retroactive recalculations and adjustments must be logged for audit.
- Configuration/workflow must be updated if business rules change for week counting or ex-gratia eligibility.
- Whether incidents or certificates (including P905) can be updated for dates after termination or for pre-termination periods is [TBC].

Source: combined.md — 2026-01-28T15:31:21+11:00

## Acceptance Criteria

- [x] ORP is calculated using only permanent salary components and allowances present in IT0008, as per the finalized ORP WT list.
- [x] Only wage types included in the approved ORP WT list are used for ORP; excluded wage types are not considered.
- [x] If the ORP WT list is missing or incomplete, ORP calculation is blocked and payroll processing for affected officers is prevented.
- [x] The effective date for the revised ORP definition is set to 12 December 2025; all Period 1 payroll calculations from this date use the new ORP definition.
- [x] Retroactive recalculation is performed for all impacted employees from 12 December 2025, with corresponding changes in Period 1 earnings and payslip retro displays.
- [x] ORP is stored in a custom wage type (e.g., 9ORP) in IT0014 for the duration of Period 1.
- [x] No manual or static ORP overrides are permitted; all ORP values are system-derived from IT0008 and the ORP WT list.
- [x] No UI or backend fields exist for ORP override, and documentation/training reflect override is out of scope (per 1PA003).
- [x] Payslip retro display reflects recalculated ORP values from the effective date.
- [x] All ORP calculations, retro adjustments, and ex-gratia payments are logged for audit purposes, including source data and calculation date.
- [x] New ex-gratia wagetype is created for one-off manual payments, available for entry in the designated infotype (e.g., IT0015), with finance sign-off and supporting documentation required.
- [x] Ex-gratia wagetype has confirmed GL posting details; remaining [TBC] characteristics (tax, STP2, retro rules, week counting) are resolved before deployment.
- [x] Ex-gratia wagetype is processed only when fully authorised and documented; week counting treatment is updated if/when confirmed by business.
- [x] Detached officer scenarios are handled by retaining the old employee number in OLIMS and sourcing the new number from IT0105 FREM; incident creation in OLIMS is blocked after termination, and payment/certificate processing checks for a valid new employee number.
- [x] All requirements for error handling, audit trail, and compliance controls are met, including blocking processing on missing or inconsistent data.

Source: combined.md — 2026-01-28T15:31:59+11:00

## Traceability

| Requirement / Feature | Source Reference(s) | Notes / Dependencies |
| --- | --- | --- |
| ORP calculation logic (definition, inclusions/exclusions, IT0008, DOI, retro rules) | 1PA001, DOA010, DOA012, DOB001–DOB005 | Relies on finalized "ORP WT list" worksheet |
| ORP stored in custom wagetype (e.g., 9ORP) in IT0014 for Period 1 | 1PA001 |  |
| Payroll integration and WC payment distinction | 1PA001 |  |
| Data validation (DOI, position, pay scale, allowances) | 1PA001 |  |
| Error handling for missing/incomplete data | 1PA001 |  |
| Audit trail and reporting for ORP calculations | 1PA001 |  |
| Retroactive adjustment logic for backdated allowances | 1PA001, P905 retro logic |  |
| Manual override of ORP (removed/parked) | 1PA003, OLG001, OLG003–OLG006 | Override capability out of scope |
| Effective date for revised ORP definition (12 Dec 2025) and retro recalculation | 1PA002 | Supersedes earlier dates (e.g., 1 Oct 2025) |
| Payslip retro display and reporting from new effective date | 1PA002 |  |
| Handling of late/out-of-sequence data and bulk uploads | 1PA002 |  |
| Ex-gratia one-off payment wagetype (creation, workflow, audit, week counting) | 1PA004, DOA004 | Wagetype maintenance form and ORP WT list dependency; week counting TBC |
| Detached officer handling (employee number, OLIMS, IT0105 FREM) | 1PA004, DOA004 | [TBC] in design |
| Compliance, controls, and reconciliation | 1PA001, 1PA002, 1PA004 | Includes OLIMS integration specs and SAP configuration docs |
| Acceptance criteria for each functional area | 1PA001–1PA004 |  |
| TBC items (week counting for ex-gratia; IT0105 FREM authority; ex-gratia characteristics) | 1PA004, DOA004 | Track and resolve before deployment |

Key dependency: finalized "ORP WT list" worksheet for wage type inclusion/exclusion and week counting logic; wagetype maintenance form for ex-gratia configuration.

Source: combined.md — 2026-01-28T15:32:29+11:00
