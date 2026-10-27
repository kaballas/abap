# EPSS Reporting Analysis – Requirements Gathering Package

## IMPORTANT: Requirements Gathering Phase (Phase 1) Only

We are in **REQUIREMENTS GATHERING**, not design or development.

**What we did:**
- ✅ Read the BRD carefully
- ✅ Extracted what reports need (columns, data sources)
- ✅ Identified which BRD requirements are missing data source details
- ✅ Documented 9 critical gaps where BRD doesn't specify table/field names

**What we're NOT doing:**
- ❌ Design decisions (UI controls, filter logic, defaults)
- ❌ Implementation details (SQL syntax, workarounds)
- ❌ Edge case handling

**Next step:** Get answers to the 9 data source gaps, then lock requirements for Design phase.

---

## Quick Start Guide

### For Project Managers
1. **Start here:** Read `/BUSINESS-COMMUNICATION-PACKAGE.md` (Executive Summary section)
2. **Then:** Follow the "Recommended Process for Clarifications" to schedule stakeholder meetings
3. **Track:** Use the "Q&A Responses Tracking Template" to monitor clarification responses

### For Technical Leads
1. **Start here:** Read `/reports/CROSS-REPORT-ANALYSIS.md` (Data Dependency Map section)
2. **Then:** Review the report files in `/reports/` to understand field mappings and assumptions
3. **Review:** Check which [TBC] items affect your area (OLIMS, Payroll, HR, EPSS)

### For Business Analysts
1. **Start here:** Read `/BUSINESS-COMMUNICATION-PACKAGE.md` (Critical Blockers section)
2. **Then:** Review specific report "Open Questions (TIER 2)" sections for clarifications needed
3. **Provide:** Answers to RPC downgrade logic and claim type selection rules

---

## Document Structure

```
/docs/
├── BUSINESS-COMMUNICATION-PACKAGE.md ⭐
│   ├── Executive Summary (READ FIRST)
│   ├── Critical Blockers (10 items with impact)
│   ├── Stakeholder Communication Templates (5 targeted templates)
│   ├── Risk Assessment & Timeline Impact
│   ├── Q&A Response Tracking Template
│   └── Recommended Clarification Process
│
├── brd.md (Source of truth – Business Requirements Document)
│
└── reports/
    ├── CROSS-REPORT-ANALYSIS.md ⭐
    │   ├── Shared Assumptions Summary (25+ items)
    │   ├── Critical Blocking Items (10, organized by impact)
    │   ├── High-Priority Items (8)
    │   ├── Data Dependency Map (visual)
    │   ├── Recommended Clarification Sequence (Phases 1-4)
    │   └── Summary Statistics
    │
    ├── RPB-epss-on-duty-claim-report.md ✅ COMPLETE
    │   ├── Business Purpose & Key Metrics
    │   ├── SAP Field Mappings (54 fields)
    │   ├── Selection Criteria & Filters
    │   ├── Data Relationships
    │   ├── Calculated Fields
    │   ├── Assumptions (56+ items) ⭐
    │   └── Open Questions (2-tier format) ⭐
    │
    ├── RPC-epss-down-grade-report.md ✅ COMPLETE
    │   ├── Business Purpose & Key Metrics
    │   ├── SAP Field Mappings (32 fields)
    │   ├── Selection Criteria & Filters
    │   ├── Data Relationships
    │   ├── Calculated Fields
    │   ├── Assumptions (31 items) ⭐
    │   └── Open Questions (2-tier format) ⭐
    │
    ├── RPK-epss-forecast-estimates-summary.md ✅ COMPLETE
    │   ├── Business Purpose & Key Metrics
    │   ├── SAP Field Mappings (13 fields from OLIMS)
    │   ├── Selection Criteria & Filters
    │   ├── Data Relationships
    │   ├── Calculated Fields
    │   ├── Assumptions (23 items) ⭐
    │   └── Open Questions (2-tier format) ⭐
    │
    ├── RPI-epss-pay-simulation-report.md ✅ COMPLETE
    │   ├── Business Purpose & Key Metrics
    │   ├── SAP Field Mappings (31 fields)
    │   ├── Selection Criteria & Filters
    │   ├── Data Relationships
    │   ├── Calculated Fields
    │   ├── Assumptions (26 items) ⭐
    │   └── Open Questions (2-tier format) ⭐
    │
    ├── SAP_Fields.md (Field reference – Updated with TBC markers)
    ├── README.md (Report specification process guide)
    └── [14 other reports – pending analysis]
```

⭐ = Most important sections
✅ = Complete with Assumptions + 2-tier Questions

---

## What This Package Provides

### 1. Complete Assumptions Documentation (100+ Items)
Every assumption about data sources, calculations, and business logic is documented with:
- **Description** – What we're assuming
- **Why** – Business impact if assumption wrong
- **Evidence** – Where did this come from (BRD, SAP, business rule)
- **Owner** – Who can confirm or correct the assumption
- **Status** – Confirmed, TBC (To Be Confirmed), or [TBC] (blocking)

### 2. Critical Blocking Items (18 Items)
- **10 CRITICAL items** preventing any development
- **8 HIGH-priority items** blocking specific reports
- **4 MEDIUM-priority items** (non-blocking)

Each blocker includes:
- What's missing or unclear
- Which reports are affected
- Why it matters
- Who can clarify
- Recommended resolution

### 3. Shared Dependency Analysis
Shows which assumptions are:
- **Report-specific** (affect only one report)
- **Shared across multiple reports** (affect 2-8 reports)
- **Critical to entire solution** (affect all reports)

### 4. Data Dependency Map
Visual diagram showing:
- SAP/OLIMS table integration points
- How employee, incident, claim, and salary data flow
- Where claim flags originate
- Where salary calculations come from
- Which [TBC] items block each path

### 5. Stakeholder Communication Templates
Ready-to-send templates for:
- HSWC Business Leadership (executive summary)
- OLIMS Project Team (technical requirements)
- Payroll/HR Technical Team (SAP field specifications)
- EPSS Team (calculation and period definitions)

### 6. Clarification Tracking Tools
- Q&A Response Tracking Template (to monitor progress)
- Recommended clarification sequence (Phases 1-4)
- Process for handling clarifications (4-week timeline)
- Escalation path if delays occur

### 7. Risk Assessment & Timeline Impact
- Current status of each project phase
- Risk level for each component
- Timeline impact if clarifications delayed
- Go-live date projections (3-6 months depending on clarity)

---

## How to Use This Package

### Scenario 1: You're a Project Manager Starting the Project

1. Read `/BUSINESS-COMMUNICATION-PACKAGE.md` (Executive Summary)
2. Identify stakeholders who need to clarify items:
   - OLIMS Team (flags, calculation table, estimate structure)
   - Payroll Team (ORP, pre-injury salary, payroll table)
   - HR Team (pre-injury salary completeness)
   - EPSS Team (period rules, ORP logic)
   - Business (RPC downgrade rules, claim selection logic)
3. Schedule kickoff meeting with all stakeholders
4. Use communication templates from the package (customize with your project details)
5. Set 1-week response deadline
6. Track responses using Q&A Template

### Scenario 2: You're a Technical Lead Being Asked "Can You Build This?"

1. Read `/reports/CROSS-REPORT-ANALYSIS.md` (Shared Assumptions section)
2. Check which [TBC] items affect YOUR area (OLIMS, Payroll, HR, etc.)
3. Read the specific report files (RPC, RPK, RPI) to understand dependencies
4. For each [TBC] item affecting you:
   - Estimate effort to clarify (1 hour, 1 day, 1 week?)
   - Identify who to ask
   - Schedule clarification meeting
5. Document confirmed values back in report files
6. Remove [TBC] markers as you confirm each item

### Scenario 3: You're a Business Analyst Being Asked for Clarifications

1. Review `/BUSINESS-COMMUNICATION-PACKAGE.md` (Critical Blockers section)
2. Find the questions that affect YOUR area:
   - RPC downgrade logic (HSWC Claims team)
   - Claim type simultaneous flags (EPSS Team)
   - Period definitions and week counting (Payroll)
3. Review the specific report files to understand context
4. Provide clear, documented answers with:
   - Decision table or formula
   - Examples showing the rule
   - Edge cases and exceptions
5. Document answers in the Q&A Response Template

### Scenario 4: You're a Developer Waiting to Start Coding

1. Read `/reports/CROSS-REPORT-ANALYSIS.md` (Critical Blocking Items)
2. Identify which blockers prevent YOUR work:
   - Do you need EPSS Calculation Table? → Check blocker #2
   - Do you need flag code values? → Check blocker #1
   - Do you need pre-injury salary? → Check blocker #3
3. Check if clarifications have been received (review Q&A Template)
4. Once blockers cleared:
   - Review the detailed report file for your assigned report
   - Check the Assumptions section (now confirmed or with answers filled in)
   - Read the SAP Field Mappings section
   - Use the Data Relationships section to understand joins
   - Use Calculated Fields to understand business logic
   - Create queries and code based on confirmed assumptions

---

## The "Assumptions" Section Explained

Every report now has an **Assumptions** section documenting:

### Tier 1: Data Sources & System Integration
- Where does data come from? (which SAP/OLIMS tables)
- How are tables linked? (PERNR, INCIDENT keys)
- What's the primary data structure? (one row per employee/incident?)

### Tier 2: Claim Type & Selection Criteria
- How are claims classified (PBRI, EPSS, Transitioned)?
- What flag values indicate each type?
- How do filters work (AND vs OR logic)?
- Are flags mutually exclusive?

### Tier 3: Period & Date Handling
- How are time periods defined (Period 1/2/3)?
- What's the week definition (calendar vs payroll)?
- How are effective dates used (BEGDA/ENDDA)?
- What's the current-as-of-date logic?

### Tier 4: Salary & Loading Calculations
- How is ORP (Ordinary Rate of Pay) calculated?
- How is Period 2 75% salary derived?
- Which tables store salary data?
- What's the effective dating for salary changes?

### Tier 5: Field Mappings & Missing Implementations
- Where is each report column sourced from?
- Which fields are in which tables?
- Are there any missing table references [TBC]?
- What needs to be looked up vs. stored directly?

### Tier 6: Data Quality & Completeness
- Are all records populated or some may be NULL?
- How do we handle missing data (blank, N/A, $0)?
- What's the completeness assumption for each table?

---

## The "Open Questions" Section Explained

Every report now has **Open Questions** split into:

### TIER 1: Confirmed from BRD (No Further Questions Needed)
What the BRD **explicitly states** without ambiguity:
- Which reports need which columns? ✅
- What are the business requirements? ✅
- Which entities are involved (employees, incidents, claims)? ✅

**Action:** Move to Design phase – no questions needed.

### TIER 2: Clarification Needed from Business
What the BRD **requires but doesn't specify the data source**:
- BRD says "show ORP column" but doesn't say which SAP table has ORP ❓
- BRD says "filter by claim type" but doesn't say which field indicates PBRI vs EPSS ❓
- BRD says "show pre-injury salary" but doesn't say which SAP field ❓

**Action:** Send these exact questions to Business/Technical stakeholders for answers.

---

**Important:** TIER 2 questions are ONLY about missing data sources, NOT about design decisions.

**CORRECT:** "Which SAP table stores ORP?" (Requirements gap)  
**INCORRECT:** "Should ORP have a checkbox filter or dropdown?" (Design decision – ask later)

**CORRECT:** "How many OLIMS fields are in the estimate table?" (Requirements gap)  
**INCORRECT:** "What order should columns appear in the report?" (Design decision – ask later)

This format prevents:
- ❌ Asking about design when we should ask about requirements
- ❌ Asking business for UI/logic decisions prematurely
- ❌ Wasting time on non-issues
- ✅ Focusing on real requirements gaps
- ✅ Separating requirements gathering from design
- ✅ Building stakeholder confidence

---

## Next Steps (For Your Team)

### Week 1: Clarification Phase
1. ✅ Review this package
2. ✅ Customize communication templates with your project details
3. ✅ Schedule kickoff meeting with all stakeholders
4. ✅ Distribute targeted communication templates
5. ✅ Set 1-week response deadline

### Week 2-3: Working Session Phase
6. ✅ Conduct 1-hour sessions with: OLIMS, Payroll, HR, EPSS, Business
7. ✅ Document clarification responses in Q&A Template
8. ✅ Update report files with confirmed values
9. ✅ Remove [TBC] markers as items clarified
10. ✅ Request stakeholder sign-off on updated assumptions

### Week 4-6: Design Phase
11. ✅ Apply same analysis pattern to remaining 14 reports
12. ✅ Create updated cross-report matrix with all 19 reports
13. ✅ Begin technical design (data model, ERD, queries)
14. ✅ Plan development work packages

### Week 7+: Development Phase
15. ✅ Build report queries and code
16. ✅ Test with confirmed assumptions
17. ✅ Integration testing
18. ✅ User acceptance testing
19. ✅ Go-live

---

## FAQ

**Q: Why are some items marked [TBC] when we have the BRD?**
A: The BRD states business requirements (e.g., "show PBRI claim flag") but doesn't specify technical implementation details (e.g., which SAP table/field stores the flag or what code values mean true/false). These technical details are [TBC].

**Q: Can we start development without clarifying the [TBC] items?**
A: Not without significant risk. You'd have to guess at technical implementation, which likely leads to:
- Building the wrong reports
- Needing major rework after clarifications received
- Test failures when actual data doesn't match guesses
- Go-live delays

It's faster to clarify first, then code once.

**Q: How long will clarifications take?**
A: Typically 1-2 weeks if you follow the recommended process:
- Week 1: Send requests, schedule meetings
- Week 2: Conduct working sessions, get answers
- Week 3: Document answers, stakeholder sign-off

Total go-live timeline: ~3 months (design 2 weeks, dev 6-8 weeks, testing 3-4 weeks)

**Q: What if someone can't answer a question?**
A: Document that fact and escalate to their manager or program leadership. Don't proceed without answers to critical blockers (the 10 items in CRITICAL tier).

**Q: Can we just guess at the [TBC] items and fix later?**
A: Not recommended. See escalation section in BUSINESS-COMMUNICATION-PACKAGE.md. You can proceed with non-critical items marked [COULD], but must have answers to [MUST] items.

**Q: How do we update these documents when clarifications arrive?**
A: In each report file, find the assumption that was clarified. Replace the [TBC] marker with the confirmed value. Update the Open Questions TIER 1 (Confirmed from BRD) section to document the new knowledge.

---

## Document Control

| Document | Version | Date | Status |
|---|---|---|---|
| BUSINESS-COMMUNICATION-PACKAGE.md | 1.0 | 2026-01-23 | Ready for Stakeholder Review |
| CROSS-REPORT-ANALYSIS.md | 1.0 | 2026-01-23 | Ready for Technical Review |
| RPB-epss-on-duty-claim-report.md | 2.0 | 2026-01-23 | Complete with Assumptions |
| RPC-epss-down-grade-report.md | 2.0 | 2026-01-23 | Complete with Assumptions |
| RPK-epss-forecast-estimates-summary.md | 2.0 | 2026-01-23 | Complete with Assumptions |
| RPI-epss-pay-simulation-report.md | 2.0 | 2026-01-23 | Complete with Assumptions |

---

## Questions or Feedback

If you need clarification on any assumption or analysis:
1. Check the report files first (most questions answered there)
2. Check CROSS-REPORT-ANALYSIS.md (for cross-report patterns)
3. Check BUSINESS-COMMUNICATION-PACKAGE.md (for context)
4. Contact the Analysis Team (OpenCode)

---

**Last Updated:** 2026-01-23
**Status:** READY FOR DISTRIBUTION
**Next Review:** After Phase 1 clarifications received

