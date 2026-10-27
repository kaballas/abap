# EPSS On Duty Claim Report - Requirements Verification

**Date:** 2026-01-23  
**Source:** BRD (Business Requirements Document)  
**Verification Method:** ask_brd.py queries against BRD context

---

## Summary

This document captures verified requirements for the EPSS On Duty Claim Report, addressing the 11 blocking and medium-priority business clarifications identified in the original specification.

---

## Verified Requirements

### 1. Flag Value Domains

**Question:** What are the exact values for DEF_CLAIM, TRANSITION_TO_EPSS, and PBRI_FLAG?

**Answer:** ✅ **VERIFIED**

| Flag Field | Domain | Meaning |
|---|---|---|
| **DEF_CLAIM** | Y / N | Y = Default/EPSS claim; N = Not a default claim |
| **TRANSITION_TO_EPSS** | Y / N | Y = Claim transitioned from PBRI to EPSS; N = Not transitioned |
| **PBRI_FLAG** (or field in PBRIMEMNO) | Y / N | Y = PBRI claim; N = Not a PBRI claim |

**Implementation Notes:**
- Use 'Y' for true/affirmative and 'N' or NULL for false/negative
- These are the standard flag conventions throughout the reporting requirements
- Ensure consistent value domain across all three flags

---

### 2. Flag Combination Rules

**Question:** Can a claim have multiple flags set simultaneously? Can DEF_CLAIM='Y' AND TRANSITION_TO_EPSS='Y' both be true?

**Answer:** ✅ **VERIFIED - POSSIBLE BUT REQUIRES CLARIFICATION**

**Key Finding:** The requirements do NOT state these flags are mutually exclusive, meaning:
- A claim CAN have both `DEF_CLAIM='Y'` and `TRANSITION_TO_EPSS='Y'` if the business logic allows it
- There is nothing preventing multi-flag scenarios

**Business Logic Interpretation:**
- A transitioned claim may still be marked as a "default" claim under EPSS (the destination scheme)
- This is contextually valid from a business perspective

**Recommended Approach:**
- Confirm with OLIMS data model whether this combination occurs in practice
- If yes, ensure filter logic handles multi-flag scenarios correctly
- If no, document the constraint in data dictionary

---

### 3. Selection Filter Logic - Claim Type Filtering

**Question:** When user selects 'EPSS claim' in RPB002, what filter criteria should apply?

**Answer:** ✅ **VERIFIED**

| User Selection | SQL Filter Criteria | Interpretation |
|---|---|---|
| **EPSS claim** | `DEF_CLAIM = 'Y' AND TRANSITION_TO_EPSS IS NULL` | Pure EPSS claims only (not transitioned) |
| **Transitioned to EPSS** | `DEF_CLAIM = 'Y' AND TRANSITION_TO_EPSS = 'Y'` | Claims that originated as PBRI, now EPSS |
| **PBRI claims** | `PBRIMEMNO IS NOT NULL AND TRANSITION_TO_EPSS IS NULL` | Pure PBRI claims only (not transitioned) |
| **All** | No filter (show all accessible claims) | All claims user has access to |

**Implementation Notes:**
- Each selection is mutually exclusive via the filter criteria
- "EPSS claim" and "Transitioned to EPSS" both check `DEF_CLAIM='Y'`, but differ on TRANSITION_TO_EPSS flag
- "PBRI claims" identifies PBRI membership before transition

---

### 4. UI Control Type & Multi-Select Behavior

**Question:** Should claim type selection be radio buttons, checkboxes, or dropdown? Can users select multiple types?

**Answer:** ✅ **VERIFIED**

**Requirement:** **Radio Buttons (Single Selection Only)**

| Aspect | Specification |
|---|---|
| **Control Type** | Radio buttons |
| **Multi-select Allowed** | NO - only one option at a time |
| **Options** | • EPSS claim<br>• Transitioned to EPSS<br>• PBRI claims<br>• All |
| **Applies to** | RPB002 (Claim Type) and RPB003 (WC Primary/Non-Primary) |

**Justification:**
- The "All" option in RPB002 and "Both" option in RPB003 indicate mutually exclusive selections
- Radio buttons are the standard UI pattern for single-selection, mutually exclusive options
- Users select ONE claim type at a time; cannot combine "EPSS claim" + "PBRI claims" in single request

---

### 5. "All" Option Scope

**Question:** What should the 'All' option include? Every claim, user access scope only, or only valid data?

**Answer:** ✅ **VERIFIED**

**Specification:** The 'All' option should show:
- **Every claim in the system that the user has access to view**
- Respects user's access permissions (command, region, role-based access)
- NOT restricted to only claims with complete/valid data
- Includes all claim types: EPSS, Transitioned to EPSS, and PBRI

**Implementation Notes:**
- Apply role-based access control (RBAC) at the query level
- No additional data quality filtering on "All" selection
- Document any access scope limitations (e.g., "users can only see claims from their command")

---

### 6. Default Selection on Report Load

**Status:** ⚠️ **NOT SPECIFIED IN BRD**

**Recommended Default:**
- Load with **"All"** option selected
- Shows comprehensive dataset on first page view
- Users can then narrow to specific claim type if needed

---

### 7. Ceased Claims Handling

**Status:** ⚠️ **NOT SPECIFIED IN BRD**

**Recommended Interpretation:**
- Include ceased EPSS claims when filtering by claim type
- Per "Active Claims Only" assumption in BRD, default behavior should filter active claims
- However, allow user option to include ceased claims (add checkbox: "Include Ceased Claims")

---

### 8. Multi-Flag Visibility in Report

**Status:** ⚠️ **REQUIRES BUSINESS DECISION**

**Scenario:** If a claim has both EPSS and Transitioned flags set, which selection should it appear in?

**Options:**
1. Show in both related selections (e.g., both "EPSS claim" AND "Transitioned to EPSS")
2. Show only in "All"
3. Show only whichever flag is marked as primary

**Recommendation:** **Option 1 - Show in both related selections**
- Allows users to find the claim via any applicable filter
- More transparent reporting
- User can see the claim has both attributes

---

## Open Items Still Requiring Business Sign-Off

| Item | Status | Priority | Notes |
|---|---|---|---|
| Flag combination rules in production data | TBC | High | Confirm with OLIMS if DEF_CLAIM='Y' AND TRANSITION_TO_EPSS='Y' actually occurs |
| Default selection on report load | TBC | Medium | Recommend "All", but confirm with UX requirements |
| Ceased claims inclusion | TBC | Medium | Recommend with toggle option |
| PBRI flag field implementation | TBC | High | RPB006 specifies field but OLIMS implementation status unclear |
| Mid-week period handling | TBC | Critical | Affects week counting calculations (marked [TBC] in Phase 5) |
| IT0008 field mappings | TBC | High | Salary calculations depend on correct field identification |

---

## SQL Filter Examples

### Filter by EPSS Claim
```sql
WHERE DEF_CLAIM = 'Y' 
  AND TRANSITION_TO_EPSS IS NULL
```

### Filter by Transitioned to EPSS
```sql
WHERE DEF_CLAIM = 'Y' 
  AND TRANSITION_TO_EPSS = 'Y'
```

### Filter by PBRI Claim
```sql
WHERE PBRIMEMNO IS NOT NULL 
  AND TRANSITION_TO_EPSS IS NULL
```

### Filter by All (with access control)
```sql
WHERE (user_has_access_to_command = TRUE)
  AND (claim_status != 'DELETED')
```

---

## SAP Table References

Key tables for verification:
- **ZIM_IN_CM** - Claim management (DEF_CLAIM, TRANSITION_TO_EPSS, PBRIMEMNO)
- **ZIMLTRVAR1** - Employee info
- **ZIM_WC_BENEFITS** - WC benefits data
- **ZIM_EPSS_WEEK_NO** - EPSS week tracking

---

## Next Steps

1. ✅ Present verified requirements to business stakeholders
2. ⏳ Confirm flag combination rules with OLIMS team
3. ⏳ Confirm default selection and ceased claims handling
4. ⏳ Validate PBRI flag field implementation status
5. ⏳ Clarify mid-week period handling rules (Phase 5)
6. ⏳ Document IT0008 field mappings with HR team

---

**Document Version:** 1.0  
**Last Updated:** 2026-01-23  
**Verified by:** OpenCode Requirements Verification Tool
