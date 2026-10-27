# Functional Specification: OLA004 — Correspondence Logging in OLIMS

---

## 1. Business Background

The NSW Police Force (NSWPF) requires robust tracking and auditability of all correspondence and letters sent to officers under the Enhanced Police Support Scheme (EPSS). Accurate logging of correspondence is essential for compliance, transparency, and effective claims management within the Online Injury Management System (OLIMS).

---

## 2. Scope

This specification covers the requirement to save details of all correspondence and letters sent to officers in OLIMS, including the dates issued. It applies to all EPSS-related communications generated or sent via OLIMS, regardless of delivery method (email, post, etc.).

---

## 3. Detailed Functional Requirements

- All outgoing correspondence (letters/forms) generated or sent to officers from OLIMS must be automatically logged in the system.
- The log must capture:
  - Officer identifier (employee/registered number)
  - Incident/claim number
  - Type of correspondence (template name or document type)
  - Date and time sent/issued
  - Delivery method (e.g., email, post)
  - Recipient email address (if sent electronically)
  - Sender (claims officer or system user)
- The correspondence log must be viewable in OLIMS by authorized users.
- The log must support searching and filtering by officer, incident, date, and correspondence type.
- If correspondence is re-sent or corrected, each instance must be logged as a separate entry.
- The system must allow upload and linking of the actual document sent (where applicable).

---

## 4. Exception Handling

- If correspondence fails to send (e.g., email bounce), the system must log the failure with a status and error message.
- If required fields (e.g., recipient email) are missing, the system must prevent sending and prompt the user to correct the data.
- Unauthorized users attempting to access or modify the correspondence log must be denied and the attempt logged for audit.

---

## 5. Compliance/Controls

- All correspondence logs must be retained for audit and compliance purposes in accordance with NSWPF records management policies.
- Access to correspondence logs must be restricted to authorized claims officers and supervisors.
- Changes to correspondence records (e.g., deletion, modification) must be audit-logged.
- Reporting must be available for compliance and reconciliation (e.g., Document Overview report).

---

## 6. References and Linked Requirements

- OLA001–OLA003, OLA005–OLA014 (document generation, upload, categorization, reporting)
- RPP001–RPP005 (Document Overview reporting)
- OLIMS access and audit controls
- NSWPF records management policy

---

## 7. Acceptance Criteria

- [ ] All correspondence sent to officers is automatically logged in OLIMS with required details.
- [ ] Log entries include officer, incident, type, date/time, delivery method, recipient, and sender.
- [ ] Users can view, search, and filter correspondence logs in OLIMS.
- [ ] Failed or unsent correspondence is logged with error status.
- [ ] Access to logs is restricted and audit-logged.
- [ ] Reports can be generated for compliance and reconciliation.
- [ ] All changes to correspondence records are audit-logged.
- [ ] The solution meets NSWPF records management and privacy requirements.