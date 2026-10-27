# Functional Specification: OLD009 — EPSS Task Template Management

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires agile and responsive claims management processes. As the scheme evolves, the EPSS Claims team must be able to adapt workflows and task lists quickly to reflect changes in business rules, compliance requirements, and operational needs. Allowing the EPSS Claims team to create and edit task templates within OLIMS (Online Injury Management System) ensures flexibility and supports continuous improvement in claims management.

---

## 2. Scope

This specification covers the ability for the EPSS Claims team to create and edit task templates in OLIMS. It includes template creation, editing, data source definition, and access controls. It does not cover the execution of tasks, reporting on tasks, or changes to existing OLIMS workflow unrelated to task templates.

---

## 3. Detailed Functional Requirements

- The EPSS Claims team must be able to create new task templates in OLIMS.
- The EPSS Claims team must be able to edit existing task templates in OLIMS.
- All task templates must include fields for task name, description, SLA/due date, assigned role, trigger event, and status.
- The system must allow the definition of data sources for each template field (e.g., static value, derived from incident, or user entry).
- Only users with the EPSS Claims team role can create or edit task templates.
- Changes to templates must be audit logged (user, date/time, action).
- Task templates must be available for immediate use after creation or update.

---

## 4. Exception Handling

- If a user without the EPSS Claims team role attempts to create or edit a template, the system must display an access denied message.
- If required fields are missing during template creation or editing, the system must prompt the user to complete all mandatory fields before saving.
- If a template is in use by active tasks, editing must not retroactively change those tasks; changes apply only to new tasks created after the update.

---

## 5. Compliance/Controls

- All template changes are audit logged for compliance review.
- Access to template management is restricted to the EPSS Claims team.
- Reporting on template changes is available for reconciliation and quality assurance.

---

## 6. References and Linked Requirements

Cross-references: OLD001–OLD010 (EPSS task management), RPH001–RPH007 (OLIMS Reminders/To Do List Overview Report), P905 retro logic.

---

## 7. Acceptance Criteria

- [ ] EPSS Claims team can create new task templates in OLIMS.
- [ ] EPSS Claims team can edit existing task templates in OLIMS.
- [ ] Only authorized users can access template management.
- [ ] All template changes are audit logged.
- [ ] Templates are available for use immediately after creation or update.
- [ ] Exception handling is implemented as specified.