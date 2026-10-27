# OLIMS Requirements Phase 5

## (2.3.2) Detached Officers: EML workers compensation payment upload

#### Current setup

EML workers compensation payment upload for IT15 XXXX WC external earnings is a new requirement which has not been implemented yet.

#### Business requirement

For detached officers hired under the new EPSS On Duty position, their Workers Compensation payments will be made by EML and not the NSWPF.

The current OLIMS certificate upload and P905 process must not calculate and pay workers compensation for EPSS detached officers.

EML will provide NSWPF a file of weekly workers compensation payments they have made to the detached officer on a fortnightly (TBC) basis. EML fortnight values will be converted by the business to a weekly value aligned with the payroll implementation.

The EPSS claims officer will need a facility in OLIMS to upload the EML WC payments that will:

1) Update the corresponding OLIMS incident/claim

2) Update the OLIMS EPSS external earnings tab

3) Pass the information onto payroll to offset/reduce the calculated the EPSS benefit

EML Upload file at a minimum to contain the following information:

• Claim Number

• Incident Number

• Employee Number

• Period start date

• Period end date

• Payment date

• Workers Compensation amount

• Payment Classification Description (WC section/Capacity)

• Capacity Status (No Capacity, Partial Capacity, PID)

• Estimate of no of future weeks of payments

• File Date

The upload program to have a test run facility that will check for any errors to be reviewed and corrected before updating master data.

New validations will be implemented which will raise errors if:

* There is already and IT15 entry on the payment date for the detached employee.
* Detached employee is locked.
* There is no match from attached to detached.
* The effective date /payment date is not on a date where the detached employee is active.

The upload program to have an ‘upload’ facility to update the offset master data in IT0015.

A report to be generated for both ‘test’ and ‘upload’ runs for the claims officer to reconcile any errors, successful / unsuccessful uploaded results.

The test and upload run report to be downloaded from SAP as a file for claim administrative and payment quality assurance activities.

The WC external earnings loaded into IT15, must show in OLIMS for maintenance in the EPSS nodes.  The WC external earnings showed for maintenance (create/inactive (delete in SAP)) is restricted for the WC/incident been processed in EPSS. The IT15 assignment field is used to derive the WC/incident for display.

Manual creation via OLIMS for the WC external earning WT must be driven from an the attached (terminated) employee with the WC/incident selected. The effective date must be after the termination of the attached employee for dates where there is a detached employee linked via IT0105 subtype FREM. Manual created entries must have the WC/incident loaded in the IT15 assignment filed like for WT 9WCO.

The WC external earnings are not allowed for ‘repeat’ in OLIMS.

#### DTT Detailed Technical design

##### Load file for WC external earnings

The source of truth of the entry of XXXX WC external earnings will be in OLIMS. This means that entry in the IT0015 screen will not be allowed in production.

As OLIMS will be the source of truth of data, entry in PA0015 for WT XXXX WC external earnings will not be allowed. This means that a user exit for PA0015 will need to be modified to prevent the entry of WTXXXX in the SAP PA0015 infotype. The user exit should prevent data to be entered in PA0015 and prompt an error message stating that data entry should be done in OLIMS.

The following requirements/rules to apply:

* WT XXXX WC external earnings transfer incident/WC claim info into the SAP assignment field.
* The date the WC payment is dated will impact to which week in the fortnight it accounts to in relation to EPSS payment calculations, eg weekly caps.
* One off offset: Weekly value entries dated on a specific effective date each represents a single external earning for that pay week.
* The EML values in the upload file will be converted to weekly values by the business.
* If only the attached number is provided in EML file, the system will automatically search for the detached number and vice-versa.
* EML upload creates WTXXXX IT0015 records without document upload; source documentation remains with EML provider.
* EML input values are weekly, and OLIMS shall create corresponding IT0015 entries from those weekly values.
* Document upload is not required for EML input values.
* EML upload file format shall be CSV with required fields.
* Validate mandatory fields before saving: Claim Number, Incident Number, Employee Number, Period Start Date, Period End Date, Payment Date and Workers Compensation Amount.
* Enforce payroll lock check prior creation commit block and if lock is active return error message.
* Persist audit details for creation outcomes including user/date/time/action code to OLIMS audit log (not SAP audit) audit records accessible to OLIMS manager level roles.
* Transfer WC/incident information to SAP for WT XXXX WC external earnings.

A new ABAP program will be developed for this requirement. The new program will be a copy of program ZFJGLEML\_RECEIPT\_NEW with the modifications listed below.

**ABAP objects to change**:

New program

* Copy of ZFJGLEML\_RECEIPT\_NEW to a new program (e.g. ZFJGLEML\_RECEIPT\_OLIMS).

Input format & UI

* Change input parser to enforce CSV with documented required columns.
* .The upload file holds the attached employee number and is to be converted to the detached employee number for data load.
* Add selection-screen option to run validation-only vs create mode preserve existing test/submit flags.
* Field validation (before any creation)
* Validate mandatory fields: Claim Number, Incident Number, Employee Number, Period Start Date, Period End Date, Payment Date, Workers Compensation Amount.
* Validate date formats and that Period Start <= Period End; ensure Payment Date is present.
* The WC external wage type XXXX, is not allowed for dates where the attached employee is active.  The effective date is only accepted for dates where a EPSS detached employee is active and linked to the attached employee number on the effective date of the wage type.  This is important to ensure the WC external value is loaded against the correct EPSS detached employee.

| **WC external WT, Effective date** | **Attached active period** | **Detached active period**  (for Number range 031xxxxx or TBC position IT0001 used) | **Detached IT0105 FREM shows to attached # in the file – period valid** | **Validation - message** |
| --- | --- | --- | --- | --- |
| 10.10.2025 | 01.01.2024 to 11.10.2025 | 12.10.2025 to 31.12.9999 | 12.10.2025 to 31.12.9999 | Entry not allowed – Effective date is during detached employees active period |
| 12.10.2025 | 01.01.2024 to 11.10.2025 | 12.10.2025 to 31.12.9999 | 12.10.2025 to 31.12.9999 | Entry can be loaded, pending the \*WC/incident check |
| 12.10.2025 | 01.01.2024 to 11.10.2025 | 12.10.2025 to 31.12.9999 | 01.11.2025 to 31.12.9999 | Entry not allowed – No valid FREM link on effective date |
| 10.10.2025 | 01.01.2024 to 11.10.2025 | 01.12.2025 to 31.12.9999 | No entry | Entry not allowed – No valid FREM link on effective date |
| 12.10.2025 | 01.01.2024 to 11.10.2025 | Not hired | Not hired / no entry | Entry not allowed – No valid FREM link on effective date |

* \*WC/incident check
  + Validate that the WC/incident in the upload file is valid for an attached employee that has a detached employee linked.   If the validation fails, then the entry can’t be loaded and is to be reported.
  + When loading the WC external earning WT in IT0015, ensure the WC/incident in the file is loaded against the linked EPSS detached employee within the IT0015 assignment field in the same format as how WT 9WCO is loaded (in IT0014).  There is no need to load the section of the act.
* Ensure numeric amount parsing and convert EML weekly amounts as required.

Business rules & conversion

* Convert EML values to weekly values

Payroll lock check

* Before creating IT0015 records, check payroll lock for the target payroll period. If locked, abort and return an error message stating payroll lock prevents creation.
* Replace/extend posting logic so that valid EML rows create IT0015 (WTXXXX) records for the employee.
* Ensure created IT0015 records carry a clear source flag and reference to OLIMS (e.g., source = 'EML' and OLIMS claim ID) so they are auditable.

Block manual entry in PA0015 (user-exit)

* Update the PA0015 user-exit/enhancement to forbid entering WTXXXX in production:
* If user attempts to save a PA0015 record with WT = 'WTXXXX' show a hard error (message) instructing: "WC external earnings must be entered via OLIMS do not use PA0015".
* Implement the message in the same message class used by other HR validations.

OLIMS audit

* Write to a new SAP staging table (e.g., ZOLIMS\_AUDIT\_STG) and have OLIMS read the table.
* Include success/failure, error messages, payroll period, employee, claim, and transaction id.

Transfer WC/incident info to SAP

* Ensure the EML upload includes incident/WC claim info and it is written into the IT0015 record (custom fields or long text) so downstream payroll uses it for EPSS week/cap calculations. The reason code (section of the act) is not loaded in SAP. The reason code is blank.

Logging

* Insert an entry into zwc\_receipts/zwc\_receipts\_log (or extend them) to record creation outcome and created IT0015 reference (infotype record id or timestamp).
* Keep existing behavior for the legacy receipts table if you need backward compatibility or create a mapping table linking uploads to created IT0015 entries.

Error handling

* For each failed row return a descriptive error (missing field, invalid employee, payroll lock, detached-employee mismatch).

##### Updates to the loaded WC external earnings

The WC external earnings loaded into IT15, must show in OLIMS for maintenance in the EPSS nodes.

For this, a new WC external earnings tab will be created in OLIMS (under the EPSS node) where the WC external earnings selected from IT15 WT XXXX restricted for the WC/incident, will be displayed for maintenance (creation/inactivation - delete in SAP).

The tab will have similar functionality as the External Earnings tab (WT 3670) with a few modifications as per below:

* Manual creation via OLIMS for the WC external earning WT will be driven from the attached (terminated) employee. The effective date must be after the termination of the attached employee for dates where there is a detached employee linked via IT0105 subtype FREM.
* When loading the WC external earning WT in IT0015, ensure the WC/incident in the file is loaded against the linked EPSS detached employee within the IT0015 assignment field in the same format as how WT 9WCO is loaded (in IT0014).  There is no need to load the section of the act.
* New validations will be implemented which will raise errors if:
  + There is already and IT15 entry on the payment date for the detached employee.
  + Detached employee is locked.
  + There is no match from attached to detached.
  + The effective date is not on a date where the detached employee is active.
* The WC external earnings are not allowed for ‘repeat’ functionality
* Document upload is not mandatory.

## (2.3.2) Detached Officers: EML workers compensation payment upload

#### Current Setup

Currently, there is no way to record and display Off Duty EPSS claims in OLIMS.

#### Business requirement

Once the EPSS screens have been accessed (EPSS incidents only), the requirement is as follows:

When ‘Off Duty’ is selected in the ‘Duty Determination’ dropdown field within the Case Details tab in OLIMS, the fields listed below must become available for data entry. These fields must be displayed for user input only when ‘Off Duty’ is selected.

If ‘Off Duty’ is not selected, the fields must not be displayed.

Introduce new fields based on the Duty Determination selection

• Waiting Period Start Date = DOD

• Waiting Period End Date = DOD + 59 calendar days

• IP Start Date = Waiting Period End Date + 1

• IP End Date = IP Start Date + 3 years (minus 1 day)

• TAL Claim No

• WC Claim Status

• Date Closed

• Closure Reason

• Superannuation Fund

• Move Employee Address to the Emp Details tab (nice to have)

• Emp Details

Off Duty: New tab similar to the Emp/Members Statement tab for PBRI case management.

• Remove Send to Aware/TAL button

• Uploading the new TAL documents to existing button categories

• ~~Hide the Emp/Members Statement tab~~ **Change in requirement** – Hide the Emp/Members Statement tab is to change to ‘Hide Employers Statement’ section within Emp/Members tab

Off Duty claims do not impact payroll, they are only OLIMS data entry and not WC related so they will not have medical certificates uploaded in OLIMS meaning that no 9WCO will exist.

#### DTT Detailed Technical design

Currently, an incident is classified as EPSS when the DOD is not blank and the DOD is on or after 1 October 2024. In this scenario, only the IP case overview screen is accessible.

A change is required to the OLIMS overview screen validation logic that determines whether an incident is EPSS. If the first WorkCover certificate has not yet been uploaded—meaning the DOD is still blank—an additional rule must be applied. The system should also classify an incident as EPSS when the DOD is blank AND the incident date is on or after 1 October 2024.
This adjustment will ensure the incident is correctly set as EPSS and will enable navigation to the EPSS screens via the tabs.

When an incident is classified as EPSS and the Duty Determination field is set to “Off Duty” in the EPSS Case Details tab, the system will make available for data entry Off‑Duty–specific case management fields in accordance with the rules defined.

*Case Details tab*:

Introduce new fields based on the Duty Determination selection. If ‘Off Duty’ is not selected, the fields below must not be displayed.

• Waiting Period Start Date (DOD) = Manual entry of date

• Waiting Period End Date = DOD (above) + 59 calendar days

• IP Start Date = Waiting Period End Date + 1 day

• IP End Date = IP Start Date + 3 years (minus 1 day): Calculation (adding full years, then minus 1 calendar day). Allow for the calculation to be overridden – editable date.

• Aware/TAL Claim Number: Manual entry

• WC Claim Status: Manual entry using existing /standard WC claim status options (open, close, reopen, pending case closure)

• Date Closed: Manual entry

• Closure Reason: Manual entry as per existing drop down

• Superannuation Fund: Manual entry

• Move Employee Address section from the Case Details to the Emp Details tab (nice to have).

New EPSS off duty fields listed above will be created in existing table *ZIM\_IN\_CM* (OLIMS – Injury Case Management table).

In addition to the new fields above, when an incident is classified as EPSS and the Duty Determination field is set to “Off Duty” in the EPSS Case Details tab, a new ‘Off Duty’ tab will be made available with similar layout of the existing Emp/Members PBRI tab with the following modifications applied:

* Change ‘Claims Upload/Submission’ section/frame:
  + Remove button ‘Send to Aware/TAL’.
  + Link the new TAL documents to existing button categories.
* Remove whole ‘Employers Statement’ section/frame including:
  + Label ‘Employers Statement’ removed.
  + Button ‘Send to Command’ removed.
  + Button ‘Display’ removed.

## (2.3.4.1) Amending the Date of Disablement

#### Current Setup

The EPSS technical solution relies on the Date of Disablement (DOD) to determine the applicable scheme (EPSS or PBRI), calculate the initial Ordinary Rate of Pay (ORP), and establish the commencement of EPSS Period 1 benefits. By default, the DOD is set to the status date of the first uploaded WorkCover Certificate. While this field can be amended under the OLIMS PBRI case management solution, it is currently locked for EPSS cases.

#### Business requirement

The business requires the ability to amend the DOD where the initially defaulted value is incorrect.

Examples could include:

• The initial WCCC is a fit for Pre-Injury Duties and the next certificate uploaded is a total or partial incapacity certificate which is now the actual DOD to reference

• The first WCCC is marked inactive and the second certificate is now to be utilised for the DOD

• WCCC are not uploaded in date order

• A late advice WCCC is uploaded with the status start date earlier than the initial first WCCC

NOTE: In the OLIMS PBRI Case Management module, there is a tab titled “Top-Up / Disab. Date / IP Dates” which allows claims officers to amend the DOD. This has not been used to date as it needed enhancements.

#### DTT Detailed Technical design

The existing “Top‑Up / Disab. Date / EPSS Dates” OLIMS screen will be enhanced to allow controlled amendment of the DOD for EPSS incidents.

When a new EPSS case is created, the system defaults the DOD record to start on the DOD date and end on the high date (31/12/9999). Once the initial DOD is established, typically via the upload of the first WorkCover Certificate, users may amend the DOD by creating a new DOD record type within the above OLIMS screen. Creating a new DOD record type will automatically inactivate the previous DOD record.

The amendment of the DOD via the “Top‑Up / Disab. Date / EPSS Dates” OLIMS screen will only be possible/enabled after the first WorkCover certificate is uploaded and the DOD (ZIM\_IN\_CM-DISABLEMENT\_DATE) is set.
Therefore, a validation will be implemented to prevent changes to the DOD until the first WorkCover certificate is uploaded and DOD is set (in table/field ZIM\_IN\_CM-DISABLEMENT\_DATE).

Another validation will prevent the amendment of the DOD on incidents transitioned from PBRI to EPSS. In this case the DOD is not of relevance, it is the Transitioned from PBRI to EPSS recurrence date that drives when EPSS will commence.

To amend the DOD, the record type ‘D’ Disablement Date will be selected from the Record Type dropdown.

In the new record section, the new DOD, Date From, Date To (not editable and defaulted to 31.12.9999), claim number and description will be entered.

Upon save of a new DOD record type, the system will display the following warning message:

*“Employee EPSS records and payments need to be reviewed due to the change in Date of Disablement.”*

Upon confirming the message, the system will perform the following changes:

* The previous record type = ‘D’ will be made inactive in table ZIM\_EPSS\_REC\_TYPE.
* A new record will be created in table ZIM\_EPSS\_REC\_TYPE:
  + PERNR
  + INCIDENT
  + WC Claim
  + RECORD\_TYPE = ‘D’
  + BEGDA = Date From
  + ENDDA = 31.12.9999
* Overwrite the existing ZIM\_IN\_CM‑DISABLEMENT\_DATE with the start date of the new DOD record.
* EPSS dates will be recalculated based on the new DOD.
* All records will be deleted from the ZIM\_EPSS\_WEEK\_NO table for the PERNR/INCIDENT combination.
* Payroll will be set to retro to the earliest of the DOD dates, whether that is the DOD date set to inactive or the current DOD date. This is only required when payroll is not already set to retro to the earliest DOD date relevant to the change or earlier. New logic to update Earliest MD Change field in infotype 0003 to the earliest DOD only when DOD is greater than 30.09.2024.

The recalculated EPSS period dates will be derived as follows:

* EPSS Period 1 Start Date = New DOD start date
* EPSS Period 1 End Date = New DOD + 39 weeks
* EPSS Period 2 Start Date = EPSS Period 1 End Date + 1 day
* EPSS Period 2 End Date = EPSS Period 2 Start Date + 7 years

In addition to recalculating the EPSS periods, the system will delete all existing records for the relevant employee and incident from the ZIM\_EPSS\_WEEK\_NO table. This action resets EPSS Period 1 week counting, causing Period 1 to restart from week 1.

If the amended DOD falls within a PBRI period, the incident will no longer be treated as EPSS and will instead be processed under the PBRI scheme.

For audit purposes, all DOD amendments will be recorded in a dedicated log table. These changes will be viewable via the “Top‑Up / Disab. Date / EPSS Dates” OLIMS screen and will include:

* Date and time of the change
* User who made the change
* Associated uploaded document
* Free‑text (CHAR, 50) reason for the amendment

#### Cutover impact

As a new table ZIM\_EPSS\_REC\_TYPE will be created to store EPSS record types, all active DOD record types recorded in table ZIM\_IN\_IP which data from falls within EPSS (after 01.10.2024) must be copied and created into table ZIM\_EPSS\_REC\_TYPE.

##### DTT Technical

1. Copy all records from ZIM\_IN\_IP where:

* RECORD\_TYPE = D
* DISABLEMENT\_DATE >= 01.10.2024
* INACTIVE = blank/null

1. Insert the records above into ZIM\_EPSS\_REC\_TYPE where:
   * PERNR = ZIM\_IN\_IP-PERNR
   * INCIDENT = ZIM\_IN\_IP-INCIDENT
   * SEQ\_NO = 00001
   * RECORD\_TYPE = D
   * BEGDA = ZIM\_IN\_IP-DISABLEMENT\_DATE
   * ENDDA = 31.12.9999
   * CLAIM\_NUMBER = ZIM\_IN\_IP-CLAIM\_NUMBER
   * DISABLEMENT\_DATE = ZIM\_IN\_IP-DISABLEMENT\_DATE
   * DESCRIPTION = ZIM\_IN\_IP-IP\_DESC
   * UPD\_DATE = ZIM\_IN\_IP-UPD\_DATE
   * UPD\_TIME = ZIM\_IN\_IP-UPD\_TIME
   * UPD\_USER = ZIM\_IN\_IP-UPD\_USER

Any other field in table that is not listed above leave as blank/not filled.

##### NSWPf functional

Reconcile the “D” entries loaded for existing EPSS employees:

All active records currently in table ZIM\_IN\_IP where record type = ‘D’ Disablement Date and INACTIVE = blank will have to be copied and moved to ZIM\_EPSS\_REC\_TYPE as per instructions in DTT Technical above.

##### NSWPf Technical

As per detailed in NSWPf functional.

##### Business

Change DOD dates for employees that has been incorrect for a period of time.

There should not be double payment corrections for the DOD changes. Remove any manual adjustments made in the past to accommodate as SAP will auto correct in retrospect when the DOD is changed.

Assess for overpayments or additional payments and alert of bank transfer impacts. UAT testing should already assess the expected impact. Follow NSWPf processed to alert the employee of the impact to his net pay.

## (2.3.4.2) Document Generation

#### Current setup

Current setup includes existing correspondence, document update, and TRIM save flows implemented via the SAP processing paths Z\_OLIMS\_IMP\_CORRESPONDENCE and Z\_OLIMS\_UPDATE\_DOCUMENT.

#### Business requirement

* OLA001 : Template upload: Upload EPSS letter form templates into OLIMS with static text and merge fields populated from SAP HR, payroll, and OLIMS data capture required field list from business [TBC].
* OLA002 : Template override: Provide an override screen showing system populated values alongside editable fields for user modification.
* OLA003 : Correspondence sending: Display personal and work email addresses sourced from defined OLIMS fields (IT0105 subtype 0010 for work email, personal email field MEMO) allow selection of one or both validate addresses and block invalid/blank entries. Log each send with document reference, recipients, sender, date/time.
* OLA004 : Correspondence logging: Automatically log every outgoing letter/form with officer ID, incident/claim number, template/document type, correspondence type, date/time sent, delivery method, recipient email and sender.
* OLA005 : Date Received field: Add mandatory Date Received (DD/MM/YYYY) for new uploads editable if blank on existing records linked to correct WC/incident number. Display in Document Overview and reports audit all create/edit actions allow default/flag (Unknown) when date is unknown.
* OLA006 : Document upload: Allow upload of documents/correspondence (PDF, DOCX, XLSX, images, etc.) linked to claim/incident/employee. Require selection of category (OLA007) and subcategory (OLA008) at upload apply naming convention [IncidentNo]\_[Category]\_[Date]\_[UserInitials].ext show immediately in Document Overview audit uploader, time, linkage. Block save on unsupported type/oversize or missing category/subcategory with clear error logging.
* OLA007 : Categories: Provide categories EPSS On Duty and EPSS Off Duty in relevant OLIMS upload/overview screens apply role based visibility consistent with existing OLIMS.
* OLA008 : Subcategories: Provide mandatory subcategories (Period 1, Period 2, Period 3, Commencement, Recommencement, Request for Review, Dispute, Cessation, Finalisation, Recoveries). Show in Document Overview and reporting filters.
* OLA009 : Document Overview reporting: Report on all inbound/outbound documents with selection by Employee No., Incident No., Document Category, Subcategory, Duty Type, Direction, Date From/To. Output columns: Employee No., Incident No., Claim No., Duty Type, Direction, Document Category/Subcategory, Document Title, Receiver Type/Name, Distribution Method, Email ID, Date Processed, Time Sent, Date Received, Comments, EPSS Claim Advisor, EPSS Supervisor, Modified By/On/At.
* OLA010 : Document deletion: Allow authorised users to delete documents from Document Overview require mandatory comment. Deleted documents are retained in audit logs for compliance.
* OLA011 : Audit log: Record audit entries for document uploads, sends, modifications, deletions, overrides, and deletion actions prevent action if audit write fails. Provide audit access and export to EPSS Claims Officers and Supervisors.
* OLA012 : EPSS Notes: Automatically record every upload via EPSS Case Management as an EPSS Note (dedicated section) with metadata (document title, upload datetime, uploader, category/subcategory, Date Received, Comments). Do not create EPSS Note if upload fails audit creation/modification/deletion if permitted.
* OLA013 : Additional fields in Document Overview: Add Date Received and Comments fields to Document Overview and import/upload workflows.
* OLA014 : Compliance and SLA reporting: Ensure all inbound/outbound EPSS documents are included in compliance/SLA reporting support filters by date range, employee, incident, category, subcategory, and direction.

#### Out of scope for Document Generation

* Redesign of TRIM archive integration mechanics outside documented contracts.
* Bulk template management or version control beyond single upload capability.
* Historical document reclassification or retroactive category reassignment.
* Changes to upstream SAP HR and payroll master data collection.
* Redesign of core OLIMS security model outside access checks specified in this document.
* Bulk recategorization and backfilling of existing documents.

#### DTT Detailed Technical design

**ABAP Objects to change**:

* FM Z\_OLIMS\_IMP\_CORRESPONDENCE Keep as entry point, add EPSS-aware routing/authorization checks
* FM Z\_OLIMS\_UPDATE\_DOCUMENT / Z\_OLIMS\_UPDATE\_DOCUMENT\_MD Extend for EPSS metadata rules and audit trigger calls
* FM Z\_OLIMS\_IMPORT\_DOCUMENT / Z\_OLIMS\_IMPORT\_DOCUMENT\_MD Add mandatory EPSS metadata validation and naming/file checks
* FM Z\_OLIMS\_DOCUMENT\_OVERVIEW / Z\_OLIMS\_DOCUMENT\_OVERVIEW\_CAT Add EPSS filter/output fields and deleted-record handling
* z\_olims include forms (IMPORT\_DOCUMENT\*, CREATE\_ARCHIVE\*, UPDATE\_INCOMING\_DOC\*, GET\_DOCUMENT\_OVERVIEW\*, CALL\_DELETE\_DOCUMENT) Implement EPSS validation, metadata persistence, audit writes, delete behavior
* zhuolims\_correspondence forms (CORRESPONDENCE, VALIDATE\_CORRESPONDENCE, PROCESS\_LETTERS, UPDATE\_DOCUMENTS, GET\_EMP\_EMAIL, GET\_EMP\_HOME\_EMAIL, GET\_DOCUMENT\_OVERVIEW, CALL\_DELETE\_DOCUMENT) Update UI validation/send logging and metadata/deletion controls.
* ZCL\_OLIMS\_CLASS (PREPARE\_CORRESPONDENCE, SEND\_CORRESPONDENCE, SEND\_EMAIL, GET\_EMP\_EMAIL, GET\_EMP\_HOME\_EMAIL, TRIM\_META\_DATA) Align class with OLA rules and audit.

**Template Maintenance**:

* Add EPSS specific letter category values to the letter category domain and configuration.
* Add EPSS letter maintenance menu entry under ZIM\_MGRCS (Manager Claims Support menu)  > Letter Maintenance  > Letter Maintenance EPSS.
* Filter existing letter maintenance views to EPSS letter categories when launched from EPSS menu node.
* Audit template uploads, updates, and deletes with action type and result code.

#### Reporting design specifics for NSWPF:

* Filters: Employee No., Incident No., Category, Subcategory, Direction, Date From/To (applies to both Date Processed and Date Received).
* Columns: Employee No., Incident No., Claim No., Duty Type, Direction, Category, Subcategory, Document Title, Receiver Type, Receiver Name, Distribution Method, Email ID, Date Processed, Time Sent, Date Received, Comments, EPSS Claim Advisor, EPSS Supervisor, Modified By/On/At.
* Data sources: key fields from document header, receiver fields from ZIM\_IN\_DOC\_REC, EPSS metadata from ZIM\_IN\_DOC\_EPSS, derived fields (Claim Number, Claim Advisor, Supervisor) from OLIMS assignment tables.
* Compliance/SLA reporting includes EPSS documents exclude failed sends/uploads from compliance counts while showing failure status in detail rows.

## (2.3.4.3) Request for Review tab

#### Current Setup

The currently EPSS Request for Review tab has the Type of Review, Date From/To and Description only.

#### Business requirement

The business requires to add new fields in the Request for Review tab.

#### DTT Detailed Technical design

New domains will be created:

* New domain ZIM\_REVIEW\_CATEG will be created which will have the following values:
  + Query
  + Complaint
  + Dispute
* New domain ZIM\_COMPL\_REQUESTOR will be created which will have the following values:
  + Claimant
  + Internal
  + Solicitor
  + PANSW
  + Other
* New domain ZIM\_DISP\_REQUESTOR will be created which will have the following values:
  + Claimant
  + Solicitor
  + PANSW
  + Personal Injury Commission
  + Industrial Relations Commission
  + Other
* New domain ZIM\_REV\_TYPE\_QUERY will be created which will have the following values:
  + Policy / Factsheets / Coverage
  + Process
  + Payment / Calculation
  + Follow up existing matter
  + Other
* New domain ZIM\_REV\_TYPE\_COMPL will be created which will have the following values:
  + Payment / Calculation
  + Overpayment
  + Process
  + Customer Service
  + Review of Decision
  + Privacy Laws
  + Other
* New domain ZIM\_REV\_TYPE\_DISP will be created which will have the following values:
  + Eligibility for payment
  + Discontinue a payment
  + Medical Dispute
  + Privacy Laws
  + Other

Request for Review data is stored in tables ZIM\_IN\_REQ\_REV and ZIM\_REQ\_REV\_LOG.

New fields below will be created in these tables:

|  |  |  |
| --- | --- | --- |
| **Field** | **Data Element/ Data Type/Length** | **Description** |
| **REVIEW\_CATEGORY** | ZIM\_REVIEW\_CATEG CHAR, 01 | Parent category to type of review. |
| **COMPLAINT\_REQUESTOR** | ZIM\_COMPL\_REQUESTOR CHAR, 12 | Requestor of the complaint |
| **DISPUTE\_REQUESTOR** | ZIM\_DISP\_REQUESTOR  CHAR, 12 | Requestor of the dispute |
| **QUERY\_TYPE** | ZIM\_REV\_TYPE\_QUERY  CHAR, 01 | Query Type |
| **COMPLAINT\_TYPE** | ZIM\_REV\_TYPE\_COMPL  CHAR, 01 | Complaint Type |
| **DISPUTE\_TYPE** | ZIM\_REV\_TYPE\_DISP  CHAR, 01 | Dispute Type |
| **COMPLAINT\_REQ\_OTHER** | CHAR, 50 | Other requestor of the complaint |
| **DISPUTE\_REQ\_OTHER** | CHAR, 50 | Other requestor of the dispute |
| **QUERY\_TYPE \_OTHER** | CHAR, 50 | Other query type |
| **COMPLAINT\_TYPE\_OTHER** | CHAR, 50 | Other Complaint Type |
| **DISPUTE\_TYPE\_OTHER** | CHAR, 50 | Other Dispute Type |
| **QUERY\_DUE\_DATE** | DATS, 10 | Query Due Date |
| **COMPLAINT\_DUE\_DATE** | DATS, 10 | Complaint Due Date |
| **DISPUTE\_DUE\_DATE** | DATS, 10 | Dispute Due Date |
| **ESCALATION** | CHAR, 01 | Escalation flag |
| **ESCALATION\_SUPERV** | NUMC, 8 | EPSS Supervisor Escalated |
| **CLOSED\_DATE** | DATS, 10 | Review Closed Date |
| **REVIEWER\_NUMBER** | NUMC, 8 | Reviewer Employee Number. |
| **REVIEWED\_DATE** | DATS, 10 | Reviewed Date |
| **FINAL\_RESPONSE** | CHAR, 50 | Final Response |

The existing Request for Review tab will be modified as per following.

![](data:image/png;base64...)

Add the following fields in the top section of the tab:

|  |  |  |
| --- | --- | --- |
| **Field** | **DDIC** | **Validations** |
| **Review Category** | ZIM\_IN\_REV\_REQ-REVIEW\_CATEGORY | Mandatory dropdown. Enforce entry for existing records. |
| **Complaint Requestor** | ZIM\_IN\_REV\_REQ-COMPLAINT\_REQUESTOR | Mandatory dropdown. Enforce entry for existing records. Dynamic dropdown field titled “Requestor” which is mapped to the review type ‘Complaint’. |
| **Dispute Requestor** | ZIM\_IN\_REV\_REQ-DISPUTE\_REQUESTOR | Mandatory dropdown. Enforce entry for existing records.  Dynamic dropdown field titled “Requestor” which is mapped to the review type Dispute. |
| **Query Type** | ZIM\_IN\_REV\_REQ-  QUERY\_TYPE | Mandatory dropdown. Enforce entry for existing records.  Dynamic dropdown field titled “Query Type” which is mapped to the review type ‘Query’ |
| **Complaint Type** | ZIM\_IN\_REV\_REQ-  COMPLAINT\_TYPE | Mandatory dropdown. Enforce entry for existing records.  Dynamic dropdown field titled “Complaint Type” which is mapped to review type ‘Complaint’ |
| **Dispute Type** | ZIM\_IN\_REV\_REQ-  DISPUTE\_TYPE | Mandatory dropdown. Enforce entry for existing records.  Dynamic dropdown field titled “Dispute Type” which is mapped to review type ‘Dispute’: |
| **Other Complaint Requestor** | ZIM\_IN\_REV\_REQ-  COMPLAINT\_REQ\_OTHER | Only displayed If Other Complaint Requestor is selected, free text field to be available to enter description.  Mandatory. |
| **Other Dispute Requestor** | ZIM\_IN\_REV\_REQ-  DISPUTE\_REQ\_OTHER | Only displayed If Other Dispute Requestor is selected, free text field to be available to enter description.  Mandatory. |
| **Other Query Type** | ZIM\_IN\_REV\_REQ-  QUERY\_TYPE \_OTHER | Only displayed If Other Query Type is selected, free text field to be available to enter description.  Mandatory. |
| **Other Complaint Type** | ZIM\_IN\_REV\_REQ-  COMPLAINT\_TYPE\_OTHER | Only displayed If Other Complaint Type is selected, free text field to be available to enter description.  Mandatory. |
| **Other Dispute Type** | ZIM\_IN\_REV\_REQ-  DISPUTE\_TYPE\_OTHER | Only displayed If Other Dispute Type is selected, free text field to be available to enter description.  Mandatory. |
| **Query Due Date** | ZIM\_IN\_REV\_REQ-  QUERY\_DUE\_DATE | Mandatory date.  For the review type “Query”, a due date is required that will be 2 days (+3 e.g actioned on 1.3.2025 then due date is 3.3.2025) from the date the record is created. |
| **Complaint Due Date** | ZIM\_IN\_REV\_REQ-  COMPLAINT\_DUE\_DATE | Mandatory date.  For the review type “Query”, a due date is required that will be 10 days (+11 e.g actioned on 1.3.2025 then due date is 11.3.2025) from the date the record is created. |
| **Dispute Due Date** | ZIM\_IN\_REV\_REQ-  DISPUTE\_DUE\_DATE | Mandatory date.  For the review type “Query”, a due date is required that will be 15 days (+16 e.g actioned on 1.3.2025 then due date is 16.3.2025) from the date the record is created. |
| **Escalation** | ZIM\_REV\_REQ\_LOG-ESCALATION | Escalation flag |
| **Escalated to EPSS Supervisor** | ZIM\_REV\_REQ\_LOG -ESCAL\_SUP | Field with search help listing EPSS supervisors. Mandatory when Escalation flag is selected.  The supervisor is chosen manually as per the existing EPSS supervisor list. |
| **Closed Date** | ZIM\_REV\_REQ\_LOG -CLOSED\_DATE | Editable Date field |
| **Reviewer Employee Number** | ZIM\_REV\_REQ\_LOG -REVIEWER\_NUMBER | Reviewer Employee Number. Search help to list the EPSS Reviewers list |
| **Reviewer Name** | ZIM\_REV\_REQ\_LOG -REVIEWER\_NAME | Reviewer Name |
| **Reviewed Date** | ZIM\_REV\_REQ\_LOG -REVIEWED\_DATE | Editable Date field for reviewer to enter |
| **Final Response** | ZIM\_REV\_REQ\_LOG -FINAL\_RESPONSE | Final Response Text |

The following changes will be implemented in the existing ‘Previous Reviews’ section:

![](data:image/png;base64...)

* Date From: rename to “Date Received”
* Date To: replace to the new field “Due Date”
* Final Response: new field that allows the user to upload a document
* Escalation Flag: escalate to team member and will create a Task that is allocated to the EPSS Supervisor.
* Closed Date: date field for the user to update.
* Reviewer Number: field to record the reviewer’s employee number
* Reviewer Name: field to record the reviewer’s employee name
* Reviewed Date: date field for the reviewer to enter

## (2.3.4.4) OLIMS Diary / Reminders / Tasks

#### Current setup

The reminders function for OLIMS exist that scans an incident and generates operational reminders (IM, Case Mgmt, IP, Deployment) based on configurable business rules. The system loads incident/employee context (master record, certificates, meetings, claims, advisor). Evaluates rule records (ZIM\_REM) for many business rules (certificate expiry, meeting follow‑ups, claim reviews). generate due dates (uses working‑day helpers), overdue days and whether a reminder is required.

The system also supports creating correspondence (emails/documents) and recording them into ZIM\_IN\_DOC when required.

Called from the reminders program (ZHUIM\_REMINDERS\_NEW) for selected personnel/incident and run date the program shows results and optionally persists changes when the user selects update.

The program uses ZIM\_REM definitions to drive behavior so rules are configurable.

Prevents duplicate reminders by checking existing ZIM\_IN\_REM before insert.

Respects incident state (no reminders for one‑off or closed incidents special handling for suspended).

All DB writes are logged to an audit table.

#### Business requirement

***OLD001 System Generated Tasks***

* OLIMS must trigger a standard EPSS task set from defined events (for example claim allocation, period transitions, document requests).
* Each system generated task must include defined SLA and due date.
* Trigger mappings are configured during implementation using the EPSS Task List.
* Task/reminder actions must be audit logged with user, timestamp, and reason where applicable.

***OLD002 Ad Hoc Tasks***

* EPSS Claims Officers and Supervisors can create ad hoc tasks linked to claim/incident.
* Mandatory fields: Task Name, Due Date, Assigned To, Status, Date Created, Date Completed, Comments/Notes.
* Ad hoc tasks can be edited by creator or supervisor until complete.
* Only supervisors can delete ad hoc tasks.
* All create/edit/delete/status changes and failed attempts must be audit logged.

***OLD003 Manual Reminders/To Do Actions***

* Standard OLIMS reminder to do creation functionality must be available for EPSS incidents.
* Reminders must be linked to EPSS incident and visible in incident reminder section.
* Manual reminders align to EPSS predefined task list plus approved manual items.
* No custom automated workflow is triggered by standard reminder creation.
* Reminder creation completion actions must be audit logged.

***OLD004 Display Reminders/To Do Actions***

* Display all reminders to do actions for EPSS incident, including active and historical items.
* Required fields: task name, due date, status, assigned to, created date, completed date, comments.
* Display is read only no edit/delete from display view.
* Existing OLIMS reminder display path is reused.
* Access checks and audit controls apply.

***OLD005 New EPSS Category***

* Create category EPSS for reminders to do actions.
* Category must be visible selectable in relevant OLIMS screens/dropdowns/reports.
* Category must be usable for system generated and manual reminders/tasks.
* Category must be filterable in task lists and reports.

***OLD006 Suspend/Put on Hold Task***

* Authorised EPSS Claims Officers/Supervisors can suspend/resume active EPSS tasks.
* Suspension pauses SLA/due date countdown.
* Suspension reason is mandatory.
* Completed tasks cannot be suspended system must block and display error.
* Dependent tasks triggered by suspended task must also be placed on hold.
* Suspend/resume actions must not impact payroll calculations.

***OLD007 Suspension Reason Capture***

* Suspension reason must be mandatory free text visible in OLIMS UI.
* Reason must be stored online against task record.
* Reason must be auditable and reportable.

***OLD008 Task Resumption Logic***

* Resumed task keeps original due date unchanged.
* System creates separate recalculated due date record based on remaining SLA at suspension point.
* Elapsed pre suspension time is included in total SLA usage.
* If original due date is past at resumption, task is flagged overdue.
* Dependent tasks on hold due to parent suspension must reactivate with recalculated SLA timing.
* Suspended task cannot be completed until resumed.
* Suspend/resume actions (including reason) must be audit logged and reportable.

***OLD009 Task Template Management***

* EPSS Claims team role can create and edit templates in OLIMS.
* Template fields include task name, SLA/due date, assigned role, trigger event, status.
* Template field data source definition required (static/derived/user entry).
* Template edits must not retroactively affect active tasks apply to new tasks only.
* Template changes must be audit logged and reportable.

***OLD010 Tasks Reporting NSWPF***

* EPSS task report delivered via existing OLIMS Reminders/To Do List facility in ZIM\_CM.
* Optional separate EPSS report facility may be created if required to avoid impact to other claim types.
* Include in progress and completed tasks.
* Filters: status, EPSS Claims/Transitional, WC Primary Claim, EPSS Supervisor, EPSS Claims Advisor (individual/all).
* Fields: Employee No, Employee Name, Incident No, WC Claim No, Created Date, Task Name, EPSS Advisor, EPSS Supervisor, Comments, Due Date, No. of Days Overdue, Completed Date, Updated By, Suspension Status/Reason.

**EPSS Task List**

The following task list is the baseline register for OLD001/OLD002 design, build, and testing.

***System generated task list***

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| # | Task | Assigned To | SLA (business days) | Trigger | System generated |
| 1 | Triage and allocate claim | EPSS Supervisor | 1 | WC Claim flagged as primary | Yes |
| 2 | Acknowledgement and initial contact | EPSS Claims Advisor |  | Above task completed | Yes |
| 3 | Period 1   Initial Assessment | EPSS Claims Advisor | 5 | Creation of Task #2 | Yes |
| 4 | Period 1   Phone Contact with officer | EPSS Claims Advisor | 5 | Creation of Task #2 | Yes |
| 5 | Send Period 1 Commencement Letter | EPSS Claims Advisor | 5 | Creation of Task #2 | Yes |
| 6 | Send Income Statement | EPSS Claims Advisor | 5 | Creation of Task #2 | Yes |
| 7 | Income Statement   Follow up | EPSS Claims Advisor | 10 | Task 6 is completed | Yes |
| 8 | Income Statement Outstanding   Draft Dispute Notice | EPSS Claims Advisor | 25 | Task 6 is completed | Yes |
| 9 | Income Statement Outstanding   Raise Dispute Notice | EPSS Claims Advisor | 28 | Task 6 is completed | Yes |
| 10 | Income Statement Assessment completed | EPSS Claims Advisor | 20 | Task 6 is completed | Yes |
| 11 | Period 1   Pay Increase / Rank | EPSS Claims Advisor | 5 | Increase/Decrease in Period 1 ORP | Yes |
| 12 | Monitor EPSS benefit & eligibility | EPSS Claims Advisor | 9 | Creates Friday Off Pay Week | Yes |
| 13 | External Income Review   Quarterly | EPSS Claims Advisor |  | Every 3 months from DOD | Yes |
| 14 | Period 2   Initial Assessment | EPSS Claims Advisor | 5 | P1 week count = 34 | Yes |
| 15 | Period 2   Phone contact with officer | EPSS Claims Advisor | 5 | P1 week count = 34 | Yes |
| 16 | Period 2   Send Transition to Period 2 Letter | EPSS Claims Advisor | 5 | P1 week count = 34 | Yes |
| 17 | Period 2   Indexation Letter | EPSS Claims Advisor | 5 | 01 Oct (every calendar year) | Yes |
| 18 | External Income Review   Annual | EPSS Claims Advisor | 5 | 01 Dec (every calendar year) | Yes |
| 19 | IP Make Up Leave | Governance Officer | 9 | Condition: Officer in Period 2 Benefits | Yes |
| 20 | Period 2   end of benefit | EPSS Claims Advisor | 5 | Period 2 finalised | Yes |
| 21 | Financial Assessment Review | EPSS Supervisor | 2 | OLIMS external income record created | Yes |
| 22 | Claim Finalisation | EPSS Claims Advisor | 5 | PID WC Certificate uploaded | Yes |
| 23 | Claim Review   WC Status Change | EPSS Claims Advisor | 2 | Change in WC Status (Pending Case Closure, Closed, Reopened) | Yes |
| 24 | Claim Review   WC Liability Status Change | EPSS Claims Advisor | 2 | Change in WC Liability Status | Yes |
| 25 | Claim Review   Change in WC Primary claim | EPSS Claims Advisor | 2 | Change in WC primary flag (unflagged/reflagged) | Yes |

Scheduling note: Creates Friday Off Pay Week is interpreted as Friday of the off pay week for recurring task generation.

***Manual task list***

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| # | Task | Assigned To | SLA (business days) | Trigger | System generated |
| M | Create terminated employee for EPSS | Governance Officer | 5 |  | Manual |
| M | Request for Review | EPSS Claims Advisor | 5 |  | Manual |
| M | WID settlement recoveries | EPSS Claims Advisor | 5 |  | Manual |
| M | TPD Offset | EPSS Claims Advisor | 2 |  | Manual |
| M | PBRI IP Offsets | EPSS Claims Advisor | 2 |  | Manual |
| M | Death Claim   send information | EPSS Claims Advisor | 2 |  | Manual |
| M | Period 1   Claim Declinature | EPSS Claim Advisor | 5 |  | Manual |
| M | Period 2   Claim Declinature | EPSS Claim Advisor | 5 |  | Manual |

**Out of scope**

* Changes to core OLIMS manual reminder behavior beyond EPSS configuration.
* Edit/delete actions from reminder display screen (display remains read only).
* Retroactive application of updated template definitions to active tasks.
* Payroll calculation logic changes as part of task suspend/resume.
* Non EPSS category redesign outside introducing category EPSS.
* Reporting requirements beyond OLD010 fields, filters, export/audit, and access controls.

#### DTT Detailed Technical design

**Process impact**:

* Adds explicit EPSS lifecycle controls: create, edit, delete, suspend, resume, complete, report.
* Standardizes suspend/resume behavior including dependent task handling and overdue outcomes.
* Enforces mandatory ad hoc fields and suspension reason capture.
* Requires auditable event history for lifecycle actions, template updates, failed attempts, and exports.

**Security and control impact**:

* Enforces role based restrictions (Claims Officer/Supervisor, EPSS Claims team).
* Reuse existing OLIMS capability where available implement EPSS specific configuration changes only.
* Configure trigger to task mapping for OLD001.
* Enforce ad hoc validation and RBAC for OLD002.
* Configure category EPSS for OLD005 across UI and reporting filters.
* Implement suspend/resume control and reason capture rules for OLD006 OLD008.
* Configure templates for OLD009.
* Validate mandatory input fields before save for ad hoc tasks and templates.
* Enforce state transition rules: active  > suspended  > resumed  > completed.
* Block invalid operations: suspend completed task, complete suspended task, delete completed task.
* Save suspension reasons as mandatory free text and expose in reporting/audit.
* Ensure reminders/tasks are linked to incident/claim context for retrieval and reporting.

**ABAP objects to change** :

* FM Z\_OLIMS\_REMINDER, FM Z\_OLIMS\_REMINDER\_MD
  + Keep as manual/ad hoc reminder entry points.
  + Add EPSS context checks and enforce new OLD002 validations.
* Screen 7200 / 7210 and MODULE user\_command\_7200 / user\_command\_7210
  + Enforce mandatory REVIEW\_DATE (due date), assignee validation, status defaults, and failed-attempt logging before insert.
* FORM validate\_7200\_1, FORM validate\_7200\_2
  + Extend to enforce OLD002 mandatory fields and stronger assigned-to/category/business-rule checks.
* FORM f4\_business\_rule + MODULE bus\_rule\_help\_7200
  + Drive EPSS task templates/rules from ZIM\_REM and restrict selectable rules to EPSS category/task scope.
* FORM save\_rem\_list, FORM save\_rem\_list\_md
  + Enforce edit permissions (creator/supervisor), state transition rules, and audit logging for success/failure.
* FORM get\_incident\_reminders
  + Extend retrieval to support active + historical reminders/tasks and EPSS-specific filter/report fields.
* MODULE user\_command\_5000, MODULE user\_command\_5010
  + Add controlled actions for suspend/resume/delete with mandatory reason capture and RBAC checks.
* zcl\_olims\_class=>generate\_reminders\_im
  + Extend for EPSS trigger mapping and lifecycle behavior keep closed/one-off/suspended guardrails.
* zcl\_olims\_class=>generate\_reminders\_cm
  + Add EPSS category/task generation and due-date/SLA behavior for case-management triggers.
* zcl\_olims\_class=>generate\_reminders\_ip
  + Add EPSS IP task generation rules and overdue handling aligned with OLD001/OLD010.
* zcl\_olims\_class=>generate\_reminders\_deploy
  + Add EPSS deployment-related trigger-to-task mapping and SLA due-date computation.
* zcl\_olims\_class=>create\_reminder, create\_reminder\_action, delete\_reminder, save\_in\_rem\_log
  + Centralize business rules: supervisor-only delete, suspend/resume constraints, consistent audit payload, and failed-attempt logging.
* REPORT ZHUIM\_REMINDERS\_NEW (NSWP)
  + Continue as scheduled generation runner extend output/report mapping for EPSS task set and auditable processing results.
* FM Z\_OLIMS\_REMINDER\_OVERVIEW, FM Z\_OLIMS\_REMINDER\_OVERVIEW\_MD
  + Extend reminder reporting/filtering for OLD010 (status, advisor/supervisor, overdue, suspension reason/status).

## (2.3.4.5) External Income and Payment Offset Model

#### Current setup

External Income: OLIMS stores currently IT15 external Period 2 earnings (WT 3670) is entered manually via transaction PA30. There is no such functionality in OLIMS for EPSS for external earnings WT3670.

#### Business requirement

**External Earnings OLIMS Source**

The source of truth of the entry of external earnings WT 3670 will now be in OLIMS. This means that entry in the IT0015 screen will not be allowed in production as there will be key items needed such as document upload that needs to be kept in file for the entry of external earnings. OLIMS will need to keep a record of external earnings payment and will allow reporting and data to be audited

**PA0015 User Exit**

As OLIMS will be the source of truth of data, entry in PA0015 will no longer be allowed via SAP frontend, eg. transaction PA30. This means that a user exit for PA0015 will need to be modified to prevent the entry of IT3670 in the SAP PA0015 infotype. The user exit should prevent data to be entered in PA0015 and prompt an error message stating that data entry should be done in OLIMS.

***OLE001 Integration to IT0015 for Other Income***

* OLIMS shall integrate external income/payment offset entries to SAP IT0015 using WT3670, with additional wage types only where business approved.
* Integration shall support create and delete outcomes from OLIMS and preserve auditability.
* Integration behavior is OLIMS -> IT0015 only: create in OLIMS auto-creates IT0015 and delete in OLIMS deletes IT0015.
* No incident number is transferred/attached to IT0015 WT3670 entries.

***OLE002 OLIMS external earnings entry and documentation***

* OLIMS shall provide an Other/External Earnings entry path for EPSS Claims Officers via manual entry only (no mass upload/batch import).
* Supporting documents are mandatory for manual WT3670 entry creation block create without at least one attachment.
* Documentation capture is supported for audit compliance and evidential traceability.
* The manual entry process applies to standard and detached officer scenarios screen presentation may differ based on scenario/operational needs.
* Validation shall allow WT3670 manual entry only for employees transitioned to EPSS (validated against employee master record).

***OLE003 Earning Category field***

* External earnings entry shall include mandatory Earning Category.
* Allowed values are income or Other payment only.
* Category is OLIMS specific and applies only to WT3670 does not apply to WC external entries.
* OLIMS shall be the mandatory entry point for WT3670 from go live. Operational enforcement: PA30/PA70 direct entry is technically blocked via SAP transactional. Configuration batch jobs and interface submissions cannot be blocked technically and remain process controlled.

***OLE004 Income category options***

* When Earning Category = income, the system shall provide the approved income type option list.
* Selection of Other shall require free text description.
* Missing required option/description shall block save.
* Income type options are OLIMS display/data capture only no payroll calculations or behaviors are affected by income type selection.

***OLE005 Payment category options***

* When Earning Category = Other payment, the system shall provide the approved payment type option list.
* Selection of Other shall require free text description.
* Missing required option/description shall block save.
* Payment type options are OLIMS display/data capture only no payroll calculations or behaviors are affected by payment type selection.

***OLE006 Multiple earning types for overlapping date ranges***

* The system shall support multiple external earning entries for the same officer/incident with overlapping date ranges.
* Multiple entries of the same WT3670 on the same date are allowed and supported.
* Each entry shall remain distinct for processing and reporting.
* Earning types and sub categories are OLIMS specific and apply only to WT3670 processing they are not transferred to SAP and do not affect payroll calculations.
* Duplicate detection behavior shall warn/block according to approved business rule configuration.

***OLE007 External income/payment entry control***

* External offset entries shall allow create and delete actions only.
* Entry effective date must be on or after 01.10.2024 earlier dates are rejected.
* Entry amount must be positive.
* When payroll control record lock is active for the relevant period, create/delete shall be blocked with error messaging (similar restrictions to WT 9WCO).
* Claims officers must align entry/deletion timing with payroll lock periods to ensure timely processing.
* Retroactive external earnings creation may reduce EPSS payments (triggering claims) retroactive deletion may increase EPSS payments.
* External earnings should generally be entered in the next upcoming pay period retro entries are only for genuine overpayments and may cause SAP retroactivity adjustments.
* EPSS top up reductions apply on the IT0015 date regardless of other top-up amounts in that date/period.
* Current SAP external earnings retro behavior is accepted: retro IT0015 changes may produce positive or negative top-up adjustments through SAP retroactivity.
* Top up calculation is weekly and manual weekly pro-rating is performed by the business when required.
* Where payroll splits exist, reductions to the EPSS top up with the external earnings shall apply to the relevant week split.
* If external earnings and other reductions exceed top-up in the pay period, no carry-forward applies unused deduction amounts must not roll to the next pay period.
* ***OLE008 Audit trail for deleted entries***
* OLIMS audit trail (transaction ZHRDD\_AUDIT\_REPORT) is the source for external earnings audit.

***OLE009 Deletion of entry and associated document behavior***

* Deleting an external earnings entry shall physically delete all linked document records.
* Documents are deleted (not inactivated) because the associated external earnings information may be incorrect and poses privacy concerns if retained.
* Deleting an OLIMS WT3670 entry must delete the associated SAP IT0015 WT3670 record.
* Audit visibility after deletion: Deleted document records remain visible in OLIMS audit trail (transaction ZHRDD\_AUDIT\_RECORD) with deletion event metadata (user, date/time, action code). Document content is physically removed, but deletion events are retained for compliance and forensic auditing.

***OLE010 External income and payment offset model***

* One off and recurring external offsets shall be supported with effective date boundaries.
* One off offsets: Weekly value entries dated on a specific effective date each represents a single external earning for that pay period.
* Recurring offsets: Weekly value entries with repeat capability when repeat is selected, OLIMS shall create multiple entries automatically, each dated +7 days from the previous entry (weekly cadence).
* Repeat/Bulk behavior shall create X repeats where each repeat date = original effective date + (7 \* n) days.
* Repeat count is entered as Number of Repeats (no repeat end date field).
* When the number of repeats entered is between 15 and 260, a warning message is given. The repeats are allowed for creation after acknowledgment of the warning. The maximum number of repeats is 260. An entry above 260 repeats results in an error message and no repeat entry is created. UI shall warn the user when requested repeats exceed the allowed limit.
* Repeat creation is allowed only when the original entry has attachments.
* Attachments from the original entry must be duplicated onto each repeat entry.
* All repeats must use the original amount to change one repeat amount, user must delete that repeat and create a new entry.
* UI must show clear messaging/tooltip that repeat requires documents and uses the same amount for all repeats.
* IT0015 maintenance display should support mass-select/select-all and individual unselect, with mass-delete for selected rows.
* QA reporting requirement (NSWPF deliverable): System shall support audit/reporting to identify where IT0015 external earnings (WT3670) or WC external entries do not temporally align with WT 9WCO records (for reconciliation and payroll impact validation).

**Cutover impact - Business**

* As WT 3670 is currently being used for multiple purposes as defined in current state, existing 3670 will have to be deleted before go live and then re-uploaded in OLIMS post go live to keep a record of 3670 data in the OLIMS screen. There is expectation as well that 3670 manual adjustments will be deleted as part of the 9WCM/9WCA adjustment so anything that is left as part of 3670 will be true external earnings that would have to be uploaded in OLIMS.

#### DTT Detailed Technical design

**Process impact**:

* Adds strict create/delete only control for external earnings entries with payroll lock enforcement.
* Adds mandatory category/type/amount validation and optional document capture for OLIMS audit traceability.
* Adds physical document deletion behavior on entry deletion (documents removed for privacy/correctness).
* Adds repeat button functionality for recurring WT3670.
* Adds retroactive entry/deletion timing considerations aligned with payroll lock periods and integration triggers.

**Security and control impact**:

* Enforces RBAC for create/delete/audit/report actions.
* Enforces payroll lock validation gates before create/delete processing.
* Enforces validation and authorization errors.
* Reuse existing OLIMS external activity, document update, and document persistence flows where feasible.
* Implement OLE001 integration: OLIMS shall post external earnings to SAP IT0015 WT3670 including create/delete actions
* Implement OLE002/OLE003/OLE004/OLE005 UI and validation rules for category/type/document requirements (documents optional), with manual entry path (no mass upload) for WT3670.
* Implement OLE006 support for overlapping entries and multiple same date entries earning types/categories OLIMS only for WT3670.
* Implement OLE007 create/delete only control, payroll lock blocking behavior, and retroactive entry/integration timing alignment.
* Implement OLE008/OLE009 audit trail persistence (OLIMS log, not SAP standard) and physical document deletion on entry deletion.
* Implement OLE010 recurring and one off processing rules with weekly effective date.
* Validate mandatory fields before save: category, type (income/other payment), amount/date boundaries documents are optional (may omit if not provided).
* Enforce allowed actions (create, delete) and reject update for external earnings records.
* Enforce payroll lock check prior to create/delete commit block action if lock is active and return error messaging (aligned with WT 9WCO restrictions).
* Delete linked document records (physically remove, not inactivate) when parent external earning record is deleted documents removed due to privacy and data correctness concerns.
* Ensure transactional consistency for entry/document delete processing to prevent partial persistence on failure, rollback entry delete and document delete together.
* Support recurring offset repeat functionality for WT3670 only.
* Preserve reportability of active and inactive/deleted entries for reconciliation and QA overlap validation (external earnings vs. WT 9WCO).
* Do not transfer WC/incident information to SAP for WT3670 postings external earnings deduct from overlapping pay split WT 9WCO.

**ABAP objects to change**:

1. ZHUOLIMS\_UPDATE2 (FORM VALIDATE\_4105, FORM USER\_COMMAND\_4105, FORM CREATE\_OTHER\_EXT\_EARNINGS) this is the current save/validate path for 4105 External/Other Earnings, so OLE002–OLE007/OLE010 logic belongs here (mandatory fields, date/amount bounds, create/delete-only behavior, repeat logic, payroll-lock gate, IT0015 integration calls, audit calls).
2. Screen flow for Dynpro 4105 (zhuolims.prog.screen\_4105) new fields and CHAIN validation triggers must be added here to enforce UI behavior.
3. ZHUIM\_MAIN (MODULE STATUS\_4105, MODULE SCREEN\_CONTROL\_4105) controls ALV display state and field editability for create/delete restrictions and display-only scenarios.
4. ZHUIM\_MAIN\_2 (MODULE CHECK\_SCREEN\_4105, MODULE USER\_COMMAND\_4105, MODULE EPSS\_EARNING\_TYPE\_F4) PAI routing and input checks are here required for new command handling and value helps.
5. ZHUIM\_UPDATE (FORM BUILD\_FIELDCAT\_EPSS\_OE) ALV columns/buttons must change for category/type/repeat, delete controls, and mass-select/delete behavior.
6. ZHUIM\_UPDATE3 (FORM GET\_EPSS\_OTHER\_EXT\_EARNINGS) row loading and icon/document status logic must be extended for new fields and new behaviors.
7. ZHUIM\_TOP (GS\_OUTTAB\_TYPE55 structure) ALV backing structure needs new fields (category/type/repeat flags/counters, new action icons).
8. ZHUIM\_TOP\_CLASS (METHOD HANDLE\_BUTTON\_CLICK\_4105) button events for import/display/delete/mass delete and transactional document cleanup are handled here.
9. ZXPADU02\_IT0015 (PA0015 user exit/enhancement)required control point to block direct PA30/PA70 WT3670 maintenance and show use OLIMS message (OLE001/OLE003 enforcement).
10. zhuolims\_correspondence (FORM CALL\_DELETE\_UNIQUE, FORM CALL\_DELETE\_DOCUMENT) existing physical document delete utilities should be reused for OLE009 transactional delete behavior.
11. zhuim\_search\_help (FORM F4\_EARNING\_TYPE) + related DDIC value sources needed for controlled option lists for category/type selections (OLE004/OLE005).

## (2.3.4.6) EPSS Estimation Tab / Forecasting Calculator

#### Current setup

The existing OLIMS code contains EPSS calculation and persistence logic for Period 1 and Period 2 estimation paths including the P1 weekly estimate formula with related date and earnings deduction handling and the P2 weekly/monthly estimate and day-based usage.

#### Business requirement

***OLF001 EPSS estimation tab / forecasting calculator***

* EPSS estimate capture per incident, including benefit period, date range, quarter, WC section, RTW capacity, and estimate values.
* Support Period 1, Period 2, and Period 3 forecast processing.

***OLF002 One to one incident estimate relationship***

* A single active forecast estimate shall be enforced per incident.
* Incident number, claim number, and estimate date range shall be mandatory reporting keys.
* Attempts to create duplicate active estimates for the same incident shall be rejected.

***OLF003 Period 3 blank display logic***

* Empty Period 3 fields shall display blank, not zero.
* Clearing a populated Period 3 value shall restore blank display.
* Exports and reports shall preserve blank representation for missing Period 3 values.

***OLF004 Grouping and totals***

* Forecast totals shall be groupable by benefit period and quarter.
* WC section and RTW capacity shall be supported as grouping/output attributes where required.

***OLF005 Period 1 estimate section***

* Period 1 inputs shall include RTW hours, RTW salary/ORP context, weekly estimate, and future weeks.
* Period 1 total forecast shall be derived from weekly estimate and future weeks.
* Validation shall enforce the approved Period 1 future week cap.

***OLF006 Period 2 estimate section***

* Period 2 shall include required date, weekly estimate, total estimate, and optional comments/notes attributes.
* Validation shall enforce the approved Period 2 future week cap (maximum 365 weeks).
* Save shall fail on missing mandatory fields or numeric validation errors.

***OLF007 Period 3 estimation logic***

* Period 3 shall include explicit user entered and system calculated fields.
* Effective date shall be stored for each Period 3 estimate set.
* Validation shall enforce the approved Period 3 future week cap (maximum 157 weeks).

***OLF008 Roll up logic***

* Period level forecast roll up shall be available by forecast quarter.
* Roll up shall include P1, P2, and P3 contributions.
* Roll up outputs shall be available in required OLIMS and iCare reporting channels per approved scope.

***OLF009 Mapping and iCare alignment***

* Mapping between OLIMS estimate fields and iCare recoup fields shall be explicitly documented and version controlled.
* Incomplete records for required mapped fields shall be flagged and excluded from submission totals.
* Mapping defects shall be logged and routed for support resolution.

***OLF010 Platform and override policy***

* Forecast reporting shall be delivered on the approved target platform.
* Default output shall use OLIMS estimate data as source of truth.
* If manual override is approved, override reason/user/timestamp shall be mandatory and auditable.

**Out of scope for OLF**

* Redesign of non EPSS OLIMS claim management capabilities.
* Payroll engine redesign unrelated to forecast capture/reporting.
* Backfill/reconstruction of historical estimates without approved migration scope.
* Any iCare interface behavior not backed by approved mapping and platform decisions.
* Non approved expansion of forecast dimensions beyond OLF001 OLF010.

#### DTT Detailed Technical design

**ABAP objects to change**:

1. ZHUOLIMS\_UPDATE2 FORM calculate\_epss\_dates: extend current logic from P1/P2 to full P1/P2/P3 forecasting, including caps and consistent week arithmetic.

2. ZHUOLIMS\_UPDATE2 FORM save\_epss (called via MODULE user\_command\_4100 save flow): save forecast estimate data and enforce mandatory save keys (incident, claim, estimate date range).

3. ZHUIM\_UPDATE3 FORM validate\_3401 plus EPSS validators in ZHUOLIMS\_UPDATE2 (existing/new): enforce P1 approved cap, P2 <= 365 weeks, P3 <= 157 weeks, date/amount checks, and duplicate-active estimate prevention.

4. ZHUIM\_MAIN / ZHUIM\_MAIN\_2 EPSS tab/subscreen flow (including subscreen 4106 handlers): add EPSS Estimation UI for create/update/view with Period 1/2/3, quarter, WC section, RTW capacity, comments, override fields, and mandatory indicators.

5. Create table (ZIM\_IN\_EPSS\_ESTIMATE): one active estimate set per incident with unique active-incident constraint.

6. Create forecast detail table (ZIM\_IN\_EPSS\_EST\_DTL): period-level values for P1/P2/P3, effective dates, weekly estimate, future weeks, totals, and blank-preserving P3 fields.

7. Create audit table (ZIM\_IN\_EPSS\_AUDIT): override reason, user, timestamp, action, and error/denial audit trail.

8. Create mapping table (ZIM\_IN\_EPSS\_MAP): version controlled OLIMS to iCare mapping, completeness flags, and exclusion markers for incomplete mapped records.

9. Update ZHRDD\_EPSS\_ICARE\_RECOUP and ZHDD\_EPSS\_ICARE\_RECOUP\_LIST: support P1/P2/P3 rollup outputs, preserve blank (not zero) for empty P3, and apply mapping/exclusion rules.

10. Retain existing weekly to weeks conversion approach so all new forecasting calculations remain consistent with calculate\_epss\_dates.

## (2.3.4.7) Display increases in Period 1 ordinary rate of pay/ORP

#### Current Setup

Currently ORP increases cannot be seen in OLIMS.

#### Business requirement

A new display-only OLIMS screen is required which will reflect SAP backend infotype 8 (Basic Pay) increases, start and end dates and the associated ORP sorted in descending order (latest first).

#### DTT Detailed Technical design

The determination of EPSS Period 1 is based on the date fields ZIM\_IN\_CM-EPSS\_START\_DATE\_P1 and ZIM\_IN\_CM-EPSS\_END\_DATE\_P1, therefore, only infotype 8 records valid within those dates will be listed in the screen.

The ORP amounts will be displayed as weekly and annually values where weekly is the annually divided by 52.17858.

The new screen will have the following fields:

* Start Date (IT0008-BEGDA)
* End Date (IT0008-ENDDA)
* ORP weekly amount (IT0008-BETRG */ ‘52.17858’*)
* ORP yearly amount (IT0008-BETRG)

## (2.3.4.8) EPSS Claim Status

#### Current Setup

The following reasons are currently available in OLIMS when an EPSS Claim Status is closed:

![](data:image/png;base64...)

#### Business requirement

The business requires to add new reasons for closure for reporting purposes.

**Additional Requirement** – Business requests the claim status is have limited selections pending the type of claim. Limitations are to be provided.

#### DTT Detailed Technical design

Add the following values to domain ZIM\_REASON\_CLOSURE:

* WC Claim Closed (TBC - Is the reason 'EC Claim Closed' same as existing reason 'Workers Compensation payments ceased/ineligible'?)
* Returned PID
* Work Injury Damages (WID)
* Death
