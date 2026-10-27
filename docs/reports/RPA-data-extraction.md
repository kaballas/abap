<!-- Auto-extracted from brd.md on 2026-01-20 -->
<!-- Requirement prefix: RPA -->

# Data extraction

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPA001 | SAP OLIMS, HR and Payroll data to be extracted into data lake or cube to allow the business to build their own reports and model data for operational and scheme wide reporting needs | M |

## Business Purpose

**Users:** Business Analysts, Data Scientists, Finance, Management Reporting teams, External Stakeholders (HSWC)

**Frequency:** Scheduled incremental loads (daily/weekly), historical data retained

**Business Use:**
RPA is not a traditional report, but a data extraction and consolidation capability. Per RPA001, SAP OLIMS, HR, and Payroll data is extracted into a data lake/cube to enable the business to:
- Build custom reports and ad-hoc analyses
- Model data for financial planning and forecasting
- Support scheme-wide reporting to external stakeholders (HSWC)
- Enable data-driven decision-making
- Support audit and compliance reviews

**Key Business Decisions:**
- Provide flexible data access without creating individual reports for every scenario
- Support self-service BI and analytics
- Enable longitudinal analysis and trending
- Facilitate integration with external reporting systems (HSWC recoup, EDW)

## Key Metrics/Columns

**Data Extracted Sources (per RPA001):**
- **OLIMS Data:** All core claim data (incidents, claims, certificates, tasks, reminders, external earnings, forecasts, documents, notes)
- **HR Data:** Employee master data (name, rank, command, region, hire/term dates, salary, super)
- **Payroll Data:** Payment records, wagetypes, earning records, deductions, leave, superannuation contributions

**Scope:** All tables and fields from these systems (detail available in SAP data dictionary)

## SAP Field Mappings

| Data Source | Table/Module | Fields Extracted | Type | Description |
|---|---|---|---|---|
| OLIMS | Incident | incident_number, employee_number, date_of_disablement, date_of_incident, status | Master | Core incident data |
| OLIMS | Claim | claim_number, incident_number, claim_type, claim_status, date_created, date_closed | Master | EPSS/PBRI claim records |
| OLIMS | Certificate | certificate_number, incident_number, certificate_type, date_from, date_to, hours_per_day, days_per_week, wc_section, status | Master | Workers compensation certificates |
| OLIMS | External Earnings | earning_id, incident_number, earning_type, earning_category, date_from, date_to, amount, frequency, document_flag, inactive_flag | Transaction | Income/payment offsets |
| OLIMS | Forecast Estimate | estimate_id, incident_number, period, orp, rtw_hours, wc_payment, external_earnings, future_weeks, forecast_total | Transaction | EPSS payment forecasts |
| OLIMS | Task/Reminder | task_id, incident_number, task_type, due_date, completion_date, assigned_to, status | Transaction | Claims management tasks |
| OLIMS | Document | document_id, incident_number, document_type, document_category, date_processed, date_received, distribution_method, status | Transaction | Correspondence and uploaded documents |
| SAP HR | Employee | employee_number, first_name, last_name, date_of_birth, date_hired, date_terminated, rank, command, region, salary_level, super_fund | Master | Personnel master data |
| SAP HR | Salary | employee_number, effective_date, salary_amount, orp, super_rate, leave_balance | Transaction | Salary history and leave |
| SAP Payroll | IT0014 | employee_number, wagetype, amount, date_from, date_to, pay_period, cost_center | Transaction | Payment records and wagetypes |
| SAP Payroll | IT0015 | employee_number, wagetype_other_income, amount, date_from, date_to | Transaction | Other income records |

## Selection Criteria & Filters

| Filter | Type | Options | Purpose |
|---|---|---|---|
| Data Load Frequency | **Schedule** | Daily / Weekly (incremental) | Controls when new data is extracted and loaded |
| Historical Data Retention | **Policy** | All historical data retained with change tracking | Enables trending and longitudinal analysis |
| Data Refresh Lag | **SLA** | T+1 or T+2 days (daily extracts completed next/following day) | Balances timeliness with system load |
| Incremental Load | **Method** | Changed records since last load (via timestamps or change logs) | Optimizes load performance |

## Data Relationships

| Tables | Join Keys | Relationship | Notes |
|---|---|---|---|
| Incident ↔ Claim | incident_number | 1:Many | Multiple claims per incident (EPSS, PBRI, TAL) |
| Claim ↔ Certificate | incident_number | 1:Many | Multiple certificates per incident over time |
| Incident ↔ External Earnings | incident_number | 1:Many | Multiple earnings entries per incident |
| Incident ↔ Forecast Estimate | incident_number | 1:Many | Multiple forecasts per incident/period |
| Incident ↔ Task/Reminder | incident_number | 1:Many | Multiple tasks per claim lifecycle |
| Incident ↔ Document | incident_number | 1:Many | Multiple documents per incident |
| Employee (HR) ↔ Incident | employee_number | 1:Many | Employee has multiple injury incidents over career |
| Employee (HR) ↔ IT0014/IT0015 | employee_number | 1:Many | Multiple payment records per employee per pay period |
| Claim ↔ IT0014 (payment) | claim_number / employee_number | 1:Many | Claim linked to EPSS wage records pushed to payroll |

## Calculated Fields

| Field | Formula/Logic | Purpose |
|---|---|---|
| Days Since Incident | DATEDIFF(TODAY(), date_of_incident) | Trending claim age |
| Days Since Disablement | DATEDIFF(TODAY(), date_of_disablement) | Week counting eligibility |
| Claim Duration (closed) | DATEDIFF(date_closed, date_created) | Claim lifecycle metrics |
| Claim Status Category | IF(date_closed IS NULL, 'Open', 'Closed') | Active vs. historical claims |
| Period Flags | IF(date >= p1_start AND date <= p1_end, 'P1', IF(date >= p2_start..., 'P2', 'P3')) | Period categorization for calculations |
| Employee Status | IF(date_terminated IS NULL, 'Active', 'Terminated') | Active workforce tracking |
| Earning Annualized | CASE WHEN frequency='weekly' THEN amount×52 WHEN frequency='fortnightly' THEN amount×26 WHEN frequency='monthly' THEN amount×12 ELSE amount END | Comparable earnings amounts |

## Lookups & Code Translations

| Field | Code Set | Usage | Notes |
|---|---|---|---|
| Claim Type | EPSS / PBRI / TAL / WC | Distinguish scheme/insurer | Master code list maintained in OLIMS |
| Claim Status | See OLIMS status codes | Track claim progression | Per OLIMS claim status model |
| Certificate Type | WC / Medical | Distinguish certificate source | Per OLIMS certificate model |
| Certificate Status | Approved / Active / Inactive / Superseded | Certificate lifecycle | Per OLIMS certificate status model |
| Wagetype | 9WCM, 4901, 3670, 49E9, 6A48, 49S9, 6A49, etc. | Categorize payment types | Per SAP wagetype master |
| Task Type | Claim Admission, Certificate Review, External Income Review, etc. | Task categorization | Per OLIMS task types |

## Outstanding Items [TBC]

| Item | Impact | Owner | Status |
|---|---|---|---|
| Data lake/cube platform architecture (SAP Analytics Cloud, Azure Data Lake, etc.) | Defines extraction tool and approach | [TBC] IT/Analytics | Technology selection pending |
| ETL tool selection and configuration | Implements automated daily/weekly extracts | [TBC] IT/Analytics | Confirm tool (SAP Data Services, Talend, custom) |
| Data retention policy (historical archive strategy) | Balances storage cost vs. analysis needs | [TBC] IT/Business | Define retention period (e.g., 7 years) and archive approach |
| Change data capture mechanism (timestamps, change logs, etc.) | Enables efficient incremental loads | [TBC] OLIMS/SAP design | Confirm available CDC methods in source systems |
| Data dictionary and metadata documentation | Supports user understanding of data | [TBC] Analytics/Business Analyst | Create comprehensive documentation for business users |
| Data governance and access controls | Protects sensitive information (employee, medical) | [TBC] IT Security/Privacy | Define role-based access and PII handling |
| Integration with external systems (HSWC, icare, TAL) | Enables scheme-wide reporting capability | [TBC] IT/Analytics | Confirm integration touchpoints and data exchange formats |
| Performance baselines and SLA (query response times) | Ensures usability for ad-hoc analysis | [TBC] Analytics/IT | Define acceptable query performance (e.g., < 5 sec for standard reports) |

## Open Questions (Business)

| Question | Related Req(s) | Why it matters |
|---|---|---|
| What BI/analytics tools will business users access the data lake with (Power BI, Tableau, SAP Analytics Cloud, etc.)? | RPA001 | Guides data model design and extraction format |
| Should the data lake support ad-hoc SQL queries, or only pre-built semantic layers/cubes? | RPA001 | Affects flexibility vs. control |
| What is the refresh frequency requirement (daily, weekly, real-time)? | RPA001 | Impacts ETL architecture and resource needs |
| How far back should historical data be retained (3 years, 7 years, perpetual)? | RPA001 | Affects storage sizing and archive strategy |
| Should external data (TAL, HSWC, icare) be included in the extraction, or just internal SAP systems? | RPA001 | Clarifies scope of data integration |
| What level of data governance and access control is needed (department-level, role-based, PII masking)? | RPA001 | Affects security architecture and implementation complexity |
| Should the data lake support real-time/streaming analytics or batch-only extracts? | RPA001 | Guides technology selection |

## Report Column Sequence

**Not applicable.** RPA is a data extraction/ETL capability, not a traditional report. The "report" consists of:

1. **Core OLIMS Tables (extracted daily/weekly):**
   - Incidents, Claims, Certificates, External Earnings, Forecasts, Tasks, Documents, Notes

2. **HR Master Tables (extracted daily/weekly):**
   - Employee master, Salary, Leave balances, Super fund records

3. **Payroll Transaction Tables (extracted daily/weekly):**
   - IT0014 (wage records), IT0015 (other income), payment history

**Output Format:** Data stored in cloud data lake/cube (SAP Analytics Cloud, Azure, etc.), accessible via:
- SQL queries (for technical analysts)
- Pre-built BI semantic layers/cubes (for business users)
- Self-service reporting tools (Power BI, Tableau, SAP Analytics Cloud)
- API access (for external systems and custom integrations)

**Data Model:** Dimensional/fact table model with:
- **Dimension Tables:** Employee, Incident, Claim, Certificate, Task, Document, Date
- **Fact Tables:** Payment transactions, External earnings, Forecasts, Task completions
- **Change History:** Timestamps and audit trails for all updates

**Notes:**
- RPA001 is foundational: enables business users to create their own reports without requiring individual specification
- Supports scheme-wide reporting to HSWC (per SR requirement)
- Facilitates integration with icare recoup and external analytics
- Requires comprehensive data governance and security controls given sensitive health/personal data

## Notes
- Use `docs/reports/SAP_Fields.md` to map fields and record any TBCs.
- Follow the Generic Report Specification Process in `docs/brd.md`.

