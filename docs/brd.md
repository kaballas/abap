## Acronyms

| **Term** | **Meaning** |
| --- | --- |
| 1P | Prefix to represent Period 1 in Business Requirements section |
| 2P | Prefix to represent Period 2 in Business Requirements section |
| 3P | Prefix to represent Period 3 in Business Requirements section |
| adjs | Adjustments |
| BRD | Business Requirements Document |
| CE | Prefix to represent Contributions and Expense Model in Business Requirements section |
| CEEP | Catastrophic Exceptional Extension Payment |
| CR | Prefix to represent Change Request in Business Requirements section |
| DE | Prefix to represent Defects in Business Requirements section |
| DEB | Prefix to represent BluePortal related Defects in Business Requirements section |
| DMND | Demand (BluePortal process to submit an enhancement) |
| DO | Prefix to represent Detached Officers in Business Requirements section |
| DOD | Date of Disablement |
| DOI | Date of incident |
| EML | Employers Mutual Limited (WC insurer) |
| EPSS | Enhanced Police Support Scheme |
| FABS | Finance and Business Services |
| FICO | Financial Accounting and Controlling |
| HR | Human Resources |
| HRTS | HR Transactional Services |
| HSWC | Health Safety and Wellbeing Command |
| icare | Insurance and Care NSW |
| ICT | Information and Communication Technology |
| IP | Income Protection |
| IT | InfoType |
| KPI | Key Performance Indicator |
| NSWPF | NSW Police Force |
| OL | Prefix to represent OLIMS in Business Requirements section |
| OLIMS | Online Injury Management System |
| ORG | Organisation |
| ORP | Ordinary Rate of Pay |
| PAC | Police Area Command |
| PANSW | Police Association of New South Wales |
| PAYE | Pay As You Earn |
| PBRI | Police Blue Ribbon Insurance |
| PCC | People & Capability Command |
| PD | Police District |
| PID | Pre-Injury Duties |
| PPR | Parallel Pay Run |
| PT | Prefix to represent Part Time Employees in Business Requirements section |
| RP | Prefix to represent Reporting in Business Requirements section |
| RTD | Returned |
| RTW | Return to Work |
| SAP | Enterprise resource planning software used by NSWPF |
| SEAK | Student Employment Application Kit |
| SIT | System Integration Testing |
| SLA | Service Level Agreement |
| SS | Shared Services |
| TAL | TAL Life Limited – Insurer (Off Duty Injury/Illness, Death and Terminal Illness Cover) |
| TBC | To be confirmed |
| TCSC | Technology & Communication Services Command |
| TPD | Total and Permanent Disablement |
| TR | Prefix to represent PBRI Transitional in Business Requirements section |
| UAT | User Acceptance Testing |
| WC | Workers Compensation |
| WCCC | Workers Compensation Certificate of Currency |
| WID | Work Injury Damages |
| WT | Wagetype |

# **Introduction**

## Purpose

The purpose of this document is to outline the business requirements for the EPSS Phase 5 scope of works. This will also include items scoped or raised during the Phase 4 discovery sessions that have been deferred from the previous phases of the SAP EPSS project and new change requests from recent decisions and a pending regulation remake on the definition of ordinary rate of pay for Period 1 supplementary support payments.

Period 1: Ordinary Rate of Pay and allowances	Heading only			
Period 1: Ordinary Rate of Pay and allowances	1PA001	"The definition of “Ordinary Rate of Pay” (ORP) to include position based allowances (TBC).

The following allowances from InfoType 0008 – Basic Pay to be included:
•	To be provided by HSWC and PCC 

The following allowances from InfoType 0008 – Basic Pay to be excluded:
•	To be provided by HSWC and PCC "	M	"1. SM Assume the requirement is only to expand on the wage types to be included as ORP and is IT8 related only. (It is not referring to HD)? TBC PCC Health and safety, please fill the worksheet 'ORP WT list'.  04/02/2026 Matt The list is available and the FULL list will be updated in the new version of the BRD. The ORP WT list worksheet will be updated by Matt to align with the BRD.

2. SM Assume if the employee have an allowance listed in IT8, then we need to include it. That means we have 'no' position checking requirements. Answer: Any position based allowances will be from IT8, not an interpretation from HD infotypes
3. SM The list of allowances are outstanding. See worksheet 'ORP WT list' for 'existing' WT adding into ORP. Please mark WT's to be removed from ORP; add new WT to be included in ORP and mark them as new please. Noted, we expect the ORP WT to reside in IT8.   Summary of item 1 and 2.
4 SM noted the IT8 values are as per the increased pay scale values which might not show in IT8 unless you have a effective record on the increase date.
5.SM 06/02/2026 @Matt Please revise to exclude Wt provided as ORP that is not from basic pay. Eg. the below are from IT2010 (marked in ORP WT list):
2270	Casual Flying Allce Cat A
2271	Casual Flying Allce Cat B 
6.SM 06/02/2026 @Matt Please acknowledge:  IT8 WT's provided as ORP that does not have 'defaults' against any pay scales, will only be included if the values were manually entered in IT8.(marked in ORP WT list)"
Period 1: Ordinary Rate of Pay and allowances	1PA002	The effective date of this change is 1 October 2025  	M	"1. SM The ORP wage type effective date was 27.09.2024 historically. Is there a typo in the requirement of 1.10.2025 or is 2025 correct? DK, tbc the effective date (based on the  date the Police regulation 2025 was approved, expect 12.12.2025, but tbc). 19/1/26 Nic O - effective date is confirmed as 12.12.25.  Pay  8 2025 commences on 29.09.2025.  can the effective be 29.09.2025, otherwise a split will need to be enforced for all the EPSS P1 employees on 1 oct 2025. eg using It27.   If the meaning was to ask for retro to 1.10.2024, then it will be best we set the effective date to 27.9.2024 instead of 1.10.2024?  If 1.10.2024, do we need to undo old settings for ORP inclusions from 27.9 to 30.9.2024?   (if nobody is P1 from 27.9 to 30.9, then this period should not have an effect).  
2. SM Please acknowledge the retro active effect (changes in p1 earnings that could imply higher or lesser(claims) for  P1 payments, payslip retro change displays, and a business requirement to force retro P1 employees to the retrospective effective date chosen). 
3. JV - Have we made manual payments from 2024 up to Oct 2025 and if yes are we able to differentiate it with the other manual payments we have done? Answer: SS wil  review manual adjustments prior to P4 for correctness. ORP should be correct from P4 onwards. 
 "
Period 1: Ordinary Rate of Pay and allowances	1PA003	To future proof any unforeseen changes in ORP, the EPSS Claims Officer requires an override feature to amend the OLIMS ORP values; both the initial value and any subsequent values due to increases in pay or rank during eligibility of Period 1 payments.	M	"1. SM Assumption is the change is driven from OLIMS by the claims officer and that it is for a defined period (start/end date)? If so, Is there a requirement listed for OLIMS screens?; do we have IT14 intefaces from OLIMS or is that a brand new screen design to be linked to the EPSS claim number/to be discussed?   OR Can the override be a process where SS enter it in IT0014 via PA30?
2. SM Assumption is the change effective date and end date is to cause a payroll split. 
3. SM Warning: Manual overrides are static and while in place will not reflect retroactive changes of defined ORP wage types, eg. retro pay rises or addition/removal of ORP defined wage types will not be reflected in the static override values.  A business process is required to review manual overrides to accomodate. 
4. SM What is an example when the ORP will be wrong? The recommendation is to to fix the system issues identified instead.
DK  19/01/2026 THis  requirement is parked/removed"
Period 1: Ordinary Rate of Pay and allowances	1PA004	A new wagetype to be created to back pay any eligible officers for an ex-gratia payment	M	"1. SM Please provide all the WT characteristics as for other new wage types, eg. Description, Data entry infotype,  Tax method, payslip display, STP2, finance posting, other relevance, etc. Matt : Provide WT maintenance form
2. SM What is the business processes for data entry workflows? Will SS do the entry on requirst directily in SAP, eg. transaction PA30?  DK: SS will enter in SAP, PA30
3. JV - What is the purpose of the ex gratia payment and how does this affect the current EPSS calculation? DK One time payment when some people get the benefit for the new WT included in the ORP. DK to confirm if the ex gratio is to be seen as the $1 payment for week counting and if so then entry will need to align to weeks for this check.   30/01/2026 DK  Ex gratia is NOT part of EPSS at all. It is standalone and a new WT 
4. SM  Ex gratia sounds termination related. Is this termination related and if so, provide the termination rules.  DK & Aruna. it is not terminated related. It is just a one of payment.
5. SM How do the business decide what the ex gratia will be, noted, what if the employee already had higher earnings in a week vs the ORP (of which the ORP is then including the extra WT's?) TBC DK  30/01/2026 DK Confirm the ex gratia is not part of EPSS - it is a standalone manual process loaded againt a new Ex gratia once of WT.
19.1.26 Nic O - updated advice from WRR confirms the ex gratia payment is not one standard payment to impacted employees and is required to be calculated per person. It is just processing a payment in advance of when the approval of legislation was given.   20/01 SM Propose a desktop study for the highest value payable and set go live 24/9/2024, tbc.   30/01/2026 Emma Confirm the ex gratia value is not relevant to the P5 build - it is a value decided outside but the business"
Payment and Claim Management for Detached Officers	Heading only			
Payment and Claim Management for Detached Officers	DOA001	"Where a police officer exits the organisation on medical grounds (via s81E/s94B of the Police Act 1990 process), the former officer (detached officer) may continue to receive EPSS benefits whilst they remain eligible. The EPSS claim in OLIMS for the detached officer is to ‘remain open’ for the EPSS claims officer to continue claim administration activities, enter offsets and continue utilising OLIMS to calculate and pay benefits.

Scoped by Deloitte during Phase 4. Refer:
BRD4_Phase 4_Requirements Notes.xlsx"	M	"1. JV - Is there a specific identifier in the termination status of the employees that determines if they exited on medical grounds? If there is no specific identifiers i.e Action Reason for the specific termination, what will be the new action reason identifier?
2. JV - Assume that employees are to be paid EPSS P1 and P2 only and continuously be taxed in the payroll driver for these cohorts? Is the assumption correct?
3. JV - Do you expect an automation of the payroll status of the employee so terminated employees under the above cohort are continuosuly paid even if they are terminated in the system?

1. AZ will the detached officer have a new employee number in this scenario? If yes, assumption is to keep the old number in OLIMS and pull the new number from communications (0105) subtype FREM (TBC in design)  23/01/2026 DK Yes, this is correct.
The ESG and employee number range is also used to acknowledge the FREM (IT0105) as a detached. Tbc if we use FREM or something else during design.  Also see DOA004.

22/01/2026 Darryl: Incident can not be created in OLIMS after termination , employee needs to be active. (OK,we will not need a 'new' incident to be created 'effective' (with dod), after termination. All new incidents after termination, will have a dod in the period where the initial employee number was active. This is unlikely but the detached officer could file a claim from back when he was active originally)  Unsure if old incidents can be updated for dates pre-termination.  Unsure if certificate P905 can have entries for dates after termination, but noted, the push to 9WCO needs to be to the new Employee number/check a new # exist to  push 9WCO out to before accepting the certificate.  DK 04/02/2026 A claim must be entered in the system WHILE the employee is attached. If he terminated, then he can not enter an EPSS claim anymore, also not dated when he used to be attached.  Once detached there is no eligibility for a new claim under EPSS regardless of the date of injury - if a claim has not been lodged prior to the termination for the same date of injury. "
Payment and Claim Management for Detached Officers	DOA002	"Where a police officer was in receipt of EPSS benefits for a compensable injury and suffers a downgrade following cessation of their appointment as a police officer and the nominated insurer determines weekly benefits are payable under the accepted NSWPF claim, then subject to the EPSS eligibility criteria, EPSS benefits may be resumed by NSWPF. The EPSS claim in OLIMS for the detached officer is to be ‘reopened’ for the detached officer for the EPSS claims officer to complete claim administration activities, enter offsets and utilising OLIMS to calculate and pay benefits.

Scoped by Deloitte during Phase 4. Refer:
BRD4_Phase 4_Requirements Notes.xlsx"	M	"1. AZ Is ""reopened"" a new claim status which needs to be created for this requirement or will the EPSS claims officer move status to one of the already OLIMS existing statuses?Existing statuses are:

Pending
Claim Pack Sent
Lodged with Aware
Lodged with Aware no ADS
Received by TAL
Lodged/Admitted
Declined
Finalised/End of Matter
Monitor
Closed
Period 1-39 weeks
Period 2 – 7 year benefit
Period 3 – 2 year CEEP
Off duty – claim pack sent
Off duty – claim lodged
Off Duty – claim accepted
Off duty – claim declined
23/01/2026  DK THis is a new status ""Reopen"" and it will be used against the old number for the relevant existing claim/incident.  ""Reopen"" is not for a brand new incident that came to light late.  @Andre please check if the status is of importance for pushing 9WCO to payroll.
Note: Reopen and subsequent set to primary/med certificates backdated to the time when the officer was active, implies EPSS payments backdated against the old number. 
Additional requirement to be discussed: Substatus options, eg keep P1/2/3 statusses separate within the other statusses. 03/02/26 MJ: placeholder in the BRD, workshop internally to understand the nature of the requirement and the details."
Payment and Claim Management for Detached Officers	DOA002 Additional req			Additional requirement to be discussed: Substatus options, eg keep P1/2/3 statusses separate within the other statusses.   03/02/26 MJ: placeholder in the BRD, workshop internally to understand the nature of the requirement and the details.
Payment and Claim Management for Detached Officers	DOA003	For detached officers eligible for EPSS payments, will need to be rehired as a non-employee to enable OLIMS case management and payments through payroll	M	"1.SM Assumption business processes will be put in place to facilate the action. 
Noted the expectation is a new hire as non-employee, not rehire of the old employee.  ( TBC during design)  23/01/2026 DK Agree, detached is hired, not the old number that is rehired"
Payment and Claim Management for Detached Officers	DOA004	The non-employee EPSS hire will not require access to SAP, NSWPF email account, downstream NSWPF systems and directories. 	M	1. SM What do NSWPf SAP support/technical need to know/how to define, when not to provide these attributes and facilities to the employee?  23/01/2026 Josh ESG will suffice to exclude employees from downstream systems, eg currently "XV" is exlcuded. Preference is to utilise "XV".  DK :XV is currently paid manually but will benefit from been auto paid with the same rules as for the detached requirement in the BRD.   If we use XV then we need to look at data conversion/effective dating of auto payment. Currently XV is used by PBRI employees 3000 series and 3100 for EPSS (manual employee number assignment).  The transition from pBRI to EPSS will never occur for a detached employee. He will remain either EPSS or PBRI.   PBRI detached (3000 range) remains manual, only the EPSS detached (currently 3100 range) is to be looked at for EPSS automation.
Payment and Claim Management for Detached Officers	DOA005	A new employee number range will be required i.e. 5000xxxx series	M	1. SM Assumption the number will be manually assigned in the new range, eg.'05' then the original employee number (allowing 6 numbers for the original employee #)? 23/01/2026 DK The preference is to have the numbers assigned automatically in sequential order. If this require an unique number range. eg 5000, then that is the preference to use instead of 3100 range manually entered as per DOA004 discussions.   Flexible to use XV with manual assinged numbers if the the auto number assignment is too costly. Need assurance that PBRI remains manual and only EPSS employees are automated as per the detached requirements.
Payment and Claim Management for Detached Officers	DOA006	The PA40 hire action to assign the new employee number, can this be a combination of the new series and the officer’s registered number eg. 500015682.	C	"1. SM The number will be manually assigned in the new range, eg.'05' then the original employee number (allowing 6 numbers for the original employee #). Is 6 numbers enough?  23/01/2026 Aruna: Police active employees have only 6 characters in the number / rego.  DK: This is not a must have as long as we can identify PBRI vs EPSS employees in SAP (identification outside OLIMS). 
2. JV - The maximum characters allowable or personnel number is 8 characters. Please consider this when decidig on creating a prefix for the employee, the example given has 9 characters.DK 23/01/2026  agree 8 is the max numbers, noted the first character is not used at Police, giving only 7 characters for the number  DK 23/01/2026 11:17am Confirm the same ESG using number range 3100 for epss detached is acceptable provided system setup sees them as EPSS detached.  
3. SM Please confirm how many employees are in 'undefined' series, eg 6000 7000 etc.   Josh 03/02/2026 Confirming there are employees in the ‘undefined’ series. Problem is, they are sporadic because the year the employee was hired was originally used to determine the employee number… Ie. Someone hired in 1960 would have an employee number with prefix 60.
6000 series – 303 employees
7000 series - 1,151 employees
We thought to use the 31 series as there were no employees in the range 3100000 – 3199999.
03/02/2026 SM Tbc Josh:  I assume from your mail we have people in the ranges commencing with 06 and 07.  In DB1, has any numbers been used in the ranges commencing with 05, 08 or  09?
05/02/2026 As per e-mail from Josh: Correct, we have people in ranges commencing with 05, 06, 07, 08 and 09.

Shared Services agreed to use range 03100000 – 03199999 for EPSS detached"
Payment and Claim Management for Detached Officers	DOA007	A new non-employee position and employee sub group to be created and the description named as “EPSS On Duty Detached” to differentiate from the current PBRI solution	M	1. JV - What are the specific behaviours required for the new subgroup. Note there are several automatios associated with creatig a new subgroup (refer to previous projects we did) which we might have to do when creating new subgroup unless there is a specific subgroup we can use as reference. 23/01/2026 DK Acknowledge that a new ESG impact downstream and is a big implementation/costly, a lot of stakeholders and implementation teams.
Payment and Claim Management for Detached Officers	DOA008	"A PA40 – Hire Action will be needed to rehire terminated police officers eligible for ongoing EPSS payments.
The Hire Action used for PBRI Income Protection (ZM) to be a baseline of the infotypes required to be updated; Personal Data, Addresses, Communications, Tax File Number, Planned Working Time, Bank Account"	M	1. JV - Is the hiring action going to be done through SAP directly? I believe there is an ESS functionality that technical team maintains to create the sequence of infotypes, should the ESS also be configured or do we plan to hire the employees in SAP directly?  23/01/2026 Aruna Hire is via PA40 in SAP. DK A program for hire will also be acceptable if auto number defaults can be accommodated. 
Payment and Claim Management for Detached Officers	DOA009	The non-employee rehire must have a link to the police officer’s active registered number to allow ongoing case management in OLIMS of the existing incidents and the ability to view historical information	M	1. SM Business process required to save the prior employee number as a former employee number in the communications IT0105 subtype FREM.  (TBC in design)
Payment and Claim Management for Detached Officers	DOA010	The IT008 basic pay record to default to the police officers last active IT008 record and capacity utilisation (full time or part time)	M	"
1. SM  if the old terminated employee already proceeded to P2, are we sure we still want to use the last active IT8 salary for the new detached employee?  Should the starting salary then not be the last P1 salary plus CPI's applied until termination, then CPI is applied further against th new detached officer for future pay runs? 23/01/2026 DK  P2 salary has the same calculation as when the employee was attached. This means for detached, find the last salary when P1 ended against the attached employee and add CPI as per normal (It is as if the employee is continous from attached to detached). They must have been admitted into the EPSS scheme while attached to be allowed EPSS as a detached.   The 7 year count countinues as per the old number, hence if  the detached is hired with a gap after the old number terminated, then the 7year clock continues to tick as per the old number P2 start regardless if there was a gap in employment; RTD entries will be used to extend the P2 end date based on PID assessments.   TBC Andre Can RTD be entered for an inactive employee, eg for dates after the original attached employee became inactive, and entered against the old number? AZ RTD records are stored in a custom table and there is no check for active/inative employees in RTD logic, so yes.  04/02/2026 DK Detached will not have RTD, hence the terminated employee is not expected to have RTD for dates after termination or for dates where hired as detached. Therefor any RTD in OLIMS against the terminated employee inactive dates are not required to extend the 7 year P2 count  against the detached employee.  Detached will not be rehired under the old number as a Police officer.  They could be rehired as Admin and admin does not have EPSS entitlement. Note a admin rehire will have a new employee number and therefor the FREM link is not applicable. Admin is not eligible for EPSS as they do not contribute to the EPSS scheme.
 
2. SM Assumption pending Q1; the last salary of the old terminated employee now drives the P1/P2/P3 salary for the detached officer (It remains static as per DOA012). The only change to the detached officers salary is CPI increases for p2 salary and in the event of a retro increase/change back to the last IT8 of the old terminated employee, then the detached officer P1/p2/P3 salary is impacted. 23/01/2026 DK Correct, noted as per prior point RTD can push the 7 year end date out as per normal processes (entered in OLIMS agains the old employee number)
3. SM FYI, The new detached officer employee group will not allow entry of ALL wage types in IT8 as relevant for multiple other Employee groups. The ORP/P2 salary is envisaged to be a manual process for entry against a new cumulative WT or a dynamic read back to the old terminated employees last active salary.  The design will confirm 23/01/2026 DK Tbc if the last active It8 of the old employee number (reduced with capacity util as at lst active date), is to be used ongoing as the P1 ORP for a detached officer (implying no pay rises to be added to ORP). 23/01/2026 13:05 DK confirm the detached officer will use the P1 ORP salary (if P1 is relevant for the detached), as per the last IT8 valid for the old attached employee number, this includes capacity util to be applied and other ORP calculations as defined at current.  This value have no future increases, it remains the P1 ORP for the duration of Period one (for the detached officer)
4. JV - The current system behavous is that the selection of salary is dynamic based on current salary of the employee in the payroll period. Do we need to keep the IT8 frozen for these types of employees and are we able to distinctly differentiate them? Is this only applicable to 5 series employees? 23/01/2026 THis requirement is only for EPSS detached that needs a method of unique identification.  DK to confirm as per prior question."
Payment and Claim Management for Detached Officers	DOA011	The Claims Officer to have the ability to override the IT008 basic pay record	M	"DK 23/01/2026 This requirement to override the detached basic pay details are now obsolete. THis is because we look at the records of the old employee and the old employee will receive pay rises and increments if they are effective for dates where the old number was also active.
Ignore below discussions:
1. SM Assumption is the claims officer do not have PA30 and IT0008 update access, only updates is via OLIMS using a batch user. What Infotypes updates from OLIMS to SAP at the moment, eg IT14 WT 9WCO?   23/01/2026 Josh EPSS case officers updates IT0014, but this is via OLIMS. Claims officer userid is against 9WCO in IT14.  They can access PA30. They can't update 9WCO due to restrictions. TBC Aruna/Security: What infotypes /WT's the EPSS claims officers can update in SAP. Eg IT15
2. SM Assumption the override here is meant for the detached officer? 23/01/2026 DK overwrite is not to be against the old number. it is for the new number
3. SM TBC if the override for the detached officer is intended as a once off to replace what the last active It8 of the terminated employee /or/ is start/end dates required and to what impact?  
4. JV - Is the override period based or should it impact the whole duration the employee is on EPSS payment?"
Payment and Claim Management for Detached Officers	DOA012	The detached officer will not be entitled to any future Award pay increases after their termination date.  They will only be entitled to any retrospective changes in salary during their employment as a police officer.	M	"1. SM Please be aware that the retro increases will NOT be paid via the detached officer. It will be paid via the terminated employee number.   Override of salary in DOA011 is now obsolete, as we read the salary from the original attached emloyee for application against the detached employee
2. JV - Note on the change in technical behaviour of P1/P2 salaries for detached officers as the current logic is based on looking at current payscale structure of the employee on T510 to determine 'salary' 23/01/2026 DK We look at salaries of the original attached officer, T510 salaries is not relevant for the detached employees basic pay
3. SM Business process required if not in place to retro detached as well when Police gets retro increases or increments. -DK/Matt to review business process"
Payment and Claim Management for Detached Officers	DOA013	"WC certificates will still be acquired by the officer once terminated and will be uploaded into OLIMS for case management activities only.  The upload of these WC certificate is not to generate any workers compensation payments.

NOTE: The terminated officers WC payments will not be paid by NSWPF and will be paid by the insurer EML directly

The only exception is for retrospective payments to be made to the officer during the period of employment as a police officer.  This is the existing business process of reprocessing the P905s to generate the backdated payment."	M	"1.SM Is there currently a blocker in OLIMS that does not allow upload of WC Certificates against a terminated employee that needs to be removed?. If so, provide restrictions for the removal (eg. only if the terminated employee exist as a former employee against an employee in the new Employee subgroup used by detached officers.)  23/01/2026 Darryl: A terminated employee can enter certificates for dates AFTER his termination date.
2.SM Is WC certificates generally loaded in advance or in retrospect relevant to the pay execution? (to consider business processes if the certificate was loaded in IT14 in advance and then the employee terminate after/or even retro terminations). 23/01/2026 DK generally certs are entered in advance and IT14 9WCO will also be created in advance.  Unsure if IT14 future records are removed when terminated and the It14  is valid post termination.  Josh advises P905 can be regenerated. Regeneration of P905 will be required once the detached employee was hired so we can get 9WCO in IT14 against the detached officer for payroll processing. (Implying the P905 creation of IT14 needs change to see if the certificate is generated for dates where a detached employee is active / and the attahed employee is inactive).
@DTT Design to confirm if the creation of IT14 during the detached officer active dates will not push the PAWE and WC stat rate to 9WCO, this is to stop WT 4901 for the detached officer.
3.SM Is there any business requirements/concerns if the WC certificate in OLIMS load in IT14 9WCO against either the terminated employee for periods when inactive vs against the detached employee (as per former employee number) pending who is active for which dates of the certicate, or  against both active and inactive employees.  (noted the design will reflect the outcome, this is just to allow the business to mention known issues/concerns).    27/01/2026 DK  No concerns as long as the inactive person is not paid while inactive.
4. SM Do WT 9WCO drive WC comp payments WT 4901 and for the new detached employee subgroup we need to block the creation of WT 4901 but keep the EPSS P1/2/3 payment generation?  27/01/2026 DK Correct
5. JV - In the current system behaviour, S37 and S36 week counting requires 4901 being present so week is counted. Also, from discussion previously, 4901 is required to pay EPSS payment for active employees, has this discussion point change?  DK 27/01/2026  Additional requirement: S36/37currently count only if 4901 exist, this needs to be enhaned to also check for the  detached external WC uploaded, because the detached will not have Wt 4901.  Noted, for additional requirement discussions still to have, the EPPS payment for detached needs to reflect the External WC instead of 4901 for all scenarios, eg. if approved to only pay EPSS if WT4901 exist, then also External WC is to be considered.
6. JV - For WC earnings upload, this is currently done using 9WCO and 4901 is generated using a complex calculation (PAWE, stat rate, etc), what will be the entry on this new WC earnings, is this the 4901 equivalent or the 9WCO equivalent? 27/01/2026 This is a new value and new WT provided by EML and the value will be provided as a weekly value, dated per week cycle."
Payment and Claim Management for Detached Officers	DOA013 Additional req			Additional requirement: S36/37currently count only if 4901 exist, this needs to be enhanced to also check for the  detached external WC uploaded, because the detached will not have Wt 4901.  Noted, for additional requirement discussions still to have, the EPPS payment for detached needs to reflect the External WC instead of 4901 for all scenarios, eg. if approved to only pay EPSS if WT4901 exist, then also External WC is to be considered.  03/02/2026 SM@Matt, please confirm this was added to the BRD, to be included?
Payment and Claim Management for Detached Officers	DOA014	Workers Compensation earnings from the insurer are to be uploaded as a file in OLIMS and create a Workers Compensation External Earnings wagetype in IT0015 to reduce the EPSS supplementary support payment	M	"1. SM Wt 4901 'Workers Compensation' is not allowed in IT15 at the moment. Do we have to upload WT 4901 /allow for IT15, or if this is a new WT, please provide the description and the characteristics. (noted a lot of development in SAP around WT 4901, therefor recommending a new WT). 27/01/2026 Matt to provide the WT maintenance form for the new WT
2. SM Is the requirement to upload two WT's when the insurer WC earnings are uploaded, one for payment and the other as the existing WT  3670 EPSS External Earnings /or/ is it aacceptable to adjust any existing business processes that might be impacted if we have a new WT for the Detached officer WC payments that is ALSO seen as external earnings for P1/2/3? DK 27/01/2026 We need a new separate WT for detached WC, this is not the same as external earnings.
3. SM is there an interface in OLIMS for IT15 load or is this new/need improvement? 27/01/2026 DK Use same area for OLIMS load as for external earnings.  WT number input will be important for the load/manual entries. 
4. JV - If employee is on s36 and s37, should this new external earning WC be read instead of 4901 to count weeks if there is no EPSS top up? - 27/01/2026 DK This is part of a new requirement that will be explained in a new version of the BRD.
5. JV - should the uploaded WC follow same behaviour of current WC and reduce top up? Assume yes but expecatation is 4901 equivalent instead of 9WCO equivalent. 27/01/2026 DK , Yes the new WC WT should also reduce the EPSS top up as how 4901 would have done it."
Payment and Claim Management for Detached Officers	DOA015	The EPSS Claims officer to have the ability in IT0015 to override the WC External Earnings for any retrospective changes or adjustment advice from the WC insurer	M	"1. SM  This implies retrospective payroll recalculation with payment changes in retrospect.  Assumption is the change is via OLIMS.  27/01/2026  DK Correct. Matt: SS maintain via PA30, not sure if EPSS claims officers can maintain via PA30, if needed that should be OK for Claims officers to maintain via PA30.   DK: Entries via PA30 and OLIMS are both to show in the OLIMS screen display for IT15 uploads. Update via PA30 will only have the SAP standard audit trail (not the OLIMS audit trail).   DK accepts that audit trails will need to be from the SAP and the OLIMS audit trail report (if required to find entries made). 
2 SM  Tbc if the employee number (with WC/incident) for detached will be that of the old attached or the new detached employee. Noted the export to SAP must be to the detached officer, and the WC external earnings should only be valid for the periods where the detached officer is valid.    DK 27/01/2026 EML will provide all the key identifiers for the WC external earnings, however the old attached employee number will be provided.   Validations are that the dates for the WC external earnings should not be outside the active period of the detached officer and the intention is to load the WC external earnings against the detached employee number.   No documentation will be uploaded against the WC external earnings.
3. SM Can the WC external earnings exist multiple times on a single day?   DK 27/01/2026 One WT for WC Ext earning may be entered on a day, not multiple. (Matt  to reflect this in the wage type maintenance form please) - MJ 28/01/26 - reflected in WT maintenance form
4. Aruna Payroll QA report required to check for duplications - to be actioned by SAP support and Matt (SS), not part of the report designs.  "
Payment and Claim Management for Detached Officers	DOA016	Detached officers will be eligible for indexation of Period 2 and Period 3 entitlements both the 75% of loaded salary and the maximum monthly benefit amount	M	1. JV - are the detached offices also eligible for the yearly salary increases based on their band level given the new salary solution from phase 4 is based on IT8 entries. Payscale and paygroup rates in T510 are increased yearly.
Detached Officers: EML workers compensation payment upload	Heading only			
Detached Officers: EML workers compensation payment upload	DOB001	"For detached officers hired under the new EPSS On Duty position, their Workers Compensation payments will be made by EML and not the NSWPF.
The current OLIMS certificate upload and P905 process must not calculate and pay workers compensation for EPSS detached officers."	M	"1. SM Please confirm the EPSS On Duty position detached officers are the same as discussed in 2.3.1 DK 27/01/2026 We are referring to detached when mentioning ' On Duty position detached'. Payroll can assume if the detached is hired, then he is eligible for EPSS payments as per med certificates WT 9WCO /existing EPSS rules.
"
Detached Officers: EML workers compensation payment upload	DOB002	EML will provide NSWPF a file of ‘weekly’ workers compensation payments they have made to the detached officer on a fortnightly (TBC) basis 	M	"1.NOTE: File format will be provided. If EML layout differ, then the file needs to be adjusted by the case officer before upload
2. SM The date the WC payment is dated will impact to which week in the fortnight it accounts to in relation to EPSS payment caluculations, eg weekly caps. Please confirm if the EML payments will be dated in the week it was paid but provided once a fortnight (that is potentially two entries per employee for the fortnight, one for each week as applicable).   27/01/2026 DK The EML values will be converted to weekly values and dated as such.
3. AZ What is the file extension? 27/02/2026  Neil Currently ensurer provides a excel file and the OLIMS officers then converts to CSV."
Detached Officers: EML workers compensation payment upload	DOB003	"The EPSS claims officer will need a facility in OLIMS to upload the EML WC payments that will:
1)	Update the corresponding OLIMS incident/claim
2)	Update the OLIMS EPSS external earnings tab
3)	Pass the information onto payroll to offset/reduce the calculated the EPSS benefit"	M	"1. SM What update is required against the OLIMS incident claim. Provide screen and fields impacted please.  27/01/2026 DK. Expect upload to be as per DOB004.  Expect the upload to be for all employees and WC claim/Incidents variations. Expect manual updates and displays of existing entries to be per employee/WC/incident and then to be driven from EPSS.The WC claim/incident needs to be selected before manual entry.   @DTT, then manual entry OLIMS backend table is is to include the employee, WC and the incident number as the key (as a minimum).  (Workers comp claim to be added to the OLIMS audit trail table). 
Mass load needs error reporting / show all was uploaded or errors on those not loaded.
Mass upload via batch user. Would like to be able to pull all entries by batch user in SAP IT0015 on a certain date.     Expect this to be a reporting option from the 'mass upload' tab (both for external and WC external WT's). 
2. SM Is the upload intended to be conducted via the OLIMS EPSS external earnings tab and is this tab new or existing?  Existing but not in use, to be enhanced
3. SM Noted, This is a payment that is also to reduce the EPSS payment as if an external earning.  DK28/01/2026 True, but deemed to be a relacement of Wt4901
4. DK 27/01/2026 Confirms that the WC external WT is to have the WC/Incident claim reflected in SAP. Payroll is only to deduct the WC external if the date it was entered on matches the WC certificate WT 9WCO WC/incident number.  This could mean that the entries for the WC external earnings needs to be set to inactive/re-entered to match WC certificates by the EPSS officer. Eg. sample trigger is if the primary claim changes in retrospect.
5 SM Assumption is that WC external WT does not need a repeat button/or should it be available as for normal external earnings, creating X times with the same amount with dates +7?  28/01/2026 DK No repeat button required for WC External, can keep repeat but will not be used.
6. SM Do we need to match the Section of the act (WT9WCO reason code) to the WC external section of the act/ do we keep the section in IT15 as well for WC external earnings, or is the match to the WC/incident number enough? Assumption is this is not required as we do not match sections of the act for other EPSS payment entitlements.  28/01/2026 DK No match of the Section for the WC external required, the only match is that of the employee number, WC & incident number.
7. SM Noted, the design will likely stop PA30 entry of items maintained from OLIMS  28/01/2026 DK Ok with the design as required for a clean reporting approach"
Detached Officers: EML workers compensation payment upload	DOB004	"EML Upload file at a minimum to contain the following information:
•	Claim Number
•	Incident Number
•	Employee Number
•	Period start date
•	Period end date
•	Payment date
•	Workers Compensation amount
•	Payment Classification Description (WC section/Capacity)
•	Capacity Status (No Capacity, Partial Capacity, PID)
•	Estimate of no of future weeks of payments
•	File Date"	M	"Note: This is the EML layout. The data is to be massaged before upload in OLIMS. If required EML layout will be changed to meet EPSS solution requirements.
1.SM Will the EML file contain the original or detached employee number? (do we need to convert/swap the number for upload)  28/01/2026 DK EML provides the original employee number
2. SM Assume payment date is the effective date of the WC payment. What is the intentional use of the period start/end  date?   28/01/2026  DK The period start/end dates are aligned with the NSWPf fortnight pay period dates. The value paid is that of the specified fortnight. The payment date is when EML paid the WC. This date needs to be changed as well as the value (WC amount) for the final upload in OLIMS to reflect the relevant pay week in the pay cycle.
3. SM  Please show where to load in OLIMS and explain the downstream use of the fields relative to the WC payment: classification description, capacity status, estimate of future weeks , file date   28/01/2026  DK The load is expected to be a new OLIMS screen or SAP transaction linked to an OLIMS screen - see existing EPSS folder upload screens for samples, best will be a new folder for 'EPSS uploads' with subfolders for EPSS uploads.  Ideal is the additional info not required by SAP calculations are to be stored per WC external value/per week, in OLIMS. This includes the items from 'Payment Classification Description to file date as provide EML.  The estimate weeks are also loaded per week entry (not fortnight). The estimate weeks and other non payroll items are just a tool for the case officer.   
TBC Darryl estimate weeks input requirement for reporting.  TBC Darryl  EML keep track of the section of the act,  capacity status, estimate future weeks. How does this impact the P905 generation to the detached officer if it is prescribed by EML, not auto generations as would be the case for an active employee?   04/02/2026 DK The medical cert will continue to follow the current P905 process where it is provided to NSWPf for creation in OLIMS - this process will for detached, enter the med cert against the old terminated number and integration is to push it out to the detached officer where the dates of the P905 med cert overlaps with dates where the detached officer is active. Design tbc, expected to request th WT9WCO to export without the stat rate and the PAWE/or with a fixed value tbc, eg $1. 

4. SM Can we assume the WC payments will align with the medical certificate, that is,  reduce as external earnings based on the effective date against whichever WC medical certificate is present on that date (if any)?  Noted, that is what currently happens with the existing WT 3670 'EPSS External Earnings'.  If that is OK, then SAP payroll, eg IT15, do not need to get the WC reason code, WC claim and incident, but please conisder if we need more granuality in SAP whether for reporting or to only reduce EPSS payments if aligned on the WC reason, WC and incident number.   28/01/2026 DK Discussed in a prior item, We need to match the EX/incident number for EPSS deductions.
5. SM NSWPf integration to ensure the lenght of fields align with the field lenghts where data is loaded. What is the EML intended field lenghts?  28/01/2026 DK Acknowledged.   Free text from EML is accepted.  Design length limits will cut remainder values off.  DK TBC the length required for free text fields.    04/12/2026 DK Please provide the maximum allowed.

"
Detached Officers: EML workers compensation payment upload	DOB005	The upload program to have a ‘test’ run facility that will check for any errors to be reviewed and corrected before updating master data.	M	"1. SM Is the batch user ok to update SAP, or is the case officer doing the uploads name to reflect as the person who created the WC entries (Potential Security impact)   28/01/2026 Aruna Batch uses BATCHHR as the user.
2. AZ What type of errors? Format and/or mandatory fields? 28/01/2026 Error if IT15 can't be created. eg. there is already and entry on the payment date for the employee/ employee locked etc. Error if there is no match from attached to detached. Error if the effective date /payment date is not on a date where the detached is active. 
"
Detached Officers: EML workers compensation payment upload	DOB006	The upload program to have an ‘upload’ facility to update the offset master data in IT0015.	M	"1. SM Do you mean create the data, not update?  28/01/2026, Matt, Update is implying a live run that will create the entries.
2. JV IT15 has limitations on data that is required for WC claims. Do we mean to upload in IT14 instead?   28/01/2026 DK Upload of the WC external is to IT15."
Detached Officers: EML workers compensation payment upload	DOB007	A report to be generated for both ‘test’ and ‘upload’ runs for the claims officer to reconcile any errors, successful / unsuccessful uploaded results. 	M	"1. SM is the report real time on execution or after the data test/upload? (tbc if staging tables are required)   28/01/2026 Design decision if direct update or via batch (detached officers are expected to grow).  Business would set processes to run test first.
2. SM NSWpf integation to work with NSWPf on the layout of the reports. Basic assumption is all the input to the load is to be provided in the output of the report and then the status with descriptions of errors, allowing filters for successfull vs errors.   28/01/2026 NSWP tech team to follow up"
Detached Officers: EML workers compensation payment upload	DOB008	The test and upload run report to be downloaded from SAP as a file for claim administrative and payment quality assurance activities.	M	"1.SM  Assume the download is not from SAP, but the output from the test/update report  as per DOB007  28/01/2026 Matt  The report is directly from the test/update integration report (not from SAP after the fact)
2.SM Is the download to a folder of choice entered by the officer, or predefined (where)?  28/01/2026 Matt: Choice where to download the report from the selection screen / providing the file name and location.
3.SM Is the filename decided by the officer/if not any business rules for the filename? 28/01/2026 Matt: Choice where to download the report from the selection screen / providing the file name and location.   
4.SM NSWPf  integartion/reporting to work with the business on the report download/any more questions?  TBC Darryl"
OLIMS: EPSS Off Duty Claim Management	Heading only			
OLIMS: EPSS Off Duty Claim Management	OLB001	"New EPSS Off Duty tab and logic in OLIMS.

Scoped by Deloitte during Phase 4. Refer:
BRD4_Phase 4_Requirements Notes.xlsx

"	M	"1.SM As per phase 4 we expect no impact to payroll. Please confirm this is still the case.  DK 29/01/2026 This does not impact payroll, only OLIMS data entry
2. SM Under Open items in the BRD 'TAL Off Duty Claim Forms' were mentioned. Please expound.  DK 29/01/2026 This is a form for upload in OLIMS as per OLB003 and the format is not finalised.  DK 04/02/2026 We need the functionality for form uploads; the format will be compiled by NSWPf business and the formats will not be recorded in the BRD.    Upload will be under the correspondence overview tab (initiated from the Claim package , send to employee tab that will be added to the EPSS  emp/members statement tab).
 "
OLIMS: EPSS Off Duty Claim Management	OLB002	"Case Details tab:
Introduce new fields based on the Duty Determination selection
•	Waiting Period Start Date = DOD
•	Waiting Period End Date = DOD + 59 calendar days
•	IP Start Date = Waiting Period End Date + 1
•	IP End Date = IP Start Date + 3 years (minus 1 day)
•	TAL Claim No
•	WC Claim Status
•	Date Closed
•	Closure Reason
•	Superannuation Fund
•	Move Employee Address to the Emp Details tab (nice to have)
•	Emp Details
"	C	"
These are new fields to be entered by the business while creating a NEW off duty claim . (Creation of off duty claims under EPSS is NEW. It exist under PBRI)  The request is when off duty is selected to be created to allow for the named fields to be avialble for data entry.  (that is when the 'duty determination' is off duty income). These fields to show (for entry) 'only' when off duty claim.   THis is more related to sick leave, it is not WC related and will not have medical certificates as does WC related on duty claims, also then no 9WCO or payroll impact for the off duty requirement.
A claim on the overview screen will be deemed EPSS if the dod is spaces/blank and the incident date is => 1.10.2024. In this case the IP case overview is not allowed, only the EPSS case overview will be allowed to branch to via the tabs.  Once on the EPSS case overview, when the determination field is set to off duty claim, then the below fields needs to be available for entry:
Below shows where the data is coming from:
•	Waiting Period Start Date = DOD :   Manual entry of date
•	Waiting Period End Date = DOD + 59 calendar days: Calculation 
•	IP Start Date = Waiting Period End Date + 1 : Calculation
•	IP End Date = IP Start Date + 3 years (minus 1 day) :Calculation   (adding full years, then minus 1 calendar day).  Allow for the calculation to be overriden.
•	TAL Claim No :   Aware/Tal  claim # : Manual entry
•	WC Claim Status :  Manual entry using existing /standard WC claim status options (open, close, reopen, pending case closure)
•	Date Closed :  Manual entry
•	Closure Reason : Manual entry as per existing drop down 
•	Superannuation Fund : Manual entry of existing field
•	Move Employee Address to the Emp Details tab (nice to have): This is general, not for off duty only.  Moving address details from EPSS case overview to emp details.   tbc system issues if only changed in EPSS case overview, then ignore requirement if not possible.
•	Emp Details   : This relates to the prior 'nice to have' requirement. If not possible to move to EPSS emp details tab, then leave this info under the EPSS case details tab.
 1. SM Just OLIMS display or what and how do the fields impact payroll calculations /functionality? Eg.Should any of the fields impact when EPSS commence / ORP or P2 salary relevance/weeks count/any section ?   No impact to payroll
2. SM How is the Superannuation fund field derived/options for manual entry?
3. SM What Empl details or is this free text?"
OLIMS: EPSS Off Duty Claim Management	OLB003	"Off Duty: Similar to the Emp/Members Statement tab for PBRI case management.
•	Remove Send to Aware/TAL button
•	Uploading the new TAL documents to existing button categories
•	Hide the Emp/Members Statement tab
"	M	"1. SM Is OLB003 the same the new New EPSS Off Duty tab as OLB001?
2. SM Is the new EPSS Off duty tab like the emp/members statement tab for PBRI but with the changes listed? Matt 29/01/2026 Correct
3. Navigate/screen shot of   emp/members statement tab for PBRI please. Please deposit in the link. Discussed in workshop - day8.  as per PBRI
4. Matt 29/01/2026 Change in requirement: Hide the Emp/Members Statement tab is to change to 'Hide Employers Statement tab'  New version of BRD to be updated. 29/01/26 MJ: BRD v0.16 updated during workshop
5. SM Upload file and other buttons copied from PBRI to EPSS will have the same selections as under PBRI.   29/01/2026 DK Agreed"
OLIMS: EPSS ON Duty Claim Management	Heading only			
Amending the Date of Disablement	Heading only			
Amending the Date of Disablement	DOD001	"As the technical solution for EPSS utilises the Date of Disablement to determine which scheme the police officer is in (EPSS or PBRI), the initial ordinary rate of pay and commencement of Period 1 benefits.  The DOD defaults to the status date of the first uploaded WorkCover Certificate.  Under the OLIMS PBRI case management solution, this field can be amended, however under EPSS this field is currently locked.

The business requires the ability to amend the Date of Disablement if initial default DOD record is incorrect. 

Examples could include:
•	The initial WCCC is a fit for Pre-Injury Duties and the next certificate uploaded is a total or partial incapacity certificate which is now the actual DOD to reference
•	The first WCCC is marked inactive and the second certificate is now to be utilised for the DOD
•	WCCC are not uploaded in date order
•	A late advice WCCC is uploaded with the status start date earlier than the initial first WCCC
NOTE: In the OLIMS PBRI Case Management module, there is a tab titled “Top-Up / Disab. Date / IP Dates” which allows claims officers to amend the DOD
"	M	"1. JV On the modification of the date of disablement, a likely retro and recalculation of weeks used will have to happen. Is shared services okay with this? (SM-Implying claims or additional payments as period 1 is starting on a different date, plus if dod is later, then retro is to be back to the original dod)
2. JV When the incident is already marked as EPSS due to DoD being entered after 1st of October, if DoD change is then changed to date before 1st of October, it will calculate under PBRI, there has to be likely manual changes done to this so transition to EPSS flag is unticked as well if it was already ticked previously.
3. JV Should original date of disabelement be kept in a change document log to track the changes of the date of disablement and its potential impact to the payroll top up calculations? Yes, See DOD0002.
4. SM if the DOD is changed to a later date then the weeks count table will be cleared for the employees incident, then gets rebuild from the new DOD onwards as payroll executes in retrospect back from the original DOD. This will likely cause the employee to enter P2 later and claw backs of P1 payments prior to the new DOD. Please acknowledge.
5. AZ When DOD is changed, what happens to any existing records in OLIMS (e.g External Earnings or Request for Review records) that are no longer valid as of new DOD? Business process  acknowledged. RTW duty entry that is outside the EPSS period 2 due to change in DOD, needs to be addressed, noting it can't add into P2 calculations if dates are valid during P1. The system currently only adds the RTW days that overlaps with p2 to the P2 end date. That is accepted.     Request: On change of DOD, give warning message that the employee EPSS records & payments needs to be reviewed due to the change in DOD.
6. AZ Changing the DOD means that week number table entries will need to be deleted causing retro and recalculation of weeks used. 
7. AZ Can the DOD be amended even after P1 period is exausted? If so, P2 dates wil change causing more retro and recalculation in payroll. Yes, Dod can change after all the P1 weeks were accounted for in payroll. Consider OLIMS screens showing P2 start date/actions to fix and align with the new dod."
Amending the Date of Disablement	DOD002	Changes to the DOD are to be recorded in a table showing the record type, date from, date to, active/inactive, display a document uploaded and the description.	M	"1 SM The fields in the 'table' will be as visible in the '“Top-Up / Disab. Date / IP Dates” OLIMS screen.   The document is the reason for the DOD change / expect mostly medical cert letter or liability doc from EML- this will show 'if' uploaded.
2. SM Matt advise the cert is  uploaded by the commands, not by SS, Not by the EPSS case officer.   There is an existing report that have subsequent BRD requirements for enhancement; this report indicates when the dod is incorrect. This report will be used by the EPSS case officer to amend the DOD as per the existing processes utilising the “Top-Up / Disab. Date / IP Dates” screen in OLIMS.   
"
Amending the Date of Disablement	DOD003	The Claims Officer to have the ability to display active records and display historical records.	M	"1. SM The inactive flag on the ''“Top-Up / Disab. Date / IP Dates” screen is utilised for this request.   This is existing.
"
Document Generation – generate and send EPSS letters and forms	Heading only			
Document Generation – generate and send EPSS letters and forms	OLA001	Ability to upload letter/form templates into OLIMS that will have both static text and fields that will be populated with SAP HR, payroll and OLIMS data.	M	"1. SM Is the 'populated' data as per OLA0008? If not, define please.
2. AZ Do we need to implement anything new for this requirement or is this an existing functionality already available in OLIMS? If not please provide layout, labels, etc  30/01/2026 Neil Injury management uses it
3. Where in OLIMS do you forsee this functionality? 30/01/2026  Send from the OLIMS correspondence section.   Theo: The exisiting NSWPf area for template maintenance will be used with a sub folder for OLIMS
4. SM Under outstanding items in the BRD, was listed 'EPSS On Duty Letters and Forms', Please provide. 30/01/2026 Matt The forms are still been worked on. Expect there are around 40 letters/forms"
Document Generation – generate and send EPSS letters and forms	OLA002	Ability of claims team to override data in the templates if required before generating the final letter.	M	1 AZ Do we need a new OLIMS screen/functionality from where the template can be override or is there an existing screen/functionality?  30/01/2026 Neil: The template do not need to be changed.  The template is owned by the EPSS business.  The claim team can change the word document/letter generated as per the template  before it is saved and send (this does not change the template though).  Envisaged DTT will only guide in the beginning and help if the fields to populate are new/unknown to the business (in setting up the templates).  Dtt to check if possilbe and then to assit in setting up sub folders in the template setup area (as per OLA008).  Neil is the business contact.
Document Generation – generate and send EPSS letters and forms	OLA003	Ability to send the populated letter/form to an officer to the personal email recorded in OLIMS and the option to send to the officer’s work email.	M	"1 SM provide path/screen name/screen shot of OLIMS officer personal email. 30/01/2026 DK The document correspondence screen allows a choice of email address to be send to. The choice of 'email' can be used (this is the preferred email saved in OLIMS/Injury management/ this is from IT0105) and the screen needs to be enhanced (additional requirement) for EPSS mail to also allow for the work email to be selected - the work -email populated will be IT0105 subtype MEMO.   
2 SMProvide location/subtype for work email"
Document Generation – generate and send EPSS letters and forms	OLA003 Additional requirement			The correspondence screen needs to be enhanced for EPSS mail to also allow for the work email to be selected - the work -email populated will be IT0105 subtype MEMO.   Added to BRD 03/02/2026 SM @ Matt, confirm added to brd please
Document Generation – generate and send EPSS letters and forms	OLA003 Additional requirement			30/01/2026 DK &  Matt  Option to choose an email for EPSS only from where the mail is send - this will allow for return emails. The e-mail to be used for return emails is EPSS-CLAIMS@police.nsw.gov.au. TBC Neil to confirm with Darryl if acceptable as this is not currently an option in OLIMS    
Document Generation – generate and send EPSS letters and forms	OLA004	The details of the correspondence and letters sent to officers to be saved in OLIMS, including the dates the letters/forms were issued to officers.	M	"1 SM Do we need a new OLIMS screen from where the letter can be send or is there an existing screen? Dk 30/01/2026 use the existing correspondence screens
2 SM Confidentiality matters in relation to saving the letters/work required on access?   30/01/2026 matt/DK there is processes in place, confidentiality is OK"
Document Generation – generate and send EPSS letters and forms	OLA005	A new field to enter the date the document was received by the EPSS claims officer.	M	1. SM Is the date an attribute of the document or a new field for the WC /incident number? If the latter, where do you see the field been added in OLIMS?     30/01/2026 Matt This date needs to be linked to the document of correspondence received, not the letters send out
Document Generation – generate and send EPSS letters and forms	OLA006	Ability to upload documents and correspondence into OLIMS.	M	"1 AZ Do we need to implement this requirement or OLIMS already has this functionality in place?  30/01/2026 Not new, but to be enhanced for EPSS
2. SM Is the documents OK to be loaded into a secure network (to be defined please) from where it is retrieved or was the intention to save in SAP tables (filling SAP database space)?    30/01/2026 DK Location provided during upload (stored in RMS)
3. SM What is the keys to link documents/naming standards for different kind of documents, so it make sense to retrieve the documents later? 30/01/2026 DK Business provides the names
4. SM What different kind of document categories are then for the sake of having a structured storage/retrieval methodology? Is it as per OLA007 and OLA008 only?  30/01/2026 DK Business provides the names and location/ structure of document repositry is not defined by the system"
Document Generation – generate and send EPSS letters and forms	OLA007	New document categories for EPSS On Duty and EPSS Off Duty.	M	1. SM on what OLIMS screen is the new document categories, or is this a brand new screen in OLIMS?  DK 30/01/2026 Correspondence screen
Document Generation – generate and send EPSS letters and forms	OLA008	"New document sub categories: 
•	Period 1
•	Period 2
•	Period 3
•	Commencement
•	Recommencement
•	Cessation
•	Finalisation
•	Recoveries
"	M	"1. SM is there different templates pending the sub categories within the document categories(as per OLA007)?  Provide templates.  30/01/2026 Matt  Yes,  correspondence section should have a heading for EPSS and sub  headings for the sub categories as per OLA008.  The sub categories are to align with creation of forms templates  and availability to choose for generation.   (Form templates are to group forms/letters in the same sub categories as they are available for generation / selection in the correspondence section of OLIMS)
2. SM Where in OLIMS is the sub categories to be added or is this a brand new OLIMS screen?  30/01/2026 Matt correspondence section for generation (as well as where the template is maintained)
"
Document Generation – generate and send EPSS letters and forms	OLA009	Reporting capability of documents in the Document Overview screen.	M	"1 AZ Do we need to implement this requirement or OLIMS already has this functionality in place? 30/01/2026 Matt The document overview is existing in EPSS, what we need to ensure is that the new forms/letters will be available to be retrieved as well
30/01/2026 Matt The documents that were send / generated, should be available to be retrieved again later in the document overview section."
Document Generation – generate and send EPSS letters and forms	OLA010	Ability to hide and unhide documents from OLIMS due to an error or privacy concerns. A comment must be entered if a document is hidden.	M	"1 AZ Do we need to implement this requirement or OLIMS already has this functionality in place? If new, is the intention to do this in the Document Overview screen?  DK 30/01/2026 This is new for the EPSS documents in the document overview screen - requirement change to not add hide & comment, but to 'delete' the documents. Deletion option can only be actioned by managers, this is security role based.  A new security role is required.   Matt/DK to provide the users to be added to the new role. The final list is to be provided during CUTOVER.  
2. SM Does that mean the document template needs a field for ""hide"" and 'hide comment""?  DK 30/01/2026 n/a as we will now delete/not hide. 
3. SM Is there some people that can see hidden documents? Provide details please. DK 30/01/2026 n/a as we will now delete/not hide. "
Document Generation – generate and send EPSS letters and forms	OLA011	The EPSS Claims Officer and Supervisor both to be able to run the audit log for periodic review and compliance checks for any documents deleted from OLIMS.	M	"1. SM Is there currently an audit log for the document funtionality in OLIMS?  30/01/2026 Theo IF not availabe, then a new table to keep track of who deleted what record. However the actual document will not be available for reporting anymore  
2. SM OLA006 only mentioned upload of documents, not delete. How is it we have an audit log request for deletion of documents if we only have an upload request for the documents? Do we need upload (create) and delete of documents?  SM 30/01/2026Requirement change to delete not hide, hence delete is valid"
Document Generation – generate and send EPSS letters and forms	OLA012	Documents uploaded into OLIMS via the EPSS Case Management module to be recorded as EPSS Notes.	M	1. SM Is EPSS Notes a sub section of the document or what is meant by it/Screen shots of areas of relevance please?  30/01/2026 Matt, currently have EPSS notes for free text.  Document and send mails must be part of EPSS notes/tagged. 
Document Generation – generate and send EPSS letters and forms	OLA013	"In the document overview screen, 2 new fields are required for a claims officer data entry;
•	Date Received
•	Comments
"	M	"1. AZ Where the officer would be entering the date received and comments - in the import document sub-screen where the document category  is selected? DK 30/01/2026 This is in the document overview  screen
2. What is the field length for Comments? 30/01/2026 Theo to provide max to minimum , business then to choose
This corresponds to OLA006"
Document Generation – generate and send EPSS letters and forms	OLA014	EPSS documents inbound and outbound need to be reportable for compliance and SLA performance reporting.	M	"1. SM is other documents already reportable that we can use or is this brand new functionality?. If new, what is the output of the report?  30/01/2026 DK/Matt This is related to OLA012 (EPSS notes)
"
Request for Review tab	Heading only			
Request for Review tab	OLC001	"Add a new parent category drop down list to “Type of Review”:
•	Query
•	Complaint
•	Dispute
"	M	"1. SM Is it mandatory to choose an type of review? If so, will it be mandatory when changing/save of records created in the past?   29/01/2026 DK The field is mandatory, also OK to enforce entry for existing reviews. 
2. SM Provide the OLIMS screen been enhanced please; AZ Request for Review screen number 4103"
Request for Review tab	OLC002	"Add a new dynamic drop down field titled “Requestor” which is mapped to the review type ‘Complaint’.
Complaint (requestor types)
•	Claimant
•	Internal
•	Solicitor
•	PANSW
•	Other
o	If other, free text field to be available to enter description
"	M	1. SM Is it mandatory to choose a complaint requester type (for Complaint parent category)? If so, will it be mandatory when changing/save of records created in the past?  29/01/2026 DK The field is mandatory, also OK to enforce entry for existing reviews. 
Request for Review tab	OLC003	"Add a new dynamic drop down field titled “Requestor” which is mapped to the review type Dispute.
Dispute (requestor types)
•	Claimant
•	Solicitor
•	PANSW
•	Personal Injury Commission
•	Industrial Relations Commission
•	Other
o	If other, free text field to be available to enter description
"	M	1. SM Is it mandatory to choose a requester (for Dispute parent category)? If so, will it be mandatory when changing/save of records created in the past?  29/01/2026 DK The field is mandatory, also OK to enforce entry for existing reviews. 
Request for Review tab	OLC004	"Add a new dynamic drop down field titled “Query Type” which is mapped to the review type ‘Query’;
•	Policy / Factsheets / Coverage
•	Process
•	Payment / Calculation
•	Follow up existing matter
•	Other
o	If other, free text field to be available to enter description
"	M	1. SM Is it mandatory to choose a query type (for Query parent category)? If so, will it be mandatory when changing/save of records created in the past?  29/01/2026 DK The field is mandatory, also OK to enforce entry for existing reviews. 
Request for Review tab	OLC005	"Add a new dynamic drop down field titled “Complaint Type” which is mapped to review type ‘Complaint’:
•	Payment / Calculation
•	Overpayment
•	Process
•	Customer Service
•	Review of Decision
•	Privacy Laws
•	Other
o	If other, free text field to be available to enter description
"	M	1. SM Is it mandatory to choose a Complaint type (for Complaint  Query parent category)? If so, will it be mandatory when changing/save of records created in the past?  29/01/2026 DK The field is mandatory, also OK to enforce entry for existing reviews. 
Request for Review tab	OLC006	"Add a new dynamic drop down field titled “Dispute Type” which is mapped to review type ‘Dispute’:
•	Eligibility for payment
•	Discontinue a payment
•	Medical Dispute
•	Privacy Laws
•	Other  
o	If other, free text field to be available to enter description
"	M	 29/01/2026 DK The field is mandatory, also OK to enforce entry for existing reviews. 
Request for Review tab	OLC007	For the review type “Query”, a due date is required that will be 2 days from the date the record is created	M	"1. SM Auto populated 2 days after create, assume +3, that is actioned on 1.3.2025 then due date is 3.3.2025?.  29/01/2026 Matt This must be another new field that display and it is + 2 BUSINESS days after the system creation date. Prefer PHol's do not count withing Mon-Fri.  Allow for the date to be overriden.
2. SM Can the review type eg. 'Query' change, eg. to Complaint, and if so, what does that mean for the due date; is the due date adjusted as per the new review type, Query created on 1.3.2025, due date 3.3.2025, then Query change to Complaint and this was actioned on 20.3.2025, do the due date then change to 30.3.2025 (+10 from 20.3.2025)?   29/01/2026 Matt. The review type will not be changed. It will be set to inactive and a new record will be created.

2. SM Is the 'review type' and the 'due date' a new or existing field in OLIMS? DK 30/01/2026  DK Yes new fields
3. SM what is the relevant OLIMS screen, assume there is a 'review tab' per WC /incident? 30/01/2026 The existing tab need to be enhanched as per prior discussions"
Request for Review tab	OLC008	For the review type “Complaint”, a due date is required that will be 10 days from the date the record is created	M	1. SM queries as for OLC007  30/01/2026 DK Answers as per OLC007
Request for Review tab	OLC009	For the review type “Dispute”, a due date is required that will be 15 days from the date the record is created  	M	1. SM queries as for OLC007  30/01/2026 DK Answers as per OLC007
Request for Review tab	OLC010	"In the ‘Previous Reviews’ section, the current table logging the records to have the following changes:
•	Date From  rename to “Date Received”
•	Date To  replace the new field “Due Date”
•	Final Response  new field that allows the user to upload a document
•	Escalation Flag  escalate to team member and will create a Task that is allocated to the EPSS Supervisor
•	Closed Date  date field for the user to update
•	Reviewer Name  field to record the reviewer’s employee number and name
•	Reviewed Date   date field for the reviewer to enter 
"	M	"1. SM final response field for upload of a new document: Where is the documents to be stored and what naming / other conventions is to be enforced. 30/01/2026 DK as per input in the upload process
2. SM final response field for new document upload: From where will the document be retrieved and how to know/select the relevant document?  SM 30/01/2026 This is Upload , not download
3. Escalation flag: Is this a new or existing field/what is the change?  DK 30/01/2026 Escalation is new in OLIMS (Only task and reminder functionality exist).  Neil: there is no workflow in OLIMS at the moment.
4.  Escalation flag: Do OLIMS already have a team members list that can be used for escalation 30/01/2026 Neil: In injury management (not epss) the supervisors are attached to team members, this is not avaialble in EPSS (noted, this will not be build for EPSS either).     DK & Matt: manual choose the EPSS team member (as per exsiting EPSS team member list) to escalate to, manual create the task and manually assign the task to the EPSS supervisor (only allow EPSS supervisors as per existing list).
5. Escalation flag: Do OLIMS already have task functionality/workflows 30/01/2026 DK No workflows exist for EPSS 
6. Escalation flag: What should the task to the EPSS supervisor contain and how is the EPSS Supervisor found? Please take us through the OLIMS screen to explain.  30/01/2026 DK Decision was the supervisor is chosen manually as per the existing EPSS supervisor list.     The review is escalated as a whole to the EPSS supervisor.
"
Request for Review tab	OLC011	The Request for Review tab to be reportable and a new report to be built to allow for performance and scheme reporting	M	"1. SM provide report layout and selections for the request for review tab report Matt 30/01/2026 2.4.1.4 discuss the detail requirements for the report
2. SM Define what is meant by scheme reporting, layouts, selections etc. Matt 30/01/2026 2.4.1.4 will be discussed with SAP techn team
3. SM from where do you expect to execute the reports, what OLIMS screen or a SAP report?  OLIMS EPSS report folder"
Request for Review tab	OLC012	The ability to upload more than one document per record	C	"1. SM What is to be seen as the 'keys' that define a 'record'? Please show via the OLIMS screen. 30/01/2026 Neil  Multiple documents with the same name needs to have a backend key added to keep it unique.(OLIMS currently do this, se injury management). Multiple documents can be loaded, one at a time.
2. SM Is there a naming preference for multiple documents / any current standards?  DK 30/01/2026  The name and path is entered for each file uploaded. Any prefixes to define the EPSS category will be manually entered/adhered to by the business."
OLIMS Diary / Reminders / Tasks	Heading only			
OLIMS Diary / Reminders / Tasks	OLD001	For EPSS claim management, a standard set of system generated tasks in OLIMS are to be triggered by key events that will have SLA’s and due dates to monitor service performance.	M	"28/01/2026 DK Additional requirement: TBC Limit reminder in EPSS to only EPSS Supervisors for selection.
1. SM Are these in the task list or what is the standard set of OLIMS tasks? 30/01 MJ: the tasks are listed in the BRD
2. SM Do OLIMS have tasks/workflow build that can be leveraged; Please demo.
30/01 MJ: SM did we demo this in the workshop already between AZ, NP and myself?"
OLIMS Diary / Reminders / Tasks	OLD002	"For adhoc claims management activities, a standard set of tasks that a EPSS Claims Officer or Supervisor can generate for a claim.
Refer to working document EPSS – Task List  "	M	"
Matt 02/02/2026 Only supervisors can delete a task. 
Audit trail of task life cycle for reporting is required.
1. SM See queries in worksheet 2.3.4.4 task list
30/01 MJ: updated responses to queries
2. SM What info is to accompany the each of the tasks?
30/01 MJ: OLIMS Tasks dont have a description or additional information, just the task name
3 AZ There is an existing table ZIM_REM which has the following fields:
-Category
-Business Rule
-Action/Description
-Days in Calc (AZ is this the SLA?)
-Inactive (no mapping required)

What is the mapping and respective values from the Task List to these fields above?
30/01 MJ: not sure AZ what this table is, was this covered in the discovery sessions? if not we will need to understand. 
02/02 AZ This table stores the existing OLIMS Reminders/To Do Descriptions. What I am trying to understand is what is a completely new requirement/field and what is existing based on the Task List provided in BRD. Probably question to Neil or Daryl

4 AZ What is the purpose of System Generated field in the Task List and where is it set/stored? Is this a new field applicable for EPSS only? If so, provide the requirements.
30/01 MJ: the 'trigger' column in the BRD is to describe the trigger for system generated creation of the task so the functional/technical solution can be developed. I dont know the SAP technical solution on how system generated OLIMS tasks are built, can you check with Neil and Darly?"
OLIMS Diary / Reminders / Tasks	OLD003	The standard functionality of creating manual Reminders/To Do Actions within the incident to be available for EPSS Claim Management	M	"1. SM Please provide OLIMS path/screen shot of existing functionality to be inherited for manual EPSS reminders
2. SM Is there any differences to the existing funtionality vs what is required for EPSS except the different tasks as per 2.5.4 Task list (manual).  Matt 02/02/2026 Manual tasks are aligned with the predefined auto list + items listed as manual in the task list. No auto workflow for the reminders/tasks."
OLIMS Diary / Reminders / Tasks	OLD004	The standard functionality to Display Reminders/To Do Actions within the incident to be available for EPSS Claim Management	M	"1. SM Please provide OLIMS path/screen shot of existing functionality to be inherited for manual EPSS reminders DISPLAYS
30/01/26 MJ: email sent with screenshots"
OLIMS Diary / Reminders / Tasks	OLD005	A new Reminder/To Do Action category is needed for EPSS to differentiate from the current categories in OLIMS	M	"1. SM Please provide OLIMS path/screen shot of existing functionality
30/01/26 MJ: email sent with screenshots
2. SM What should the new category be called, is it 'Reminder/To Do'?
30/01/26 MJ: EPSS"
OLIMS Diary / Reminders / Tasks	OLD006	The ability for a EPSS Claims Officer or EPSS Supervisor to ‘suspend/put on hold’ a task to pause the SLA/Due Date is required.	M	"1. SM Is a pause of the SLA existing for non-EPSS? If so provide screenshot/OLIMS path. 30/01/26 MJ: not an existing SAP OLIMS feature
2. SM Is the existing task funtionality holding SLA dates that can be leveraged by making it open for change for EPSS only. 30/01/26 MJ: not an existing SAP OLIMS feature
3. SM If one task due date is adjusted (or suspended), then subsequent tasks need to have a flow on effect, right, can we discuss examples if relevant? 30/01/26 MJ: we can review the ""Trigger"" noted in the BRD for tasks, some are system generated i.e WC Claim is flagged as primary, some are manually created and independent eg Request for Review, and others cannot be created until a certain task is completed eg. Period 1 - Send Income Statement - marked as completed...then creates Period 1 - Income Statement - Follow up  Matt 02/02/2026 When a task is on hold, then other items that were triggered by it should also go on hold.   When the task is released then items that was originally triggered by the released task, should re-adjust the SLA timings.  A suspended task can not be completed.  
4. SM Is the suspend/put on hold' something payroll calculations should take into account?  30/01/26: no impact on Payroll, only OLIMS for claim management activities"
OLIMS Diary / Reminders / Tasks	OLD007	When a Task is put on hold/suspended, a reason must be entered by the user to justify	M	"1. SM Is all the tasked triggered via batch jobs to show in OLIMS to allow for them to be put on hold/suspended? Is there an existing task screen?  30/01/26 MJ: check with Daryl and Neil on batch jobs, I dont belive there is a suspend/pause/put on hold feature in OLIMS Tasks/Reminders, check with Neil/Darly
2. SM Is there existing status options in prior developments for the tasks and are these all we need, eg. On Hold/Suspended? 30/01/26 MJ: I dont beleive there is an existing SAP OLIMS functionality, Darly or Neil may know more
3. SM the reason is free text, and saved for online OLIMS display, correct?
30/01 MJ: Yes"
OLIMS Diary / Reminders / Tasks	OLD008	When a suspended Task is removed and back to work in progress, the original due date to remain and a new due date to be created as a separate record calculated by the remaining SLA time	M	"1. SM The request is to revert to the  original due date only when the task was suspended, then set to work in progress again?  So, really the due date at the time a task is suspended just remains, and if the due date is in the past by the time the task goes back in WIP, then it is just late already, correct?. 
30/01 MJ: I dont know how the solution will be built...i dont think we discussed this during the workshops, we can workshop an example  Matt/DK 02/02/2026 the time used before suspend needs to be included in the total days available when the task re-commence - this impacts the triggered events as well. The override date can reset the time available if too complex (as per the current solution in other areas than EPSS)  2.4.9 provides specs on reporting of the task/reminder.
2. SM Assumption that a completed task can not be set as suspended, corrrect? (It will have a flow on effect to subsequent tasks that might also be completed). 
30/01 MJ: yes a completed task cannot be then suspended, only when it is active/work in progress"
OLIMS Diary / Reminders / Tasks	OLD009	The ability for the EPSS Claims team to create and edit the task templates for flexibility to adapt to the agile pace in implementing EPSS	C	"1. SM All task templates to be defined including where the data is to be pulled from. 30/01/26 MJ: SM depending on how the technical solution is built by AZ/DM, we would like if possible the business be able to update the templates, this may not be possible and SAP Support / Technical may not allow and want restrict who can edit these system templates
"
OLIMS Diary / Reminders / Tasks	OLD010	The EPSS Tasks are to be reportable for both current work in progress and completed tasks for performance and SLA reporting	M	"1.SM Is existing tasks reportable that we can leverage from? Any differences/call outs vs the existing reporting of other tasks?
30/01 MJ: Yes, we covered this in the demo by AZ, MJ and NP, in OLIMS ZIM_CM, there is the ""Reminders/To Do List"" folder that is expanded and the user executes the ""Overview""
2. SM is the report perceived to be a SAP report or a OLIMS on screen output? 30/01/26 MJ: OLIMS Report, with the new fields for EPSS, it may be suitable to create a separate report facility to not impact other OLIMS users; WC, HSW, Command.  Would be guided by AZ/DM/NP on the solution
3. SM Provide selections required (eg.  WC claim& EPSS incident #,  WIP /completed tasks?) and provide output required."
External Income and Payment Offset Model	Heading only			
External Income and Payment Offset Model	OLE001	"Integration to IT0015 for Other Income.

Scoped by Deloitte during Phase 4. Refer:
BRD4_Phase 4_Requirements Notes.xlsx
"	M	"Note: the IT 15 upload extends to include WC external (new)as well as external earnings (3670).
1. JV - Can you confirm if the requirement is for SS or WC team to enter the external earnings in OLIMS and integrate back to IT15. Is there expected changes on the external earning behaviour in payroll? 28/01/2026 Matt OLE002 states the EPSS claims officer do the entry.  No payroll changes in WT 3670 (external earnings). (noted WT 3670 is allowed multiple entries on one day) New WC external requirements is listed under detached officer requirements (these are new, expected the WT maintenance will request for only one entry on a given day to be allowed for WC external) 
2. AZ For the file import functionality, what is the file format and corresponding mapping to infotype 15? 28/01/2026 See detached for WC external mass load.  External earnings WT 3670 will not be a mass upload, it will be manually, allowing for the document to be attached.   For OLIMS reporting, if only OLIMS is allowed for entry of IT15 3670, then this will need to be from a future date as existing entries will still need to be maintained via SAP.  WT 3670 only needs the pernr, date, value and consider a document number to link to the OLIMS audit tables and to ensure the correct SAP entry is deleted when set to inactive in OLIMS.  WT 3670 do NOT need the incident /wc claim info.   Best will be a separate screen for the WC external load, and the create/inactive manual entry is valid for both WC external and normal external.  Whether the manual entry is one or two screens (for the different WT's) is a design decision.  Only requirement is easy access for the manual entry, easy reporting and considetion for field to be stored in OLIMS. 
3. SM Noted we do not have a matchup for external deductions pending the section and the WC claim/EPSS incident number.  This information is not currently stored or utilised against Wt 3670.  The values of external earnings are purely deducted as external earnings if the effective date corresponds with a potential EPSS payment in week1 or week 2 of the pay period. The minimal layout for IT15 will be Action(eg. create/delete), Employee#, WT number, Effective date, amount. On delete expect to include the sequence number as well - Assumption multiple of the same WT on the same date for the same employee is possible, eg.  if there is income from different sources on the same day/or will there ever only be one record on a specified date? 28/01/2026  WT 3670 will not be mass loaded.  WT 3670 is allowed mutiple times.
4. SM in the BRD under outstanding items was noted 'Income and Payment Offset policy and list of inclusions and exclusions' with a link to this section. Please expound.   28/01/2026 Matt: Unknown what external income and lump sum payments  are to be considered, potential reason codes (like rental ect. and other sub categories to be defined).  Need input on how to pro-rate lump sum payments from HSW.   DK:  Manual calculations and once off values for phase 5.  Lump sum solution for a subsequent phase unless we receive the info before workshop close.  The outstanding piece will remain outstanding until phase 6 or later."
External Income and Payment Offset Model	OLE002	The OLIMS ‘Other/External Earnings’ tab is to be utilised by the EPSS Claims Officer to enter earnings to offset an EPSS payment and attach the supporting document and evidence	M	"1. SM - Is the supporting document 'mandatory' before allowing the creation of the external earnings Wt 3670 (noted, payroll will use the external earnings regardless of whether there is documentation once it integrates to SAP)?   DK 28/01/2026    Document is expected but not enforced / not mandatory for creation of WT 3670.
2. SM - Is the same screen to be used for detached officers WC payment/external earnings with the same rules? 28/01/2026 Design decision on the screens used. Differences were discussed before and the screen decisions are likely driven by the differences (expect different screens). "
External Income and Payment Offset Model	OLE003	In OLIMS a new field to record the Earning Category; income or payment	M	"
1. SM What is the difference between 'Income' and 'payment', are they both external (already paid outside SAP)? DK 28/01/2026 Payment meant Other income payments (still external earnings).  Please change the wording of Payment to ' Other payment'
2. SM Will  income and payment use the same WageType or are different WT's required and if so are they to be enforced pending the earning category? DK 28/01/2026 Use WT 3670 for both categories.  Acknowledged that OLIMS will need to be the entry point from go live and not SAP direct in any form (also not via SAP IT uploads).  SAP can enforce for some transactions eg. PA30 (PA70 ?) to not allow entry of WT 3670, but batch jobs can not be enforced.  Business processes to align for update via OLIMS only from go live.
3. DK 28/01/2026 The eaning category with sub categories are only for WT 3670, It is not for WC external"
External Income and Payment Offset Model	OLE004	For earning category “income” a list of options to be available for the claims officer to select[MJ1] 	M	"HSW to provide the earning categories by close of workshops (if to include in the design of P5)
1. SM provide the list of 'income' options please  HSW  04/02/2026 Matt: The list is available. This will be updated in the BRD
2. SM Assumption the options for income is only for OLIMS use, there is no payroll functionality impacted by it? Dk 28/01/2026  Correct, not impact to payroll calculations"
External Income and Payment Offset Model	OLE005	For earning category “payment” a list of options to be available for the claims officer to select[MJ2] [MJ3] 	M	"HSW to provide the earning categories by close of workshops (if to include in the design of P5)
1. SM provide the list of 'payment' options please HSW 04/02/2026 Matt: The list is available. This will be updated in the BRD
2. SM Assumption the options for payment is only for OLIMS use, there is no payroll functionality impacted by it? Dk 28/01/2026  Correct, not impact to payroll calculations"
External Income and Payment Offset Model	OLE006	There may be more than one earning type that covers the same date range, e.g. external PAYG income and a lump sum payment	M	"1. SM By implication we say the same external earning WT can be loaded multiple times on the same date?  DK 28/01/2026 Correct WT 3670 allowed multiple times on the same day
2. SM Is it OK to have the same WT for different earning types in SAP or is there different SAP calculations or SAP reporting requirements that require different WT's for the earning types?  (Eg, assume these are already paid, so not STP2 reporting, but maybe other requirements?) 28/01/2026 DK. WT 3670 is not paid and is used as in prior phases and we only need one external earnings WT 3670. (WC external is a new and just for detached)
3. SM Is the earning type a category of sort in OLIMS  or n/a?.  DK 28/01/2026 No, the earning type and sub catefories are all new in OLIMS and relates to WT 3670 only"
External Income and Payment Offset Model	OLE007	The ability to Create and Delete entries, no change/update option	M	"1. JV - When an entry is created or deleted retroactively, OLIMS does not automatically trigger a retro. The retro is triggered when OLIMS integrate back to IT15. Should we stop the update on OLIMS if payroll control record is locked and notify Claims Officer that they are not able to update? SM- Case officer processes will need to align with payroll lock periods, is that doable? Ideal is not to save to staging tables for later processing, but to error on entry in OLIMS (as would be the case if entered directly in SAP)  DK 28/01/2026 Noted that a  process is required to only enter IT15 external (and WC external)  when payroll is not locked. (similar restrictions like WT 9WCO)
2. SM Please acknowledge the impact to the employees pay for retroactive entries, when added in retro, then it will likely cause claims due to reduced EPSS payments and if deleted in retrospect, then the EPSS earning will potentially increase. 28/01/2025 DK Understood"
External Income and Payment Offset Model	OLE008	When an entry is deleted this to remain in the audit trail, visibility in OLIMS or a transaction to run the audit trail will be required	M	"1. SM SAP has an audit trail on entries changed in SAP.  Will this suffice for execution within SAP?  28/01/2026 DK Audit trail from OLIMS is to be used as it includes more fields than what is stored in SAP. Noted, the SAP audit trail is available with the limited data stored in SAP
2. SM if the SAP standard report is utilised, eg. transaction PC00_M16_UAUD, then please confirm access for those who need to execute the report.  28/01/2026 DK SAP standard not required.    Matt has access to the SAP audit trail.  Manager level in OLIMS have access to OLIMS audit trail- the OLIMS audit trail will be used (not SAP audit trail).

28/01/2026 Neil: OLIMS Audit ZHRDD_AUDIT_REPORT
"
External Income and Payment Offset Model	OLE009	When an entry is deleted, the action will also remove the document automatically	M	"1.JV On OLE008, we wanted audit trail visibility, why are we asking documents to be deleted automatically if the record will just be flagged as inactive as per OLE008
28/01/2026  DK & Matt. Delete the attached documents against inactive external earnings as the informarion is incorrect and has privacy concerns if kept. "
External Income and Payment Offset Model	OLE010 Additional requirement report			1 JV - For recurring offset, are we happy to be manually entring the data every payroll period for each of the relevant split the recurring payment is relevant for? DK 28/01/2026  Additional requirement:  to check if a QA report has been requested to show where IT15 external earnings/WC external do not overlap with 9WCO (MJ what is the reason for QA report with overlapping 3670/WC external and 9WCO record....) 04/02/2026 SM:@Matt, if the IT15 external is not dated here WT 9WCO exist then it will have no impact in payroll. Please add report to BRD if the business will benefit/require this.
External Income and Payment Offset Model	OLE010	Both ‘one-off’ and recurring offsets can be created, driven by start and end dates	M	"1 JV - For recurring offset, are we happy to be manually entring the data every payroll period for each of the relevant split the recurring payment is relevant for? DK 28/01/2026  Additional requirement:  to check if a QA report has been requested to show where IT15 external earnings/WC external do not overlap with 9WCO (MJ what is the reason for QA report with overlapping 3670/WC external and 9WCO record....) 04/02/2026 SM:@Matt, if the IT15 external is not dated here WT 9WCO exist then it will have no impact in payroll
2. JV - If automated, can we put a start and end date of the recurring entry so that it automatically creates the same IT15 entries up until a specified end date?  28/01/2026 Julius :Already discussed
3. JV How do we expect external earning offset handles splits when the split is caused by the same incident ID vs a split when in a week there are 2 incident IDs? 28/01/2026 Discussed before. We do not match WT 3670 to WC/incident numbers in payroll calcs 
4. SM '@Julius can we combine some of your items above' FYI, as explained in phase 4, the date of the external earning slots into whichever payroll split there is and it reduces the portion of the EPSS payment (if any),  where the external earning date overlaps with the pay split where WT 9WCO is valid.   Currently when WT 9WCO (med certificate) exist in the pay cycle, the 'Workers comp' system rules force payroll splits for at least week 1 /2 of the 'pay cycle', but more splits can occur related to other data inputs eg .cost centre changes, work condition changes, pay changes, etc. Also, multiple medical certificates from different (or the same) incidents with start dates (in IT0014) mid pay cycle week can cause further payroll splits 'within' week1/2 as per the start/end dates of WT 9WCO.  
5. SM   Assumption is the once off is still a weekly value and dated on a specifc date? DK 28/01/2026 Correct
6. SM FYI If the 'recurring' can only be a 'weekly' external value, then in phase 4 we discussed for 'recurring offsets' to allow entering of the 'weekly' external earning amount and effective date, then have a 'repeat' button. The number of repeats entered was then to create the amount another X times as per the number of repeats and each new entry would be +7 days from the original effective date.  The entries were destined for IT15. When the number of repeats entered is between 15 and 260, a warning message is given. The repeats are allowed for creation after acknowledgment of the warning.The maximum number of repeats is 260. An entry above 260 repeats results in an error message and no repeat entry is created.  DK 28/01/2026  Agreed to continue as per Phase 4 repeat button expressed above. Noted the repeat is only expected to be used by W 3670.  It will not be used against r WC external, even if it is available for it.
BUT  ... 28/01/2026 Ignore below ""BUT"" as IT14 is not viable for the requirement
If a fortnight value can be provided (understood this not to be viable), then via IT0014 recurring, it will be possible to factor /pro-rate such value to assign portions to each payroll split for reduction against also pro-rated EPSS payment values. The downfall of this is that the pro-rate will also be for dates where there is no WT 9WCO, hence will not attempt to deduct that portion from any EPSS payment where it might have been intended for deduction.  Hence the query if the  'recurring external' will always have a medical certificate (WT 9WCO) for the full period of the recurring external earning (start/end dates), and if the business can confirm it possible to provide the external earnings  as a fortnight (pay cycle) value, then the recurring could be via IT0014 and just one entry with start/end dates with payroll utilising pro-rating as noted.    In prior phase discussions the business wanted to be in control of the effective date of the external earnings and instead the IT15 solution was chosen, please can we reconfirm for recurring external earnings (noting we expect 'once off' external earnings will still be a 'weekly' IT15 value).
7. SM Currently the external earnings are not matched up with the WT 9WCO WC and incident/section keys. Please advice if you want this granular check before we deduct the external earnings? Note, if you do, then this information needs to be provided for all external earnings as mandatory fields. Old records without the key information will need to be considered for change /or/ whether the rule is to continue to deduct external earnings from whichever incident that overlaps with the external earning in the event the 'key' information is not complete against the external earning?  If chosen to add these details, then please consider if the OLIMS screen for entry needs to be initiated from an incident screen/which screen?en?  28/01/2026  DK WT 3670 will not hold the WC/incident information "
External Income and Payment Offset Model	-	"Decision made in EPSS Operations Working Group on Thursday 17/07/2025.
When an officer is medically retired and has an approved application to extend their last day of service utilising recreation and extended leave, this will be treated as an offset for EPSS payments (Period 1, 2 and 3).
Refer to BRD4_Phase 4_Requirements Notes.xlsx from workshops gathering requirements and the functional/technical notes.
"		"
DK 28/01/2026  This requirement is obsolete.    
1. JV Can you expound more on this one please? Is there an expected manual OLIMS processing for this one utilising the  external earnings screen?
2. SM /OR/ Are we simply saying the rec and ext leave will reduce the EPSS payment? If so, then the BAU reversal of the 9WCM that will see rec and ext leave used to reduce EPSS payments once again, should take care of this.  "
External Income and Payment Offset Model	CR001	The ability to identify and report which officer’s are medically retiring and extending their last day of service utilising recreation and extended leave	M	SM This line has been removed in the signed-off BRD. Ignore, it is not relevant anymore.
External Income and Payment Offset Model	CR001	The EPSS Claims Advisor will enter any earnings to offset through IT0015 utilising wagetype 3670	M	1. JV - The assumption is that the entry will be made in OLIMS and not in SAP. IS there something different you mean when you say entry on IT15? Do we need functionality to allow entry in SAP directly and integrate back to OLIMs so both systesm are aligned?   DK 28/01/2026 OLIMS will be the master of external earning entries
EPSS estimation tab/forecasting calculator	Heading only			
EPSS estimation tab/forecasting calculator	OLF001	A screen that is a calculator for the EPSS Claims Officer to enter information into fields that will estimate EPSS payments and forecast future costs for the next quarter and future quarters	M	"1. JV What sort of EPSS earnings are expected to be estimated? Is it just the top up? The worker's compensation? DK 29/01/2026 The estimation is only for the EPSS payments, different values for EPSS P1/2/3.  The claims officer is to enter the number of weeks estimation and with that the week estimated EPSS P1/2/3 value. This need to be multiplied to show on screen and the value as calculated on screen should also show in the Icare recoup report (report enhancement from P4 delivery).  No impact to payroll and no payroll data to be retrieved as this is an estimation for the future
2. JV is the calculator expected to have a selection of dates or just quarter where the calculation changes depending on the future cost?
3. JV What is the expected data/formula of the calculator? Does it sum all of the period 1 and 2 top up earnings only? Should employee's leaves and planned work, master data be considered in calculation? Can this not be achieved by simulating payroll in the future?
4. Is the estimate just going to be run in the OLIMS screen or do we expect the estimate to be saved in a table for reporting purposes?
5. SM Assumption is an OLIMS screen is requested where the EPSS claims officer will provide data to be utilised for the estimation reports that is also to be displayed within OLIMS?   
Please advice the information items that was envisaged for entry by the EPPS claims officer. Then against the different output reports requirement lines, please explain how the data is to be used for the report output.  
6. SM Please advice if the data entry by the EPSS claims officer is to be stored for future use or if the data and reports are more for investigation and hence details are not stored for later retrieval.
7. SM Is the intention for the new OLIMS screen to enter data be a link/tab from an existing OLIMS screen (which) or standalone?  "
EPSS estimation tab/forecasting calculator	OLF002	There is a one to one relationship of the incident and the forecasted estimate entered in OLIMS.  There could be estimates entered in for different claims with specific date ranges.	M	"1. JV Can we expound on this requirement? What does one to one relationship of the incident and forcecasted estimate mean?
2. SM Entering the estimates implies the EPSS claims officer enter the estimates in OLIMS, correct?
3. SM Please provide the 'key fields' against which the estimates are entered for unique reporting.
4. SM Understood the 'specif date ranges' can only be for a calendar year based quarter, nothing else.  29/01/2026 DK Agreed 
"
EPSS estimation tab/forecasting calculator	OLF003	Estimate screen to be broken into 3 sections for each benefit Period: Period 1, Period 2 and Period 3	M	AZ Leave a place holder with blank/zero values for Period 3 fields? 
EPSS estimation tab/forecasting calculator	OLF004	For each benefit period, one or more record(s) can be created for the same quarter being forecasted.  This will allow the claims officer to split the estimates based on WC sections (e.g. s36 to s37) and return to work capacity (e.g. upgrades or downgrades)	M	1. SM Please provide the key fields of which the totals are to be combined. Assumption is this will align with OLF002 data entry.  These fields will dictate separate lines in the output. Noted, it does not seem as if the WC section is an output field. If this is provided as a key for totaling values in the output then it will be part of the output line but not displayed. 
EPSS estimation tab/forecasting calculator	OLF005	"Period 1 estimate section; to contain the following fields
•	ORP (weekly)    ""
•	Hourly salary rate ""
•	RTW hours (weekly)  *
•	RTW salary (weekly) 
o	Calculation based on hourly rate x RTW hours
•	WC payment (weekly)   *
•	External Earnings (weekly)  *
•	Period 1 payment (weekly)  ""
o	Calculation based ORP – RTW salary – WC payment – External earnings
•	Future # of weeks  *
o	Whole number to be entered and cannot exceed 39 weeks
•	Forecast Period 1 payments (total)
o	Calculation based on Period 1 payment (weekly) x Future # of weeks
"	M	"1.JV What is RTW hours and salary? If its return to work, what data should the system retrieve to return RTW hours and salary? Future IT7 and IT8 of when the EPSS payment has ended???
2. JV What is RTW salary in the ORP - RTW Salary formula
3. Does calculation for forecast period 1 payment total consider employee master data? What is the basis if 'period 1 payment 'weekly' when there are different payments for each week. i.e Week 1 - 10 has finished, do we get average weekly payment for week 1 - 10 and use that as basis for calculating remaining weeks in the future?
4. SM Please advice which of the reportable fields are provided as input by the EPSS case officer and intended use thereof (We can add an asterisk infront of them in column d please)
5. SM Please provide the report selections. eg start /end date of quarter to estimate, Employee number, WC &EPSS incident number, etc.   29/01/2026 DK Quarter start /end date.  Execution is for all EPSS employees in that quarter, all incidents, there is no selection on employee/WC/Incident.  Only one line on the screen per WC/incident per quarter. (Therefor the screen output do not need a start end date, as the quarter start end date is implied for each entry)  Keep information per quarter for reference after the quarter moved on. Therefor multiple quarters (also from the past) will be availble to be viewed.   The quarters allowed for entry should be based on the calendar year quarters, Jan-Mrch etc.   Validations required not to allow incorrect quarter date selections.   This info holds true for p1/2/3.
6. SM Considering system performance, is the OLIMS output intended per employee (not mass output)?  
7. SM  For each of the output columns, provide the caculations and from where the input to the calculation is expected to be and the effective dates the input is read at relative to report input selections.  
8. SM Please consider output of key fields like employee number, Section/WC/incident number. Assumption is output is one line per key field for the full period selected.
9. SM Add * at the end of items that needs to be entered on the screen. Add "" at the end of items to be read from OLIMS (noted OLIMS data is the latest valid info, it is not date driven. This is acceptable by the business for use.
10 SM Noted the Future # of weeks will error if a value > 39 is entered.  DK 29/01/2026  Correct
"
EPSS estimation tab/forecasting calculator	OLF006	"Period 2 estimate section; to contain the following fields
•	75% of loaded base salary (weekly) ""
•	Hourly salary rate ""
•	RTW hours (weekly) *
•	RTW salary (weekly)
o	Calculation based on hourly rate x RTW hours
•	WC payment (weekly) *
•	External Earnings (weekly) *
•	Period 2 payment (weekly) 
o	Calculation based 75% of loaded salary – RTW salary – WC payment – External earnings
•	Future # of weeks  *
o	Whole number to be entered and cannot exceed 52 weeks
•	Forecast Period 2 payments (total)
o	Calculation based on Period 2 payment (weekly) x Future # of weeks
"	M	"Same question as above
Add * at the end of items that needs to be entered on the screen. Add "" at the end of items to be read from OLIMS (noted OLIMS data is the latest valid info, it is not date driven. This is acceptable by the business for use. 
Matt 29/01/2026 Change required to BRD and to be approved: Future # of weeks is to change from 52 to 365. Error if > 365.
29/01 MJ: BRD updated to reflect change in weeks from 52 to 365
"
EPSS estimation tab/forecasting calculator	OLF007	"Period 3 estimate section; to contain the following fields:
•	75% of loaded base salary (weekly)  ""
•	Hourly salary rate ""
•	RTW hours (weekly)  *
•	RTW salary (weekly)
o	Calculation based on hourly rate x RTW hours
•	WC payment (weekly) *
•	External Earnings (weekly) *
•	Period 3 payment (weekly) 
o	Calculation based 75% of loaded salary – RTW salary – WC payment – External earnings
•	Future # of weeks *
o	Whole number to be entered and cannot exceed 52 weeks
•	Forecast Period 3 payments (total)
o	Calculation based on Period 3 payment (weekly) x Future # of weeks
"	M	"1. JV For the calculator for P3 to work, I assume a payroll simulation would need to be done, we do not have requirements yet for P3 calculation, what is the requirements and forumals for P3 calculation? / SM ""or"" we use input from the case officer. Simulations will be system intensive.
2. SM For the future # weeks was the intention for the case officer to provide the number of weeks with max 52 weeks? That is, cap at one year instead of 7 years?
3. SM Same queries as for P1 report, please mark with * values that the EPSS case officer will provide and the calculation rules, place from where data is retrieved and effective date relevant for retrieval relative to report selections requirements (for each field).
Add * at the end of items that needs to be entered on the screen. Add "" at the end of items to be read from OLIMS (noted OLIMS data is the latest valid info, it is not date driven. This is acceptable by the business for use. 
SM 02/02/02026 Action tracker indidcates under OLF006 :29/01/26 MJ: completed in workshop along with additional action to change OLF007 Period 3 week count from 52 to 157 weeks "
EPSS estimation tab/forecasting calculator	OLF008	Where there is more than one record for each benefit period for the forecasted quarter, the total estimate is to roll up for reporting purposes into the icare recoup report	M	"1. SM  Noted the icare recoup was a P4 delivery was deriving pay results for quarters where the pay results already exist. It already had the P1 and P2 Future # weeks but not P3. The estimation/forecast was not done. 
Is this a requirement for an online OLIMS forecast or is it for the Icare recoup report or both? Minimal requirement? "
EPSS estimation tab/forecasting calculator	OLF009	"The values entered against the OLIMS incident will be mapped to the icare recoup report for the estimated costs for each period of the officer’s incident.
If no estimates entered in OLIMS, the report will retrieve blank values."	M	"1. SM We need to understand what estimates will be entered in OLIMS and with what effective dates the estimates will be entered/or just an estimate weekly for P1/2/3 to be used as a blanket value for any ICare recoup quarter .  
2. SM Provide all the intented OLIM provided fields and how to use them in the Icare recoup report (noted the icare recoup output is different to what was noted fir P1/2/3 in OLF005 OLF006 OLF007)"
EPSS estimation tab/forecasting calculator	OLF010	A report to be developed that will allow the business to report on forecasts entered in OLIMS for adhoc reporting or to manually add the values to the relevant claim on the icare recoup report	M	"1. SM Is the forecast report OLIMS or backend SAP based and is this as per OLF005 OLF006 OLF007?
2. SM is there a 2ndary requirement to adjust the output of the ICARE recoup report?  Is the need for another OLIMS screen that allow entry  of all the keys (Incident#, Empl #, WC claim#, payment date, pay from/to date relevant)  of the ICARE recoup report and with that fields of the icare output columns; then allow the EPSS case officer to enter values for the keys and associated output columns; then change the ICARE recoup to use this static values for the associated key, that is overwrite the system dynamic 'real' values with the static values provided?  /or/ is the meaning to use some of new  OLIMS provided values to calculate outstanding icare fields? Please expound."
Display increases in Period 1 ordinary rate of pay (ORP)	Heading only			
Display increases in Period 1 ordinary rate of pay (ORP)	OLG001	Due to the policy change to pass on increases in ORP from pay and rank increases during Period 1, the claims officer will require visibility of the ordinary rate of pay amounts including the start and end dates in OLIMS.	M	1.SM Understand this is a reflection of IT8/backend increases/ start/end dates and the assosiated ORP with each when P1 is relevant. This is part of zim_cm (Olims reporting screen) within OLIMS epss case management module.  Noted OLG003 to overwrite the ORP.  Is the expectation this visibility of ORP in OLIMS to be purely as per IT8/backend rates, or to show the overwrite value during periods of overwrite (and if so, propose an indicator (TBC what), to show records of manual overwrite that is displayed? Comment on 19/01/2025  under 1PA003 is to nullify the P1 ORP overwrite requirement.  1PA003 and OLG003 seems to be the same requirement, if so, then the query on OLG003 is n/a anymore.  
Display increases in Period 1 ordinary rate of pay (ORP)	OLG002	The history and current values of ORP to be viewed in a new tab in OLIMS EPSS Case Management module.  Information to include the start date, end date and ORP amounts represented as annual and weekly values.	M	" 
1. SM Is the weekly value the annual /52 or /52.17858 ?   20/01/2026 AT It is 52.17858 (that is the same as 26089.29 * 2)"
Display increases in Period 1 ordinary rate of pay (ORP)	OLG003	To future proof any unforeseen future changes in ORP definition, the EPSS Claims Officer requires an override feature to amend the OLIMS ORP values; both the initial value and any subsequent values due to increases in pay or rank during eligibility of Period 1 payments.	M	"Comment on 19/01/2025  under 1PA003 is to nullify the P1 ORP overwrite requirement.  1PA003 and OLG003 seems to be the same requirement, if so, then the queries on OLG003 is n/a anymore as it is not required anymore, correct?   
1. JV Overwrite ORP? ORP is already dynamic and based on period where the claim is being processed, do we still need to overwrite?
2. SM What sparked this requirement? Do we need to fix the ORP calculation/How will the business decide /calculate the ORP differently to the current system setup?  
3. Is the ORP overwrite or an 'add-on' to the SAP calculated ORP? 
4. SM RISK: Any static ORP provided by the claims officer has a risk of not been amended again manually to align with the employees retrospective master data changes.  Highly recommend against a manual process. Instead, lets see if we can fix the issue (to be defined).
5. SM Please confirm if this requirement remains firm. If so, where in OLIMS will be best positioned to provide the input? 
5.1 SM The input can not be aligned against OLIMS IT8 basic pay ORP display as this is dynamic as per retrospective changes
5.2 SM  Assumption is that such amendmendments are for a set period (start/end date) and will need to force payroll splits? (Like replacing IT8 for a period in relation to ORP). Hence ustilising IT14 , recurring to cause pay splits.
5.3 SM The changes might not align with it 8 start end dates, even if it aligns at first, it might not later as IT8 changes. Is the changes expected to align? If yes, is reporting required to alert when the amendment is not aligned with IT8 basic pay effective dates? 
5. TV : Where is the override done and displayed (existing ORP history tab vs. new field)
6. SM Assumption only one override can be valid on a specified date/no overlaps and validation is required to check for overlaps/error?
"
Display increases in Period 1 ordinary rate of pay (ORP)	OLG004	The override of ORP values to be viewed and edited in OLIMS recording the change date, change time, the reason for change, the user’s employee number and the active/inactive flag.	M	"Comment on 19/01/2025  under 1PA003 is to nullify the P1 ORP overwrite requirement.  1PA003 and OLG003/4 seems to be the same requirement, if so, then the queries on OLG004 is n/a anymore as it is not required anymore, correct?  
1. SM SAP audit trail will not suffice for this requirement. OLIMS build to record  this info. Is there existing methods in OLIMS to for auditing? 
2. Is reason for change free text?
3. Is the users' employee number that of the case officer doing the entry?
4. Noted the active/inactive flag.  Will it be acceptable to delete instead of set to inactive. Once deleted it does not show anymore, then only active will show.  
What actions (eg. create/delete) are allowed given start/end dates and values entered might need to change/ or once created, does it need to stay for ever and set to inactive instead of delete?
"
Display increases in Period 1 ordinary rate of pay (ORP)	OLG005	The override feature of ORP to record active and inactive records	M	"Comment on 19/01/2025  under 1PA003 is to nullify the P1 ORP overwrite requirement.  1PA003 and OLG005 seems to be the same requirement, if so, then the queries on OLG005 is n/a anymore as it is not required anymore, correct?  
1 SM See OLF004 queries"
Display increases in Period 1 ordinary rate of pay (ORP)	OLG006	A report to be available within OLIMS to audit any overrides processed by EPSS Claims Officers for ongoing monitoring and quality assurance checks	M	"Comment on 19/01/2025  under 1PA003 is to nullify the P1 ORP overwrite requirement.  1PA003 and OLG006 seems to be the same requirement, if so, then the queries on OLG006 is n/a anymore as it is not required anymore, correct? 
1. SM Assume the output overwrite start/end date, ORP overwrite value and the other items listed under as per OLG004, that is change date, change time, the reason for change, the user’s employee number and the active/inactive flag?"
EPSS Claim Status Reasons	Heading only			
EPSS Claim Status Reasons	OLH001	For EPSS Scheme wide reporting to measure cost, performance and fairness, additional sub reasons are required to be captured for when an EPSS Claim status is ‘closed’ for an On Duty injury	M	
EPSS Claim Status Reasons	OLH002	"Sub Reasons:
•	WC Claim Closed
•	Non-Compliance of WC Obligations
•	Returned PID
•	Reached retirement age
•	Work Injury Damages (WID)
•	Dismissed S181D
•	Removed S80(3)
•	Appointment as a Police Officer ceased
•	Convicted of Criminal Offence
•	Serving custodial sentence
•	Death
"	M	"30/01/2026 DK The sub reasons are only for claim status 'closed' The other claim status options should not be allowed these new sub reasons for selections. Essentially 'sub reasons' is a new field that is ONLY relevant for claim status 'Closed'
@DTT, please check the reasons in the audit report and if the same field showing there can be used for the sub reasons (this could remove OLH003)."
EPSS Claim Status Reasons	OLH003	A report to be available within OLIMS to audit any overrides processed by EPSS Claims Officers for ongoing monitoring and quality assurance checks	M	1. SM  please define 'any overrides', or is this in relation to changes to reason codes?  DK 30/01/2026  The audit trail is to show active/inactive info (in place), this should now include the sub reason changes (to check if the reason already displayed wil align with the new Sub reasons, then no furhter change is likely required to the audit report) 
Period 1 payments : control to start, pause and recommence	Heading only			
Period 1 payments : control to start, pause and recommence	OLG001 (ID already used for another requirement)	"Currently the EPSS calculation and payment of EPSS Period 1 is automated as soon as a WC certificate is uploaded and the P905 is processed or reprocessed in OLIMS, passing the information to SAP payroll.  

The current automated design of EPSS Period 1 supplementary supports is to be amended where it won’t automatically calculate and commence EPSS payments.  In OLIMS, a flag is required that defaults to “Not approved to pay”. The system to only commence calculation and payments once this has been unflagged. Once payments commence, the system will calculate week counts as per the new rules for total and partial incapacity.   
"		"1. JV - If flag is not approved to pay, are we meant to still pay worker's compensation and just stop period 1 top up from happening. Seems to be a yes based on OLG005.
2. JV - For s36 and 37 where there is no top up but weeks count commences nonethless, should we also stop week count if flag 'not approved to pay is ticked'?  DK Do not count the weeks, do nothing related to EPSS P1 when the not appproved flag has not been lifted to approve. Noted Do not approve is the default for all employees.  It is like the person is not EPSS P1 at all (which means he can not be P2 or P3 either from a payroll pespective)
3. JV - What is our expected top up outcome if P1 commences in the middle of a week? Should the system calculate prorata? If yes, please share examples of manual calculation of how this will be handled. @Julius, I expects splits similar to when 9WCo start mid week apply. 
4. SM Is the 'Not approved to pay"" just a flag, not a date?  Hence if the flag is unflagged, do we then (via OLIMS) set the employee to retro pay back to the P1 start date as per Dod  and commence week counting and EPSS P1 payments from then? DK All these statements are correct and it is a flag (not a date).   Note any insurance premiums continues as per IT0220 Superannuation.
5. SM Is it possilbe that the flag can be set back to 'Not approved to pay' again 'after' it was unflagged ? (can the process of changing the flag be done several times or just once?)  DK No need to change to Not approved to pay after it was changed to Approved.  Approved should not change, unless selected in error. Hence request to be allowed to change the flag back and forth.  Additional requirement: Only the manager is to be allowed to change to 'Not approved to pay' after the EPSS case officers had set it to approve. (See transaction zim_mgrcm to find the manager for the WC incident TBC AndreZ if the transaction implies it is OLIMS screen access and in which case we might need a differnet transaction to provide access for changing approved to not approved.  AZ 03/02 Question to Neil: Is there a way to identify Managers in OLIMS? If so, no need for a new transaction, otherwise, I would suggest using ZIM_MGRCM for also letting flag to be unticked once already ticked..  Neil advise there are manager and case officer roles and the assigned people might need to change. TBC Neil the method to find the case officers that can be used for access purposes to set P1 to approve.   04/02/2026 Neil advise there is no unique role/access setup for EPSS managers and EPSS case officers.  The existing roles are for WC, not for EPSS.  DK /Matt to provide the list of positions that are EPSS case managers and EPSS managers to Neil, Aruna and Salmie. This will be send to security. See link for the latest updates. Security are to provide the role names to DTT for inclusion in the design.  New transactions (EPSS case officer and for EPSS manager) are expected to be provided to Security by DTT (instead of  for example  zim_mgrcm, because  zim_mgrcm  is for WC not for EPSS) The P1 commence flag needs to only allow EPSS case officers to set it to approve and the flag is only allowed to be set to unapprove (with reasons) by the EPSS managers.
6. SM Can we assume at go live that all existing incidents are unflagged, and only new incidents then default to '“Not approved to pay”?  If not, how many are envisaged to be in the '“Not approved to pay” stage?  DK agrees ALL will be set to  Commence P1 payment as approved at go live.    The manager will need to set people to Unapproved where required (which will claw EPSS payments back from the commencement of P1).
7. Additional requirement is to allow for a status for the Commence P1 payment flag that needs to default to ""Awaiting WC claim approval'.  Other status is Approved/Unapproved.  For unapproved (only allowed by manager), reason codes can be selected: 
No entitlement to EPSS
Over 67
Receiving TAL payments
Awaiting approval from TAL transition to EPSS
Other  If Other was selected, an additional free text field to appear for the Manager / team leader to enter.
 Additional requirement above is to extend to the P2 commencement flag to work as the P1 payment flag in relation to the status, the security and the reason codes for unapproved as listed above in item 7. 

8. SM DK agrees: Call the flag ""Commence P1 payment"".
9. SM Additional requirement: QA report that shows the flags and the reason code/status added to transaction zim_cm.  Only show active primary claims for employees on EPSS during a selected pay period  (all employees). This is executed in OLIMS."
Period 1 payments : control to start, pause and recommence	OLG001 Additional Req			"Additional request lines are for clarity. The item details are copied from the original BRD request number, where the final outcome will be recorded. (The item is not further discussed at this time)
5. Only the manager is to be allowed to change to 'Not approved to pay' after the EPSS case officers had set it to approve. (See transaction zim_mgrcm to find the manager for the WC incident TBC AndreZ if the transaction implies it is OLIMS screen access and in which case we might need a different transaction to provide access for changing approved to not approved. TBC David K & Nicole Who are the managers/role based).  Neil advise there are manager and case officer roles and the assigned people might need to change. TBC Neil the method to find the case officers that can be used for access purposes to set P1 to approve
Added to BRD "
Period 1 payments : control to start, pause and recommence	OLG001 Additional Req			"Additional request lines are for clarity. The item details are copied from the original BRD request number, where the final outcome will be recorded. (The item is not further discussed at this line)
7. Additional requirement is to allow for a reason for the Commence P1 payment flag that needs to default to ""Awaiting WC claim approval'. Sample other reason code is  'No entitlement to EPSS'  DK to provide the list of reasons   03/02/2026@Matt  Assume the list of reasons are in the BRD?
Added to BRD"
Period 1 payments : control to start, pause and recommence	OLG001 Additional Req			"Additional request lines are for clarity. The item details are copied from the original BRD request number, where the final outcome will be recorded. (The item is not further discussed at this line)
9. SM Additional requirement: QA report that shows the flags and the reason code/status added to transaction zim_cm.  Only show active primary claims for employees on EPSS during a selected pay period  (all employees). This is executed in OLIMS.  
Added to BRD "
Period 1 payments : control to start, pause and recommence	OLG002 (ID already used for another requirement)	The EPSS Claims Officer will need the ability in OLIMS to manually approve/initiate the commencement of the SAP automation of Period 1 calculation and payments.	M	1 JV - Do we need additional approval functionality or will the flag mentioned in requirement OLG001 suffice?  See OLG001 discussions
Period 1 payments : control to start, pause and recommence	OLG003 (ID already used for another requirement)	"The EPSS Claims Officer will need the ability in OLIMS for any point in time in the claim journey, to stop (suspend) EPSS payments and when eligibility requirements are met, recommence the EPSS payments from when the payments were first suspended.  
This is to be date driven and the claims officer to enter dates without any gaps.
"	M	"1. JV - Does this mean that EPSS period 1, in the middle of the EPSS period 1 payments, can stop or pause P1 payments where top up as well as weeks used counting should stop BUT worker's compensation payment should still commence? 
2. JV - Do we need a screen in OLIMS with start and end dates to set the status of p1 payments; pause, stop, start, etc with start and end dates and ability to audit/track this.  DK yes we need an OLIMS screen with start/end date and reason code for the suspension.  Delimit/delete is to set old records to inactive (not delete completely in OLIMS, yet it will delimit/delete in SAP).  Active records are not allowed to overlap (Check other OLIMS setups that do this automatically). 
3. JV - Assumption is that payroll is to auto retro when the pause(suspension)/recommence is set or removed. Retro is to the pause start date. Payroll will recalulate to either pay the missing EPSS payments or to claw it back if it was already paid prior to the payse/commence record been activated.  
4. SM - Is the intention to enter only the dates where EPSS payments are suspended (not the dates where it is to be paid)?  20/01/26 DK  Flexibility is required and minimal data entry.
5. SM - is the suspended records to impact P1 only or period 2 and 3 as well? 20/01/26 DK  It is valid for P1/2/3, noted we believe only P1/2 is mentioned in the BRD. Hence work is required for P3, then we need to confirm if we need to add it as an additional item (expect to consider P3 in subsequent phases)
6.SM - If there is a requirement to still see the suspended period once it was cleared for processing then we need further development that is OLIMS specific, but in SAP we should not have the suspended record anymore. Please accept that when the suspended period is lifted, then the suspended period records needs to be removed/deleted (at least in SAP).  They will need to show in  OLIMS if there is BRD  requirements for history display of changes.
7. SM Assumption is that there will only be one record for pause/recommence for a date period. (without any gaps as per the requirement). Can there be multiple start stops with periods in the middle that is still active for P1 , or will there only ever be one pause/recommence record with end date 31.12.9999?  (20/01/26 DK: Multiple is allowed) Query is about the week count and other functionality to occur if the multiple records are allowed and not just one at the end (till 31.12.9999). If only one record then we will need to error if a 2ndary is entered. 20/01/26 DK, multiple is allowed but only one active for a defined period. 
8. JV Assume that the prorata requirement is that it will only take the prorata orp salary, worker's comp external earnings of the relevant split if there is a pause/suspension in the middle of the pay.
9. AZ Assumption is that a suspension would push the end date of the periods forward or back.20/01/26 DK continue with the week count (only if EPss payment was due to be paid $1 check) and still count the end dates for P1/2. This is not policy based, it is an administration requirement. Additional requirement is for another Wt/method of suspension that will  push back/as if the person is not on EPSS at all, eg do not count the weeks or push the end dates out.  To be discussed pending week1 count requirements.  04/02/2026 Matt/DK review BRD to align.     04/02/2026 DK Decision for point 9: Suspension needs start/end dates. Initially the end date will be entered as 31.12.9999.  In the event that there a period of suspension that is to remain active, then a record will be created with an end date other than 31.12.9999. Validations required to not allow any active records to overlap. Payroll is to stop all EPSS functionality for periods where the suspension is active (including week counts).   When the record is set to inactive, payroll need to retro and for that period resume normal EPSS functionality (eg pay epss and do week counts etc).  There is only one WT for suspension, not two as originally requested in Point 9.
10 AZ When a new EPSS is created, what would be the default look of the Suspension screen/table.no records/blank?  20/01/2026 DK Flexible with minimal data entry
11. SM Can we assume the suspensions will all be deleted /set to inactive, or can some of them remain suspension for life.  20/01/2026 Some can remain active for life
12. SM Assume the suspension will always be for dates after  initial P1 payments were paid and these or part of it remains EPSS active/paid.  (This is not the approval flag that goes back to dod, it is always for a period post dod) Dk Confirm this is after some intial payments
13. SM What is a good spot in OLIMS to add the suspension info into (with WC/incident keys)/ or do we need a new screen?  Tbc when we discuss the change of DOD plus  20/01/2026 DK it should be flexible with minimal data entry
14. JV & SM Is the week count to be pro-rated due to suspension that falls mid week or simply follow the $1 rule as we do now, that is, if a part of the week is EPSS (and part is suspended), and $1 was earned in the part that is not suspended, then the week count goes up. @ TBC HSW  pending P1 week count 
15. Matt Additional requirement: Free text Reason codes to be attached to the pause/recommence (suspension) records.   Matt to add to the BRD"
Period 1 payments : control to start, pause and recommence	OLG003 Additional req			Additional requirement is for another Wt/method of suspension that will  push back/as if the person is not on EPSS at all, eg do not count the weeks or push the end dates out.   HSW to confirm
Period 1 payments : control to start, pause and recommence	OLG004 (ID already used for another requirement)	The manual trigger to start, pause and recommence the automation of the SAP Period 1 calculation and payments to also handle retrospective recalculations for any missed payroll periods due to late advice of initiating payments.	M	"1. JV This is simlar to requirement OLG003, if not please expound on the requirement.  20/01/2026 DK Nothing new, covered in OLG003 
2. SM Implying if P1 suspended or  'Not approved to pay', then when suspension or approve is removed, then  we need to auto retro payoll to the start of the suspended period or if approve/unapprove, then retro to the start of of p1 and redo all pay periods from then onwards. This will have a net pay/bank transfer change effect and week count/general backend and frontent calculation effect."
Period 1 payments : control to start, pause and recommence	OLG005	"The commencement, pausing and recommencement of EPSS Period 1 payments are to operate separately to the current Workers Compensation solution (OLIMS P905 creating the IT0014 9WCO record).
The officer is still to receive their workers compensation payments even if the EPSS claim is set “NOT TO PAY”."	M	"
NOTE:  Stop/start is an administrative requirement, HSW is not involved.
1. SM For calrity, ""Not to pay"" in OLG005 is referring to both the Commence P1 payment flag 'start' and the period suspensions(pause and recommence).
It implies worker comp certificates continue to create in SAP and the associated functionality, except for EPSS P1 payments that is to be suppressed. Noted the business advise the  counting of weeks and period end dates are not affected by suspension.  Potential additional requirement for suspension that suppress everything around P1 EPSS including week counts/end dates noted separately - if approved (TBC) then that could imply a gap in the weeks count (for the suspension pause/recommence). 
2. JV Assumption is that s36 and S37 will still require a worker's compensation for weeks count and this will not change.There is a current logic where weeks will not count for s37 and s36 if there is no 4901 (worker's compensation), this is currently a blanket rule and only checks if employee disablement date is during EPSS period. For periods where EPSS payments are suspended, should week count even for s36 and s37 cease as well?   20/01/2026 DK For the BRD requirement of suspension where week counts are to continue to count during suspension, then the S36/37 during such suspension, should count the weeks.  Only the EPSS payment eg 49E9 is not paid.
3. JV - Assume above question's answer is yes, if there is at least 1 day of s36 or s37 in the week split where 4 days of the week is set to 'NOT TO PAY EPSS', should the week count as 1 due to this 1 day being on s37 or s37?  Tbc HSW if the week count table need to be set in decimals for pro-rate and how many decimals and when P2 is to commence given weeks can be at 38.99."
Period 2 payments: control to start, pause and recommence	Heading only			
Period 2 payments: control to start, pause and recommence	OLH001	"Currently the EPSS calculation and payment of EPSS Period 2 are automated as soon as; a) Period 1 has been exhausted and b) a WC certificate is uploaded and the P905 is processed or reprocessed in OLIMS, passing the information to payroll.  

The current design of automation of EPSS Period 2 supplementary supports to be amended that it won’t automatically calculate and pay.  A flag that defaults to “Not approved to pay”.

Workers compensation payments will still need to be paid regardless of the approval status to pay EPSS.
"	M	"1. JV - The Commence P2 payment flag is already in place. Is there any changes to the Phase 4 delivery required?,eg.  
 For clarity, are we extending the manager vs EPSS case officer security as mentioned under additional requirements for P1 Commencement flag to P2 commmencement as well? 21/01/2026 Dk Yes, please add the same rules in relation to security for the P2 commencement flag
2. JV - What is the expected outcome if period 2 commences in the middle of the week due to the suspension and in the event that weeks needs to have pro-rate/decimals applied /or if the P1 weeks count from Dod and not  based on the pay cycle? Should the system calculate prorata top up? If yes please share examples when possible. HSW to be consulted.  21/01/2026 Dk Yes - pro-rate the EPSS payment, also accepting that  a change will cause pay splits and with that all earnings including WC payments will adhere to the additional pay split/s and this could cause rounding differences (also as retro corrections) as per known rounding effects due to splits in payroll."
Period 2 payments: control to start, pause and recommence	OLH002	The EPSS Claims Officer will need the ability in OLIMS to manually approve/initiate the commencement of the SAP automation of Period 2 calculation and payments.	M	1. JV - Apart from flag to tick commencement of P2 payments (already in place), what else is needed on this one? Please expound. Duplicate to OLH001 query 1
Period 2 payments: control to start, pause and recommence	OLH003	The EPSS Claims Officer will need the ability in OLIMS for at any point in time in the claim journey, to stop EPSS payments and when eligibility requirements are met, recommence the EPSS payments. This is to be date driven and the claims officer to enter dates without any gaps.	M	"1. JV - Will the P2 end date be affected by the 'suspension'?  Assuming the end date of P2 is not moved on due to the 'supension'. Assume an additional requirement need to be approved for P2 suspension that will move the P2 end date if required?  21/01/2026 Dk The P2 end date counting is not impacting due to the suspension.   The only way to adjust the P2 end date is via the existing RTW/PID.  No need for additional requirements other than these. SM 04/02/2026  @Dk for P1 the latest requirement is to not increase P1 week counts with suspension (will be in P1 longer), but P2 suspension here says the P2 end date is not impacted, hence P2 will end as per normal, Should P2 end date not be extended with the suspensions (where the end date is not 31.12.9999), so the employee remains in P2 longer as well? 
2. JV - Do we need a separate screen in OLIMS apart from similar requirement of P1 screen with start and end dates to set the status of p1 payments; pause, stop, start, etc with start and end dates and ability to audit/track this. Assume the screens will be managed in one as suspension will be independent of P1 - P3 phases. 21/01/2026  Matt and DK Add new 'EPSS stop payments' record type to Top-Up / Disab. Date / IP Dates” and use 'one' 'EPSS stop payments' record type for both P1/2/3.  TBC HSW if the EPSS stop payments can be regulated by policy to be for a full pay- noted if not, then pro-rate applies, meaning if only 3 days to stop, then we look at the EPSS payment worth for the 3 days and will only drop that 3 days EPSS payment 'positive values' if the'EPSS stop payments' WT from OLIMS is valid for the 3 days.  However, if the 3 days EPSS pro-rate payment value is negative, then keep it negative and continue with the existing fortnight negative check in place.
3. JV - When a period has been paid and has been stopped on the retroactive dates, does the system automatically recover paid EPSS payment? Assume yes from discussion on phase 1 suspension. 21/01/2026 DK Yes, retro correct payments based on whether the EPPS stop payments indicator is active/inactive
3. JV - When the payment is stopped and commences on a future date, should the counting recognize the skip of the payment as well? Does this push back the P2 end date similar to RTW? (SM - Same as item 1.)
5. JV - In the case of mid week re-commencement when payment is stopped/paused, should the weekly payment prorata? Assume yes based on discussion on period 1 suspension. 21/01/2026 DK, COrrect, pro-rate required
6. SM If we have a p2 suspension record (start/end date), then due to retro the employee is not in P2 during a ""P2"" suspension period, but back in P1, then it implies the P2 suspension will not be relevant as the employee is in P1. Is that correct, or should there be one suspension (from-to date) applied to both P1 and p2 (same record to be relevant for both periods)?   Or do we need unique WT's for P1/P2 suspension due to business processes and rules; noted if unique, then manual change is required for the WT's to align with the EPSS period? 21/01/2026 DK Just one suspension record type to be used  (epss stop payments) for all EPSS periods. Can have multiple records.
7. SM What is meant with 'enter dates without any gaps'?  Can there be multiple 'continuous' records for the P2 suspension or just one record  without gaps in dates? 21/01/2026 DK Each individual suspension record (EPPS stop payments record type) will be a continuous period.  HSW to be consulted to enforce this to be for a period, not multiple records in one pay with gaps.
8. SM Can the P2 suspension records remain for life or are they always expected to be set to inactive at some point?   21/01/2026 DK It can remain inactive for life."
Period 2 payments: control to start, pause and recommence	OLH004	The manual trigger to start, pause and recommence the automation of the SAP Period 2 calculation and payments to also handle retrospective recalculations for any missed payroll periods due to late advice of initiating payments.	M	"1. JV Similar to OLH003
2. SM Similar to P1 requirements but the p2 “Not approved to pay”(pause ) flag only retro back to week40/start of P2. The suspension period (start /end) retro to the supsension record start date when the suspension is removed  and will potentially pay missing EPSS payments from this period (similar to p1 suspension), and if entered newly in retro as an active record, then payroll also retro to the start date and adjust EPSS payments (claw back due to suspension active record if that period was already paid in the past), correct?"
Period 2 payments: control to start, pause and recommence	OLH005	The commencement, pausing and recommencement of EPSS Period 2 payments are to operate separately to the current Workers Compensation solution (OLIMS P905 creating the IT0014 9WCO record). The officer is still to receive their workers compensation payments even if the EPSS claim is flagged “NOT TO PAY”.	M	1. SM Undestand med cert is still in SAP and we only impact P2 EPSS payments.  Workers comp (WT 4901) is still paid.
OLIMS: PBRI transitional claims - Claim Management	Heading only			SM This line has been removed in the signed-off BRD. Ignore, it is not relevant anymore.
OLIMS : PBRI transitional claims - Claims Management	Heading only			
OLIMS : PBRI transitional claims - Claims Management	TR001	PBRI – transitional claims – start in Period 1 or part way through Period 1. Ability to offset weeks from the 39 weeks period.	M	"1. JV - Assume we want 'transition to EPSS' incidents to have a 'start counting from' field so it takes into account the weeks used due to PBRI. Is the understanding correct?  Refer to the link 
2. JV - Where in OLIMS do we want this functionality to be in place? SM- propose 'Top-Up / Disab. Date / IP Dates”  
3 SM @David Is the earliest effective pay week that an employee can transition to EPSS period 1 a week that falls within dates 1 Oct 2024 and onwards and will we have a medical certificate WT 9WCO that aligns   ?
4. SM See TR012 for assumptions around P1 vs P2 weeks
5.TV Offset calculation : “part way through Period 1” needs precise maths how PBRI weeks convert to EPSS weeks (rounding and partial-week handling). SM, /or/ is a week still a week, no factors of weeks?. Tbc HSW
6. AZ User would be entering the number of weeks which would be deducted (X) from the 39 weeks of P1 (39 - X weeks = new number of weeks of P1). Therefore, the new P1 start date would be the (""informed"" transitioned date/P1 commencing date) + (39 - X weeks) . Is my understanding correct? If so, payroll will have to check for the actual P1 week duration in every  existing  39th week check.Sm- see link. Existence of P1 or P2 PBRI to EPSS should take precedence in counting.
7. SM  Understand there is currently an PBRI to EPSS transition flag but it has not been used as it was faulty in that it perceived EPSS valid from the dod (first certificate) instead of 1.10.2024.  Is that correct that the PBRI to EPSS transition flag has not been used at all to date and is not expected to be used until fixed?  
8. SM The understanding is the credit weeks paid under PBRI will never be paid as EPSS P1.   We need a date when EPSS P1 is to commence and PBRI is to cease and with that the weeks that will never be paid as EPSS P1. We need the weeks already paid as PBRI and EPSS Week counts need to commence from the date provided only and the first week count is to commence as if the provided weeks was already counted, eg. provide 10 weeks, then the first count is 11 weeks.  (week count increments still depends on rules of increasing the week count, eg. $1 rule or S37/37). Until the requirement to start the week cycle on the dod, the current setup is to be accepted where a week is defined within a pay cycle.   
9. SM -The PBRI period 1 transition and weeks discount  need to be  linked to WC/EPSS incidents, section of act that is primary at the time of transition.  Business process consideration: Scenario when the employee change primary incident in retrospect and if it overlaps with the P1 PRBRI transition changes.
10 SM Business process consideration if PBRI payments changes in retrospect,then the transition date/weeks potentially need to change 
 "
OLIMS : PBRI transitional claims - Claims Management	TR002	PBRI – transitional claims – start in Period 2 or part way through Period 2.	M	"1. JV - Assume we want 'transition to EPSS' incidents to have a 'start counting from' field so it takes into account the weeks used due to PBRI and create a separate period for period 2 where the 7 years is reduced if PBRI transitioned to Phase 2 directly? Is the understanding correct. SM See worksheet link
2. JV - Where in OLIMS do we want this functionality to be in place?  22/01/2026 DK A new development /screen when the EPSS transition was chosen, driven from the PBRI case overview.
3 SM @David Is the earliest effective pay week that an employee can transition to EPSS period 2 a week that falls within dates 1 Oct 2024 and onwards and will we have a medical certificate /WT 9WCO that aligns   ? 22/01/2026 DK There can be a transition from PBRI to EPSS prior to 1 Oct 2024. Manual 'EPSS payments required for 'epss' payments prior to 1 Oct 2024.  Recurrence date will only be from 1 oct 2024.  Additional requirement: New WT required for the EPSS payments related to pre 1.10.2024 payments:  Matt and DK: Please provide the WT maintenance form for the new WT. Please provide reporting requirements. Expect manual or load via SAP (not load via OLIMS)
4 TV :How exactly do prior PBRI payments convert into a reduction of the 7 year Period 2 entitlement? (TR006 says “reduce by 65 days” in an example rule/formula). 22/01/2026 DK   Count 7 years from the P2 recurrence date and then deduct the calendar days provided to derive where P2 ends. Example: Recurrence P2 date is 30 Jan 2025  Normal +7 years is 'around' 30 jan 2032, but if 10 calendar days PBRI offset was provided then the 7 year now ends 20 Jan 2032.   
5. AZ Assuming number of days to offset P2 which would be deducted (X) from the 7 years of P2 (7 years - X days = new number of days of P2). Therefore, the new P2 start date would be the (""informed"" transitioned date/P2 commencing date) + (7 years - X days) . Is my understanding correct?  22/01/2026 DK, Correct
6. SM starting part way through P2(example 5) or on day 1 of P2 (example 4), implies we have no P1. Commencement of P2 depends on completion of P1 at the moment. This change with P2 recurrences, 
Assumptions (please confirm): 
-The data entries for this requirement overwrites the existing commencement rules for P2.
-A specific date for transition to P2 is required for data entry. This needs to form a split in pay and should only from this date pay EPSS P2 (and later P3) payments. It does not qualify the employee for P1 payments.
-A field for days already paid under PBRI is required. This can be zero for example 4, but for example 5 we expect the calendar days that we need to reduce the 7 year P2 count with. Hence the 7 year count is now reduced with the days provided and RTD days continues to push the date out (already in place). 
-  Validation: Do not allow recurrence P1/P2 to be entered if the dod is equal or greater than 1.10.2024 (because that implies EPSS already).   A recurrence  from PBRI to EPSS can only be to P1 or P2, not both per incident.    Once P1 or P2 recurrence was set, then the weeks/days can change, but the system will not allow to change from P1 to P2 or P2 to P1 as this is a rare occurance for a big effort.
-entry or changes to the PBRI P1/P2 transition 'recurrence' effective date should cause a payroll retro to that date (the change is in retrospect, payments are affected)
- normal p1/p2 rules for payment applies, need 9WCO etc.
-The PBRI period 2 transition need to be  linked to WC/EPSS incidents, section of act that is primary at the time of transition- linked to the certificate.  Business process consideration: Scenario when the employee change primary incident in retrospect and if it overlaps with the P2 PRBRI transition.  TBC HSW

7. Can we maintain OLIMS under both PBRI and EPSS node once transitioned.? 21/01/2026 Matt, We need to edit and view both PBRI and EPSS nodes onces transitioned to EPSS
8. The WC and the incident number as well as the dod remains as is once transitioned from PBRI to EPSS
9. Intention is for a new screen to record the EPSS transition information, the screen is branched to once the EPSS transition flag is selected within the PBRI case screen. The new screen is maintainable  as standalone as well, because the e P1/2 commencement date/weeks/days can be changed again later.
10. The EPSS case overview screen to show the PBRI transition recurrence date and the weeks/days Pending if P1/2 transition was relevant.
11.  The dod change is only for EPSS and exclude change for incidents that transitioned from PBRI to EPSS.
12.  Propose when in EPSS case overview then the Top up/DOD/IP date only shows and allow changes to record types related to EPSS (Date of Disablement & EPSS Stop Payment)), and if in the PBRI case overview, then only show PBRI record types (Top-up, IP Claim Details. Date of Disablement).  Propose removing EPSS p1 EPSS P2 record types (EPSS Period 1 & EPSS Period 2) as these are not used and has no data in production.    
13. The Dod can not be changed on the Top up/DOD/IP screen  via the EPSS case node when the incident is a transition from PBRI to EPSS. In this case the dod is not of relevance, it it the recurrence date that drives when EPSS commence."
OLIMS : PBRI transitional claims - Claims Management	TR002  Additional requirement			 Additional requirement: New WT required for the EPSS payments related to pre 1.10.2024 payments:  Matt and DK: Please provide the WT maintenance form for the new WT. Please provide reporting requirements.  Expect manual or load via SAP (not load via OLIMS)
OLIMS : PBRI transitional claims - Claims Management	-	"PBRI Transitional Claim Scenarios:
1.	Date of Incident (DOI) before 1 Oct 2024 but Date of Disablement (DOD) after 1 Oct 2024  no action OLIMS converts to EPSS claim automatically
2.	DOI and DOD prior to 1 October 2024 & no PBRI (wt 4909) payments made  Admit to EPSS and starts Period 1 benefits
3.	DOI and DOD prior to 1 October 2024 & received PBRI (wt 4909) payments e.g. 10 weeks  Admit to EPSS and reduce Period 1 - 39 week benefit (eg reduce 10 weeks from 39 and remaining benefit is 29 weeks)
4.	DOI and DOD prior to 1 October 2024 and exhausted PBRI cl 129 payments and no Income Protection claim was admitted by TAL  Admit to EPSS and starts Period 2 – 7 year benefit (skips Period 1)
5.	DOI and DOD prior to 1 October 2024, exhausted PBRI cl 129 payments and had received Income Protection payments from TAL (e.g. 6 months of payments from TAL)  Admit to EPSS and reduce Period 2 – 7 year benefit (e.g. 6.5 year benefit not 7 years)

"	M	"1. JV Are there potential previously 'secondary' incidents that have been paused in the past due having a new primary incident that can be converted to EPSS?  22/01/2026 DK Secondary claims does not count P1 weeks (we only process primary claims in SAP as that is the 9WCO certificates send to SAP for processing). This is the current policy decision. 
2. TV : Scenario 1 explicitly states ""no action… converts… automatically"" but provides no manual path, so clarifying error handling is necessary @Theo Scenario 1 is what is in place now, code auto accept the incident as EPSS if the dod is from 1oct'24 onwards.
"
OLIMS : PBRI transitional claims - Claims Management	TR003	For scenarios 2 to 5 above, the EPSS Claims officer needs a facility in OLIMs to transition the claim from PBRI to EPSS for both EPSS claim management and payments.	M	"1. SM Please confirm scenario 2 to 5 will have a medical certificate (IT14 WT 9WCO) when EPSS payments are due to be paid.  22/01/2026 Dk There will be a cert.
2. SM Please confirm scenario 2 to 5 will in general have the same payroll input as for normal EPSS employees. 22/01/2026 Dk There will be a cert.
3. SM Expound on transition to EPPS claim management requirements please.  22/01/2026  All requirements were covered.  DK Once EPSS, then the employee can be edited under EPSS.  The incident can still be edited under PBRI as well. The P1/P2 recurrence details are inititiated from the PBRI case management screens, but output is viewed in EPSS case management "
OLIMS : PBRI transitional claims - Claims Management	TR004	The Claims Officer requires the ability to set in OLIMS what EPSS period the officer will commence in; either Period 1 or Period 2.  An override feature is required if the initial selection is incorrect.	M	"1. SM Assumptions to tbc's :
1.1. In the event there is a change back and forth between P1 or P2 for a specific PBRI to EPSS transition for a  WC claim/incident, then the obsolete selection needs to be removed first, then the new selection can be made.    Only one to be valid at a given time. 22/01/2026 DK We will not change between P1 and P2 
1.2. Is it required to keep the old selections and set them to inactive (which means we need to keep history of the changes saved in tables) or is will just one set of  field/s suffice to record the PBRI transition to EPSS per  WC claim /incident?  With one set for these scenarios we will only have either P1 with the weeks credit / or/  we will have P2 start date with the days to reduce the P2 7 year period, we won't see how it was changed from one to the other in OLIMS, we will just see the latest.  22/01/2026 DK We will not change between P1 and P2 "
OLIMS : PBRI transitional claims - Claims Management	TR005	For PBRI transitional claims starting in Period 1 benefits, the Claims officer requires the ability to reduce the 39 week benefit (reduce to 29 weeks) to recalculate the remaining Period 1 benefits and the ongoing utilisation of Period 1 weeks that will determine the transition to Period 2 start date	M	
OLIMS : PBRI transitional claims - Claims Management	TR006	For PBRI transitional claims starting in Period 2 benefits, the claims officer requires the ability to reduce the 7 year benefit (reduce by 65 days) to recalculate the remaining Period 2 benefit and the ongoing utilisation to determine the Period 2 end date	M	"
1. TV : Is 65 days a fixed default or should the reduction equal prior IP duration (e.g., actual days/months of TAL/PBRI)?  22/01/2026 Matt  65 is an example, the actual calendar days will be provided - use the days to bring the 7 years forward.

2. For P2 recurrence, what it the last P1 salary to be used as input to the P2 salary calculations? 22/01/2026 DK Please use the salary as at the day before the P2 recurrence date.  The 'salary' definiton (WT wise) is the same as for P2 definitions. Noted if the recurrence was to P1, then the P2 salary start value, is still as at the last week of P1- that is becuase  P1 will then play out in payroll calculations. "
OLIMS : PBRI transitional claims - Claims Management	TR007	The Claims officer will require the ability to amend the initial and any increases in Period 1 Ordinary Rate of Pay to ensure the correct ORP values are passed from OLIMs to payroll for Period 1 payments	M	1. AZ This is simlar to requrirement OLG003, if not please expound on the requirement.  22/01/2026 DK, Correct this is the same and we do not require the ORP rate override as stated already
OLIMS : PBRI transitional claims - Claims Management	TR008	The Claims officer will require the ability to amend the Period 2 base salary to ensure the correct 75% of loaded base salary value is passed from OLIMs to payroll for Period 2 payments and for indexation of period 2 weekly payments	M	"22/01/2026 DK The P2 salary overwrite requirement is obsolete. - below questions n/a
1. JV Overwrite Period 2 Salary? P2 salary is already dynamic and based on period where the claim is being processed, do we still need to overwrite?  
2. SM What sparked this requirement? Do we need to fix the P2 salary calculation/How will the business decide /calculate the P2 salary  differently to the current system setup?  
3. Is the P2P amendmend an 'add-on' to the SAP calculated P2 salary, or is it an 'override' of the SAP calculated P2 salary? 
4. SM RISK: Any static P2 salary provided by the claims officer has a risk of not been amended again manually to align with the employees retrospective master data changes.
5. SM How is the P2 salary amendment to be processed in payroll periods? The P2 salary is currently as at the end of P1, increased with subsequent  CPI indexes.    Do we need a recurring (IT4) with from / end to dates that then amend the P2 salary for the processed pay periods that falls within the from/end dates, /or/ do we just need one field in OLIMS, that when filled is to be used instead instead of the P2 salary at the end of  P1 including CPI/or excluding CPI?  Note, if the overwrite includes CPI, then it will need to be revised every year.   
6. SM@David. Please confirm if this requirement remains firm. If so, where in OLIMS will be best positioned to provide the input? 
6.1 SM The input (if for a period), can not be with the screen that shows IT8 basic pay from SAP as this is dynamic as per retrospective changes
6.2 SM  If the amendmendments are for a period, then assumption is that the effective date will need to force payroll splits.
6.3 SM  If the amendmendments are for a period; Is reporting required to alert when the amendment is not aligned with IT8 basic pay effective dates?  (Amendments forced to align for IT8/basic pay on entry could still get out of sink when the basic pay changes 'after' the 'P2 salary amendmend')/or is the amendmends not lined up with the IT8/basic pay effective dates?
6.4 SM Is history of changes in OLIMS required, that is once entered, set to inactive, or can records be deleted when incorrect?
6.5 SM Assumption is the P2 salary override is on a WC/EPSS incident level
6.6 SM Assumption is the p2 salary is in totality, please confirm there is no existing calculations for P2 salary that need to be done on top of the override value.
7 SM Any changes to the P2 salary will pending the entry method require payroll retro back to the start of pay 2 or if entry is periodic,then to the start of the periodic change. This include retro if an entry was corrected. Please confirm the understanding that this can cause either claw backs or additional payment as driven by the new salary for all pay periods we retro to. 
  
"
OLIMS : PBRI transitional claims - Claims Management	TR009	New wagetypes to be created for Period 1 and Period 1 manual adjustments for PBRI transitional claims for reporting the cost of the scheme.  This will have the same characteristics as the current Period 1 wagetypes; FICO, not attract SGC, flagged for PAYG, retro back to 01 October 2024	M	"22/01/2026  DK  We do not need new WT's specific to PBRI transition to EPSS. They can be paid via the EPSS WT's and the EPSS adjustment WT's. This requirement is obsolete
1. JV - For adjustments, do we need to capture the exact incident the adjustment relates to for reporting purposes? Note that the top up codes are assigned to incident numbers in V0 table, likely need to be able to manually assign the adjustent wagetypes to the v0 table splits as well.  SM- If the adjustment is not overlapping with the associated WC/incident in WT9WCO, then we can't derive this info as for top ups -  the business will need to add the info/or enter in OLIMS from a screen that relates to carry the info across.  Having this info will be great for reporting, but the business to confirm if this can be provided and OLIMS load screens then need to accomodate.  Additional requirement: DK 22/01/2026 Adjustments must link to the associated incident in the data been created.  The adjustment 'must' only be paid if it overlaps with the same Wt 9WC0 incident etc.  External earnings need to record the incident/WC and reason code and is only to reduce the EPSS payment that matches the 9WCO/as per the external earning date. This requirements are first to be approved for further discussions if to be included in phase 5. If implemented in retrospect, then we expect lots of claims due to adjustments and increases in payment due to the external earnings. 
2. SM Copy of WT 6A48 and 49E9 WT's for PBRI transisitioned to EPSS; @David TBC Descriptions:   PBRI EPSS P1 adjustment  /   PBRI EPSS P1 Top Up  - 22/01/2026 DK Requirement is obsolete"
OLIMS : PBRI transitional claims - Claims Management	TR009 Additional Req			"Additional requirement: DK 22/01/2026 Adjustments must link to the associated incident in the data been created.  The adjustment 'must' only be paid if it overlaps with the same Wt 9WC0 incident etc.  External earnings need to record the incident/WC and reason code and is only to reduce the EPSS payment that matches the 9WCO/as per the external earning date. This requirements are first to be approved for further discussions if to be included in phase 5. If implemented in retrospect, then we expect lots of claims due to adjustments and increases in payment due to the external earnings. 
Also consider the PBRI adjustment WT as per TR011   TBC DK: Due to discrepancies and for a full disclosure, please confirm the WT's to refllect the WC/Incident in pay results and when to cross check against the WC/incident in 9WCO before applying the WT payroll rules and whether the change is in retro or from a future date and data  entry or retro impacts; if not to cross check with 9WCO, should payroll add the WC/incident that overlap with the WT as if that is the WC/incident relevant?:
WT 3670 external: Data entry with WC/Incident? : No, Reflect in pay results: No, Cross check with 9WCO : No, Change in retro : n/a, Data entry impacts:n/a; Derive 9WCO WC/incident that overlap with WT and save in pay results against the WT; if yes, then retrospectively?  (may show as a new value for the incident in retro reporting if there are any reports) : ? 
WT WC external for detached (new WT) Data entry with WC/Incident? : Yes, Reflect in pay results: Yes, Cross check with 9WCO : Yes (eg. if the effective date is not aligned with 9WCO, then it will not deduct as external earnings);  Change in retro : Yes (noted detached is new, but could be hired in retrospect); Data entry impacts: Entry via OLIMS only, Olims integration to SAP IT15 to reflect the WC/incident as is done for WT 9WCO in the assignment field.
WT 6A48 6A49 (adjustments) Data entry with WC/Incident? : ?,Reflect in pay results: ? ; Cross check with 9WCO : ?;  No Change in retro : ?, Data entry impacts: ? ; Noted; Master data impact if we need alignment to 9WCO is that all entries will need to be removed and re-entered.      Derive 9WCO WC/incident that overlap with WT and save in pay results against the WT; if yes, then retrospectively?  (may show as a new value for the incident in retro reporting if there are any reports) : ? 
WT 49E9 49S9 (EPSS payments):    Data entry with WC/Incident? : n/a (system generated),Reflect in pay results: yes, Cross check with 9WCO (yes, in place), Change in retro : Yes, Data entry impacts: None, derive from 9WCO; Reporting impacts: Corrections due to this implementation for 49E9 and 49S9 will likely swap 'reporting' of payments of these WT's from one incident to the other at the time of the first pay retro post implemementation to pay periods where the incident changed mid week-  This is because we currently have the latest incident in the week recorded against 49E9 & 49S9.
JV : For 6a48 and 6a49 adjustment, should it impact the top up and week count? "
OLIMS : PBRI transitional claims - Claims Management	TR010	New wagetypes to be created for Period 2 and Period 2 manual adjustments for PBRI transitional claims for reporting the cost of the scheme.  This will have the same characteristics as the current Period 2 wagetypes; FICO, not attract SGC, flagged for PAYG, retro back to 01 October 2024.	M	"22/01/2026  DK  We do not need new WT's specific to PBRI transition to EPSS. They can be paid via the EPSS WT's and the EPSS adjustment WT's. This requirement is obsolete
1. JV - For adjustments, do we need to capture the exact incident the adjustment relates to for reporting purposes? Note that the top up codes are assigned to incident numbers in V0 table, likely need to be able to manually assign the adjustent wagetypes to the v0 table splits as well. Refer to  REQ# 'TR009 Additional req'
2. 2. SM Copy of WT 6A49 and 49S9 WT's for PBRI transisitioned to EPSS; @David TBC Descriptions:   PBRI EPSS P2 adjustment  /   PBRI EPSS P2 Supp. Pay 22/01/2026 DK Requirement is obsolete"
OLIMS : PBRI transitional claims - Claims Management	TR011	A manual adjustment wagetype is required for PBRI Base Salary Adjustment (currently wt 4909) in the event the EPSS Claims officer need to perform any retro adjustments	M	"1. JV - For adjustments, do we need to capture the exact incident the adjustment relates to for reporting purposes? Note that the top up codes are assigned to incident numbers in V0 table, likely need to be able to manually assign the adjustent wagetypes to the v0 table splits as well. @Julius, Noted 4909 has the word adjustment, but I believe this is the equivalent of top up/epss payment for PBRI.  Therefor system generated and WC/incident to derive from 9WCO. 22/01/2026 DK The new WT will need to derive the incidents from 9WCO in reports if we do not record the incident details. DK : Impacted reports are to be provided for review.   03/02/2026 SM @DK, please read this with TR009 Additional requirements- if the choice is to derive the WC/incident for overlapping WT's then the reports can still read it but with the retro impact as noted under TR009 Add req. However, there might still be reports to be identified to read the WC/incidents for reporting where it is not doing it now- Please liaise with NSWPf on the reports.
03/02/2026 SM: Noted, there is no new WT's, the existing EPSS WT was approved for use, @Dk, please acknowldege.  See TR009 Additional requirements for decisions on which EPSS WT's are to hold the WC incident.
2. SM  This new WT is a adjustment to the generated WT 4909. No change to WT 4909 functionality.
3. THis adjustment requirement is related to dates where the employee was paid as PBRI, that is paid via WT 4909
5. SM Please provide the WT maintenance form for the new PBRI adjustment WT. 22/01/2026 Matt & DK   
SM: 03/0/2026 @DK Confirm please: For clarity; This adjustment WT is to be used in the PBRI period (not for dates when transitioned to EPSS) All the EPSS WT's are used after the PBRI transition to EPSS, eg 3670 49e9 49s9 6A48 6A49.

"
OLIMS : PBRI transitional claims - Claims Management	TR012	In OLIMS EPSS Case Management > Claim Status tab, a new ‘Type of Claim’ in the drop-down menu to be created named “PBRI Transition to EPSS”	M	"1. SM Please show the screen: Claim status screen within the EPSS node
2. SM Please confirm the incident and WC number remains the same for the PBRI employee - is the 'type of claim' a one to one link to the WC claim and the incident combination?    Yes, the PBRI and EPSS claim # remains the same.  This screen (claim status) is just a reporting screen and it does link with the incident details
2.1SM Refresh memory please, is there not already a PBRI transition to EPSS, how is this different?  n/a already discussed
3 SM Please confirm what payroll behaviour is expected when the new the transition '“PBRI Transition to EPSS' is chosen, noting more info is likely required to commence as EPSS, like weeks discount for P1 or P2 start info.  Is this just a reporting feature or is payroll to assume EPSS effective 1.10.2024 if there is no P1 discount weeks or P2 start info ?    :  This is just reporting,
Note auto pay retro that could see retrospect changes from Wt 4909 to PBRI payment WT's and with that potential increase/decrease in salary for the retro periods .   n/a Just reporting screen requirements
   
Business processes required to swap manual adjustments for retrospective changes to PBRI adjustment WT's whereas payroll should take care of swaps of the system generated EPSS payment WT's vs PBRI payment WT's.      n/a Just reporting screen requirements
4. SM assumption is the transition from PBRI to EPSS  will never be before 1 Oct 2024, but the employee can remain PBRI after 1 Oct 2024 and then transition to EPSS on a date after on or after 1 Oct 2024? n/a Just reporting screen requirements
5 AZ Is this new status for reporting  purposes only ? 22/01/2026, Yes, this is for reporting  to know if it is a PBRI to EPSS transition Not relevant to payroll.
6. Additional requirement: DK and Matt request the claim status is have limited selections pending the type of claim.  Limitations are to be provided "
OLIMS : PBRI transitional claims - Claims Management	TR012 Additional req			6. Additional requirement: DK and Matt request the claim status is have limited selections pending the type of claim.  Limitations are to provided 
OLIMS : PBRI transitional claims - Claims Management	TR013	A report will be required to report on admitted PBRI claims to EPSS, this will be dependent on the technical solution.	M	"1. SM Please provide a layout of  information that the report is to provide as a minimum. Eg. Employee number, WC claim number, Incident number, Week number (info) from where PBRI is paid as EPSS 22/01/2026 Matt We need to add P1/P2 recurrence info into the EPSS on duty claim report. 2.4.3 29/01/26 MJ: added to BRD
2. SM Is PBRI to EPSS possible for a detached officer ?  If yes, do the report need to list the detached officer employee number as well/ Or is that OK to be looked up manually when that occur (if the number is needed)?  22/01/2026 DK We do not expect detached officer to transfer from PBRI to EPSS under his detached employee number; it could have happened that he transferred from PBRI to EPSS when he was still active (his old number).   Assumption is to at least show the old and the new employee number in case of detached, however the reports where this is required needs to be defined under the reporting requirements."
Employee Contributions	Heading only			:
Employee Contributions	CE001	"The 1.8% employee contribution is currently split into 2 separate fund codes in IT0220 (9DDM & 9DDN) and 2 separate wagetypes (104F & 104G) that appear on the payslip to differentiate the Death and Off Duty Income Protection insurance cover.
 
The new requirement is to have one (1) fund code and wagetype to appear on the payslip as a total 1.8% contribution.
"	M 	"
1.SM Under BRD outstanding:   Please confirm if TAL require a membership number for contribution reporting.  If TAL require a membership number, the separate IT0220 fund codes for Aware and TAL will need to remain. DK 29/01/2026 TAL do not need a membership number, they only need an employee number.   All 1.8% goes to the same GL. Income off duty paid to TAL via invoicing (not payroll, but via accounting).  Aware payments is via payroll.  
2. SM Assumption is a new fund and a new EE contribution WT, not reuse either 9ddl /m with changes from the go live date. Reason is that fund code and wage type descriptions can not change effective dated, it change for the past as well impacting historical checks.    (A new fund will also mean we do not need to do and undo config for different test cycle go live dates) Please confirm if the business need to keep the old fund and WT Descriptions as is.    02/02/2026 DK Prefer to keep history of the fund name/description
3. JV - What is the wagetype characteristic and name (max 24 characters) of the new wagetype? Should we just combine the total values of 104F and 104G and will it have the same characteristics?.  02/02/2026 Matt WT maintenance form to be completed.
4. JV - What is the FI posting requirement of this wagetype, eg like 104F GL 460702? 02/02/2026 Matt WT maintenance form to be completed.
5. JV - What will the new fund code be named (max 40 characters)? 02/02/2026 DK Fund code desc: Police Officer Ins contribution 1.8%.  WT =  Police Officer Ins 1.8%
6. JV - How will the new fund code work in terms of the backend validations/processing? Should the system work as is and we just combine the total value in the end to the new wagetype code?.  SM Eg. Do we cumulate default empl % from old funds to equal  1.8%(0.3+1.5)?   For backend premium fund code percentages, purposes, do we create a new super fund, eg. 9DDO with percentages that equal only that of the existing 9DDM eg.total   Employer 0.00, ON duty 0.16, OFF Duty 0.14, TPD 0 ,IP prem 0.00.   Age based restrictions are like 9DDM- currently the premiums and the on/duty/off duty based on salary (all 9ddm generations) are up to Age 65 (turn 66, then not to pay the premium deduction or generate the salary based values) - the same will apply for the new fund code. Note: P4 additional requirement.   P4 additional requirement. This impact P4 requirements that applied 67 for the insurance super fund calculations as well - needs to be adjusted.   
Note, Detached employees will not have insurance premiums.
7. SM Data entry validations proposed, please confirm:  a) Do not allow employer % for 9DDO (new fund) to be entered b) Only alllow 9DDO for ESG XA  to XF c) Do not allow 9DDM/N together or individually effective from when this change goes live. Note:if we continue to use 9ddm or 9ddn, then, instead of checking both exist at the same time, check, effective go live that  only one exist at a time.
8. SM Currently 104F	Police Ins (D) (relevant to 9DDM), has two WT's generated to total the value of 104F (saved in 104H/I).  The On duty 0.16 percentage as recorded against fund 9DDM impacts this calculation.  What is the new requirement when we only have one fund, is this obsolete or do we need to apply the cumulated % for on duty (old 9ddm +9ddn On duty %) against the new EE contribution WT that will be utilised against the new fund?  
104H	Police Ins (ODD)
104I	Police Ins (OFD)
DK 02/02/2026  The old generation of WT's 104H and 104I is OBSOLETE.  The new fund/new rule is to have just one EE contribution of 1.8% and to continue with the salary based calculations (eg 0.16 WT 9EPP and 0.14 9EPQ) as defined currently for fund 9DDM in table ZTPD_FUNDS.   This implies the %'es in table ZTPD_FUNDS for the old fund code 9DDN is obsolete and it does not cumulate to the new fund code. Only 9DDM %'es are valid going forward (whether we keep 9DDM or whether against a new fund, we only use values as for 9DDM in ZTPD_FUNDS)  
9. Matt 02/02/2026  No change to STP reporting:  Reported as Gross in STP1, post STP2 they report SSacr other in stp2. 
"
Employee Contributions	CE002	The effective date of this change is from the start date of the payroll period this change is moved into the SAP production environment and not to retro back to 01 October 2024.	M 	"02/02/2026 Aruna, To consider on duty and off duty rate changes on 1 Oct 2026 pending the go live. It could be best to go live with the fund change after the rate changes so the rate changes are not in retro.Retro differences will still calculate against the old funds and the old WT's.  This could impact for any changes in retro that impacts the insurance premiums (it will reflect against the old WT's).   
Aware billing report is to be enhanced for the new super fund and WT - Tech team"
Employee Contributions	CE003	"The Aware Super policy for Death and Terminal Illness cover has a change in the employee contribution percentage, rate to be provided.
This may impact the vendor Aware Premium Billing report when disbursing funds.
"	M 	"1. JV What is the change in the employee contribution percentage?   DK 02/02/2026 1.8 % is static. The death components may change (this is what is paid by NSWPf, this is not the Employee inusurance contribution)
2. SM Please expound.  Noted, if the rate changes are as per existing funtionality then a change prior to go live will be reflected against the old fund (2 funds, multiple reporting WT's) setup and if after go live, against the new (one) fund setup. If the effect to the Aware prem billing report implies we still need separate funds, then that nullifies this request. Retro changes before go live will still use the old setup of two funds."
Period 1 week count logic	Heading only			
Period 1 week count logic	P1001	"The first week of period 1 should start from the first date of incapacity and full weeks should be counted from that date in 7-day blocks.
Period 1 should therefore be a full 39 weeks. The count of weeks should not be altered to align with the pay cycle.  However, the application of whether a week is counted as part of the period should continue to comply with the previously clarified interpretation of period 1.  
"	M 	"1. JV - Full weeks based on incapacity is a big change in the functional design of week counting. 
2. SM - Does this imply the WC solution (WT 4901) is also to follow weeks as per the date of incapacity? The WC solution, eg. WT 4901 generation is based on week 1/2  of the 'pay cycle' and reduce the EPSS payment as per the 'pay cycle' week 1 and 2. (Checks for week1/2 are all over in the payroll rules). WC does not follow weeks that count as per the first date of incapacity.  This EPSS requirement will not be aligned with WC.   
3. SM counting weeks from incapacity could mean a fortnight have 3 weeks represented and the week count could increase with 3 versus the maximum 2 at the moment. Any issues on that?  
Eg. Prior pay had 6 days of  a week at the end of the pay. Then the procesed next pay had 1 day of the prior week finishing(making the total of 7 days), another 7days (full week) and another 6 days(part of a week). How does this impact the week count during P1 if both the prior pay 6 days and the current pay  1 day/ 7 days and 6 days had $1 EPss P1 payments or if all were  S36/37? Should the prior pay 6 days add 1 week and the 1 day of the current pay not add 1 week because it was already added?  What if the 6 day of the prior week had 10cents EPPS payment and the 6 day of the current pay had 90cents, then assume we need to cumulate and the the 1 week is added in the current pay due to 0.10+0.90=$1, but not added the prior week s 0.90 is less than $1, then if the current pay 7 days and  and the last 6 days had $1 then it means, the current pay will have 3 weeks that increase the week count, not just the max 2 weeks as per the current solution.   A huge development will be required and somehow payroll splits will be required not based on master data, but based on the employees individual week count. This will add system processing time and the processing time impact is not known.
4. SM Consideration for factored Weekly caps (eg. if parts of 3 weeks are valid in the fortnight pay, then we probably need a fortnight cap that is pro-rated /change to existing requirement t be defined) and assumption the fortnight negative checks remain?
5. SM We really need to review the full existing solution /requirements and query every piece of it as the current solution is calculating separate for week1/2.  Week1/2 is a main driver not only for EPSS but also for WC.  It might be that WC needs to change first, then EPSS?  
This is not a simple change and the expectation is that the scoping will need to be in a next phase and most likely a item by itself.    
HSW and SAP support Workers comp expert to be part of the discussion.  DK Provide examlpes of relevance considering pay splits will need to change to align with EPSS DOD and not just based on week1/2 of the pay cycle.
"
Period 1 week count logic	P1002	The end date of Period 1 can be during any day of the payroll week until the full 39 weeks has been exhausted.	M 	1. How do we calculate the prorata of the top up in case it ends in the middle of the week?  Are you able to share sample calculation formula for the prorata @Julius  SM If we can somehow magically force a payroll split at the end of period 1, then I expect factoring will take care of the calculations,  but the current solution finish P1 at the end of a pay week, hence if we do not implement 2.3.7 in P5, then a mid week end of P1 will be a later phase. Ps the magic splits will need to be happening every pay for 2.3.7 as the solution/requirement for week1/2 is then irrelevant, there might be week1/2/3.
Period 1 week count logic	P1003	Period 2 will commence the day after the end date of Period 1	M 	1. JV - From last phase, P2 does not automatically commence after period 1 and payroll week needs to end, what is the purpose of this change? @Julius SM If 2.3.7 is implemented, then I believe the idea is that the magic payroll splits will be crucial to figure that P2 does not start at the end of a week1/2 but potentially at say a week3 that could be mid a 'pay cycle week'.   Until 2.3.7 is implemented, this requirement can't be fulfilled.
Period 1 week count logic	P1004	Days of Total Incapacity during are included in the week count	M 	"1. JV - Can you expound on this? Is this the s36 and 37 requirement where employee is fully incapacitated? This already includes in the week counting based on Phase 4 requirement.
2. SM - any days of S36/37 within a week means the week count increase, any changes, other sections?  Or was this just  noted for completeness?  DK Tbc if that means S36/37 (or other sections like S40 if $1 EPSS paid)  for 3 out of 7 days of the employees week equals a factor for the weeks count of 3/7 and if we round up or down or if we need decimals.  TBC if this requirement is only going together with the weeks count based on the DOD start date of if to be done regardless, then provide more samples and let us know if the factor is for the period of the section in the week or daily?"
Period 1 week count logic	P1005	Days of Partial Incapacity with an EPSS payment are included in the week count	M 	"
1. SM - $1 Epss payment in the week is required for all sections other than S36/37 in order to increase the week count.  Is this correct, or is there a more section  granular definitions to define partial incapacity  vs total incapacity?
2. SM What is meant by 'days' of partial incapacity?
DK See querie under P1004"
Period 1 week count logic	P1006	Days of Partial Incapacity with no EPSS payment are NOT included in the week count	M 	"
1. SM Expect partial incapacity to be any section except S37/37 and these partial incapacity sections need $1 epps payment in a week in order to increase the week count. Is that correct?
2. SM What is meant by 'days' of partial incapacity?
DK See querie under P1004"
Report:  Data extraction	RPA001	SAP OLIMS, HR and Payroll data to be extracted into data lake or cube to allow the business to build their own reports and model data for operational and scheme wide reporting needs	M 	1. AZ Data is stored in tables which can be read by a report.
Report:EPSS On Duty Claim Report	Heading only			
Report:EPSS On Duty Claim Report	RPB002	"In the Section Criteria, the ability to select the type of insurance claim
•	EPSS claim
•	Transitioned to EPSS
•	PBRI claims
•	All"	M	"AZ Is this the icare recoup report?
TV What should be the default when report first loads? (All? EPSS only? User's previous?"
Report:EPSS On Duty Claim Report	RPB003	Amend the WC Primary and Non-Primary claim radio buttons to also include an option to select “BOTH” 	M	AZ Same question as above RPB002
Report:EPSS On Duty Claim Report	RPB004	"Remove the Organisation section from the report:
•	NSW State
•	Command
•	Region/Branch
•	PAC/PD/Section
•	Organisation Unit"	M	AZ Same question as above RPB002
Report:EPSS On Duty Claim Report	RPB005	"Include columns / requirements not delivered in the December 2024 release:
•	Period 1 – start date 
•	Period 1 – weeks utilised
•	Period 1 – weeks remaining
•	Period 1 – end date
•	Base + 17% loading
•	75% of base + loading
•	75% of base + loading (fortnightly) – new requirement
•	75% of base + loading (weekly) – new requirement
•	Period 2 – start date
•	Period 2 – end date
•	Period 2 – max weekly EPSS Cap breach (flag)"	M	AZ Same question as above RPB002
Report:EPSS On Duty Claim Report	RPB006	"Addition of new columns in the report:
•	Date of Disablement
•	WC Duty Desc. (On Duty / Off Duty)
•	PBRI claim (Flag)
•	EPSS claim (Flag)
•	Transitioned to EPSS (flag)
•	Hourly Rate (from IT008 salary)
•	Age (number)
•	Super Fund Code
•	EPSS Supervisor
•	WCCC Status To (add after WCC Status From field)
•	LO screenshot Period – EPSS Claim Status fields to pull over
o	Date Modified
o	Description"	M	"1 AZ Hourly Rate based on each date considering ORP may change?
2 AZ What is LO screenshot period? OLIMS field/table/fieldname
3 AZ What Date Modified?  OLIMS field/table/fieldname
4 TV Is dedicated PBRI flag field implemented in OLIMS, or should we derive it from PBRIMEMNO
4 AZ Which description? OLIMS field/table/fieldname"
Report:EPSS On Duty Claim Report	RPB007	The EPSS Claims Advisor and EPSS Claim Status fields to populate from OLIMS fields that have been built after this report was originally built in November 2024	M	"1. AZ What is the EPSS Claims Advisor - WC Advisor/EPSS Examiner/EPSS Supervisor?
2. AZ Should the logic pick the current Claim Status or past historical one based on a specific date, if from specific date, which one? "
Report:EPSS Down Grade Report	Heading only			
Report:EPSS Down Grade Report	RPC001	"Purpose of the report is to identify work capacity downgrades with workers compensation leave entered in SAP that will trigger a EPSS claims officer to investigate to determine eligibility for EPSS payments or the PBRI incident to transition to EPSS.
The report to generate when there is a downgrade in the current certificate compared to the previous certificate.
Report on incidents before and after 01 October 2024"	M	1. AZ What  a  certificate downgrade means?
Report:EPSS Down Grade Report	RPC002	"Selection Criteria:
•	Report date
•	WC Leave Date Range
o	Start and To
•	WC Primary claim
o	Primary
o	Non-Primary Claim
o	Both
•	EPSS/PBRI Claim
o	PBRI Claim
o	EPSS Claim
o	Transitioned to EPSS claim
o	All"	M	TV report to filter by "PBRI claim", "EPSS claim", "Transitioned to EPSS claim" but doesn't specify which SAP fields store these flags or what code values indicate true/false (X? 1? Y? null?) | Cannot filter correctly if flag values unknown
Report:EPSS Down Grade Report	RPC003	"Report Columns:
•	Emp No.
•	First Name
•	Last Name
•	WC Primary Claim (flag)
•	PBRI claim (flag)
•	EPSS claim (flag)
•	Transitioned to EPSS (flag)
•	Incident No.
•	WC Claim No.
•	Incident Date
•	Date of Disablement
•	WC Status
•	WC Claim Status
•	WC Duty Desc.
•	IP/EPSS Status
•	Super Code
•	Current Cert Status
•	Current – Hours/Day
•	Current – Days/Week
•	Current – WC section
•	Previous Cert Status
•	Previous – Hours/Day
•	Previous – Days/Week
•	Previous – WC section
•	EPSS/IP Advisor"	M	"1. AZ On the Previous fields, what if there are multiple previous records.
2 AZ WC/IP/EPSS Status as of today?
3 TV requires ""Super Code"" column but doesn't specify SAP source (assumed IT0220/FONDS in HR)"
Report:Date of Disablement misalignment	Heading only			
Report:Date of Disablement misalignment	RPD001	"Purpose of the report is to identify misalignment of the date of disablement and the first work cover certificate uploaded in OLIMS.
Main scenarios include:
1.	First WCCC is a fit for Pre Injury Duties certificate and the second WCCC is the first total/partial incapacity
2.	The WCCC were not uploaded correctly in date range order and the first WCCC uploaded was actually meant to be the third"	M	1 SM Assume point 1 and 2 is not to be checked by the system. Assume this is just comment.  20/01/2026 Matt, point 1 and 2 is just background info
Report:Date of Disablement misalignment	RPD002	"The report will output results when the below conditions are met:
1.	First WCCC is PID and status start date matches DOD
2.	First WCCC is not PID and the status start date does NOT match the DOD"	M	"1 SM PID = Certificate status= Fit for pre injury duties
2. SM Assume WCCC is the workers comp certifiacte as recorded under OLIMS Certificate tab
3. AZ Please confirm if the status from date is the from field of the first certificate? 21/01/2026  Matt: Yes that is the value from the first certificate.
4. Note:Ovelap certificates with old ones, then even though the dates overlaps, as a rule, the most recent certificate is taken as the valid certificate from it's effective date. Eg first med cert entry 1-30th then 2nd entry 15-30th, then the 1st entry is valid from 1-14th and the 2nd entry is valid from 15th-30th but both entries remain as entered.  The start date is when the certificate was written/when the employee visited the doctor."
Report:Date of Disablement misalignment	RPD003	"Selection Criteria
•	WC Primary Claim
o	Primary
o	Non Primary
o	Both
•	EPSS/PBRI claim
o	PBRI
o	EPSS 
o	Transitioned to EPSS 
o	All"	M	
Report:Date of Disablement misalignment	RPD004	"Report Columns:
•	Emp No.
•	First Name
•	Last Name
•	WC Primary Claim (flag)
•	PBRI claim (flag)
•	EPSS claim (flag)
•	Transitioned to EPSS (flag)
•	Incident No.
•	WC Claim No.
•	Incident Date
•	Date of Disablement
•	First WC Certificate – Status
•	Status From Date
•	Inactive WCCC (flag)"	M	
Report: Detailed EPSS Payment Report	Heading only			
Report: Detailed EPSS Payment Report	RPE001	"Purpose of the report is to provide the weekly calculation and payment breakdown, including any mid-week splits, of EPSS payments and weeks utilised of an officer’s primary WC incident.  This will assist the EPSS claims officer to troubleshoot and explain any enquiries, complaints or disputes received and fill in any EPSS letters, forms and attachments in development.  

The report can be generated for a single employee with one or more incidents, for multiple employees or incidents or open ended to generate results."	M	"1. SM Is this a report similar to the Spinifex Julius compiled for the EPSS leave actual earnings impact post Phase 4?
TV Report Column Sequence
Column  Source  Type 
 1  Employee Number  `ZIMLTRVAR.PERNR`  Direct 
 2  Employee Name  `ZIMLTRVAR.VORNA/NACHN`  Direct 
 3  Incident Number  `ZIMLTRVAR.INCIDENT`  Direct 
 4  Claim Number  `ZIMLTRVAR.CLAIMNO`  Direct 
 5  Week Start  `Payroll / weekly`  Direct 
 6  Week End  `Payroll / weekly`  Direct 
 7  Capacity Status  `ZIMLTRVAR.WCMCSTATUS`  Direct 
 8  ORP (P1)  `ZIM_IN_PAWE.WKLY_FULL_SAL` / `IT0008`  Direct / Derived 
 9  RTW Earnings (9WCM)  `Payroll` (LGART)  Direct 
 10  WC Earnings (4901)  `Payroll` (LGART)  Direct 
 11  External Earnings (6017)  `Payroll` (LGART)  Direct 
 12  P1 Payment (49E9)  `Payroll` (LGART)  Direct 
 13  P1 Adjs (6A48)  `Payroll` (LGART)  Direct 
 14  P1 Week Counted  `ZIM_EPSS_WEEK_NO` / calc  Direct / Computed 
 15  P2 Salary / Payment  `ZIM_IN_PAWE` / payroll  Direct / Computed 
 16  P3 Salary / Payment  `TBC`  TBC "
Report: Detailed EPSS Payment Report	RPE002	"Selection Criteria:
•	Employee Number
•	Incident Number
•	Date From
•	Date To"	M	"1. SM Is the date from/to to include pay periods with end dates captured in the selection?
2. SM is reporting as per the net results of each of these pay periods or the lastest view of the pay periods. (Note latest views can change all the time)"
Report: Detailed EPSS Payment Report	RPE003	"Report Columns:
•	Employee Number
•	Incident Number
•	Claim Number
•	Start Date
•	End Date
•	Payment Date
•	Capacity Status (Partial Incapacity, Total Incapacity, Operational Duties)
•	Workers Compensation (4901)
•	Internal Earnings (eg 9WCM)
•	External Earnings (6017)
•	WC Factor
•	EPSS Factor
•	P1 – ORP
•	P1 – Payments (49E9 and 6A48)
•	P1 – Week Counted
•	P2 – Salary (75% of loaded salary)
•	P2 – Payments (49S9 and 6A49)
•	P3 – Salary (75% of loaded salary)
•	P3 – Payments (TBA)"	M	"1. SM Assume start/end date is that of the period where the payment is from (the retro period) and the Payment date is that of the reported pay period where the retro earnings were paid?
2. SM Please provide the reason codes used in IT14 WT 9WCO that is to be perceived for the different capacity status options under the workbook 'WT9WCO reasons' (see link)
3 SM External earnings noted as 6017, Believe this is a typo and should be WT 3670?
4. SM Assumption is a new line output pending the incident /claim # reported. To support this EPSS payments and External earnings will need to reflect the correct incident / claim in pay results (not the case atm). See additional requirements for EPSS payments.  TBC if we need to slot external earnings into the same line display pending if it slots into the same payroll split (hence not checking the incident/claim and not introducing the incident/claim against the external earnings).    
5. SM What is meant by WC and EPSS Factor? Do you wish to see the pay result wpbp split number?
6. SM For the P1/2 payments, did you want a cumulation (one heading), or each WT listed separately?
7. SM @Julius Please confirm if payroll factor the ORP & P 2 salary only virtually or if it is factored in the pay result output? @Salmie, factored in payroll result outpup as well.
8. SM Week counted, Assume that is to derive the weeks counted related to the pay period/week displayed  for the incident
9. SM Assumption is that the P3 output to come later as this has not been specified/implemented. Do you need the columns but with blanks filled ? 
10. JV Is the report a fornitghtly report or a weekly report? Assume the report is weekly and not fornightly which should be represented based on start and end date.
11. JV If the report is weekly, what is the expectation if there are splits/changes in the incident or if a new incident is created.
12. JV What does WC and EPSS factor mean? If assumption is report is weekly except when there are changes to splits, should the factor always be 100% except when there are changes mid week on the incident?
13. JV For 6A48 and 6A49, there is no incident numbers attached to these adjustment wagetypes. Assumption is that it will report under the current split it resides. Please confirm. 
TV WC/EPSS factor definitions and whether these are static or derived per week"
Report: Detailed EPSS Payment Report	RPE004	If the officer is during Period 1 and has total incapacity (s36/s37) and is not receiving an EPSS payment, they are still be shown on the report as a P1 week counted even though the EPSS P1 payment is zero. 	M	1. SM Does this mean if there is a 9WCO in the pay with section 36/37, and no line output  due to no payments, then we are to show the line, but otherwise we only show lines if there was one of the payment output WT's which includes 49e9 49s9 6a48 6a49, 4901 3670/ assume just having 4901 9wcm without the named WT's or S36 / 37, does not qualify for a line output in the report?
Period 1 utilisation summary	Heading only			
Period 1 utilisation summary	RPF001	A claims officer will be required to fill in an attachment to a Period 2 transition letter that contains a week-by-week breakdown of Period 1 utilisation	M	1. SM Execution via OLIMS?  New or what existing screen to drive the request for the report?21/01/2026  Dk Via OLIMS, EPSS case officer to execute, initiate via te OLIMS report menu for EPSS.
Period 1 utilisation summary	RPF002	"Selection Criteria:
•	Employee Number
•	Incident Number
•	Date From
•	Date To
"	M	"1. JV Is the selection from to dates, that of a payroll period and is reporting based on the latest view of that pay period or the view as it was when payment occurred? Eg. If you select start/end dates for pay 9, and if there is already accounted pay 8 in 9, 9 in 9, and 9 in 10 and 10 in 10, do we report all the retro epss earings as accounted in pay 9 in 9 (that is earnings from 8 in 9= in period view, that is the net differences) or do you want to see the latest view of payments that is available for pay 9, that is the from pay results recorded in 9 in 10 (for period view)?  21/01/2026  DK Park until HSW provide input because it might be that the date from/to change to P1 weeks instead and with that the output.
2. SM will this always be executed per employee and incident or can it be on mass for all employees and incidents; If the latter, then how do we restrict the selection given an old active incidents (eg. valid in  8 in 9, but became inactive in P 8 in 10), assume all employees will need to be checked./assume per employee for the full period while on P1?"
Period 1 utilisation summary	RPF003	"Report Columns:
•	Employee Number
•	Incident Number
•	Claim Number
•	Date From
•	End To
•	Week Count
•	Capacity
o	Total Incapacity, Partial Incapacity or No Incapacity
•	Counted/Not Counted
•	EPSS Supplementary Support Payment made
o	Yes or No
•	EPSS Payment Received
"	M	"1. SM Is the lines in the report repeating per pay cycle in the from/to date selection and within that a line per week in a pay cycle/Is this a dump of the week table  plus per week the epss payment $ from payroll, then show Yes if payment was received, ' 'No' if not?  How do we link the OLIMS capacity field to the SAP EPSS payment, eg. define the OLIMS capacity vs WT 49E9 reason codes/sections of the act?.
Design note to be acknowledged,(listed as a new requirement for clarity as well): Need to retro all employees and keep all splits (wbpb) against the epss payment WT's 49e9 49s9.  This is to ensure the incident can be retrieved correctly to satisfy this report. This fix will also look at different incidents in case of multiple incidents  in one week, instead of the current design, that looks only at the last incident of the week when it comes to the P1 week count- Noted, week count changes can impact retrospective claw backs or extra payments. - TO accomodate this fix, fortnight negative checks to be revised. Need to check if the payslip will show two lines in case of multiple WT's in the pay results , preference is to show one line on the payslip.  
2. SM Noted, only EPSS payments report, not external earnings.
3. SM Some fields like the EPSS payment received is not in the template (which is to be used, RPF003 or the attachment template in the BRD, Page 39?"
Period 1 utilisation summary	RPF004	The document “Attachment-EPSS Period 1 Summary”, to be uploaded into OLIMS and this report to populate the data in the table	M	"1. SM What screen in OLIMS to be used for the upload and is there a network area to store the data/exisiting process/naming standards?  Or is the file name and location path to be added to the selection screen?  (Ensuring the case officer knows what file to attach to his letter)
2. SM Into what table is the document to be populated/or is this new and as per RPF003?  Assumption this is not a new screen to show the table content
3. SM Assume the letter  is send manually.
"
Period 1 utilisation summary	Design Additional Requirement			Design note to be acknowledged : Need to retro all employees and keep all splits (wbpb) against the epss payment WT's 49e9 49s9.  This is to ensure the incident can be retrieved correctly to satisfy the Period 1 utilisation summary report.  BRD to update for this fix will also allow reporting of EPSS payments against different incidents in case of multiple incidents  in one week, instead of the current design, that looks only at the last incident of the week. It will also allow the P1 week count to be for both incidents pending $1 payments in the week, meaning both incidents valid in the one week could potentially have a week count increase in the one week - Noted, week count changes can impact retrospective claw backs or extra payments. - To accomodate this fix, weekly negative checks in the system setup are to be revised. Please advise if it will be acceptable to add a change to the BRD,  to do the weekly negative check on a incident level instead of on a total EPSS payment for the week (P1/P2 separate WT's) and acknowledge the week count impact on individual incident levels when both valid in the same week.  Acknowledge retrospective changes in this could in reporting move payments from one incident to another.  TBC BRD udpated
EPSS Outbound Leave Report	Heading only			
EPSS Outbound Leave Report	RPG001	This report is utilised to identify possible officers who are on long term non work related absence who may be eligible to submit a claim for off duty income protection.  The current report can be optimised to streamline additional data collection and analysis activities completed by a claims officer.  Utilise the PBRI Outbound Leave report as the basis for the new report	M	AZ What the PBRI Outbound Leave report is?
EPSS Outbound Leave Report	RPG002	Report to be made available in the EPSS Reporting folder	M	
EPSS Outbound Leave Report	RPG003	"Utilise the current report made available but add two columns after the leave type text column:
•	Leave Reason Code
•	Leave Reason Text
"	M	
OLIMS Reminders / To Do List Overview Report	Heading only			
OLIMS Reminders / To Do List Overview Report	RPH001	Ability to generate a report of OPEN reminders/tasks due for a day or date range.	M	"1. AZ Is the task functionality already built in OLIMS?
2. AZ How to identify Open reminders/tasks in OLIMS? Is that via ZIM_IN_REM table when field NOTE_COMP is not 'X'?"
OLIMS Reminders / To Do List Overview Report	RPH002	Ability to generate a report of tasks marked as COMPLETE with a date range for internal SLA and KPI reporting purposes.	M	1.  AZ How to identify Complete reminders/tasks in OLIMS? Is that via ZIM_IN_REM table when field NOTE_COMP is 'X'?
OLIMS Reminders / To Do List Overview Report	RPH003	"Selection criteria for running reports:
•	Open reminders/tasks
•	Completed tasks
•	EPSS Claims / EPSS Transitional
•	WC Primary Claim
•	EPSS Supervisor
•	EPSS Claims Advisor (individual or all)
"	M	
OLIMS Reminders / To Do List Overview Report	RPH004	"Fields required in report:
•	Employee No
•	Employee Name
•	Incident No
•	WC Claim No
•	Created Date
•	Task Name
•	EPSS Advisor
•	EPSS Supervisor
•	Comments
•	Due Date
•	No. of Days overdue
•	Completed date
•	Updated By
"	M	1. AZ Which table/field stores the task name, comments, due date, No of Days overdue, completed date and updated by.
OLIMS Reminders / To Do List Overview Report	RPH005	Ability to click on the task to take the EPSS Claims Officer to the EPSS incident to complete their activities	M	1. AZ Is this requirement to allow offers to access OLIMS by clicking in one of the tasks returned as an output of this report? I don't think an OLIMS incident can be accessed outside OLIMS. Alternatively, Officer would be able to access a standalone reminders screen (outside of OLIMS) to view reminders details which are linked to the employee/incident.
OLIMS Reminders / To Do List Overview Report	RPH006	Standard process will follow where the claims officer marks the task complete, the completed date is updated with a time stamp and the user’s employee number	M	1. AZ Do we need new fields for this requirements or are these existing fields? Which table/fieldnames?
OLIMS Reminders / To Do List Overview Report	RPH007	Ability to export reports to Excel for offline analysis and reporting	M	
EPSS Pay Simulation Report	Heading only			
EPSS Pay Simulation Report	RPI001	This report is required to streamline the current manual process of producing pay simulations in bulk where the EPSS claims officer exports to PDF to review the payroll results during the off pay week payroll process.  Outcomes in reviewing the data to identify any incorrect workers compensation payments, recalculate EPSS entitlements for any manual workaround processes and to ensure the integrity of the EPSS payments made to eligible officers.	M	"1. SM Assume the intention is to look at the upcoming pay period (simulation), not the completed payroll ? 
 Queries on the payoll in process (reading actual pay results), can commence on Tuesdays of the pay week, but since the 'off week' is mentioned, the understanding is this is a pay simulation output review, correct?
2. SM IBR data will be outstanding during the payroll 'off week'.  WC and EPPS is executed in retrospect because we wait on the IBR data. IBR data is mostly the data from the prior fortnight with very little data from the current pay.   
Is this report worth doing in the payroll 'off week'?   
If the report moves to be done in the 'payroll week' after IBR data loads, then the report will retrieve actual pay results, not simulated data. 
"
EPSS Pay Simulation Report	RPI002	Report to be made available in OLIMS EPSS Reporting folder	M	
EPSS Pay Simulation Report	RPI003	"Selection Criteria
•	Payroll Area
•	Payroll Period
•	Employee Number
•	Active and inactive
"	M	"1. SM Roughly how many employees are expected to be selected for reporting?    Also consider RPI004 (selection by org unit)
1.1 SM Consideration for online execution from OLIMS with output on screen for download or background (in case we expect long processing time).   "
EPSS Pay Simulation Report	RPI004	The report to generate payroll results for restricted groups; Covert Org Unit 653 and Senior Executive Officers	M	
EPSS Pay Simulation Report	RPI005	"Report Columns
•	Employee Number
•	Employee Name
•	Incident No.
•	WC Claim No.
•	WC Claim Status
•	For Period End Date
•	Pay Period End Date
•	Week 1: RTW earnings (9WCM)
•	Week 1: WC earnings (4901)
•	Week 1: External Earnings (3670)
•	Week 1: Period 1 – ORP 
•	Week 1: Period 1 (49E9)
•	Week 1: Period 1 – adjs (6A48)
•	Week 1: Period 2 – 75% of salary
•	Week 1: Period 2 (49S9)
•	Week 1: Period 2 – adjs (6A49)
•	Week 2: RTW earnings (9WCM)
•	Week 2: WC earnings (4901)
•	Week 2: External Earnings (3670)
•	Week 2: Period 1 – ORP 
•	Week 2: Period 1 (49E9)
•	Week 2: Period 1 – adjs (6A48)
•	Week 2: Period 2 – 75% of salary
•	Week 2: Period 2 (49S9)
•	Week 2: Period 2 – adjs (6A49)
•	RTW Earnings (Total)
•	WC Earnings (Total)
•	External Earnings (Total)
•	Period 1 (Total)
•	Period 2 (Total)
•	PBRI top up (Total)
"	M	"1. JV - The values that are being requested on this report is generated during the payroll run. Only when we have a payroll simulation will have values on the wagetypes. Is this report meant to be a post payroll report? Note that without rosters, the report will likely be inaccurate. @ Julius, See my queries under RPI004.
2. JV - In case there is a requirement to create this report, a call to run payroll will likely need to be done which might be a complex requirement, this is marked as 'M' but will likely have to be downgraded, is the business okay with tihs?  @ Julius, See my queries under RPI004.
3. JV - On Period 1 and 2 Total, is this based on the manual calculation similar to the excel report developed or will it be based on the 49E9 and 49S9 totals?  @ Julius, I believe they want to see the pay results.
4. JV - Why is there a PBRI total on the EPSS report? Do you mean EPSS top up total? 
4.1 SM - If the PBRI totals are for the employees that transition to  mid P1 or P2 to EPSS, then should the report not have the new WTs' for PBRI EPSS P1 and P2 (that replace WT 4909)? "
EPSS Pay Simulation Report	RPI006	The report to be able to run a simulation for the current payroll period at any time during the payroll cycle	M	1. JV - Is it posible for this requirement to be a post payroll reporting? Without the rosters which is usually uploaded a day before the payroll run, the information receive is not going to be accurate? Is the business okay with this?
EPSS Pay Simulation Report	RPI007	The report to be exported from SAP to allow the EPSS Claims officer to analyse the information, the preferred option for the team is as an excel file	M	"
1. SM Do EPSS case officers have access to  SAP spools (if background processing is required) ?
2. SM Is training required on how to download SAP spools and how to make the file and excel file"
EPSS Period 2 – PID greater than 7 days	Heading only			
EPSS Period 2 – PID greater than 7 days	RPJ001	"Purpose of this report is to identify officers with a primary WC claim who have reached Period 2 benefits and also have a current WC Certificate of Capacity with the status of fit for Pre Injury Duties which has elapsed a duration of greater than 7 calendar days.
This will allow the EPSS Claims Officer to review the claim and any other open WC claims to assess the eligibility to apply an extension to the Period 2 benefit if they are completely operational to resume their normal duties unrestricted.
The report to also retrieve any entries added to the OLIMS EPSS Period 2 – Return to Duty tab.
"	M	
EPSS Period 2 – PID greater than 7 days	RPJ002	"Selection Criteria
•	Employee Number
•	Incident Number
•	WC Primary Claim
•	Ability to run the report with no selection criteria to generate results
"	M	1. SM If WC primary claim is selected then only show primary claims, otherwise show primary and othe claims.  21/01/2026 Matt Agrees
EPSS Period 2 – PID greater than 7 days	RPJ003	"Report Columns:
•	Employee Number
•	Employee Name
•	Incident No.
•	Claim No.
•	EPSS Period 2 (flag)
•	WC Certificate Date From
•	WC Certificate Status
•	No. of Days PID
•	RTD Date From
•	RTD Date To
•	RTD Description
•	Record inactive (flag)
•	Last Modified By
•	Last Modified On
•	Last Modified At
"	M	"1. SM Confirm please confirm who enters the RTD data; if the command that enters the certificate, then please consider if the RTD screen should not invoke on entry of the certifate instead of this report been requested. / OR /  please confirm if the report the output is derived as below:?   21/1/2026 Matt Command upload the certificates and the RTD is done by Davids team, hence need a report 
a) All selected (or if no selection), then show all the PID certificates for incidents (also inactive)  21/01/2026 Matt Correct, only show PID certs regardessif active or inactive
b) TBC how we restrict to what dates we select certificates back to, eg. 1.10.2024 or if only P2 employees, based on what effective date the employee is deemed P2 (do we need to add a selection field?)  21/01/2026 Matt Only P2 employees are to show in the report if they are P2 prior or on the report execution date. Also report if the P2 employee has not been approved for P2 to commence.
c)Show multiple lines per the same certificate if there are RTD records that overlap with the certificate from/to dates. Each record show the RTD that belongs to the certificate.  Noted, if there is no RTD that aligns, then the certificate line still outputs but with no RTD details.  If RTD and no certificate, then the RTD should show as a line as well (With cert fields empty)
d) No of days PID = the certificate end date - start date +1, except if no certficate to display, then the PID days are zero.
e) Record inactive flag - TBC if this relates to the Cert or the RTD? 21/01/2026 matt, this is the PID cert flag. need to show active AND inactive PID certificates
f) Is the Last modified fields for the cert or the RTD record ?  21/01/2026 MAtt these are for RTD
g) EPSS period 2 (flag) is assumed the be the Commence P2 payment flag been unapproved vs Approved.  21/01/2026 Matt - just shows space or X if the P2 commencement  flag was checked.
2. Additional requirement for columns: No. of Days PID and PID-RTD days  21/01/2026 Matt Approved this extra columns to be added.
3. 21/01/2026 Matt - Only output certificates if the PID days are greater than 6

"
EPSS Period 2 – PID greater than 7 days	RPJ004	The report to be exported from SAP to allow the EPSS Claims officer to analyse the information, the preferred option for the team is as an excel file	M	1. SM TBC if the report is initiated from OLIMS, calling a SAP report that feeds info back to OLIMS for export, or will the officer pick the report up from his SAP spool (if executed in background)/  or is this a governance scheduled job  to expand to include this report for distrubution to the case officer for review.  21/01/2026 Matt  execution from Olims epss report area with flexibility to run in SAP foreground/background as needed. Execution from OLIMS allows the foreground/background execution (current in place to run report like that)



## Deployment One (1) requirements

### Period 1: Ordinary Rate of Pay and allowances

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| 1PA001 | The definition of “Ordinary Rate of Pay” (ORP) is derived from SAP HR InfoType 0008 (Basic Pay) only. ORP includes only those IT0008 wagetypes listed in the authoritative “ORP WT list” worksheet (maintained in this repository/docs as the single source of truth). Action: HSWC and PCC to populate and finalise the ORP WT list worksheet with the exact included and excluded IT0008 wagetypes/allowances (mark additions/removals and identify any new wagetypes). Only wagetypes/allowances present in that worksheet are in scope for ORP; no additional position or eligibility checks are to be applied. If the worksheet is not yet finalised, flag as [TBC] and link the source meeting/minute that provides the list. *Workshop note (2026-01-22): IT0008 values must be effective-dated to reflect pay scale increases as at the increase date.* | M |
| 1PA002 | The effective date of this change is 12 December 2025 (confirmed by business). This supersedes prior references to 01 October 2025. Note: this change is expected to have retrospective effects on Period 1 earnings and payments (including payslip retro display changes) and requires a controlled approach to force/recalculate impacted Period 1 employees from the effective date. SS to review manual adjustments prior to Phase 4 for correctness; ORP assumed correct from Phase 4 onwards. | M |
| 1PA003 | REMOVED / PARKED (2026-01-19) — ORP override capability for claims officers is out of scope and not required at this time. Workshop decision (19/01/2026): requirement closed. Approach remains to correct ORP definition/system behaviour rather than provide static manual overrides. *Workshop note: If reintroduced, the override must be date-ranged (start/end), drive payroll splits, and include an agreed process to review/maintain overrides because static values will not automatically reflect retrospective pay rises or changes to the ORP wagetype definition.* | W |
| 1PA004 | A new wagetype to be created to back pay any eligible officers for an ex-gratia payment (one-off, not termination-related). Business action: provide a completed wagetype maintenance form including all required characteristics below. Required wagetype characteristics & business rules to be recorded in the wagetype maintenance form / ORP WT list area (values below must be provided by HSWC / FABS / TCSC):   * Wagetype identifier/code: [TBC]   * Description: "EPSS ex-gratia — one‑off" (or business-specified)   * Infotype where stored (e.g. IT0015 / cumulative wagetype): [TBC]   * Tax/PAYG treatment: [TBC]   * Payslip visibility and label: [TBC]   * FICO / GL posting details: [TBC] (finance sign‑off required)   * Retro/eff‑dating behaviour: specify effective date handling and retro posting rules: [TBC]   * Calculation method / business rule: per-case ex-gratia amount to be provided/authorised by HSWC; algorithm (if any) to be supplied — otherwise treat as single manual amount entry per officer.   * Data entry workflow: claims officer to create/authorise ex-gratia record in OLIMS -> attach wagetype maintenance form/finance approval -> payroll to process via designated wagetype on next payroll run (detailed runbook to be provided).   * Week counting treatment: business to confirm whether ex-gratia should be treated as a $1 payment for Period 1 week-counting scenarios or as a full payment; record decision in wagetype form and update ORP WT list if relevant.   * Audit & reporting: all ex-gratia entries to retain evidence (document upload), show created/authorised by, and be reportable in Document Overview. *Workshop note (min.md): One-off payment (not termination-related). Business to provide completed wagetype maintenance form (incl. finance sign-off / GL posting details) for the new wagetype.* | M |

## Deployment Two (2) requirements

### Payment and Claim Management for Detached Officers

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| DOA001 | Where a police officer exits the organisation on medical grounds (via s81E/s94B of the Police Act 1990 process), the former officer (detached officer) may continue to receive EPSS benefits whilst they remain eligible. The EPSS claim in OLIMS for the detached officer is to remain open for the EPSS claims officer to continue claim administration activities, enter offsets and utilise OLIMS to calculate and pay benefits.  
**Update 2026-01-27 (DOA001 feedback):**
* The SAP termination identifier(s) (Action/Reason codes) for “exit on medical grounds” must be clarified and documented here.  
* The payroll/taxation approach for detached officers must be confirmed and described, including PAYG and payroll status for ongoing EPSS payments post-termination.  
* The process for linking the original and new employee numbers (e.g. IT0105 subtype FREM or equivalent) must be explicitly documented, including the SAP and OLIMS implementation.  
* OLIMS constraints for incident/certificate handling post-termination must be specified, including validation that a new non-employee number exists before payroll records (e.g. IT0014 `9WCO`) are pushed.  
* The process for pushing IT0014 `9WCO` to the correct employee number must be documented.  
Action: Add details on SAP action/reason codes for medical termination, confirm payroll/taxation rules for detached officers, and document the process for linking employee numbers and handling OLIMS incidents/certificates after termination, including validation that a new non-employee number exists before payroll records are pushed.  
*Workshop note (2026-01-23): Detached officers will be hired as a non-employee under a new employee number, with OLIMS retaining the original employee/registered number for historical case management and linking to the new employee number (e.g. via IT0105 communications subtype `FREM`, or equivalent — TBC in design). ESG/employee number range is used to identify a detached officer. OLIMS incident creation after termination is not supported (employee needs to be active); detached officer claims are expected to relate to incidents/certificates for a period when the officer was active, with payments/records processed against the hired non-employee number. Certificate processing should validate a hired non-employee number exists before pushing payroll records (e.g. IT0014 `9WCO`) to the detached officer cohort.* Scoped by Deloitte during Phase 4. Refer: [BRD4\_Phase 4\_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV) | M |
| DOA002 | Where a police officer was in receipt of EPSS benefits for a compensable injury and suffers a downgrade following cessation of their appointment as a police officer and the nominated insurer determines weekly benefits are payable under the accepted NSWPF claim, then subject to the EPSS eligibility criteria, EPSS benefits may be resumed by NSWPF. The EPSS claim in OLIMS for the detached officer is to be set to a new claim status of **“Reopen”** to allow the EPSS claims officer to complete claim administration activities, enter offsets and utilise OLIMS to calculate and pay benefits.  
**Update 2026-01-27 (DOA002 feedback):**
* A new claim status "Reopen" must be created in OLIMS for detached officer claims, used against the original employee number (not a new incident).  
* Clarify whether this status triggers payroll actions (e.g., pushing IT0014 `9WCO`).  
* Define substatus options for maintaining distinct P1/P2/P3 statuses within "Reopen".  
Action: Add requirement to define and document the OLIMS claim substatus model for detached officers, ensuring that Period 1/2/3 statuses can be tracked separately within broader claim statuses.  
*Workshop note (2026-01-23): “Reopen” is used against the existing claim/incident on the original employee number (not a brand new incident). Backdating certificates/primary flags may imply EPSS payments backdated against the original number; confirm payroll impacts and whether claim status drives pushing IT0014 `9WCO` to payroll. Substatus options (e.g. maintain P1/P2/P3 statuses separately within other statuses) to be confirmed.* Scoped by Deloitte during Phase 4. Refer: [BRD4\_Phase 4\_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV) | M |
| DOA017 | Define the OLIMS claim status/substatus model for detached officers such that Period 1/2/3 statuses can remain distinct while still supporting statuses such as “Pending”, “Closed”, “Monitor”, and “Reopen” (TBC). | C |
| DOA003 | For detached officers eligible for EPSS payments, the officer will be hired as a non-employee under a new employee number to enable OLIMS case management and payments through payroll.  
**Update 2026-01-27 (DOA003 feedback):** Detached officers are to be hired as non-employees with a new employee number for OLIMS case management and payroll, not as a rehire of the original employee number (confirmed 23/01/2026 DK).  
*Workshop note (2026-01-23): Detached officers are hired (non-employee), not a rehire of the original employee number.* | M |
| DOA004 | The non-employee EPSS hire will not require access to SAP, NSWPF email account, downstream NSWPF systems and directories.  
**Update 2026-01-27 (DOA004 feedback):** ESG code "XV" will be used to exclude EPSS detached non-employees from downstream systems, and only the EPSS detached cohort (currently 3100 range) is in scope for automation—PBRI detached (3000 range) remains manual. Review data conversion and effective dating for automating payments for the EPSS detached cohort using ESG "XV".  
*Workshop note (2026-01-23): ESG is used to exclude the cohort from downstream systems; preference is to utilise ESG `XV` (currently excluded). Confirm implications for existing `XV` cohorts (e.g. legacy PBRI detached in 3000 series, EPSS detached in 3100 series) and any data conversion/effective-dating required for automation.* | M |
| DOA005 | A new employee number range will be required (e.g. 5000xxxx series) to support detached officers being hired as non-employees.  
**Update 2026-01-27 (DOA005 feedback):** The preferred approach is automatic sequential assignment of employee numbers in a new 5000xxxx range for EPSS detached officers, but if this is too costly, fallback is to use ESG XV with manual assignment; PBRI detached cohorts remain manual and only EPSS detached hires are automated. Document the rationale and flexibility as discussed in the workshop.  
*Workshop note (2026-01-23): Preference is automatic sequential number assignment (unique number range if required) rather than manual assignment (e.g. existing 3100 range). If automatic assignment is too costly, fallback is to use ESG `XV` with manual number assignment. PBRI detached cohorts remain manual; only EPSS detached cohorts are in scope for automation under this BRD.* | M |
| DOA006 | The PA40 hire action to assign the new employee number could optionally use a format that embeds the officer’s registered number (for easier identification) while remaining within SAP personnel number length constraints (max 8 characters).  
**Update 2026-01-27 (DOA006 feedback):** The personnel number for EPSS detached officers must not exceed 8 characters, and using the existing 3100 number range with the correct ESG is acceptable for identification, provided system configuration supports this. Confirm the count of employees in undefined number series (e.g. 6000, 7000) to avoid conflicts.  
*Workshop note (2026-01-23): Example provided (500015682) exceeds 8 characters; any prefix+registered number approach must fit the 8-character limit. This is not a must-have provided EPSS vs PBRI detached cohorts can be reliably identified in SAP (e.g. via ESG and/or number range). It was noted that using the same ESG with the existing 3100 number range for EPSS detached is acceptable provided system configuration treats them as EPSS detached.* | C |
| DOA007 | A new non-employee position and employee sub group to be created and the description named as “EPSS On Duty Detached” to differentiate from the current PBRI solution.  
**Update 2026-01-27 (DOA007 feedback):** Clarify which existing employee subgroup (if any) can be used as a baseline for the new “EPSS On Duty Detached” position, or explicitly document the required downstream behaviours and automations if a new subgroup is needed. Note the significant implementation effort and stakeholder impact associated with creating a new ESG.  
*Workshop note (2026-01-23): A new ESG/employee subgroup can drive multiple downstream behaviours/automations and is potentially costly (many stakeholders/implementation teams). Define the specific required behaviours and confirm whether an existing subgroup can be used as a reference/baseline.* | M |
| DOA008 | A PA40 – Hire Action will be needed to hire eligible terminated police officers as non-employees for ongoing EPSS payments. The Hire Action used for PBRI Income Protection (ZM) is to be used as the baseline for the infotypes required to be updated; Personal Data, Addresses, Communications, Tax File Number, Planned Working Time, Bank Account.  
**Update 2026-01-27 (DOA008 feedback):** The PA40 Hire Action for detached officers will be performed directly in SAP, but a programmatic hire is also acceptable if it supports required defaults like automatic personnel number assignment. ESS configuration is not required unless specifically needed for automation.  
*Workshop note (2026-01-23): Hire is via PA40 in SAP; a program-based hire is also acceptable if it supports required defaults (e.g. automatic personnel number assignment).* | M |
| DOA009 | The non-employee hire must have a link to the police officer’s active registered number to allow ongoing case management in OLIMS of the existing incidents and the ability to view historical information.  
**Update 2026-01-27 (DOA009 feedback):** The business process for linking the non-employee rehire to the original police officer’s registered number must be confirmed, specifically by saving the prior employee number in SAP communications IT0105 subtype FREM (or equivalent). The linkage must be implemented in SAP and OLIMS, and the final design approach for storing and referencing the former employee number must be confirmed.  
*Workshop note (2026-01-23): Business process required to store the prior employee number as a former employee number in SAP communications IT0105 subtype `FREM` (or equivalent — TBC in design) to support the linkage.* | M |
| DOA010 | The IT0008 (IT8) basic pay record for the detached non-employee is to be derived from the officer’s attached (original) employee record.  
**Update 2026-01-27 (DOA010 feedback):** For EPSS detached officers, the Period 1 ORP and Period 2 salary are derived from the last active IT0008 record of the original (attached) employee, with capacity utilisation applied, and no future Award pay rises are applied after termination—only CPI/indexation for Period 2. This value remains static for Period 1 and is updated only for retro changes to the original record. The system must identify and handle these detached officers as a distinct cohort.  
*Workshop note (2026-01-23): Period 2 salary for detached officers is calculated the same as when the employee was attached: determine the salary at the end of Period 1 on the attached employee record, then apply CPI/indexation as per the normal Period 2 rules (treating the attached→detached transition as continuous for salary purposes). The Period 2 seven-year clock continues from the original employee’s Period 2 start date regardless of any gap between termination and non-employee hire; RTD/PID entries may extend the Period 2 end date as per normal processes and are expected to be entered against the original employee number in OLIMS. Retro changes to the original attached IT0008 may impact detached P1/P2/P3 salary outcomes; detached officer salary does not receive future Award pay increases after termination (see DOA012).* | M |
| DOA011 | **REMOVED / OBSOLETE (2026-01-27):** The requirement for claims officers to override the detached officer's IT0008 basic pay record is now obsolete. Detached officer salary is derived from the original employee record and overrides are not required. Remove any references to override capability for detached officer IT0008 in related sections. | W |
| DOA012 | The detached officer will not be entitled to any future Award pay increases after their termination date. They will only be entitled to any retrospective changes in salary during their employment as a police officer and future indexation increases.  
**Update 2026-01-27 (DOA012 feedback):** Retro salary increases for detached officers must be processed against the original (terminated) employee number, not the detached non-employee number, and the current payscale structure (T510) is not relevant for detached officer salary calculations. A business process is required to ensure retro changes are correctly applied to detached officer payments—DK/Matt to review and define this process.  
*Workshop note (2026-01-23): Retro salary increases are paid against the original (terminated) employee number, not the detached non-employee number. Detached salary sourcing does not rely on current pay scale structure (e.g. `T510`) for the detached employee; salary is derived from the original attached officer record (see DOA010). A business process may be required to ensure detached calculations reflect retro changes appropriately (DK/Matt to review).* | M |
| DOA013 | WC certificates will still be acquired by the officer once terminated and will be uploaded into OLIMS for case management activities only. The upload of these WC certificates is not to generate any workers compensation payments.  
**Update 2026-01-27 (DOA013 feedback):** Add a detailed requirement specifying that, after termination and hire as a detached officer, WC certificates must result in IT0014 9WCO records being created against the detached non-employee number (not the original), ensure WT 4901 is blocked for this cohort, and clarify the week counting logic for S36/S37 when 4901 is not present. Document any manual steps required for late terminations or hires.  
*NOTE: The terminated officers WC payments will not be paid by NSWPF and will be paid by the insurer EML directly.* The only exception is for retrospective payments to be made to the officer during the period of employment as a police officer (existing business process of reprocessing the P905s to generate the backdated payment). *Workshop note (2026-01-23): OLIMS currently allows certificate entry for dates after termination. Certificates are generally entered in advance and IT0014 `9WCO` may be created in advance; confirm how future-dated IT0014 behaves on termination. Where a detached officer is hired, P905 regeneration is expected so that IT0014 `9WCO` is created against the detached non-employee number for payroll processing (and to prevent WC payment wagetype `4901` from being generated for the detached cohort).* | M |
| DOA014 | Workers Compensation earnings from the insurer are to be uploaded as a file in OLIMS and create a Workers Compensation External Earnings wagetype in IT0015 to reduce the EPSS supplementary support payment.  
**Update 2026-01-27 (DOA014 feedback):** Define the new wagetype for external WC earnings in IT0015, including its description, processing rules, and reporting treatment, and update the business process to clarify how this wagetype interacts with week counting and EPSS top-up calculations for detached officers. Specify whether this new wagetype will replace or supplement existing wagetypes (e.g., 4901, 3670) for detached officers. | M |
| DOA015 | The EPSS Claims officer to have the ability in IT0015 to override the WC External Earnings for any retrospective changes or adjustment advice from the WC insurer.  
**Update 2026-01-27 (DOA015 feedback):** Clarify whether the override in IT0015 for WC External Earnings applies only to WT 3670, to WC payments uploaded via OLIMS (as per DOA014), or to both. Specify exactly which earnings types (WT 3670, OLIMS-uploaded WC payments, or both) the override function in IT0015 should apply to, based on business clarification. | M |
| DOA016 | Detached officers will be eligible for indexation of Period 2 and Period 3 entitlements both the 75% of loaded salary and the maximum monthly benefit amount.  
**Update 2026-01-27 (DOA016 feedback):** Specify if detached officers receive only CPI/indexation increases (not pay scale increases) after termination, and update the requirement once business confirms the correct approach. | M |

### Detached Officers: EML workers compensation payment upload

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| DOB001 | For detached officers hired under the new EPSS On Duty position, their Workers Compensation payments will be made by EML and not the NSWPF.  The current OLIMS certificate upload and P905 process must not calculate and pay workers compensation for EPSS detached officers.  
**Update 2026-01-27 (DOB001 feedback):**
* OLIMS and P905 must not generate or pay WC wagetype 4901 for detached officers; EML is responsible for all WC payments for this cohort.  
* The process for capturing WC claim details and dates for detached officers must be clarified if P905 is not processed.  
* Confirm and document the handling of IT0014 9WCO records, ensuring that IT0014 9WCO should not trigger WC payments for detached officers.  
Action: Add a note specifying that OLIMS/P905 must suppress wagetype 4901 for detached officers, clarify the process for capturing WC claim details and dates when P905 is not used, and confirm that IT0014 9WCO should not trigger WC payments for this cohort. | M |
| DOB002 | EML will provide NSWPF a file of ‘weekly’ workers compensation payments they have made to the detached officer on a fortnightly (TBC) basis.  
**Update 2026-01-27 (DOB002 feedback):**
* Specify the expected EML payment file format and required file extension for uploads.  
* Clarify how payment dates in the file will be mapped to EPSS payment weeks/fortnights for correct cap calculations. | M |
| DOB003 | The EPSS claims officer will need a facility in OLIMS to upload the EML WC payments that will:   1. Update the corresponding OLIMS incident/claim 2. Update the OLIMS EPSS external earnings tab 3. Pass the information onto payroll to offset/reduce the calculated the EPSS benefit.  
**Update 2026-01-27 (DOB003 feedback):**
* Specify the OLIMS incident/claim screens and fields updated by the EML WC payment upload.  
* Confirm whether the upload is via the existing or a new EPSS external earnings tab.  
* Describe the process for passing uploaded amounts to payroll as offsets to EPSS payments. | M |
| DOB004 | EML Upload file at a minimum to contain the following information:   * Claim Number * Incident Number * Employee Number * Period start date * Period end date * Payment date * Workers Compensation amount * Payment Classification Description (WC section/Capacity) * Capacity Status (No Capacity, Partial Capacity, PID) * Estimate of no of future weeks of payments * File Date.  
**Update 2026-01-27 (DOB004 feedback):**
* Specify whether the EML upload file should use the original or detached employee number, and if conversion is required.  
* Define the intended use of period start/end dates versus payment date.  
* Document where and how each field (classification description, capacity status, estimate of future weeks, file date) is loaded and used in OLIMS and downstream.  
* Confirm if WC payments should always align with medical certificates for reducing EPSS payments, and if more granularity is needed in SAP for reporting or payment logic.  
* Add EML file field length requirements to ensure compatibility with OLIMS/SAP. | M |
| DOB005 | The upload program to have a ‘test’ run facility that will check for any errors to be reviewed and corrected before updating master data.  
**Update 2026-01-27 (DOB005 feedback):**
* Clarify who should be recorded as the creator of WC entries during the upload (batch user vs. case officer).  
* Specify the types of errors (e.g., format, mandatory fields) that the test run must check for. | M |
| DOB006 | The upload program to have an ‘upload’ facility to update the offset master data in IT0015.  
**Update 2026-01-27 (DOB006 feedback):**
* Clarify whether the upload program is intended to create new offset entries in IT0015 or update existing ones.  
* Confirm with business/SAP team if IT0015 is the correct infotype for this data or if IT0014 should be used for uploading EML WC payment offsets. | M |
| DOB007 | A report to be generated for both ‘test’ and ‘upload’ runs for the claims officer to reconcile any errors, successful / unsuccessful uploaded results.  
**Update 2026-01-27 (DOB007 feedback):**
* Specify whether the report for test/upload runs is generated in real time or post-processing, and if staging tables are required.  
* Define the report layout and confirm that all input fields from the upload are included in the output, with clear status and error descriptions, and filtering options for successful/error records. | M |
| DOB008 | The test and upload run report to be downloaded from SAP as a file for claim administrative and payment quality assurance activities.  
**Update 2026-01-27 (DOB008 feedback):**
* Specify the download location (user-selected or predefined), filename rules, and clarify if the report is generated and downloaded directly from SAP or from an external report output, based on business input to the DTT queries. | M |

### OLIMS: EPSS Off Duty Claim Management

|  |  |  |
| --- | --- | --- |
| **Req. #** | **Requirement Description** | **Priority** |
| OLB001 | New EPSS Off Duty tab and logic in OLIMS.  
**Update 2026-01-27 (OLB001 feedback):**
* Confirmed: There is no payroll impact for EPSS Off Duty claims, as per Phase 4 notes and business confirmation.  
* The requirement for "TAL Off Duty Claim Forms" under open items must be clarified and expanded, including any dependencies or process steps.  
* The new EPSS Off Duty tab in OLIMS must include all specified fields and logic, and the Case Details and Emp Details tabs must be updated as described in the workshop notes.  
Action: Add a note confirming no payroll impact for EPSS Off Duty claims, clarify the TAL Off Duty Claim Forms requirement in the open items section, and update the OLIMS requirements to include all new fields and tab changes as detailed in the workshop notes.  
Scoped by Deloitte during Phase 4. Refer:  [BRD4\_Phase 4\_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV) | M |
| OLB002 | Case Details tab:  Introduce new fields based on the Duty Determination selection   * Waiting Period Start Date = DOD * Waiting Period End Date = DOD + 59 calendar days * IP Start Date = Waiting Period End Date + 1 * IP End Date = IP Start Date + 3 years (minus 1 day) * TAL Claim No * WC Claim Status * Date Closed * Closure Reason * Superannuation Fund * Move Employee Address to the Emp Details tab (nice to have) * Emp Details.  
**Update 2026-01-27 (OLB002 feedback):**
* For each new field, specify whether and how it impacts payroll calculations, week counting, and EPSS commencement.  
* Define the data source or entry method for Superannuation Fund and Employee Details fields.  
* Confirm if moving Employee Address to Emp Details is required or optional.  
Action: Add a section to the requirement detailing whether and how each new field affects payroll or EPSS processing, define the data source or entry method for Superannuation Fund and Employee Details, and confirm if moving Employee Address to Emp Details is required or optional. | C |
| OLB003 | Off Duty: Similar to the Emp/Members Statement tab for PBRI case management.  
**Update 2026-01-27 (OLB003 feedback):**
* Clarify that OLB003 refers to the new EPSS Off Duty tab (as per OLB001).  
* List the specific UI changes: removal of the Send to Aware/TAL button, uploading TAL documents to existing categories, and hiding the Emp/Members Statement tab.  
* Include a screenshot or navigation steps for the current Emp/Members Statement tab for PBRI for reference.  
Action: Update the requirements section to explicitly state if OLB003 is the new EPSS Off Duty tab, list the specific UI changes, and include a screenshot or description of the current PBRI Emp/Members Statement tab for reference. | M |

### OLIMS: EPSS ON Duty Claim Management

#### Amending the Date of Disablement

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| DOD001 | As the technical solution for EPSS utilises the Date of Disablement to determine which scheme the police officer is in (EPSS or PBRI), the initial ordinary rate of pay and commencement of Period 1 benefits. The DOD defaults to the status date of the first uploaded WorkCover Certificate.  
**Update 2026-01-27 (DOD001 feedback):**
* OLIMS must allow claims officers to amend the Date of Disablement (DOD) for EPSS claims, triggering retroactive recalculation of Period 1 and 2 dates and payments, with a warning to review related records.  
* Add a requirement for a change log to track all DOD amendments and their payroll impacts.  
* Amending DOD after P1 is exhausted is permitted, with OLIMS screens and week count logic updated accordingly.  
Examples could include:   * The initial WCCC is a fit for Pre-Injury Duties and the next certificate uploaded is a total or partial incapacity certificate which is now the actual DOD to reference * The first WCCC is marked inactive and the second certificate is now to be utilised for the DOD * WCCC are not uploaded in date order * A late advice WCCC is uploaded with the status start date earlier than the initial first WCCC   NOTE: In the OLIMS PBRI Case Management module, there is a tab titled “Top-Up / Disab. Date / IP Dates” which allows claims officers to amend the DOD | M |
| DOD002 | Changes to the DOD are to be recorded in a table showing the record type, date from, date to, active/inactive, display a document uploaded and the description.  
**Update 2026-01-27 (DOD002 feedback):**
* The DOD amendment table fields must match those visible in the “Top-Up / Disab. Date / IP Dates” OLIMS screen.  
* The document upload field should indicate if a supporting document (e.g., medical certificate or liability letter) has been uploaded.  
* The existing report used to identify incorrect DODs will support this process.  
* Certificates are uploaded by commands, not by SS or EPSS case officers. | M |
| DOD003 | The Claims Officer to have the ability to display active records and display historical records.  
**Update 2026-01-27 (DOD003 feedback):**
* The ability to display active and historical Date of Disablement records is already supported via the inactive flag on the “Top-Up / Disab. Date / IP Dates” screen.  
* Add a note to DOD003 confirming this requirement is met using the existing inactive flag/filter functionality in OLIMS. | M |

#### Document Generation – generate and send EPSS letters and forms

|  |  |  |
| --- | --- | --- |
| **Req. #** | **Requirement Description** | **Priority** |
| OLA001 | Ability to upload letter/form templates into OLIMS that will have both static text and fields that will be populated with SAP HR, payroll and OLIMS data.  
**Update 2026-01-27 (OLA001 feedback):**
* Clarify the specific data fields to be populated in the letter/form templates.  
* Confirm if this is new or existing OLIMS functionality.  
* Specify the location in OLIMS for this feature.  
* Provide or reference the required EPSS On Duty Letters and Forms. | M |
| OLA002 | Ability of claims team to override data in the templates if required before generating the final letter.  
**Update 2026-01-27 (OLA002 feedback):**
* Clarify whether a new OLIMS screen/functionality is required for overriding template data, or if existing functionality can be used.  
* Add a note to confirm with the business if a new OLIMS interface is needed for template overrides, and update the requirements section with the outcome. | M |
| OLA003 | Ability to send the populated letter/form to an officer to the personal email recorded in OLIMS and the option to send to the officer’s work email.  
**Update 2026-01-27 (OLA003 feedback):**
* Specify the exact OLIMS screen/path for retrieving the officer’s personal and work email addresses, including the relevant field or subtype for each.  
* Add clear instructions or screenshots showing where to find and select both personal and work email addresses in OLIMS for document generation and sending. | M |
| OLA004 | The details of the correspondence and letters sent to officers to be saved in OLIMS, including the dates the letters/forms were issued to officers.  
**Update 2026-01-27 (OLA004 feedback):**
* Clarify whether a new OLIMS screen is needed for sending letters or if an existing screen will be used.  
* Specify any confidentiality or access controls required for saving correspondence.  
* Add a note to address these open queries before finalising the requirement. | M |
| OLA005 | A new field to enter the date the document was received by the EPSS claims officer.  
**Update 2026-01-27 (OLA005 feedback):**
* Specify that a new field is required in OLIMS to record the date a document is received by the EPSS claims officer, as per OLA005.  
* Add a requirement in the active document to include a "Date Received" field for documents in OLIMS, ensuring it is clearly defined whether this field is an attribute of the document or linked to the WC/incident number, pending business clarification. | M |
| OLA006 | Ability to upload documents and correspondence into OLIMS.  
**Update 2026-01-27 (OLA006 feedback):**
* Clarify whether OLIMS already supports document and correspondence upload, and if not, specify the required implementation details.  
* Add a note to confirm current OLIMS capabilities for document upload, and if new development is needed, define storage location, document linking/naming standards, and categories as per OLA007/OLA008. | M |
| OLA007 | New document categories for EPSS On Duty and EPSS Off Duty.  
**Update 2026-01-27 (OLA007 feedback):**
* Specify that new document categories for "EPSS On Duty" and "EPSS Off Duty" must be added in OLIMS.  
* Clarify in the requirements which OLIMS screen(s) these categories will appear on, or state if a new screen is required. | M |
| OLA008 | New document sub categories:   * Period 1 * Period 2 * Period 3 * Commencement * Recommencement * Request for Review * Dispute * Cessation * Finalisation * Recoveries.  
**Update 2026-01-27 (OLA008 feedback):**
* Clarify where in OLIMS the new document subcategories (Period 1, Period 2, Period 3, Commencement, Recommencement, Cessation, Finalisation, Recoveries) will be added, and whether different templates are required for each subcategory.  
* Add a section specifying the OLIMS screen/location for the new document subcategories and confirm if unique templates are needed for each; request business to provide any required templates. | M |
| OLA009 | Reporting capability of documents in the Document Overview screen.  
**Update 2026-01-27 (OLA009 feedback):**
* Clarify whether the reporting capability for documents in the Document Overview screen is already available in OLIMS or if new development is required.  
* Add a note to confirm with the business (AZ) if OLIMS currently provides this reporting functionality; if not, specify the required enhancements and update the requirement status accordingly. | M |
| OLA010 | Ability to hide and unhide documents from OLIMS due to an error or privacy concerns. A comment must be entered if a document is hidden. Access should drive this and redaction.  
**Update 2026-01-27 (OLA010 feedback):**
* Clarify whether the ability to hide/unhide documents (with mandatory comment) already exists in OLIMS or needs to be developed, and specify if this should be implemented in the Document Overview screen.  
* Add a note to define who can view hidden documents and whether document templates require "hide" and "hide comment" fields. | M |
| OLA011 | The EPSS Claims Officer and Supervisor both to be able to run the audit log for periodic review and compliance checks for any documents deleted from OLIMS.  
**Update 2026-01-27 (OLA011 feedback):**
* Clarify whether OLIMS currently has an audit log for document deletions, and confirm if both upload (create) and delete actions for documents require audit logging.  
* Add a note to the requirement specifying that both document uploads and deletions must be audit logged, and update the document to clarify the business need for tracking both actions in OLIMS. Seek confirmation from the business on whether audit logging for both upload and delete is required. | M |
| OLA012 | Documents uploaded into OLIMS via the EPSS Case Management module to be recorded as EPSS Notes.  
**Update 2026-01-27 (OLA012 feedback):**
* Clarify and document what "EPSS Notes" means in the context of document uploads—specifically, whether it is a sub-section, a tagging mechanism, or a dedicated notes field, and where/how it is displayed in OLIMS.  
* Add a definition and example (with screenshot if possible) of "EPSS Notes" to the requirement, specifying how uploaded documents are recorded as notes in OLIMS and where users can view or access these notes. | M |
| OLA013 | In the document overview screen, 2 new fields are required for a claims officer data entry;   * Date Received * Comments.  
**Update 2026-01-27 (OLA013 feedback):**
* The document overview screen must include two new data entry fields for claims officers: "Date Received" and "Comments."  
* Clarification is needed on where these fields should appear (e.g., in the import document sub-screen) and the required field length for "Comments."  
* Add "Date Received" and "Comments" fields to the document overview screen for claims officer data entry. Confirm with business where these fields should be located and specify the maximum length for the "Comments" field. | M |
| OLA014 | EPSS documents inbound and outbound need to be reportable for compliance and SLA performance reporting.  
**Update 2026-01-27 (OLA014 feedback):**
* Clarify whether existing document reporting can be leveraged or if new reporting functionality is required for EPSS documents.  
* Add a requirement specifying the expected output and format of the compliance and SLA performance report for inbound and outbound EPSS documents. | M |

#### Request for Review tab

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| OLC001 | Add a new parent category drop down list to “Type of Review”:   * Query * Complaint * Dispute.  
**Update 2026-01-27 (OLC001 feedback):**
* Clarify whether selecting a "Type of Review" is mandatory for new and existing records.  
* Specify the OLIMS screen number (4103) for the enhancement.  
* Add a note to the requirement stating if the "Type of Review" field must be mandatory on create/edit, and reference OLIMS screen 4103 for implementation clarity. | M |
| OLC002 | Add a new dynamic drop down field titled “Requestor” which is mapped to the review type ‘Complaint’.  Complaint (requestor types)   * Claimant * Internal * Solicitor * PANSW * Other   + If other, free text field to be available to enter description.  
**Update 2026-01-27 (OLC002 feedback):**
* Clarify whether selecting a "Requestor" type is mandatory when logging a Complaint, and if this requirement applies retroactively to existing records.  
* Add a note specifying if the "Requestor" field is mandatory for new and/or existing Complaint records, based on business confirmation. | M |
| OLC003 | Add a new dynamic drop down field titled “Dispute origin or Jurisdiction” which is mapped to the review type Dispute.  Dispute (requestor types)   * Direct - Claimant * Direct - Solicitor * PANSW * Personal Injury Commission * Industrial Relations Commission * Other   + If other, free text field to be available to enter description.  
**Update 2026-01-27 (OLC003 feedback):**
* Clarify whether selecting a "Requestor" is mandatory for the Dispute review type, and if this requirement applies retroactively to existing records.  
* Add a note specifying if the "Requestor" field is mandatory for Dispute reviews and whether this applies to both new and existing records when edited. | M |
| OLC004 | Add a new dynamic drop down field titled “Query Type” which is mapped to the review type ‘Query’;   * Policy / Factsheets / Coverage * Process * Payment / Calculation * Follow up existing matter * Other   + If other, free text field to be available to enter description.  
**Update 2026-01-27 (OLC004 feedback):**
* Clarify whether selecting a "Query Type" is mandatory when creating or editing a "Query" review type, and if this applies retroactively to existing records.  
* Add a note specifying if the "Query Type" field is mandatory for new and/or existing records, based on business response to the open query. | M |
| OLC005 | Add a new dynamic drop down field titled “Complaint Type” which is mapped to review type ‘Complaint’:   * Payment / Calculation * Overpayment * Process * Customer Service * Review of Decision * Privacy Laws * Other   + If other, free text field to be available to enter description.  
**Update 2026-01-27 (OLC005 feedback):**
* Clarify whether selecting a "Complaint Type" is mandatory when creating or editing a Complaint record in the Request for Review tab, including for existing records.  
* Add a note specifying if the "Complaint Type" field is mandatory for new and/or existing Complaint records, based on business response to the open query. | M |
| OLC006 | Add a new dynamic drop down field titled “Dispute Type” which is mapped to review type ‘Dispute’:   * Eligibility for payment * Discontinue a payment * Medical Dispute * Privacy Laws * Other   + If other, free text field to be available to enter description.  
**Update 2026-01-27 (OLC006 feedback):**
* Specify that a new dynamic drop-down field titled “Dispute Type” must be added, mapped to the review type ‘Dispute’, with the listed options and a free text field if “Other” is selected.  
* Add this requirement to the relevant OLIMS UI/UX and data model sections, ensuring the drop-down and free text logic are clearly described. | M |
| OLC007 | For the review type “Query”, a due date is required that will be 2 days from the date the record is created.  
**Update 2026-01-27 (OLC007 feedback):**
* Clarify how the due date is calculated and updated when the review type changes, and specify whether 'review type' and 'due date' are new or existing fields in OLIMS.  
* Add a note to confirm the due date logic when the review type changes (e.g., from Query to Complaint), and clarify if 'review type' and 'due date' are new fields, including which OLIMS screen/tab this applies to. | M |
| OLC008 | For the review type “Complaint”, a due date is required that will be 10 days from the date the record is created.  
**Update 2026-01-27 (OLC008 feedback):**
* Specify that for review type "Complaint" in the Request for Review tab, a due date must be automatically set to 10 days from the record creation date.  
* Add a requirement so that when a "Complaint" is logged, the system sets the due date to 10 days after the creation date. | M |
| OLC009 | For the review type “Dispute”, a due date is required that will be 15 days from the date the record is created.  
**Update 2026-01-27 (OLC009 feedback):**
* Clarify the due date logic for the "Dispute" review type in the Request for Review tab, ensuring it is set to 15 days from the record creation date.  
* Add a clear requirement that, for review type "Dispute," the system must automatically set the due date to 15 days after the record is created. | M |
| OLC010 | In the ‘Previous Reviews’ section, the current table logging the records to have the following changes:   * Date From è rename to “Date Received” * Date To è replace the new field “Due Date” * Final Response è new field that allows the user to upload a document * Escalation Flag è escalate to team member and will create a Task that is allocated to the EPSS Supervisor * Closed Date è date field for the user to update * Reviewer Name è field to record the reviewer’s employee number and name * Reviewed Date è date field for the reviewer to enter.  
**Update 2026-01-27 (OLC010 feedback):**
* Update the "Previous Reviews" section in the Request for Review tab to reflect the required changes: rename "Date From" to "Date Received", replace "Date To" with a new "Due Date" field, add a "Final Response" document upload field, implement an "Escalation Flag" that creates a task for the EPSS Supervisor, add editable "Closed Date", "Reviewer Name" (employee number and name), and "Reviewed Date" fields.  
* Clarify the workflow for escalation and document upload, ensuring all new fields and functionalities are described for implementation. | M |
| OLC011 | The Request for Review tab to be reportable and a new report to be built to allow for performance and scheme reporting.  
**Update 2026-01-27 (OLC011 feedback):**
* Capture the required report layout, selection criteria, and clarify what "scheme reporting" means for the Request for Review tab.  
* Add a section requesting business input on the expected report layout, selection fields, definition of scheme reporting, and specify from which OLIMS or SAP screen the report should be executed. | M |
| OLC012 | The ability to upload more than one document per record.  
**Update 2026-01-27 (OLC012 feedback):**
* Clarify what defines a "record" for the Request for Review tab in OLIMS and specify any naming conventions or standards for multiple document uploads.  
* Add a definition of "record" (with OLIMS screen reference) and document any naming standards for multiple uploads to ensure consistent implementation and user guidance. | C |

#### OLIMS Diary / Reminders / Tasks

|  |  |  |
| --- | --- | --- |
| **Req. #** | **Requirement Description** | **Priority** |
| OLD001 | For EPSS claim management, a standard set of system generated tasks in OLIMS are to be triggered by key events that will have SLA’s and due dates to monitor service performance.  
**Update 2026-01-27 (OLD001 feedback):**
* Clarify what constitutes the "standard set" of system-generated OLIMS tasks for EPSS claim management and whether existing OLIMS task/workflow functionality can be leveraged.  
* Add a detailed list of the standard OLIMS tasks to be triggered, referencing the task list, and include a note to confirm if existing OLIMS workflow can be reused or if new development is required, pending a system demo. | M |
| OLD002 | For adhoc claims management activities, a standard set of tasks that a EPSS Claims Officer or Supervisor can generate for a claim.  
**Update 2026-01-27 (OLD002 feedback):**
* Clarify what information must be captured for each ad hoc task generated by an EPSS Claims Officer or Supervisor, and reference or summarise the standard task list.  
* Add a section specifying the required data fields for each ad hoc task (e.g. task name, description, due date, assigned to, status) and include or link to the standard EPSS Task List referenced in the working document. | M |
| *-* | *Refer to working document EPSS – Task List on next page* | *-* |
| OLD003 | The standard functionality of creating manual Reminders/To Do Actions within the incident to be available for EPSS Claim Management.  
**Update 2026-01-27 (OLD003 feedback):**
* Clarify if there are any differences between the existing OLIMS manual reminder functionality and what is required for EPSS, and include the OLIMS path or screenshot for the inherited functionality.  
* Add a note specifying whether the EPSS manual reminders will use the existing OLIMS functionality unchanged, and insert the OLIMS path or a screenshot to illustrate the process for users. | M |
| OLD004 | The standard functionality to Display Reminders/To Do Actions within the incident to be available for EPSS Claim Management.  
**Update 2026-01-27 (OLD004 feedback):**
* Clarify the OLIMS path or provide a screenshot of the existing "Display Reminders/To Do Actions" functionality that will be inherited for EPSS manual reminders.  
* Add a screenshot or detailed navigation steps for displaying reminders/to-do actions in OLIMS, as requested in the DTT query. | M |
| OLD005 | A new Reminder/To Do Action category is needed for EPSS to differentiate from the current categories in OLIMS.  
**Update 2026-01-27 (OLD005 feedback):**
* Add the specific name for the new Reminder/To Do Action category required for EPSS in OLIMS, and include a screenshot or path reference to the existing functionality.  
* Add the agreed name for the new EPSS Reminder/To Do Action category once confirmed by the business, and include a screenshot or OLIMS navigation path to the current Reminder/To Do Action functionality for clarity. | M |
| OLD006 | The ability for a EPSS Claims Officer or EPSS Supervisor to ‘suspend/put on hold’ a task to pause the SLA/Due Date is required.  
**Update 2026-01-27 (OLD006 feedback):**
* Clarify whether suspending/putting a task on hold should automatically adjust the due dates and SLAs of any dependent or follow-up tasks, and specify if this impacts payroll calculations.  
* Add a note to confirm with business if existing OLIMS task suspension logic can be leveraged or needs to be customised for EPSS. | M |
| OLD007 | When a Task is put on hold/suspended, a reason must be entered by the user to justify.  
**Update 2026-01-27 (OLD007 feedback):**
* Clarify whether all tasks (including those triggered by batch jobs) are visible in OLIMS for suspension, confirm the available status options for tasks (e.g. On Hold/Suspended), and specify if the suspension reason is a free text field displayed online.  
* Add clarifications stating that all tasks (manual and system-generated) must be available in OLIMS for suspension, list the available task status options, and confirm that the suspension reason is a mandatory free text field visible in the OLIMS UI. | M |
| OLD008 | When a suspended Task is removed and back to work in progress, the original due date to remain and a new due date to be created as a separate record calculated by the remaining SLA time.  
**Update 2026-01-27 (OLD008 feedback):**
* Clarify the business rules for due dates when a suspended task is resumed, especially if the original due date has already passed, and confirm that completed tasks cannot be suspended.  
* Add a note specifying that when a suspended task is resumed, the original due date remains and if it is already in the past, the task is considered overdue; also, clarify that completed tasks cannot be suspended. | M |
| OLD009 | The ability for the EPSS Claims team to create and edit the task templates for flexibility to adapt to the agile pace in implementing EPSS.  
**Update 2026-01-27 (OLD009 feedback):**
* Clarify that the EPSS Claims team requires the ability to both create and edit task templates in OLIMS for ongoing flexibility.  
* Add a note that all task templates must be defined, including specifying the data sources for each template, as per the outstanding business query. | C |
| OLD010 | The EPSS Tasks are to be reportable for both current work in progress and completed tasks for performance and SLA reporting.  
**Update 2026-01-27 (OLD010 feedback):**
* Clarify the reporting requirements for EPSS Tasks, including whether the report will be delivered via SAP or OLIMS, what selection criteria and output fields are needed, and if existing task reporting can be leveraged.  
* Add a section specifying the required selection criteria and output fields for the EPSS Tasks report, clarify if the report is to be delivered in SAP or OLIMS, and note any differences from existing task reporting. | M |

Task List

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **#** | **Task** | **Assigned To** | **SLA (business days)** | **Trigger** | **System generated** | **Comment** |
| 1 | Triage and allocate claim | EPSS Supervisor | 1 | WC Claim flagged as primary | Yes |  |
| 2 | Period 1 - Acknowledgement and initial contact | EPSS Claims Advisor | - | Above task completed | Yes | *Opportunity for an email from SAP to be sent out* |
| 3 | Period 1 - Initial Assessment | EPSS Claims Advisor | 5 | Creation of Task # 2 | Yes |  |
| 4 | Period 1 - Phone Contact with officer | EPSS Claims Advisor | 5 | Creation of Task # 2 | Yes |  |
| 5 | Period 1 - Send Commencement Letter | EPSS Claims Advisor | 5 | Creation of Task # 2 | Yes |  |
| 6 | Period 1 - Send Income Statement | EPSS Claims Advisor | 5 | Creation of Task # 2 | Yes |  |
| 7 | Period 1 - Income Statement - Follow up | EPSS Claims Advisor | 10 | Task 6 is completed and Task # 10 hasn’t been completed | Yes | This SLA is calendar days |
| 8 | Period 1 - Income Statement Outstanding – Draft Dispute Notice | EPSS Claims Advisor | 25 | Task 6 is completed and Task # 10 hasn’t been completed | Yes | This SLA is calendar days |
| 9 | Period 1 - Income Statement Outstanding – Raise Dispute Notice | EPSS Claims Advisor | 28 | Task 6 is completed and Task # 10 hasn’t been completed | Yes | This SLA is calendar days |
| 10 | Period 1 - Income Statement Assessment completed | EPSS Claims Advisor | 20 | Task 6 is completed | Yes |  |
| 11 | Period 1 – ORP increase / change | EPSS Claims Advisor | 5 | Increase/Decrease in Period 1 ORP and/or Increase/Decrease in Planned Working Time weekly hours | Yes |  |
| 12 | Assess EPSS benefit & eligibility | EPSS Claims Advisor | 9 | Monday Pay Week | Yes | Recurring task |
| 13 | External Income Review - Quarterly | EPSS Claims Advisor | 5 | Every 3 months from DOD | Yes | Recurring task |
| 14 | Period 2 - Initial Assessment | EPSS Claims Advisor | 5 | P1 week count = 34 | Yes |  |
| 15 | Period 2 - Phone contact with officer | EPSS Claims Advisor | 5 | P1 week count = 34 | Yes |  |
| 16 | Period 2 - Send Transition to Period 2 Letter | EPSS Claims Advisor | 5 | P1 week count = 34 | Yes |  |
| 17 | Period 2 - Indexation Letter | EPSS Claims Advisor | 5 | 01-Oct (every calendar year) | Yes | Recurring task |
| 18 | External Income Review - Annual | EPSS Claims Advisor | 5 | 01-Dec (every calendar year) | Yes | Recurring task |
| 19 | Period 2 - Send Income Statement | EPSS Claims Advisor | 5 | Creation of Task # 16 | Yes |  |
| 20 | Period 2 - Income Statement - Follow up | EPSS Claims Advisor | 10 | Task 19 is completed and Task # 23 hasn’t been completed | Yes | This SLA is calendar days |
| 21 | Period 2 - Income Statement Outstanding – Draft Dispute Notice | EPSS Claims Advisor | 25 | Task 19 is completed | Yes | This SLA is calendar days |
| 22 | Period 2 - Income Statement Outstanding – Raise Dispute Notice | EPSS Claims Advisor | 28 | Task 19 is completed | Yes | This SLA is calendar days |
| 23 | Period 2 - Income Statement Assessment completed | EPSS Claims Advisor | 20 | Task 19 is completed | Yes |  |
| 19 | IP Make Up Leave | Governance Officer | 9 | **Condition:** Officer in Period 2 Benefits  Monday Pay Week | Yes | Recurring task |
| 20 | Period 2 – Claim Finalisation | EPSS Claims Advisor | 5 | Period 2 finalised | Yes |  |
| 21 | Financial Assessment Review | EPSS Supervisor | 2 | OLIMS "external income" record created | Yes |  |
| 22 | Claim Finalisation | EPSS Claims Advisor | 5 | PID WC Certificate uploaded | Yes |  |
| 23 | Claim Review – WC Status Change | EPSS Claims Advisor | 2 | Change in WC Status (Pending Case Closure, Closed, Reopened) | Yes |  |
| 24 | Claim Review – WC Liability Status Change | EPSS Claims Advisor | 2 | Change in WC Liability Status | Yes |  |
| 25 | Claim Review – Change in WC Primary claim | EPSS Claims Advisor | 2 | Change in WC primary flag (unflagged/ reflagged) | Yes |  |
|  |  |  |  |  |  |  |
| M | Create terminated employee for EPSS | Governance Officer | 5 |  | Manual |  |
| M | Request for Review | EPSS Claims Advisor | 5 |  | Manual |  |
| M | WID settlement recoveries | EPSS Claims Advisor | 5 |  | Manual |  |
| M | TPD Offset | EPSS Claims Advisor | 2 |  | Manual |  |
| M | PBRI IP Offsets | EPSS Claims Advisor | 2 |  | Manual |  |
| M | Death Claim – send information | EPSS Claims Advisor | 2 |  | Manual |  |
| M | Period 1 - Claim Declinature | EPSS Claim Advisor | 5 |  | Manual |  |
| M | Period 2 – Claim Declinature | EPSS Claim Advisor | 5 |  | Manual |  |

#### External Income and Payment offset model

|  |  |  |  |
| --- | --- | --- | --- |
| **Req. #** | **Requirement Description** | | **Priority** |
| OLE001 | Integration to IT0015 for Other Income.  
**Update 2026-01-27 (OLE001 feedback):**
* Clarify the integration process for entering external earnings in OLIMS and syncing to IT0015 (WT3670), including file import requirements, audit trail, and handling of multiple/recurring entries.  
* Add details on preventing manual IT15 entries, document management, and outstanding policy decisions on income/payment offset inclusions and exclusions.  
Scoped by Deloitte during Phase 4. Refer:  [BRD4\_Phase 4\_Requirements Notes.xlsx](https://nswpolice.sharepoint.com/%3Ax%3A/r/sites/-T-EPSS-SAP-Team/Shared%20Documents/General/Phase%204/BRD4_Phase%204_Requirements%20Notes.xlsx?d=w804f0a06718b4f89a9b4fca3db789efe&csf=1&web=1&e=cuAUPV) | | M |
| OLE002 | The OLIMS ‘Other/External Earnings’ tab is to be utilised by the EPSS Claims Officer to enter earnings to offset an EPSS payment and attach the supporting document and evidence.  
**Update 2026-01-27 (OLE002 feedback):**
* Clarify whether supporting documentation is mandatory for external earnings entries and to confirm if the same OLIMS screen/rules apply for detached officers’ WC payments.  
* Add a note specifying if documentation is required before entry and whether detached officers use the same process, pending business response to the open queries. | | M |
| OLE003 | In OLIMS a new field to record the Earning Category; income or payment.  
**Update 2026-01-27 (OLE003 feedback):**
* Clarify the definition and distinction between "income" and "payment" for the new Earning Category field in OLIMS, and specify whether different wage types are required for each category.  
* Add definitions for "income" vs "payment" in the requirements, and state if separate wage types are needed and enforced based on the selected earning category. | | M |
| OLE004 | For earning category “income” a list of options to be available for the claims officer to select.  
**Update 2026-01-27 (OLE004 feedback):**
* Add a table or bullet list specifying the selectable “income” options for claims officers in OLIMS under OLE004, and clarify in the requirement that these options are for OLIMS use only and do not impact payroll functionality. | | M |
| OLE005 | For earning category “payment” a list of options to be available for the claims officer to select.  
**Update 2026-01-27 (OLE005 feedback):**
* Add the specific list of selectable “payment” options for claims officers in OLIMS, and clarify in the requirement that these options are for OLIMS use only and do not impact payroll functionality. | | M |
| OLE006 | There may be more than one earning type that covers the same date range, e.g. external PAYG income and a lump sum payment.  
**Update 2026-01-27 (OLE006 feedback):**
* Clarify and document whether the same external earning wagetype (WT) can be loaded multiple times for the same date range, and if different earning types require separate WTs in SAP for calculation or reporting.  
* Specify if "earning type" is a category in OLIMS.  
* Add a note specifying the business decision on duplicate WT entries for overlapping dates, SAP WT mapping for different earning types, and clarify the treatment of "earning type" in OLIMS for both data entry and reporting. | | M |
| OLE007 | The ability to Create and Delete entries, no change/update option.  
**Update 2026-01-27 (OLE007 feedback):**
* Clarify that OLIMS must prevent creation or deletion of external income/payment offset entries if the payroll control record is locked, displaying an error to the Claims Officer at entry (not saving for later).  
* Add a note that retroactive changes can impact employee pay and may trigger claims or adjustments, so case officer processes must align with payroll lock periods. | | M |
| OLE008 | When an entry is deleted this to remain in the audit trail, visibility in OLIMS or a transaction to run the audit trail will be required.  
**Update 2026-01-27 (OLE008 feedback):**
* Clarify the audit trail requirements for deleted external income/payment offset entries in OLIMS, including whether the SAP standard audit trail/report (e.g. PC00_M16_UAUD) is sufficient and who should have access.  
* Add a note specifying that deleted entries must remain visible in the audit trail, confirm if the SAP standard audit report meets this need, and define user access for running the audit report in OLIMS and SAP. | | M |
| OLE009 | When an entry is deleted, the action will also remove the document automatically.  
**Update 2026-01-27 (OLE009 feedback):**
* Clarify the handling of document deletion when an external income/payment offset entry is deleted, especially given OLE008 requires audit trail visibility (i.e., records are flagged inactive, not deleted).  
* Add a note specifying that when an entry is deleted (flagged inactive), any associated documents should also be flagged as inactive or hidden, not physically deleted, to maintain audit trail integrity. | | M |
| OLE010 | Both ‘one-off’ and recurring offsets can be created, driven by start and end dates.  
**Update 2026-01-27 (OLE010 feedback):**
* Clarify the business rules for handling recurring external income offsets, including whether recurring entries can be automated with start/end dates, how splits are managed across incidents and pay cycles, and if external earnings should be matched to specific incidents.  
* Add a section specifying the business decision on recurring external earnings: confirm if automation with start/end dates is required, define how splits and incident matching should work, and update OLIMS entry requirements accordingly. | | M |
| CR001 | The EPSS Claims Advisor will enter any earnings to offset through IT0015 utilising wagetype 3670 | M | |

#### EPSS estimation tab / forecasting calculator

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| OLF001 | **Update 2026-01-27 (OLF001 feedback):** The EPSS estimation tab/forecasting calculator must specify all data entry fields, calculation logic, and storage/reporting requirements. The section must list the data items the EPSS Claims Officer must enter, the formulas/calculation logic to be used, whether estimates are saved for reporting, and how the data integrates with existing OLIMS screens and reports. This detail is to be finalised once business responses to open queries are received. | M |
| OLF002 | **Update 2026-01-27 (OLF002 feedback):** There is a one-to-one relationship between each incident and its forecasted estimate in OLIMS. EPSS claims officers are responsible for entering estimates in OLIMS. Key fields required for unique reporting of estimates include: incident number, claim number, and date range. Add a definition of the one-to-one relationship, confirm user roles for data entry, and list the key fields that uniquely identify each estimate for reporting. | M |
| OLF003 | **Update 2026-01-27 (OLF003 feedback):** Clarify whether Period 3 fields in the EPSS estimation tab should display as blank or zero when no data is entered. Add a note to confirm the expected placeholder behaviour for Period 3 fields in the estimate screen. | M |
| OLF004 | **Update 2026-01-27 (OLF004 feedback):** Specify the key fields used to combine totals for multiple estimate records per benefit period and quarter, and clarify if WC section should be included as a key or output field. Key fields for grouping and totaling estimates include: benefit period, quarter, WC section, and RTW capacity. Clarify if WC section is required as an output or grouping field in the estimation tab and related reports. | M |
| OLF005 | **Update 2026-01-27 (OLF005 feedback):** The document must clarify definitions, data sources, calculation logic, and user input fields for the Period 1 estimate section in the EPSS estimation tab. Add detailed definitions for "RTW hours" and "RTW salary," specify data sources and calculation methods for each field, clarify whether the forecast uses averages or actuals for weekly payments, and list which fields are user inputs versus system-derived. Include report selection criteria and intended output structure as per the queries raised. | M |
| OLF006 | **Update 2026-01-27 (OLF006 feedback):** The EPSS estimation tab/forecasting calculator section must clearly list all required Period 2 estimate fields, including calculation logic and validation for the "Future # of weeks" (max 52). Add a detailed breakdown of the Period 2 estimate fields and formulas to the requirements, and specify that the "Future # of weeks" input must be validated to not exceed 52 weeks. | M |
| OLF007 | **Update 2026-01-27 (OLF007 feedback):** Clarify the calculation requirements and formulas for Period 3 (P3) estimation, specify which fields are user-entered vs. system-calculated, and define data sources and effective dates for each field. Add detailed calculation rules and formulas for P3, indicate which values are entered by the case officer (mark with *), specify data sources and effective dates for each field, and confirm if the future # of weeks is capped at 52 (one year). | M |
| OLF008 | **Update 2026-01-27 (OLF008 feedback):** Clarify whether the requirement for rolling up total estimates per benefit period for the forecasted quarter applies to the online OLIMS forecast, the icare recoup report, or both, and specify the minimal requirement. Add a note to the requirement explicitly stating if the roll-up is needed in OLIMS, the icare recoup report, or both, and confirm if Period 3 estimates must be included for reporting. | M |
| OLF009 | **Update 2026-01-27 (OLF009 feedback):** Clarify what estimate fields will be entered in OLIMS, their effective dates, and how each field maps to the icare recoup report, especially since the icare recoup output differs from the OLF005–OLF007 requirements. Add a section specifying the OLIMS estimate fields, their effective dates, and detailed mapping rules for how each is used in the icare recoup report, ensuring alignment with both the calculator and reporting requirements. | M |
| OLF010 | **Update 2026-01-27 (OLF010 feedback):** Clarify whether the forecast report is to be developed in OLIMS or backend SAP, and if it should allow manual entry/override of icare recoup report values or just use OLIMS forecast data for calculations. Add a note to confirm the technical platform for the forecast report (OLIMS vs SAP) and specify if manual overrides to icare recoup report outputs are required, or if the report should only reflect OLIMS-entered forecast data. | M |

#### Display increases in Period 1 ordinary rate of pay (ORP)

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| OLG001 | **Update 2026-01-27 (OLG001 feedback):** The visibility of Period 1 ORP in OLIMS must reflect only IT0008/backend rates. ORP overwrite/manual override for Period 1 is out of scope and not required (see OLG003/1PA003). Remove any references to ORP overwrite/manual override for Period 1 in this requirement and ensure the display logic is based solely on IT0008 values and their effective dates. | M |
| OLG002 | **Update 2026-01-27 (OLG002 feedback):** The weekly ORP value must be calculated as the annual amount divided by 52.17858 (not 52). Add a note in the OLIMS EPSS Case Management module requirements for the new tab to clarify this calculation method. | M |
| OLG003 | **REMOVED / PARKED (2026-01-27):** ORP override capability is not in scope at this time (see 1PA003). Status: Closed – not required. All related queries are now N/A. | W |
| OLG004 | **REMOVED / PARKED (2026-01-27):** ORP override UI/audit fields are not required while ORP override capability is out of scope (see 1PA003/OLG003). All related queries/requirements are not required. | W |
| OLG005 | **REMOVED / PARKED (2026-01-27):** ORP override active/inactive record management is not required while ORP override capability is out of scope (see 1PA003/OLG003–OLG006). Status: Closed – Not Required. | W |
| OLG006 | **REMOVED / PARKED (2026-01-27):** ORP override audit report is not required while ORP override capability is out of scope (see 1PA003). | W |
*Note: All ORP display and calculation logic for Period 1 must be based solely on IT0008 values and their effective dates. The weekly ORP value is calculated as annual amount / 52.17858. ORP override/manual override is out of scope and not required.*

#### EPSS Claim Status reasons

**Business Requirements for EPSS Claim Status Reasons**

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| OLH001 | **Update 2026-01-27 (OLH001 feedback):** When an EPSS Claim status is set to ‘closed’ for On Duty injuries, additional sub-reasons must be captured and reportable in OLIMS for scheme-wide reporting. The required sub-reasons are:
	- WC Claim Closed
	- Non-Compliance of WC Obligations
	- Returned PID
	- Reached retirement age
	- Work Injury Damages (WID)
	- Dismissed S181D
	- Removed S80(3)
	- Appointment as a Police Officer ceased
	- Convicted of Criminal Offence
	- Serving custodial sentence
	- Death
	- Disputed Claim
	- Not in receipt of workers compensation weekly benefits
	- Resigned
	- Other – with free text
These sub-reasons must be selectable in OLIMS and included in all relevant reports. | M |
| OLH002 | **Update 2026-01-27 (OLH002 feedback):** The full list of EPSS claim closure sub-reasons must match the business requirement details above, and OLIMS claim status configuration/documentation must include each sub-reason exactly as specified, ensuring none are omitted. | M |
| OLH003 | **Update 2026-01-27 (OLH003 feedback):** In the context of claim status reasons, an "override" refers to any change to the reason code or sub-reason after initial entry. OLIMS must audit all such changes, and a report must be available to monitor and quality-assure these overrides. The requirement must specify exactly which actions are to be audited in the report. | M |
| OLH001 | For EPSS Scheme wide reporting to measure cost, performance and fairness, additional sub reasons are required to be captured for when an EPSS Claim status is ‘closed’ for an On Duty injury | M |
| OLH002 | Sub Reasons:   * WC Claim Closed * Non-Compliance of WC Obligations * Returned PID * Reached retirement age * Work Injury Damages (WID) * Dismissed S181D * Removed S80(3) * Appointment as a Police Officer ceased * Convicted of Criminal Offence * Serving custodial sentence * Death * Disputed Claim * Not in receipt of works compensation weekly benefits * Resigned * Other – with free text | M |
| OLH003 | A report to be available within OLIMS to audit any overrides processed by EPSS Claims Officers for ongoing monitoring and quality assurance checks | M |

#### Period 1 payments: control to start, pause and recommence

| P1C001 | **Update 2026-01-27 (OLG001 feedback):** Commence P1 payment flag: control to start, pause and recommence. The flag must default to "Not approved to pay" for all new incidents, and only managers can revert it after approval. System must capture a reason when the flag is set/unset (e.g., "Awaiting WC claim approval," "No entitlement to EPSS"). A QA report is required showing the flag status and reason for all active primary claims. Payroll logic must stop both top-up payments and week counting when the flag is "Not approved to pay," including for S36/S37. When flag is set to "Approved," system must retroactively pay and count weeks from P1 start date. Restrict flag changes to appropriate roles (case officer/manager) as per business rules. | M |
| P1C002 | **Update 2026-01-27 (OLG001 Additional feedback):** Only users with the manager role can revert the Period 1 "approved to pay" flag. Document the process and transaction code to identify and assign manager/case officer roles for access control (e.g., zim_mgrcm or as confirmed). | M |
| P1C003 | **Update 2026-01-27 (OLG001 Additional feedback):** When the "Commence P1 payment" flag is set, a reason must be selected, defaulting to "Awaiting WC claim approval," with other options such as "No entitlement to EPSS." DK to provide the full list of valid reason codes for this flag. | M |
| P1C004 | **Update 2026-01-27 (OLG001 Additional feedback):** A QA report is required for Period 1 payment flags and reason codes/status, linked to transaction zim_cm, displaying only active primary EPSS claims for the selected pay period. | M |
| P1C005 | **Update 2026-01-27 (OLG002 feedback):** OLIMS must allow manual approval/initiation of Period 1 payments. The system must stop both ORP payments and week counting during pauses (S36/S37), with tracking of all pause/commencement dates and payroll splits. Tracking tables for pause/commencement must be implemented, and both payment and week counting are suspended during pauses. | M |
| P1C006 | **Update 2026-01-27 (OLG003 feedback):** Suspension/pause functionality applies to Periods 1, 2, and potentially 3, not just Period 1. Multiple suspension periods are allowed, with no overlapping or gaps, and active/inactive status must be tracked for audit. OLIMS must provide a screen/table for entering, viewing, and auditing suspension records, with start/end dates and reason codes. Week count and proration logic for suspensions that start/end mid-week must be confirmed and documented, including payroll and reporting impacts. | M |
| P1C007 | **Update 2026-01-27 (OLG003 Additional feedback):** Add a suspension type for Period 1 payments that fully pauses EPSS participation—weeks are not counted and end dates are pushed out during suspension. Await HSW confirmation on business rules and scenarios. | M |
| P1C008 | **Update 2026-01-27 (OLG004 feedback):** OLG004 is now fully covered by P1C006. The manual trigger for start, pause, and recommence must also handle retrospective recalculations for missed payroll periods, and the requirement ID is updated to avoid duplication. | M |
| P1C009 | **Update 2026-01-27 (OLG005 feedback):** When EPSS Period 1 payments are paused or set to "Not to pay," only the EPSS payment is suppressed—workers compensation payments and week counting (including for s36/s37) must continue as normal. Week counts should not be pro-rated unless business approval is given for a change, and payroll logic and tracking tables must support this separation. | M |

#### Period 2 payments: control to start, pause and recommence

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| OLH001 | Currently the EPSS calculation and payment of EPSS Period 2 are automated as soon as; a) Period 1 has been exhausted and b) a WC certificate is uploaded and the P905 is processed or reprocessed in OLIMS, passing the information to payroll.  The current design of automation of EPSS Period 2 supplementary supports to be amended that it won’t automatically calculate and pay. A flag that defaults to “Not approved to pay”.  Workers compensation payments will still need to be paid regardless of the approval status to pay EPSS.  *Workshop note (min_a.md): “Not approved to pay” control relates to EPSS payments only; workers compensation payments continue unchanged.* | M |
| OLH002 | The EPSS Claims Officer will need the ability in OLIMS to manually approve/initiate the commencement of the SAP automation of Period 2 calculation and payments. | M |
| OLH003 | The EPSS Claims Officer will need the ability in OLIMS for at any point in time in the claim journey, to stop EPSS payments and when eligibility requirements are met, recommence the EPSS payments.  This is to be date driven and the claims officer to enter dates without any gaps. | M |
| OLH004 | The manual trigger to start, pause and recommence the automation of the SAP Period 2 calculation and payments to also handle retrospective recalculations for any missed payroll periods due to late advice of initiating payments. | M |
| OLH005 | The commencement, pausing and recommencement of EPSS Period 2 payments are to operate separately to the current Workers Compensation solution (OLIMS P905 creating the IT0014 9WCO record).  The officer is still to receive their workers compensation payments even if the EPSS claim is flagged “NOT TO PAY”. | M |

### OLIMS: PBRI transitional claims - Claim Management

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| TR001 | **Update 2026-01-27 (TR001 feedback):** Business rules for offsetting PBRI weeks from EPSS Period 1 must be clarified and documented, including handling of partial weeks, rounding, and the “start counting from” logic. Specify that transition functionality and week override should be implemented in the “Top-Up / Disab. Date / IP Dates” tab in OLIMS. Define the process for handling retrospective changes to PBRI payments and their impact on EPSS transition dates and week counts. Payroll logic must check the actual P1 week duration after transition and handle overrides. Add a requirement for tracking and auditability of transition dates, weeks used, and any manual overrides. | M |
| TR002 | **Update 2026-01-27 (TR002 feedback):** For PBRI transitional claims starting in Period 2, a new OLIMS screen is required to record the EPSS transition details, including the recurrence (transition) date and the number of PBRI days to offset from the 7-year Period 2 entitlement. Payroll must support retroactive splits, and the DOD cannot be changed for these incidents—only the recurrence date drives EPSS commencement. | M |
| TRSCEN | **Update 2026-01-27:** PBRI transitional claim scenarios in OLIMS must include override functionality for Period 1 weeks and Period 2 days used, and payroll logic must support correct benefit period transitions and splits. Scenario 1 is already automated. Document error handling for automatic vs manual transitions. | - |
| TR003 | **Update 2026-01-27 (TR003 feedback):** OLIMS must support transitioning claims from PBRI to EPSS, including the ability to override weeks used for Period 1 and days used for Period 2, and ensure payroll splits and tracking of pause/commencement dates are handled. Both functional and technical payroll changes are required to capture the transition accurately. | M |
| TR004 | **Update 2026-01-27 (TR004 feedback):** Once the EPSS period (Period 1 or Period 2) is set for a PBRI to EPSS transition, it cannot be changed back and forth; only the latest selection is retained, and history of changes is not required. Only one period selection is valid at any time and previous selections are not kept as inactive/history records in OLIMS. | M |
| TR005 | **Update 2026-01-27 (TR005 feedback):** OLIMS must support manual adjustment of the Period 1 week count for PBRI transitional claims, including the ability to override weeks used and ensure correct calculation of remaining benefits and transition to Period 2. Reporting and payroll logic must also reflect these manual adjustments and track any pauses or splits in benefit periods. | M |
| TR006 | **Update 2026-01-27 (TR006 feedback):** For PBRI transitional claims starting in Period 2, the reduction from the 7-year benefit should be based on the actual number of calendar days of prior IP/TAL/PBRI payments, not a fixed value (e.g., 65 days was only an example). The salary for P2 recurrence is to be taken as at the day before the P2 recurrence date, using the same wage type definition as standard P2 calculations. | M |
| TR007 | **REMOVED / PARKED (2026-01-27):** ORP override capability is not required for PBRI transitional claims as per business confirmation (duplicate of OLG003). | W |
| TR008 | **REMOVED / PARKED (2026-01-27):** Period 2 salary overwrite is obsolete per business feedback (DK 22/01/2026). No further implementation or design action required. | W |
| TR009 | **REMOVED / PARKED (2026-01-27):** New wagetypes for PBRI transitional claims are obsolete; existing EPSS wagetypes and adjustment wagetypes will be used. All adjustments must be linked to the associated incident and only paid if they overlap with the relevant incident, pending business approval for Phase 5. | W |
| TR009A | **Draft requirement (2026-01-27):** Adjustments and external earnings must be linked to the relevant incident, only paid if overlapping with the same 9WCO incident, and must record the incident/WC and reason code. Pending approval for Phase 5 scope. Cross-reference TR011 for PBRI adjustment wagetype considerations. | W |
| TR010 | **REMOVED / PARKED (2026-01-27):** New wagetypes for Period 2 and Period 2 manual adjustments for PBRI transitional claims are obsolete; existing EPSS wagetypes and adjustment wagetypes will be used for these payments and adjustments. | W |
| TR011 | **Update 2026-01-27 (TR011 feedback):** A new manual adjustment wagetype is required for PBRI Base Salary Adjustment (for retro adjustments to WT 4909). Incident linkage for reporting should be derived from 9WCO unless otherwise recorded. Action: obtain and attach the completed wagetype maintenance form for this new adjustment wagetype. | M |
| TR012 | **Update 2026-01-27 (TR012 feedback):** The new “PBRI Transition to EPSS” type in the OLIMS Claim Status tab is for reporting purposes only and does not trigger any payroll actions. Claim status options should be limited based on the selected type of claim, as requested by DK and Matt. | M |
| TR012A | **Update 2026-01-27 (TR012 Additional feedback):** Claim status selections in OLIMS for PBRI transitional claims must be limited based on the type of claim. The claim status drop-down for PBRI transitional claims must restrict available options according to the claim type; provide a table or list of allowed statuses per claim type. | M |
| TR013 | **Update 2026-01-27 (TR013 feedback):** The minimum required fields for the PBRI to EPSS transition report must include both the original and (if applicable) detached officer employee numbers. Recurrence info for P1/P2 should be included, and reporting requirements for detached officers must be explicitly stated in line with the business assumption. | M |

### Employee Contributions

|  |  |  |
| --- | --- | --- |
| **Req. #** | **Requirement Description** | **Priority** |
| CE001 | **Update 2026-01-27 (CE001 feedback):** Business must confirm if TAL requires a membership number for contribution reporting, as this impacts whether separate fund codes are needed. A new fund code and wagetype are proposed (not reusing existing ones). Business confirmation is required on fund/wagetype names, characteristics, GL posting, backend processing, and data entry validations before proceeding. | M |
| CE002 | **Update 2026-01-27 (CE002 feedback):** The employee contribution wagetype and fund code change is effective only from the payroll period when the change is deployed to production, with no retrospective application to prior periods. Retro corrections for periods before go-live will continue to use the old wagetypes, and terminated employees are not included in any retro processing for this change. | M |
| CE003 | **Update 2026-01-27 (CE003 feedback):** The new employee contribution percentage for Aware Super Death and Terminal Illness cover must be specified, including whether the change is retroactive, and confirm if the Aware Premium Billing report requires separate fund codes or can use the new single fund setup. Add the updated contribution rate, effective date, and reporting/fund structure decision once confirmed by the business. | M |

### Period 1 week count logic
[//]: # (Added 2026-01-27, source: min_a.md and meeting transcript)

#### Week Counting and Period Transition Discussion (2026-01-27)

**Source:** See meeting transcript (min_a.md, 27 Jan 2026, Rachel Timmermann, David Kumar, Salomina Malan, Emma Watson, et al.)

**Summary of Discussion:**

- The group identified that the first week of incapacity was previously being counted based on the pay cycle, not the actual first date of incapacity, leading to underpayments and misalignment with the intended 39 calendar weeks.
- The agreed approach is to start week counting from the first date of incapacity, in 7-day blocks, regardless of the pay cycle, to ensure the full 39 weeks are paid as intended.
- Three distinct issues were clarified:
	1. The count for the first seven days should begin from the first date of incapacity, not the pay cycle.
	2. Any payment within a seven-day period (even partial, e.g., 3 days) counts as a week for payment purposes.
	3. Weeks can count even if no payment is made, provided the officer is unfit (e.g., on PID or total incapacity).
- The system must not conflate these three issues; each has separate business and payroll implications.
- There are technical and policy challenges when incapacity starts mid-pay cycle, and when transitioning between periods (e.g., Period 1 to Period 2), especially if pay rises or partial payments occur.
- The group acknowledged that more scenario-based examples are needed to clarify requirements and mitigate risks before finalizing system design.
- It was noted that building a solution before policy is finalized could result in incorrect or wasted work; further working examples and finalized requirements are required.

**Action/Decision:**
- Period 1 week counting must start from the first date of incapacity, in 7-day blocks, not aligned to the pay cycle.
- Any payment in a week (even $1) counts as a week, but weeks may also count if no payment is made, depending on incapacity status.
- Transition to Period 2 must occur immediately after the actual end date of Period 1, even if this falls mid-pay cycle.
- Payroll logic must support mid-period splits and proration for partial weeks.
- Further scoping, scenario analysis, and policy confirmation are required before implementation.

**[TBC]:**
- Final policy on handling suspensions/pauses (e.g., non-submission of income forms) and their impact on week counting is not yet complete.
- Technical feasibility and cost of implementing week splits and proration logic require further review.

**Traceability:**
- This section records the discussion and open items as of 27 Jan 2026. All changes and future clarifications must reference the relevant meeting minutes and be updated incrementally.

|  |  |  |
| --- | --- | --- |
| **Req. #** | **Requirement Description** | **Priority** |
| P1001 | **Update 2026-01-27 (P1001 feedback):** Period 1 week counting now starts from the first date of incapacity in 7-day blocks, not aligned to the pay cycle. Add a detailed section outlining the system, payroll, and reporting impacts of this change, including alignment (or misalignment) with Workers Compensation (WT 4901), handling of partial weeks across pay periods, and the need for further scoping and consultation with SAP/payroll experts before implementation. | M |
| P1002 | **Update 2026-01-27 (P1002 feedback):** When the end date of Period 1 falls mid-pay week, proration of payments must be defined and documented, including the calculation formula and whether payroll splits (e.g., via IT0027) will be implemented to support this. Add a requirement to define and document the proration method and calculation formula for Period 1 payments ending mid-week, and specify if/when payroll splitting functionality will be delivered to support this scenario. | M |
| P1003 | **Update 2026-01-27 (P1003 feedback):** Period 2 must commence immediately after the actual end date of Period 1, even if this falls mid-pay cycle. Payroll logic must support mid-period splits (e.g. via IT0027) to enable this transition. Implementation is dependent on resolving payroll split logic for non-aligned pay cycles. | M |
| P1004 | **Update 2026-01-27 (P1004 feedback):** Clarify how partial weeks are counted when days of total incapacity (e.g. S36/S37) do not cover the full week, including whether a "3 out of 7" days approach is used, if rounding or decimals apply, and if this logic applies only from the DOD or in all scenarios. Add explicit week-counting rules for partial weeks with total incapacity (e.g. clarify if a week with 3/7 days S36/S37 counts as 0.43 weeks, is rounded, or always counts as a full week), and provide worked examples to illustrate the calculation method. | M |
| P1005 | **Update 2026-01-27 (P1005 feedback):** Clarify the definition of "days of partial incapacity" and specify whether a $1 EPSS payment is required for all sections (other than S36/37) to count the week, or if more granular rules apply. Add a clarification defining "days of partial incapacity" and explicitly state the payment threshold (e.g., $1 EPSS payment) and any section-specific rules for week counting, based on business confirmation. | M |
| P1006 | **Update 2026-01-27 (P1006 feedback):** Clarify the definition of "days of partial incapacity" and confirm whether a $1 EPSS payment is required for a week to be counted when partial incapacity applies. Address open queries from the DTT (SM and DK) and update the requirement accordingly. | M |

## Deployment Three (3) requirements

### Operational Reporting

List of reports required

|  |  |  |
| --- | --- | --- |
| **Sub Section** | **Req. # prefix** | **Report Name** |
| 2.4.2 | RPA | [Data extraction vs program reports](#_Data_extraction) |
| 2.4.3 | RPB | [EPSS On Duty Claim Report](#_EPSS_On_Duty) |
| 2.4.4 | RPC | [EPSS Down Grade Report](#_EPSS_Down_Grade) |
| 2.4.5 | RPD | [Date of Disablement misalignment](#_Date_of_Disablement) |
| 2.4.6 | RPE | [Detailed EPSS Payment Report](#_Detailed_EPSS_Payment) |
| 2.4.7 | RPF | [Period 1 utilisation summary](#_Period_1_utilisation) |
| 2.4.8 | RPG | [EPSS Outbound Leave Report](#_EPSS_Outbound_Leave) |
| 2.4.9 | RPH | [OLIMS Reminders / To Do List Overview Report](#_OLIMS_Reminders_/) |
| 2.4.10 | RPI | [EPSS Pay Simulation Report](#_EPSS_Pay_Simulation) |
| 2.4.11 | RPJ | [EPSS Period 2 – PID greater than 7 days](#_EPSS_Period_2) |
| 2.4.12 | RPK | [EPSS forecast estimates – summary](#_EPSS_forecast_estimates) |
| 2.4.13 | RPL | [EPSS forecast estimates – detailed](#_EPSS_forecast_estimates_1) |
| 2.4.14 | RPM | [Request for Review](#_Request_for_Review) |
| 2.4.15 | RPM | [External Income and Payments](#_External_Income_and) |
| 2.4.16 | RPO | [EPSS salary rate overrides](#_EPSS_salary_rate) |
| 2.4.17 | RPP | [Document Overview](#_Document_Overview) |
| 2.4.18 | RPQ | [Off Duty Claims](#_Off_Duty_Claims) |

### Data extraction

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPA001 | **Update 2026-01-27 (RPA001 feedback):** Data extraction must specify which SAP OLIMS, HR, and Payroll tables/fields are included, confirm that all required data elements are available, and document any gaps or dependencies for reporting. Add a detailed data mapping section listing required fields, their sources, and confirm with Payroll/OLIMS teams that all data is accessible for extraction. | M |

### EPSS On Duty Claim Report

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPB002 | **Update 2026-01-27 (RPB002 feedback):** The selection criteria for the EPSS On Duty Claim Report must allow users to select between EPSS claim, Transitioned to EPSS, PBRI claims, or All. The report requirements section must explicitly state that the selection screen includes options for claim type (EPSS, Transitioned to EPSS, PBRI, All), and business confirmation is required for the default selection when the report loads. | M |
| RPB003 | **Update 2026-01-27 (RPB003 feedback):** The EPSS On Duty Claim Report selection screen must allow users to select "WC Primary", "Non-Primary", or "BOTH" claims. Add a 'BOTH' option to the WC Primary/Non-Primary claim selection radio buttons so users can filter for both claim types simultaneously. | M |
| RPB004 | **Update 2026-01-27 (RPB004 feedback):** The Organisation section (including NSW State, Command, Region/Branch, PAC/PD/Section, Organisation Unit) must be removed from the EPSS On Duty Claim Report selection criteria and output. The requirements and report design must clearly state that the Organisation section and its related fields are to be excluded from both the selection screen and the report results. | M |
| RPB005 | **Update 2026-01-27 (RPB005 feedback):** The EPSS On Duty Claim Report must include the additional columns listed in RPB005, which were not delivered in the December 2024 release. Add a requirement to the report specification to include all missing columns (Period 1/2 dates, weeks utilised/remaining, base + loading calculations, and EPSS Cap breach flag), and confirm with payroll/OLIMS teams that data sources for each field are available and mapped. | M |
| RPB006 | **Update 2026-01-27 (RPB006 feedback):** Clarify the data sources and field definitions for the new columns in the EPSS On Duty Claim Report, especially for Hourly Rate, LO screenshot period, Date Modified, and Description. Add explicit field mappings and definitions for each new column, confirm with business which OLIMS fields/tables to use, and resolve outstanding queries in the DTT section. | M |
| RPB007 | **Update 2026-01-27 (RPB007 feedback):** Clarify and document the source and logic for the "EPSS Claims Advisor" and "EPSS Claim Status" fields in the EPSS On Duty Claim Report, including whether to display the current or historical status as of a specific date. Add a note to the requirements section to specify the exact OLIMS fields to use for these fields, and confirm with the business whether the report should show the current status or status as at a selected date. | M |

### EPSS Down Grade Report

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPC001 | **Update 2026-01-27 (RPC001 feedback):** Purpose of the report is to identify work capacity downgrades with workers compensation leave entered in SAP that will trigger a EPSS claims officer to investigate to determine eligibility for EPSS payments or the PBRI incident to transition to EPSS. The report to generate when there is a downgrade in the current certificate compared to the previous certificate. 
Definition: A "certificate downgrade" is a change from full to partial or no capacity, or from partial to no capacity, as defined in DTT Query 1. Add a business rule for consistent report logic and implementation. Report on incidents before and after 01 October 2024. | M |
| RPC002 | **Update 2026-01-27 (RPC002 feedback):** Selection Criteria: 
	* Report date
	* WC Leave Date Range (Start and To)
	* WC Primary claim (Primary, Non-Primary, Both)
	* EPSS/PBRI Claim (PBRI Claim, EPSS Claim, Transitioned to EPSS claim, All)
Add a table or note defining the SAP/OLIMS field names and exact values (e.g., X, Y, 1, null) used to identify each claim type for selection criteria. | M |
| RPC003 | **Update 2026-01-27 (RPC003 feedback):** Report Columns: 
	* Emp No.
	* First Name
	* Last Name
	* WC Primary Claim (flag)
	* PBRI claim (flag)
	* EPSS claim (flag)
	* Transitioned to EPSS (flag)
	* Incident No.
	* WC Claim No.
	* Incident Date
	* Date of Disablement
	* WC Status
	* WC Claim Status
	* WC Duty Desc.
	* IP/EPSS Status
	* Super Code (SAP source: IT0220/FONDS)
	* Current Cert Status
	* Current – Hours/Day
	* Current – Days/Week
	* Current – WC section
	* Previous Cert Status
	* Previous – Hours/Day
	* Previous – Days/Week
	* Previous – WC section
	* EPSS/IP Advisor
Add clarifying notes: define logic for selecting "Previous" certificate fields when multiple exist, confirm the intended date for "WC/IP/EPSS Status" (e.g., as of today or another reference date), and explicitly state the SAP source for "Super Code" to guide report development. | M |

### Date of Disablement misalignment

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPD001 | **Update 2026-01-27 (RPD001 feedback):** Purpose of the report is to identify misalignment of the date of disablement and the first Certificate of capacity uploaded in OLIMS.  Main scenarios include:   1. First WCCC is a fit for Pre Injury Duties certificate and the second WCCC is the first total/partial incapacity 2. The WCCC were not uploaded correctly in date range order and the first WCCC uploaded was actually meant to be the third
Note: Points 1 and 2 are provided as background context only and are not system validation checks. | M |
| RPD002 | **Update 2026-01-27 (RPD002 feedback):** The report will output results when the below conditions are met:   1. First WCCC is PID and status start date matches DOD 2. First WCCC is not PID and the status start date does NOT match the DOD
The "status from date" is confirmed as the "from" field of the first certificate in OLIMS. For overlapping certificates: the most recent certificate is valid from its effective date, with prior certificates valid only up to the day before the new certificate starts. Add these clarifications to the report logic and requirements. | M |
| RPD003 | **Update 2026-01-27 (RPD003 feedback):** Selection Criteria:
	* WC Primary Claim (Primary, Non Primary, Both)
	* EPSS/PBRI claim (PBRI, EPSS, Transitioned to EPSS, All)
Add a note specifying the exact data sources for each selection criterion and confirm with Payroll/OLIMS teams that all fields are available for extraction; update the document if any fields require new development or mapping. | M |
| RPD004 | **Update 2026-01-27 (RPD004 feedback):** Report Columns:
	* Emp No.
	* First Name
	* Last Name
	* WC Primary Claim (flag)
	* PBRI claim (flag)
	* EPSS claim (flag)
	* Transitioned to EPSS (flag)
	* Incident No.
	* WC Claim No.
	* Incident Date
	* Date of Disablement
	* First WC Certificate – Status
	* Status From Date
	* Inactive WCCC (flag)
Add a note specifying the exact data source for each column and confirm with Payroll/OLIMS teams that all fields are accessible for reporting. | M |

### Detailed EPSS Payment Report

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPE001 | **Update 2026-01-27 (RPE001 feedback):** Purpose of the report is to provide the weekly calculation and payment breakdown, including any mid-week splits, of EPSS payments and weeks utilised of an officer’s primary WC incident. The report can be generated for a single employee with one or more incidents, for multiple employees or incidents or open ended to generate results. The report should support selection by employee and incident, display weekly breakdowns (including mid-week splits), and confirm that all data fields are available in OLIMS/EPSS/Payroll for extraction. | M |
| RPE002 | **Update 2026-01-27 (RPE002 feedback):** Selection Criteria:
	* Employee Number
	* Incident Number
	* Date From
	* Date To
Clarify whether the "Date From/To" selection criteria should include pay periods with end dates within the range, and whether the report should show the net results per pay period or the latest (potentially adjusted) view of each pay period. Explicitly state how "Date From/To" should be applied (pay period end dates vs. other logic) and clarify if the report must display original pay period results or always reflect the latest recalculated values. | M |
| RPE003 | **Update 2026-01-27 (RPE003 feedback):** Report Columns:
	* Employee Number
	* Incident Number
	* Claim Number
	* Start Date
	* End Date
	* Payment Date
	* Capacity Status (Partial Incapacity, Total Incapacity, Operational Duties)
	* Workers Compensation (4901)
	* Internal Earnings (eg 9WCM)
	* External Earnings (6017)
	* WC Factor
	* EPSS Factor
	* P1 – ORP
	* P1 – Payments (49E9 and 6A48)
	* P1 – Week Counted
	* P2 – Salary (75% of loaded salary)
	* P2 – Payments (49S9 and 6A49)
	* P3 – Salary (75% of loaded salary)
	* P3 – Payments (TBA)
Add a clarification section addressing open queries: definition of WC/EPSS factor, correct wagetype for external earnings, handling of splits, and reporting logic for adjustment wagetypes. Explicitly document any assumptions or business decisions once confirmed by stakeholders. | M |
| RPE004 | **Update 2026-01-27 (RPE004 feedback):** If the officer is during Period 1 and has total incapacity (s36/s37) and is not receiving an EPSS payment, they are still be shown on the report as a P1 week counted even though the EPSS P1 payment is zero. For Period 1, if an officer has total incapacity (s36/s37) and no EPSS payment, a line must still be output as a counted week, regardless of payment wagetypes present. Confirm and document the exact data source/logic for identifying these cases. | M |

### Period 1 utilisation summary

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPF001 | **Update 2026-01-27 (RPF001 feedback):** The Period 1 utilisation summary report must be executed by the EPSS case officer via the OLIMS report menu, with a standard selection screen pulling data from OLIMS, EPSS, and payroll. All required fields are assumed to exist in these systems and payroll functional input is needed to confirm data sources. | M |
| RPF002 | **Update 2026-01-27 (RPF002 feedback):** Selection Criteria: 
	* Employee Number
	* Incident Number
	* Date From
	* Date To
Clarification: Specify whether the report should display the latest available payment view or the period view as at the time of payment, and confirm if mass reporting across all employees/incidents is required or if it is restricted to single employee/incident selection. Await HSW input before finalising. | M |
| RPF003 | **Update 2026-01-27 (RPF003 feedback):** Report Columns:
	* Employee Number
	* Incident Number
	* Claim Number
	* Date From
	* End To
	* Week Count
	* Capacity (Total Incapacity, Partial Incapacity, No Incapacity)
	* Counted/Not Counted
	* EPSS Supplementary Support Payment made (Yes/No)
	* EPSS Payment Received
Clarify and document the report logic for week-level splits, especially for multiple incidents in a week and retroactive adjustments, as per the design note. Confirm and specify how OLIMS capacity fields are mapped to SAP EPSS payment wagetypes (e.g., 49E9) and reason codes. Decide and document which template to use for the report fields: RPF003 or the attachment template on page 39. Ensure the report only includes EPSS payments, not external earnings. Review payslip display logic for multiple wagetypes in a pay period to ensure only one line is shown if possible. Add a new requirement to clarify week-level split logic, mapping of OLIMS capacity to SAP wagetypes, and confirm the report template to use. Update the design to ensure all retroactive splits and multiple incidents per week are captured, and revise payslip logic to show a single line for multiple wagetypes where possible. | M |
| RPF004 | **Update 2026-01-27 (RPF004 feedback):** The document “Attachment-EPSS Period 1 Summary” must be uploaded into OLIMS using the specified upload screen, following file naming/location standards. The uploaded file must link to the report, and the report should pull data from an existing table or specify if a new one is required. Add instructions specifying the OLIMS upload screen, file naming/location standards, and confirm if the report pulls data from an existing table or requires a new one. | M |
| RPF005 | **Design Additional Requirement (2026-01-27):** All EPSS payment splits (wbpb) for wagetypes 49E9 and 49S9 must be retained for all employees retroactively, to support accurate Period 1 utilisation summary reporting, including scenarios with multiple incidents in a week. Update the logic to allow week counting for multiple incidents in the same week, and revise fortnight negative checks to operate at the incident level, noting the potential impact on week count and retrospective adjustments. | M |

Below is an example of the attachment template

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Date from | Date to | Week count | Capacity | Counted/Not Counted | EPSS Supplementary Support Payment made Yes/No |
| DD Month YYYYY | DD Month YYYY | 1 | Partial incapacity | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |
|  |  |  | Choose an item. | Choose an item. | Choose an item. |

### EPSS Outbound Leave Report

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPG001 | **Update 2026-01-27 (RPG001 feedback):** The PBRI Outbound Leave report is used to identify officers on long-term non-work-related absence who may be eligible for off duty income protection. The EPSS Outbound Leave Report must specify which fields and data sources are required, with confirmation from the business on any additional data fields needed. Ensure the report selection screen requirements are documented. | M |
| RPG002 | **Update 2026-01-27 (RPG002 feedback):** The EPSS Outbound Leave Report must be accessible in the EPSS Reporting folder, with data sourced from OLIMS, EPSS, and payroll systems, assuming all required fields are present and accessible. | M |
| RPG003 | **Update 2026-01-27 (RPG003 feedback):** Add two new columns—Leave Reason Code and Leave Reason Text—after the leave type text column in the EPSS Outbound Leave Report. Update the report layout and ensure these fields are sourced from OLIMS/EPSS/Payroll as per the business requirement. | M |

### OLIMS Reminders / To Do List Overview Report

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPH001 | **Update 2026-01-27 (RPH001 feedback):** Ability to generate a report of OPEN reminders/tasks due for a day or date range. Clarify how "open" reminders/tasks are identified in OLIMS (e.g. via ZIM_IN_REM where NOTE_COMP is not 'X'), and confirm with the business if the task functionality is already built. Add a note to confirm the technical source for open tasks and update the requirement with the agreed identification method once confirmed. | M |
| RPH002 | **Update 2026-01-27 (RPH002 feedback):** Ability to generate a report of tasks marked as COMPLETE with a date range for internal SLA and KPI reporting purposes. Clarify how completed reminders/tasks are identified in OLIMS (e.g. confirm if ZIM_IN_REM.NOTE_COMP = 'X' is the correct logic). Add a note to confirm the data source and field for "complete" status before finalising the report design. | M |
| RPH003 | **Update 2026-01-27 (RPH003 feedback):** The OLIMS Reminders / To Do List Overview Report must include selection criteria for open/complete tasks, EPSS Claims/Transitional, WC Primary Claim, EPSS Supervisor, and EPSS Claims Advisor (individual/all). Explicitly list all required selection criteria for the report, and confirm that data sources in OLIMS/EPSS/Payroll can provide these fields for the selection screen. | M |
| RPH004 | **Update 2026-01-27 (RPH004 feedback):** Fields required in report:
	* Employee No
	* Employee Name
	* Incident No
	* WC Claim No
	* Created Date
	* Task Name
	* EPSS Advisor
	* EPSS Supervisor
	* Comments
	* Due Date
	* No. of Days overdue
	* Completed date
	* Updated By
Add a note specifying which system/table/field holds each required report field, or flag as a dependency for technical mapping if not yet known. | M |
| RPH005 | **Update 2026-01-27 (RPH005 feedback):** Clarify whether the requirement is for direct navigation to the OLIMS incident from the report or for a standalone reminders screen. Add a note to confirm with the business if technical constraints prevent direct OLIMS access from the report output. | M |
| RPH006 | **Update 2026-01-27 (RPH006 feedback):** Standard process will follow where the claims officer marks the task complete, the completed date is updated with a time stamp and the user’s employee number. Clarify whether the "completed date" and "user’s employee number" fields already exist in OLIMS or if new fields are required, and specify the exact table/field names to be used for audit purposes. Add a note to confirm with business/technical teams that all required data is available for reporting as assumed. | M |
| RPH007 | **Update 2026-01-27 (RPH007 feedback):** The OLIMS Reminders / To Do List Overview Report must include an export to Excel function for offline analysis and reporting. Add a requirement in the report specification section confirming Excel export capability is mandatory for this report. | M |

### EPSS Pay Simulation Report

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPI001 | **Update 2026-01-27 (RPI001 feedback):** Clarify whether the EPSS Pay Simulation Report is intended to run during the payroll "off week" (using simulated data) or during the "payroll week" after IBR data loads (using actual pay results), as this impacts the report's usefulness and data accuracy. Add a note specifying the intended timing for running the report (off week vs payroll week) and clarify whether the report should use simulated or actual pay data, based on business input. | M |
| RPI002 | **Update 2026-01-27 (RPI002 feedback):** Ensure the EPSS Pay Simulation Report is available in the OLIMS EPSS Reporting folder for claims officers to access and run as needed. | M |
| RPI003 | **Update 2026-01-27 (RPI003 feedback):** Selection Criteria:
	* Payroll Area
	* Payroll Period
	* Employee Number
	* Active and inactive
Clarify the expected number of employees to be selected for the report and whether selection by org unit is required (see RPI004). Specify if the report will be executed online in OLIMS with on-screen/downloadable output or as a background job for large data sets. Confirm the typical report selection size, whether org unit selection is needed, and define if the report should support both online and background execution in OLIMS for performance reasons. | M |
| RPI004 | **Update 2026-01-27 (RPI004 feedback):** The report must generate payroll results for restricted groups: Covert Org Unit 653 and Senior Executive Officers. Clarify and document the specific selection logic for these groups, including how they are identified in SAP/OLIMS. Add a note specifying the SAP/OLIMS fields or criteria used to identify Covert Org Unit 653 and Senior Executive Officers, and ensure the report selection screen includes options to filter by these groups. | M |
| RPI005 | **Update 2026-01-27 (RPI005 feedback):** Report Columns:
	* Employee Number
	* Employee Name
	* Incident No.
	* WC Claim No.
	* WC Claim Status
	* For Period End Date
	* Pay Period End Date
	* Week 1: RTW earnings (9WCM)
	* Week 1: WC earnings (4901)
	* Week 1: External Earnings (3670)
	* Week 1: Period 1 – ORP
	* Week 1: Period 1 (49E9)
	* Week 1: Period 1 – adjs (6A48)
	* Week 1: Period 2 – 75% of salary
	* Week 1: Period 2 (49S9)
	* Week 1: Period 2 – adjs (6A49)
	* Week 2: RTW earnings (9WCM)
	* Week 2: WC earnings (4901)
	* Week 2: External Earnings (3670)
	* Week 2: Period 1 – ORP
	* Week 2: Period 1 (49E9)
	* Week 2: Period 1 – adjs (6A48)
	* Week 2: Period 2 – 75% of salary
	* Week 2: Period 2 (49S9)
	* Week 2: Period 2 – adjs (6A49)
	* RTW Earnings (Total)
	* WC Earnings (Total)
	* External Earnings (Total)
	* Period 1 (Total)
	* Period 2 (Total)
	* PBRI top up (Total)
Clarify whether the report is intended to be run pre- or post-payroll, address the feasibility and accuracy issues without rosters, confirm if Period 1/2 totals are to be calculated from wagetypes or manually, and clarify the inclusion and definition of PBRI totals (especially for transitional claims and new wagetypes). Add clarifications specifying the timing (pre- or post-payroll), calculation method for Period 1/2 totals, and the handling of PBRI totals and new wagetypes for transitional claims, based on business feedback to the queries raised. | M |
| RPI006 | **Update 2026-01-27 (RPI006 feedback):** The report must support running simulations before payroll is finalized, given that roster data may not be available until just before the payroll run, potentially impacting report accuracy. Add a note specifying if the business accepts that pre-payroll simulations may be inaccurate due to missing roster uploads, or confirm if the report should only be run post-payroll when all data is available. | M |
| RPI007 | **Update 2026-01-27 (RPI007 feedback):** The report must be exportable from SAP to allow the EPSS Claims officer to analyse the information, preferably as an Excel file. Clarify and document the export process, specifically confirming if EPSS Claims Officers have access to SAP spools and whether training is required for downloading/exporting to Excel. Add a note specifying the need to confirm SAP spool access for EPSS Claims Officers and, if necessary, include a training deliverable on exporting reports to Excel from SAP. | M |

### EPSS Period 2 – PID greater than 7 days

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPJ001 | **Update 2026-01-27 (RPJ001 feedback):** The report requires a standard selection screen, and all required data fields must be available in OLIMS/EPSS/Payroll for extraction. Add a note specifying that the report will use a standard selection screen and will source data from existing OLIMS/EPSS/Payroll fields, pending confirmation from payroll functional and technical teams that all necessary data elements are available. | M |
| RPJ002 | **Update 2026-01-27 (RPJ002 feedback):** Selection Criteria:
	* Employee Number
	* Incident Number
	* WC Primary Claim
	* Ability to run the report with no selection criteria to generate results
Clarify that when "WC Primary Claim" is selected in the report criteria, only primary claims should be shown; otherwise, both primary and other claims are included. Add a note to the report selection criteria reflecting this logic, as agreed by Matt on 21/01/2026. | M |
| RPJ003 | **Update 2026-01-27 (RPJ003 feedback):** Report Columns:
	* Employee Number
	* Employee Name
	* Incident No.
	* Claim No.
	* EPSS Period 2 (flag)
	* WC Certificate Date From
	* WC Certificate Status
	* No. of Days PID (only include PID certificates with more than 6 PID days)
	* PID-RTD days (new column)
	* RTD Date From
	* RTD Date To
	* RTD Description
	* Record inactive (flag) (refers to the PID certificate)
	* Last Modified By (refers to the RTD record)
	* Last Modified On (refers to the RTD record)
	* Last Modified At (refers to the RTD record)
Amend the report specification to include these business clarifications and ensure the selection logic and columns match the latest workshop feedback. | M |
| RPJ004 | **Update 2026-01-27 (RPJ004 feedback):** The report should be executed from the OLIMS EPSS report area, with the flexibility to run in SAP foreground or background as needed, and exported to Excel. Add a note that this matches current reporting processes and that all required fields are assumed to exist in OLIMS/EPSS/Payroll. | M |

### EPSS forecast estimates – summary

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPK001 | **Update 2026-01-27 (RPK001 feedback):** The report will require a standard selection screen and must source data from OLIMS, EPSS, and payroll results, with payroll functional support to confirm data sources. Add an explicit assumption that all required fields already exist in OLIMS/EPSS/Payroll and can be extracted for reporting. | M |
| RPK002 | **Update 2026-01-27 (RPK002 feedback):** Selection Criteria:
	* Date From
	* Date To
	* Employee Number
	* Incident Number
The report selection screen must allow users to enter a date range (To/From), Employee Number, and Incident Number, with the option to run the report with no criteria entered (i.e., return all records). Add a note that the report should source data from OLIMS/EPSS/Payroll, assuming all required fields already exist. | M |
| RPK003 | **Update 2026-01-27 (RPK003 feedback):** Report Columns:
	* Financial Year
	* Quarter No
	* Employee Number
	* Incident Number
	* Claim Number
	* Period 1 – future no of weeks
	* Period 1 – forecast payments
	* Period 2 – future no of weeks
	* Period 2 – forecast payments
	* Period 3 – future no of weeks
	* Period 3 – forecast payments
Clarify the data source for each column in the report, ensuring it is clear which fields come from OLIMS, EPSS, or Payroll. Add a note that Payroll functional support is required to confirm data mapping and extraction points for all columns. | M |
| RPK004 | **Update 2026-01-27 (RPK004 feedback):** The report must be exportable from SAP in Excel format, and all required data fields must be available in OLIMS/EPSS/Payroll for extraction. Add a note that Payroll functional support is needed to identify data sources for the report. | M |

### EPSS forecast estimates – detailed

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPL001 | **Update 2026-01-27 (RPL001 feedback):** Purpose of the report is to produce a detailed extract of the estimates entered in the OLIMS – EPSS estimator/forecast tab. Assumes all required fields are already available in OLIMS/EPSS/Payroll. Payroll functional team to confirm and document the exact data sources for each report field in OLIMS/EPSS/Payroll to ensure all required data is available for extraction. | M |
| RPL002 | **Update 2026-01-27 (RPL002 feedback):** Selection Criteria:
	* Date Range: To and From dates
	* Employee Number
	* Incident Number
	* Allow for no criteria to be entered
Add a note specifying the exact data sources for each selection criterion and confirm with Payroll/OLIMS teams that all required fields are available for extraction. | M |
| RPL003 | **Update 2026-01-27 (RPL003 feedback):** Report Columns:
	* Financial Year
	* Quarter No
	* Employee Number
	* Incident Number
	* Claim Number
	* All Period 1 fields (explicitly list and align with OLIMS estimator/forecast tab and payroll data sources)
	* All Period 2 fields (explicitly list and align with OLIMS estimator/forecast tab and payroll data sources)
	* All Period 3 fields (explicitly list and align with OLIMS estimator/forecast tab and payroll data sources)
Add a detailed breakdown of each "Period 1/2/3 field" to the requirement, specifying exact field names and data sources, so technical teams can accurately extract and display all necessary columns in the report. | M |
| RPL004 | **Update 2026-01-27 (RPL004 feedback):** Each EPSS forecast estimate record must be output as a separate line item in the detailed report. The report must display each forecast estimate as an individual line, ensuring no aggregation of records. | M |
| RPL005 | **Update 2026-01-27 (RPL005 feedback):** The report must be exportable from SAP in Excel format, ensuring all required fields are available from OLIMS/EPSS/Payroll. Add a note specifying Excel export as the preferred output and confirm all data fields are mapped and accessible for extraction. | M |

### Request for Review

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPM001 | **Update 2026-01-27 (RPM001 feedback):** Purpose of the report is to produce a list of in progress and completed reviews entered in the OLIMS “Request for review’ tab for analysis and reporting activities. Add a section specifying the selection criteria and column headers for the Request for Review report, ensuring alignment with RPM002–RPM005, and confirm that all required data fields are available in OLIMS/EPSS/Payroll for extraction. | M |
| RPM002 | **Update 2026-01-27 (RPM002 feedback):** Selection Criteria:
	* Employee Number
	* Incident Number
	* Received Date
	* Closed Date
	* Allow for no criteria to be entered
Explicitly list the selection criteria for the report and confirm that the report can be executed without mandatory filters. | M |
| RPM003 | **Update 2026-01-27 (RPM003 feedback):** Report Columns:
	* Employee Number
	* Incident Number
	* Claim Number
	* Type of Review
	* Query/Complaint/Dispute Type
	* Other Type – Text
	* Requestor
	* Other Requestor - Text
	* Date Received
	* Due Date
	* Closed Date
	* Escalation Flag
	* EPSS Claims Advisor
	* EPSS Supervisor
Add a note that all required fields must exist and be populated in the relevant systems before report development, and clarify the data source for each column header in the Request for Review report, ensuring it is clear which fields come from OLIMS, EPSS, or Payroll. | M |
| RPM004 | **Update 2026-01-27 (RPM004 feedback):** The Request for Review report must display each review record as a separate line item, and confirm that all required data fields are available in OLIMS/EPSS/Payroll for extraction. Add a note to validate field availability in source systems and specify that the report output is one line per review record. | M |
| RPM005 | **Update 2026-01-27 (RPM005 feedback):** Ensure the Request for Review report can be exported to Excel, and verify that all required data fields are available in OLIMS/EPSS/Payroll for accurate report generation. Add a note to the requirement stating: "Ensure the Request for Review report can be exported to Excel, and verify that all required data fields are available in OLIMS/EPSS/Payroll for accurate report generation." | M |

### External Income and Payments

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPN001 | **Update 2026-01-27 (RPN001 feedback):** The purpose of this report is to produce the details of income and payments entered in the OLIMS ‘External Income/Payments’ tab for analysis and reporting activities. Clarify the data sources for the report, confirming that all required fields are available in OLIMS/EPSS/Payroll and specifying any integration or mapping needed. Add a note to involve Payroll functional experts to confirm field locations and ensure the selection screen meets reporting needs. | M |
| RPN002 | **Update 2026-01-27 (RPN002 feedback):** Selection Criteria:
	* Employee Number
	* Incident Number
	* Records Active / Inactive / Both (ability to select one or all)
	* Date From
	* Date To
Clearly specify the required selection criteria for the report and confirm that all necessary data fields are available in OLIMS/EPSS/Payroll for extraction. Add a note that Payroll functional support is needed to identify data sources, and clarify any assumptions about data availability. | M |
| RPN003 | **Update 2026-01-27 (RPN003 feedback):** Report Columns:
	* Employee Number
	* Incident Number
	* Claim Number (confirm if this refers to the WC claim number)
	* Earning Category
	* Earning Type (confirm if this should follow after Earning Category per OLE004/OLE005; update column order if needed)
	* Date From
	* Date To
	* Amount
	* Frequency (e.g. weekly, fortnightly, monthly, lump; clarify if available in IT0015 or needs to be added)
	* Description
	* Document Uploaded (Flag)
	* Document Count (e.g. count the number of docs uploaded; specify if technically feasible in OLIMS)
	* Earning Inactive (flag)
	* Last Modified By
	* Last Modified On
	* Last Modified At
	* EPSS Claims Advisor (confirm retrievability for each incident/claim)
	* EPSS Supervisor (confirm retrievability for each incident/claim)
Add clarifications for the above points in the requirements table and update the column order if required. | M |
| RPN004 | **Update 2026-01-27 (RPN004 feedback):** Each external income/payment record must be displayed as a separate line item in the report, with data sourced from OLIMS, EPSS, and payroll systems. Add a note that payroll functional input is required to confirm data sources, and confirm that all required fields are available for extraction. | M |
| RPN005 | **Update 2026-01-27 (RPN005 feedback):** The report must be exportable from SAP in Excel format, and all required data fields must be available in OLIMS/EPSS/Payroll for extraction. Add a note specifying Excel export as the preferred output and verify data field availability with Payroll functional and technical teams. | M |

### EPSS salary rate overrides

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPO001 | A report to be available within OLIMS to audit any overrides of Period 1, 2 and 3 rates of pay processed by EPSS Claims Officers for ongoing monitoring and quality assurance checks | M |
|        | **Note:** Requirement for this report is postponed pending further discussion on whether overrides for Period 2 and 3 rates will be supported, as override capability for Period 1 has been removed. |   |
| RPO002 | Selection Criteria:   * Employee No * Incident No * Last Modified On (date range) * EPSS Claims Advisor | M |
|        | **Note:** Implementation of this report is postponed until P1/P2 discussions are complete. Confirm all required data fields are available in OLIMS/EPSS/Payroll before proceeding with design. |   |
| RPO003 | Column Headers:   * Employee No. * Incident No. * Claim No. * EPSS Period (e.g. Period 1, 2 or 3) * Original Amount * Original Date From * Original Date To * New Amount * New Date From * New Date To * Last Modified By * Last Modified On * Last Modified At * EPSS Claims Advisor * EPSS Supervisor | M |
|        | **Note:** Implementation of this report is postponed until Period 1/2 override discussions are complete. Confirm all required data fields exist in OLIMS/EPSS/Payroll before proceeding with technical design. |   |
| RPO004 | For every record created to be displayed as an individual line item | M |
|        | **Note:** Implementation of this requirement is deferred and will be revisited after Period 1/2 discussions are complete. |   |
| RPO005 | The report to be exported from SAP to allow the EPSS Claims officer to analyse the information, the preferred option for the team is as an excel file | M |
|        | **Note:** Report delivery is postponed to Phase 1/2 discussions. Confirm requirement for Excel export as the preferred output format. |   |

### Document Overview

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPP001 | Reporting capability on documents sent and uploaded in the Document Overview screen for compliance and reporting activities on EPSS | M |
|        | **Note:** The Document Overview report must include a selection screen, display data from OLIMS/EPSS/payroll, and cover all required fields for compliance and reporting. Payroll functional input is needed to confirm data sources and field mapping. |   |
| RPP002 | Report Selection:   * Employee No. * Incident No. * Document Category * Document Sub Category * Date From * Date To | M |
|        | **Note:** The report selection screen must include filters for Employee No., Incident No., Document Category, Document Sub Category, Date From, and Date To. Verify with Payroll/OLIMS teams that all fields are accessible for reporting. |   |
| RPP003 | Column Header:   * Employee No. * Incident No. * Claim No. * Duty Type * Direction * Document Category * Document Sub Category * Document Title * Receiver Type * Receiver Name * Receive Distn Method * Email ID * Date Processed * Time Sent * Date Received * Comments * EPSS Claim Advisor * EPSS Supervisor * Modified By * Modified On * Modified At | M |
|        | **Note:** Clarify the data source for each column, confirming where each field is stored in OLIMS, EPSS, or Payroll. Payroll functional support is required to identify any fields not currently available in OLIMS/EPSS and to ensure all required data can be extracted for reporting. |   |
| RPP004 | For every record created to be displayed as an individual line item | M |
|        | **Note:** The report output should display one row per document record, ensuring no grouping or summarisation occurs. |   |
| RPP005 | The report to be exported from SAP to allow the EPSS Claims officer to analyse the information, the preferred option for the team is as an excel file | M |
|        | **Note:** The report must include an export function to Excel, ensuring EPSS Claims Officers can easily analyse the data offline. Use existing OLIMS/EPSS/Payroll fields and confirm with Payroll functional where to source each data element. |   |

### Off Duty Claims

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| RPQ001 | The purpose of this report is to produce the details of EPSS off duty claims | M |
|        | **Note:** Clarify the data sources for each required field, ensuring that OLIMS, EPSS, and Payroll field mappings are explicitly listed. Confirm all required fields exist and can be extracted, or identify any gaps if discovered during technical design. |   |
| RPQ002 | Selection Criteria:   * Employee No * Duty Type (Off Duty) * Incident No * Claim Status | M |
|        | **Note:** The selection screen must include criteria for Employee No, Duty Type (Off Duty), Incident No, and Claim Status. Confirm all required fields are available in OLIMS/EPSS/Payroll for data extraction. Payroll functional support is needed to identify data sources for technical implementation. |   |
| RPQ003 | Column Headers:   * Employee No * Duty Type (Off Duty) * Incident No * Date of Disablement * Waiting Period End Date * IP Benefit Start Date * IP Benefit End Date * TAL Claim No * Claim Status * Date Claim Package Sent * Date Claim Package Received * Date Claim Lodged * Date Claim Admitted * EPSS Claims Advisor * EPSS Supervisor | M |
|        | **Note:** Clarify the data source for each column, confirming which fields are sourced from OLIMS, EPSS, or Payroll. Verify that all required fields exist in the source systems and specify any mapping or transformation needed for the report. |   |
| RPQ004 | Based on the technical solution for off duty, additional fields may need to be added to the report | M |
|        | **Note:** Additional fields may need to be added to the report based on the final technical solution for off duty claims. Review and update the report specification once the technical design is confirmed. |   |
| RPQ005 | Ability to generate a report of OPEN reminders/tasks due for a day or date range. | M |
|        | **Note:** The Off Duty Claims report must provide selection criteria for open reminders/tasks by date or date range, and confirm that all necessary fields are available in OLIMS/EPSS/payroll for this purpose. |   |

### EPSS scheme reporting (HSWC)

|  |  |  |
| --- | --- | --- |
| **Req. #** | **Requirement Description** | **Priority** |
| SR001 | Data will be extracted, transformed and incrementally loaded into the Enterprise Data Warehouse (EDW) at the end of each month (Historical data across all months will be retained and differentiated using the dt\_as\_at field.). | M |
| SR002 | Each load will be a monthly snapshot of the full list of EPSS participants (including ceased and not receiving payments):   * EPSS recipients, those receiving payments and their weeks counting * EPSS participants, those not receiving payments, weeks counting or not counting * EPSS ceased, those no longer eligible | M |
| SR003 | Table requirements outlined below – columns, names, definitions, and example formats. | M |

| **Col** | **Column Name** | **Definitions, source, formula or content** | **Example (for data format)** |
| --- | --- | --- | --- |
| 1 | dt\_as\_at | Indicates the last day of the calendar month in which the payment is made.  *\*All EPSS participants and EPSS ceased will be included each month even if they have no payment received.* | 2025-09-30 |
| 2 | registered\_number | Employee registration number  *\*Each month, all EPSS participants (with or without payments, weeks counting or not counting) and EPSS ceased will still be included in the dataset each month.* | 41344 |
| 3 | claim\_number | EML workers compensation claim number | 256772EML |
| 4 | incident\_number | Workers Compensation incident number | 237831 |
| 5 | first\_name | Employee first name | John |
| 6 | last\_name | Employee last name | Smith |
| 7 | date\_of\_birth | Date of birth of the employee | 1986-09-13 |
| 8 | pay\_period\_begin\_date | Start date of the pay period | 2025-07-18 |
| 9 | pay\_period\_end\_date | End date of the pay period | 2025-07-31 |
| 10 | wc\_amount\_paid | Weekly workers compensation amount received, forming the base for each EPSS top-up payments.  *\*This will be used in modelling reason of weeks not counting.* | 1308.8 |
| 11 | injury\_type | OLIMS injury type of the claim   * Psychological * Physical | Psychological |
| 12 | rank | The employee’s rank at the time of the payment, based on SAP employee record | Detective Constable |
| 13 | command | The employee’s command at the time of the payment, from SAP employee record  *\*e.g. Corporate Services, Metropolitan Field Operations, Regional NSW Field Operations, etc* | Regional NSW Field Operations |
| 14 | region\_branch | The employee’s region branch at the time of the payment, from SAP employee record  *\*e.g. Central Metro, Northern, State Crime Command, etc* | Northern |
| 15 | EPSS\_period\_1\_payment | Amount paid as EPSS period 1 payment, if no payments show 0 | 2202.76 |
| 16 | EPSS\_period\_2\_payment | Amount paid as EPSS period 2 payment, if no payments show 0 | 1440.21 |
| 17 | EPSS\_period\_3\_payment | Amount paid as EPSS period 3 payment, if no payments show 0 | 0 |
| 18 | actual\_weeks\_counted\_p1 | Number of actual weeks counted for the employee in period 1.  *\*For transitional claims, the count may be adjusted on a case-by-case basis to reflect the actual week counts.* | 39 |
| 19 | actual\_days\_counted\_p2 | Number of actual weeks counted for the employee in period 2.  *\*For transitional claims, the count may be adjusted on a case-by-case basis to reflect the actual day counts.* | 1442 |
| 20 | actual\_days\_counted\_p3 | Number of actual weeks counted for the employee in period 3. | 49 |
| 21 | is\_week\_or\_day\_counting | Flag indicating employee’s weeks/days being counted or not, as of the last day of the month   * Y * N   *\*Employees may receive EPSS payments, then have weeks counting stopped and restarted. This flag reflects the status at the end of the month.*  *\*\*Employees with no payment during the month are still included in the data, with all payment amounts shown as 0 and this flag set to either Y or N.* | Y |
| 22 | ordinary\_rate\_of\_pay | Employee’s ordinary rate of pay as provided by the insurer.  *\*This value is used in modelling reason of weeks not counting.* | 1225.42 |
| 23 | other\_income | Indication of employee’s all other income.  *\*This value is used in modelling reason of weeks not counting.* | 524.24 |
| 24 | latest\_COC | The latest certificate of capacity (COC) from the certificate. It should be one of the following:   * Partial capacity * No capacity * PID (pre-injury duty)   *\*This value is used in modelling reason of weeks not counting.* | Partial Capacity |
| 25 | P2\_PID\_duration | Number of days of PID (Pre-injury duty) for Period 2 recipients. Calculated based on the 'from' and 'to' dates of Period 2 PID.  *\*This value is used in modelling reason of weeks not counting.* | 8 |
| 26 | eligibility\_status | Indicates whether the employee is eligible for EPSS as at the last day of the month   * Eligible * Not eligible | Eligible |
| 27 | reason\_ineligible | Indicates the reason the employee is not eligible for EPSS, as at the last day of the month. Must be one of the following:   * WID * Death * Retirement * Disputed / Declined * Claim Closed * Not in receipt of weekly benefits (PID / RTW where there is no wage loss) * No longer employed (resigned, terminated under S181D or S80) * Possible “Other”   *\*If the employee is marked as ‘Eligible’ in the eligibility\_status column, this field will be blank.* | Retirement |
| 28 | transitional\_claims | Indicates whether the employee’s claim has been accepted into EPSS as a transitional claim.   * Y * N   *\*All payments related to transitional claims must be consistently marked with Y.*  *\*\*This value will remain unchanged unless an error is identified and requires correction.* | Y |
| 29 | date\_start\_p1\_actual | Indicates the actual start date of period 1 of a claim.  *\*For transitional claims, the date should be when they are admitted into EPSS. \*\*This value remains unchanged unless an error is identified and requires correction.* | 2024-10-01 |
| 30 | date\_end\_p1\_actual | Indicates the actual end date of period 1 of a claim. This date should be populated when Period 1 is exhausted or when EPSS ceases during Period 1. *\*This value remains unchanged unless an error is identified and requires correction.*  *\*\*This value remains blank unless Period 1 has ended.* | 2025-07-01 |
| 31 | date\_start\_p2\_actual | Indicates the actual start date of period 2 of a claim. Period 2 should begin immediately after Period 1 ends.  *\*For transitional claims, the date should be when they are admitted into EPSS.* *\*\*This value remains unchanged unless an error is identified and requires correction.*  *\*\*\*This value remains blank unless Period 2 has commenced.* | 2025-07-01 |
| 32 | date\_end\_p2\_actual | Indicates the actual end date of period 2 of a claim. This date should be populated when period 2 is exhausted or when EPSS ceases during Period 2. *\*This value remains unchanged unless an error is identified and requires correction.*  *\*\*This value remains blank unless Period 2 has ended.* | 2024-10-01 |
| 33 | date\_start\_p3\_actual | Indication of the actual start date of period 3 of a claim. This date should start right after period 2 ends.  *\*This value remains unchanged unless an error is identified and requires correction.*  *\*\*This value remains blank unless Period 3 has commenced.* | 2024-10-01 |
| 34 | date\_end\_p3\_actual | Indicates the actual end date of period 3 of a claim. This date should be populated when period 3 is exhausted or when EPSS ceases during Period 3.  *\*This value remains unchanged unless an error is identified and requires correction.*  *\*\*This value remains blank unless Period 3 has ended.* | 2024-10-01 |
| 35 | date\_end\_p1\_estimated | Estimated end date period 1 of a claim. | 2025-06-01 |
| 36 | date\_start\_p2\_estimated | Estimated start date period 2 of a claim. | 2025-06-02 |
| 37 | date\_end\_p2\_estimated | Estimated end date period 2 of a claim. | 2032-06-01 |
| 38 | date\_start\_p3\_estimated | Estimated start date period 3 of a claim. | 2032-06-02 |
| 39 | date\_end\_p3\_estimated | Estimated end date period 3 of a claim. | 3035-06-01 |
| 40 | EPSS\_cohort | Indication of participant’s cohort. Should be one of the following:   * Period 1, receiving, weeks counting * Period 1, not receiving, weeks counting * Period 1, not receiving, weeks not counting * Period 2, receiving, weeks counting * Period 2, not receiving, weeks not counting * Period 3 * Period 1 ceased * Period 2 ceased * Period 3 ceased * Transitioned into Period 1 * Transitioned into Period 2   *\*It’s a good to have. Can work it out ourselves if all other columns are accurately provided.* | Period 1, receiving, weeks counting |

## Part-time employees – WC and EPSS System Behaviour / Treatment

| **Req. #** | **Requirement Description** | **Priority** |
| --- | --- | --- |
| PT001 | Note: this relates to part time going to full time when injured/ill and on WC/EPSS claim, also changes in part time agreements (increase/reduce hours)  When an employee changes from parttime hours to full time hours in Period 1, the system to calculate and pay EPSS entitlement at full time rate from the date of change in the hours of work.  When an employee changes from full time hours to part time hours in Period 1, the system to calculate and pay EPSS entitlements at the part time rate from the date of change in hours of work. | W |

## Open Items to finalise requirements for Phase 5

|  |  |  |  |
| --- | --- | --- | --- |
| **#** | **Relates to** | **Item** | **Owner** |
| 1 | [2.2.1 Ordinary rate of pay](#_Period_1:_Ordinary) | Update the “ORP WT list” worksheet with the IT0008 wagetypes/allowances to be included in ORP and those to be excluded (mark additions/removals and identify any new wagetypes). | HSWC / PCC |
| 2 | [2.3.3 Off Duty Claim Management](#_OLIMS:_EPSS_Off) | TAL Off Duty Claim Forms.  
**Update 2026-01-27 (OLB001 feedback):**
* Clarify and expand on the requirement for "TAL Off Duty Claim Forms," including any dependencies or process steps required for implementation, and ensure alignment with the new EPSS Off Duty tab and business process. | HSWC / TAL |
| 3 | [2.3.4.2 Document Generation – generate and send EPSS letters and forms](#_Document_Generation_–) | EPSS On Duty Letters and Forms | HSWC |
| 4 | [2.3.4.5 External Income and Payment offset model](#_External_Income_and_1) | Income and Payment Offset policy and list of inclusions and exclusions | HSWC |
| 5 | [2.3.6 Employee Contributions](#_Employee_Contributions) | Confirmation if TAL require a membership number for contribution reporting. If TAL require a membership number, the separate IT0220 fund codes for Aware and TAL will need to remain and cannot | SS / FABS |
| 6 | [2.2.1 Ordinary rate of pay](#_Period_1:_Ordinary) | Confirm ORP is derived from InfoType 0008 only (exclude higher duties / HDA) and provide the updated ORP “EP” wagetype whitelist/list used for Period 1 ORP (via the “ORP WT list” worksheet). | HSWC / PCC / TCSC |
| 7 | [2.2.1 Ordinary rate of pay](#_Period_1:_Ordinary) | Confirm whether the ex-gratia wagetype/payment should be treated as a “$1 payment” for Period 1 week counting in scenarios where there is otherwise no EPSS payment (e.g. Section 40) | HSWC |
| 8 | [2.2.1 Ordinary rate of pay](#_Period_1:_Ordinary) | Provide completed wagetype maintenance form for ex-gratia wagetype (incl. finance sign-off and GL posting requirements) | HSWC / FABS |
| 9 | [2.3.4.7 Period 1 payments: control to start, pause and recommence](#_Period_1_payments:_control) | ~~Confirm security model and transaction/tcode for reverting the "Not approved to pay" flag (restricted to EPSS managers/team leaders)~~ **RESOLVED**: Manager transaction ZRE_CMMGR confirmed for reverting flag (restricted to EPSS managers/team leaders). Requires delegation setup. | TCSC / SS |
| 10 | [2.3.4.7 Period 1 payments: control to start, pause and recommence](#_Period_1_payments:_control) | ~~Confirm if suspensions must be retained as inactive/delimited records (no delete)~~ **RESOLVED**: Suspensions must be retained as inactive/delimited records (no delete) for audit purposes. **PENDING**: Confirm required suspension reason codes | HSWC / TCSC |
| 11 | [2.3.4.7 Period 1 payments: control to start, pause and recommence](#_Period_1_payments:_control) | Define week counting behaviour when EPSS payment approval/suspension starts or ends mid-week (e.g. "3 out of 7" treatment) to align with P1001–P1006. **NOTE (min_a.md:605–613)**: Concept discussed as "3 out of 7" but not yet fully defined in transcripts; awaiting HSWC confirmation on treatment of mid-week start/stop scenarios for week counting purposes. | HSWC |
| 12 | [2.3.4.7 Period 1 payments: control to start, pause and recommence](#_Period_1_payments:_control) | ~~Define and add requirement for a pay-run QA report for active primary EPSS claims where the "Not approved to pay" flag remains set~~ **RESOLVED**: QA report requirement added as RPR001–RPR004 in [reports/RPR-pay-run-qa-not-approved-flags.md](../reports/RPR-pay-run-qa-not-approved-flags.md); delivery mechanism (scheduled job/SM37) to be confirmed during UAT | HSWC / SS |
| 13 | [2.2.1 Ordinary rate of pay](#_Period_1:_Ordinary) | Confirm payroll/pay-period handling for the ORP effective date (12.12.2025), including whether mid-period splits are required (e.g. via IT0027) and how impacted Period 1 employees will be forced/recalculated from the effective date. | SS / TCSC |
| 14 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm the SAP termination identifier(s) for “exit on medical grounds” (e.g. Action/Reason values) and any new action reason required to reliably identify the detached officer cohort for EPSS processing. | SS / PCC / TCSC |
| 15 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm payroll processing/taxation approach for detached officers (P1/P2 applicability, PAYG treatment, and whether payroll status should be automated to continue EPSS payments post-termination once hired as non-employee). | SS / FABS / TCSC |
| 16 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm the SAP field/subtype used to link the original employee/registered number to the hired non-employee number (e.g. IT0105 subtype `FREM` vs alternative) and how ESG/number range flags the cohort (incl. whether ESG `XV` is used). | TCSC / SS |
| 17 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm OLIMS constraints and end-to-end processing for certificates/P905 after termination, including: incident creation rules, whether historical incidents can be updated post-termination, and validation that a hired non-employee number exists before pushing payroll records (e.g. IT0014 `9WCO`) to the detached officer number. | TCSC / SS / Deloitte |
| 18 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm implementation details for the new OLIMS claim status **“Reopen”** (DOA002), including whether claim status is used to drive payroll interfaces (e.g. triggering/pushing IT0014 `9WCO`) and how backdated primary/certificate changes should be handled across original vs hired non-employee numbers. | TCSC / SS / Deloitte |
| 19 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm OLIMS claim status/substatus model for detached officers to satisfy DOA017 (e.g. whether Period 1/2/3 statuses remain distinct within “Pending/Closed/Reopen/Monitor” etc.). | Deloitte / HSWC / SS |
| 20 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm ESG `XV` automation scope and any required data conversion/effective-dating for existing cohorts (e.g. PBRI detached in 3000 range remaining manual vs EPSS detached in 3100 range moving to automated rules). | TCSC / SS |
| 21 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm employee number assignment approach for EPSS detached non-employee hires (DOA005): automatic sequential assignment + required number range vs manual assignment fallback, including indicative cost/effort and any dependencies. | TCSC / SS |
| 22 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm whether the existing EPSS detached number range (e.g. 3100 series) can be used going forward (as acceptable) or whether a new range (e.g. 5000xxxx) is required, and document the definitive scheme identification rule in SAP (ESG vs number range vs both). | TCSC / SS |
| 23 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm counts/usage of “undefined” personnel number series (e.g. 6000/7000) and any conflicts/constraints for selecting a new detached-officer number range. | TCSC / SS |
| 24 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Define the required SAP behaviours/automations for the EPSS detached employee subgroup/ESG (DOA007) and confirm whether an existing subgroup can be used as a baseline to reduce implementation effort. | TCSC / SS / PCC |
| 25 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm detached officer hire execution method (DOA008): PA40 manual hire vs program-based hire (or other tooling), including whether any ESS configuration is required and how required defaults (e.g. automatic personnel number assignment) will be achieved. | TCSC / SS |
| 26 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm whether RTD/PID entries can be entered in OLIMS against an inactive (terminated) original employee number for dates after termination, to support Period 2 extensions for detached officers (DOA010). | Deloitte / TCSC / HSWC |
| 27 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm detached officer salary source rules for Period 1 ORP and Period 2 base salary (DOA010/DOA012): whether P1 ORP remains based on the original employee’s last active IT0008 (capacity-adjusted) without Award pay rises, and how retro changes to the original IT0008/ORP wagetype definition flow through to detached calculations. | TCSC / SS / HSWC |
| 28 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm SAP data entry/design for detached officer salary values given IT0008 wage type restrictions by employee group/subgroup: whether salary/ORP/P2 base is captured via a dedicated cumulative wagetype/manual entry vs dynamically read from the original employee record. | TCSC / SS |
| 29 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Define the business process for handling retro salary increases/increments so detached officer calculations and payments remain correct when retro changes apply to the original employee record (see DOA012). | SS / HSWC |
| 30 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm OLIMS/SAP behaviour for certificates entered after termination (DOA013): whether any “terminated employee” restrictions need to be changed/guarded, and how certificate entry should behave when the detached non-employee exists (linked via `FREM` or equivalent). | Deloitte / TCSC / SS |
| 31 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm how future-dated IT0014 `9WCO` records behave on termination (created in advance by P905) and whether they must be removed/redirected to the detached non-employee number when termination occurs. | TCSC / SS |
| 32 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm required changes to P905/P905 regeneration logic for detached officers (DOA013/DOB001): ensure IT0014 `9WCO` is created against the correct employee number for relevant dates, does not generate wagetype `4901` for the detached cohort, and still supports EPSS P1/P2/P3 payment generation. | TCSC / SS / Deloitte |
| 33 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm week-counting/calculation impacts if wagetype `4901` is blocked for detached officers (e.g. whether S36/S37 week counting logic requires `4901`, and what alternative indicator/source is used). | HSWC / TCSC / Deloitte |
| 34 | [2.3.1 Detached Officers](#_Payment_and_Claim_Management_for_Detached_Officers) | Confirm design for detached officer WC earnings representation: whether the EML-uploaded WC amounts (DOB00x) should be treated as the `4901` equivalent for reporting/calculation, or remain as `9WCO`/offset-only inputs, and how PAWE/stat-rate-derived calculations are handled/avoided. | HSWC / SS / Deloitte |

## Open Items to finalise deployment of deferred Phase 4 items

|  |  |  |  |
| --- | --- | --- | --- |
| **#** | **Relates to** | **Item** | **Owner** |
| 1 | Period 2 Indexation | Obtain finalised ‘constant’ value to apply indexation | HSWC |
| 2 | Employee Contributions up to retirement age | Obtain finalised decision and effective date | HSWC |
| 3 | Routine recreation and extended leave not treated as income to reduce EPSS supplementary support payments | Obtain policy decision to proceed with roll back of 9WCM to 9WCA to treat recreation and extended leave as income. | HSWC |

SAP configuration EPSS Phase 5. 

BRD heading /reference sample layout (copy for each heading. Remove sub headings as req) 

Current setup vs requirement 

Current Setup 

Business requirement  

Detailed design and impacts 

DTT SAP Functional 

DTT SAP Technical 

OLIMS 

NSWP technical 

NSWP functional 

Business impact 

Cutover impact 

SAP Functional 

DTT SAP Technical 

OLIMS 

NSWP technical 

NSWP functional 

Business impact 

 

Period 1: Ordinary Rate of Pay and allowances (2.2.1) 

Current setup vs requirement 

Current Setup 

The current setup of period 1 salary is based on evaluation class is currently based on evaluation class 20 value ‘EP’. The following are the current wage types set to contribute as part of period 1 ordinary rate of pay:  

0S00 

SES Base Remuneration 

X 

1000 

Annual Salary         (S) 

X 

1030 

Base Pay Reduction    (S) 

X 

1035 

Base Pay Red Second   (S) 

X 

1050 

Loading Allce         (S) 

X 

1061 

Det's SDA (Base forOT)(S) 

X 

1062 

Det's Special (Base)  (S) 

X 

1066 

Prscr SDA(Base forOT)(S) 

X 

1067 

Prscr SpclAllw (Base) (S) 

X 

 