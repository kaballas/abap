# Functional Specification: DOA012 — Detached Officer Salary Indexation and Retro Processing

---

## 1. Business Background

Detached officers (former police officers exited on medical grounds) may continue to receive EPSS benefits. Their salary for EPSS purposes must be managed to ensure only eligible increases are applied post-termination, in line with business rules and regulatory requirements.

---

## 2. Scope

This specification covers the rules and system behaviour for salary increases for detached officers, specifically:
- Exclusion of future Award pay increases after termination.
- Inclusion of retrospective salary changes during employment.
- Application of indexation (CPI) increases post-termination.
- Business process for retro changes to ensure correct payment outcomes.

**Additional Notes:**
- Recorded that detached officers will not be entitled to any future Award pay increases after their termination date. Only retrospective changes in salary during their employment as a police officer are to be processed.
- Retro increases are not paid via the detached officer; they are paid via the terminated employee number.
- Override of salary in DOA011 is now obsolete, as salary is read from the original attached employee for application against the detached employee.
- The current logic for P1/P2 salaries for detached officers must not use the current payscale structure (T510); instead, salaries are sourced from the original attached officer.

---

## 3. Detailed Functional Requirements

- Detached officers are **not entitled** to future Award pay increases after their termination date.
- Only **retrospective salary changes** (e.g., backdated increments) that relate to the period of employment as a police officer are to be processed for detached officers.
- **Indexation increases** (e.g., CPI) are to be applied to detached officer salaries for Period 2 and Period 3 entitlements.
- Retro salary increases must be processed against the **original (terminated) employee number**, not the detached non-employee number.
- The current payscale structure (e.g., T510) is **not relevant** for detached officer salary calculations post-termination; salary is sourced from the original attached officer.
- A business process must be defined to ensure retro changes are correctly applied to detached officer payments, including when Police receive retro increases or increments.

---

## 4. Exception Handling

- If a retro salary change is detected for a period after termination, the system must **not apply** the increase to the detached officer’s salary.
- If a retro salary change is detected for a period during employment, the system must process the adjustment and update the detached officer’s payment accordingly, with payment made via the terminated employee number.
- Any errors in retro processing must be logged and flagged for manual review.

---

## 5. Compliance/Controls

- Payroll controls must ensure only eligible salary increases are processed for detached officers.
- OLIMS access and audit logs must track all retro salary changes and indexation applications.
- Reporting and reconciliation processes must verify that no Award increases are applied post-termination and that all retro changes are correctly attributed.

---

## 6. References and Linked Requirements

- DOA010: Salary derivation for detached officers.
- DOA011: Override of salary is obsolete; see DOA011 for details.
- DOA013: Certificate and payment processing for detached officers.
- DOA016: Indexation rules for detached officers.
- P905 retro logic.
- [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [x] No Award pay increases are applied to detached officer salaries after termination.
- [x] Retro salary changes during employment are processed and reflected in detached officer payments, with payment made via the terminated employee number.
- [x] Indexation increases are applied as per business rules.
- [x] Retro changes are processed against the original employee number.
- [x] All exceptions are logged and available for audit.
- [x] Reporting confirms compliance with salary processing rules for detached officers.