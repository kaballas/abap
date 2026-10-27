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
- Calculation is blocked if the finalized list of included/excluded allowances is not available.