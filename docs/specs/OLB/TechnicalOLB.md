Title: Technical Specification — OLB EPSS Off Duty Claim Enhancements (ABAP ECC)
Created: 2026 02 08
Version: 0.1
Last updated: 2026 02 08

## 1. Overview

This build adds EPSS Off Duty claim handling to OLIMS for OLB001 to OLB003.

It introduces a dedicated EPSS Off Duty tab, extends Case Details with additional fields and date calculations, and hides the existing Emp or Members Statement tab for this claim type.

The system needs to do the following:

* Provide an EPSS Off Duty tab that follows the current PBRI Emp or Members Statement tab layout where practical, but removes the Send to Aware or TAL action.
* Capture Off Duty case fields and calculate waiting period and IP dates from Date of Disablement when Duty Determination is selected.
* Support TAL document upload using existing document categories.
* Keep changes auditable and available for reporting and compliance.

Design rules:

* Reuse existing OLIMS claim and document flows unless there is no other option.
* Keep new Off Duty fields together, either in the existing case storage or an extension table, to reduce regression risk.
* Calculated dates must be reproducible and must not drift when the claim is reopened.
* Do not introduce payroll integration changes.

## 2. Scope

This scope is limited to EPSS Off Duty changes on top of existing OLIMS claim handling.

In scope:

* New EPSS Off Duty tab to replace the Emp or Members Statement tab for EPSS Off Duty claims.
* Case Details tab enhancements for EPSS Off Duty claims.
* TAL document upload using existing document categories.
* Validation and exception handling for new fields and new navigation rules.
* Reporting updates needed so Off Duty claims can be reconciled and audited.

Out of scope:

* Any payroll impact or payroll calculation changes.
* Changes to SAP HR master data collection.
* Changes to claim types other than EPSS Off Duty.

## 3. References

Functional specifications:

* `OLB001_spec.md`
* `OLB002_spec.md`
* `OLB003_spec.md`
* `FinalOLB.md`

BRD context and related assets:

* `../../brd.md` (source for detailed business rules, if present)

## 4. System Context and Constraints

This is an ABAP ECC build using classic dynpro and ALV where OLIMS screens and reports already use them.

Constraints:

* No payroll impact for Off Duty claims.
* Navigation and layout should remain consistent with the existing PBRI Emp or Members Statement tab where practical.
* TAL documents are uploaded via existing mechanisms and categories. No new upload framework is in scope.

## 5. Roles, Access, and Authorisations

Roles are existing OLIMS roles.

This spec assumes Off Duty claim access follows existing OLIMS claim access rules for the relevant users, with no new role model introduced here. TBC.

Minimum access rules:

* Only authorised claims users can view and edit Off Duty claim fields.
* Any restricted fields must be enforced consistently across display, update, and reporting.

Audit rules:

* Changes to Off Duty fields must be auditable.
* Attempts to use removed actions (for example Send to Aware or TAL) must not succeed. If those actions still exist anywhere, access denial must be handled consistently. TBC.

## 6. Data Model

### 6.1 New Case Details fields

The Case Details tab needs these additional fields for EPSS Off Duty claims:

* Waiting Period Start Date
* Waiting Period End Date
* IP Start Date
* IP End Date
* TAL Claim No
* WC Claim Status
* Date Closed
* Closure Reason
* Superannuation Fund

Field storage:

* Persist these fields in the existing OLIMS claim storage for the incident where possible.
* If the base storage is not safe to extend, store them in a dedicated extension table keyed by the claim keys used for Off Duty cases. Table name TBC.

### 6.2 Date calculation rules

When Duty Determination is selected for an EPSS Off Duty claim, calculate the following fields from Date of Disablement:

* Waiting Period Start Date equals Date of Disablement
* Waiting Period End Date equals Date of Disablement plus 59 calendar days
* IP Start Date equals Waiting Period End Date plus 1 calendar day
* IP End Date equals IP Start Date plus 3 years, then subtract 1 calendar day

Recalculation rules:

* Trigger point is Duty Determination selection, as described in OLB002.
* Behaviour when Date of Disablement changes after these fields are set is not defined in the functional spec. TBC.

## 7. User Interface Changes

### 7.1 EPSS Off Duty tab

Replace the existing Emp or Members Statement tab with a new EPSS Off Duty tab for EPSS Off Duty claims.

UI rules:

* Layout should mirror the current PBRI Emp or Members Statement tab where practical.
* Remove the Send to Aware or TAL button from this claim type.

### 7.2 Case Details tab

Add the new fields listed in section 6.1 to Case Details for EPSS Off Duty claims.

Trigger and behaviour:

* When Duty Determination is selected, populate the calculated dates as per section 6.2.

### 7.3 Emp Details tab

Move Employee Address to Emp Details is listed as optional. Confirm whether this is required for delivery. TBC.

### 7.4 Document upload and categories

TAL documents are uploaded using existing document categories.

Rules:

* No new upload mechanism.
* Category selection must allow the required TAL document categories for Off Duty processing. Exact categories TBC.

### 7.5 Navigation and tab visibility

Visibility rules:

* Hide the Emp or Members Statement tab for EPSS Off Duty claims.

Exception handling:

* If a user attempts to access the hidden tab for an EPSS Off Duty claim, redirect them to the EPSS Off Duty tab.

## 8. Processing Design

### 8.1 Claim type detection

The UI and logic changes in this spec apply only to EPSS Off Duty claims.

Implementation approach:

* Use the existing claim type or duty type indicators in OLIMS to detect EPSS Off Duty. Field and value mapping TBC.

### 8.2 Save and validation

Validation rules in the functional specs are high level.

Minimum behaviour:

* Block save with a clear message when a mandatory field is missing.
* Ensure calculated date fields are consistent with Date of Disablement if the system does not allow manual override. Override rules TBC.

### 8.3 TAL claim tracking fields

Fields like TAL Claim No, WC Claim Status, Closure Reason, and Superannuation Fund need defined value sets or entry rules.

Implementation approach:

* Use existing OLIMS configuration where it exists.
* If new value lists are needed, implement them as domains or configuration tables consistent with OLIMS patterns. Exact approach TBC.

## 9. Reporting Design

Reporting must support compliance and reconciliation for EPSS Off Duty claims.

Minimum requirements:

* Reports must include the Off Duty specific fields introduced in section 6.1.
* Reports must support filtering by claim type and key dates (Date of Disablement, waiting period dates, IP dates). Exact report selection screens TBC.

## 10. Detailed OLB Mapping

### 10.1 OLB001 Off Duty claim management

Build:

* Deliver the EPSS Off Duty tab and supporting logic.
* Ensure no payroll impact.
* Ensure changes are auditable and reportable.

### 10.2 OLB002 Case Details tab enhancements

Build:

* Add the Case Details fields and calculations in sections 6.1 and 6.2.
* Confirm data sources and entry rules for each field. TBC.

### 10.3 OLB003 Emp or Members Statement tab changes

Build:

* Hide the Emp or Members Statement tab for EPSS Off Duty claims.
* Remove Send to Aware or TAL action for this claim type.
* Ensure TAL documents can be uploaded using existing categories.

## 11. Error Handling and Logging

User facing rules:

* Validation errors must be specific and field level.
* Date calculation issues must be surfaced clearly, not silently ignored.

Support rules:

* Log technical errors for failed saves and failed document uploads through the existing OLIMS logging approach. Log object and correlation keys TBC.

## 12. Testing and Acceptance

These scenarios are the minimum acceptance tests for EPSS Off Duty claim handling:

* EPSS Off Duty tab appears only for the intended claim type.
* Emp or Members Statement tab is hidden for EPSS Off Duty claims and still visible for other claim types.
* Duty Determination selection triggers waiting period and IP date population using the rules in section 6.2.
* Date calculations handle leap years and month boundaries correctly.
* New Case Details fields save and reload correctly.
* Removed actions cannot be triggered for Off Duty claims.
* TAL document upload works using existing categories.
* Reporting includes the new fields and supports basic filtering for reconciliation.

## 13. Open Items and Decisions

The following points need confirmation:

* Which existing OLIMS tables and screens persist the new Case Details fields, and whether a new extension table is required.
* Whether calculated dates are editable and what happens when Date of Disablement changes after initial calculation.
* Mandatory versus optional status for each new field, including Superannuation Fund.
* Value lists and configuration sources for WC Claim Status and Closure Reason.
* Exact TAL document categories used for Off Duty processing.
* Whether moving Employee Address to Emp Details is required for delivery.
