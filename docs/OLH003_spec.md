# Functional Specification: OLH003 — Audit Report for Claim Status Reason Overrides

---

## 1. Business Background

The EPSS scheme requires robust monitoring and quality assurance of claim status management. When a claim status reason or sub-reason is changed (overridden) after initial entry, it is critical for compliance, transparency, and scheme reporting that all such overrides are audited and reportable. This ensures accountability for changes made by EPSS Claims Officers and supports scheme-wide performance and fairness objectives.

---

## 2. Scope

This specification covers the requirement for OLIMS to:
- Audit all changes (overrides) to claim status reason codes and sub-reasons for EPSS claims.
- Provide a report within OLIMS to monitor and quality-assure these overrides.
- Specify which actions are audited and how the report is accessed and used.

---

## 3. Detailed Functional Requirements

- **Audit Logging:**  
  - Every change to a claim status reason or sub-reason (i.e., any override after initial entry) must be logged in OLIMS.
  - The audit log must capture:  
    - Employee/claim number  
    - Incident number  
    - Previous reason/sub-reason  
    - New reason/sub-reason  
    - Date/time of change  
    - User ID of the person making the change  
    - Comments/justification (if entered)
- **Reporting:**  
  - A report must be available in OLIMS to display all claim status reason overrides.
  - The report must allow filtering by date range, claim number, employee number, and user.
  - Each override must be shown as a separate line item.
  - The report must be exportable to Excel.
- **Access Control:**  
  - Only authorised users (e.g., EPSS Claims Officers, Supervisors) can access the override report.
- **Data Retention:**  
  - Audit records must be retained for at least 7 years for compliance.

---

## 4. Exception Handling

- If an override attempt fails (e.g., due to system error), the user must be notified and the failure logged.
- If the audit log cannot be written, the system must prevent the override and display an error message.
- If required fields (e.g., justification) are missing, the override cannot be saved.

---

## 5. Compliance/Controls

- All override actions must be traceable for audit and compliance purposes.
- Access to the override report must be restricted to authorised personnel.
- The audit log must be included in regular compliance reviews and reporting.

---

## 6. References and Linked Requirements

- Cross-references: OLH001, OLH002, DOA010, DOA012, DOB001-DOB005, P905 retro logic
- See also: [EPSS Scheme Reporting](#EPSS_scheme_reporting_(HSWC)), [Document Overview](#Document_Overview)

---

## 7. Acceptance Criteria

- [ ] All changes to claim status reason/sub-reason are logged with required details.
- [ ] Override report is available in OLIMS and exportable to Excel.
- [ ] Report displays each override as a separate line item with all required fields.
- [ ] Only authorised users can access the report.
- [ ] System prevents overrides if audit logging fails or required fields are missing.
- [ ] Audit records are retained for at least 7 years.
- [ ] Functionality is tested and verified in UAT with sample override scenarios.