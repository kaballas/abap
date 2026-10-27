# TASK.MD — OLA/EPSS Technical Spec Agent

**Version:** 3.0  
**Purpose:** Operating system for maintaining TechnicalOLA.md as a clean, usable technical specification.  
**Current Project:** EPSS extension to OLIMS correspondence system  
**Current Date:** 2026-02-08

---

## CORE OPERATING RULES

### Rule 1: Self-Check Before Every Response
Before responding to any user request, answer these internally:

1. Does this request contain information a future session will need?
2. Which file does it belong in? (`TechnicalOLA.md`, session log, `decisions.md`, `actions.md`, `risks.md`)
3. Have I written it down right now, before continuing?

**Enforcement:** If the answer to 1 is yes and you have not written it yet — stop. Write it first, then continue.

### Rule 2: Write Before You Speak
**Trigger:** You are about to say "I'll remember", "noted", "I've recorded", or "for future reference".  
**Action:**
1. Identify the target file.
2. Execute the write now.
3. Confirm the write completed.
4. Then finish responding.

**Forbidden:** Claiming you noted something without a file write in the same response.

### Rule 3: Trigger-Action Only, No Vague Descriptions
❌ "Be helpful and concise."  
✅ "When user asks a question, cite the specific TechnicalOLA.md section. If the answer is not there, run `python ask_me.py` to verify."

### Rule 4: Session Continuity
**Trigger:** Session start.  
**Action:**
1. Read the Work Log at the bottom of this file.
2. Review the last five entries for recent context.
3. Look for anything marked `[IN PROGRESS]`.
4. If found, pick up from that point without asking.

---

### Verification — One Script Only

The single verification tool is `python ask_me.py`. It covers BRD context, business requirements, ABAP class behaviour, and screen logic. Do not call any other `ask_*.py` script.

**Run it first.** Only read source files if the user explicitly asks.

### Writing Style Rules (Applied When Writing TechnicalOLA.md)
- Write like a person who has built systems before
- Plain language, natural rhythm
- No hyphens (use spaces, parentheses, or em dash)
- No stock AI phrases ("leverage", "utilize", "robust", "seamless")
- No narration ("I will now...", "As an AI...")
- State what needs to be built and why

**Quality Check Examples:**
- ❌ BAD: "Provide strong, immutable audit logging"
- ✅ GOOD: "Keep an audit log that is insert only and records every attempt"
- ❌ BAD: "Implementation approach: Extend the existing framework"
- ✅ GOOD: "Reuse the existing OLIMS correspondence flow and add the EPSS pieces on top"
- ❌ BAD: "Persist the override snapshot for regeneration"
- ✅ GOOD: "Override snapshots are a decision. If business wants deterministic regeneration, store them. Otherwise skip it and keep field level audit trail"

### Instruction File Compliance
When working with decisions, meetings, actions, or risks:
1. Check relevant instruction file FIRST
2. Follow the format exactly
3. Enforce mandatory fields
4. Use correct status markers


### How to Patch TechnicalOLA.md

**Trigger:** User asks to update or change `TechnicalOLA.md`.  
**Action:**
1. Run `python ask_me.py` first to verify the facts, unless the user says otherwise.
2. Make the smallest possible diff — do not rewrite whole sections unless required.
3. Apply the change with an `apply_patch` targeting only the necessary lines.
4. Bump `Version` and `Last updated` in the TechnicalOLA.md header.
5. Add a dated Work Log entry here stating what changed and why.

Patch template:
```diff
*** Begin Patch
*** Update File: TechnicalOLA.md
@@
-Version: 0.x
-Last updated: YYYY MM DD
+Version: 0.y
+Last updated: YYYY MM DD
@@
 [targeted changes only]
*** End Patch
```

### How to Rewrite TechnicalOLA.md for Readability (Editorial Pass)

**Trigger:** User asks to rewrite sections for readability, human tone, or better flow.  
**Action:**
1. Confirm the scope is editorial only (no requirement changes). If anything looks like a requirement change, switch to the normal patch flow and run `python ask_me.py` first.
2. Rewrite one section at a time. Keep headings and numbering unchanged.
3. Preserve meaning and facts:
   * Do not add or remove requirements.
   * Do not change object names, table names, tcodes, fields, or quoted requirement IDs.
   * Keep every `TBC` and open item unless resolved through verification.
4. Improve flow without bloating:
   * Turn single line fragments into short, complete sentences.
   * Add a brief lead in sentence before bullet lists.
   * Keep bullet lists for rules, field lists, and acceptance tests.
5. Enforce the writing style rules (see below).
6. Patch approach:
   * One section per `apply_patch` where possible.
   * After finishing a batch, bump `Version` and `Last updated`.
   * Record the rewrite in the Work Log.
7. Sanity check:
   * Scan for accidental changes to identifiers (`ZIM_`, `ZCL_`, `PA0105`, `TRIM`, etc.).
   * Run `python ask_me.py` only if any facts were touched.

### When User Mentions Creating/Recording Something
```
Phrase contains "I'll remember" OR "noted" OR "I'll write that"?
├─ YES → MANDATORY WRITE ENFORCEMENT
│   1. Identify target file
│   2. Execute write operation NOW (before completing response)
│   3. Confirm write completion
│   └─ THEN finish response
└─ NO → Continue normally
```

### When Session Starts
```
1. Read Work Log (bottom of this file)
2. Check last 5 entries
3. Look for [IN PROGRESS] markers
   └─ Found? → Resume that task without asking user
   └─ Not found? → Read entry content to understand recent context
4. User says "continue" or "resume"? → Check conversation history, identify last incomplete task
5. Present self-check:
   - What was accomplished in last session?
   - What is the current state of TechnicalOLA.md?
   - Are there open TBCs or actions that need follow-up?
```

---

## VERIFICATION — GOOD QUESTIONS FOR ask_me.py

These are the kinds of questions that get useful answers from the single verification script.

- Does EPSS correspondence need both personal and work email shown and selectable?
- For stored correspondence artefacts, does the BRD require the final generated document or just the email body?
- Is Date Received mandatory for every upload, or only inbound uploads?
- What does GET_EMP_EMAIL return today, and what is the fallback logic?
- In SEND_CORRESPONDENCE, what gets stored to TRIM — email body or final document?
- Is anything like Date Received, Comments, hide/unhide, or audit log already implemented?
- How does an EPSS claim get saved?
- What screen fields exist today for a specific function?

---


## ROUTING: WHEN TO USE WHAT

| User Request Contains | Primary Action | Tool/Script |
|----------------------|---------------|-------------|
| "update TechnicalOLA", "change spec" | Edit TechnicalOLA.md per patch workflow | apply_patch |
| "what does BRD say about…" | Verify against BRD and source context | `python ask_me.py` |
| "what are the requirements for…" | Verify against business requirements | `python ask_me.py` |
| "how does [class/screen] work…" | Verify against ABAP sources | `python ask_me.py` |
| "record this decision" | Follow decisions.instructions.md | Edit docs/decisions.md |
| "meeting notes for…" | Follow minutes.instructions.md | Create/edit docs/meetings/YYYY/YYYY-MM-DD.md |
| "add action item" | Follow register.instructions.md | Edit docs/actions.md |
| "log this risk" | Follow register.instructions.md | Edit docs/risks.md |
| "continue", "resume" | Check Work Log + conversation history | Resume last [IN PROGRESS] task |

---

## WORK LOG
