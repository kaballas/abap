# Functional Specification: RPB003 — EPSS On Duty Claim Report: WC Primary/Non-Primary Selection

---

## 1. Business Background

The Enhanced Police Support Scheme (EPSS) requires robust operational reporting to support scheme management, compliance, and performance monitoring. The EPSS On Duty Claim Report is a key operational report used by claims officers, supervisors, and business stakeholders to monitor and analyse claims. A business requirement has been identified to enhance the report’s selection screen, enabling users to filter claims by "WC Primary", "Non-Primary", or "BOTH" to improve usability and data analysis.

---

## 2. Scope

This specification covers the enhancement of the EPSS On Duty Claim Report selection screen to include a radio button or equivalent control for selecting "WC Primary", "Non-Primary", or "BOTH" claims. The change applies to the report’s user interface and underlying data extraction logic. No changes to other reports or business processes are in scope.

---

## 3. Detailed Functional Requirements

- The EPSS On Duty Claim Report selection screen must present users with a choice to filter by:
    - "WC Primary" claims only
    - "Non-Primary" claims only
    - "BOTH" (i.e., all claims regardless of WC Primary status)
- The default selection when the report loads must be confirmed by the business (open item).
- When "BOTH" is selected, the report must return all claims, with a clear indicator of each claim’s WC Primary status in the output.
- The data extraction logic must accurately filter claims based on the selected option, using the correct SAP/OLIMS field(s) for WC Primary status.
- The report output must include a column indicating WC Primary status for each claim.

---

## 4. Exception Handling

- If no claims match the selected filter, the report must display a user-friendly message: "No claims found for the selected criteria."
- If the WC Primary status field is missing or ambiguous for a claim, the report must flag the record and include it in the output with a warning indicator.

---

## 5. Compliance/Controls

- Access to the report and its selection screen must be restricted to authorised users per existing OLIMS/SAP security roles.
- All report executions must be logged for audit purposes, including user ID, timestamp, and selection criteria.
- Data displayed must comply with privacy and confidentiality requirements for employee and claim information.

---

## 6. References and Linked Requirements

- Cross-references: RPB002 (claim type selection), RPB004 (organisation section removal), RPB005–RPB007 (additional columns and field definitions).
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] The report selection screen includes "WC Primary", "Non-Primary", and "BOTH" options.
- [ ] The default selection is as per business confirmation.
- [ ] The report output matches the selected filter and includes a WC Primary status column.
- [ ] Exception handling is implemented as specified.
- [ ] Access controls and audit logging are in place.
- [ ] All requirements are tested and signed off by business stakeholders.