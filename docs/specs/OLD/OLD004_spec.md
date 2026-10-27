# Functional Specification: OLD004 — Display Reminders/To Do Actions for EPSS Claim Management

---

## 1. Business Background

The EPSS (Enhanced Police Support Scheme) claim management process in OLIMS (Online Injury Management System) requires claims officers and supervisors to manage and monitor reminders and to-do actions associated with each incident. The ability to display these reminders and actions is essential for tracking claim progress, ensuring compliance with SLAs, and supporting efficient workflow management.

---

## 2. Scope

This specification covers the requirement to display reminders and to-do actions within the OLIMS incident for EPSS claim management. It leverages existing OLIMS functionality to ensure EPSS claims officers and supervisors can view all active and historical reminders/to-do actions related to a claim.

---

## 3. Detailed Functional Requirements

- The system must provide the ability to display all reminders and to-do actions associated with an EPSS claim incident.
- The display must include both active and historical (inactive/completed) reminders/actions.
- The display functionality will use the existing OLIMS path or screen for reminders/to-do actions, as currently implemented for other claim types.
- The display must show key fields: task name, due date, status, assigned to, created date, completed date, and comments.
- No changes to the underlying reminder/to-do action data model are required for EPSS; the requirement is to ensure visibility and access for EPSS claims.

---

## 4. Exception Handling

- If no reminders or to-do actions exist for an incident, the display screen will show a message: "No reminders or to-do actions found for this incident."
- If the user does not have permission to view reminders for a claim, an appropriate access denied message will be displayed.

---

## 5. Compliance/Controls

- All reminder/to-do action views are subject to standard OLIMS access controls and audit logging.
- Displayed data must be read-only; editing or deletion is not permitted from the display screen.
- All actions are logged for audit and compliance purposes.

---

## 6. References and Linked Requirements

- Cross-references: OLD001 (system-generated tasks), OLD002 (ad hoc tasks), OLD003 (manual reminders), OLD005 (new EPSS reminder category)
- OLIMS standard reminder/to-do action functionality

---

## 7. Acceptance Criteria

- [ ] EPSS claims officers and supervisors can view all reminders/to-do actions for an incident in OLIMS.
- [ ] Both active and historical reminders/actions are visible.
- [ ] Display includes required fields (task name, due date, status, assigned to, created date, completed date, comments).
- [ ] Access controls and audit logging are enforced.
- [ ] No editing or deletion is possible from the display screen.
- [ ] Exception messages are shown for no data or access denied scenarios.