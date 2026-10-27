<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPP -->

# Document Overview

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPP001 | Reporting capability on documents sent and uploaded in the Document Overview screen for compliance and reporting activities on EPSS | M |
| RPP002 | Report Selection:   * Employee No. * Incident No. * Document Category * Document Sub Category * Date From * Date To | M |
| RPP003 | Column Header:   * Employee No. * Incident No. * Claim No. * Duty Type * Direction * Document Category * Document Sub Category * Document Title * Receiver Type * Receiver Name * Receive Distn Method * Email ID * Date Processed * Time Sent * Date Received * Comments * EPSS Claim Advisor * EPSS Supervisor * Modified By * Modified On * Modified At | M |
| RPP004 | For every record created to be displayed as an individual line item | M |
| RPP005 | The report to be exported from SAP to allow the EPSS Claims officer to analyse the information, the preferred option for the team is as an excel file | M |

## Business Purpose

**Users:** EPSS Claims Officers, EPSS Supervisors, Document Management teams, Compliance teams

**Frequency:** On-demand, weekly/monthly reviews

**Business Use:**
RPP tracks all documents sent and received through the OLIMS Document Overview screen. This includes:
- Correspondence sent to officers (letters, forms, notifications per OLA001-OLA004)
- Documents uploaded by officers or claims officers (certificates, evidence, medical records per OLA006)
- Documents hidden/redacted (per OLA010)
- Delivery method tracking (email, postal, in-person)

**Key Business Decisions:**
- Compliance monitoring: verify all required documents were sent/received (e.g., claim acknowledgment, period end statements)
- Audit trail: track document delivery dates and methods for SLA compliance
- Communication effectiveness: identify which documents were received vs. undelivered
- Case management: ensure complete documentation for claims
- Document lifecycle: track from creation through delivery/receipt

## Key Metrics/Columns

**Primary Columns:** 21 columns per RPP003
1. Employee No (officer receiving EPSS benefits)
2. Incident No (identifies the injury incident)
3. Claim No (WC or EPSS claim)
4. Duty Type (On Duty / Off Duty)
5. Direction (Outbound to officer / Inbound from officer / Internal)
6. Document Category (letter, form, certificate, etc.)
7. Document Sub Category (more specific type)
8. Document Title (name/description of document)
9. Receiver Type (Officer / Medical Provider / Insurer / Internal / Other)
10. Receiver Name (name of person/organization receiving document)
11. Receive Distn Method (email / post / courier / in-person / etc.)
12. Email ID (email address if sent electronically)
13. Date Processed (when document was created/finalized for sending)
14. Time Sent (time document was actually sent)
15. Date Received (when document was received/acknowledged)
16. Comments (free-text notes about document or delivery)
17. EPSS Claim Advisor (claims officer managing claim)
18. EPSS Supervisor (supervisor responsible for claim)
19. Modified By (who created/modified document record)
20. Modified On (date of last modification)
21. Modified At (timestamp of last modification)

## SAP Field Mappings

| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| Employee No | OLIMS | employee_number | Char | 8 | Police officer registration number |
| Incident No | OLIMS | incident_number | Char | 10 | WC incident identifier |
| Claim No | OLIMS | claim_number | Char | 20 | WC or EPSS claim number |
| Duty Type | OLIMS | duty_type | Char | 10 | On Duty / Off Duty [TBC] |
| Direction | OLIMS | document_direction | Char | 10 | Outbound / Inbound / Internal [TBC] |
| Document Category | OLIMS | document_category | Char | 30 | Category code (letter, form, certificate, etc.) [TBC] |
| Document Sub Category | OLIMS | document_subcategory | Char | 30 | Detailed type code [TBC] |
| Document Title | OLIMS | document_title | Varchar | 250 | Name/description of document |
| Receiver Type | OLIMS | receiver_type | Char | 30 | Officer / Medical Provider / Insurer / Internal [TBC] |
| Receiver Name | OLIMS | receiver_name | Varchar | 100 | Name of recipient person/organization |
| Receive Distn Method | OLIMS | distribution_method | Char | 20 | email / post / courier / in-person [TBC] |
| Email ID | OLIMS | email_address | Varchar | 100 | Email address if sent electronically |
| Date Processed | OLIMS | document_date_processed | Date | - | When document was created/finalized |
| Time Sent | OLIMS | document_time_sent | Time | - | Time document was sent (HH:MM:SS) [TBC] |
| Date Received | OLIMS | document_date_received | Date | - | When document was received/acknowledged |
| Comments | OLIMS | document_comments | Varchar | 500 | Free-text notes about document/delivery |
| EPSS Claim Advisor | OLIMS | claims_advisor_id | Char | 8 | Claims officer ID [TBC] |
| EPSS Supervisor | OLIMS | supervisor_id | Char | 8 | Supervisor ID [TBC] |
| Modified By | OLIMS | last_modified_by | Char | 20 | User ID who created/modified record [TBC] |
| Modified On | OLIMS | last_modified_date | Date | - | Date of last modification |
| Modified At | OLIMS | last_modified_timestamp | Timestamp | - | Timestamp of last modification [TBC] |

## Selection Criteria & Filters

| Filter | Type | Options | SAP Source | Notes |
|---|---|---|---|---|
| Employee No | **Text** | Single or multiple employee numbers | OLIMS employee_number | Optional per RPP002; wildcard for partial matches |
| Incident No | **Text** | Single or multiple incident numbers | OLIMS incident_number | Optional per RPP002 |
| Document Category | **Dropdown** | Predefined categories (letter, form, certificate, etc.) | OLIMS document_category | Optional per RPP002 |
| Document Sub Category | **Dropdown** | Dependent on category selected | OLIMS document_subcategory | Optional per RPP002; filters based on parent category |
| Date From | **Date** | Date range (From Date) | OLIMS document_date_processed | Filter by when document was created |
| Date To | **Date** | Date range (To Date) | OLIMS document_date_processed | Filter by when document was created |
| No Criteria | **Option** | Allow blank criteria (return all) | OLIMS | When no filters entered, return all document records |

**Filter Logic:** AND logic across all selected criteria. If all criteria blank, return all active document records.

## Data Relationships

| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| OLIMS Document Overview Tab | incident_number + document_id | 1:Many; multiple documents per incident | Filter by employee_number, incident_number, categories, date range |
| OLIMS Incident | incident_number | Join to get claim_number, employee_number | Source of incident context |
| OLIMS Employee | employee_number | Join to get employee name, rank (optional) | Optional join for reporting context |
| OLIMS Claims Officer | claims_advisor_id | Join to get claims advisor name | Optional join for officer display |
| OLIMS Supervisor | supervisor_id | Join to get supervisor name | Optional join for supervisor display |

**Data Model Notes:**
- Per RPP004: "For every record created to be displayed as an individual line item" – each document is one row
- 1:Many relationship between incidents and documents (multiple documents per incident)
- Tracks both sent (outbound) and received (inbound) documents
- Document may be undelivered (Date Received NULL)

## Calculated Fields

| Field | Formula | Source Fields | Notes |
|---|---|---|---|
| Delivery Status | CASE WHEN document_direction = 'Outbound' AND document_date_received IS NULL THEN 'Undelivered' WHEN document_direction = 'Outbound' AND document_date_received IS NOT NULL THEN 'Delivered' WHEN document_direction = 'Inbound' AND document_date_received IS NOT NULL THEN 'Received' ELSE 'Pending' END | document_direction, document_date_received | Status of document delivery |
| Days to Delivery | IF(document_date_received IS NOT NULL, DATEDIFF(document_date_received, document_date_processed), DATEDIFF(TODAY(), document_date_processed)) | document_date_processed, document_date_received | Days from processed to received (or today if undelivered) |
| Overdue Delivery | IF(document_direction = 'Outbound' AND document_date_received IS NULL AND DATEDIFF(TODAY(), document_date_processed) > 14, 'Yes', 'No') | document_direction, document_date_processed, document_date_received | Overdue if outbound, undelivered, and > 14 days [TBC threshold] |

## Lookups & Code Translations

| Field | Code | Meaning | Source |
|---|---|---|---|
| Duty Type | On Duty | Injury sustained during work hours/duties | OLIMS |
| Duty Type | Off Duty | Injury sustained off-duty | OLIMS |
| Direction | Outbound | Document sent from NSWPF to officer/other party | OLIMS |
| Direction | Inbound | Document received from officer/other party | OLIMS |
| Direction | Internal | Internal documentation/notes | OLIMS |
| Document Category | [TBC] | Letter | OLIMS category codes |
| Document Category | [TBC] | Form | OLIMS category codes |
| Document Category | [TBC] | Certificate | OLIMS category codes |
| Document Category | [TBC] | Medical Report | OLIMS category codes |
| Document Category | [TBC] | Other | OLIMS category codes |
| Receiver Type | Officer | Injured police officer | OLIMS |
| Receiver Type | Medical Provider | Medical doctor or health professional | OLIMS |
| Receiver Type | Insurer | Workers Compensation insurer (EML, etc.) | OLIMS |
| Receiver Type | Internal | Internal NSWPF recipient | OLIMS |
| Receiver Type | Other | Other external party | OLIMS |
| Distribution Method | email | Sent electronically via email | Standard |
| Distribution Method | post | Sent via Australia Post | Standard |
| Distribution Method | courier | Sent via courier service | Standard |
| Distribution Method | in-person | Delivered in person | Standard |
| Distribution Method | other | Other delivery method | Standard |

**[TBC]:** Confirm actual category/subcategory codes, receiver types, and distribution methods used in OLIMS.

## Outstanding Items [TBC]

| Item | Impact | Owner | Status |
|---|---|---|---|
| OLIMS Document Overview tab table structure and field names | Data extraction accuracy; mapping to RPP003 columns | [TBC] OLIMS design | Awaiting OLIMS technical specification |
| Document category and subcategory codes | Accurate filtering and reporting of document types | [TBC] OLIMS design | Confirm predefined document_category values |
| Receiver types and distribution methods | Accurate tracking of communication channels | [TBC] OLIMS design | Confirm receiver_type and distribution_method values |
| Document hidden/redacted tracking (per OLA010) | Audit trail of hidden documents | [TBC] OLIMS design | Confirm how hidden documents are marked and whether report includes them |
| Document delete/audit trail (per OLA011, OLA012) | Compliance and audit trail completeness | [TBC] OLIMS design | Confirm audit trail capture for deleted documents |
| OLIMS audit fields (last_modified_by, last_modified_date, last_modified_at) | Audit trail completeness | [TBC] OLIMS design | Awaiting OLIMS audit table documentation |
| Claims advisor and supervisor name mapping | Display friendly names instead of IDs | [TBC] OLIMS design | Confirm HR/OLIMS tables for officer/supervisor lookup |
| Document template names (letter templates per OLA001) | Identify which templates were used | [TBC] OLIMS design | Confirm if document_title shows template name or custom title |

## Open Questions (Business)

| Question | Related Req(s) | Why it matters |
|---|---|---|
| What are the complete list of document categories and subtypes used? | RPP002, RPP003 | Needed to configure filtering dropdowns |
| What is the expected SLA for document delivery (how many days to consider overdue)? | RPP001 | Helps flag overdue documents in report |
| Should report include documents marked as hidden/redacted (per OLA010), or exclude them? | RPP001, OLA010 | Affects visibility of compliance issues |
| Should report show document templates used (to verify standardized correspondence)? | RPP003 | Supports quality assurance on correspondence |
| What delivery methods are supported beyond email/post/courier/in-person? | RPP003 | Needed for complete dropdown list |
| Should report include document acknowledgment/receipt confirmation status? | RPP001 | Helps track which outbound documents were confirmed received |
| What is expected refresh frequency (real-time, daily, weekly)? | RPP001 | Impacts users' expectations for current data |

## Report Column Sequence

| # | Column | Source | Type | Length | Notes |
|---|---|---|---|---|---|
| 1 | Employee No | OLIMS employee_number | Char | 8 | Police officer receiving benefits |
| 2 | Incident No | OLIMS incident_number | Char | 10 | WC incident identifier |
| 3 | Claim No | OLIMS claim_number | Char | 20 | WC or EPSS claim number |
| 4 | Duty Type | OLIMS duty_type | Char | 10 | On Duty / Off Duty [TBC] |
| 5 | Direction | OLIMS document_direction | Char | 10 | Outbound / Inbound / Internal [TBC] |
| 6 | Document Category | OLIMS document_category | Char | 30 | Category code (letter, form, certificate) [TBC] |
| 7 | Document Sub Category | OLIMS document_subcategory | Char | 30 | Detailed type code [TBC] |
| 8 | Document Title | OLIMS document_title | Varchar | 250 | Name/description of document |
| 9 | Receiver Type | OLIMS receiver_type | Char | 30 | Officer / Medical / Insurer / Internal [TBC] |
| 10 | Receiver Name | OLIMS receiver_name | Varchar | 100 | Name of recipient person/organization |
| 11 | Receive Distn Method | OLIMS distribution_method | Char | 20 | email / post / courier / in-person [TBC] |
| 12 | Email ID | OLIMS email_address | Varchar | 100 | Email address if sent electronically |
| 13 | Date Processed | OLIMS document_date_processed | Date | - | When document was created (YYYY-MM-DD) |
| 14 | Time Sent | OLIMS document_time_sent | Time | - | Time sent (HH:MM:SS) [TBC] |
| 15 | Date Received | OLIMS document_date_received | Date | - | When received/acknowledged (YYYY-MM-DD); NULL if not delivered |
| 16 | Comments | OLIMS document_comments | Varchar | 500 | Free-text notes about document/delivery |
| 17 | EPSS Claim Advisor | OLIMS claims_advisor_id / name | Char | 40 | Claims officer managing claim [TBC] ID or name |
| 18 | EPSS Supervisor | OLIMS supervisor_id / name | Char | 40 | Supervisor responsible for claim [TBC] ID or name |
| 19 | Modified By | OLIMS last_modified_by | Char | 20 | User ID who created/modified record [TBC] |
| 20 | Modified On | OLIMS last_modified_date | Date | - | Date of last modification (YYYY-MM-DD) |
| 21 | Modified At | OLIMS last_modified_timestamp | Time | - | Timestamp (HH:MM:SS) [TBC] |

**Export Format:** Excel per RPP005

**Default Sort:** Employee No (ASC), Incident No (ASC), Date Processed (DESC – most recent first)

**Conditional Formatting (recommended):**
- Highlight Delivery Status "Undelivered" in yellow (requires follow-up)
- Highlight Overdue Delivery "Yes" in red (escalate)
- Highlight Direction "Outbound" with Date Received NULL in light orange (pending delivery)

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.

