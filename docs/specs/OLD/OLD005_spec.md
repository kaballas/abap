# Functional Specification: OLD005 — New Reminder/To Do Action Category for EPSS

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) requires clear differentiation of reminders and to-do actions within OLIMS (Online Injury Management System) to support claim management, compliance, and reporting. Existing OLIMS categories do not distinguish EPSS-specific tasks, which impacts workflow clarity and reporting accuracy for the EPSS claims team.

---

## 2. Scope

This specification covers the creation and implementation of a new Reminder/To Do Action category in OLIMS specifically for EPSS-related tasks. It includes UI changes, category naming, and reporting requirements, but excludes changes to reminder logic or workflow outside of category management.

---

## 3. Detailed Functional Requirements

- A new Reminder/To Do Action category must be created in OLIMS, named **"EPSS"** (final name to be confirmed by business).
- The new category must be selectable when creating or editing reminders/to-do actions within any EPSS claim or incident.
- The category must appear in all relevant OLIMS screens, dropdowns, and reports where Reminder/To Do Action categories are displayed.
- The new category must be available for both system-generated and manually created reminders/tasks.
- The category must be filterable in OLIMS reports and task lists.
- A screenshot or navigation path to the Reminder/To Do Action functionality must be included in user documentation.

---

## 4. Exception Handling

- If the new category is not selected when creating an EPSS-related reminder, the system must prompt the user to select the correct category.
- If the category is missing from dropdowns or reports, the issue must be logged and escalated to system support.

---

## 5. Compliance/Controls

- All reminders/to-do actions created under the EPSS category must be audit logged for compliance.
- Access to create/edit EPSS reminders must be restricted to EPSS Claims Officers and Supervisors.
- Reporting must support filtering and auditing of EPSS-specific reminders for SLA and performance monitoring.

---

## 6. References and Linked Requirements

- Cross-references: OLD001, OLD002, OLD003, OLD004, OLD006–OLD010 (EPSS task and reminder management)
- [EPSS – Task List](#task-list) (for standard tasks)
- OLIMS user guide section on Reminders/To Do Actions

---

## 7. Acceptance Criteria

- [ ] New "EPSS" Reminder/To Do Action category is available in OLIMS for all relevant users.
- [ ] Category is selectable and visible in all required screens and reports.
- [ ] Category is filterable in OLIMS task and reminder reports.
- [ ] Audit log records creation and changes to EPSS reminders.
- [ ] Access controls restrict category use to EPSS Claims Officers/Supervisors.
- [ ] User documentation updated with screenshot or navigation path for the new category.