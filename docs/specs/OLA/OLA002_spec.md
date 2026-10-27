# Functional Specification: OLA002 — Ability of claims team to override data in the templates if required before generating the final letter

---

## 1. Business Background

The EPSS claims process requires the generation of letters and forms using templates populated with data from SAP HR, payroll, and OLIMS. There are scenarios where the claims team must override or edit specific data fields in these templates before finalising and sending correspondence to officers, to ensure accuracy and accommodate case-specific requirements.

---

## 2. Scope

This specification covers the functionality in OLIMS to allow claims officers to override or edit data fields in document templates prior to generating and sending the final letter or form. It applies to all EPSS On Duty and Off Duty correspondence generated via OLIMS.

---

## 3. Detailed Functional Requirements

- OLIMS must provide a user interface for claims officers to review and override any auto-populated data fields in a letter/form template before final generation.
- The override screen must display all fields that will be merged into the template, showing both the original (system-populated) value and the editable field.
- Only authorised users (claims officers and supervisors) can perform overrides.
- All overridden fields must be clearly highlighted or flagged in the UI.
- The final generated document must use the overridden values where provided; otherwise, system values are used.
- All overrides must be audit logged, capturing the user, date/time, field changed, original value, and new value.
- The override process must not allow changes to locked or confidential fields as defined by business rules.

---

## 4. Exception Handling

- If a user attempts to override a locked or restricted field, the system must display an error and prevent the change.
- If required fields are left blank after override, the system must prompt the user to complete them before proceeding.
- Any system errors during override or document generation must be logged and a user-friendly error message displayed.

---

## 5. Compliance/Controls

- All overrides are audit logged for compliance and reporting.
- Access to override functionality is restricted to authorised roles in OLIMS.
- Overrides are included in periodic audit and quality assurance reports.
- Data privacy and confidentiality controls apply to all correspondence and override actions.

---

## 6. References and Linked Requirements

- OLA001 (Template upload and data merge)
- OLA003 (Sending correspondence)
- OLA004 (Correspondence audit and storage)
- OLA013 (Document comments)
- OLIMS access and audit controls

---

## 7. Acceptance Criteria

- [ ] Claims officers can view and edit template data fields before generating a letter/form.
- [ ] Overridden fields are clearly indicated in the UI.
- [ ] Only authorised users can perform overrides.
- [ ] All override actions are audit logged with user, date/time, field, original, and new value.
- [ ] Locked fields cannot be overridden.
- [ ] The final document uses overridden values where provided.
- [ ] Errors and exceptions are handled as specified.
- [ ] Compliance and access controls are enforced.