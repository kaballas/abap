# Functional Specification: OLG001 — Display increases in Period 1 ordinary rate of pay (ORP)

---

## 1. Business Background

The EPSS scheme requires accurate and transparent calculation and display of the Ordinary Rate of Pay (ORP) for Period 1. Recent business decisions have clarified that ORP must be derived solely from SAP HR InfoType 0008 (Basic Pay) and must reflect only the backend rates and effective dates. Manual override or overwrite of ORP for Period 1 is out of scope.

---

## 2. Scope

This specification covers the display logic for Period 1 ORP in OLIMS, ensuring that only IT0008 values and their effective dates are used. It excludes any manual override or overwrite functionality for ORP in Period 1.

---

## 3. Detailed Functional Requirements

- OLIMS must display the Period 1 ORP value based solely on SAP HR InfoType 0008 (Basic Pay) backend rates.
- The display must reflect all effective-dated changes to IT0008, including pay scale increases.
- The weekly ORP value must be calculated as:  
  $$
  \text{Weekly ORP} = \frac{\text{Annual Amount}}{52.17858}
  $$
- No manual override or overwrite capability for Period 1 ORP is to be provided in OLIMS.
- All references to ORP override/manual override for Period 1 must be removed from the UI and documentation.

---

## 4. Exception Handling

- If IT0008 data is missing or incomplete for a given period, OLIMS must display a clear error message: "ORP data unavailable – please check SAP HR InfoType 0008."
- If multiple effective-dated records exist, the system must display the ORP value corresponding to the relevant date range.

---

## 5. Compliance/Controls

- All ORP values displayed must be traceable to SAP HR InfoType 0008 records.
- Audit logs must record any changes to the display logic or calculation method.
- No user-driven changes to ORP for Period 1 are permitted.

---

## 6. References and Linked Requirements

- 1PA001, 1PA002 (ORP definition and effective date)
- OLG002 (weekly calculation method)
- OLG003–OLG006 (override/overwrite out of scope)
- P1C001–P1C009 (Period 1 payment controls)
- [BRD4_Phase 4_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV)

---

## 7. Acceptance Criteria

- [ ] OLIMS displays Period 1 ORP based only on IT0008 backend rates and effective dates.
- [ ] Weekly ORP is calculated as annual amount divided by 52.17858.
- [ ] No manual override/overwrite UI or logic exists for Period 1 ORP.
- [ ] Error message is shown if IT0008 data is missing.
- [ ] All changes are audit logged and traceable.
- [ ] All references to ORP override/manual override for Period 1 are removed from documentation and UI.