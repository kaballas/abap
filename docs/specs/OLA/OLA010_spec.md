# Functional Specification: OLA010 — Ability to Hide and Unhide Documents in OLIMS

---

## 1. Business Background

The Online Injury Management System (OLIMS) is used for managing EPSS claims, including document management. There is a business requirement to allow claims officers to hide or unhide documents in OLIMS due to errors or privacy concerns. This ensures sensitive or incorrect documents are not visible to general users, while maintaining auditability and compliance.

---

## 2. Scope

This requirement covers the ability to hide and unhide documents in OLIMS, enforce mandatory comments when hiding, and ensure access is controlled. It applies to all EPSS-related documents managed in OLIMS Document Overview.

---

## 3. Detailed Functional Requirements

- Users with appropriate access (e.g., EPSS Claims Officers, Supervisors) can hide or unhide documents from the Document Overview screen.
- When a document is hidden, a mandatory comment must be entered explaining the reason.
- Hidden documents are not visible to standard users but remain accessible to users with elevated access (e.g., Supervisors, Audit roles).
- The system must track and audit all hide/unhide actions, including user, timestamp, and comment.
- Access to hidden documents and the ability to hide/unhide is role-based and configurable.
- Document templates and metadata must support "hidden" and "hide comment" fields.

---

## 4. Exception Handling

- If a user attempts to hide/unhide a document without the required access, the system displays an error and prevents the action.
- If a hide action is attempted without entering a comment, the system prompts for a mandatory comment before proceeding.
- All failed attempts to hide/unhide documents are logged for audit purposes.

---

## 5. Compliance/Controls

- All hide/unhide actions are audit logged and reportable.
- Only users with appropriate roles can view or manage hidden documents.
- The audit log must be accessible for compliance reviews.
- Document visibility changes do not physically delete documents; they are flagged as hidden.

---

## 6. References and Linked Requirements

- Cross-references: OLA011 (audit log/reporting), OLA013 (Document Overview fields), OLA014 (compliance reporting), OLA007/OLA008 (document categories/subcategories).
- See also: [EPSS Document Management Requirements](#_Document_Generation_–).

---

## 7. Acceptance Criteria

- [ ] Users with correct roles can hide/unhide documents in OLIMS.
- [ ] Mandatory comment is enforced when hiding a document.
- [ ] Hidden documents are not visible to standard users.
- [ ] Audit log records all hide/unhide actions with user, timestamp, and comment.
- [ ] Access to hidden documents is restricted by role.
- [ ] No document is physically deleted when hidden; only flagged.
- [ ] Exception handling is implemented for access and comment requirements.
- [ ] Compliance and audit reporting requirements are met.