# Functional Specification: OLA003 — Ability to Send Populated Letter/Form to Officer’s Email

---

## 1. Business Background

The EPSS claims process requires timely and accurate communication with officers regarding their claims. Automating the generation and sending of populated letters/forms from OLIMS to officers’ email addresses improves efficiency, ensures compliance, and provides an auditable record of correspondence.

---

## 2. Scope

This requirement covers the ability for claims officers to send generated letters/forms from OLIMS to an officer’s personal email (as recorded in OLIMS) and optionally to their work email. It includes retrieving email addresses from the correct OLIMS fields, providing selection options, and ensuring the process is user-friendly and auditable.

---

## 3. Detailed Functional Requirements

- OLIMS must allow claims officers to send generated letters/forms to the officer’s personal email address, with the option to also send to the officer’s work email.
- The system must retrieve the personal and work email addresses from the relevant OLIMS fields/subtypes (e.g., IT0105 subtype 0010 for work email, and the designated field for personal email).
- The document generation screen must display both email addresses, allowing the user to select one or both for sending.
- Clear instructions or tooltips must be provided to guide users in selecting the correct email(s).
- The process must log the correspondence sent, including which email addresses were used.

---

## 4. Exception Handling

- If either email address is missing or invalid, OLIMS must display a warning and prevent sending until a valid address is entered or selected.
- If email delivery fails (e.g., bounce), an error message must be logged and displayed to the claims officer for follow-up.
- Attempts to send to unverified or blank email fields must be blocked with a clear error message.

---

## 5. Compliance/Controls

- All correspondence sent must be logged in OLIMS, including the date/time, sender, recipient email(s), and document reference.
- Access to officer email addresses must be restricted to authorized users.
- Audit logs must be available for all correspondence actions for compliance and reporting.

---

## 6. References and Linked Requirements

- OLA001: Document template upload and field population
- OLA002: Template data override before sending
- OLA004: Correspondence logging in OLIMS
- OLA013: Document Overview screen enhancements

---

## 7. Acceptance Criteria

- [ ] Claims officer can select and send a letter/form to the officer’s personal and/or work email from OLIMS.
- [ ] Both email addresses are displayed and selectable in the document generation screen.
- [ ] System prevents sending if no valid email is available.
- [ ] All sent correspondence is logged with recipient details.
- [ ] Error handling is in place for missing/invalid emails and delivery failures.
- [ ] Access and audit controls are implemented as specified.