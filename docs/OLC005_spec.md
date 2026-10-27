# Functional Specification: OLC005 — Complaint Type Dynamic Drop-down in OLIMS Request for Review Tab

---

## 1. Business Background

The Online Injury Management System (OLIMS) supports the administration of EPSS claims, including the management of queries, complaints, and disputes through the "Request for Review" tab. To improve data quality, reporting, and workflow efficiency, a new dynamic drop-down field titled "Complaint Type" is required, mapped to the review type ‘Complaint’. This will standardise complaint categorisation and support downstream reporting and compliance.

---

## 2. Scope

This specification covers the addition of a dynamic drop-down field "Complaint Type" in the OLIMS Request for Review tab, mapped to the review type ‘Complaint’. The field will present a standardised list of complaint types and support a free text entry when "Other" is selected. The requirement applies to both new and existing Complaint records, as clarified by business.

---

## 3. Detailed Functional Requirements

- When the review type "Complaint" is selected in the Request for Review tab, a new dynamic drop-down field "Complaint Type" must appear.
- The drop-down must include the following options:
    - Payment / Calculation
    - Overpayment
    - Process
    - Customer Service
    - Review of Decision
    - Privacy Laws
    - Other
- If "Other" is selected, a free text field must be enabled for the user to enter a description.
- Selecting a "Complaint Type" is mandatory for all new and edited Complaint records.
- The field must be reportable and included in relevant OLIMS reports.
- The field must be available for both new and existing Complaint records when edited.

---

## 4. Exception Handling

- If a user attempts to save a Complaint record without selecting a "Complaint Type", the system must display an error and prevent saving.
- If "Other" is selected but the free text field is left blank, the system must display an error and prevent saving.
- The drop-down must only appear when the review type is "Complaint"; it must be hidden for other review types.

---

## 5. Compliance/Controls

- All changes to the "Complaint Type" field must be audit logged, including user, date/time, and previous value.
- Access to edit Complaint records must be restricted to authorised OLIMS users.
- The field must be included in compliance and scheme reporting for quality assurance.

---

## 6. References and Linked Requirements

- Cross-references: OLC002 (Requestor for Complaint), OLC001 (Review Type), OLC003 (Dispute origin), OLC004 (Query Type), OLC010 (Previous Reviews table changes)
- Related reporting requirements: RPM001–RPM005 (Request for Review report)
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] "Complaint Type" drop-down appears only when review type is "Complaint".
- [ ] Drop-down includes all specified options, with free text enabled for "Other".
- [ ] Field is mandatory for all new and edited Complaint records.
- [ ] Error messages are displayed if required selections/fields are missing.
- [ ] All changes are audit logged.
- [ ] Field is included in relevant OLIMS reports.
- [ ] Access controls and reporting requirements are met.