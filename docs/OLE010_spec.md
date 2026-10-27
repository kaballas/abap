# Functional Specification: OLE010 — External Income and Payment Offset Model

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires accurate calculation of supplementary support payments to eligible officers. To ensure fairness and compliance, any external income or payments received by an officer must be offset against EPSS entitlements. The OLE010 requirement defines the process, data model, and system integration for capturing, validating, and reporting external income and payment offsets in OLIMS and SAP HR/Payroll.

---

## 2. Scope

This specification covers:
- Data entry and management of external income/payment offsets in OLIMS.
- Integration with SAP IT0015 (Additional Payments) for wage type 3670 and related wage types.
- Business rules for offset calculation, audit, and reporting.
- User interface and workflow for claims officers.
- Handling of recurring and one-off offsets, document attachment, and audit trail.

---

## 3. Detailed Functional Requirements

- **OLE001**: OLIMS must integrate with SAP IT0015 for external income/payment offsets, using wage type 3670 and any additional wage types as defined by business.
- **OLE002**: The OLIMS ‘Other/External Earnings’ tab will be used by EPSS Claims Officers to enter offset records, with mandatory supporting documentation.
- **OLE003**: A new field "Earning Category" (Income or Payment) must be added in OLIMS, with clear definitions and mapping to wage types.
- **OLE004**: For "Income" category, a selectable list of income types (e.g., PAYG, self-employment, superannuation) must be provided.
- **OLE005**: For "Payment" category, a selectable list of payment types (e.g., lump sum, settlement, insurance) must be provided.
- **OLE006**: Multiple earning types may be entered for overlapping date ranges; system must allow multiple wage type entries for the same period if required.
- **OLE007**: Claims Officers can create or delete entries only; updates/edits are not permitted. Deletion is blocked if the payroll control record is locked.
- **OLE008**: Deleted entries must remain visible in the audit trail, accessible via OLIMS or SAP audit reports.
- **OLE009**: When an entry is deleted, any attached document is flagged as inactive (not physically deleted) to maintain audit integrity.
- **OLE010**: Both one-off and recurring offsets can be created, with start and end dates driving recurrence. Recurring entries may be automated if required by business rules.
- **CR001**: All offset entries must be passed to SAP IT0015 using wage type 3670 or as otherwise specified.

---

## 4. Exception Handling

- If the payroll control record is locked, OLIMS must display an error and prevent creation or deletion of offset entries.
- If required fields (e.g., documentation, earning type) are missing, OLIMS must block save and display a validation error.
- Deletion of entries is logical (inactive flag); physical deletion is not permitted.
- Any integration failure with SAP must be logged and reported to the Claims Officer for manual follow-up.

---

## 5. Compliance/Controls

- All offset entries and deletions are audit logged, including user, date/time, and action.
- Supporting documentation is mandatory and must be retained for compliance.
- Only authorized users (EPSS Claims Officers) can create/delete entries.
- Offset data is reportable for reconciliation and compliance checks.
- Payroll controls ensure offsets are only processed for eligible periods and employees.

---

## 6. References and Linked Requirements

- Cross-references: DOA010, DOA012, DOB001-DOB005, P905 retro logic.
- Related requirements: OLE001–OLE009, CR001.
- See also: SAP HR IT0015, OLIMS External Earnings tab, audit/reporting requirements.

---

## 7. Acceptance Criteria

- [ ] OLIMS allows creation and deletion (not update) of external income/payment offset entries.
- [ ] Earning Category and Earning Type fields are present and enforced.
- [ ] Mandatory documentation is attached for each entry.
- [ ] Multiple entries for overlapping dates and types are supported.
- [ ] Deleted entries and documents remain visible in the audit trail.
- [ ] Integration with SAP IT0015 (WT 3670) is functional and reliable.
- [ ] Recurring and one-off offsets are supported with correct date logic.
- [ ] Exception handling and error messages are implemented as specified.
- [ ] All actions are audit logged and reportable.
- [ ] Compliance controls and user access restrictions are enforced.