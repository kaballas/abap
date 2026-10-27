# Functional Specification: DOA014 — Workers Compensation External Earnings Offset for Detached Officers

---

## 1. Business Background

Detached officers (former police officers exited on medical grounds) may continue to receive EPSS benefits. For these officers, Workers Compensation (WC) payments are made directly by the insurer (EML), not by NSWPF. To ensure correct calculation of EPSS supplementary support, WC earnings from EML must be captured and offset against EPSS payments.

---

## 2. Scope

This requirement covers the process for uploading WC earnings paid by EML into OLIMS, creating a new WC External Earnings wagetype in SAP HR (IT0015) for detached officers, and ensuring these earnings reduce EPSS payments accordingly. It applies only to detached officers under the EPSS On Duty scheme.

- Recorded that Workers Compensation earnings from the insurer are to be uploaded as a file in OLIMS and create a Workers Compensation External Earnings wagetype in IT0015 to reduce the EPSS supplementary support payment for detached officers.
- WT 4901 "Workers Compensation" is not allowed in IT0015; a new wagetype is required for detached officer WC earnings, with characteristics to be provided in the wagetype maintenance form.
- The new wagetype is not the same as existing external earnings (e.g., 3670); it is a separate WT for detached WC.
- The OLIMS interface for IT0015 load will use the same area as for external earnings, with WT number input required for load/manual entries.

---

## 3. Detailed Functional Requirements

- A new wagetype (code TBC) is to be created in IT0015 for "WC External Earnings" for detached officers. This wagetype is separate from existing external earnings wagetypes (e.g., 3670).
- EML will provide a file of WC payments, which will be uploaded by the EPSS Claims Officer via OLIMS.
- The upload will:
  - Update the relevant OLIMS incident/claim.
  - Update the OLIMS EPSS external earnings tab.
  - Create/update the WC External Earnings wagetype in IT0015 for the detached officer’s non-employee number.
- The new wagetype will offset/reduce the calculated EPSS supplementary support payment in payroll, following the same behaviour as WT 4901 for top-up reduction.
- The wagetype must be reportable and auditable.
- The business process must clarify how this wagetype interacts with week counting and EPSS top-up calculations. If the employee is on S36 or S37, the new external earning WC should be read instead of 4901 to count weeks if there is no EPSS top-up.
- Specify that this wagetype does not replace existing wagetypes (e.g., 4901, 3670) but is a new, separate WT for detached officer WC payments.

---

## 4. Exception Handling

- If the EML upload file is missing mandatory fields or contains errors, the upload must fail with a clear error message and not update master data.
- If the employee number in the upload does not match a valid detached officer, the entry is rejected.
- If duplicate entries for the same period are detected, the system must flag for review before processing.
- If business processes require, clarify whether two wagetypes must be uploaded or if the new WT alone is sufficient for detached officer WC payments.

---

## 5. Compliance/Controls

- All uploads and changes to WC External Earnings must be logged for audit.
- Only authorised EPSS Claims Officers may upload or override WC External Earnings.
- All entries must retain supporting documentation (uploaded file/evidence).
- Reporting and reconciliation must be available for all WC External Earnings offsets.

---

## 6. References and Linked Requirements

- DOA013 (WC certificate upload logic for detached officers)
- DOB001–DOB008 (EML payment upload process)
- OLE001–OLE010 (External income offset model)
- CR001 (Manual entry of offsets via IT0015)
- P1001–P1006 (Week counting logic)
- RPN001–RPN005 (External Income and Payments reporting)
- WT maintenance form to be provided for the new wagetype.
- New requirement for S36/S37 week counting logic to read the new external earning WC if 4901 is not present (to be explained in a new BRD version).

---

## 7. Acceptance Criteria

- [x] New WC External Earnings wagetype is created in IT0015 and visible in SAP for detached officers, with characteristics provided in the wagetype maintenance form.
- [x] EML WC payment file can be uploaded via OLIMS, updating both OLIMS and SAP.
- [x] Uploaded WC earnings offset EPSS payments in payroll for detached officers, following the same behaviour as WT 4901 for top-up reduction.
- [x] All uploads, overrides, and deletions are audit logged.
- [x] Reports can be generated showing all WC External Earnings entries and their impact on EPSS payments.
- [x] Error handling is in place for invalid or duplicate uploads.
- [x] Supporting documentation is attached to each entry.
- [x] Business rules for week counting and offset logic are documented and implemented, including S36/S37 logic to read the new WT if 4901 is not present.