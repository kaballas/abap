# Functional Specification: OLC002 — Add "Requestor" Field for Complaint Review Type

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust tracking and categorisation of review requests within OLIMS (Online Injury Management System). For effective scheme reporting and compliance, additional data fields are needed to capture the source of complaints in the Request for Review process.

---

## 2. Scope

This specification covers the addition of a new dynamic drop-down field titled “Requestor” to the Request for Review tab in OLIMS, mapped specifically to the review type ‘Complaint’. The change applies to both new and existing Complaint records as required by business rules.

---

## 3. Detailed Functional Requirements

- Add a dynamic drop-down field “Requestor” to the Request for Review tab, visible only when the review type is set to ‘Complaint’.
- The “Requestor” field must include the following selectable options:
  - Claimant
  - Internal
  - Solicitor
  - PANSW
  - Other
- If “Other” is selected, a free text field must appear for the user to enter a description.
- The “Requestor” field is mandatory when logging a Complaint.
- The field must be available for both new and existing Complaint records (when edited).
- All entries must be stored in the OLIMS database and be reportable.

---

## 4. Exception Handling

- If the review type is not ‘Complaint’, the “Requestor” field and its free text option must be hidden.
- If “Other” is selected but no description is entered, the system must display a validation error and prevent saving.
- If the “Requestor” field is left blank for a Complaint, the system must display a validation error and prevent saving.

---

## 5. Compliance/Controls

- All changes must be audit logged, including user, date/time, and old/new values.
- Access to edit the “Requestor” field is restricted to users with appropriate OLIMS permissions.
- The field must be included in reporting for compliance and scheme performance.

---

## 6. References and Linked Requirements

- Cross-references: OLC001 (Type of Review), OLC003 (Dispute origin or Jurisdiction), OLC005 (Complaint Type), RPM003 (Request for Review reporting).
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] “Requestor” field appears only for review type ‘Complaint’.
- [ ] All required options and free text for “Other” are available.
- [ ] “Requestor” is mandatory for all Complaint records.
- [ ] Validation errors are shown if required fields are missing.
- [ ] All changes are audit logged.
- [ ] Field is included in Request for Review reports.
- [ ] Access controls are enforced per OLIMS security model.