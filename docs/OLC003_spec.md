# Functional Specification: OLC003 — Add "Dispute origin or Jurisdiction" Field to Request for Review Tab

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust tracking and categorisation of review requests, particularly for disputes. To improve reporting and compliance, a new dynamic drop-down field titled “Dispute origin or Jurisdiction” is needed in the OLIMS Request for Review tab, mapped to the review type "Dispute." This will enable more granular data capture and support scheme-wide reporting and audit requirements.

---

## 2. Scope

This specification covers the addition of a new dynamic drop-down field, “Dispute origin or Jurisdiction,” to the Request for Review tab in OLIMS. The field will be visible and mandatory only when the review type is set to "Dispute." The options will include predefined values and a free text field if "Other" is selected. The change applies to both new and edited records.

---

## 3. Detailed Functional Requirements

- Add a new dynamic drop-down field titled “Dispute origin or Jurisdiction” to the Request for Review tab in OLIMS.
- The field is only displayed and required when the review type is "Dispute."
- Drop-down options:
    - Direct - Claimant
    - Direct - Solicitor
    - PANSW
    - Personal Injury Commission
    - Industrial Relations Commission
    - Other (if selected, display a free text field for description)
- The field must be mandatory for all new and edited "Dispute" review records.
- The value must be stored in the OLIMS database and included in relevant reports.
- The field must be editable for existing records when the review type is "Dispute."
- Audit trail: All changes to this field must be logged for compliance.

---

## 4. Exception Handling

- If the review type is not "Dispute," the field is hidden and not required.
- If "Other" is selected but no free text is entered, display a validation error and prevent save.
- If a user attempts to save a "Dispute" review without selecting a value, display a mandatory field error.

---

## 5. Compliance/Controls

- All changes to the “Dispute origin or Jurisdiction” field are audit logged.
- Access to edit this field is restricted to authorised claims officers and supervisors.
- The field is included in reporting for compliance and reconciliation.

---

## 6. References and Linked Requirements

- Cross-references: OLC001, OLC002, OLC004–OLC006, RPM003 (Request for Review reporting), OLIMS audit requirements.
- Related business rules: See EPSS Phase 5 BRD, Request for Review tab enhancements.

---

## 7. Acceptance Criteria

- [ ] The “Dispute origin or Jurisdiction” field is visible and mandatory only for review type "Dispute."
- [ ] All specified drop-down options are available, with a free text field for "Other."
- [ ] Field is stored and reportable in OLIMS.
- [ ] Field is editable for new and existing "Dispute" records.
- [ ] Validation errors are shown if required fields are missing.
- [ ] All changes are audit logged.
- [ ] Access controls are enforced.
- [ ] Field appears in Request for Review reports.