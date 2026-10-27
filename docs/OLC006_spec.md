# Functional Specification: OLC006 — Add a new dynamic drop down field titled “Dispute Type” mapped to review type ‘Dispute’

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust and auditable management of claim reviews, including disputes. To improve data capture and reporting, a new dynamic drop-down field for “Dispute Type” is needed in the OLIMS Request for Review tab, mapped specifically to the review type ‘Dispute’. This will standardise dispute categorisation and support scheme-wide reporting and quality assurance.

---

## 2. Scope

This specification covers the addition of a new “Dispute Type” dynamic drop-down field in the OLIMS Request for Review tab, mapped to the review type ‘Dispute’. The field will include predefined options and a free text entry if “Other” is selected. The change applies to all new and edited dispute records.

---

## 3. Detailed Functional Requirements

- Add a new dynamic drop-down field titled “Dispute Type” to the Request for Review tab in OLIMS.
- The field is only visible and mandatory when the review type is set to ‘Dispute’.
- Drop-down options:
    - Eligibility for payment
    - Discontinue a payment
    - Medical Dispute
    - Privacy Laws
    - Other (if selected, display a free text field for description)
- The selected value (and free text, if applicable) must be saved with the review record.
- The field must be reportable and included in relevant OLIMS reports.

---

## 4. Exception Handling

- If “Dispute” is not selected as the review type, the “Dispute Type” field is hidden and not required.
- If “Other” is selected, the free text field becomes mandatory.
- If required fields are not completed, the system must prevent saving and display a clear error message.

---

## 5. Compliance/Controls

- All changes are audit logged, including creation and modification of the “Dispute Type” field.
- Access to edit dispute records is restricted to authorised claims officers and supervisors.
- Reporting on dispute types is available for compliance and scheme performance monitoring.

---

## 6. References and Linked Requirements

- Cross-references: OLC003 (Dispute origin/Jurisdiction), OLC011 (Request for Review reporting), RPM003 (Request for Review report columns)
- See also: OLIMS Request for Review tab requirements, scheme reporting requirements.

---

## 7. Acceptance Criteria

- [ ] “Dispute Type” drop-down appears only when review type is ‘Dispute’.
- [ ] All specified options are present in the drop-down.
- [ ] Selecting “Other” requires a free text description.
- [ ] Field is mandatory for new and edited dispute records.
- [ ] Data is saved and reportable.
- [ ] Audit log captures all changes.
- [ ] Error messages display if required fields are incomplete.
- [ ] Only authorised users can create/edit dispute records.