# Tech Spec Planning - EPSS Task Management System
**Created:** 10 February 2026  
**Based on:** FinalOLD.md (Functional Specification)

---

## PART 1: STRUCTURED READING PLAN

### Phase 1: High-Level Understanding (Review)
**Objective:** Understand the business context and scope

1. **Business Background** - Why is this needed?
   - EPSS claim management requirements
   - SLA and compliance needs
   - Unified, auditable system requirements

2. **Goals & Scope** - What are we building?
   - 10 major requirements (OLD001-OLD010)
   - Key functional areas
   - Integration points with existing OLIMS

**Time allocation:** 15 minutes

---

### Phase 2: Detailed Functional Analysis (Deep Dive)
**Objective:** Understand each functional requirement in detail

#### For each requirement (OLD001-OLD010), analyze:
- **What:** Core functionality
- **Who:** Users/roles involved
- **How:** Process/workflow
- **Data:** What data is captured/stored
- **Constraints:** Technical/business constraints
- **Interfaces:** System touchpoints

**Breakdown by requirement:**

| OLD# | Requirement | Focus Areas |
|------|-------------|------------|
| OLD001 | System Generated Tasks | Event triggers, SLA configuration, automation |
| OLD002 | Ad Hoc Tasks | Manual creation, editing, deletion rules |
| OLD003 | Manual Reminders | Standard OLIMS functionality reuse |
| OLD004 | Display Reminders | UI/UX, read-only display, field visibility |
| OLD005 | EPSS Category | New category creation, visibility, filtering |
| OLD006 | Suspend/Hold | Pause logic, cascading effects, error handling |
| OLD007 | Suspension Reason | Data capture, storage, validation |
| OLD008 | Task Resumption | SLA recalculation, cascading resumption, overdue logic |
| OLD009 | Template Management | CRUD operations, data source mapping, versioning |
| OLD010 | Reporting | Report facility, fields, filters, exports |

**Time allocation:** 45 minutes

---

### Phase 3: Cross-Functional Dependencies
**Objective:** Identify how requirements interact

- System-generated tasks → Suspension → Resumption → Reporting
- Ad hoc tasks ← Reminders (related but separate)
- Templates → System-generated tasks (dependency)
- Audit trail (spans all requirements)
- Access control (spans all requirements)
- Reporting (aggregates all requirement data)

**Time allocation:** 20 minutes

---

### Phase 4: Data & Architecture Analysis
**Objective:** Identify data structures and technical requirements

**Key areas to map:**
- Task lifecycle states
- Data fields and their sources
- Audit trail requirements
- Report data sources
- Integration points (ZIM_CM, ZIM_REM, payroll systems)
- Role-based access control

**Time allocation:** 20 minutes

---

## PART 2: DEVELOPER QUESTIONS

### SECTION A: EXISTING OLIMS INFRASTRUCTURE

#### A1: Reminders/To-Do Action System
1. **ZIM_REM Table**
   - What are the current fields in ZIM_REM? (We know: Category, Business Rule, Action/Description, Days in Calc, Inactive)
   - Are there any additional fields not mentioned?
   - How is the SLA/due date currently stored and calculated?
   - Can we extend this table for EPSS-specific fields, or do we need a new table?
   - What is the current data retention policy for historical reminders?

2. **Reminder Creation Mechanism**
   - What is the current OLIMS path/screen for creating reminders? (Please provide exact navigation path)
   - How are categories currently managed and displayed in dropdowns?
   - What validation is currently in place for required fields?
   - What is the current audit logging mechanism for reminder creation/completion?
   - Can we add a new category ("EPSS") without impacting existing functionality for other claim types (WC, HSW, Command)?

3. **Reminder Display**
   - What is the current OLIMS path/screen for displaying reminders? (Please provide exact navigation path)
   - How are active vs. historical reminders differentiated in the current system?
   - What are the current display permissions/access controls?
   - Can we add new fields to the display without retroactively changing other claim types?

4. **Report Facility (ZIM_CM)**
   - Can you describe the current "Reminders/To Do List" report in ZIM_CM?
   - What selection criteria and filters are currently available?
   - What are the current report output fields?
   - Can this report be extended for EPSS-specific fields and filters?
   - What is the performance impact of adding filters (EPSS Claims/Transitional, WC Primary Claim, EPSS Supervisor, EPSS Claims Advisor)?

#### A2: Task Management System
5. **Existing Task Functionality**
   - Are there existing OLIMS task/workflow capabilities?
   - If yes, what task lifecycle states are currently supported? (e.g., Open, In Progress, Completed, On Hold, Suspended?)
   - How are task due dates currently calculated and stored?
   - Is there any existing SLA management functionality?
   - Can this be leveraged for EPSS system-generated tasks?

6. **Task Suspension/Pause**
   - Is there any existing pause, suspension, or hold functionality for tasks?
   - If not, what would be the technical approach to implement this?
   - How would we pause SLA countdown without modifying the due date field?
   - Is there a suspension reason field in any existing table?

#### A3: Batch/Event-Triggered Task Generation
7. **Event Triggers & Batch Jobs**
   - What batch jobs exist in OLIMS that trigger based on key events?
   - How are batch jobs currently configured and monitored?
   - What claim events are currently monitored? (e.g., claim allocation, status changes)
   - Can we create new batch jobs to trigger EPSS system-generated tasks?
   - What is the triggering mechanism for dependent tasks? (e.g., when Task A completes, trigger Task B)

#### A4: Audit Logging
8. **Audit Trail Capabilities**
   - What is the current audit logging framework in OLIMS?
   - What fields are currently captured? (user, timestamp, action, reason?)
   - Can we extend audit logging to capture all task lifecycle state changes?
   - How is audit data currently stored and retrieved?
   - What is the audit data retention policy?
   - Can we filter/report on audit data for specific users, actions, or time periods?

#### A5: Access Control & Authorization
9. **Role-Based Access Control**
   - What is the current RBAC implementation in OLIMS?
   - What roles/user types currently exist?
   - Do "EPSS Claims Officer" and "EPSS Supervisor" roles already exist, or do we need to create them?
   - How are role-based permissions currently enforced at the UI and database levels?
   - Can we implement role-based filtering in reminders/task selection (e.g., EPSS Supervisor only)?

#### A6: Data Source Mapping
10. **Incident/Claim Data Integration**
    - What claim/incident data is available in OLIMS that can be used as data sources for tasks?
    - How is Employee No, Employee Name, Incident No, WC Claim No currently stored?
    - How can we link tasks to specific claims/incidents?
    - What is the data relationship between employees, incidents, claims, and supervisors/advisors?
    - Are EPSS Advisor and EPSS Supervisor fields already defined for incidents, or do we need to create them?

---

### SECTION B: SYSTEM-GENERATED TASKS (OLD001)

#### B1: Task Template Architecture
11. **Task Template Storage**
    - Where should task templates be stored? (New table? Extend ZIM_REM?)
    - What fields should a template contain? (We know: name, SLA/due date, assigned role, trigger event, status)
    - How do we define data sources for template fields? (Static value, derived from incident, user entry)
    - Should templates be versioned to support the "no retroactive change" requirement?
    - How do we track which template version was used to create a specific task?

#### B2: Trigger Mechanism
12. **Event-Triggered Task Generation**
    - What are the specific trigger events for EPSS system-generated tasks? (Refer to EPSS Task List in BRD)
    - How will these events be detected? (Database triggers, batch jobs, workflow events?)
    - What is the latency requirement for triggering tasks after an event occurs?
    - How do we handle failed task creation? (Retry logic, error notifications?)
    - What is the performance impact of monitoring multiple claim events?

#### B3: Dependent Tasks
13. **Task Dependencies**
    - Can a task have multiple dependencies? (e.g., Task C depends on Task A AND Task B)
    - How do we define/store these dependencies?
    - When Task A is suspended, which dependent tasks should be suspended? (All downstream, or only direct children?)
    - When Task A is resumed, how do we calculate the new due date for dependent tasks?
    - Can a dependent task have its own suspension that's independent of the triggering task?

#### B4: SLA Configuration
14. **SLA/Due Date Calculation**
    - What units are SLAs measured in? (Days, business days, hours?)
    - How are weekends/holidays handled?
    - What is the formula for calculating original due date based on trigger event + SLA?
    - When a task is suspended and then resumed, how do we "carry over" used time?
    - Example: Task with 10-day SLA, triggered on Day 1, suspended on Day 4. When resumed, is the new due date Day 11 (4 used + 7 remaining) or Day 14 (original)?

---

### SECTION C: AD HOC TASKS (OLD002)

#### C1: Ad Hoc Task Storage
15. **Task Table Structure**
    - Where are ad hoc tasks stored? (Extend ZIM_REM or new table?)
    - What fields are required? (We know: Task Name, Due Date, Assigned To, Status, Date Created, Date Completed, Comments/Notes)
    - What additional metadata should be captured? (Task Type, Priority, Category, Created By?)
    - How do we differentiate ad hoc tasks from system-generated tasks?
    - Can ad hoc and system-generated tasks share the same table, or do they need separate tables?

#### C2: Task Lifecycle Management
16. **Task Status & State Transitions**
    - What are the valid task statuses? (Open, In Progress, On Hold/Suspended, Completed, Deleted?)
    - What are the valid state transitions? (Can you move from Completed back to In Progress? From Suspended directly to Completed?)
    - How is "Date Completed" handled for suspended tasks? (Null while suspended? Updated when resumed?)
    - When a task is deleted, is it hard-deleted or soft-deleted (marked inactive)?
    - How does the audit trail capture all these state changes?

#### C3: Editing & Deletion Rules
17. **Edit/Delete Authorization Logic**
    - Who can edit an ad hoc task? (Creator or Supervisor until marked Complete)
    - Are there specific fields that cannot be edited after creation? (Date Created, Task Name?)
    - What happens if a Supervisor edits a task created by a Claims Officer?
    - When a Supervisor deletes a task, is this logged differently than a Claims Officer attempting to delete?
    - Can a user attempt to edit/delete a task they don't have permission to modify? (Error handling?)

---

### SECTION D: SUSPENSION & RESUMPTION (OLD006-OLD008)

#### D1: Suspension Mechanism
18. **Suspension Logic**
    - Is suspension a new status field, or a separate "is_suspended" flag?
    - When is suspension data/reason captured? (New record or updated existing record?)
    - Should we maintain a suspension history? (e.g., Task X suspended on Day 5 for 2 days, then suspended again on Day 10 for 1 day?)
    - How do we differentiate between "original due date" and "suspended due date"?
    - What fields need to be frozen when a task is suspended? (Can assigned user change? Can comments be added?)

#### D2: Cascading Suspension
19. **Dependent Task Cascading**
    - When Task A (parent) is suspended, what triggers the suspension of Task B (child)?
    - Should this be automatic or require user action?
    - If parent is suspended for 5 days and resumed, but child was also independently suspended during that time, what happens on parent resumption?
    - Should the audit trail show that child suspension was due to parent suspension?
    - Can a user resume a child task while the parent is still suspended?

#### D3: Resumption Logic
20. **SLA Recalculation on Resumption**
    - How do we calculate "elapsed time before suspension"?
    - Example: Task with 10-day SLA, created on Jan 1 (due Jan 11), suspended on Jan 4. If resumed on Jan 7, what is the new due date?
      - Option A: Jan 11 (original date unchanged)
      - Option B: Jan 14 (3 days used + 7 days remaining)
      - Option C: Jan 11 + (Jan 7 - Jan 4) = Jan 14 (adjusts original date)
    - Is this calculation applied to system-generated and ad hoc tasks the same way?
    - When is the "new due date" record created? (On resumption, or at the time of suspension?)

#### D4: Overdue Logic
21. **Overdue Task Handling**
    - When a task is resumed and original due date is in the past, what triggers the overdue flag?
    - How is "No. of Days Overdue" calculated? (Current date - original due date or current date - new due date?)
    - Is there a visual indicator in the UI for overdue tasks?
    - Can an overdue task be completed normally, or is special handling required?
    - Should overdue tasks block dependent tasks from being triggered?

#### D5: Completion vs. Suspension
22. **Completion Restrictions**
    - Can a suspended task be marked as completed without resuming first?
    - If a task is suspended and the user tries to mark it complete, what is the error message/behavior?
    - When a task is resumed, what is the default status? (In Progress? Same status as before suspension?)
    - If a task was "Completed" when suspended (error case), how do we handle this?

---

### SECTION E: TEMPLATES (OLD009)

#### E1: Template Management
23. **Template CRUD Operations**
    - Where are task templates stored?
    - What is the UI for creating/editing templates? (Is this a separate screen or integrated with task creation?)
    - Who can create/edit templates? (Only EPSS Claims team members?)
    - Can templates be marked as "inactive" or "deleted" to maintain history?
    - Should there be template approval workflow before they become active?

#### E2: Data Source Definition
24. **Data Source Mapping**
    - How do we define/store data sources for template fields?
    - For "static value" source: How is the value defined in the template?
    - For "derived from incident" source: What incident fields are available? (Incident Type, Claimant Name, Injury Date?)
    - For "user entry" source: How does the system prompt the user to enter data at task creation time?
    - Can a template field have conditional data sources? (e.g., IF claim type = "WC" THEN use field X, ELSE use field Y?)

#### E3: Version Control
25. **Template Versioning & Retroactive Changes**
    - How do we track template versions?
    - When a template is edited, does it create a new version or update existing?
    - How do we link tasks to their template version?
    - When reporting on template changes, what information is captured? (Who changed, what changed, when, why?)
    - Can an older template version be restored?

#### E4: Template Application
26. **Active Task Protection**
    - How do we identify which tasks are using a template that's being edited?
    - Is there a "check before edit" to warn if tasks are in progress?
    - When a new template version is created, do existing active tasks use old or new version?
    - What happens when a task completes if the template was modified after task creation?

---

### SECTION F: REPORTING (OLD010)

#### F1: Report Architecture
27. **Report Facility Design**
    - Should we extend the existing ZIM_CM report or create a new EPSS-specific report?
    - What are the performance implications of the new filters (EPSS Claims/Transitional, WC Primary Claim, EPSS Supervisor, EPSS Claims Advisor)?
    - Should this be a BADI, a custom ALV report, a web UI, or something else?
    - How frequently should the report be generated? (Real-time, cached, scheduled?)
    - What is the maximum expected volume of tasks per query?

#### F2: Report Filters & Selections
28. **Filter Implementation**
    - How do we filter by "EPSS Claims/Transitional"? (Is this a claim type field?)
    - How do we filter by "EPSS Supervisor" and "EPSS Claims Advisor"? (Do incidents have these fields?)
    - Can filters be combined? (e.g., "Show all EPSS Claims where Supervisor = X AND Status = Open")
    - Should filters have default values?
    - Can users save filter presets?

#### F3: Report Fields & Data Accuracy
29. **Report Field Mapping**
    - Where does "No. of Days Overdue" come from? (Current date - original due date? Or custom calculation?)
    - For suspended tasks, what should "No. of Days Overdue" show? (Days since original due date or days since new due date?)
    - What is "Updated By"? (Last user who modified the task in any way? Or only specific modifications?)
    - For "Suspension Status/Reason", should we show all suspensions or just the current one?
    - How do we ensure real-time accuracy if data is cached?

#### F4: Report Output & Export
30. **Export Functionality**
    - What format should Excel export use? (Single sheet? Multiple sheets for different statuses?)
    - Should there be formatting/styling in the Excel output?
    - How do we handle large exports? (Pagination? Compression?)
    - What is the security for exported files? (Can they be freely shared?)
    - Should the Excel export include audit trail data (who exported, when, why)?

#### F5: Report Access Control
31. **Reporting Permissions**
    - Who can access the EPSS report? (All users, only EPSS Claims Officers/Supervisors?)
    - Can a user see data for claims/incidents they're not assigned to?
    - Should there be row-level security? (e.g., EPSS Advisor can only see their own tasks?)
    - How is this access control enforced?

---

### SECTION G: AUDIT & COMPLIANCE

#### G1: Audit Trail Requirements
32. **Audit Logging Scope**
    - What specific actions must be audit logged? (We know: create, edit, delete, suspend, resume, complete, export)
    - What fields are captured? (Timestamp, User ID, User Name, Old Value, New Value, Reason?)
    - For bulk operations (e.g., batch task creation), how is this logged? (Single entry or per task?)
    - What is the retention period for audit logs?
    - Can audit logs be exported/reported on?

#### G2: Failed Attempts & Error Logging
33. **Error Handling & Logging**
    - What errors should be logged? (Authorization failures, validation failures, system errors?)
    - How are failed export attempts logged?
    - When a task creation fails (missing required fields), does this create an audit entry?
    - Should failed attempts be reported separately or included in the main audit report?

#### G3: Payroll Integration
34. **Payroll Impact Analysis**
    - How might suspended tasks impact payroll processing currently?
    - What specific payroll-related processes need to be verified?
    - Is there a payroll check/flag that should prevent task suspension if payroll run is in progress?
    - Should suspended tasks be excluded from payroll reconciliation reports?

---

### SECTION H: UI/UX & ERROR HANDLING

#### H1: UI Components
35. **Suspension UI**
    - What does the suspend/hold button look like? (Where is it positioned? What are the icon/label?)
    - Does the suspension reason form appear as a popup, inline, or separate screen?
    - How is the suspension status displayed? (Badge, icon, color, text?)
    - What does the reminders/tasks display screen look like for EPSS? (Is it different from existing displays?)

#### H2: Error Messages
36. **Error Message Specifications**
    - What exactly should the error message be when suspending a completed task?
    - What other error messages need to be defined? (Missing fields, unauthorized action, export failure, system unavailable?)
    - Should error messages be user-friendly (plain language) or technical?
    - Should there be error logging/support escalation for system errors?

#### H3: Validation Rules
37. **Field Validation**
    - What makes a task name valid? (Required, min/max length, special characters allowed?)
    - What are the constraints for due date? (Future date only? Can it be today?)
    - For "Assigned To", what users can be selected? (Only active EPSS users?)
    - What character limits are there for the suspension reason?
    - Can task creation proceed if some optional fields are missing?

---

### SECTION I: CONFIGURATION & DEPLOYMENT

#### I1: System Configuration
38. **Implementation Configuration**
    - How are trigger events configured? (Configuration tables, hard-coded, rule engine?)
    - How are SLAs configured per claim type? (By trigger event? By incident type?)
    - What is the process for adding new system-generated tasks after go-live?
    - Is there a configuration UI or do changes require code deployment?

#### I2: Data Migration
39. **Existing Data Handling**
    - Are there existing reminders/tasks in OLIMS that need to be migrated to EPSS?
    - If so, how should historical data be categorized?
    - Should existing tasks support the new EPSS-specific fields retroactively?
    - What is the migration testing strategy?

#### I3: Performance & Scalability
40. **Technical Performance**
    - What is the expected volume of tasks per incident? (Avg, peak?)
    - How many incidents/claims are in OLIMS? (For performance baseline?)
    - What are the acceptable query response times for reports?
    - Should reports be scheduled/cached or real-time?
    - Are there any known performance issues with existing reminders/task functionality we should be aware of?

---

### SECTION J: INTEGRATION POINTS

#### J1: System Integration
41. **Third-Party System Integration**
    - Do payroll systems pull task data from OLIMS? (If so, what format/fields?)
    - Are there other systems that consume OLIMS task/reminder data?
    - Should EPSS tasks be available via API or just UI?
    - Are there any workflow engines (e.g., SAP Workflow) that trigger on task events?

#### J2: Documentation & Training
42. **Technical Documentation**
    - What technical documentation exists for the reminders/tasks system?
    - Are there existing process flows/ERDs for this functionality?
    - What system design patterns should we follow?
    - Are there coding standards/frameworks we should be aware of?

---

## PART 3: QUESTION PRIORITIZATION

### Critical Path Questions (Must Answer First)
**These block other questions and design decisions:**
- A1.1, A1.2, A2.5, A3.7, A5.9, B2.12, C1.15, D1.18, F1.27

### High Priority (Required for Spec)
**These are necessary for detailed technical specification:**
- A1.3, A1.4, A2.6, A3.8, B1.11, C2.16, D2.19, D3.20, F2.28

### Medium Priority (Nice to Have)
**These provide context and details:**
- A4.8, B3.13, C3.17, D4.21, E1.23, F3.29

### Low Priority (Implementation Details)
**These can be determined during development:**
- A6.10, H1.35, I2.39, J2.42

---

## PART 4: ADDITIONAL RESEARCH TASKS

### 1. Document Review
- [ ] Review EPSS Task List in Business Requirements Document (BRD)
- [ ] Review existing OLIMS Reminders/Tasks documentation
- [ ] Review existing OLIMS Reporting documentation (ZIM_CM reports)
- [ ] Review OLIMS Data Dictionary for relevant tables
- [ ] Review existing audit logging implementation

### 2. System Access & Exploration
- [ ] Request SAP/OLIMS system access (DEV/TEST environment)
- [ ] Navigate to existing Reminders/Tasks screens
- [ ] Execute existing Reminders/Tasks reports
- [ ] Review ZIM_REM table structure and sample data
- [ ] Review existing audit log structure

### 3. Stakeholder Interviews (Beyond Developers)
- [ ] Business Analyst (EPSS requirements)
- [ ] EPSS Claims Officer/Supervisor (end users)
- [ ] SAP System Administrator (infrastructure, security)
- [ ] Database Administrator (table structures, performance)
- [ ] Security/Compliance (audit requirements, access control)

---

## PART 5: TECH SPEC OUTLINE

Once you have developer answers, your Tech Spec should include:

1. **Architecture Overview**
   - System components and interactions
   - Data flow diagrams
   - Integration points

2. **Data Model**
   - Table structures (new and modified)
   - Field definitions, types, constraints
   - Relationships and foreign keys
   - Indexing strategy

3. **Functional Design**
   - Detailed workflows for each requirement (OLD001-OLD010)
   - State diagrams
   - Sequence diagrams for complex processes

4. **UI/UX Design**
   - Screen mockups/specifications
   - Navigation flows
   - Error handling and messages

5. **Integration Design**
   - APIs/interfaces
   - Batch job specifications
   - Event trigger mechanisms

6. **Security & Access Control**
   - Role-based access matrix
   - Authorization rules
   - Data encryption/masking requirements

7. **Audit & Compliance**
   - Audit trail structure
   - Logging specifications
   - Compliance mappings

8. **Performance & Scalability**
   - Query optimization
   - Caching strategy
   - Volume/performance targets

9. **Testing Strategy**
   - Unit test specifications
   - Integration test specifications
   - Performance test specifications

10. **Deployment & Cutover**
    - Configuration requirements
    - Data migration approach
    - Rollback procedures

---

*Next Steps:*
1. Schedule developer interviews (prioritize Critical Path questions)
2. Request system access for exploration
3. Gather existing documentation
4. Document answers in a separate "Developer Q&A" document
5. Use answers to build detailed Tech Spec

