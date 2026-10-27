# Functional Specification: OLD003 — Manual Reminders/To Do Actions for EPSS Claim Management

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires robust claim management processes within OLIMS (Online Injury Management System). Manual reminders and to-do actions are essential for claims officers to track, follow up, and manage EPSS claims efficiently. The standard OLIMS functionality for manual reminders is to be leveraged for EPSS claim management, ensuring consistency and minimising the need for new development.

---

## 2. Scope

This requirement covers the availability and use of the existing OLIMS manual reminder/to-do action functionality for EPSS claim management. It includes the ability for EPSS Claims Officers and Supervisors to create, view, and manage manual reminders within EPSS incidents, using the standard OLIMS interface.

---

## 3. Detailed Functional Requirements

- The standard OLIMS functionality for creating manual reminders/to-do actions within an incident must be available for EPSS claim management.
- EPSS Claims Officers and Supervisors can create manual reminders for any EPSS claim/incident.
- Reminders must be linked to the relevant EPSS incident and visible in the incident’s reminders/to-do actions section.
- No changes or customisations to the existing OLIMS reminder functionality are required for EPSS.
- The OLIMS navigation path or screen for creating manual reminders must be documented for EPSS users.

---

## 4. Exception Handling

- If the OLIMS reminders/to-do actions functionality is unavailable or encounters an error, users must be notified with a standard error message.
- Any system outages or failures affecting reminders must be logged and escalated per standard OLIMS support procedures.

---

## 5. Compliance/Controls

- All reminders/to-do actions created for EPSS claims are subject to standard OLIMS audit and access controls.
- Only authorised EPSS Claims Officers and Supervisors can create or view reminders for EPSS incidents.
- Reminder creation and completion actions are logged for audit and reporting purposes.

---

## 6. References and Linked Requirements

- Cross-references: OLD001, OLD002, OLD004, OLD005 (EPSS Task/Reminder requirements)
- OLIMS user guide/manual for reminders functionality

---

## 7. Acceptance Criteria

- [ ] EPSS Claims Officers and Supervisors can create manual reminders within EPSS incidents using standard OLIMS functionality.
- [ ] Reminders are visible and manageable within the EPSS incident.
- [ ] No new development or customisation is required; existing OLIMS reminder functionality is used as-is.
- [ ] OLIMS navigation path for reminders is documented for EPSS users.
- [ ] Reminder creation and completion are logged for audit purposes.