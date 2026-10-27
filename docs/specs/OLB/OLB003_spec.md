# Functional Specification: OLB003 — Off Duty Emp/Members Statement Tab Changes

---

## 1. Business Background

The NSW Police Force (NSWPF) uses OLIMS to manage EPSS claims. For Off Duty claims, the Emp/Members Statement tab currently mirrors the PBRI process. With the introduction of the EPSS Off Duty claim type, the UI and process must be updated to align with new business requirements, including changes to document handling and user interface elements.

---

## 2. Scope

This specification covers the changes to the OLIMS Emp/Members Statement tab for EPSS Off Duty claims. It includes UI modifications, removal of obsolete actions, and updates to document upload and tab visibility logic. No payroll or SAP integration changes are in scope.

---

## 3. Detailed Functional Requirements

- The Emp/Members Statement tab for EPSS Off Duty claims will be replaced by a new "EPSS Off Duty" tab.
- The "Send to Aware/TAL" button will be removed from the Off Duty tab.
- TAL documents will be uploaded using existing document categories (no new upload mechanism required).
- The Emp/Members Statement tab will be hidden for EPSS Off Duty claims.
- The new EPSS Off Duty tab will display all required fields for Off Duty claim management, as per business requirements.
- Navigation and layout will be consistent with the current PBRI Emp/Members Statement tab, except for the above changes.
- A screenshot or navigation steps for the current PBRI Emp/Members Statement tab will be provided for reference.

---

## 4. Exception Handling

- If a user attempts to access the Emp/Members Statement tab for an EPSS Off Duty claim, the system will redirect to the new EPSS Off Duty tab.
- If document upload fails, an error message will be displayed and the user will be prompted to retry.
- If required fields are missing in the new tab, the user will be notified before saving.

---

## 5. Compliance/Controls

- All document uploads and changes are logged in OLIMS for audit purposes.
- Access to the new EPSS Off Duty tab and document upload is restricted to authorised claims officers.
- Reporting and reconciliation of uploaded documents will follow existing OLIMS controls.

---

## 6. References and Linked Requirements

- Cross-references: OLB001, OLB002, PBRI Emp/Members Statement tab (existing), [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] The Emp/Members Statement tab is hidden for EPSS Off Duty claims.
- [ ] A new EPSS Off Duty tab is available and displays all required fields.
- [ ] The "Send to Aware/TAL" button is removed from the Off Duty tab.
- [ ] TAL documents can be uploaded using existing categories.
- [ ] Navigation and layout match the business requirements and reference screenshot.
- [ ] All changes are logged and reportable in OLIMS.
- [ ] Exception handling is implemented as specified.