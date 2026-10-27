# Functional Specification: DOA011 — Claims Officer IT0008 Override for Detached Officers (REMOVED / OBSOLETE)

---

## 1. Business Background

The EPSS scheme supports ongoing payments to police officers who exit the organisation on medical grounds. For detached officers, salary calculations for EPSS payments are derived from the original employee record. Previously, there was a requirement for claims officers to override the IT0008 (Basic Pay) record for detached officers to manage exceptions or corrections.

---

## 2. Scope

This specification addresses the removal of the override capability for claims officers to adjust the IT0008 basic pay record for detached officers. All references to this override function are to be removed from system design and documentation.
- Recorded that the requirement for claims officers to override the IT0008 basic pay record for detached officers is now obsolete. This is because salary for detached officers is derived from the records of the old employee, and pay rises/increments are only applied if effective for dates when the old number was active.
- Ignore prior discussions regarding claims officer access to PA30, IT0008, or IT0014 for override purposes. Confirmed that EPSS case officers update IT0014 via OLIMS, not IT0008, and override is not to be implemented for the new or old number.

---

## 3. Detailed Functional Requirements

- The requirement for claims officers to override the detached officer's IT0008 basic pay record is obsolete.
- Detached officer salary for EPSS is to be derived from the original (attached) employee record only.
- No UI, workflow, or audit fields for IT0008 override are to be implemented for detached officers.
- Remove any references to override capability for detached officer IT0008 in related requirements, screens, and reports.

---

## 4. Exception Handling

- If any override functionality for detached officer IT0008 is encountered in the system, it must be disabled and flagged for removal.
- Any attempt to access or use an override function for detached officer IT0008 should result in a user-facing message: "Override not supported for detached officers."
- Any previous assumptions or discussions about claims officer override access for IT0008 (either for the old or new number) are superseded and not to be implemented.

---

## 5. Compliance/Controls

- Ensure audit logs confirm that no overrides are processed for detached officer IT0008 records.
- Payroll controls must enforce that only original employee IT0008 data is used for detached officer salary calculations.
- Reporting and reconciliation processes must not reference or expect override data for detached officer IT0008.

---

## 6. References and Linked Requirements

- Cross-references: DOA010 (salary derivation), DOA012 (retro increases), OLG003–OLG006 (override removal), 1PA003 (override out of scope).

---

## 7. Acceptance Criteria

- [x] No UI or backend capability exists for claims officers to override detached officer IT0008 records.
- [x] All documentation and requirements referencing override for detached officer IT0008 are updated or removed.
- [x] Payroll and OLIMS derive detached officer salary only from the original employee record.
- [x] System prevents and logs any attempt to override detached officer IT0008.
- [x] Compliance/audit confirms no overrides processed for detached officer IT0008.