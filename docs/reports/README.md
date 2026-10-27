# Reporting requirements

Source: `brd.md` (Deployment Three → Operational Reporting).

## Reports List

- [RPA — Data extraction](RPA-data-extraction.md)
- [RPB — EPSS On Duty Claim Report](RPB-epss-on-duty-claim-report.md)
- [RPC — EPSS Down Grade Report](RPC-epss-down-grade-report.md)
- [RPD — Date of Disablement misalignment](RPD-date-of-disablement-misalignment.md)
- [RPE — Detailed EPSS Payment Report](RPE-detailed-epss-payment-report.md)
- [RPF — Period 1 utilisation summary](RPF-period-1-utilisation-summary.md)
- [RPG — EPSS Outbound Leave Report](RPG-epss-outbound-leave-report.md)
- [RPH — OLIMS Reminders / To Do List Overview Report](RPH-olims-reminders-to-do-list-overview-report.md)
- [RPI — EPSS Pay Simulation Report](RPI-epss-pay-simulation-report.md)
- [RPJ — EPSS Period 2 – PID greater than 7 days](RPJ-epss-period-2-pid-greater-than-7-days.md)
- [RPK — EPSS forecast estimates – summary](RPK-epss-forecast-estimates-summary.md)
- [RPL — EPSS forecast estimates – detailed](RPL-epss-forecast-estimates-detailed.md)
- [RPM — Request for Review](RPM-request-for-review.md)
- [RPN — External Income and Payments](RPN-external-income-and-payments.md)
- [RPO — EPSS salary rate overrides](RPO-epss-salary-rate-overrides.md)
- [RPP — Document Overview](RPP-document-overview.md)
- [RPQ — Off Duty Claims](RPQ-off-duty-claims.md)
- [RPR — Pay-run QA Report – "Not approved to pay" flags](RPR-pay-run-qa-not-approved-flags.md)
- [SR — EPSS scheme reporting (HSWC)](SR-epss-scheme-reporting-hswc.md)

---

## Generic Report Specification Process

**Purpose:** Standardized process for documenting functional specifications for all EPSS reports.

**Use this process for every report:**

### Step 1: Extract from BRD

1. Open `/home/theo/Documents/docs/brd.md`
2. Search for the report code (e.g., `RPB`, `RPC`, `RPE`)
3. Copy all requirements for that report
4. Create or update `[REPORT_CODE]-[report-name].md`

**File each report in:** `docs/reports/[REPORT_CODE]-[report-name].md`

---

### Step 2: Map Requirements to SAP Fields

1. Open `/home/theo/Documents/docs/reports/SAP_Fields.md`
2. For EACH requirement, identify:
   - **What data is needed** (business concept)
   - **Which SAP tables** contain it
   - **Which fields** to use
   - **Data type & length**

3. Create section: `## SAP Field Mappings` in report file

**Document as simple table:**
```
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| [name] | [table] | [field] | [type] | [#] | [text] |
```

---

### Step 3: Identify Selection Criteria & Filters

For EACH requirement that mentions "select", "filter", "criteria":

1. **What can be filtered?** (employee, date range, status, type)
2. **What are the filter options?** (All, Active, Closed, etc.)
3. **Which SAP field drives the filter?** (flag, status code, date)

**Document as:**

| Filter Name | Control Type | Options | SAP Source | SAP Field |
|---|---|---|---|---|
| [name] | [radio/dropdown/checkbox] | [list] | [table] | [field] |

---

### Step 4: Identify Calculated Fields

For EACH requirement that mentions:
- "Calculate"
- "Percentage"
- "Total"
- "Remaining"
- "Difference"
- "Derived"

1. **What is the business logic?** (formula in plain English)
2. **What source data is needed?** (SAP fields)
3. **What is the output?** (number, date, flag, text)

**Document as:**

| Calculated Field | Business Logic | Source Fields | Output Type |
|---|---|---|---|
| [name] | [description of calculation] | [table.field, table.field] | [type] |

---

### Step 5: Document Data Relationships

Identify how to link data:

1. **Primary Keys** - What uniquely identifies each row?
   - Usually: Employee + Incident + optional date ranges

2. **Joins** - How do tables connect?
   - Most tables join on: PERNR (employee) + INCIDENT (incident)
   - Some have date ranges: DATE_FROM, DATE_TO (use current period)

3. **Selection Logic** - How to get the RIGHT record?
   - Latest? Use MAX(date) or ROW_NUMBER
   - Active? Filter by date ranges or status flags
   - Current? Filter by DATE_FROM ≤ today ≤ DATE_TO

**Document as:**

| Table | Primary Keys | Join To | Link Fields | Selection Logic |
|---|---|---|---|---|
| [name] | [keys] | [other tables] | [PERNR=PERNR, INCIDENT=INCIDENT] | [latest/active/current] |

---

### Step 6: Document Lookups & Codes

Any field that shows a CODE that needs human-readable TEXT:

1. **What field contains the code?** (DUTY_DET, STATUS, etc.)
2. **What are the possible values?** (O=On Duty, F=Off Duty)
3. **Where is the lookup?** (SAP table, business rule document)

**Document as:**

| Field | Code | Meaning |
|---|---|---|
| DUTY_DET | O | On Duty |
| DUTY_DET | F | Off Duty |

---

### Step 7: Flag Outstanding Items [TBC]

For ANYTHING you can't find or clarify:

1. **What's missing?** (field, table, business logic)
2. **Why is it needed?** (which requirement)
3. **Who needs to clarify?** (HSWC, PCC, HR, Technical)
4. **What's the impact?** (MUST/SHOULD/COULD)

**Document as:**

| Outstanding Item | Impact | Priority | Owner | Status |
|---|---|---|---|---|
| [description] | [which requirement] | [MUST/SHOULD/COULD] | [person/team] | [TBC] |

---

### Step 8: Define Column Sequence

**Document final report output:**

1. **List every column** in the order it will appear
2. **For each column, note:**
   - Which SAP table it comes from
   - Which field
   - Whether it's calculated or direct
   - Formatting rules (if any)

**Document as:**

| # | Column Name | Source | Type | Notes |
|---|---|---|---|---|
| 1 | Employee Number | ZIMLTRVAR1.PERNR | Direct | |
| 2 | Name | ZIMLTRVAR1.VORNA + NACHN | Concatenated | First, Last |

---

## Generic Report Template

Copy this to create a new report spec:

```markdown
<!-- Auto-extracted from brd.md on [DATE] -->
<!-- Requirement prefix: [RP_] -->

# [Report Full Name]

## Business Purpose
[Why does this report exist? Who uses it? What business problem does it solve?]

## Key Metrics/Columns
[What is the main data being reported? What decisions does it inform?]

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| [RP]001 | [requirement from BRD] | [M/S/C] |

## SAP Field Mappings

### [Section Name - e.g., "Employee Information"]
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|
| [name] | [table] | [field] | [type] | [#] | [description] |

### [Section Name]
| Report Column | SAP Table | SAP Field | Type | Length | Description |
|---|---|---|---|---|---|

## Selection Criteria & Filters

| Filter | Type | Options | SAP Source |
|---|---|---|---|
| [name] | [radio/dropdown] | [All, Active, ...] | [TABLE.FIELD] |

## Data Relationships

| Table | Primary Keys | Join Logic | Selection Logic |
|---|---|---|---|
| [name] | [keys] | [PERNR, INCIDENT] | [latest/active/current] |

## Calculated Fields

| Field | Formula | Source Fields |
|---|---|---|
| [name] | [business logic] | [sources] |

## Lookups & Code Translations

| Field | Code | Meaning |
|---|---|---|
| [name] | [code] | [meaning] |

## Outstanding Items [TBC]

| Item | Impact | Owner |
|---|---|---|
| [description] | [requirement] | [team] |

## Report Column Sequence

| # | Column | Source | Type |
|---|---|---|---|
| 1 | [name] | [TABLE.FIELD] | [type] |

## Notes

- [Any important rules, exceptions, or dependencies]
```

---

## Workflow for Processing All Reports

**For each of the 19 reports:**

1. ✅ **Read BRD** → Find all requirements for that RP code
2. ✅ **Create/Update** → Report markdown file in docs/reports/
3. ✅ **Map Fields** → SAP_Fields.md → SAP tables & fields
4. ✅ **Document Filters** → Selection criteria & business logic
5. ✅ **Identify Calcs** → Any derived/calculated columns
6. ✅ **Flag TBCs** → Record anything unclear
7. ✅ **Define Sequence** → Final column order
8. ✅ **Review** → Ensure traceability (every requirement → data source)

**Time per report:** ~30-45 minutes once you have the template

**Total effort:** ~10-12 hours for all 19 reports

---

## Document Status & Governance

- **RPB-epss-on-duty-claim-report.md** ✅ Completed (example template)
- **RPB-instructions.md** ✅ Generic functional spec template
- **Remaining 18 reports** → Ready for processing

**Next steps:** Follow process above for each remaining report.
