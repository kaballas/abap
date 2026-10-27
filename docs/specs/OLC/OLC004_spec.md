# Functional Specification: OLC004 — Add a new dynamic drop down field titled “Query Type” mapped to review type ‘Query’ in OLIMS

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust case management and reporting for requests for review in OLIMS. To improve data quality and enable more granular reporting, a new dynamic drop-down field “Query Type” is to be introduced, mapped specifically to the review type ‘Query’ in the Request for Review tab.

---

## 2. Scope

This requirement covers the addition of a “Query Type” drop-down field in OLIMS, visible and mandatory only when the review type is set to ‘Query’. The field will provide a standardised list of query categories, with a free text option for “Other”.

---

## 3. Detailed Functional Requirements

- Add a new dynamic drop-down field titled “Query Type” to the Request for Review tab in OLIMS.
- The “Query Type” field is only displayed and required when the review type is ‘Query’.
- Drop-down options:
    - Policy / Factsheets / Coverage
    - Process
    - Payment / Calculation
    - Follow up existing matter
    - Other (if selected, a free text field appears for description)
- The field must be mandatory for new and edited records where review type is ‘Query’.
- The selected value and any free text must be stored and reportable.

---

## 4. Exception Handling

- If “Other” is selected and the free text field is left blank, display an error and prevent save.
- If review type is changed from ‘Query’ to another type, the “Query Type” field and value are hidden and not required.
- If an existing record with review type ‘Query’ is edited, “Query Type” must be populated before saving.

---

## 5. Compliance/Controls

- All changes to the “Query Type” field must be audit logged (user, date/time, old/new value).
- Access to edit the field is restricted to authorised OLIMS users.
- The field is included in Request for Review reporting for compliance and reconciliation.

---

## 6. References and Linked Requirements

- Cross-references: OLC001, OLC002, OLC003, OLC005–OLC012
- Related reporting: RPM001–RPM005 (Request for Review report)
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/:x:/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx)

---

## 7. Acceptance Criteria

- [ ] “Query Type” drop-down appears only when review type is ‘Query’.
- [ ] All specified options are available; “Other” triggers a mandatory free text field.
- [ ] Field is mandatory for new and edited ‘Query’ records.
- [ ] Data is stored and available in reporting.
- [ ] Audit log captures all changes to the field.
- [ ] Exception handling works as specified.
- [ ] Field is not visible or required for other review types.