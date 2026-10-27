# Functional Specification: DOA010 — IT0008 Basic Pay Derivation for Detached Officers

---

## 1. Business Background

The EPSS scheme requires ongoing salary and benefit calculations for police officers who exit the organisation on medical grounds but remain eligible for EPSS payments as detached officers. For these officers, salary and benefit calculations must be based on their last active employment record, ensuring compliance with scheme rules and preventing future Award increases from being applied post-termination.

---

## 2. Scope

This specification covers the derivation and application of IT0008 (Basic Pay) for detached officers in the EPSS scheme. It defines how Period 1 Ordinary Rate of Pay (ORP) and Period 2 salary are sourced, how capacity utilisation is applied, and how retroactive changes are handled. It excludes override functionality and future Award pay increases for detached officers.

- Recorded that IT0008 basic pay record for a detached officer must default to the police officer’s last active IT0008 record and capacity utilisation (full time or part time) at the time of termination.
- For Period 2 salary, the calculation for detached officers is the same as when the employee was attached: the last salary at the end of Period 1 (while attached) is used as the base, with CPI applied as per normal. The 7-year clock for Period 2 continues from the original employee’s Period 2 start date, regardless of any employment gap.
- Only EPSS detached officers (distinctly identified, e.g., 5 series employees) are in scope for this requirement.

---

## 3. Detailed Functional Requirements

- For EPSS detached officers, Period 1 ORP and Period 2 salary must be derived from the last active IT0008 record of the original (attached) employee number, including capacity utilisation as at the last active date.
- For Period 2, the starting salary is the last Period 1 salary plus CPI applied until termination, then CPI is applied further for the detached officer for future pay runs. The calculation is as if the employee is continuous from attached to detached.
- The derived value remains static for Period 1 and is updated only for retro changes to the original record. No pay rises are to be added to ORP for detached officers; only CPI/indexation applies for Period 2.
- The system must identify and handle detached officers as a distinct cohort (e.g., by employee number range or ESG), ensuring correct salary sourcing and calculation logic.
- The Period 2 seven-year clock continues from the original employee’s Period 2 start date, regardless of any gap between termination and non-employee hire. RTD entries may be used to extend the Period 2 end date based on PID assessments, entered in OLIMS against the old employee number.
- Retro changes to the original attached IT0008 may impact detached Period 1/2/3 salary outcomes; these must be reflected in detached officer payments.
- The new detached officer employee group will not allow entry of all wage types in IT0008 as relevant for other employee groups. ORP/P2 salary is expected to be managed via manual entry against a new cumulative wage type or dynamic read back to the old terminated employee’s last active salary. Design to confirm.
- The current system behaviour is dynamic salary selection based on current salary in the payroll period. For detached officers, IT0008 must be frozen and not updated with future Award increases. Only CPI/indexation and retro changes to the original record are allowed.

---

## 4. Exception Handling

- If the original IT0008 record is missing or incomplete, flag the case for manual review and prevent automated payment calculation until resolved.
- If retro changes are made to the original IT0008 after the officer becomes detached, trigger recalculation of relevant payments for the detached record.
- If capacity utilisation data is inconsistent or unavailable, default to the last known value and log for audit.
- If the detached officer cannot be distinctly identified (e.g., by number range or ESG), flag for review and [TBC].

---

## 5. Compliance/Controls

- All salary derivations must be auditable, with clear linkage between the detached officer’s non-employee record and the original employee number.
- Changes to IT0008 on the original record after detachment must be logged and reported.
- Access to modify salary derivation logic or override values is restricted and monitored.
- Payroll controls must ensure no future Award increases are applied to detached officers post-termination.

---

## 6. References and Linked Requirements

- DOA010 (this requirement)
- DOA012 (no Award increases post-termination)
- DOA009 (linkage of employee numbers)
- DOA002, DOA017 (claim status/substatus for detached officers)
- [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [x] Period 1 ORP and Period 2 salary for detached officers are sourced from the last active IT0008 of the original employee, including capacity utilisation as at the last active date.
- [x] No future Award pay increases are applied to detached officers after termination; only CPI/indexation and retro changes are allowed.
- [x] Capacity utilisation is correctly applied as per the original record.
- [x] Retro changes to the original IT0008 are reflected in detached officer payments.
- [x] Detached officers are identified and processed as a distinct cohort (e.g., by number range or ESG).
- [x] All derivations and changes are auditable and reportable.
- [x] Exception scenarios (missing data, retro changes, identification issues) are handled as specified.