# Functional Specification: DOD002 — Date of Disablement Amendment Table

---

## 1. Business Background

The Date of Disablement (DOD) is a critical field in the EPSS scheme, determining scheme eligibility, the initial ordinary rate of pay, and the commencement of Period 1 benefits. The DOD defaults to the status date of the first uploaded WorkCover Certificate in OLIMS. However, business scenarios require claims officers to amend the DOD to reflect actual incapacity dates, such as when certificates are uploaded out of order or late advice is received. Accurate DOD management ensures correct benefit period calculations and compliance with scheme rules.

---

## 2. Scope

This specification covers the requirements for recording, displaying, and auditing changes to the Date of Disablement in OLIMS for EPSS claims. It includes the design of a DOD amendment table, document upload tracking, and the ability for claims officers to view both active and historical DOD records.

---

## 3. Detailed Functional Requirements

- OLIMS must provide a DOD amendment table for each EPSS claim.
- The table must display the following fields for each DOD record:
  - Record type
  - Date from
  - Date to
  - Active/inactive flag
  - Document uploaded (indicator)
  - Description
- The table fields must match those in the “Top-Up / Disab. Date / IP Dates” OLIMS screen.
- The document upload field must indicate if a supporting document (e.g., medical certificate or liability letter) has been uploaded.
- All changes to the DOD must be logged, including the user, timestamp, and impact on payroll/benefit periods.
- The existing report used to identify incorrect DODs will support this process.
- Claims officers must be able to display both active and historical (inactive) DOD records using the inactive flag/filter.

---

## 4. Exception Handling

- If a DOD amendment is attempted without a supporting document, OLIMS must display a warning but allow the entry (pending business process confirmation).
- If a DOD amendment is made after Period 1 is exhausted, OLIMS must update all relevant screens and week count logic accordingly.
- Any failed document upload must prompt the user to retry or cancel the amendment.

---

## 5. Compliance/Controls

- All DOD amendments and supporting documents must be audit logged.
- Only authorised claims officers can amend the DOD.
- The DOD amendment table and audit log must be available for compliance review and reporting.
- Certificates are uploaded by commands, not by Shared Services or EPSS case officers.

---

## 6. References and Linked Requirements

- Cross-references: DOD001, DOD003, RPD001–RPD004 (Date of Disablement misalignment report), OLIMS “Top-Up / Disab. Date / IP Dates” screen.
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] DOD amendment table is available in OLIMS for all EPSS claims.
- [ ] Table displays all required fields matching the “Top-Up / Disab. Date / IP Dates” screen.
- [ ] Document upload indicator is present and functional.
- [ ] All DOD changes are audit logged with user, timestamp, and impact.
- [ ] Claims officers can filter and view active/inactive DOD records.
- [ ] Existing DOD misalignment report supports identification of incorrect DODs.
- [ ] Exception handling and compliance controls are implemented as specified.