# Functional Specification: TR007 — ORP Override Capability for PBRI Transitional Claims

---

## 1. Business Background

The NSW Police Force (NSWPF) administers the Police Blue Ribbon Insurance (PBRI) and Enhanced Police Support Scheme (EPSS) for officers with compensable injuries. Transitional claims occur when an officer moves from PBRI to EPSS. Historically, there was a proposal to allow claims officers to override the Ordinary Rate of Pay (ORP) for PBRI transitional claims to address edge cases or data anomalies.

---

## 2. Scope

This specification addresses the requirement for an ORP override capability for PBRI transitional claims (TR007). It documents the business decision to remove this requirement from scope, ensuring no override functionality is delivered for PBRI transitional claims.

---

## 3. Detailed Functional Requirements

- No override capability for ORP is to be provided for PBRI transitional claims.
- All ORP values for PBRI transitional claims must be derived from SAP HR InfoType 0008 (Basic Pay) and the authoritative ORP wagetype list.
- Any references to manual or static ORP override for PBRI transitional claims must be removed from system design, UI, and documentation.

---

## 4. Exception Handling

- If a user attempts to access or request an ORP override for a PBRI transitional claim, the system must display a message: "ORP override is not available for PBRI transitional claims."
- Any legacy override fields or controls must be hidden or disabled for this claim type.

---

## 5. Compliance/Controls

- All ORP calculations for PBRI transitional claims must be fully auditable and based on system-derived values.
- No manual intervention or override is permitted for ORP in these scenarios.
- Reporting and reconciliation must confirm that no overrides have been processed for PBRI transitional claims.

---

## 6. References and Linked Requirements

- Cross-references: OLG003, 1PA003, TR008, TR009, TR010, DOA010, DOA012
- See also: [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [x] No ORP override functionality is available for PBRI transitional claims in OLIMS or SAP.
- [x] All ORP values for PBRI transitional claims are system-derived from IT0008 and the approved wagetype list.
- [x] Any attempt to override ORP for these claims is prevented and an appropriate message is displayed.
- [x] Audit and reporting confirm no overrides have been processed for PBRI transitional claims.
- [x] Documentation and user guides reflect that ORP override is not supported for PBRI transitional claims.