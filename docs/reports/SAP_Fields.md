# SAP ECC DDIC JSON Extract Summary

Source directory: `C:\Users\thevermeulen\OneDrive - Deloitte (O365D)\Apps\work\sap_reader\interface`
Tables parsed: **196**
Files with issues: **5**

## Issues

- batch_summary.json: missing DFIES_TAB
- function_details.json: missing DFIES_TAB
- interface.json: missing DFIES_TAB
- RFC_READ_TABLE.json: missing DFIES_TAB
- RPY_FUNCTIONMODULE_READ_NEW.json: missing DFIES_TAB

## Tables

### ZIMLTRVAR

- File: `ZIMLTRVAR_fields.json`
- Object type: `INTTAB`
- Field count: **529**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | PERNR | CHAR | 8 | Employee Number |
|  | INCIDENT | CHAR | 10 | Incident Number |
|  | NACHN | CHAR | 40 | Last Name |
|  | VORNA | CHAR | 40 | First Name |
|  | ENAME | CHAR | 40 | Formatted Name of Injured Worker |
|  | TITLE | CHAR | 5 | Form of Address Text |
|  | GENDTITLE | CHAR | 3 | Gender Title |
|  | GENDHE | CHAR | 3 | Gender he/she |
|  | GENDHIS | CHAR | 3 | Gender his/her |
|  | GENDHECAP | CHAR | 3 | Gender he/she |
|  | GENDHISCAP | CHAR | 3 | Gender his/her |
|  | BIRTHDATE | CHAR | 10 | Date of Birth |
|  | RANK | CHAR | 30 | Rank |
|  | PLANS | NUMC | 8 | Position |
|  | POSNDESC | CHAR | 40 | Position Description |
|  | POSNSTART | CHAR | 10 | Date Commenced in Substantive Position |
|  | STRAS | CHAR | 60 | Street and House Number |
|  | LOCAT | CHAR | 40 | 2nd Address Line |
|  | ORT01 | CHAR | 40 | City |
|  | POSTCODE | CHAR | 10 | Postal Code |
|  | REGIO | CHAR | 3 | Region (State, Province, County) |
|  | WORKPHONE | CHAR | 20 | Employee Work Phone Number |
|  | HOMEPHONE | CHAR | 20 | Employee Home Phone Number |
|  | ENETPHONE | CHAR | 20 | Employee Eaglenet Phone Number |
|  | EMPMOBILE | CHAR | 20 | Employee Mobile Number |
|  | EMPEMAIL | CHAR | 241 | Employee Email |
|  | EMPWORKEMAIL | CHAR | 241 | Employee Work Email |
|  | EMPLACDESC | CHAR | 40 | Employee PAC/PD/Section Description |
|  | EMPLACSTRAS | CHAR | 60 | Street and House Number |
|  | EMPLACSTREET2 | CHAR | 40 | 2nd Address Line |
|  | EMPLACORT01 | CHAR | 40 | City |
|  | EMPLACPOSTCODE | CHAR | 10 | Postal Code |
|  | EMPREGDESC | CHAR | 40 | Employee Region Description |
|  | EMPREGSTRAS | CHAR | 60 | Street and House Number |
|  | EMPREGSTREET2 | CHAR | 40 | 2nd Address Line |
|  | EMPREGORT01 | CHAR | 40 | City |
|  | EMPREGPOSTCODE | CHAR | 10 | Postal Code |
|  | EMPREGPHONE | CHAR | 20 | Injured Worker Region Phone |
|  | EMPSTATDESC | CHAR | 40 | Employee Status Description |
|  | INJLOCATION | CHAR | 80 | OLIMS - Location of Injury |
|  | ATTESTATION | CHAR | 10 | Attestation Date |
|  | ORGEH | NUMC | 8 | Organizational Unit |
|  | ORGTXT | CHAR | 40 | Org Unit Name |
|  | SYSNAME | CHAR | 30 | OLIMS - System Name |
|  | IMANAME | CHAR | 40 | IMA Name |
|  | IMAREGDESC | CHAR | 40 | IMA Region Description |
|  | IMAEMAIL | CHAR | 241 | IMA Email |
|  | IMAFAX | CHAR | 20 | IMA Fax |
|  | IMAPHONE | CHAR | 20 | IMA Phone |
|  | IMAEAGLE | CHAR | 20 | IMA Eaglenet Phone Number |
|  | IMAMOBILE | CHAR | 20 | IMA Mobile Number |
|  | IMASTRAS | CHAR | 60 | Street and House Number |
|  | IMALOCAT | CHAR | 40 | 2nd Address Line |
|  | IMAORT01 | CHAR | 40 | City |
|  | IMAPOSTCODE | CHAR | 10 | Postal Code |
|  | IMAREGIO | CHAR | 3 | Region (State, Province, County) |
|  | IMAPOSNDESC | CHAR | 40 | Position Description |
|  | LAMNAME | CHAR | 40 | LAM Name |
|  | SIMANAME | CHAR | 40 | Senior IMA Name |
|  | SIMAEMAIL | CHAR | 241 | Senior IMA Email |
|  | SIMAFAX | CHAR | 20 | Senior IMA Fax |
|  | SIMAPHONE | CHAR | 20 | Senior IMA Phone |
|  | SIMAEAGLE | CHAR | 20 | SIMA Eaglenet Phone Number |
|  | SIMAMOBILE | CHAR | 20 | SIMA Mobile Number |
|  | SIMASTRAS | CHAR | 60 | Street and House Number |
|  | SIMALOCAT | CHAR | 40 | 2nd Address Line |
|  | SIMAORT01 | CHAR | 40 | City |
|  | SIMAPOSTCODE | CHAR | 10 | Postal Code |
|  | SIMAREGIO | CHAR | 3 | Region (State, Province, County) |
|  | MGRNAME | CHAR | 40 | Manager/Commander's Name |
|  | MGREMAIL | CHAR | 241 | Manager/Commander Email |
|  | MGRFAX | CHAR | 20 | Manager/Commander Fax |
|  | MGRPHONE | CHAR | 20 | Manager/Commander Phone |
|  | MGREAGLE | CHAR | 20 | Manager/Commander Eaglenet Phone Number |
|  | MGRMOBILE | CHAR | 20 | Manager/Commander Mobile Number |
|  | MGRSTRAS | CHAR | 60 | Street and House Number |
|  | MGRLOCAT | CHAR | 40 | 2nd Address Line |
|  | MGRORT01 | CHAR | 40 | City |
|  | MGRPOSTCODE | CHAR | 10 | Postal Code |
|  | MGRREGIO | CHAR | 3 | Region (State, Province, County) |
|  | MGRRANK | CHAR | 30 | Rank |
|  | MGRLACDESC | CHAR | 40 | Manager/Commander PAC/PD/Section Description |
|  | MGRREGDESC | CHAR | 40 | Manager/Commander Region Description |
|  | SUPNAME | CHAR | 40 | Supervisor Name |
|  | SUPEMAIL | CHAR | 241 | Supervisor Email |
|  | SUPFAX | CHAR | 20 | Supervisor Fax |
|  | SUPPHONE | CHAR | 20 | Supervisor Phone |
|  | SUPEAGLE | CHAR | 20 | Supervisor Eaglenet Phone Number |
|  | SUPMOBILE | CHAR | 20 | Supervisor Mobile Number |
|  | SUPSTRAS | CHAR | 60 | Street and House Number |
|  | SUPLOCAT | CHAR | 40 | 2nd Address Line |
|  | SUPORT01 | CHAR | 40 | City |
|  | SUPPOSTCODE | CHAR | 10 | Postal Code |
|  | SUPREGIO | CHAR | 3 | Region (State, Province, County) |
|  | SUPRANK | CHAR | 30 | Rank |
|  | CURDATE | CHAR | 10 | Current Date |
|  | DATEINCIDENT | CHAR | 10 | Date of Incident |
|  | DATEREPORTED | CHAR | 10 | Date the Incident was Reported |
|  | LASTDAYDUTY | CHAR | 10 | Last Day of Duty |
|  | CLOSEDESC | CHAR | 60 | Closure Description |
|  | NTDNAME | CHAR | 60 | NTD Name |
|  | NTDPHONE | CHAR | 20 | NTD Phone Number |
|  | NTDSTRAS | CHAR | 60 | Street and House Number |
|  | NTDLOCAT | CHAR | 40 | 2nd Address Line |
|  | NTDORT01 | CHAR | 40 | City |
|  | NTDPOSTCODE | CHAR | 10 | Postal Code |
|  | NTDREGIO | CHAR | 3 | Region (State, Province, County) |
|  | NTSNAME | CHAR | 60 | NTS Name |
|  | NTSPHONE | CHAR | 20 | NTS Phone Number |
|  | NTSSTRAS | CHAR | 60 | Street and House Number |
|  | NTSLOCAT | CHAR | 40 | 2nd Address Line |
|  | NTSORT01 | CHAR | 40 | City |
|  | NTSPOSTCODE | CHAR | 10 | Postal Code |
|  | NTSREGIO | CHAR | 3 | Region (State, Province, County) |
|  | INSCOMPANY | CHAR | 30 | OLIMS - Insurer Name |
|  | INSNAME | CHAR | 60 | Insurer Contact Name |
|  | INSPHONE | CHAR | 20 | Insurer Phone Number |
|  | INSEMAIL | CHAR | 241 | Insurer Email |
|  | CLAIMSTATUS | CHAR | 60 | Claim Status |
|  | CLAIMAPPDATE | CHAR | 10 | Claim Approved Date |
|  | CLAIMNO | CHAR | 15 | Workcover Claim Number |
|  | REHABLOC | CHAR | 40 | Rehab Location Description |
|  | REHABBEGDA | CHAR | 10 | Rehabilitation Start Date |
|  | REHABENDDA | CHAR | 10 | Rehabilitation End Date |
|  | REHABREVIEWDATE | CHAR | 10 | Rehabilitation Review Date |
|  | WCMCDATE | CHAR | 10 | OLIMS - Date of the Medical Certificate |
|  | WCMCNAME | CHAR | 60 | WCMC Health Professional Name |
|  | WCMCPHONE | CHAR | 20 | WCMC Health Professional Phone |
|  | WCMCDIAG | CHAR | 600 | Medical Certificate Diagnosis |
|  | WCMCSTATUS | CHAR | 60 | Medical Certificate Work Status |
|  | WCMCCAP101 | CHAR | 80 | WCMC Hours |
|  | WCMCCAP201 | CHAR | 80 | WCMC Hours |
|  | WCMCMEDREST01 | CHAR | 80 | WCMC Duties Restrictions |
|  | WCMCMEDREST02 | CHAR | 80 | WCMC Duties Restrictions |
|  | WCMCMEDREST03 | CHAR | 80 | WCMC Duties Restrictions |
|  | WCMCMEDREST04 | CHAR | 80 | WCMC Duties Restrictions |
|  | WCMCMEDREST05 | CHAR | 80 | WCMC Duties Restrictions |
|  | WCMCMEDREST06 | CHAR | 80 | WCMC Duties Restrictions |
|  | WCMCMEDOTH01 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH02 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH03 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH04 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH05 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH06 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH07 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH08 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH09 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH10 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | RTWPPLANNO | CHAR | 3 | OLIMS - R@WP Plan Number |
|  | RTWPGOAL | CHAR | 132 | R@WP Goal Description |
|  | RTWPGOALDATE | CHAR | 10 | R@WP Goal Date |
|  | RTWPREVDATE | CHAR | 10 | R@WP Review Date |
|  | RTWPDATE01 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION01 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS01 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET201 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT01 | CHAR | 40 | City |
|  | RTWPDUTIES01 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP101 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP201 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE02 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION02 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS02 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET202 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT02 | CHAR | 40 | City |
|  | RTWPDUTIES02 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP102 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP202 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE03 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION03 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS03 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET203 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT03 | CHAR | 40 | City |
|  | RTWPDUTIES03 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP103 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP203 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE04 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION04 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS04 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET204 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT04 | CHAR | 40 | City |
|  | RTWPDUTIES04 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP104 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP204 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE05 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION05 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS05 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET205 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT05 | CHAR | 40 | City |
|  | RTWPDUTIES05 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP105 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP205 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE06 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION06 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS06 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET206 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT06 | CHAR | 40 | City |
|  | RTWPDUTIES06 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP106 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP206 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE07 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION07 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS07 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET207 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT07 | CHAR | 40 | City |
|  | RTWPDUTIES07 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP107 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP207 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE08 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION08 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS08 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET208 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT08 | CHAR | 40 | City |
|  | RTWPDUTIES08 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP108 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP208 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE09 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION09 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS09 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET209 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT09 | CHAR | 40 | City |
|  | RTWPDUTIES09 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP109 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP209 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE10 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION10 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS10 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET210 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT10 | CHAR | 40 | City |
|  | RTWPDUTIES10 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP110 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP210 | CHAR | 80 | R@WP Hours |
|  | RTWPDIAG | CHAR | 600 | R@WP Diagnosis |
|  | RTWPSUPNAME | CHAR | 40 | R@WP Supervisor Name |
|  | RTWPSUPRANK | CHAR | 30 | Rank |
|  | RTWPMEDREST01 | CHAR | 80 | R@WP Duties Restrictions |
|  | RTWPMEDREST02 | CHAR | 80 | R@WP Duties Restrictions |
|  | RTWPMEDREST03 | CHAR | 80 | R@WP Duties Restrictions |
|  | RTWPMEDREST04 | CHAR | 80 | R@WP Duties Restrictions |
|  | RTWPMEDREST05 | CHAR | 80 | R@WP Duties Restrictions |
|  | RTWPMEDREST06 | CHAR | 80 | R@WP Duties Restrictions |
|  | RTWPMEDOTH01 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH02 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH03 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH04 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH05 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH06 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH07 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH08 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH09 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH10 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPADD01 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD02 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD03 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD04 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD05 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD06 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD07 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD08 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD09 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD10 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPPLAN01 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN02 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN03 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN04 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN05 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN06 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN07 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN08 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN09 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN10 | CHAR | 132 | R@WP Management Plan |
|  | RTWPREF01 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF02 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF03 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF04 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF05 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF06 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF07 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF08 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF09 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF10 | CHAR | 132 | R@WP Management Plan Referral |
|  | MAINNATURE | CHAR | 40 | Main Nature of Injury |
|  | BODYLINE01 | CHAR | 132 | Email Body Text |
|  | BODYLINE02 | CHAR | 132 | Email Body Text |
|  | BODYLINE03 | CHAR | 132 | Email Body Text |
|  | BODYLINE04 | CHAR | 132 | Email Body Text |
|  | BODYLINE05 | CHAR | 132 | Email Body Text |
|  | BODYLINE06 | CHAR | 132 | Email Body Text |
|  | BODYLINE07 | CHAR | 132 | Email Body Text |
|  | BODYLINE08 | CHAR | 132 | Email Body Text |
|  | BODYLINE09 | CHAR | 132 | Email Body Text |
|  | BODYLINE10 | CHAR | 132 | Email Body Text |
|  | BODYLINE11 | CHAR | 132 | Email Body Text |
|  | BODYLINE12 | CHAR | 132 | Email Body Text |
|  | BODYLINE13 | CHAR | 132 | Email Body Text |
|  | BODYLINE14 | CHAR | 132 | Email Body Text |
|  | BODYLINE15 | CHAR | 132 | Email Body Text |
|  | BODYLINE16 | CHAR | 132 | Email Body Text |
|  | BODYLINE17 | CHAR | 132 | Email Body Text |
|  | BODYLINE18 | CHAR | 132 | Email Body Text |
|  | BODYLINE19 | CHAR | 132 | Email Body Text |
|  | BODYLINE20 | CHAR | 132 | Email Body Text |
|  | IMEPPROVNAME | CHAR | 60 | OLIMS - Provider Consultant |
|  | IMEPDATE | CHAR | 10 | IMEP Appointment Date |
|  | IMEPTIME | CHAR | 5 | IMEP Appointment Time |
|  | IMEPSTRAS | CHAR | 60 | Street and House Number |
|  | IMEPLOCAT | CHAR | 40 | 2nd Address Line |
|  | IMEPORT01 | CHAR | 40 | City |
|  | IMEPPOSTCODE | CHAR | 10 | Postal Code |
|  | IMEPREGIO | CHAR | 3 | Region (State, Province, County) |
|  | IMEPPHONE | CHAR | 20 | Communication Number |
|  | IMEPTYPE | CHAR | 40 | IMEP Type |
|  | WCANAME | CHAR | 40 | Workers Compensation Advisor Name |
|  | WCAEMAIL | CHAR | 241 | Workers Compensation Advisor Email |
|  | WCAFAX | CHAR | 20 | Workers Compensation Advisor Fax Number |
|  | WCAPHONE | CHAR | 20 | Workers Compensation Advisor Phone Number |
|  | WCAEAGLE | CHAR | 20 | Workers Comp Advisor Eaglenet Phone Number |
|  | WCAMOBILE | CHAR | 20 | Workers Compensation Advisor Mobile Number |
|  | WCASTRAS | CHAR | 60 | Street and House Number |
|  | WCALOCAT | CHAR | 40 | 2nd Address Line |
|  | WCAORT01 | CHAR | 40 | City |
|  | WCAPOSTCODE | CHAR | 10 | Postal Code |
|  | WCAREGIO | CHAR | 3 | Region (State, Province, County) |
|  | WCAPOSNDESC | CHAR | 40 | Position Description |
|  | IPANAME | CHAR | 40 | Income Protection Advisor Name |
|  | IPAEMAIL | CHAR | 241 | Income Protection Advisor Email |
|  | IPAFAX | CHAR | 20 | Income Protection Advisor Fax Number |
|  | IPAPHONE | CHAR | 20 | Income Protection Advisor Phone Number |
|  | IPAEAGLE | CHAR | 20 | Income Protection Advisor Eaglenet Phone Number |
|  | IPAMOBILE | CHAR | 20 | Income Protection Advisor Mobile Number |
|  | IPASTRAS | CHAR | 60 | Street and House Number |
|  | IPALOCAT | CHAR | 40 | 2nd Address Line |
|  | IPAORT01 | CHAR | 40 | City |
|  | IPAPOSTCODE | CHAR | 10 | Postal Code |
|  | IPAREGIO | CHAR | 3 | Region (State, Province, County) |
|  | IPAPOSNDESC | CHAR | 40 | Position Description |
|  | SIANAME | CHAR | 40 | Self Insurance Advisor Name |
|  | SIAEMAIL | CHAR | 241 | Self Insured Advisor Email |
|  | SIAFAX | CHAR | 20 | Self Insured Advisor Fax Number |
|  | SIAPHONE | CHAR | 20 | Self Insured Advisor Phone Number |
|  | SIAEAGLE | CHAR | 20 | Self Insured Advisor Eaglenet Phone Number |
|  | SIAMOBILE | CHAR | 20 | Self Insured Advisor Mobile Number |
|  | SIASTRAS | CHAR | 60 | Street and House Number |
|  | SIALOCAT | CHAR | 40 | 2nd Address Line |
|  | SIAORT01 | CHAR | 40 | City |
|  | SIAPOSTCODE | CHAR | 10 | Postal Code |
|  | SIAREGIO | CHAR | 3 | Region (State, Province, County) |
|  | SIAPOSNDESC | CHAR | 40 | Position Description |
|  | GAONAME | CHAR | 40 | GAO Name |
|  | GAOEMAIL | CHAR | 241 | GAO Email |
|  | GAOFAX | CHAR | 20 | GAO Fax Number |
|  | GAOPHONE | CHAR | 20 | GAO Phone Number |
|  | GAOEAGLE | CHAR | 20 | GAO Eaglenet Phone Number |
|  | GAOMOBILE | CHAR | 20 | GAO Mobile Number |
|  | GAOSTRAS | CHAR | 60 | Street and House Number |
|  | GAOLOCAT | CHAR | 40 | 2nd Address Line |
|  | GAOORT01 | CHAR | 40 | City |
|  | GAOPOSTCODE | CHAR | 10 | Postal Code |
|  | GAOREGIO | CHAR | 3 | Region (State, Province, County) |
|  | GAOPOSNDESC | CHAR | 40 | Position Description |
|  | IPCLAIMNO | CHAR | 15 | OLIMS - Income Protection Claim Number |
|  | SICLAIMNO | CHAR | 15 | OLIMS - Self Insured Claim Number |
|  | WCENDDATE | CHAR | 10 | Workers Compensation End Date |
|  | IPENDDATE | CHAR | 10 | Income Protection End Date |
|  | WEEK38DATE | CHAR | 10 | Week 38 Date |
|  | MEDCERTENDDATE | CHAR | 10 | Medical Certificate End Date |
|  | STATRATE | CHAR | 11 | Statutory Entitlement Amount |
|  | DISDATE | CHAR | 10 | Date of Disablement |
|  | DAY270 | CHAR | 10 | 270 Date |
|  | STARTDATE1 | CHAR | 10 | The Day Before IP Commences |
|  | DEPMTGDT | CHAR | 10 | Deployment Meeting Date |
|  | DEPMTGTM | CHAR | 5 | Deployment Meeting Time |
|  | DEPPROPPOSNO01 | NUMC | 8 | Deployment Position |
|  | DEPPROPPOSDSC01 | CHAR | 40 | Deployment Position Description |
|  | DEPPROPORG01 | CHAR | 40 | Deployment Org Unit Name |
|  | DEPCASEOFF | NUMC | 8 | Deployment Case Officer |
|  | DEPCASEOFFNM | CHAR | 40 | Deployment Case Officer Name |
|  | DEPCASEOFFPHN | CHAR | 20 | Deployment Case Officer Phone No |
|  | DEPCASEOFFEML | CHAR | 241 | Deployment Case Officer Email Address |
|  | DEPCASEOFFFAX | CHAR | 20 | Deployment Case Officer Fax No |
|  | DEPCASEOFFMOB | CHAR | 20 | Deployment Case Officer Mobile No |
|  | DEPCASEOFFEN | CHAR | 20 | Deployment Case Officer Eaglenet |
|  | DEPCASEOFFSTRAS | CHAR | 60 | Street and House Number |
|  | DEPCASEOFFLOCAT | CHAR | 40 | 2nd Address Line |
|  | DEPCASEOFFORT01 | CHAR | 40 | City |
|  | DEPCASEOFFPCODE | CHAR | 10 | Postal Code |
|  | DEPCASEOFFREGIO | CHAR | 3 | Region (State, Province, County) |
|  | DEPACPTDPOS | NUMC | 8 | Deployment Accepted Position |
|  | DEPACPTDPOSNM | CHAR | 40 | Deployment Accepted Position Description |
|  | DEPACPTDORGNM | CHAR | 40 | Deployment Accepted Org Description |
|  | DEPPLACEMNTNM | CHAR | 40 | Deployment Placement Type Name |
|  | DEPREDADMNNM | CHAR | 20 | Deployment Reduction in Rank or Admin |
|  | DEPCASEREVDT | CHAR | 10 | OLIMS - Deployment 3 Month Case Review Date |
|  | DEPCASEREVTM | CHAR | 5 | OLIMS - Deployment 3 Month Case Review Time |
|  | DEPCASECORSNT | CHAR | 10 | OLIMS - Deployment  3Month Case Review Corr Sent Date |
|  | DEPREGNO | NUMC | 8 | Deployment Case Officer |
|  | DEPREGNAME | CHAR | 40 | Deployment Case Officer Name |
|  | DEPCLASSMSG | CHAR | 40 | Deployment Case Officer Name |
|  | MEETPERS01 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE01 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME01 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS02 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE02 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME02 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS03 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE03 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME03 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS04 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE04 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME04 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS05 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE05 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME05 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS06 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE06 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME06 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS07 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE07 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME07 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS08 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE08 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME08 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS09 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE09 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME09 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS10 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE10 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME10 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETCOMPDATE01 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE02 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE03 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE04 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE05 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE06 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE07 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE08 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE09 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE10 | CHAR | 10 | Character Field Length = 10 |
|  | MINUTES01 | CHAR | 132 | Text (length 132) |
|  | MINUTES02 | CHAR | 132 | Text (length 132) |
|  | MINUTES03 | CHAR | 132 | Text (length 132) |
|  | MINUTES04 | CHAR | 132 | Text (length 132) |
|  | MINUTES05 | CHAR | 132 | Text (length 132) |
|  | MINUTES06 | CHAR | 132 | Text (length 132) |
|  | MINUTES07 | CHAR | 132 | Text (length 132) |
|  | MINUTES08 | CHAR | 132 | Text (length 132) |
|  | MINUTES09 | CHAR | 132 | Text (length 132) |
|  | MINUTES10 | CHAR | 132 | Text (length 132) |
|  | MEETINGDATE | CHAR | 10 | Character Field Length = 10 |
|  | MEETINGTIME | CHAR | 10 | Character Field Length = 10 |
|  | MEETINGTIMEEND | CHAR | 10 | Character Field Length = 10 |
|  | MEETGOAL | CHAR | 128 | OLIMS - Meeting Goal |
|  | MEETLOCATION | CHAR | 60 | OLIMS Meeting Location |
|  | MEETDESCRIPTION | CHAR | 80 | OLIMS Meeting Description |
|  | MEETATTENDEES1 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES2 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES3 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES4 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES5 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES6 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES7 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES8 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES9 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES10 | CHAR | 132 | Text (length 132) |
|  | MEETAGND01 | CHAR | 132 | Text (length 132) |
|  | MEETAGND02 | CHAR | 132 | Text (length 132) |
|  | MEETAGND03 | CHAR | 132 | Text (length 132) |
|  | MEETAGND04 | CHAR | 132 | Text (length 132) |
|  | MEETAGND05 | CHAR | 132 | Text (length 132) |
|  | MEETAGND06 | CHAR | 132 | Text (length 132) |
|  | MEETAGND07 | CHAR | 132 | Text (length 132) |
|  | MEETAGND08 | CHAR | 132 | Text (length 132) |
|  | MEETAGND09 | CHAR | 132 | Text (length 132) |
|  | MEETAGND10 | CHAR | 132 | Text (length 132) |
|  | CSANAME | CHAR | 40 | FTCO Name |
|  | CSAEMAIL | CHAR | 241 | FTCO Email |
|  | CSAFAX | CHAR | 20 | FTCO Fax |
|  | CSAPHONE | CHAR | 20 | FTCO Phone |
|  | CSAEAGLE | CHAR | 20 | FTCO Eaglenet Phone Number |
|  | CSAMOBILE | CHAR | 20 | FTCO Mobile Number |
|  | CSASTRAS | CHAR | 60 | Street and House Number |
|  | CSALOCAT | CHAR | 40 | 2nd Address Line |
|  | CSAORT01 | CHAR | 40 | City |
|  | CSAPOSTCODE | CHAR | 10 | Postal Code |
|  | CSAREGIO | CHAR | 3 | Region (State, Province, County) |
|  | SCUNAME | CHAR | 40 | FTCO Name |
|  | SCUEMAIL | CHAR | 241 | FTCO Email |
|  | SCUFAX | CHAR | 20 | FTCO Fax |
|  | SCUPHONE | CHAR | 20 | FTCO Phone |
|  | SCUEAGLE | CHAR | 20 | FTCO Eaglenet Phone Number |
|  | SCUMOBILE | CHAR | 20 | FTCO Mobile Number |
|  | SCUSTRAS | CHAR | 60 | Street and House Number |
|  | SCULOCAT | CHAR | 40 | 2nd Address Line |
|  | SCUORT01 | CHAR | 40 | City |
|  | SCUPOSTCODE | CHAR | 10 | Postal Code |
|  | SCUREGIO | CHAR | 3 | Region (State, Province, County) |
|  | MDONAME | CHAR | 40 | FTCO Name |
|  | MDOEMAIL | CHAR | 241 | FTCO Email |
|  | MDOFAX | CHAR | 20 | FTCO Fax |
|  | MDOPHONE | CHAR | 20 | FTCO Phone |
|  | MDOEAGLE | CHAR | 20 | FTCO Eaglenet Phone Number |
|  | MDOMOBILE | CHAR | 20 | FTCO Mobile Number |
|  | MDOSTRAS | CHAR | 60 | Street and House Number |
|  | MDOLOCAT | CHAR | 40 | 2nd Address Line |
|  | MDOORT01 | CHAR | 40 | City |
|  | MDOPOSTCODE | CHAR | 10 | Postal Code |
|  | MDOREGIO | CHAR | 3 | Region (State, Province, County) |
|  | MDLDS | CHAR | 10 | Nominated Last Day of Service |
|  | MDPSACDATE | CHAR | 10 | PSAC Date |
|  | MDPSACINFIRMITY01 | CHAR | 80 | OLIMS - SCU MD PSAC Infirmity |
|  | MDPSACCLAIMSTAT01 | CHAR | 60 | Claim Status |
|  | MDPSACINFIRMITY02 | CHAR | 80 | OLIMS - SCU MD PSAC Infirmity |
|  | MDPSACCLAIMSTAT02 | CHAR | 60 | Claim Status |
|  | MDPSACINFIRMITY03 | CHAR | 80 | OLIMS - SCU MD PSAC Infirmity |
|  | MDPSACCLAIMSTAT03 | CHAR | 60 | Claim Status |
|  | MDPSACINFIRMITY04 | CHAR | 80 | OLIMS - SCU MD PSAC Infirmity |
|  | MDPSACCLAIMSTAT04 | CHAR | 60 | Claim Status |
|  | MDPSACINFIRMITY05 | CHAR | 80 | OLIMS - SCU MD PSAC Infirmity |
|  | MDPSACCLAIMSTAT05 | CHAR | 60 | Claim Status |
|  | MDINJURYDATE01 | CHAR | 10 | Date of Incident |
|  | MDINJURYDATE02 | CHAR | 10 | Date of Incident |
|  | MDINJURYDATE03 | CHAR | 10 | Date of Incident |
|  | MDINJURYDATE04 | CHAR | 10 | Date of Incident |
|  | MDINJURYDATE05 | CHAR | 10 | Date of Incident |
|  | TOPUPEND | CHAR | 10 | OLIMS - IP Topup End Date |
|  | PBRIMEMNO | CHAR | 20 | Superannuation Fund Membership Number Australia |
|  | DEPENDENTS | CHAR | 5 | OLIMS - WC Dependents |
|  | MAININJURY | CHAR | 80 | Main Injury |
|  | BPNUMBER | CHAR | 12 | Unique Blue Portal number |

### ZIMLTRVAR1

- File: `ZIMLTRVAR1_fields.json`
- Object type: `INTTAB`
- Field count: **468**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | PERNR | CHAR | 8 | Employee Number |
|  | INCIDENT | CHAR | 10 | Incident Number |
|  | NACHN | CHAR | 40 | Last Name |
|  | VORNA | CHAR | 40 | First Name |
|  | ENAME | CHAR | 40 | Formatted Name of Injured Worker |
|  | TITLE | CHAR | 5 | Form of Address Text |
|  | GENDTITLE | CHAR | 3 | Gender Title |
|  | GENDHE | CHAR | 3 | Gender he/she |
|  | GENDHIS | CHAR | 3 | Gender his/her |
|  | GENDHECAP | CHAR | 3 | Gender he/she |
|  | GENDHISCAP | CHAR | 3 | Gender his/her |
|  | BIRTHDATE | CHAR | 10 | Date of Birth |
|  | RANK | CHAR | 30 | Rank |
|  | PLANS | NUMC | 8 | Position |
|  | POSNDESC | CHAR | 40 | Position Description |
|  | POSNSTART | CHAR | 10 | Date Commenced in Substantive Position |
|  | STRAS | CHAR | 60 | Street and House Number |
|  | LOCAT | CHAR | 40 | 2nd Address Line |
|  | ORT01 | CHAR | 40 | City |
|  | POSTCODE | CHAR | 10 | Postal Code |
|  | REGIO | CHAR | 3 | Region (State, Province, County) |
|  | WORKPHONE | CHAR | 20 | Employee Work Phone Number |
|  | HOMEPHONE | CHAR | 20 | Employee Home Phone Number |
|  | ENETPHONE | CHAR | 20 | Employee Eaglenet Phone Number |
|  | EMPMOBILE | CHAR | 20 | Employee Mobile Number |
|  | EMPEMAIL | CHAR | 241 | Employee Email |
|  | EMPWORKEMAIL | CHAR | 241 | Employee Work Email |
|  | EMPLACDESC | CHAR | 40 | Employee PAC/PD/Section Description |
|  | EMPLACSTRAS | CHAR | 60 | Street and House Number |
|  | EMPLACSTREET2 | CHAR | 40 | 2nd Address Line |
|  | EMPLACORT01 | CHAR | 40 | City |
|  | EMPLACPOSTCODE | CHAR | 10 | Postal Code |
|  | EMPREGDESC | CHAR | 40 | Employee Region Description |
|  | EMPREGSTRAS | CHAR | 60 | Street and House Number |
|  | EMPREGSTREET2 | CHAR | 40 | 2nd Address Line |
|  | EMPREGORT01 | CHAR | 40 | City |
|  | EMPREGPOSTCODE | CHAR | 10 | Postal Code |
|  | EMPREGPHONE | CHAR | 20 | Injured Worker Region Phone |
|  | EMPSTATDESC | CHAR | 40 | Employee Status Description |
|  | INJLOCATION | CHAR | 80 | OLIMS - Location of Injury |
|  | ATTESTATION | CHAR | 10 | Attestation Date |
|  | ORGEH | NUMC | 8 | Organizational Unit |
|  | ORGTXT | CHAR | 40 | Org Unit Name |
|  | SYSNAME | CHAR | 30 | OLIMS - System Name |
|  | IMANAME | CHAR | 40 | IMA Name |
|  | IMAREGDESC | CHAR | 40 | IMA Region Description |
|  | IMAEMAIL | CHAR | 241 | IMA Email |
|  | IMAFAX | CHAR | 20 | IMA Fax |
|  | IMAPHONE | CHAR | 20 | IMA Phone |
|  | IMAEAGLE | CHAR | 20 | IMA Eaglenet Phone Number |
|  | IMAMOBILE | CHAR | 20 | IMA Mobile Number |
|  | IMASTRAS | CHAR | 60 | Street and House Number |
|  | IMALOCAT | CHAR | 40 | 2nd Address Line |
|  | IMAORT01 | CHAR | 40 | City |
|  | IMAPOSTCODE | CHAR | 10 | Postal Code |
|  | IMAREGIO | CHAR | 3 | Region (State, Province, County) |
|  | IMAPOSNDESC | CHAR | 40 | Position Description |
|  | LAMNAME | CHAR | 40 | LAM Name |
|  | SIMANAME | CHAR | 40 | Senior IMA Name |
|  | SIMAEMAIL | CHAR | 241 | Senior IMA Email |
|  | SIMAFAX | CHAR | 20 | Senior IMA Fax |
|  | SIMAPHONE | CHAR | 20 | Senior IMA Phone |
|  | SIMAEAGLE | CHAR | 20 | SIMA Eaglenet Phone Number |
|  | SIMAMOBILE | CHAR | 20 | SIMA Mobile Number |
|  | SIMASTRAS | CHAR | 60 | Street and House Number |
|  | SIMALOCAT | CHAR | 40 | 2nd Address Line |
|  | SIMAORT01 | CHAR | 40 | City |
|  | SIMAPOSTCODE | CHAR | 10 | Postal Code |
|  | SIMAREGIO | CHAR | 3 | Region (State, Province, County) |
|  | MGRNAME | CHAR | 40 | Manager/Commander's Name |
|  | MGREMAIL | CHAR | 241 | Manager/Commander Email |
|  | MGRFAX | CHAR | 20 | Manager/Commander Fax |
|  | MGRPHONE | CHAR | 20 | Manager/Commander Phone |
|  | MGREAGLE | CHAR | 20 | Manager/Commander Eaglenet Phone Number |
|  | MGRMOBILE | CHAR | 20 | Manager/Commander Mobile Number |
|  | MGRSTRAS | CHAR | 60 | Street and House Number |
|  | MGRLOCAT | CHAR | 40 | 2nd Address Line |
|  | MGRORT01 | CHAR | 40 | City |
|  | MGRPOSTCODE | CHAR | 10 | Postal Code |
|  | MGRREGIO | CHAR | 3 | Region (State, Province, County) |
|  | MGRRANK | CHAR | 30 | Rank |
|  | MGRLACDESC | CHAR | 40 | Manager/Commander PAC/PD/Section Description |
|  | MGRREGDESC | CHAR | 40 | Manager/Commander Region Description |
|  | SUPNAME | CHAR | 40 | Supervisor Name |
|  | SUPEMAIL | CHAR | 241 | Supervisor Email |
|  | SUPFAX | CHAR | 20 | Supervisor Fax |
|  | SUPPHONE | CHAR | 20 | Supervisor Phone |
|  | SUPEAGLE | CHAR | 20 | Supervisor Eaglenet Phone Number |
|  | SUPMOBILE | CHAR | 20 | Supervisor Mobile Number |
|  | SUPSTRAS | CHAR | 60 | Street and House Number |
|  | SUPLOCAT | CHAR | 40 | 2nd Address Line |
|  | SUPORT01 | CHAR | 40 | City |
|  | SUPPOSTCODE | CHAR | 10 | Postal Code |
|  | SUPREGIO | CHAR | 3 | Region (State, Province, County) |
|  | SUPRANK | CHAR | 30 | Rank |
|  | CURDATE | CHAR | 10 | Current Date |
|  | DATEINCIDENT | CHAR | 10 | Date of Incident |
|  | DATEREPORTED | CHAR | 10 | Date the Incident was Reported |
|  | LASTDAYDUTY | CHAR | 10 | Last Day of Duty |
|  | CLOSEDESC | CHAR | 60 | Closure Description |
|  | NTDNAME | CHAR | 60 | NTD Name |
|  | NTDPHONE | CHAR | 20 | NTD Phone Number |
|  | NTDSTRAS | CHAR | 60 | Street and House Number |
|  | NTDLOCAT | CHAR | 40 | 2nd Address Line |
|  | NTDORT01 | CHAR | 40 | City |
|  | NTDPOSTCODE | CHAR | 10 | Postal Code |
|  | NTDREGIO | CHAR | 3 | Region (State, Province, County) |
|  | NTSNAME | CHAR | 60 | NTS Name |
|  | NTSPHONE | CHAR | 20 | NTS Phone Number |
|  | NTSSTRAS | CHAR | 60 | Street and House Number |
|  | NTSLOCAT | CHAR | 40 | 2nd Address Line |
|  | NTSORT01 | CHAR | 40 | City |
|  | NTSPOSTCODE | CHAR | 10 | Postal Code |
|  | NTSREGIO | CHAR | 3 | Region (State, Province, County) |
|  | INSCOMPANY | CHAR | 30 | OLIMS - Insurer Name |
|  | INSNAME | CHAR | 60 | Insurer Contact Name |
|  | INSPHONE | CHAR | 20 | Insurer Phone Number |
|  | INSEMAIL | CHAR | 241 | Insurer Email |
|  | CLAIMSTATUS | CHAR | 60 | Claim Status |
|  | CLAIMAPPDATE | CHAR | 10 | Claim Approved Date |
|  | CLAIMNO | CHAR | 15 | Workcover Claim Number |
|  | REHABLOC | CHAR | 40 | Rehab Location Description |
|  | REHABBEGDA | CHAR | 10 | Rehabilitation Start Date |
|  | REHABENDDA | CHAR | 10 | Rehabilitation End Date |
|  | REHABREVIEWDATE | CHAR | 10 | Rehabilitation Review Date |
|  | WCMCDATE | CHAR | 10 | OLIMS - Date of the Medical Certificate |
|  | WCMCNAME | CHAR | 60 | WCMC Health Professional Name |
|  | WCMCPHONE | CHAR | 20 | WCMC Health Professional Phone |
|  | WCMCDIAG | CHAR | 600 | Medical Certificate Diagnosis |
|  | WCMCSTATUS | CHAR | 60 | Medical Certificate Work Status |
|  | WCMCCAP101 | CHAR | 80 | WCMC Hours |
|  | WCMCCAP201 | CHAR | 80 | WCMC Hours |
|  | WCMCMEDREST01 | CHAR | 80 | WCMC Duties Restrictions |
|  | WCMCMEDREST02 | CHAR | 80 | WCMC Duties Restrictions |
|  | WCMCMEDREST03 | CHAR | 80 | WCMC Duties Restrictions |
|  | WCMCMEDREST04 | CHAR | 80 | WCMC Duties Restrictions |
|  | WCMCMEDREST05 | CHAR | 80 | WCMC Duties Restrictions |
|  | WCMCMEDREST06 | CHAR | 80 | WCMC Duties Restrictions |
|  | WCMCMEDOTH01 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH02 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH03 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH04 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH05 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH06 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH07 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH08 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH09 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | WCMCMEDOTH10 | CHAR | 132 | WCMC Medical Restrictions Other |
|  | RTWPPLANNO | CHAR | 3 | OLIMS - R@WP Plan Number |
|  | RTWPGOAL | CHAR | 132 | R@WP Goal Description |
|  | RTWPGOALDATE | CHAR | 10 | R@WP Goal Date |
|  | RTWPREVDATE | CHAR | 10 | R@WP Review Date |
|  | RTWPDATE01 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION01 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS01 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET201 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT01 | CHAR | 40 | City |
|  | RTWPDUTIES01 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP101 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP201 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE02 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION02 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS02 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET202 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT02 | CHAR | 40 | City |
|  | RTWPDUTIES02 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP102 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP202 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE03 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION03 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS03 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET203 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT03 | CHAR | 40 | City |
|  | RTWPDUTIES03 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP103 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP203 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE04 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION04 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS04 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET204 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT04 | CHAR | 40 | City |
|  | RTWPDUTIES04 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP104 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP204 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE05 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION05 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS05 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET205 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT05 | CHAR | 40 | City |
|  | RTWPDUTIES05 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP105 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP205 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE06 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION06 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS06 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET206 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT06 | CHAR | 40 | City |
|  | RTWPDUTIES06 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP106 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP206 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE07 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION07 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS07 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET207 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT07 | CHAR | 40 | City |
|  | RTWPDUTIES07 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP107 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP207 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE08 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION08 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS08 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET208 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT08 | CHAR | 40 | City |
|  | RTWPDUTIES08 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP108 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP208 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE09 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION09 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS09 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET209 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT09 | CHAR | 40 | City |
|  | RTWPDUTIES09 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP109 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP209 | CHAR | 80 | R@WP Hours |
|  | RTWPDATE10 | CHAR | 30 | R@WP Date Range |
|  | RTWPLOCATION10 | CHAR | 40 | R@WP Location |
|  | RTWPLOCSTRAS10 | CHAR | 60 | Street and House Number |
|  | RTWPLOCSTREET210 | CHAR | 40 | 2nd Address Line |
|  | RTWPLOCORT10 | CHAR | 40 | City |
|  | RTWPDUTIES10 | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | RTWPCAP110 | CHAR | 80 | R@WP Hours |
|  | RTWPCAP210 | CHAR | 80 | R@WP Hours |
|  | RTWPDIAG | CHAR | 600 | R@WP Diagnosis |
|  | RTWPSUPNAME | CHAR | 40 | R@WP Supervisor Name |
|  | RTWPSUPRANK | CHAR | 30 | Rank |
|  | RTWPMEDREST01 | CHAR | 80 | R@WP Duties Restrictions |
|  | RTWPMEDREST02 | CHAR | 80 | R@WP Duties Restrictions |
|  | RTWPMEDREST03 | CHAR | 80 | R@WP Duties Restrictions |
|  | RTWPMEDREST04 | CHAR | 80 | R@WP Duties Restrictions |
|  | RTWPMEDREST05 | CHAR | 80 | R@WP Duties Restrictions |
|  | RTWPMEDREST06 | CHAR | 80 | R@WP Duties Restrictions |
|  | RTWPMEDOTH01 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH02 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH03 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH04 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH05 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH06 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH07 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH08 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH09 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPMEDOTH10 | CHAR | 132 | R@WP Medical Restrictions Other |
|  | RTWPADD01 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD02 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD03 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD04 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD05 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD06 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD07 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD08 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD09 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPADD10 | CHAR | 132 | R@WP Additional Restrictions |
|  | RTWPPLAN01 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN02 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN03 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN04 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN05 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN06 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN07 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN08 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN09 | CHAR | 132 | R@WP Management Plan |
|  | RTWPPLAN10 | CHAR | 132 | R@WP Management Plan |
|  | RTWPREF01 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF02 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF03 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF04 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF05 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF06 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF07 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF08 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF09 | CHAR | 132 | R@WP Management Plan Referral |
|  | RTWPREF10 | CHAR | 132 | R@WP Management Plan Referral |
|  | MAINNATURE | CHAR | 40 | Main Nature of Injury |
|  | BODYLINE01 | CHAR | 132 | Email Body Text |
|  | BODYLINE02 | CHAR | 132 | Email Body Text |
|  | BODYLINE03 | CHAR | 132 | Email Body Text |
|  | BODYLINE04 | CHAR | 132 | Email Body Text |
|  | BODYLINE05 | CHAR | 132 | Email Body Text |
|  | BODYLINE06 | CHAR | 132 | Email Body Text |
|  | BODYLINE07 | CHAR | 132 | Email Body Text |
|  | BODYLINE08 | CHAR | 132 | Email Body Text |
|  | BODYLINE09 | CHAR | 132 | Email Body Text |
|  | BODYLINE10 | CHAR | 132 | Email Body Text |
|  | BODYLINE11 | CHAR | 132 | Email Body Text |
|  | BODYLINE12 | CHAR | 132 | Email Body Text |
|  | BODYLINE13 | CHAR | 132 | Email Body Text |
|  | BODYLINE14 | CHAR | 132 | Email Body Text |
|  | BODYLINE15 | CHAR | 132 | Email Body Text |
|  | BODYLINE16 | CHAR | 132 | Email Body Text |
|  | BODYLINE17 | CHAR | 132 | Email Body Text |
|  | BODYLINE18 | CHAR | 132 | Email Body Text |
|  | BODYLINE19 | CHAR | 132 | Email Body Text |
|  | BODYLINE20 | CHAR | 132 | Email Body Text |
|  | IMEPPROVNAME | CHAR | 60 | OLIMS - Provider Consultant |
|  | IMEPDATE | CHAR | 10 | IMEP Appointment Date |
|  | IMEPTIME | CHAR | 5 | IMEP Appointment Time |
|  | IMEPSTRAS | CHAR | 60 | Street and House Number |
|  | IMEPLOCAT | CHAR | 40 | 2nd Address Line |
|  | IMEPORT01 | CHAR | 40 | City |
|  | IMEPPOSTCODE | CHAR | 10 | Postal Code |
|  | IMEPREGIO | CHAR | 3 | Region (State, Province, County) |
|  | IMEPPHONE | CHAR | 20 | Communication Number |
|  | IMEPTYPE | CHAR | 40 | IMEP Type |
|  | DEPMTGDT | CHAR | 10 | Deployment Meeting Date |
|  | DEPMTGTM | CHAR | 5 | Deployment Meeting Time |
|  | DEPPROPPOSNO01 | NUMC | 8 | Deployment Position |
|  | DEPPROPPOSDSC01 | CHAR | 40 | Deployment Position Description |
|  | DEPPROPORG01 | CHAR | 40 | Deployment Org Unit Name |
|  | DEPCASEOFF | NUMC | 8 | Deployment Case Officer |
|  | DEPCASEOFFNM | CHAR | 40 | Deployment Case Officer Name |
|  | DEPCASEOFFPHN | CHAR | 20 | Deployment Case Officer Phone No |
|  | DEPCASEOFFEML | CHAR | 241 | Deployment Case Officer Email Address |
|  | DEPCASEOFFFAX | CHAR | 20 | Deployment Case Officer Fax No |
|  | DEPCASEOFFMOB | CHAR | 20 | Deployment Case Officer Mobile No |
|  | DEPCASEOFFEN | CHAR | 20 | Deployment Case Officer Eaglenet |
|  | DEPCASEOFFSTRAS | CHAR | 60 | Street and House Number |
|  | DEPCASEOFFLOCAT | CHAR | 40 | 2nd Address Line |
|  | DEPCASEOFFORT01 | CHAR | 40 | City |
|  | DEPCASEOFFPCODE | CHAR | 10 | Postal Code |
|  | DEPCASEOFFREGIO | CHAR | 3 | Region (State, Province, County) |
|  | DEPACPTDPOS | NUMC | 8 | Deployment Accepted Position |
|  | DEPACPTDPOSNM | CHAR | 40 | Deployment Accepted Position Description |
|  | DEPACPTDORGNM | CHAR | 40 | Deployment Accepted Org Description |
|  | DEPPLACEMNTNM | CHAR | 40 | Deployment Placement Type Name |
|  | DEPREDADMNNM | CHAR | 20 | Deployment Reduction in Rank or Admin |
|  | DEPCASEREVDT | CHAR | 10 | OLIMS - Deployment 3 Month Case Review Date |
|  | DEPCASEREVTM | CHAR | 5 | OLIMS - Deployment 3 Month Case Review Time |
|  | DEPCASECORSNT | CHAR | 10 | OLIMS - Deployment  3Month Case Review Corr Sent Date |
|  | DEPREGNO | NUMC | 8 | Deployment Case Officer |
|  | DEPREGNAME | CHAR | 40 | Deployment Case Officer Name |
|  | DEPCLASSMSG | CHAR | 40 | Deployment Case Officer Name |
|  | MEETPERS01 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE01 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME01 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS02 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE02 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME02 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS03 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE03 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME03 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS04 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE04 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME04 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS05 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE05 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME05 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS06 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE06 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME06 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS07 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE07 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME07 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS08 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE08 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME08 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS09 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE09 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME09 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETPERS10 | CHAR | 60 | OLIMS: Meeting attendee name |
|  | MEETDATE10 | CHAR | 10 | OLIMS: Meeting attendee's action due date |
|  | MEETOUTCOME10 | CHAR | 128 | OLIMS - User action for meeting |
|  | MEETCOMPDATE01 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE02 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE03 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE04 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE05 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE06 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE07 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE08 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE09 | CHAR | 10 | Character Field Length = 10 |
|  | MEETCOMPDATE10 | CHAR | 10 | Character Field Length = 10 |
|  | MINUTES01 | CHAR | 132 | Text (length 132) |
|  | MINUTES02 | CHAR | 132 | Text (length 132) |
|  | MINUTES03 | CHAR | 132 | Text (length 132) |
|  | MINUTES04 | CHAR | 132 | Text (length 132) |
|  | MINUTES05 | CHAR | 132 | Text (length 132) |
|  | MINUTES06 | CHAR | 132 | Text (length 132) |
|  | MINUTES07 | CHAR | 132 | Text (length 132) |
|  | MINUTES08 | CHAR | 132 | Text (length 132) |
|  | MINUTES09 | CHAR | 132 | Text (length 132) |
|  | MINUTES10 | CHAR | 132 | Text (length 132) |
|  | MEETINGDATE | CHAR | 10 | Character Field Length = 10 |
|  | MEETINGTIME | CHAR | 10 | Character Field Length = 10 |
|  | MEETINGTIMEEND | CHAR | 10 | Character Field Length = 10 |
|  | MEETGOAL | CHAR | 128 | OLIMS - Meeting Goal |
|  | MEETLOCATION | CHAR | 60 | OLIMS Meeting Location |
|  | MEETDESCRIPTION | CHAR | 80 | OLIMS Meeting Description |
|  | MEETATTENDEES1 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES2 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES3 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES4 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES5 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES6 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES7 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES8 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES9 | CHAR | 132 | Text (length 132) |
|  | MEETATTENDEES10 | CHAR | 132 | Text (length 132) |
|  | MEETAGND01 | CHAR | 132 | Text (length 132) |
|  | MEETAGND02 | CHAR | 132 | Text (length 132) |
|  | MEETAGND03 | CHAR | 132 | Text (length 132) |
|  | MEETAGND04 | CHAR | 132 | Text (length 132) |
|  | MEETAGND05 | CHAR | 132 | Text (length 132) |
|  | MEETAGND06 | CHAR | 132 | Text (length 132) |
|  | MEETAGND07 | CHAR | 132 | Text (length 132) |
|  | MEETAGND08 | CHAR | 132 | Text (length 132) |
|  | MEETAGND09 | CHAR | 132 | Text (length 132) |
|  | MEETAGND10 | CHAR | 132 | Text (length 132) |
|  | CSANAME | CHAR | 40 | FTCO Name |
|  | CSAEMAIL | CHAR | 241 | FTCO Email |
|  | CSAFAX | CHAR | 20 | FTCO Fax |
|  | CSAPHONE | CHAR | 20 | FTCO Phone |
|  | CSAEAGLE | CHAR | 20 | FTCO Eaglenet Phone Number |
|  | CSAMOBILE | CHAR | 20 | FTCO Mobile Number |
|  | CSASTRAS | CHAR | 60 | Street and House Number |
|  | CSALOCAT | CHAR | 40 | 2nd Address Line |
|  | CSAORT01 | CHAR | 40 | City |
|  | CSAPOSTCODE | CHAR | 10 | Postal Code |
|  | CSAREGIO | CHAR | 3 | Region (State, Province, County) |
|  | SCUNAME | CHAR | 40 | FTCO Name |
|  | SCUEMAIL | CHAR | 241 | FTCO Email |
|  | SCUFAX | CHAR | 20 | FTCO Fax |
|  | SCUPHONE | CHAR | 20 | FTCO Phone |
|  | SCUEAGLE | CHAR | 20 | FTCO Eaglenet Phone Number |
|  | SCUMOBILE | CHAR | 20 | FTCO Mobile Number |
|  | SCUSTRAS | CHAR | 60 | Street and House Number |
|  | SCULOCAT | CHAR | 40 | 2nd Address Line |
|  | SCUORT01 | CHAR | 40 | City |
|  | SCUPOSTCODE | CHAR | 10 | Postal Code |
|  | SCUREGIO | CHAR | 3 | Region (State, Province, County) |
|  | MDONAME | CHAR | 40 | FTCO Name |
|  | MDOEMAIL | CHAR | 241 | FTCO Email |
|  | MDOFAX | CHAR | 20 | FTCO Fax |
|  | MDOPHONE | CHAR | 20 | FTCO Phone |
|  | MDOEAGLE | CHAR | 20 | FTCO Eaglenet Phone Number |
|  | MDOMOBILE | CHAR | 20 | FTCO Mobile Number |
|  | MDOSTRAS | CHAR | 60 | Street and House Number |
|  | MDOLOCAT | CHAR | 40 | 2nd Address Line |
|  | MDOORT01 | CHAR | 40 | City |
|  | MDOPOSTCODE | CHAR | 10 | Postal Code |
|  | MDOREGIO | CHAR | 3 | Region (State, Province, County) |
|  | MDLDS | CHAR | 10 | Nominated Last Day of Service |
|  | MDPSACDATE | CHAR | 10 | PSAC Date |
|  | MDPSACINFIRMITY01 | CHAR | 80 | OLIMS - SCU MD PSAC Infirmity |
|  | MDPSACCLAIMSTAT01 | CHAR | 60 | Claim Status |
|  | MDPSACINFIRMITY02 | CHAR | 80 | OLIMS - SCU MD PSAC Infirmity |
|  | MDPSACCLAIMSTAT02 | CHAR | 60 | Claim Status |
|  | MDPSACINFIRMITY03 | CHAR | 80 | OLIMS - SCU MD PSAC Infirmity |
|  | MDPSACCLAIMSTAT03 | CHAR | 60 | Claim Status |
|  | MDPSACINFIRMITY04 | CHAR | 80 | OLIMS - SCU MD PSAC Infirmity |
|  | MDPSACCLAIMSTAT04 | CHAR | 60 | Claim Status |
|  | MDPSACINFIRMITY05 | CHAR | 80 | OLIMS - SCU MD PSAC Infirmity |
|  | MDPSACCLAIMSTAT05 | CHAR | 60 | Claim Status |
|  | MDINJURYDATE01 | CHAR | 10 | Date of Incident |
|  | MDINJURYDATE02 | CHAR | 10 | Date of Incident |
|  | MDINJURYDATE03 | CHAR | 10 | Date of Incident |
|  | MDINJURYDATE04 | CHAR | 10 | Date of Incident |
|  | MDINJURYDATE05 | CHAR | 10 | Date of Incident |
|  | MAININJURY | CHAR | 80 | Main Injury |
|  | BPNUMBER | CHAR | 12 | Unique Blue Portal number |

### ZIMLTRVAR2

- File: `ZIMLTRVAR2_fields.json`
- Object type: `INTTAB`
- Field count: **224**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | PERNR | CHAR | 8 | Employee Number |
|  | INCIDENT | CHAR | 10 | Incident Number |
|  | NACHN | CHAR | 40 | Last Name |
|  | VORNA | CHAR | 40 | First Name |
|  | ENAME | CHAR | 40 | Formatted Name of Injured Worker |
|  | TITLE | CHAR | 5 | Form of Address Text |
|  | GENDTITLE | CHAR | 3 | Gender Title |
|  | GENDHE | CHAR | 3 | Gender he/she |
|  | GENDHIS | CHAR | 3 | Gender his/her |
|  | GENDHECAP | CHAR | 3 | Gender he/she |
|  | GENDHISCAP | CHAR | 3 | Gender his/her |
|  | BIRTHDATE | CHAR | 10 | Date of Birth |
|  | RANK | CHAR | 30 | Rank |
|  | PLANS | NUMC | 8 | Position |
|  | POSNDESC | CHAR | 40 | Position Description |
|  | POSNSTART | CHAR | 10 | Date Commenced in Substantive Position |
|  | STRAS | CHAR | 60 | Street and House Number |
|  | LOCAT | CHAR | 40 | 2nd Address Line |
|  | ORT01 | CHAR | 40 | City |
|  | POSTCODE | CHAR | 10 | Postal Code |
|  | REGIO | CHAR | 3 | Region (State, Province, County) |
|  | WORKPHONE | CHAR | 20 | Employee Work Phone Number |
|  | HOMEPHONE | CHAR | 20 | Employee Home Phone Number |
|  | ENETPHONE | CHAR | 20 | Employee Eaglenet Phone Number |
|  | EMPMOBILE | CHAR | 20 | Employee Mobile Number |
|  | EMPEMAIL | CHAR | 241 | Employee Email |
|  | EMPWORKEMAIL | CHAR | 241 | Employee Work Email |
|  | EMPLACDESC | CHAR | 40 | Employee PAC/PD/Section Description |
|  | EMPLACSTRAS | CHAR | 60 | Street and House Number |
|  | EMPLACSTREET2 | CHAR | 40 | 2nd Address Line |
|  | EMPLACORT01 | CHAR | 40 | City |
|  | EMPLACPOSTCODE | CHAR | 10 | Postal Code |
|  | EMPREGDESC | CHAR | 40 | Employee Region Description |
|  | EMPREGSTRAS | CHAR | 60 | Street and House Number |
|  | EMPREGSTREET2 | CHAR | 40 | 2nd Address Line |
|  | EMPREGORT01 | CHAR | 40 | City |
|  | EMPREGPOSTCODE | CHAR | 10 | Postal Code |
|  | EMPREGPHONE | CHAR | 20 | Injured Worker Region Phone |
|  | EMPSTATDESC | CHAR | 40 | Employee Status Description |
|  | INJLOCATION | CHAR | 80 | OLIMS - Location of Injury |
|  | ATTESTATION | CHAR | 10 | Attestation Date |
|  | ORGEH | NUMC | 8 | Organizational Unit |
|  | ORGTXT | CHAR | 40 | Org Unit Name |
|  | SYSNAME | CHAR | 30 | OLIMS - System Name |
|  | IMANAME | CHAR | 40 | IMA Name |
|  | IMAREGDESC | CHAR | 40 | IMA Region Description |
|  | IMAEMAIL | CHAR | 241 | IMA Email |
|  | IMAFAX | CHAR | 20 | IMA Fax |
|  | IMAPHONE | CHAR | 20 | IMA Phone |
|  | IMAEAGLE | CHAR | 20 | IMA Eaglenet Phone Number |
|  | IMAMOBILE | CHAR | 20 | IMA Mobile Number |
|  | IMASTRAS | CHAR | 60 | Street and House Number |
|  | IMALOCAT | CHAR | 40 | 2nd Address Line |
|  | IMAORT01 | CHAR | 40 | City |
|  | IMAPOSTCODE | CHAR | 10 | Postal Code |
|  | IMAREGIO | CHAR | 3 | Region (State, Province, County) |
|  | IMAPOSNDESC | CHAR | 40 | Position Description |
|  | SIMANAME | CHAR | 40 | Senior IMA Name |
|  | SIMAEMAIL | CHAR | 241 | Senior IMA Email |
|  | SIMAFAX | CHAR | 20 | Senior IMA Fax |
|  | SIMAPHONE | CHAR | 20 | Senior IMA Phone |
|  | SIMAEAGLE | CHAR | 20 | SIMA Eaglenet Phone Number |
|  | SIMAMOBILE | CHAR | 20 | SIMA Mobile Number |
|  | SIMASTRAS | CHAR | 60 | Street and House Number |
|  | SIMALOCAT | CHAR | 40 | 2nd Address Line |
|  | SIMAORT01 | CHAR | 40 | City |
|  | SIMAPOSTCODE | CHAR | 10 | Postal Code |
|  | SIMAREGIO | CHAR | 3 | Region (State, Province, County) |
|  | MGRNAME | CHAR | 40 | Manager/Commander's Name |
|  | MGREMAIL | CHAR | 241 | Manager/Commander Email |
|  | MGRFAX | CHAR | 20 | Manager/Commander Fax |
|  | MGRPHONE | CHAR | 20 | Manager/Commander Phone |
|  | MGREAGLE | CHAR | 20 | Manager/Commander Eaglenet Phone Number |
|  | MGRMOBILE | CHAR | 20 | Manager/Commander Mobile Number |
|  | MGRSTRAS | CHAR | 60 | Street and House Number |
|  | MGRLOCAT | CHAR | 40 | 2nd Address Line |
|  | MGRORT01 | CHAR | 40 | City |
|  | MGRPOSTCODE | CHAR | 10 | Postal Code |
|  | MGRREGIO | CHAR | 3 | Region (State, Province, County) |
|  | MGRRANK | CHAR | 30 | Rank |
|  | MGRLACDESC | CHAR | 40 | Manager/Commander PAC/PD/Section Description |
|  | MGRREGDESC | CHAR | 40 | Manager/Commander Region Description |
|  | SUPNAME | CHAR | 40 | Supervisor Name |
|  | SUPEMAIL | CHAR | 241 | Supervisor Email |
|  | SUPFAX | CHAR | 20 | Supervisor Fax |
|  | SUPPHONE | CHAR | 20 | Supervisor Phone |
|  | SUPEAGLE | CHAR | 20 | Supervisor Eaglenet Phone Number |
|  | SUPMOBILE | CHAR | 20 | Supervisor Mobile Number |
|  | SUPSTRAS | CHAR | 60 | Street and House Number |
|  | SUPLOCAT | CHAR | 40 | 2nd Address Line |
|  | SUPORT01 | CHAR | 40 | City |
|  | SUPPOSTCODE | CHAR | 10 | Postal Code |
|  | SUPREGIO | CHAR | 3 | Region (State, Province, County) |
|  | SUPRANK | CHAR | 30 | Rank |
|  | CURDATE | CHAR | 10 | Current Date |
|  | DATEINCIDENT | CHAR | 10 | Date of Incident |
|  | DATEREPORTED | CHAR | 10 | Date the Incident was Reported |
|  | LASTDAYDUTY | CHAR | 10 | Last Day of Duty |
|  | CLOSEDESC | CHAR | 60 | Closure Description |
|  | NTDNAME | CHAR | 60 | NTD Name |
|  | NTDPHONE | CHAR | 20 | NTD Phone Number |
|  | NTDSTRAS | CHAR | 60 | Street and House Number |
|  | NTDLOCAT | CHAR | 40 | 2nd Address Line |
|  | NTDORT01 | CHAR | 40 | City |
|  | NTDPOSTCODE | CHAR | 10 | Postal Code |
|  | NTDREGIO | CHAR | 3 | Region (State, Province, County) |
|  | NTSNAME | CHAR | 60 | NTS Name |
|  | NTSPHONE | CHAR | 20 | NTS Phone Number |
|  | NTSSTRAS | CHAR | 60 | Street and House Number |
|  | NTSLOCAT | CHAR | 40 | 2nd Address Line |
|  | NTSORT01 | CHAR | 40 | City |
|  | NTSPOSTCODE | CHAR | 10 | Postal Code |
|  | NTSREGIO | CHAR | 3 | Region (State, Province, County) |
|  | INSCOMPANY | CHAR | 30 | OLIMS - Insurer Name |
|  | INSNAME | CHAR | 60 | Insurer Contact Name |
|  | INSPHONE | CHAR | 20 | Insurer Phone Number |
|  | INSEMAIL | CHAR | 241 | Insurer Email |
|  | CLAIMSTATUS | CHAR | 60 | Claim Status |
|  | CLAIMAPPDATE | CHAR | 10 | Claim Approved Date |
|  | CLAIMNO | CHAR | 15 | Workcover Claim Number |
|  | REHABLOC | CHAR | 40 | Rehab Location Description |
|  | REHABBEGDA | CHAR | 10 | Rehabilitation Start Date |
|  | REHABENDDA | CHAR | 10 | Rehabilitation End Date |
|  | REHABREVIEWDATE | CHAR | 10 | Rehabilitation Review Date |
|  | WCMCDATE | CHAR | 10 | OLIMS - Date of the Medical Certificate |
|  | WCMCNAME | CHAR | 60 | WCMC Health Professional Name |
|  | WCMCPHONE | CHAR | 20 | WCMC Health Professional Phone |
|  | WCMCDIAG | CHAR | 600 | Medical Certificate Diagnosis |
|  | WCMCSTATUS | CHAR | 60 | Medical Certificate Work Status |
|  | WCMCCAP101 | CHAR | 80 | WCMC Hours |
|  | WCMCCAP201 | CHAR | 80 | WCMC Hours |
|  | MAINNATURE | CHAR | 40 | Main Nature of Injury |
|  | BODYLINE01 | CHAR | 132 | Email Body Text |
|  | BODYLINE02 | CHAR | 132 | Email Body Text |
|  | BODYLINE03 | CHAR | 132 | Email Body Text |
|  | BODYLINE04 | CHAR | 132 | Email Body Text |
|  | BODYLINE05 | CHAR | 132 | Email Body Text |
|  | BODYLINE06 | CHAR | 132 | Email Body Text |
|  | BODYLINE07 | CHAR | 132 | Email Body Text |
|  | BODYLINE08 | CHAR | 132 | Email Body Text |
|  | BODYLINE09 | CHAR | 132 | Email Body Text |
|  | BODYLINE10 | CHAR | 132 | Email Body Text |
|  | BODYLINE11 | CHAR | 132 | Email Body Text |
|  | BODYLINE12 | CHAR | 132 | Email Body Text |
|  | BODYLINE13 | CHAR | 132 | Email Body Text |
|  | BODYLINE14 | CHAR | 132 | Email Body Text |
|  | BODYLINE15 | CHAR | 132 | Email Body Text |
|  | BODYLINE16 | CHAR | 132 | Email Body Text |
|  | BODYLINE17 | CHAR | 132 | Email Body Text |
|  | BODYLINE18 | CHAR | 132 | Email Body Text |
|  | BODYLINE19 | CHAR | 132 | Email Body Text |
|  | BODYLINE20 | CHAR | 132 | Email Body Text |
|  | IMEPPROVNAME | CHAR | 60 | OLIMS - Provider Consultant |
|  | IMEPDATE | CHAR | 10 | IMEP Appointment Date |
|  | IMEPTIME | CHAR | 5 | IMEP Appointment Time |
|  | IMEPSTRAS | CHAR | 60 | Street and House Number |
|  | IMEPLOCAT | CHAR | 40 | 2nd Address Line |
|  | IMEPORT01 | CHAR | 40 | City |
|  | IMEPPOSTCODE | CHAR | 10 | Postal Code |
|  | IMEPREGIO | CHAR | 3 | Region (State, Province, County) |
|  | IMEPPHONE | CHAR | 20 | Communication Number |
|  | IMEPTYPE | CHAR | 40 | IMEP Type |
|  | WCANAME | CHAR | 40 | Workers Compensation Advisor Name |
|  | WCAEMAIL | CHAR | 241 | Workers Compensation Advisor Email |
|  | WCAFAX | CHAR | 20 | Workers Compensation Advisor Fax Number |
|  | WCAPHONE | CHAR | 20 | Workers Compensation Advisor Phone Number |
|  | WCAEAGLE | CHAR | 20 | Workers Comp Advisor Eaglenet Phone Number |
|  | WCAMOBILE | CHAR | 20 | Workers Compensation Advisor Mobile Number |
|  | WCASTRAS | CHAR | 60 | Street and House Number |
|  | WCALOCAT | CHAR | 40 | 2nd Address Line |
|  | WCAORT01 | CHAR | 40 | City |
|  | WCAPOSTCODE | CHAR | 10 | Postal Code |
|  | WCAREGIO | CHAR | 3 | Region (State, Province, County) |
|  | WCAPOSNDESC | CHAR | 40 | Position Description |
|  | IPANAME | CHAR | 40 | Income Protection Advisor Name |
|  | IPAEMAIL | CHAR | 241 | Income Protection Advisor Email |
|  | IPAFAX | CHAR | 20 | Income Protection Advisor Fax Number |
|  | IPAPHONE | CHAR | 20 | Income Protection Advisor Phone Number |
|  | IPAEAGLE | CHAR | 20 | Income Protection Advisor Eaglenet Phone Number |
|  | IPAMOBILE | CHAR | 20 | Income Protection Advisor Mobile Number |
|  | IPASTRAS | CHAR | 60 | Street and House Number |
|  | IPALOCAT | CHAR | 40 | 2nd Address Line |
|  | IPAORT01 | CHAR | 40 | City |
|  | IPAPOSTCODE | CHAR | 10 | Postal Code |
|  | IPAREGIO | CHAR | 3 | Region (State, Province, County) |
|  | IPAPOSNDESC | CHAR | 40 | Position Description |
|  | SIANAME | CHAR | 40 | Self Insurance Advisor Name |
|  | SIAEMAIL | CHAR | 241 | Self Insured Advisor Email |
|  | SIAFAX | CHAR | 20 | Self Insured Advisor Fax Number |
|  | SIAPHONE | CHAR | 20 | Self Insured Advisor Phone Number |
|  | SIAEAGLE | CHAR | 20 | Self Insured Advisor Eaglenet Phone Number |
|  | SIAMOBILE | CHAR | 20 | Self Insured Advisor Mobile Number |
|  | SIASTRAS | CHAR | 60 | Street and House Number |
|  | SIALOCAT | CHAR | 40 | 2nd Address Line |
|  | SIAORT01 | CHAR | 40 | City |
|  | SIAPOSTCODE | CHAR | 10 | Postal Code |
|  | SIAREGIO | CHAR | 3 | Region (State, Province, County) |
|  | SIAPOSNDESC | CHAR | 40 | Position Description |
|  | GAONAME | CHAR | 40 | GAO Name |
|  | GAOEMAIL | CHAR | 241 | GAO Email |
|  | GAOFAX | CHAR | 20 | GAO Fax Number |
|  | GAOPHONE | CHAR | 20 | GAO Phone Number |
|  | GAOEAGLE | CHAR | 20 | GAO Eaglenet Phone Number |
|  | GAOMOBILE | CHAR | 20 | GAO Mobile Number |
|  | GAOSTRAS | CHAR | 60 | Street and House Number |
|  | GAOLOCAT | CHAR | 40 | 2nd Address Line |
|  | GAOORT01 | CHAR | 40 | City |
|  | GAOPOSTCODE | CHAR | 10 | Postal Code |
|  | GAOREGIO | CHAR | 3 | Region (State, Province, County) |
|  | GAOPOSNDESC | CHAR | 40 | Position Description |
|  | IPCLAIMNO | CHAR | 15 | OLIMS - Income Protection Claim Number |
|  | SICLAIMNO | CHAR | 15 | OLIMS - Self Insured Claim Number |
|  | WCENDDATE | CHAR | 10 | Workers Compensation End Date |
|  | IPENDDATE | CHAR | 10 | Income Protection End Date |
|  | WEEK38DATE | CHAR | 10 | Week 38 Date |
|  | MEDCERTENDDATE | CHAR | 10 | Medical Certificate End Date |
|  | STATRATE | CHAR | 11 | Statutory Entitlement Amount |
|  | DISDATE | CHAR | 10 | Date of Disablement |
|  | DAY270 | CHAR | 10 | 270 Date |
|  | STARTDATE1 | CHAR | 10 | The Day Before IP Commences |
|  | TOPUPEND | CHAR | 10 | OLIMS - IP Topup End Date |
|  | PBRIMEMNO | CHAR | 20 | Superannuation Fund Membership Number Australia |
|  | DEPENDENTS | CHAR | 5 | OLIMS - WC Dependents |
|  | MAININJURY | CHAR | 80 | Main Injury |

### ZIM_ACTION

- File: `ZIM_ACTION_fields.json`
- Object type: `TRANSP`
- Field count: **4**
- Primary key: **MANDT, CONTACT_TYPE, CONT_ACT_CODE**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | CONTACT_TYPE | CHAR | 1 | OLIMS - Contact Type |
| Y | CONT_ACT_CODE | NUMC | 3 | OLIMS - Contact Action Code |
|  | CONT_ACT_DESC | CHAR | 132 | OLIMS - Contact Action Description |

### ZIM_ADDRESS

- File: `ZIM_ADDRESS_fields.json`
- Object type: `TRANSP`
- Field count: **18**
- Primary key: **MANDT, PERNR**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
|  | STRAS | CHAR | 60 | Street and House Number |
|  | LOCAT | CHAR | 40 | 2nd Address Line |
|  | ORT01 | CHAR | 40 | City |
|  | POSTCODE | CHAR | 10 | Postal Code |
|  | REGIO | CHAR | 3 | Region (State, Province, County) |
|  | HOME_PHONE | CHAR | 20 | Communication Number |
|  | WORK_PHONE | CHAR | 20 | Communication Number |
|  | MOBILE | CHAR | 20 | Communication Number |
|  | EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | LAND1 | CHAR | 3 | Country Key |
|  | ALTERNATE_CONTACT | CHAR | 40 | Object Name |
|  | ALTERNATE_PHONE | CHAR | 20 | Communication Number |
|  | NO_CORRO | CHAR | 1 | OLIMS - No Correspondence |
|  | CONTACT_DETAILS1 | CHAR | 132 | Character with String Length 132 and Lowercase |
|  | CONTACT_DETAILS2 | CHAR | 132 | Character with String Length 132 and Lowercase |
|  | WORK_EMAIL | CHAR | 241 | Communication: Long Identification/Number |

### ZIM_ADDRESS_LOG

- File: `ZIM_ADDRESS_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **21**
- Primary key: **MANDT, PERNR, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | STRAS | CHAR | 60 | Street and House Number |
|  | LOCAT | CHAR | 40 | 2nd Address Line |
|  | ORT01 | CHAR | 40 | City |
|  | POSTCODE | CHAR | 10 | Postal Code |
|  | REGIO | CHAR | 3 | Region (State, Province, County) |
|  | HOME_PHONE | CHAR | 20 | Communication Number |
|  | WORK_PHONE | CHAR | 20 | Communication Number |
|  | MOBILE | CHAR | 20 | Communication Number |
|  | EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | LAND1 | CHAR | 3 | Country Key |
|  | ALTERNATE_CONTACT | CHAR | 40 | Object Name |
|  | ALTERNATE_PHONE | CHAR | 20 | Communication Number |
|  | NO_CORRO | CHAR | 1 | OLIMS - No Correspondence |
|  | CONTACT_DETAILS1 | CHAR | 132 | Character with String Length 132 and Lowercase |
|  | CONTACT_DETAILS2 | CHAR | 132 | Character with String Length 132 and Lowercase |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_ADD_FILE

- File: `ZIM_ADD_FILE_fields.json`
- Object type: `TRANSP`
- Field count: **5**
- Primary key: **MANDT, CORR_CODE, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | CORR_CODE | CHAR | 4 | OLIMS - Correspondence Code |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | DOC_TITLE | CHAR | 40 | Object Name |
|  | DOC_LINK | STRG |  | OLIMS - Document Link |

### ZIM_ADVISOR

- File: `ZIM_ADVISOR_fields.json`
- Object type: `TRANSP`
- Field count: **4**
- Primary key: **MANDT, IMA**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | IMA | NUMC | 8 | OLIMS - Injury Management Advisor |
|  | ROLE | CHAR | 1 | OLIMS - Injury Management Role |
|  | SIMA | NUMC | 8 | OLIMS - Injury Management Advisor |

### ZIM_AGENDA

- File: `ZIM_AGENDA_fields.json`
- Object type: `TRANSP`
- Field count: **4**
- Primary key: **MANDT, MEET_TYPE, ITEM_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
| Y | ITEM_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | AGENDA_LINE | CHAR | 132 | Text (length 132) |

### ZIM_BEN

- File: `ZIM_BEN_fields.json`
- Object type: `TRANSP`
- Field count: **6**
- Primary key: **MANDT, AGE, BEGDA, ENDDA**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | AGE | NUMC | 2 | OLIMS - MD Benefit Age |
| Y | BEGDA | DATS | 8 | Start Date |
| Y | ENDDA | DATS | 8 | End Date |
|  | BENEFIT_A | DEC | 4 | OLIMS - MD Benefit A (Death & TPI) |
|  | BENEFIT_B | DEC | 4 | OLIMS - MD Benefit B (On Duty Partial and Permanent) |

### ZIM_CAT

- File: `ZIM_CAT_fields.json`
- Object type: `TRANSP`
- Field count: **4**
- Primary key: **MANDT, LTR_CATEGORY, USER_GROUP**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | LTR_CATEGORY | CHAR | 2 | OLIMS - Document Category |
| Y | USER_GROUP | CHAR | 1 | OLIMS - User Access Category |
|  | DOCUMENT_ACCESS | CHAR | 1 | OLIMS - Access Type |

### ZIM_CATEGORY_RANGE

- File: `ZIM_CATEGORY_RANGE_fields.json`
- Object type: `INTTAB`
- Field count: **4**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | SIGN | CHAR | 1 | Single-Character Indicator |
|  | OPTION | CHAR | 2 | Version Number Component |
|  | LOW | CHAR | 2 | OLIMS - Document Category |
|  | HIGH | CHAR | 2 | OLIMS - Document Category |

### ZIM_CM_CAT

- File: `ZIM_CM_CAT_fields.json`
- Object type: `TRANSP`
- Field count: **7**
- Primary key: **MANDT, LTR_CATEGORY**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | LTR_CATEGORY | CHAR | 2 | OLIMS - Document Category |
|  | CAT_USAGE | CHAR | 1 | OLIMS - Document Category Usage |
|  | IM_NOTES | CHAR | 1 | OLIMS - Update Notes |
|  | WC_NOTES | CHAR | 1 | OLIMS - Update Notes |
|  | IP_NOTES | CHAR | 1 | OLIMS - Update Notes |
|  | SI_NOTES | CHAR | 1 | OLIMS - Update Notes |

### ZIM_CODE_SECTION

- File: `ZIM_CODE_SECTION_fields.json`
- Object type: `TRANSP`
- Field count: **4**
- Primary key: **MANDT, RULE_ZWC1**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | RULE_ZWC1 | CHAR | 4 | Rule ZWC1output to 9WCO RTE |
|  | WC_SECTION | CHAR | 2 | Section |
|  | WC_SECTION_DESC | CHAR | 80 | Section Description |

### ZIM_CORR_DETAIL

- File: `ZIM_CORR_DETAIL_fields.json`
- Object type: `INTTAB`
- Field count: **21**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | PERNR | NUMC | 8 | Personnel Number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | DIST_METH | CHAR | 1 | Distribution Method |
|  | LTR_CATEGORY | CHAR | 2 | OLIMS - Document Category |
|  | CORR_CODE | CHAR | 4 | OLIMS - Correspondence Code |
|  | DOC_UNIQUE | CHAR | 12 | OLIMS - Unique Code for Multiple Correspondence |
|  | EMAIL_BODY | CHAR | 70 | Letter Code |
|  | EMAIL_ATT | CHAR | 70 | Letter Code |
|  | ADD_FILE | CHAR | 100 | Email Attachment |
|  | BODY_STR | STRG |  | String |
|  | ATT_STR | RSTR |  | XString |
|  | ADD_STR | RSTR |  | XString |
|  | ATT_TYPE | CHAR | 5 | File Type |
|  | BODY_DOC_ID | CHAR | 40 | SAP ArchiveLink: Document ID |
|  | ATT_DOC_ID | CHAR | 40 | SAP ArchiveLink: Document ID |
|  | ADD_DOC_ID | CHAR | 40 | SAP ArchiveLink: Document ID |
|  | USER_CAT | CHAR | 1 | OLIMS - User Category |
|  | USER_DESC | CHAR | 40 | Text, 40 Characters Long |
|  | USER_CODE | NUMC | 8 | Personnel Number |
|  | USER_NAME | CHAR | 60 | User Name |
|  | EMAIL | CHAR | 241 | Communication: Long Identification/Number |

### ZIM_DEPEND

- File: `ZIM_DEPEND_fields.json`
- Object type: `TRANSP`
- Field count: **10**
- Primary key: **MANDT, PERNR, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | STAT_FROM_DATE | DATS | 8 | OLIMS - Statutory Dependent Commencement Date |
|  | STAT_TO_DATE | DATS | 8 | OLIMS - Statutory Dependent End Date |
|  | DEPENDENT_TYPE | CHAR | 1 | OLIMS - Dependent Type |
|  | DEP_NAME | CHAR | 60 | OLIMS - Dependent Name |
|  | DEP_FROM_DATE | DATS | 8 | OLIMS - Dependent Commencement Date |
|  | DEP_TO_DATE | DATS | 8 | OLIMS - Dependent End Date |
|  | DEPEND_SENT_EML | DATS | 8 | OLIMS - Date Dependent Stat Dec Sent to EML |

### ZIM_DEPEND_LOG

- File: `ZIM_DEPEND_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **14**
- Primary key: **MANDT, PERNR, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | STAT_FROM_DATE | DATS | 8 | OLIMS - Statutory Dependent Commencement Date |
|  | STAT_TO_DATE | DATS | 8 | OLIMS - Statutory Dependent End Date |
|  | DEPENDENT_TYPE | CHAR | 1 | OLIMS - Dependent Type |
|  | DEP_NAME | CHAR | 60 | OLIMS - Dependent Name |
|  | DEP_FROM_DATE | DATS | 8 | OLIMS - Dependent Commencement Date |
|  | DEP_TO_DATE | DATS | 8 | OLIMS - Dependent End Date |
|  | DEPEND_SENT_EML | DATS | 8 | OLIMS - Date Dependent Stat Dec Sent to EML |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_EMAIL_DETAIL

- File: `ZIM_EMAIL_DETAIL_fields.json`
- Object type: `INTTAB`
- Field count: **11**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | PERNR | NUMC | 8 | Personnel Number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | DIST_METH | CHAR | 1 | Distribution Method |
|  | EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | EMAIL_BODY | CHAR | 70 | Letter Code |
|  | EMAIL_ATT | CHAR | 70 | Letter Code |
|  | ADD_FILE | CHAR | 100 | Email Attachment |
|  | BODY_STR | STRG |  | String |
|  | ATT_STR | RSTR |  | XString |
|  | ADD_STR | RSTR |  | XString |
|  | ATT_TYPE | CHAR | 5 | File Type |

### ZIM_EPB

- File: `ZIM_EPB_fields.json`
- Object type: `TRANSP`
- Field count: **7**
- Primary key: **MANDT, BUCKET, VALIDFROM**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | BUCKET | CHAR | 1 | Entitlement Period Bucket |
| Y | VALIDFROM | DATS | 8 | Valid from date |
|  | VALIDTO | DATS | 8 | Valid to date |
|  | SEQ | NUMC | 2 | Entitlement Period Bucket Sequence |
|  | NOM_WEEKS_TOT | NUMC | 4 | Entitlement Period Bucket Total Nominal Weeks |
|  | AUTO_CLOSE | CHAR | 1 | Entitlement Period Bucket Automatic Close |

### ZIM_EPBT

- File: `ZIM_EPBT_fields.json`
- Object type: `TRANSP`
- Field count: **4**
- Primary key: **MANDT, LANGU, BUCKET**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | LANGU | LANG | 1 | Language Key |
| Y | BUCKET | CHAR | 1 | Entitlement Period Bucket |
|  | TEXT | CHAR | 25 | Entitlement Period Bucket Text |

### ZIM_EPB_WEEKS_DEFN

- File: `ZIM_EPB_WEEKS_DEFN_fields.json`
- Object type: `INTTAB`
- Field count: **27**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | BUCKET | CHAR | 1 | Entitlement Period Bucket |
|  | SEQ | NUMC | 2 | Entitlement Period Bucket Sequence |
|  | BUCKET_DESC | CHAR | 25 | Entitlement Period Bucket Text |
|  | NOM_WEEKS_TOT | NUMC | 4 | Entitlement Period Bucket Total Nominal Weeks |
|  | AUTO_CLOSE | CHAR | 1 | Entitlement Period Bucket Automatic Close |
|  | NOM_WEEKS | NUMC | 4 | Entitlement Period Bucket Nominal Weeks |
|  | NOM_BEGDA | DATS | 8 | Start Date |
|  | NOM_ENDDA | DATS | 8 | End Date |
|  | NOM_WEEK_NUM_FROM | NUMC | 4 | Entitlement Period Week Number |
|  | NOM_WEEK_NUM_TO | NUMC | 4 | Entitlement Period Week Number |
|  | MANUAL_DATES | CHAR | 1 | Data element for domain BOOLE: TRUE (='X') and FALSE (=' ') |
|  | MAN_WEEKS | NUMC | 4 | Entitlement Period Number of Weeks |
|  | MAN_BEGDA | DATS | 8 | Start Date |
|  | MAN_ENDDA | DATS | 8 | End Date |
|  | MAN_WEEK_NUM_FROM | NUMC | 4 | Entitlement Period Week Number |
|  | MAN_WEEK_NUM_TO | NUMC | 4 | Entitlement Period Week Number |
|  | DEFN_WEEKS | NUMC | 4 | Entitlement Period Number of Weeks |
|  | DEFN_BEGDA | DATS | 8 | Start Date |
|  | DEFN_ENDDA | DATS | 8 | End Date |
|  | DEFN_WEEK_NUM_FROM | NUMC | 4 | Entitlement Period Week Number |
|  | DEFN_WEEK_NUM_TO | NUMC | 4 | Entitlement Period Week Number |
|  | DEFN_FROM_LOCKED | CHAR | 1 | Data element for domain BOOLE: TRUE (='X') and FALSE (=' ') |
|  | DEFN_TO_LOCKED | CHAR | 1 | Data element for domain BOOLE: TRUE (='X') and FALSE (=' ') |
|  | ADJ_WEEKS_TOT | NUMC | 4 | Entitlement Period Bucket Adjustment Weeks |
|  | AEDAT | DATS | 8 | Last Changed On |
|  | AENAM | CHAR | 12 | Name of Person Who Changed Object |
|  | BUCKET_ENCLOSED | CHAR | 1 | Data element for domain BOOLE: TRUE (='X') and FALSE (=' ') |

### ZIM_EPSS_CLAIM_H

- File: `ZIM_EPSS_CLAIM_H_fields.json`
- Object type: `TRANSP`
- Field count: **9**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 5 | Sequence Number |
|  | EXAMINER_ID | NUMC | 8 | OLIMS - EPSS Examiner ID |
|  | SUPERVISOR | NUMC | 8 | OLIMS - EPSS Supervisor |
|  | UPD_DATE | DATS | 8 | Date |
|  | UPD_TIME | TIMS | 6 | Time |
|  | UPD_USER | CHAR | 12 | User Name |

### ZIM_EPSS_WEEK_NO

- File: `ZIM_EPSS_WEEK_NO_fields.json`
- Object type: `TRANSP`
- Field count: **10**
- Primary key: **MANDT, PERNR, INCIDENT, FPPER, WEEK**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | FPPER | CHAR | 6 | For-Period for Payroll (YYYYMM) |
| Y | WEEK | NUMC | 1 | EPSS - Week (1 or 2) |
|  | NO_WEEKS_USED_P1 | NUMC | 3 | OLIMS - EPSS: Number of Weeks Used of Period 1 |
|  | INPER | CHAR | 6 | In-period for payroll |
|  | LAST_MODIFIED_DATE | DATS | 8 | Date |
|  | LAST_MODIFIED_TIME | TIMS | 6 | Time |
|  | LAST_MODIFIED_BY | CHAR | 12 | User Name |

### ZIM_GOAL

- File: `ZIM_GOAL_fields.json`
- Object type: `TRANSP`
- Field count: **2**
- Primary key: **MANDT, GOAL**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | GOAL | CHAR | 1 | OLIMS - R@WP Goal |

### ZIM_GOALT

- File: `ZIM_GOALT_fields.json`
- Object type: `TRANSP`
- Field count: **4**
- Primary key: **MANDT, SPRSL, GOAL**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | SPRSL | LANG | 1 | Language Key |
| Y | GOAL | CHAR | 1 | OLIMS - R@WP Goal |
|  | GOAL_DESC | CHAR | 132 | R@WP Goal Description |

### ZIM_INCIDENT

- File: `ZIM_INCIDENT_fields.json`
- Object type: `TRANSP`
- Field count: **234**
- Primary key: **MANDT, PERNR, INCIDENT**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
|  | DATEINCIDENT | DATS | 8 | Date of Incident |
|  | TIMEINCIDENT | TIMS | 6 | Time of  Incident |
|  | SIMBEFORE | NUMC | 1 | Has a similar injury occurred before? |
|  | LOC_001 | CHAR | 1 | 01 Abdomen |
|  | LOC_002 | CHAR | 1 | 02 Arm Upper |
|  | LOC_003 | CHAR | 1 | 03 Arm lower |
|  | LOC_004 | CHAR | 1 | 04 Arm not classified |
|  | LOC_005 | CHAR | 1 | 05 Elbow |
|  | LOC_006 | CHAR | 1 | 06 Wrist |
|  | LOC_007 | CHAR | 1 | 07 Hand |
|  | LOC_008 | CHAR | 1 | 08 Fingers/Thumb |
|  | LOC_009 | CHAR | 1 | 09 Back upper |
|  | LOC_010 | CHAR | 1 | 10 Back lower |
|  | LOC_011 | CHAR | 1 | 11 Back-multiple locations |
|  | LOC_012 | CHAR | 1 | 12 Neck |
|  | LOC_013 | CHAR | 1 | 13 Shoulder |
|  | LOC_014 | CHAR | 1 | 14 Chest |
|  | LOC_015 | CHAR | 1 | 15 Head |
|  | LOC_016 | CHAR | 1 | 16 Ear |
|  | LOC_017 | CHAR | 1 | 17 Eye |
|  | LOC_018 | CHAR | 1 | 18 Nose |
|  | LOC_019 | CHAR | 1 | 19 Mouth |
|  | LOC_020 | CHAR | 1 | 20 Face-not classified |
|  | LOC_021 | CHAR | 1 | 21 Leg-upper |
|  | LOC_022 | CHAR | 1 | 22 Leg-lower |
|  | LOC_023 | CHAR | 1 | 23 Leg-not classified |
|  | LOC_024 | CHAR | 1 | 24 Knee |
|  | LOC_025 | CHAR | 1 | 25 Ankle |
|  | LOC_026 | CHAR | 1 | 26 Foot |
|  | LOC_027 | CHAR | 1 | 27 Toe/s |
|  | LOC_028 | CHAR | 1 | 28 Groin |
|  | LOC_029 | CHAR | 1 | 29 Hip/s |
|  | LOC_030 | CHAR | 1 | 30 Pelvic region |
|  | LOC_031 | CHAR | 1 | 31 Nervous system |
|  | LOC_032 | CHAR | 1 | 32 Internal organs |
|  | LOC_033 | CHAR | 1 | 33 Multiple locations |
|  | LOC_034 | CHAR | 1 | 34 Nil |
|  | LOC_035 | CHAR | 1 | 35 Other/Unspecified |
|  | LOC_036 | CHAR | 1 | 36 Psychological |
|  | MAIN_LOC | NUMC | 3 | Numc3, internal use |
|  | NAT_001 | CHAR | 1 | 01 Abrasions/Superficial injuries |
|  | NAT_002 | CHAR | 1 | 02 Amputation Crushing |
|  | NAT_003 | CHAR | 1 | 03 Bruises/swelling |
|  | NAT_004 | CHAR | 1 | 04 Burns/scalds |
|  | NAT_005 | CHAR | 1 | 05 Cancer |
|  | NAT_006 | CHAR | 1 | 06 Heart attack/disease |
|  | NAT_007 | CHAR | 1 | 07 Concussion/Cranial |
|  | NAT_008 | CHAR | 1 | 08 Foreign bodies |
|  | NAT_009 | CHAR | 1 | 09 Fracture/Dislocation |
|  | NAT_010 | CHAR | 1 | 10 Deafness/Hearing loss |
|  | NAT_011 | CHAR | 1 | 11 Eye disorders |
|  | NAT_012 | CHAR | 1 | 12 Infectious diseases |
|  | NAT_013 | CHAR | 1 | 13 Parasitic disease |
|  | NAT_014 | CHAR | 1 | 14 Internal injury |
|  | NAT_015 | CHAR | 1 | 15 Laceration/Open wound |
|  | NAT_016 | CHAR | 1 | 16 Multiple injuries |
|  | NAT_017 | CHAR | 1 | 17 Respiratory disease |
|  | NAT_018 | CHAR | 1 | 18 Skin disease |
|  | NAT_019 | CHAR | 1 | 19 Sprains/strains |
|  | NAT_020 | CHAR | 1 | 20 Psychological |
|  | NAT_021 | CHAR | 1 | 21 Nil injury |
|  | NAT_022 | CHAR | 1 | 22 Other unspecified |
|  | NAT_023 | CHAR | 1 | 23 Occupational Overuse Syndrome |
|  | NAT_024 | CHAR | 1 | 24 Fatality |
|  | MAIN_NAT | NUMC | 3 | Numc3, internal use |
|  | ACT_001 | CHAR | 1 | 01 Animal handling |
|  | ACT_002 | CHAR | 1 | 02 Arresting an offender |
|  | ACT_003 | CHAR | 1 | 03 Attending MVA |
|  | ACT_004 | CHAR | 1 | 04 Bicycle patrol |
|  | ACT_005 | CHAR | 1 | 05 Bicycle urgent duty |
|  | ACT_006 | CHAR | 1 | 06 Boat handling |
|  | ACT_007 | CHAR | 1 | 07 Crowd control |
|  | ACT_008 | CHAR | 1 | 08 Diving |
|  | ACT_009 | CHAR | 1 | 09 Evacuation |
|  | ACT_010 | CHAR | 1 | 10 Search rescue |
|  | ACT_011 | CHAR | 1 | 11 Foot patrol |
|  | ACT_012 | CHAR | 1 | 12 Foot pursuit |
|  | ACT_013 | CHAR | 1 | 13 Journey to /from work |
|  | ACT_014 | CHAR | 1 | 14 Journey on duty |
|  | ACT_015 | CHAR | 1 | 15 Motor cycle patrol |
|  | ACT_016 | CHAR | 1 | 16 Motor cycle pursuit |
|  | ACT_017 | CHAR | 1 | 17 StationOffice duties |
|  | ACT_018 | CHAR | 1 | 18 Restraining offender |
|  | ACT_019 | CHAR | 1 | 19 Search Premises/Vehicle |
|  | ACT_020 | CHAR | 1 | 20 Search Persons/Possess |
|  | ACT_021 | CHAR | 1 | 21 Special operations |
|  | ACT_022 | CHAR | 1 | 22 Technical support |
|  | ACT_023 | CHAR | 1 | 23 Traffic Control |
|  | ACT_024 | CHAR | 1 | 24 Parking Patrol |
|  | ACT_025 | CHAR | 1 | 25 Vehicle Patrol |
|  | ACT_026 | CHAR | 1 | 26 Vehicle Pursuit |
|  | ACT_027 | CHAR | 1 | 27 Police Training |
|  | ACT_028 | CHAR | 1 | 28 Other/Unspecified |
|  | ACT_029 | CHAR | 1 | 29 General duties |
|  | ACT_030 | CHAR | 1 | 30 Weapons training |
|  | ACT_031 | CHAR | 1 | 31 Working at heights |
|  | ACT_032 | CHAR | 1 | 32 Handling biochemical waste |
|  | ACT_033 | CHAR | 1 | 33 Manual handling |
|  | ACT_034 | CHAR | 1 | 34 Walking, running |
|  | ACT_035 | CHAR | 1 | 35 Putting on PPE |
|  | ACT_036 | CHAR | 1 | 36 OSG Training |
|  | ACT_037 | CHAR | 1 | 37 Drug or Alcohol Related |
|  | ACT_038 | CHAR | 1 | 38 Mental Health Intervention |
|  | ACT_039 | CHAR | 1 | 39 Non Work Related Incident |
|  | CAS_001 | CHAR | 1 | 01 Physical assault |
|  | CAS_002 | CHAR | 1 | 02 Slips/trips/falls |
|  | CAS_003 | CHAR | 1 | 03 Contact/exposure to chemicals |
|  | CAS_004 | CHAR | 1 | 04 Contact/exposure to body fluids |
|  | CAS_005 | CHAR | 1 | 05 Exposure to biological factors/agents |
|  | CAS_006 | CHAR | 1 | 06 Needle-stick injury |
|  | CAS_007 | CHAR | 1 | 07 Step on/striking an  object |
|  | CAS_008 | CHAR | 1 | 08 Struck by object |
|  | CAS_009 | CHAR | 1 | 09 Caught in or between object |
|  | CAS_010 | CHAR | 1 | 10 Lifting/carrying/putting down object |
|  | CAS_011 | CHAR | 1 | 11 Motor vehicle accident |
|  | CAS_012 | CHAR | 1 | 12 Motor cycle accident |
|  | CAS_013 | CHAR | 1 | 13 Bicycle accident |
|  | CAS_014 | CHAR | 1 | 14 Other transport |
|  | CAS_015 | CHAR | 1 | 15 Animal bites |
|  | CAS_016 | CHAR | 1 | 16 Human bites |
|  | CAS_017 | CHAR | 1 | 17 Insect bites/stings |
|  | CAS_018 | CHAR | 1 | 18 Exposure gas fumes |
|  | CAS_019 | CHAR | 1 | 19 Electric Shock |
|  | CAS_020 | CHAR | 1 | 20 Explosion/implosion |
|  | CAS_021 | CHAR | 1 | 21 Exposure radiation |
|  | CAS_022 | CHAR | 1 | 22 Exposure to extreme temperatures |
|  | CAS_023 | CHAR | 1 | 23 Exposure to noise/vibration |
|  | CAS_024 | CHAR | 1 | 24 Gun discharged |
|  | CAS_025 | CHAR | 1 | 25 Safety equipment |
|  | CAS_026 | CHAR | 1 | 26 Entry/exit  vehicle/premises |
|  | CAS_027 | CHAR | 1 | 27 Physical exercise |
|  | CAS_028 | CHAR | 1 | 28 Exposure to workplace violence |
|  | CAS_029 | CHAR | 1 | 29 Psychological factors |
|  | CAS_030 | CHAR | 1 | 30 OC spray effects |
|  | CAS_031 | CHAR | 1 | 31 Other /unspecified |
|  | CAS_032 | CHAR | 1 | 32 Repetitive tasks/movement |
|  | CAS_033 | CHAR | 1 | 33 Rubbing and chaffing |
|  | CAS_034 | CHAR | 1 | 34 PPE failure |
|  | WHE_001 | CHAR | 1 | At Workplace (ie. station/office/lab/vehicle) |
|  | WHE_002 | CHAR | 1 | Journey to/from work |
|  | WHE_003 | CHAR | 1 | At work not on Police Premises |
|  | WHE_004 | CHAR | 1 | At Crime Scene |
|  | WHE_005 | CHAR | 1 | On Patrol |
|  | WHE_006 | CHAR | 1 | Non Work Related |
|  | DATEREPORTED | DATS | 8 | Date reported to employer |
|  | PERSONREPORTEDO | CHAR | 50 | Person reported to |
|  | PERSONREPTOTEL | CHAR | 20 | Phone No |
|  | TREATMENTOPT | NUMC | 3 | P902 - Treatment Option |
|  | TREATMENTDOC | CHAR | 50 | TreatingDoctor/MedicalPractice/First Aider(if known) |
|  | TREATMENTTEL | CHAR | 20 | Phone |
|  | TREATMENTADR | CHAR | 100 | Address |
|  | TREATMENTDESC | CHAR | 100 | Describe treatment/ first aid provided |
|  | TREATFIRSTA | CHAR | 1 | Was first Aid administered |
|  | TREATFIRSTPER | CHAR | 50 | Who administered First Aid |
|  | FITNESSSTAT | NUMC | 2 | P902 - Current Fitness Code |
|  | FITNESSRETURN | DATS | 8 | Expected time frame to return to work |
|  | FITNESSCERT | CHAR | 50 | Current Medical Certificate Status |
|  | REPORTINGPERSON | CHAR | 50 | Servicenumber / Name |
|  | REPORTINGUSER | CHAR | 12 | User ID |
|  | REPORTINGRELA | CHAR | 50 | Relationship to injured worker |
|  | REPORTINGTEL | CHAR | 20 | Contact No. |
|  | REPORTINGDATE | DATS | 8 | Date |
|  | REPORTINGTIME | TIMS | 6 | Time |
|  | IDENTNR | NUMC | 10 | Incident No. |
|  | NEARMISS | CHAR | 1 | Near Miss |
|  | TASER | NUMC | 1 | Taser Involved in Incident |
|  | LBV | NUMC | 1 | Load Bearing Vest  Worn |
|  | INC_ADDRESS | CHAR | 60 | Address where Incident Occurred |
|  | VIS_ORGEH | NUMC | 8 | Visitors Org Unit |
|  | GEL | NUMC | 1 | Gel Belt Worn |
|  | TASER_CONT | NUMC | 1 | Taser Contributed to the Injury |
|  | LBV_CONT | NUMC | 1 | Load Bearing Vest  Contributed to Injury |
|  | LBV_TRAIN | NUMC | 1 | Load Bearing Vest  Trained |
|  | GEL_CONT | NUMC | 1 | Gel Belt Contributed to Injury |
|  | GEL_TRAIN | NUMC | 1 | Gel Belt  Trained |
|  | THIGH | NUMC | 1 | Thigh Holster Worn |
|  | THIGH_CONT | NUMC | 1 | Thigh Holster Contributed to Injury |
|  | THIGH_TRAIN | NUMC | 1 | Thigh Holster  Trained |
|  | DRUG_CONT | NUMC | 1 | Drug or Alcohol Affected Person Contributed to Injury |
|  | MENT_CONT | NUMC | 1 | Mentally Ill Person Contributed to Injury |
|  | DV_CONT | NUMC | 1 | Domestic Violence Person Contributed to Injury |
|  | STATUS | CHAR | 1 | P902 - Duplicate Incident |
|  | EXP_TO_HAZ | NUMC | 1 | P902 - Exposure to Hazardous Substance |
|  | HIGHER_EMAIL | CHAR | 1 | Boolean Variable (X=True, -=False, Space=Unknown) |
|  | NEW_FORMAT | CHAR | 1 | P902 - New Format |
|  | ACTIVITY_NEW | NUMC | 3 | P902 - Activity Code |
|  | CAUSE_NEW | NUMC | 3 | P902 - Cause Code |
|  | WHERE_NEW | NUMC | 3 | P902 - Where Code |
|  | SUP_NAME | CHAR | 60 | P902 - Supervisor Name |
|  | SUP_PHONE | CHAR | 20 | P902 - Supervisor Phone |
|  | KIN_NAME | CHAR | 60 | P902 - Next of Kin Name |
|  | KIN_CONTACT | CHAR | 20 | P902 - Next of Kin Phone |
|  | TIME_REPORTED | TIMS | 6 | P902 - Time Reported |
|  | OTHER_ACTIVITY | CHAR | 80 | P902 - Other Activity |
|  | OTHER_CAUSE | CHAR | 80 | P902 - Other Cause |
|  | DATE_MED_REV | DATS | 8 | P902 - Date of Medical Review |
|  | SAFEWORK_NOT | NUMC | 1 | P902 - SafeWork NSW Notified |
|  | SAFEWORK_REF_NO | CHAR | 30 | P902 - Safework NSW Reference Number |
|  | OTH_WORK_EXTERNAL | CHAR | 20 | Communication Number |
|  | OTH_WORK_EAGLE | CHAR | 20 | Communication Number |
|  | OTH_HOME_TEL | CHAR | 20 | Communication Number |
|  | OTH_HOME_MOBILE | CHAR | 20 | Communication Number |
|  | OTH_HOME_EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | BULLY_SUP_ACK | CHAR | 1 | P902 - Bullying by Supervisor - Acknowledge |
|  | BULLY_NOSUP_ACK | CHAR | 1 | P902 - Bullying Not by Supervisor - Acknowledge |
|  | BP_NUMBER | CHAR | 12 | Unique Blue Portal number |
|  | HAZARDSUBCLASS | CHAR | 32 | New System ID |
|  | EMAIL_EMPLOYEE | CHAR | 241 | Communication: Long Identification/Number |
|  | RELATED_INCIDENT | CHAR | 12 | Unique Blue Portal number |
|  | RELATED_DETAILS | CHAR | 255 | Char 255 Lower Case |
|  | LOCATION_ID | CHAR | 10 | Character Field Length = 10 |
|  | HOURS_CAPACITY | NUMC | 3 | Counter |
|  | RESTRICTIONS | CHAR | 100 | Char 100 Lower Case |
|  | WHAT_FIRST_AID_GIVEN | CHAR | 32 | New System ID |
|  | MAIN_EXPOSURE | CHAR | 32 | New System ID |
|  | OTHER_EXPOSURE | CHAR | 32 | New System ID |
|  | INJURY_SUBTYPE | CHAR | 32 | New System ID |
|  | BODILY_LOCATION_SUBTYPE | CHAR | 32 | New System ID |
|  | CURRENT_FITNESS | CHAR | 32 | New System ID |
|  | WHERE_DID_THE_INCIDENT_HAPPEN | CHAR | 32 | New System ID |
|  | TYPE_OF_INCIDENT | CHAR | 32 | New System ID |
|  | ADDRESS_OF_INCIDENT | CHAR | 255 | Char 255 Lower Case |
|  | DESCRIBE_FIRST_AID | CHAR | 100 | Char 100 Lower Case |
|  | FIRST_AID_PROVIDED_BY | CHAR | 100 | Char 100 Lower Case |
|  | DETAILS_MAIN_SUBSTANCE | CHAR | 100 | Char 100 Lower Case |
|  | DETAILS_OTHER_SUBSTANCE | CHAR | 100 | Char 100 Lower Case |
|  | EXPECTED_TIME_RETURN_TO_WORK | CHAR | 10 | Character Field Length = 10 |
|  | HOME_PHONE | CHAR | 20 | Communication Number |
|  | HAVE_SEC_EMPLOY | NUMC | 1 | P902 - Secondary employment approval |
|  | CURR_REC_TREAT | NUMC | 1 | P902 - Currently Receiving Treatment |
|  | WHAT_TREATMENT_WILL_YOU_BE | CHAR | 100 | Char 100 Lower Case |

### ZIM_INCIDENT_LOG

- File: `ZIM_INCIDENT_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **238**
- Primary key: **MANDT, PERNR, INCIDENT, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | DATEINCIDENT | DATS | 8 | Date of Incident |
|  | TIMEINCIDENT | TIMS | 6 | Time of  Incident |
|  | SIMBEFORE | NUMC | 1 | Has a similar injury occurred before? |
|  | LOC_001 | CHAR | 1 | 01 Abdomen |
|  | LOC_002 | CHAR | 1 | 02 Arm Upper |
|  | LOC_003 | CHAR | 1 | 03 Arm lower |
|  | LOC_004 | CHAR | 1 | 04 Arm not classified |
|  | LOC_005 | CHAR | 1 | 05 Elbow |
|  | LOC_006 | CHAR | 1 | 06 Wrist |
|  | LOC_007 | CHAR | 1 | 07 Hand |
|  | LOC_008 | CHAR | 1 | 08 Fingers/Thumb |
|  | LOC_009 | CHAR | 1 | 09 Back upper |
|  | LOC_010 | CHAR | 1 | 10 Back lower |
|  | LOC_011 | CHAR | 1 | 11 Back-multiple locations |
|  | LOC_012 | CHAR | 1 | 12 Neck |
|  | LOC_013 | CHAR | 1 | 13 Shoulder |
|  | LOC_014 | CHAR | 1 | 14 Chest |
|  | LOC_015 | CHAR | 1 | 15 Head |
|  | LOC_016 | CHAR | 1 | 16 Ear |
|  | LOC_017 | CHAR | 1 | 17 Eye |
|  | LOC_018 | CHAR | 1 | 18 Nose |
|  | LOC_019 | CHAR | 1 | 19 Mouth |
|  | LOC_020 | CHAR | 1 | 20 Face-not classified |
|  | LOC_021 | CHAR | 1 | 21 Leg-upper |
|  | LOC_022 | CHAR | 1 | 22 Leg-lower |
|  | LOC_023 | CHAR | 1 | 23 Leg-not classified |
|  | LOC_024 | CHAR | 1 | 24 Knee |
|  | LOC_025 | CHAR | 1 | 25 Ankle |
|  | LOC_026 | CHAR | 1 | 26 Foot |
|  | LOC_027 | CHAR | 1 | 27 Toe/s |
|  | LOC_028 | CHAR | 1 | 28 Groin |
|  | LOC_029 | CHAR | 1 | 29 Hip/s |
|  | LOC_030 | CHAR | 1 | 30 Pelvic region |
|  | LOC_031 | CHAR | 1 | 31 Nervous system |
|  | LOC_032 | CHAR | 1 | 32 Internal organs |
|  | LOC_033 | CHAR | 1 | 33 Multiple locations |
|  | LOC_034 | CHAR | 1 | 34 Nil |
|  | LOC_035 | CHAR | 1 | 35 Other/Unspecified |
|  | LOC_036 | CHAR | 1 | 36 Psychological |
|  | MAIN_LOC | NUMC | 3 | Numc3, internal use |
|  | NAT_001 | CHAR | 1 | 01 Abrasions/Superficial injuries |
|  | NAT_002 | CHAR | 1 | 02 Amputation Crushing |
|  | NAT_003 | CHAR | 1 | 03 Bruises/swelling |
|  | NAT_004 | CHAR | 1 | 04 Burns/scalds |
|  | NAT_005 | CHAR | 1 | 05 Cancer |
|  | NAT_006 | CHAR | 1 | 06 Heart attack/disease |
|  | NAT_007 | CHAR | 1 | 07 Concussion/Cranial |
|  | NAT_008 | CHAR | 1 | 08 Foreign bodies |
|  | NAT_009 | CHAR | 1 | 09 Fracture/Dislocation |
|  | NAT_010 | CHAR | 1 | 10 Deafness/Hearing loss |
|  | NAT_011 | CHAR | 1 | 11 Eye disorders |
|  | NAT_012 | CHAR | 1 | 12 Infectious diseases |
|  | NAT_013 | CHAR | 1 | 13 Parasitic disease |
|  | NAT_014 | CHAR | 1 | 14 Internal injury |
|  | NAT_015 | CHAR | 1 | 15 Laceration/Open wound |
|  | NAT_016 | CHAR | 1 | 16 Multiple injuries |
|  | NAT_017 | CHAR | 1 | 17 Respiratory disease |
|  | NAT_018 | CHAR | 1 | 18 Skin disease |
|  | NAT_019 | CHAR | 1 | 19 Sprains/strains |
|  | NAT_020 | CHAR | 1 | 20 Psychological |
|  | NAT_021 | CHAR | 1 | 21 Nil injury |
|  | NAT_022 | CHAR | 1 | 22 Other unspecified |
|  | NAT_023 | CHAR | 1 | 23 Occupational Overuse Syndrome |
|  | NAT_024 | CHAR | 1 | 24 Fatality |
|  | MAIN_NAT | NUMC | 3 | Numc3, internal use |
|  | ACT_001 | CHAR | 1 | 01 Animal handling |
|  | ACT_002 | CHAR | 1 | 02 Arresting an offender |
|  | ACT_003 | CHAR | 1 | 03 Attending MVA |
|  | ACT_004 | CHAR | 1 | 04 Bicycle patrol |
|  | ACT_005 | CHAR | 1 | 05 Bicycle urgent duty |
|  | ACT_006 | CHAR | 1 | 06 Boat handling |
|  | ACT_007 | CHAR | 1 | 07 Crowd control |
|  | ACT_008 | CHAR | 1 | 08 Diving |
|  | ACT_009 | CHAR | 1 | 09 Evacuation |
|  | ACT_010 | CHAR | 1 | 10 Search rescue |
|  | ACT_011 | CHAR | 1 | 11 Foot patrol |
|  | ACT_012 | CHAR | 1 | 12 Foot pursuit |
|  | ACT_013 | CHAR | 1 | 13 Journey to /from work |
|  | ACT_014 | CHAR | 1 | 14 Journey on duty |
|  | ACT_015 | CHAR | 1 | 15 Motor cycle patrol |
|  | ACT_016 | CHAR | 1 | 16 Motor cycle pursuit |
|  | ACT_017 | CHAR | 1 | 17 StationOffice duties |
|  | ACT_018 | CHAR | 1 | 18 Restraining offender |
|  | ACT_019 | CHAR | 1 | 19 Search Premises/Vehicle |
|  | ACT_020 | CHAR | 1 | 20 Search Persons/Possess |
|  | ACT_021 | CHAR | 1 | 21 Special operations |
|  | ACT_022 | CHAR | 1 | 22 Technical support |
|  | ACT_023 | CHAR | 1 | 23 Traffic Control |
|  | ACT_024 | CHAR | 1 | 24 Parking Patrol |
|  | ACT_025 | CHAR | 1 | 25 Vehicle Patrol |
|  | ACT_026 | CHAR | 1 | 26 Vehicle Pursuit |
|  | ACT_027 | CHAR | 1 | 27 Police Training |
|  | ACT_028 | CHAR | 1 | 28 Other/Unspecified |
|  | ACT_029 | CHAR | 1 | 29 General duties |
|  | ACT_030 | CHAR | 1 | 30 Weapons training |
|  | ACT_031 | CHAR | 1 | 31 Working at heights |
|  | ACT_032 | CHAR | 1 | 32 Handling biochemical waste |
|  | ACT_033 | CHAR | 1 | 33 Manual handling |
|  | ACT_034 | CHAR | 1 | 34 Walking, running |
|  | ACT_035 | CHAR | 1 | 35 Putting on PPE |
|  | ACT_036 | CHAR | 1 | 36 OSG Training |
|  | ACT_037 | CHAR | 1 | 37 Drug or Alcohol Related |
|  | ACT_038 | CHAR | 1 | 38 Mental Health Intervention |
|  | ACT_039 | CHAR | 1 | 39 Non Work Related Incident |
|  | CAS_001 | CHAR | 1 | 01 Physical assault |
|  | CAS_002 | CHAR | 1 | 02 Slips/trips/falls |
|  | CAS_003 | CHAR | 1 | 03 Contact/exposure to chemicals |
|  | CAS_004 | CHAR | 1 | 04 Contact/exposure to body fluids |
|  | CAS_005 | CHAR | 1 | 05 Exposure to biological factors/agents |
|  | CAS_006 | CHAR | 1 | 06 Needle-stick injury |
|  | CAS_007 | CHAR | 1 | 07 Step on/striking an  object |
|  | CAS_008 | CHAR | 1 | 08 Struck by object |
|  | CAS_009 | CHAR | 1 | 09 Caught in or between object |
|  | CAS_010 | CHAR | 1 | 10 Lifting/carrying/putting down object |
|  | CAS_011 | CHAR | 1 | 11 Motor vehicle accident |
|  | CAS_012 | CHAR | 1 | 12 Motor cycle accident |
|  | CAS_013 | CHAR | 1 | 13 Bicycle accident |
|  | CAS_014 | CHAR | 1 | 14 Other transport |
|  | CAS_015 | CHAR | 1 | 15 Animal bites |
|  | CAS_016 | CHAR | 1 | 16 Human bites |
|  | CAS_017 | CHAR | 1 | 17 Insect bites/stings |
|  | CAS_018 | CHAR | 1 | 18 Exposure gas fumes |
|  | CAS_019 | CHAR | 1 | 19 Electric Shock |
|  | CAS_020 | CHAR | 1 | 20 Explosion/implosion |
|  | CAS_021 | CHAR | 1 | 21 Exposure radiation |
|  | CAS_022 | CHAR | 1 | 22 Exposure to extreme temperatures |
|  | CAS_023 | CHAR | 1 | 23 Exposure to noise/vibration |
|  | CAS_024 | CHAR | 1 | 24 Gun discharged |
|  | CAS_025 | CHAR | 1 | 25 Safety equipment |
|  | CAS_026 | CHAR | 1 | 26 Entry/exit  vehicle/premises |
|  | CAS_027 | CHAR | 1 | 27 Physical exercise |
|  | CAS_028 | CHAR | 1 | 28 Exposure to workplace violence |
|  | CAS_029 | CHAR | 1 | 29 Psychological factors |
|  | CAS_030 | CHAR | 1 | 30 OC spray effects |
|  | CAS_031 | CHAR | 1 | 31 Other /unspecified |
|  | CAS_032 | CHAR | 1 | 32 Repetitive tasks/movement |
|  | CAS_033 | CHAR | 1 | 33 Rubbing and chaffing |
|  | CAS_034 | CHAR | 1 | 34 PPE failure |
|  | WHE_001 | CHAR | 1 | At Workplace (ie. station/office/lab/vehicle) |
|  | WHE_002 | CHAR | 1 | Journey to/from work |
|  | WHE_003 | CHAR | 1 | At work not on Police Premises |
|  | WHE_004 | CHAR | 1 | At Crime Scene |
|  | WHE_005 | CHAR | 1 | On Patrol |
|  | WHE_006 | CHAR | 1 | Non Work Related |
|  | DATEREPORTED | DATS | 8 | Date reported to employer |
|  | PERSONREPORTEDO | CHAR | 50 | Person reported to |
|  | PERSONREPTOTEL | CHAR | 20 | Phone No |
|  | TREATMENTOPT | NUMC | 3 | P902 - Treatment Option |
|  | TREATMENTDOC | CHAR | 50 | TreatingDoctor/MedicalPractice/First Aider(if known) |
|  | TREATMENTTEL | CHAR | 20 | Phone |
|  | TREATMENTADR | CHAR | 100 | Address |
|  | TREATMENTDESC | CHAR | 100 | Describe treatment/ first aid provided |
|  | TREATFIRSTA | CHAR | 1 | Was first Aid administered |
|  | TREATFIRSTPER | CHAR | 50 | Who administered First Aid |
|  | FITNESSSTAT | NUMC | 2 | P902 - Current Fitness Code |
|  | FITNESSRETURN | DATS | 8 | Expected time frame to return to work |
|  | FITNESSCERT | CHAR | 50 | Current Medical Certificate Status |
|  | REPORTINGPERSON | CHAR | 50 | Servicenumber / Name |
|  | REPORTINGUSER | CHAR | 12 | User ID |
|  | REPORTINGRELA | CHAR | 50 | Relationship to injured worker |
|  | REPORTINGTEL | CHAR | 20 | Contact No. |
|  | REPORTINGDATE | DATS | 8 | Date |
|  | REPORTINGTIME | TIMS | 6 | Time |
|  | IDENTNR | NUMC | 10 | Incident No. |
|  | NEARMISS | CHAR | 1 | Near Miss |
|  | TASER | NUMC | 1 | Taser Involved in Incident |
|  | LBV | NUMC | 1 | Load Bearing Vest  Worn |
|  | INC_ADDRESS | CHAR | 60 | Address where Incident Occurred |
|  | VIS_ORGEH | NUMC | 8 | Visitors Org Unit |
|  | GEL | NUMC | 1 | Gel Belt Worn |
|  | TASER_CONT | NUMC | 1 | Taser Contributed to the Injury |
|  | LBV_CONT | NUMC | 1 | Load Bearing Vest  Contributed to Injury |
|  | LBV_TRAIN | NUMC | 1 | Load Bearing Vest  Trained |
|  | GEL_CONT | NUMC | 1 | Gel Belt Contributed to Injury |
|  | GEL_TRAIN | NUMC | 1 | Gel Belt  Trained |
|  | THIGH | NUMC | 1 | Thigh Holster Worn |
|  | THIGH_CONT | NUMC | 1 | Thigh Holster Contributed to Injury |
|  | THIGH_TRAIN | NUMC | 1 | Thigh Holster  Trained |
|  | DRUG_CONT | NUMC | 1 | Drug or Alcohol Affected Person Contributed to Injury |
|  | MENT_CONT | NUMC | 1 | Mentally Ill Person Contributed to Injury |
|  | DV_CONT | NUMC | 1 | Domestic Violence Person Contributed to Injury |
|  | STATUS | CHAR | 1 | P902 - Duplicate Incident |
|  | EXP_TO_HAZ | NUMC | 1 | P902 - Exposure to Hazardous Substance |
|  | HIGHER_EMAIL | CHAR | 1 | Boolean Variable (X=True, -=False, Space=Unknown) |
|  | NEW_FORMAT | CHAR | 1 | P902 - New Format |
|  | ACTIVITY_NEW | NUMC | 3 | P902 - Activity Code |
|  | CAUSE_NEW | NUMC | 3 | P902 - Cause Code |
|  | WHERE_NEW | NUMC | 3 | P902 - Where Code |
|  | SUP_NAME | CHAR | 60 | P902 - Supervisor Name |
|  | SUP_PHONE | CHAR | 20 | P902 - Supervisor Phone |
|  | KIN_NAME | CHAR | 60 | P902 - Next of Kin Name |
|  | KIN_CONTACT | CHAR | 20 | P902 - Next of Kin Phone |
|  | TIME_REPORTED | TIMS | 6 | P902 - Time Reported |
|  | OTHER_ACTIVITY | CHAR | 80 | P902 - Other Activity |
|  | OTHER_CAUSE | CHAR | 80 | P902 - Other Cause |
|  | DATE_MED_REV | DATS | 8 | P902 - Date of Medical Review |
|  | SAFEWORK_NOT | NUMC | 1 | P902 - SafeWork NSW Notified |
|  | SAFEWORK_REF_NO | CHAR | 30 | P902 - Safework NSW Reference Number |
|  | OTH_WORK_EXTERNAL | CHAR | 20 | Communication Number |
|  | OTH_WORK_EAGLE | CHAR | 20 | Communication Number |
|  | OTH_HOME_TEL | CHAR | 20 | Communication Number |
|  | OTH_HOME_MOBILE | CHAR | 20 | Communication Number |
|  | OTH_HOME_EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | BULLY_SUP_ACK | CHAR | 1 | P902 - Bullying by Supervisor - Acknowledge |
|  | BULLY_NOSUP_ACK | CHAR | 1 | P902 - Bullying Not by Supervisor - Acknowledge |
|  | BP_NUMBER | CHAR | 12 | Unique Blue Portal number |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | HAZARDSUBCLASS | CHAR | 32 | New System ID |
|  | EMAIL_EMPLOYEE | CHAR | 241 | Communication: Long Identification/Number |
|  | RELATED_INCIDENT | CHAR | 12 | Unique Blue Portal number |
|  | RELATED_DETAILS | CHAR | 255 | Char 255 Lower Case |
|  | LOCATION_ID | CHAR | 10 | Character Field Length = 10 |
|  | HOURS_CAPACITY | NUMC | 3 | Counter |
|  | RESTRICTIONS | CHAR | 100 | Char 100 Lower Case |
|  | WHAT_FIRST_AID_GIVEN | CHAR | 32 | New System ID |
|  | MAIN_EXPOSURE | CHAR | 32 | New System ID |
|  | OTHER_EXPOSURE | CHAR | 32 | New System ID |
|  | INJURY_SUBTYPE | CHAR | 32 | New System ID |
|  | BODILY_LOCATION_SUBTYPE | CHAR | 32 | New System ID |
|  | CURRENT_FITNESS | CHAR | 32 | New System ID |
|  | WHERE_DID_THE_INCIDENT_HAPPEN | CHAR | 32 | New System ID |
|  | TYPE_OF_INCIDENT | CHAR | 32 | New System ID |
|  | ADDRESS_OF_INCIDENT | CHAR | 255 | Char 255 Lower Case |
|  | DESCRIBE_FIRST_AID | CHAR | 100 | Char 100 Lower Case |
|  | FIRST_AID_PROVIDED_BY | CHAR | 100 | Char 100 Lower Case |
|  | DETAILS_MAIN_SUBSTANCE | CHAR | 100 | Char 100 Lower Case |
|  | DETAILS_OTHER_SUBSTANCE | CHAR | 100 | Char 100 Lower Case |
|  | EXPECTED_TIME_RETURN_TO_WORK | CHAR | 10 | Character Field Length = 10 |
|  | HOME_PHONE | CHAR | 20 | Communication Number |
|  | HAVE_SEC_EMPLOY | NUMC | 1 | P902 - Secondary employment approval |
|  | CURR_REC_TREAT | NUMC | 1 | P902 - Currently Receiving Treatment |
|  | WHAT_TREATMENT_WILL_YOU_BE | CHAR | 100 | Char 100 Lower Case |

### ZIM_INC_INJ

- File: `ZIM_INC_INJ_fields.json`
- Object type: `TRANSP`
- Field count: **9**
- Primary key: **MANDT, PERNR, IDENTNR, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | IDENTNR | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | P902 - Sequence Number |
|  | LOCATION_CODE | NUMC | 3 | P902 - Location Code |
|  | NATURE_CODE | NUMC | 3 | P902 - Nature Code |
|  | OTHER_LOCATION | CHAR | 80 | P902 - Other Location |
|  | OTHER_NATURE | CHAR | 80 | P902 - Other Nature |
|  | MAIN_INJURY | CHAR | 1 | P902 - Main Injury |

### ZIM_INC_INJ_LOG

- File: `ZIM_INC_INJ_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **13**
- Primary key: **MANDT, PERNR, IDENTNR, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | IDENTNR | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | P902 - Sequence Number |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | LOCATION_CODE | NUMC | 3 | P902 - Location Code |
|  | NATURE_CODE | NUMC | 3 | P902 - Nature Code |
|  | OTHER_LOCATION | CHAR | 80 | P902 - Other Location |
|  | OTHER_NATURE | CHAR | 80 | P902 - Other Nature |
|  | MAIN_INJURY | CHAR | 1 | P902 - Main Injury |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_INC_P902

- File: `ZIM_INC_P902_fields.json`
- Object type: `TRANSP`
- Field count: **29**
- Primary key: **MANDT, PERNR, INCIDENT**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
|  | BP_NUMBER | CHAR | 12 | Unique Blue Portal number |
|  | HAZARDSUBCLASS | CHAR | 32 | New System ID |
|  | EMAIL_EMPLOYEE | CHAR | 241 | Communication: Long Identification/Number |
|  | RELATED_INCIDENT | CHAR | 12 | Unique Blue Portal number |
|  | RELATED_DETAILS | CHAR | 255 | Char 255 Lower Case |
|  | LOCATION_ID | CHAR | 10 | Character Field Length = 10 |
|  | HOURS_CAPACITY | NUMC | 3 | Counter |
|  | RESTRICTIONS | CHAR | 255 | Char 255 Lower Case |
|  | WHAT_FIRST_AID_GIVEN | CHAR | 32 | New System ID |
|  | MAIN_EXPOSURE | CHAR | 32 | New System ID |
|  | OTHER_EXPOSURE | CHAR | 32 | New System ID |
|  | INJURY_SUBTYPE | CHAR | 32 | New System ID |
|  | BODILY_LOCATION_SUBTYPE | CHAR | 32 | New System ID |
|  | CURRENT_FITNESS | CHAR | 32 | New System ID |
|  | WHERE_DID_THE_INCIDENT_HAPPEN | CHAR | 32 | New System ID |
|  | TYPE_OF_INCIDENT | CHAR | 32 | New System ID |
|  | ADDRESS_OF_INCIDENT | CHAR | 255 | Char 255 Lower Case |
|  | DESCRIBE_FIRST_AID | CHAR | 255 | Char 255 Lower Case |
|  | FIRST_AID_PROVIDED_BY | CHAR | 255 | Char 255 Lower Case |
|  | DETAILS_MAIN_SUBSTANCE | CHAR | 255 | Char 255 Lower Case |
|  | DETAILS_OTHER_SUBSTANCE | CHAR | 255 | Char 255 Lower Case |
|  | EXPECTED_TIME_RETURN_TO_WORK | CHAR | 10 | Character Field Length = 10 |
|  | HOME_PHONE | CHAR | 20 | Communication Number |
|  | HAVE_SEC_EMPLOY | NUMC | 1 | P902 - Secondary employment approval |
|  | CURR_REC_TREAT | NUMC | 1 | P902 - Currently Receiving Treatment |
|  | WHAT_TREATMENT_WILL_YOU_BE | CHAR | 255 | Char 255 Lower Case |

### ZIM_INC_P902_INJ

- File: `ZIM_INC_P902_INJ_fields.json`
- Object type: `TRANSP`
- Field count: **8**
- Primary key: **MANDT, PERNR, BP_NUMBER, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | BP_NUMBER | CHAR | 12 | Unique Blue Portal number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | P902 - Sequence Number |
|  | INJURY_SUBTYPE | CHAR | 32 | New System ID |
|  | BODILY_LOCATION_SUBTYPE | CHAR | 32 | New System ID |
|  | MAIN_INJURY | CHAR | 1 | Character Field Length 1 |

### ZIM_INC_P902_INJ_SF

- File: `ZIM_INC_P902_INJ_SF_fields.json`
- Object type: `INTTAB`
- Field count: **10**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | MANDT | CLNT | 3 | Client |
|  | PERNR | NUMC | 8 | Personnel Number |
|  | BP_NUMBER | CHAR | 12 | Unique Blue Portal number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | SEQ_NO | NUMC | 3 | P902 - Sequence Number |
|  | INJURY_SUBTYPE | CHAR | 32 | New System ID |
|  | BODILY_LOCATION_SUBTYPE | CHAR | 32 | New System ID |
|  | MAIN_INJURY | CHAR | 1 | Character Field Length 1 |
|  | BODY | CHAR | 255 | New body location code |
|  | INJURY | CHAR | 255 | Nature of Injury |

### ZIM_INC_P902_INL

- File: `ZIM_INC_P902_INL_fields.json`
- Object type: `TRANSP`
- Field count: **12**
- Primary key: **MANDT, PERNR, BP_NUMBER, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | BP_NUMBER | CHAR | 12 | Unique Blue Portal number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | P902 - Sequence Number |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | INJURY_SUBTYPE | CHAR | 32 | New System ID |
|  | BODILY_LOCATION_SUBTYPE | CHAR | 32 | New System ID |
|  | MAIN_INJURY | CHAR | 1 | Character Field Length 1 |

### ZIM_INS

- File: `ZIM_INS_fields.json`
- Object type: `TRANSP`
- Field count: **2**
- Primary key: **MANDT, INSURER**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | INSURER | CHAR | 10 | OLIMS - Insurer Code |

### ZIM_INST

- File: `ZIM_INST_fields.json`
- Object type: `TRANSP`
- Field count: **4**
- Primary key: **MANDT, SPRSL, INSURER**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | SPRSL | LANG | 1 | Language Key |
| Y | INSURER | CHAR | 10 | OLIMS - Insurer Code |
|  | INSURER_DESC | CHAR | 30 | OLIMS - Insurer Name |

### ZIM_INS_CONT

- File: `ZIM_INS_CONT_fields.json`
- Object type: `TRANSP`
- Field count: **7**
- Primary key: **MANDT, INSURER, CONTACT**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | INSURER | CHAR | 10 | OLIMS - Insurer Code |
| Y | CONTACT | NUMC | 5 | OLIMS - Insurer Contact Code |
|  | NAME | CHAR | 60 | OLIMS - Insurer Contact Name |
|  | PHONE | CHAR | 20 | Communication Number |
|  | FAX | CHAR | 20 | Communication Number |
|  | EMAIL | CHAR | 241 | Communication: Long Identification/Number |

### ZIM_IN_ACT

- File: `ZIM_IN_ACT_fields.json`
- Object type: `TRANSP`
- Field count: **7**
- Primary key: **MANDT, PERNR, INCIDENT, CONTACT_TYPE, CONT_ACT_CODE**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | CONTACT_TYPE | CHAR | 1 | OLIMS - Contact Type |
| Y | CONT_ACT_CODE | NUMC | 3 | OLIMS - Contact Action Code |
|  | CONT_ACT_COMP | CHAR | 1 | OLIMS - Contact Action Performed |
|  | CONT_ACT_DATE | DATS | 8 | OLIMS - Date Action Performed |

### ZIM_IN_ACT_LOG

- File: `ZIM_IN_ACT_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **11**
- Primary key: **MANDT, PERNR, INCIDENT, CONTACT_TYPE, CONT_ACT_CODE, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | CONTACT_TYPE | CHAR | 1 | OLIMS - Contact Type |
| Y | CONT_ACT_CODE | NUMC | 3 | OLIMS - Contact Action Code |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | CONT_ACT_COMP | CHAR | 1 | OLIMS - Contact Action Performed |
|  | CONT_ACT_DATE | DATS | 8 | OLIMS - Date Action Performed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_CAP

- File: `ZIM_IN_CAP_fields.json`
- Object type: `TRANSP`
- Field count: **35**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | MED_PRAC | NUMC | 10 | OLIMS - Health Professional Code |
|  | MC_DATE | DATS | 8 | OLIMS - Workcover Certificate Date |
|  | CATEGORY | CHAR | 1 | OLIMS - Certificate of Capacity Category |
|  | FIRST_SEEN | DATS | 8 | OLIMS - First Seen at Practice |
|  | CONSISTENT | CHAR | 1 | OLIMS - Injury Consistent with Description of Cause |
|  | POSN_DESC | CHAR | 1 | OLIMS - Position Description Required |
|  | STATUS | CHAR | 1 | OLIMS - Certificate of Capacity Status |
|  | DATE_FROM | DATS | 8 | OLIMS - MC Date From |
|  | DATE_TO | DATS | 8 | OLIMS - MC Date To |
|  | EST_TIME_RTW | CHAR | 80 | OLIMS - Estimated Time to Return to Work |
|  | FACT_DELAY | CHAR | 80 | OLIMS - Factors Delaying Recovery |
|  | REF_REHAB_PROV | CHAR | 1 | OLIMS - Referral to Workplace Rehab Provider |
|  | CAP_HOURS1 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS1 | CHAR | 1 | OLIMS - Capabilities for Days/Week |
|  | CAP_HOURS2 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS2 | CHAR | 1 | OLIMS - Capabilities for Days/Week |
|  | LIFTING | CHAR | 60 | OLIMS - Lifting Capabilities |
|  | PUSHING | CHAR | 60 | OLIMS - Pushing/Pulling Capabilities |
|  | SITTING | CHAR | 60 | OLIMS - Sitting Capabilities |
|  | STANDING | CHAR | 60 | OLIMS - Standing Capabilities |
|  | DRIVING | CHAR | 60 | OLIMS - Driving Capabilities |
|  | BENDING | CHAR | 60 | OLIMS - Bending/Twisting/Squatting Capabilities |
|  | NEXT_REV_DATE | DATS | 8 | OLIMS - Next Review Date |
|  | INACTIVE | CHAR | 1 | OLIMS - MC Inactive |
|  | NTD_SIGN | CHAR | 1 | OLIMS - MC Signed by the NTD |
|  | EMP_SIGN | CHAR | 1 | OLIMS - MC Signed by the Employee |
|  | EMP_SIGN_DATE | DATS | 8 | OLIMS - Capacity - Emp Sign Date |
|  | PAID_EMP | CHAR | 1 | OLIMS - Engaged in Paid Employment |
|  | CAP_SENT | DATS | 8 | OLIMS - Certificate of Capacity Date Sent to EML |
|  | WORKCOVER | CHAR | 1 | OLIMS - Workcover Certificate has been Received |
|  | COVID_CERT | CHAR | 1 | OLIMS - COVID Certificate |

### ZIM_IN_CAP_LOG

- File: `ZIM_IN_CAP_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **39**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | MED_PRAC | NUMC | 10 | OLIMS - Health Professional Code |
|  | MC_DATE | DATS | 8 | OLIMS - Workcover Certificate Date |
|  | CATEGORY | CHAR | 1 | OLIMS - Certificate of Capacity Category |
|  | FIRST_SEEN | DATS | 8 | OLIMS - First Seen at Practice |
|  | CONSISTENT | CHAR | 1 | OLIMS - Injury Consistent with Description of Cause |
|  | POSN_DESC | CHAR | 1 | OLIMS - Position Description Required |
|  | STATUS | CHAR | 1 | OLIMS - Certificate of Capacity Status |
|  | DATE_FROM | DATS | 8 | OLIMS - MC Date From |
|  | DATE_TO | DATS | 8 | OLIMS - MC Date To |
|  | EST_TIME_RTW | CHAR | 80 | OLIMS - Estimated Time to Return to Work |
|  | FACT_DELAY | CHAR | 80 | OLIMS - Factors Delaying Recovery |
|  | REF_REHAB_PROV | CHAR | 1 | OLIMS - Referral to Workplace Rehab Provider |
|  | CAP_HOURS1 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS1 | CHAR | 1 | OLIMS - Capabilities for Days/Week |
|  | CAP_HOURS2 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS2 | CHAR | 1 | OLIMS - Capabilities for Days/Week |
|  | LIFTING | CHAR | 60 | OLIMS - Lifting Capabilities |
|  | PUSHING | CHAR | 60 | OLIMS - Pushing/Pulling Capabilities |
|  | SITTING | CHAR | 60 | OLIMS - Sitting Capabilities |
|  | STANDING | CHAR | 60 | OLIMS - Standing Capabilities |
|  | DRIVING | CHAR | 60 | OLIMS - Driving Capabilities |
|  | BENDING | CHAR | 60 | OLIMS - Bending/Twisting/Squatting Capabilities |
|  | NEXT_REV_DATE | DATS | 8 | OLIMS - Next Review Date |
|  | INACTIVE | CHAR | 1 | OLIMS - MC Inactive |
|  | NTD_SIGN | CHAR | 1 | OLIMS - MC Signed by the NTD |
|  | EMP_SIGN | CHAR | 1 | OLIMS - MC Signed by the Employee |
|  | EMP_SIGN_DATE | DATS | 8 | OLIMS - Capacity - Emp Sign Date |
|  | PAID_EMP | CHAR | 1 | OLIMS - Engaged in Paid Employment |
|  | CAP_SENT | DATS | 8 | OLIMS - Certificate of Capacity Date Sent to EML |
|  | WORKCOVER | CHAR | 1 | OLIMS - Workcover Certificate has been Received |
|  | COVID_CERT | CHAR | 1 | OLIMS - COVID Certificate |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_CERT

- File: `ZIM_IN_CERT_fields.json`
- Object type: `TRANSP`
- Field count: **31**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | MED_PRAC | NUMC | 10 | OLIMS - Health Professional Code |
|  | MC_DATE | DATS | 8 | OLIMS - Workcover Certificate Date |
|  | CATEGORY | CHAR | 1 | OLIMS - Medical Certificate Category |
|  | TREAT_REV_DATE | DATS | 8 | OLIMS - MC Treatment Review Date |
|  | STATUS | CHAR | 2 | OLIMS - Medical Certificate Status |
|  | DATE_FROM | DATS | 8 | OLIMS - MC Date From |
|  | DATE_TO | DATS | 8 | OLIMS - MC Date To |
|  | ASS_DUTIES | CHAR | 1 | OLIMS - Medical Certificate Assessment of Workplace Duties |
|  | EXAM_DATE | DATS | 8 | OLIMS - MC Date of Examination |
|  | CAP_HOURS1 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS1 | CHAR | 1 | OLIMS - Capabilities for Days/Week |
|  | CAP_HOURS2 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS2 | CHAR | 1 | OLIMS - Capabilities for Days/Week |
|  | LIFTING | CHAR | 60 | OLIMS - Lifting Capabilities |
|  | WALKING | CHAR | 60 | OLIMS - Walking Capabilities |
|  | SITTING | CHAR | 60 | OLIMS - Sitting Capabilities |
|  | STANDING | CHAR | 60 | OLIMS - Standing Capabilities |
|  | TRAVELLING | CHAR | 60 | OLIMS - Travelling Capabilities |
|  | KEYING | CHAR | 60 | OLIMS - Keying Capabilities |
|  | FITNESS_REV_DATE | DATS | 8 | OLIMS - MC Fitness Review Date |
|  | INACTIVE | CHAR | 1 | OLIMS - MC Inactive |
|  | NTD_SIGN | CHAR | 1 | OLIMS - MC Signed by the NTD |
|  | EMP_SIGN | CHAR | 1 | OLIMS - MC Signed by the Employee |
|  | WORKCOVER | CHAR | 1 | OLIMS - Workcover Certificate has been Received |
|  | PRO_RTWP_DATE | DATS | 8 | OLIMS - MC Proposed R@WP Date |
|  | MC_SENT | DATS | 8 | OLIMS - Medical Certificate Date Sent to EML |
|  | COVID_CERT | CHAR | 1 | OLIMS - COVID Certificate |

### ZIM_IN_CERT_BEN

- File: `ZIM_IN_CERT_BEN_fields.json`
- Object type: `TRANSP`
- Field count: **5**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | MC_BEN_STATUS | CHAR | 1 | OLIMS - Change in MC Status |

### ZIM_IN_CERT_LOG

- File: `ZIM_IN_CERT_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **35**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | MED_PRAC | NUMC | 10 | OLIMS - Health Professional Code |
|  | MC_DATE | DATS | 8 | OLIMS - Workcover Certificate Date |
|  | CATEGORY | CHAR | 1 | OLIMS - Medical Certificate Category |
|  | TREAT_REV_DATE | DATS | 8 | OLIMS - MC Treatment Review Date |
|  | STATUS | CHAR | 2 | OLIMS - Medical Certificate Status |
|  | DATE_FROM | DATS | 8 | OLIMS - MC Date From |
|  | DATE_TO | DATS | 8 | OLIMS - MC Date To |
|  | ASS_DUTIES | CHAR | 1 | OLIMS - Medical Certificate Assessment of Workplace Duties |
|  | EXAM_DATE | DATS | 8 | OLIMS - MC Date of Examination |
|  | CAP_HOURS1 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS1 | CHAR | 1 | OLIMS - Capabilities for Days/Week |
|  | CAP_HOURS2 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS2 | CHAR | 1 | OLIMS - Capabilities for Days/Week |
|  | LIFTING | CHAR | 60 | OLIMS - Lifting Capabilities |
|  | WALKING | CHAR | 60 | OLIMS - Walking Capabilities |
|  | SITTING | CHAR | 60 | OLIMS - Sitting Capabilities |
|  | STANDING | CHAR | 60 | OLIMS - Standing Capabilities |
|  | TRAVELLING | CHAR | 60 | OLIMS - Travelling Capabilities |
|  | KEYING | CHAR | 60 | OLIMS - Keying Capabilities |
|  | FITNESS_REV_DATE | DATS | 8 | OLIMS - MC Fitness Review Date |
|  | INACTIVE | CHAR | 1 | OLIMS - MC Inactive |
|  | NTD_SIGN | CHAR | 1 | OLIMS - MC Signed by the NTD |
|  | EMP_SIGN | CHAR | 1 | OLIMS - MC Signed by the Employee |
|  | WORKCOVER | CHAR | 1 | OLIMS - Workcover Certificate has been Received |
|  | PRO_RTWP_DATE | DATS | 8 | OLIMS - MC Proposed R@WP Date |
|  | MC_SENT | DATS | 8 | OLIMS - Medical Certificate Date Sent to EML |
|  | COVID_CERT | CHAR | 1 | OLIMS - COVID Certificate |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_CLAIM

- File: `ZIM_IN_CLAIM_fields.json`
- Object type: `TRANSP`
- Field count: **13**
- Primary key: **MANDT, PERNR, INCIDENT, CLAIM_TYPE, BEGDA, ENDDA**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | CLAIM_TYPE | CHAR | 1 | OLIMS - Claim Type |
| Y | BEGDA | DATS | 8 | Start Date |
| Y | ENDDA | DATS | 8 | End Date |
|  | DUTY_DET | CHAR | 1 | OLIMS - Claim Duty Determination |
|  | STAT | CHAR | 1 | Claim status code |
|  | REASON_CLOSURE | CHAR | 1 | OLIMS - EPSS Reason for Closure |
|  | CLAIM_DESC | CHAR | 80 | OLIMS - Claim Status Description |
|  | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | SENT_DATE | DATS | 8 | OLIMS - Claim Status Sent Date |
|  | DATE_UPDATED | DATS | 8 | Date Processed |

### ZIM_IN_CLAIM_LOG

- File: `ZIM_IN_CLAIM_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **17**
- Primary key: **MANDT, PERNR, INCIDENT, CLAIM_TYPE, BEGDA, ENDDA, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | CLAIM_TYPE | CHAR | 1 | OLIMS - Claim Type |
| Y | BEGDA | DATS | 8 | Start Date |
| Y | ENDDA | DATS | 8 | End Date |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | DUTY_DET | CHAR | 1 | OLIMS - Claim Duty Determination |
|  | STAT | CHAR | 1 | Claim status code |
|  | REASON_CLOSURE | CHAR | 1 | OLIMS - EPSS Reason for Closure |
|  | CLAIM_DESC | CHAR | 80 | OLIMS - Claim Status Description |
|  | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | SENT_DATE | DATS | 8 | OLIMS - Claim Status Sent Date |
|  | DATE_UPDATED | DATS | 8 | Date Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_CM

- File: `ZIM_IN_CM_fields.json`
- Object type: `TRANSP`
- Field count: **50**
- Primary key: **MANDT, PERNR, INCIDENT**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
|  | WC_STATUS | CHAR | 1 | OLIMS - Workers Compensation Status |
|  | WC_ADVISOR | NUMC | 8 | OLIMS - Workers Compensation Advisor |
|  | WC_CLOSE_DATE | DATS | 8 | OLIMS - Workers Compensation Closure Date |
|  | DAY_271 | DATS | 8 | OLIMS - The 271 Date |
|  | WC_END_DATE | DATS | 8 | OLIMS - Workers Compensation End Date |
|  | IP_STATUS | CHAR | 1 | DD - IP Claim Status |
|  | IP_ADVISOR | NUMC | 8 | OLIMS - Income Protection Advisor |
|  | IP_WCLMN | CHAR | 15 | OLIMS - Income Protection Claim Number |
|  | IP_CLOSE_DATE | DATS | 8 | OLIMS - Income Protection Closure Date |
|  | IP_START_DATE | DATS | 8 | OLIMS - Income Protection Start Date |
|  | IP_END_DATE | DATS | 8 | OLIMS - Income Protection End Date |
|  | SI_STATUS | CHAR | 1 | OLIMS - Self Insured Status |
|  | SI_ADVISOR | NUMC | 8 | OLIMS - Self Insured Advisor |
|  | SI_WCLMN | CHAR | 15 | OLIMS - Self Insured Claim Number |
|  | SI_CLOSE_DATE | DATS | 8 | OLIMS - Self Insured Closure Date |
|  | DISABLEMENT_DATE | DATS | 8 | OLIMS - Date of Disablement |
|  | SECT_40_EXT | CHAR | 1 | OLIMS - Employee on Section 40 External |
|  | CM_CLASS | CHAR | 1 | OLIMS - CM Classifications |
|  | RECUR | CHAR | 1 | OLIMS - CM Recurring Injury |
|  | RECUR_DATE | DATS | 8 | OLIMS - CM Recurring Injury Date |
|  | CLAIM_REVIEW | CHAR | 1 | OLIMS - CM Claim Review |
|  | CLAIM_REVIEW_DT | DATS | 8 | OLIMS - CM Claim Review Date |
|  | PID_DATE | DATS | 8 | OLIMS - Pre Injuries Duties Date |
|  | DEPEND_SENT | DATS | 8 | OLIMS - Date Dependent Stat Dec Sent to Employee |
|  | USE_COMP | CHAR | 1 | OLIMS - Use Comparable Earnings |
|  | USE_PLAN_HOURS | CHAR | 1 | OLIMS - Use Planned Hours |
|  | PLAN_HOURS_DATE | DATS | 8 | OLIMS - Use Planned Hours Date |
|  | IP_TYPE | CHAR | 1 | OLIMS - Income Protection Type |
|  | DUTY_DET | CHAR | 1 | OLIMS - Claim Duty Determination |
|  | EMP_SENT_DATE | DATS | 8 | OLIMS - Employer Statement Sent Date |
|  | DEF_CLAIM | CHAR | 1 | OLIMS - Default Claim |
|  | UNSWORN_CLAIM | CHAR | 1 | Unsworn Claim |
|  | TRANS_CLAIM | CHAR | 1 | Transitional Claim |
|  | TOPUP_END_DATE | DATS | 8 | OLIMS - Top-up End Date |
|  | CANNOT_WORK | CHAR | 1 | OLIMS - Cannot Work for NSWPF |
|  | EPSS_START_DATE_P1 | DATS | 8 | OLIMS - EPSS Period 1 Start Date |
|  | EPSS_END_DATE_P1 | DATS | 8 | OLIMS - EPSS Period 1 End Date |
|  | EPSS_START_DATE_P2 | DATS | 8 | OLIMS - EPSS Period 2 Start Date |
|  | EPSS_END_DATE_P2 | DATS | 8 | OLIMS - EPSS Period 2 End Date |
|  | TRANSITION_TO_EPSS | CHAR | 1 | OLIMS - Transition to EPSS |
|  | EPSS_LAST_CHANGED_BY | CHAR | 12 | OLIMS - Transition to EPSS Last Changed By |
|  | EPSS_LAST_CHANGED_ON | DATS | 8 | OLIMS - Transition to EPSS Last Changed On |
|  | EPSS_LAST_CHANGED_TIME | TIMS | 6 | OLIMS - Transition to EPSS Time of Last Change |
|  | EPSS_EXAMINER_ID | NUMC | 8 | OLIMS - EPSS Examiner ID |
|  | EPSS_SUPERVISOR | NUMC | 8 | OLIMS - EPSS Supervisor |
|  | EPSS_INIT_START_DATE_P2 | DATS | 8 | OLIMS - EPSS Period 2 Start Date |
|  | EPSS_INIT_END_DATE_P2 | DATS | 8 | OLIMS - EPSS Period 2 End Date |

### ZIM_IN_CM_LOG

- File: `ZIM_IN_CM_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **47**
- Primary key: **MANDT, PERNR, INCIDENT, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | WC_STATUS | CHAR | 1 | OLIMS - Workers Compensation Status |
|  | WC_ADVISOR | NUMC | 8 | OLIMS - Workers Compensation Advisor |
|  | DAY_271 | DATS | 8 | OLIMS - The 271 Date |
|  | WC_CLOSE_DATE | DATS | 8 | OLIMS - Workers Compensation Closure Date |
|  | WC_END_DATE | DATS | 8 | OLIMS - Workers Compensation End Date |
|  | IP_STATUS | CHAR | 1 | DD - IP Claim Status |
|  | IP_ADVISOR | NUMC | 8 | OLIMS - Income Protection Advisor |
|  | IP_WCLMN | CHAR | 15 | OLIMS - Income Protection Claim Number |
|  | IP_CLOSE_DATE | DATS | 8 | OLIMS - Income Protection Closure Date |
|  | IP_START_DATE | DATS | 8 | OLIMS - Income Protection Start Date |
|  | IP_END_DATE | DATS | 8 | OLIMS - Income Protection End Date |
|  | SI_STATUS | CHAR | 1 | OLIMS - Self Insured Status |
|  | SI_ADVISOR | NUMC | 8 | OLIMS - Self Insured Advisor |
|  | SI_WCLMN | CHAR | 15 | OLIMS - Self Insured Claim Number |
|  | SI_CLOSE_DATE | DATS | 8 | OLIMS - Self Insured Closure Date |
|  | DISABLEMENT_DATE | DATS | 8 | OLIMS - Date of Disablement |
|  | SECT_40_EXT | CHAR | 1 | OLIMS - Employee on Section 40 External |
|  | CM_CLASS | CHAR | 1 | OLIMS - CM Classifications |
|  | RECUR | CHAR | 1 | OLIMS - CM Recurring Injury |
|  | RECUR_DATE | DATS | 8 | OLIMS - CM Recurring Injury Date |
|  | CLAIM_REVIEW | CHAR | 1 | OLIMS - CM Claim Review |
|  | CLAIM_REVIEW_DT | DATS | 8 | OLIMS - CM Claim Review Date |
|  | PID_DATE | DATS | 8 | OLIMS - Pre Injuries Duties Date |
|  | DEPEND_SENT | DATS | 8 | OLIMS - Date Dependent Stat Dec Sent to Employee |
|  | USE_COMP | CHAR | 1 | OLIMS - Use Comparable Earnings |
|  | USE_PLAN_HOURS | CHAR | 1 | OLIMS - Use Planned Hours |
|  | PLAN_HOURS_DATE | DATS | 8 | OLIMS - Use Planned Hours Date |
|  | IP_TYPE | CHAR | 1 | OLIMS - Income Protection Type |
|  | DUTY_DET | CHAR | 1 | OLIMS - Claim Duty Determination |
|  | EMP_SENT_DATE | DATS | 8 | OLIMS - Employer Statement Sent Date |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | DEF_CLAIM | CHAR | 1 | OLIMS - Default Claim |
|  | UNSWORN_CLAIM | CHAR | 1 | Unsworn Claim |
|  | TRANS_CLAIM | CHAR | 1 | Transitional Claim |
|  | TOPUP_END_DATE | DATS | 8 | OLIMS - Top-up End Date |
|  | CANNOT_WORK | CHAR | 1 | OLIMS - Cannot Work for NSWPF |
|  | EPSS_START_DATE_P1 | DATS | 8 | OLIMS - EPSS Period 1 Start Date |
|  | EPSS_END_DATE_P1 | DATS | 8 | OLIMS - EPSS Period 1 End Date |
|  | EPSS_START_DATE_P2 | DATS | 8 | OLIMS - EPSS Period 2 Start Date |
|  | EPSS_END_DATE_P2 | DATS | 8 | OLIMS - EPSS Period 2 End Date |
|  | TRANSITION_TO_EPSS | CHAR | 1 | OLIMS - Transition to EPSS |

### ZIM_IN_COMP

- File: `ZIM_IN_COMP_fields.json`
- Object type: `TRANSP`
- Field count: **7**
- Primary key: **MANDT, PERNR, INCIDENT, BEGDA, ENDDA**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | BEGDA | DATS | 8 | Start Date |
| Y | ENDDA | DATS | 8 | End Date |
|  | AMOUNT | DEC | 11 | OLIMS - Comparable Earnings Amount |
|  | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |

### ZIM_IN_COMP_LOG

- File: `ZIM_IN_COMP_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **11**
- Primary key: **MANDT, PERNR, INCIDENT, BEGDA, ENDDA, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | BEGDA | DATS | 8 | Start Date |
| Y | ENDDA | DATS | 8 | End Date |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | AMOUNT | DEC | 11 | OLIMS - Comparable Earnings Amount |
|  | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_DEPEXTLOG

- File: `ZIM_IN_DEPEXTLOG_fields.json`
- Object type: `TRANSP`
- Field count: **15**
- Primary key: **MANDT, PERNR, INCIDENT, EMPLOY_SEQNO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | EMPLOY_SEQNO | NUMC | 3 |  |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | DESC_EXT_ORG | CHAR | 60 | OLIMS - Deployment Description of Ext Org |
|  | START_DATE | DATS | 8 | OLIMS - Deployment Start Date |
|  | END_DATE | DATS | 8 | OLIMS - Deployment End Date |
|  | REVIEW_DATE | DATS | 8 | OLIMS - Deployment Review Date |
|  | CORR_SENT_DATE | DATS | 8 | OLIMS - Deployment Correspondence Sent Date |
|  | COMPLETE | CHAR | 1 | OLIMS - Deployment Complete |
|  | SAP_UPDATED | CHAR | 1 | OLIMS - Deployment SAP Updated |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_DEPLOY

- File: `ZIM_IN_DEPLOY_fields.json`
- Object type: `TRANSP`
- Field count: **60**
- Primary key: **MANDT, PERNR, INCIDENT**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
|  | REF_SENT | CHAR | 1 | OLIMS - Deployment Referral Sent |
|  | REF_SENT_DATE | DATS | 8 | OLIMS - Deployment Referral Sent Date |
|  | SIGN_REF_RECD | CHAR | 1 | OLIMS - Deployment Signed Referral Received |
|  | SIGN_REF_RECD_DT | DATS | 8 | OLIMS - Deployment Signed Referral Received Date |
|  | CHECKLST_RECD | CHAR | 1 | OLIMS - Deployment Checklist Received |
|  | CHECKLST_RECD_DT | DATS | 8 | OLIMS - Deployment Checklist Received Date |
|  | REF_COMPLETE | CHAR | 1 | OLIMS - Deployment Referral Com |
|  | REF_COMPLETE_DT | DATS | 8 | OLIMS - Deployment Referral Complete Date |
|  | ADDTL_INFO_REQD | CHAR | 1 | OLIMS - Deployment Additional Info Required |
|  | ADDTL_INFO_DT | DATS | 8 | OLIMS - Deployment Additional Info Date |
|  | RA_CHKLST_RECD | CHAR | 1 | OLIMS - Deployment Risk Assessment Checklist Received |
|  | RA_CHKLST_DT | DATS | 8 | OLIMS - Deployment Risk Assessment Checklist Received Date |
|  | CASE_ACCEPTED | CHAR | 1 | OLIMS - Deployment Case Accepted |
|  | CASE_ACCEPTED_DT | DATS | 8 | OLIMS - Deployment Case Accepted Date |
|  | CASE_OFFICER | NUMC | 8 | Personnel Number |
|  | FIRST_CONTACT_DT | DATS | 8 | OLIMS - Deployment Employee First Contact Date |
|  | LAST_CONTACT_DT | DATS | 8 | OLIMS - Deployment Employee Last Contact Date |
|  | CMD_NOTIFY_DT | DATS | 8 | OLIMS - Deployment Command Notified of Case Date |
|  | FIRST_MTG_DT | DATS | 8 | OLIMS - Deployment Initial Meeting Date |
|  | FIRST_MTG_TM | TIMS | 6 | OLIMS - Deployment Initial Meeting Time |
|  | MTG_CORR_SENT_DT | DATS | 8 | OLIMS - Deployment  Mtg Correspondence Sent Date |
|  | NEXT_MTG_DT | DATS | 8 | OLIMS - Deployment Next Meeting Date |
|  | NEXT_MTG_TM | TIMS | 6 | OLIMS - Deployment Next Meeting Time |
|  | MTH_CASE_REV_DT | DATS | 8 | OLIMS - Deployment 3 Month Case Review Date |
|  | MTH_CASE_REV_TM | TIMS | 6 | OLIMS - Deployment 3 Month Case Review Time |
|  | MTH_CREV_SENT_DT | DATS | 8 | OLIMS - Deployment  3Month Case Review Corr Sent Date |
|  | NEXT_CASE_REV_DT | DATS | 8 | OLIMS - Deployment Next Case Review Date |
|  | NEXT_CASE_REV_TM | TIMS | 6 | OLIMS - Deployment Next Case Review Time |
|  | GOALS_SENT_DT | DATS | 8 | OLIMS - Deployment  Agreed Goals Sent Date |
|  | PLACE_TYPE | CHAR | 2 | OLIMS - Deployment Placement Type |
|  | PLACE_TYPE_DT | DATS | 8 | OLIMS - Deployment  Placement Type Date Set |
|  | PROP_POS_SENT_DT | DATS | 8 | OLIMS - Deployment  Last Proposed Positions Sent date |
|  | RESP_RECD_DT | DATS | 8 | OLIMS - Deployment  Last Response Received Date |
|  | NO_POS_AVAIL | CHAR | 1 | OLIMS - Deployment No Position Available |
|  | NO_POS_AVAIL_DT | DATS | 8 | OLIMS - Deployment  No Position Available Date |
|  | REGION_RESP | CHAR | 1 | OLIMS - Deployment Region Response |
|  | REGION_RESP_RECD | CHAR | 1 | OLIMS - Deployment Region Response Received |
|  | REGION_RECD_DT | DATS | 8 | OLIMS - Deployment  Region Received Date |
|  | MTH_MTG_HELD | CHAR | 1 | OLIMS - Deployment 3 Month Meeting Held |
|  | REDUCTION_RANK | CHAR | 1 | OLIMS - Deployment Reduction Rank |
|  | ADMIN_POS | CHAR | 1 | OLIMS - Deployment Administrative Position |
|  | ACCPT_POS_NO | NUMC | 8 | Position |
|  | POS_DT_ACCPTD | DATS | 8 | OLIMS - Deployment  Position Date Accepted |
|  | CNFRM_POS_SENTDT | DATS | 8 | OLIMS - Deployment Confirmation of Position Sent Date |
|  | MED_DISCHRG_SRT | CHAR | 1 | OLIMS - Deployment Medical Discharge Commenced |
|  | COMD_REP_SENT_DT | DATS | 8 | OLIMS - Deployment  Command Report Sent Date |
|  | COMD_REP_RECD_DT | DATS | 8 | OLIMS - Deployment  Command Report Received Date |
|  | DATE_CLOSED | DATS | 8 | OLIMS - Deployment  Date Closed |
|  | SIMA_CNFRM | CHAR | 1 | OLIMS - Deployment SIMA Confirmed |
|  | CLASS_MSG | CHAR | 40 |  |
|  | DEPLOY_STATUS | CHAR | 1 | OLIMS - Deployment Status |
|  | CLOSE_CONF | CHAR | 1 | OLIMS - Confirm Deployment File Closed |
|  | FINAL_MTG_DT | DATS | 8 | OLIMS - Deployment Final Meeting Date |
|  | DEP_RESULT | CHAR | 1 | OLIMS - Deployment Result |
|  | STRATEGIES | CHAR | 128 | OLIMS - Strategies/Actions |
|  | STRATEGIES_1 | CHAR | 128 | OLIMS - Strategies/Actions |
|  | PROV_CODE | NUMC | 10 | OLIMS - Provider Code |

### ZIM_IN_DEPLOYLOG

- File: `ZIM_IN_DEPLOYLOG_fields.json`
- Object type: `TRANSP`
- Field count: **64**
- Primary key: **MANDT, PERNR, INCIDENT, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | REF_SENT | CHAR | 1 | OLIMS - Deployment Referral Sent |
|  | REF_SENT_DATE | DATS | 8 | OLIMS - Deployment Referral Sent Date |
|  | SIGN_REF_RECD | CHAR | 1 | OLIMS - Deployment Signed Referral Received |
|  | SIGN_REF_RECD_DT | DATS | 8 | OLIMS - Deployment Signed Referral Received Date |
|  | CHECKLST_RECD | CHAR | 1 | OLIMS - Deployment Checklist Received |
|  | CHECKLST_RECD_DT | DATS | 8 | OLIMS - Deployment Checklist Received Date |
|  | REF_COMPLETE | CHAR | 1 | OLIMS - Deployment Referral Com |
|  | REF_COMPLETE_DT | DATS | 8 | OLIMS - Deployment Referral Complete Date |
|  | ADDTL_INFO_REQD | CHAR | 1 | OLIMS - Deployment Additional Info Required |
|  | ADDTL_INFO_DT | DATS | 8 | OLIMS - Deployment Additional Info Date |
|  | RA_CHKLST_RECD | CHAR | 1 | OLIMS - Deployment Checklist Received |
|  | RA_CHKLST_DT | DATS | 8 | OLIMS - Deployment Checklist Received Date |
|  | CASE_ACCEPTED | CHAR | 1 | OLIMS - Deployment Case Accepted |
|  | CASE_ACCEPTED_DT | DATS | 8 | OLIMS - Deployment Case Accepted Date |
|  | CASE_OFFICER | NUMC | 8 | Personnel Number |
|  | FIRST_CONTACT_DT | DATS | 8 | OLIMS - Deployment Employee First Contact Date |
|  | LAST_CONTACT_DT | DATS | 8 | OLIMS - Deployment Employee Last Contact Date |
|  | CMD_NOTIFY_DT | DATS | 8 | OLIMS - Deployment Command Notified of Case Date |
|  | FIRST_MTG_DT | DATS | 8 | OLIMS - Deployment Initial Meeting Date |
|  | FIRST_MTG_TM | TIMS | 6 | OLIMS - Deployment Initial Meeting Time |
|  | MTG_CORR_SENT_DT | DATS | 8 | OLIMS - Deployment  Mtg Correspondence Sent Date |
|  | NEXT_MTG_DT | DATS | 8 | OLIMS - Deployment Next Meeting Date |
|  | NEXT_MTG_TM | TIMS | 6 | OLIMS - Deployment Next Meeting Time |
|  | MTH_CASE_REV_DT | DATS | 8 | OLIMS - Deployment 3 Month Case Review Date |
|  | MTH_CASE_REV_TM | TIMS | 6 | OLIMS - Deployment 3 Month Case Review Time |
|  | MTH_CREV_SENT_DT | DATS | 8 | OLIMS - Deployment  3Month Case Review Corr Sent Date |
|  | NEXT_CASE_REV_DT | DATS | 8 | OLIMS - Deployment Next Case Review Date |
|  | NEXT_CASE_REV_TM | TIMS | 6 | OLIMS - Deployment Next Case Review Time |
|  | GOALS_SENT_DT | DATS | 8 | OLIMS - Deployment  Agreed Goals Sent Date |
|  | PLACE_TYPE | CHAR | 2 | OLIMS - Deployment Placement Type |
|  | PLACE_TYPE_DT | DATS | 8 | OLIMS - Deployment  Placement Type Date Set |
|  | PROP_POS_SENT_DT | DATS | 8 | OLIMS - Deployment  Last Proposed Positions Sent date |
|  | RESP_RECD_DT | DATS | 8 | OLIMS - Deployment  Last Response Received Date |
|  | NO_POS_AVAIL | CHAR | 1 | OLIMS - Deployment No Position Available |
|  | NO_POS_AVAIL_DT | DATS | 8 | OLIMS - Deployment  No Position Available Date |
|  | REGION_RESP | CHAR | 1 | OLIMS - Deployment Region Response |
|  | REGION_RESP_RECD | CHAR | 1 | OLIMS - Deployment Region Response Received |
|  | REGION_RECD_DT | DATS | 8 | OLIMS - Deployment  Region Received Date |
|  | MTH_MTG_HELD | CHAR | 1 | OLIMS - Deployment 3 Month Meeting Held |
|  | REDUCTION_RANK | CHAR | 1 | OLIMS - Deployment Reduction Rank |
|  | ADMIN_POS | CHAR | 1 | OLIMS - Deployment Administrative Position |
|  | ACCPT_POS_NO | NUMC | 8 | Position |
|  | POS_DT_ACCPTD | DATS | 8 | OLIMS - Deployment  Position Date Accepted |
|  | CNFRM_POS_SENTDT | DATS | 8 | OLIMS - Deployment Confirmation of Position Sent Date |
|  | MED_DISCHRG_SRT | CHAR | 1 | OLIMS - Deployment Medical Discharge Commenced |
|  | COMD_REP_SENT_DT | DATS | 8 | OLIMS - Deployment  Command Report Sent Date |
|  | COMD_REP_RECD_DT | DATS | 8 | OLIMS - Deployment  Command Report Received Date |
|  | DATE_CLOSED | DATS | 8 | OLIMS - Deployment  Date Closed |
|  | SIMA_CNFRM | CHAR | 1 | OLIMS - Deployment SIMA Confirmed |
|  | CLASS_MSG | CHAR | 40 |  |
|  | DEPLOY_STATUS | CHAR | 1 | OLIMS - Deployment Status |
|  | CLOSE_CONF | CHAR | 1 | OLIMS - Confirm Deployment File Closed |
|  | FINAL_MTG_DT | DATS | 8 | OLIMS - Deployment Final Meeting Date |
|  | DEP_RESULT | CHAR | 1 | OLIMS - Deployment Result |
|  | STRATEGIES | CHAR | 128 | OLIMS - Strategies/Actions |
|  | STRATEGIES_1 | CHAR | 128 | OLIMS - Strategies/Actions |
|  | PROV_CODE | NUMC | 10 | OLIMS - Provider Code |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_DEPMTGLOG

- File: `ZIM_IN_DEPMTGLOG_fields.json`
- Object type: `TRANSP`
- Field count: **11**
- Primary key: **MANDT, PERNR, INCIDENT, EMPLOY_SEQNO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | EMPLOY_SEQNO | NUMC | 3 |  |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | MTG_DT | DATS | 8 | OLIMS - Deployment Next Meeting Date |
|  | MTG_TM | TIMS | 6 | OLIMS - Deployment Next Meeting Time |
|  | MTG_CONFIRM | CHAR | 1 | OLIMS - Deployment Meeting Confirmation |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_DEPPOSLOG

- File: `ZIM_IN_DEPPOSLOG_fields.json`
- Object type: `TRANSP`
- Field count: **15**
- Primary key: **MANDT, PERNR, INCIDENT, POS_SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | POS_SEQ_NO | NUMC | 8 |  |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | POSITION_NO | NUMC | 8 | Position |
|  | DATE_SENT | DATS | 8 | OLIMS - Deployment  Position Date Sent |
|  | RESEND_DT | DATS | 8 | OLIMS - Deployment  Position Resend Date |
|  | ACCEPTED | CHAR | 1 | OLIMS - Deployment Accepted |
|  | DECLINED | CHAR | 1 | OLIMS - Deployment Declined |
|  | ACC_DEC_DT | DATS | 8 | OLIMS - Deployment  Accept Decline Date |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | RESEND | CHAR | 1 | OLIMS - Deployment Position Resend |

### ZIM_IN_DEPREVLOG

- File: `ZIM_IN_DEPREVLOG_fields.json`
- Object type: `TRANSP`
- Field count: **11**
- Primary key: **MANDT, PERNR, INCIDENT, EMPLOY_SEQNO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | EMPLOY_SEQNO | NUMC | 3 |  |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | REVIEW_DT | DATS | 8 | OLIMS - Deployment Next Case Review Date |
|  | REVIEW_TM | TIMS | 6 | OLIMS - Deployment Next Case Review Time |
|  | REVIEW_CONFIRM | CHAR | 1 | OLIMS - Deployment Review Confirmation |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_DEP_EXT

- File: `ZIM_IN_DEP_EXT_fields.json`
- Object type: `TRANSP`
- Field count: **11**
- Primary key: **MANDT, PERNR, INCIDENT, EMPLOY_SEQNO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | EMPLOY_SEQNO | NUMC | 3 |  |
|  | DESC_EXT_ORG | CHAR | 60 | OLIMS - Deployment Description of Ext Org |
|  | START_DATE | DATS | 8 | OLIMS - Deployment Start Date |
|  | END_DATE | DATS | 8 | OLIMS - Deployment End Date |
|  | REVIEW_DATE | DATS | 8 | OLIMS - Deployment Review Date |
|  | CORR_SENT_DATE | DATS | 8 | OLIMS - Deployment Correspondence Sent Date |
|  | COMPLETE | CHAR | 1 | OLIMS - Deployment Complete |
|  | SAP_UPDATED | CHAR | 1 | OLIMS - Deployment SAP Updated |

### ZIM_IN_DEP_MTG

- File: `ZIM_IN_DEP_MTG_fields.json`
- Object type: `TRANSP`
- Field count: **7**
- Primary key: **MANDT, PERNR, INCIDENT, EMPLOY_SEQNO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | EMPLOY_SEQNO | NUMC | 3 |  |
|  | MTG_DT | DATS | 8 | OLIMS - Deployment Next Meeting Date |
|  | MTG_TM | TIMS | 6 | OLIMS - Deployment Next Meeting Time |
|  | MTG_CONFIRM | CHAR | 1 | OLIMS - Deployment Meeting Confirmation |

### ZIM_IN_DEP_POS

- File: `ZIM_IN_DEP_POS_fields.json`
- Object type: `TRANSP`
- Field count: **11**
- Primary key: **MANDT, PERNR, INCIDENT, POS_SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | POS_SEQ_NO | NUMC | 6 |  |
|  | POSITION_NO | NUMC | 8 | Position |
|  | DATE_SENT | DATS | 8 | OLIMS - Deployment  Position Date Sent |
|  | RESEND_DT | DATS | 8 | OLIMS - Deployment  Position Resend Date |
|  | ACCEPTED | CHAR | 1 | OLIMS - Deployment Accepted |
|  | DECLINED | CHAR | 1 | OLIMS - Deployment Declined |
|  | ACC_DEC_DT | DATS | 8 | OLIMS - Deployment  Accept Decline Date |
|  | RESEND | CHAR | 1 | OLIMS - Deployment Position Resend |

### ZIM_IN_DEP_REV

- File: `ZIM_IN_DEP_REV_fields.json`
- Object type: `TRANSP`
- Field count: **7**
- Primary key: **MANDT, PERNR, INCIDENT, EMPLOY_SEQNO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | EMPLOY_SEQNO | NUMC | 3 |  |
|  | REVIEW_DT | DATS | 8 | OLIMS - Deployment Next Case Review Date |
|  | REVIEW_TM | TIMS | 6 | OLIMS - Deployment Next Case Review Time |
|  | REVIEW_CONFIRM | CHAR | 1 | OLIMS - Deployment Review Confirmation |

### ZIM_IN_DEP_TP

- File: `ZIM_IN_DEP_TP_fields.json`
- Object type: `TRANSP`
- Field count: **10**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | PLACEMENT_TYPE | CHAR | 1 | OLIMS - Deployment Placement Type |
|  | PLANS | NUMC | 8 | Position |
|  | BEGDA | DATS | 8 | OLIMS - Deployment Commencement Date |
|  | ENDDA | DATS | 8 | OLIMS - Deployment Completion Date |
|  | TP_SUPERVISOR | NUMC | 8 | Personnel Number |
|  | TP_OUTCOME | CHAR | 1 | OLIMS - Deployment Trial Outcome |

### ZIM_IN_DEP_TP_L

- File: `ZIM_IN_DEP_TP_L_fields.json`
- Object type: `TRANSP`
- Field count: **14**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | PLACEMENT_TYPE | CHAR | 1 | OLIMS - Deployment Placement Type |
|  | PLANS | NUMC | 8 | Position |
|  | BEGDA | DATS | 8 | OLIMS - Deployment Commencement Date |
|  | ENDDA | DATS | 8 | OLIMS - Deployment Completion Date |
|  | TP_SUPERVISOR | NUMC | 8 | Personnel Number |
|  | TP_OUTCOME | CHAR | 1 | OLIMS - Deployment Trial Outcome |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_DOC

- File: `ZIM_IN_DOC_fields.json`
- Object type: `TRANSP`
- Field count: **11**
- Primary key: **MANDT, PERNR, INCIDENT, DOC_SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | DOC_SEQ_NO | NUMC | 6 | OLIMS - Unique Identifier for the Document Transmission |
|  | LTR_CATEGORY | CHAR | 2 | OLIMS - Document Category |
|  | CORR_CODE | CHAR | 4 | OLIMS - Correspondence Code |
|  | DOC_UNIQUE | CHAR | 12 | OLIMS - Unique Code for Multiple Correspondence |
|  | ATT_DOC_ID | CHAR | 40 | SAP ArchiveLink: Document ID |
|  | BODY_DOC_ID | CHAR | 40 | SAP ArchiveLink: Document ID |
|  | DATE_PROCESSED | DATS | 8 | Date Processed |
|  | FILENAME | CHAR | 132 | OLIMS - Filename of Incoming Document |

### ZIM_IN_DOC_D

- File: `ZIM_IN_DOC_D_fields.json`
- Object type: `TRANSP`
- Field count: **8**
- Primary key: **MANDT, PERNR, INCIDENT, DOC_LINK, SEQ_NO, DOC_SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | DOC_LINK | CHAR | 1 | OLIMS - Activity Document Linked To |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DOC_SEQ_NO | NUMC | 6 | OLIMS - Unique Identifier for the Document Transmission |
|  | DIRECTION | CHAR | 1 | OLIMS - Document Direction |
|  | REF_SEQ_NO | NUMC | 6 | OLIMS - Unique Identifier for the Document Transmission |

### ZIM_IN_DOC_IN

- File: `ZIM_IN_DOC_IN_fields.json`
- Object type: `TRANSP`
- Field count: **9**
- Primary key: **MANDT, PERNR, INCIDENT, DOC_SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | DOC_SEQ_NO | NUMC | 6 | OLIMS - Unique Identifier for the Document Transmission |
|  | LTR_CATEGORY | CHAR | 2 | OLIMS - Document Category |
|  | DOC_UNIQUE | CHAR | 12 | OLIMS - Unique Code for Multiple Correspondence |
|  | FILENAME | CHAR | 132 | OLIMS - Filename of Incoming Document |
|  | ATT_DOC_ID | CHAR | 40 | SAP ArchiveLink: Document ID |
|  | DATE_PROCESSED | DATS | 8 | Date Processed |

### ZIM_IN_DOC_REC

- File: `ZIM_IN_DOC_REC_fields.json`
- Object type: `TRANSP`
- Field count: **13**
- Primary key: **MANDT, PERNR, INCIDENT, DOC_SEQ_NO, REC_SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | DOC_SEQ_NO | NUMC | 6 | OLIMS - Unique Identifier for the Document Transmission |
| Y | REC_SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | USER_CAT | CHAR | 1 | OLIMS - User Category |
|  | USER_CODE | NUMC | 10 | OLIMS - User Code |
|  | USER_NAME | CHAR | 60 | OLIMS - User Name |
|  | DIST_METH | CHAR | 1 | OLIMS - Distribution Method |
|  | EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | FAX | CHAR | 20 | Communication Number |
|  | DATE_PROCESSED | DATS | 8 | Date Processed |
|  | TIME_PROCESSED | TIMS | 6 | Time Processed |

### ZIM_IN_EPB

- File: `ZIM_IN_EPB_fields.json`
- Object type: `TRANSP`
- Field count: **9**
- Primary key: **MANDT, PERNR, INCIDENT, BUCKET**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | BUCKET | CHAR | 1 | Entitlement Period Bucket |
|  | BEGDA | DATS | 8 | Start Date |
|  | ENDDA | DATS | 8 | End Date |
|  | ADJ_WEEKS_TOT | NUMC | 4 | Entitlement Period Bucket Adjustment Weeks |
|  | AEDAT | DATS | 8 | Last Changed On |
|  | AENAM | CHAR | 12 | Name of Person Who Changed Object |

### ZIM_IN_EPSS

- File: `ZIM_IN_EPSS_fields.json`
- Object type: `TRANSP`
- Field count: **7**
- Primary key: **MANDT, PERNR, INCIDENT**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
|  | DISABLEMENT_DATE | DATS | 8 | OLIMS - Date of Disablement |
|  | COMMENCE_P2_PAYMENT | CHAR | 1 | EPSS - Commence EPSS Period 2 Payment |
|  | MOCK_CURRENT_DATE_P1 | DATS | 8 | OLIMS EPSS Period 1 - Mock run date with a future date |
|  | MOCK_CURRENT_DATE_P2 | DATS | 8 | OLIMS EPSS Period 2 - Mock run date with future date |

### ZIM_IN_EPSS_EARN

- File: `ZIM_IN_EPSS_EARN_fields.json`
- Object type: `TRANSP`
- Field count: **13**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 5 | Sequence Number |
|  | EARNING_TYPE | CHAR | 1 | OLIMS - EPSS Earning Type |
|  | BEGDA | DATS | 8 | Start Date |
|  | ENDDA | DATS | 8 | End Date |
|  | EARN_AMOUNT | DEC | 15 | OLIMS - EPSS Earning amount |
|  | DESCRIPTION | CHAR | 80 | Description |
|  | INACTIVE | CHAR | 1 | Deletion Indicator |
|  | UPD_DATE | DATS | 8 | Date |
|  | UPD_TIME | TIMS | 6 | Time |
|  | UPD_USER | CHAR | 12 | User Name |

### ZIM_IN_EPSS_LOG

- File: `ZIM_IN_EPSS_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **10**
- Primary key: **MANDT, PERNR, INCIDENT, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | DISABLEMENT_DATE | DATS | 8 | OLIMS - Date of Disablement |
|  | COMMENCE_P2_PAYMENT | CHAR | 1 | EPSS - Commence EPSS Period 2 Payment |
|  | MOCK_CURRENT_DATE_P1 | DATS | 8 | OLIMS EPSS Period 1 - Mock run date with a future date |
|  | MOCK_CURRENT_DATE_P2 | DATS | 8 | OLIMS EPSS Period 2 - Mock run date with future date |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_EPSS_P2RD

- File: `ZIM_IN_EPSS_P2RD_fields.json`
- Object type: `TRANSP`
- Field count: **11**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 5 | Sequence Number |
|  | BEGDA | DATS | 8 | Start Date |
|  | ENDDA | DATS | 8 | End Date |
|  | DESCRIPTION | CHAR | 80 | Description |
|  | INACTIVE | CHAR | 1 | Deletion Indicator |
|  | UPD_DATE | DATS | 8 | Date |
|  | UPD_TIME | TIMS | 6 | Time |
|  | UPD_USER | CHAR | 12 | User Name |

### ZIM_IN_ERG

- File: `ZIM_IN_ERG_fields.json`
- Object type: `TRANSP`
- Field count: **11**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | ERG_SENT | CHAR | 1 | OLIMS - Ergonomic Assessment Sent |
|  | ERG_SENT_DATE | DATS | 8 | OLIMS - Ergonomic Assessment Sent Date |
|  | ERG_REC_DATE | DATS | 8 | OLIMS - Ergonomic Assessment Received Date |
|  | INSPECT_REQ | CHAR | 1 | OLIMS - Ergonomic Inspection Required |
|  | INSPECT_REF | DATS | 8 | OLIMS - Ergonomic Inspection Referral Date |
|  | INSPECT_EMP | NUMC | 8 | Personnel Number |
|  | INSPECT_COMP | DATS | 8 | OLIMS - Ergonomic Inspection Completion Date |

### ZIM_IN_ERG_LOG

- File: `ZIM_IN_ERG_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **15**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | ERG_SENT | CHAR | 1 | OLIMS - Ergonomic Assessment Sent |
|  | ERG_SENT_DATE | DATS | 8 | OLIMS - Ergonomic Assessment Sent Date |
|  | ERG_REC_DATE | DATS | 8 | OLIMS - Ergonomic Assessment Received Date |
|  | INSPECT_REQ | CHAR | 1 | OLIMS - Ergonomic Inspection Required |
|  | INSPECT_REF | DATS | 8 | OLIMS - Ergonomic Inspection Referral Date |
|  | INSPECT_EMP | NUMC | 8 | Personnel Number |
|  | INSPECT_COMP | DATS | 8 | OLIMS - Ergonomic Inspection Completion Date |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_EXT

- File: `ZIM_IN_EXT_fields.json`
- Object type: `TRANSP`
- Field count: **12**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, EXT_TYPE**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | EXT_TYPE | CHAR | 1 | OLIMS - External Employment Activity Type |
|  | EXT_DATE | DATS | 8 | OLIMS - Date Attempted External Employment |
|  | EMPLOYER | CHAR | 60 | OLIMS - External Employer |
|  | EXT_POSITION | CHAR | 132 | OLIMS - Position/Training Course |
|  | HIRED | CHAR | 1 | OLIMS - Hired in External Position |
|  | BEGDA | DATS | 8 | OLIMS - Training Commencement Date |
|  | ENDDA | DATS | 8 | OLIMS - Training End Date |
|  | RISK | CHAR | 132 | OLIMS - External Employment Risk |

### ZIM_IN_EXT_LOG

- File: `ZIM_IN_EXT_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **16**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, EXT_TYPE, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | EXT_TYPE | CHAR | 1 | OLIMS - External Employment Activity Type |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | EXT_DATE | DATS | 8 | OLIMS - Date Attempted External Employment |
|  | EMPLOYER | CHAR | 60 | OLIMS - External Employer |
|  | EXT_POSITION | CHAR | 132 | OLIMS - Position/Training Course |
|  | HIRED | CHAR | 1 | OLIMS - Hired in External Position |
|  | BEGDA | DATS | 8 | OLIMS - Training Commencement Date |
|  | ENDDA | DATS | 8 | OLIMS - Training End Date |
|  | RISK | CHAR | 132 | OLIMS - External Employment Risk |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_FTC

- File: `ZIM_IN_FTC_fields.json`
- Object type: `TRANSP`
- Field count: **22**
- Primary key: **MANDT, PERNR, INCIDENT**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
|  | INFO_PACK_SENT | CHAR | 1 | OLIMS - FTC Info Pack Sent |
|  | INFO_PACK_DATE | DATS | 8 | OLIMS - FTC Info Pack Sent Date |
|  | EMP_CONT | CHAR | 1 | OLIMS - FTC Employee Contacted |
|  | MD_RPT_COMP | CHAR | 1 | OLIMS - Medical Discharge Submission Report Complete |
|  | MD_RPT_DATE | DATS | 8 | OLIMS - Medical Discharge Submission Report Complete Date |
|  | APP_TL | CHAR | 1 | OLIMS - FTC Team Leader Approval |
|  | APP_TL_DATE | DATS | 8 | OLIMS - FTC Team Leader Approval Date |
|  | APP_MGMT | CHAR | 1 | OLIMS - Management Approval |
|  | APP_MGMT_DATE | DATS | 8 | OLIMS - Management Approval Date |
|  | APP_COM | CHAR | 1 | OLIMS - Commander Approval |
|  | APP_COM_DATE | DATS | 8 | OLIMS - Commander Approval Date |
|  | CASE_STATUS | CHAR | 1 | OLIMS - FTC Case Status |
|  | CASE_STATUS_DATE | DATS | 8 | OLIMS - FTC Case Status Date |
|  | MDU_DATE | DATS | 8 | OLIMS - Date Report Sent to MDU |
|  | METLIFE | CHAR | 1 | OLIMS - Send Report to Metlife |
|  | METLIFE_DATE | DATS | 8 | OLIMS - Date Report Sent to Metlife |
|  | ADMIN_LTR_RCVD | CHAR | 1 | OLIMS - MD Admin Letter Received from Employee |
|  | COMMAND_DATE | DATS | 8 | OLIMS - FTC Command Sent Date |
|  | INSURER_DATE | DATS | 8 | OLIMS - FTC Insurer Sent Date |

### ZIM_IN_FTCAX

- File: `ZIM_IN_FTCAX_fields.json`
- Object type: `TRANSP`
- Field count: **47**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | CREATED_DATE | DATS | 8 | OLIMS - FTC Ax Creation Date |
|  | CURR_WORK_STATUS | CHAR | 2 | OLIMS - FTC Ax Current Work Status |
|  | COMM_SENT_DATE | DATS | 8 | OLIMS - FTC Ax Command Report Sent Date |
|  | COMM_REC_DATE | DATS | 8 | OLIMS - FTC Ax Command Report Received Date |
|  | IME_PROVIDER | CHAR | 1 | OLIMS - FTC Ax IME Provider |
|  | MHS_PROVIDER | CHAR | 1 | OLIMS - FTC Ax MHS Provider |
|  | REF_SIMA | CHAR | 1 | OLIMS - FTC Ax Referred to SIMA |
|  | REF_DATE_SIMA | DATS | 8 | OLIMS -FTC Ax Referral Date |
|  | SIMA_REF_STATUS | CHAR | 1 | OLIMS - SIMA Approval Status |
|  | SIMA_REF_DATE | DATS | 8 | OLIMS - FTC Ax Approval Date |
|  | MHS_NOTIF_DATE | DATS | 8 | OLIMS - FTC Ax Independent Assessor Notification Date |
|  | EMP_NOTIF_DATE | DATS | 8 | OLIMS - FTC Ax Employee Notification Date |
|  | ACK_RECVD_DATE | DATS | 8 | OLIMS - FTC Ax Ack of Receipt Received Date |
|  | APP_DATE | DATS | 8 | OLIMS -FTC Ax Appointment Date |
|  | APP_TIME | TIMS | 6 | OLIMS - FTC Ax Appointment Time |
|  | PROV_CODE | NUMC | 10 | OLIMS - Provider Code |
|  | CONSULTANT | CHAR | 60 | OLIMS - Provider Consultant |
|  | HEALTH_PROF | CHAR | 10 | OLIMS - Health Profession Code |
|  | STRAS | CHAR | 60 | Street and House Number |
|  | LOCAT | CHAR | 40 | 2nd Address Line |
|  | ORT01 | CHAR | 40 | City |
|  | POSTCODE | CHAR | 10 | Postal Code |
|  | REGIO | CHAR | 3 | Region (State, Province, County) |
|  | LAND1 | CHAR | 3 | Country Key |
|  | PHONE | CHAR | 20 | Communication Number |
|  | MOBILE | CHAR | 20 | Communication Number |
|  | EMP_APP_DATE | DATS | 8 | OLIMS - FTC Ax Notification Sent Date |
|  | REPORT_DATE | DATS | 8 | OLIMS - FTC Ax Report Received Date |
|  | TAX_INV_DATE | DATS | 8 | OLIMS - FTC Ax Tax Invoice Received Date |
|  | REC_WORK_STATUS | CHAR | 1 | OLIMS - FTC Ax Recommended Work Status |
|  | SIMA_RES_STATUS | CHAR | 1 | OLIMS -FTC Ax SIMA Result Status |
|  | SIMA_RES_DATE | DATS | 8 | OLIMS -FTC Ax SIMA Result Date |
|  | SUPP_REQ_DATE | DATS | 8 | OLIMS -FTC Ax Supplementary Report Request Date |
|  | SUPP_RECVD_DATE | DATS | 8 | OLIMS -FTC Ax Supplementary Report Received Date |
|  | RPT_SENT_DATE | DATS | 8 | OLIMS - FTC Ax Report Sent Date |
|  | RPT_SENT_NTD | DATS | 8 | OLIMS - FTC Ax Report Sent Date |
|  | APPEAL | CHAR | 1 | OLIMS - FTC Ax Appeal Lodged |
|  | APPEAL_DATE | DATS | 8 | OLIMS - FTC Ax Appeal Lodged Date |
|  | NO_APPEAL | CHAR | 1 | OLIMS - FTC Ax No Appeal Lodged |
|  | APPEAL_STATUS | CHAR | 1 | OLIMS - FTC Ax Appeal Status |
|  | APP_REC_STATUS | CHAR | 1 | OLIMS - FTC Ax Appeal Recommended Work Status |
|  | FTCTL_NOTIF_DATE | DATS | 8 | OLIMS - FTC Ax FTCTL Notification Date |
|  | COMPLETED_DATE | DATS | 8 | OLIMS - FTC Ax Completion Date |

### ZIM_IN_FTCAX_LOG

- File: `ZIM_IN_FTCAX_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **51**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | CREATED_DATE | DATS | 8 | OLIMS - FTC Ax Creation Date |
|  | CURR_WORK_STATUS | CHAR | 2 | OLIMS - FTC Ax Current Work Status |
|  | COMM_SENT_DATE | DATS | 8 | OLIMS - FTC Ax Command Report Sent Date |
|  | COMM_REC_DATE | DATS | 8 | OLIMS - FTC Ax Command Report Received Date |
|  | IME_PROVIDER | CHAR | 1 | OLIMS - FTC Ax IME Provider |
|  | MHS_PROVIDER | CHAR | 1 | OLIMS - FTC Ax MHS Provider |
|  | REF_SIMA | CHAR | 1 | OLIMS - FTC Ax Referred to SIMA |
|  | REF_DATE_SIMA | DATS | 8 | OLIMS -FTC Ax Referral Date |
|  | SIMA_REF_STATUS | CHAR | 1 | OLIMS - SIMA Approval Status |
|  | SIMA_REF_DATE | DATS | 8 | OLIMS - FTC Ax Approval Date |
|  | MHS_NOTIF_DATE | DATS | 8 | OLIMS - FTC Ax Independent Assessor Notification Date |
|  | EMP_NOTIF_DATE | DATS | 8 | OLIMS - FTC Ax Employee Notification Date |
|  | ACK_RECVD_DATE | DATS | 8 | OLIMS - FTC Ax Ack of Receipt Received Date |
|  | APP_DATE | DATS | 8 | OLIMS -FTC Ax Appointment Date |
|  | APP_TIME | TIMS | 6 | OLIMS - FTC Ax Appointment Time |
|  | PROV_CODE | NUMC | 10 | OLIMS - Provider Code |
|  | CONSULTANT | CHAR | 60 | OLIMS - Provider Consultant |
|  | HEALTH_PROF | CHAR | 10 | OLIMS - Health Profession Code |
|  | STRAS | CHAR | 60 | Street and House Number |
|  | LOCAT | CHAR | 40 | 2nd Address Line |
|  | ORT01 | CHAR | 40 | City |
|  | POSTCODE | CHAR | 10 | Postal Code |
|  | REGIO | CHAR | 3 | Region (State, Province, County) |
|  | LAND1 | CHAR | 3 | Country Key |
|  | PHONE | CHAR | 20 | Communication Number |
|  | MOBILE | CHAR | 20 | Communication Number |
|  | EMP_APP_DATE | DATS | 8 | OLIMS - FTC Ax Notification Sent Date |
|  | REPORT_DATE | DATS | 8 | OLIMS - FTC Ax Report Received Date |
|  | TAX_INV_DATE | DATS | 8 | OLIMS - FTC Ax Tax Invoice Received Date |
|  | REC_WORK_STATUS | CHAR | 1 | OLIMS - FTC Ax Recommended Work Status |
|  | SIMA_RES_STATUS | CHAR | 1 | OLIMS -FTC Ax SIMA Result Status |
|  | SIMA_RES_DATE | DATS | 8 | OLIMS -FTC Ax SIMA Result Date |
|  | SUPP_REQ_DATE | DATS | 8 | OLIMS -FTC Ax Supplementary Report Request Date |
|  | SUPP_RECVD_DATE | DATS | 8 | OLIMS -FTC Ax Supplementary Report Received Date |
|  | RPT_SENT_DATE | DATS | 8 | OLIMS - FTC Ax Report Sent Date |
|  | RPT_SENT_NTD | DATS | 8 | OLIMS - FTC Ax Report Sent Date |
|  | APPEAL | CHAR | 1 | OLIMS - FTC Ax Appeal Lodged |
|  | APPEAL_DATE | DATS | 8 | OLIMS - FTC Ax Appeal Lodged Date |
|  | NO_APPEAL | CHAR | 1 | OLIMS - FTC Ax No Appeal Lodged |
|  | APPEAL_STATUS | CHAR | 1 | OLIMS - FTC Ax Appeal Status |
|  | APP_REC_STATUS | CHAR | 1 | OLIMS - FTC Ax Appeal Recommended Work Status |
|  | FTCTL_NOTIF_DATE | DATS | 8 | OLIMS - FTC Ax FTCTL Notification Date |
|  | COMPLETED_DATE | DATS | 8 | OLIMS - FTC Ax Completion Date |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_FTC_LOG

- File: `ZIM_IN_FTC_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **26**
- Primary key: **MANDT, PERNR, INCIDENT, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | INFO_PACK_SENT | CHAR | 1 | OLIMS - FTC Info Pack Sent |
|  | INFO_PACK_DATE | DATS | 8 | OLIMS - FTC Info Pack Sent Date |
|  | EMP_CONT | CHAR | 1 | OLIMS - FTC Employee Contacted |
|  | MD_RPT_COMP | CHAR | 1 | OLIMS - Medical Discharge Submission Report Complete |
|  | MD_RPT_DATE | DATS | 8 | OLIMS - Medical Discharge Submission Report Complete Date |
|  | APP_TL | CHAR | 1 | OLIMS - FTC Team Leader Approval |
|  | APP_TL_DATE | DATS | 8 | OLIMS - FTC Team Leader Approval Date |
|  | APP_MGMT | CHAR | 1 | OLIMS - Management Approval |
|  | APP_MGMT_DATE | DATS | 8 | OLIMS - Management Approval Date |
|  | APP_COM | CHAR | 1 | OLIMS - Commander Approval |
|  | APP_COM_DATE | DATS | 8 | OLIMS - Commander Approval Date |
|  | CASE_STATUS | CHAR | 1 | OLIMS - FTC Case Status |
|  | CASE_STATUS_DATE | DATS | 8 | OLIMS - FTC Case Status Date |
|  | MDU_DATE | DATS | 8 | OLIMS - Date Report Sent to MDU |
|  | METLIFE | CHAR | 1 | OLIMS - Send Report to Metlife |
|  | METLIFE_DATE | DATS | 8 | OLIMS - Date Report Sent to Metlife |
|  | ADMIN_LTR_RCVD | CHAR | 1 | OLIMS - MD Admin Letter Received from Employee |
|  | COMMAND_DATE | DATS | 8 | OLIMS - FTC Command Sent Date |
|  | INSURER_DATE | DATS | 8 | OLIMS - FTC Insurer Sent Date |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_IMEP

- File: `ZIM_IN_IMEP_fields.json`
- Object type: `TRANSP`
- Field count: **46**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | COMP_SENT_DATE | DATS | 8 | OLIMS - IMEP Compliance Checklist Sent Date |
|  | COMP_REC_DATE | DATS | 8 | OLIMS - IMEP Compliance Checklist Received Date |
|  | COMM_REC_DATE | DATS | 8 | OLIMS - IMEP Command Report Received Date |
|  | IMEP_TYPE | CHAR | 3 | OLIMS - IMEP Type |
|  | COMM_DATE | DATS | 8 | OLIMS - IMEP Commencement Date |
|  | REF_SIMA | CHAR | 1 | OLIMS - IMEP Referred to SIMA |
|  | REF_DATE_SIMA | DATS | 8 | OLIMS - IMEP Referral Date |
|  | APP_SIMA | CHAR | 1 | OLIMS - SIMA Approval Status |
|  | APP_DATE_SIMA | DATS | 8 | OLIMS - IMEP Approval Date |
|  | APP_MGMT | CHAR | 1 | OLIMS - Management Approval Status |
|  | APP_DATE_MGMT | DATS | 8 | OLIMS - IMEP Approval Date |
|  | CURR_WORK_STATUS | CHAR | 2 | OLIMS - IMEP Current Work Status |
|  | APP_DATE | DATS | 8 | OLIMS - IMEP Appointment Date |
|  | APP_TIME | TIMS | 6 | OLIMS - IMEP Appointment Time |
|  | PROV_CODE | NUMC | 10 | OLIMS - Provider Code |
|  | REFER_DATE | DATS | 8 | OLIMS - Date IMEP Referred to Insurer |
|  | REFER_APP | CHAR | 1 | OLIMS - IMEP Referral Approved |
|  | STRAS | CHAR | 60 | Street and House Number |
|  | LOCAT | CHAR | 40 | 2nd Address Line |
|  | ORT01 | CHAR | 40 | City |
|  | POSTCODE | CHAR | 10 | Postal Code |
|  | REGIO | CHAR | 3 | Region (State, Province, County) |
|  | PHONE | CHAR | 20 | Communication Number |
|  | MOBILE | CHAR | 20 | Communication Number |
|  | LAND1 | CHAR | 3 | Country Key |
|  | SIGN_NOT_DATE | DATS | 8 | OLIMS - IMEP Signed Notification Date |
|  | REPORT_REC | CHAR | 1 | OLIMS - IMEP Report Received |
|  | REPORT_DATE | DATS | 8 | OLIMS - IMEP Report Received Date |
|  | REC_WORK_STATUS | CHAR | 2 | OLIMS - IMEP Recommended Work Status |
|  | REPORT_SENT | CHAR | 1 | OLIMS - IMEP Report Sent |
|  | RPT_SENT_DATE | DATS | 8 | OLIMS - Report Sent Date |
|  | FTCO_DATE | DATS | 8 | OLIMS - Date the Case Assigned to FTCO |
|  | APPEAL | CHAR | 1 | OLIMS - IMEP Appeal Lodged |
|  | INCON_INFO | CHAR | 1 | OLIMS - IMEP Inconsistent Information |
|  | NTD_CONTACT | CHAR | 1 | OLIMS - IMEP NTD Contacted |
|  | EMP_COMPLY | CHAR | 1 | OLIMS - Worker Complied with IMEP R@WP |
|  | CEASE_PAY | CHAR | 1 | OLIMS - Notification to Cease Pay |
|  | AUTH_REL | CHAR | 1 | OLIMS - Authority for Release of Information |
|  | NOT_SENT_DATE | DATS | 8 | OLIMS - IMEP Notification Sent Date |
|  | SIGN_SENT_DATE | DATS | 8 | OLIMS - IMEP Signed Notification Sent Date |
|  | REQ_SENT_DATE | DATS | 8 | OLIMS - IMEP Request to Provider Sent Date |
|  | NTD_SENT_DATE | DATS | 8 | OLIMS - Date Report Send to NTD |

### ZIM_IN_IMEP_LOG

- File: `ZIM_IN_IMEP_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **50**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | COMP_SENT_DATE | DATS | 8 | OLIMS - IMEP Compliance Checklist Sent Date |
|  | COMP_REC_DATE | DATS | 8 | OLIMS - IMEP Compliance Checklist Received Date |
|  | COMM_REC_DATE | DATS | 8 | OLIMS - IMEP Command Report Received Date |
|  | IMEP_TYPE | CHAR | 3 | OLIMS - IMEP Type |
|  | COMM_DATE | DATS | 8 | OLIMS - IMEP Commencement Date |
|  | REF_SIMA | CHAR | 1 | OLIMS - IMEP Referred to SIMA |
|  | REF_DATE_SIMA | DATS | 8 | OLIMS - IMEP Referral Date |
|  | APP_SIMA | CHAR | 1 | OLIMS - SIMA Approval Status |
|  | APP_DATE_SIMA | DATS | 8 | OLIMS - IMEP Approval Date |
|  | APP_MGMT | CHAR | 1 | OLIMS - Management Approval Status |
|  | APP_DATE_MGMT | DATS | 8 | OLIMS - IMEP Approval Date |
|  | CURR_WORK_STATUS | CHAR | 2 | OLIMS - IMEP Current Work Status |
|  | APP_DATE | DATS | 8 | OLIMS - IMEP Appointment Date |
|  | APP_TIME | TIMS | 6 | OLIMS - IMEP Appointment Time |
|  | PROV_CODE | NUMC | 10 | OLIMS - Provider Code |
|  | REFER_DATE | DATS | 8 | OLIMS - Date IMEP Referred to Insurer |
|  | REFER_APP | CHAR | 1 | OLIMS - IMEP Referral Approved |
|  | STRAS | CHAR | 60 | Street and House Number |
|  | LOCAT | CHAR | 40 | 2nd Address Line |
|  | ORT01 | CHAR | 40 | City |
|  | POSTCODE | CHAR | 10 | Postal Code |
|  | REGIO | CHAR | 3 | Region (State, Province, County) |
|  | PHONE | CHAR | 20 | Communication Number |
|  | MOBILE | CHAR | 20 | Communication Number |
|  | LAND1 | CHAR | 3 | Country Key |
|  | SIGN_NOT_DATE | DATS | 8 | OLIMS - IMEP Signed Notification Date |
|  | REPORT_REC | CHAR | 1 | OLIMS - IMEP Report Received |
|  | REPORT_DATE | DATS | 8 | OLIMS - IMEP Report Received Date |
|  | REC_WORK_STATUS | CHAR | 2 | OLIMS - IMEP Recommended Work Status |
|  | REPORT_SENT | CHAR | 1 | OLIMS - IMEP Report Sent |
|  | RPT_SENT_DATE | DATS | 8 | OLIMS - Report Sent Date |
|  | FTCO_DATE | DATS | 8 | OLIMS - Date the Case Assigned to FTCO |
|  | APPEAL | CHAR | 1 | OLIMS - IMEP Appeal Lodged |
|  | INCON_INFO | CHAR | 1 | OLIMS - IMEP Inconsistent Information |
|  | NTD_CONTACT | CHAR | 1 | OLIMS - IMEP NTD Contacted |
|  | EMP_COMPLY | CHAR | 1 | OLIMS - Worker Complied with IMEP R@WP |
|  | CEASE_PAY | CHAR | 1 | OLIMS - Notification to Cease Pay |
|  | AUTH_REL | CHAR | 1 | OLIMS - Authority for Release of Information |
|  | NOT_SENT_DATE | DATS | 8 | OLIMS - IMEP Notification Sent Date |
|  | SIGN_SENT_DATE | DATS | 8 | OLIMS - IMEP Signed Notification Sent Date |
|  | REQ_SENT_DATE | DATS | 8 | OLIMS - IMEP Request to Provider Sent Date |
|  | NTD_SENT_DATE | DATS | 8 | OLIMS - Date Report Send to NTD |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_IP

- File: `ZIM_IN_IP_fields.json`
- Object type: `TRANSP`
- Field count: **15**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 5 | Sequence Number |
|  | RECORD_TYPE | CHAR | 1 | Record Type |
|  | BEGDA | DATS | 8 | Start Date |
|  | ENDDA | DATS | 8 | End Date |
|  | TOP_UP | CHAR | 1 | Checkbox |
|  | CLAIM_NUMBER | CHAR | 15 | Workcover Claim Number |
|  | DISABLEMENT_DATE | DATS | 8 | OLIMS - Date of Disablement |
|  | IP_DESC | CHAR | 80 | Description |
|  | UPD_DATE | DATS | 8 | Date |
|  | UPD_TIME | TIMS | 6 | Time |
|  | UPD_USER | CHAR | 12 | User Name |
|  | INACTIVE | CHAR | 1 | Deletion Indicator |

### ZIM_IN_IP_LOG

- File: `ZIM_IN_IP_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **19**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 5 | Sequence Number |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | RECORD_TYPE | CHAR | 1 | Record Type |
|  | BEGDA | DATS | 8 | Start Date |
|  | ENDDA | DATS | 8 | End Date |
|  | TOP_UP | CHAR | 1 | Checkbox |
|  | CLAIM_NUMBER | CHAR | 15 | Workcover Claim Number |
|  | DISABLEMENT_DATE | DATS | 8 | OLIMS - Date of Disablement |
|  | IP_DESC | CHAR | 80 | Description |
|  | UPD_DATE | DATS | 8 | Date |
|  | UPD_TIME | TIMS | 6 | Time |
|  | UPD_USER | CHAR | 12 | User Name |
|  | INACTIVE | CHAR | 1 | Deletion Indicator |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_IP_UPD

- File: `ZIM_IN_IP_UPD_fields.json`
- Object type: `INTTAB`
- Field count: **16**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | MANDT | CLNT | 3 | Client |
|  | PERNR | NUMC | 8 | Personnel Number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | SEQ_NO | NUMC | 5 | Sequence Number |
|  | RECORD_TYPE | CHAR | 1 | Record Type |
|  | BEGDA | DATS | 8 | Start Date |
|  | ENDDA | DATS | 8 | End Date |
|  | TOP_UP | CHAR | 1 | Checkbox |
|  | CLAIM_NUMBER | CHAR | 15 | Workcover Claim Number |
|  | DISABLEMENT_DATE | DATS | 8 | OLIMS - Date of Disablement |
|  | IP_DESC | CHAR | 80 | Description |
|  | UPD_DATE | DATS | 8 | Date |
|  | UPD_TIME | TIMS | 6 | Time |
|  | UPD_USER | CHAR | 12 | User Name |
|  | INACTIVE | CHAR | 1 | Deletion Indicator |
|  | UPDKZ | CHAR | 1 | Update indicator |

### ZIM_IN_LEG

- File: `ZIM_IN_LEG_fields.json`
- Object type: `TRANSP`
- Field count: **14**
- Primary key: **MANDT, PERNR, INCIDENT**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
|  | CSA | NUMC | 8 | OLIMS - Contract Services Advisor |
|  | INSURER_COMP | CHAR | 1 | OLIMS - Insurer Contact Complete |
|  | INSURER_COMP_DT | DATS | 8 | OLIMS - Date Insurer Contact Complete |
|  | INS_FIRST_CONT | NUMC | 5 | OLIMS - Insurer Contact Code |
|  | PROV_CODE | NUMC | 10 | OLIMS - Provider Code |
|  | PROV_CODE_2 | NUMC | 10 | OLIMS - Provider Code |
|  | INSURER | CHAR | 10 | OLIMS - Insurer Code |
|  | CONSENT_FORM | CHAR | 1 | OLIMS - Consent Form Received |
|  | INFO_DATE | DATS | 8 | OLIMS - Date Info Consent Form Received |
|  | STRATEGIES | CHAR | 128 | OLIMS - Strategies/Actions |
|  | STRATEGIES_1 | CHAR | 128 | OLIMS - Strategies/Actions |

### ZIM_IN_LEG_INC

- File: `ZIM_IN_LEG_INC_fields.json`
- Object type: `TRANSP`
- Field count: **6**
- Primary key: **MANDT, PERNR, INCIDENT, REQ_AREA, SEQ_NO, ADD_INCIDENT**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | REQ_AREA | CHAR | 1 | OLIMS - Request Area |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | ADD_INCIDENT | NUMC | 10 | Incident No. |

### ZIM_IN_LEG_LOG

- File: `ZIM_IN_LEG_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **18**
- Primary key: **MANDT, PERNR, INCIDENT, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | CSA | NUMC | 8 | OLIMS - Contract Services Advisor |
|  | INSURER_COMP | CHAR | 1 | OLIMS - Insurer Contact Complete |
|  | INSURER_COMP_DT | DATS | 8 | OLIMS - Date Insurer Contact Complete |
|  | INS_FIRST_CONT | NUMC | 5 | OLIMS - Insurer Contact Code |
|  | PROV_CODE | NUMC | 10 | OLIMS - Provider Code |
|  | PROV_CODE_2 | NUMC | 10 | OLIMS - Provider Code |
|  | INSURER | CHAR | 10 | OLIMS - Insurer Code |
|  | CONSENT_FORM | CHAR | 1 | OLIMS - Consent Form Received |
|  | INFO_DATE | DATS | 8 | OLIMS - Date Info Consent Form Received |
|  | STRATEGIES | CHAR | 128 | OLIMS - Strategies/Actions |
|  | STRATEGIES_1 | CHAR | 128 | OLIMS - Strategies/Actions |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_LEG_REQ

- File: `ZIM_IN_LEG_REQ_fields.json`
- Object type: `TRANSP`
- Field count: **35**
- Primary key: **MANDT, PERNR, INCIDENT, REQ_AREA, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | REQ_AREA | CHAR | 1 | OLIMS - Request Area |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | REQ_TYPE | CHAR | 2 | OLIMS - Inbound/Outbound Request Type |
|  | REQ_DATE | DATS | 8 | OLIMS - Request Date |
|  | REQ_DESC | CHAR | 80 | OLIMS - Type of Matter |
|  | CSA | NUMC | 8 | OLIMS - Contract Services Advisor |
|  | PROV_CODE | NUMC | 10 | OLIMS - Provider Code |
|  | INSURER | CHAR | 10 | OLIMS - Insurer Code |
|  | INS_FIRST_CONT | NUMC | 5 | OLIMS - Insurer Contact Code |
|  | AMOUNT | DEC | 11 | OLIMS - Request Amount |
|  | WPI_PERCENT_S66 | DEC | 5 | OLIMS - Legal Whole Person Impairment Percentage |
|  | WPI_PERCENT_S67 | DEC | 5 | OLIMS - Legal Whole Person Impairment Percentage |
|  | WPI_AMOUNT_S66 | DEC | 11 | OLIMS - Legal Whole Person Impairment Section 66 Amount |
|  | WPI_AMOUNT_S67 | DEC | 11 | OLIMS - Legal Whole Person Impairment Section 67 Amount |
|  | RECOVERY_AMOUNT | DEC | 11 | OLIMS - Legal Recovery Amount |
|  | CONSENT_FORM | CHAR | 1 | OLIMS - Consent Form Received |
|  | TELE_DATE | DATS | 8 | OLIMS - ARD Teleconference Date |
|  | TELE_TIME | TIMS | 6 | OLIMS - ARD Teleconference Time |
|  | STATUS | CHAR | 1 | OLIMS - Request Status |
|  | AGREE_DATE | DATS | 8 | OLIMS - Legal Agreed Date |
|  | S282_DATE | DATS | 8 | OLIMS - Legal - S282 Date |
|  | PRE_STATE_DATE | DATS | 8 | OLIMS - Legal - Pre Filing Statement Date |
|  | PRE_DEF_DATE | DATS | 8 | OLIMS - Legal - Pre Filing Defence Date |
|  | MED_DATE | DATS | 8 | OLIMS - Legal - Mediation Date |
|  | PRIV_MED_DATE | DATS | 8 | OLIMS - Legal - Private Mediation Date |
|  | STATE_CLAIM_DATE | DATS | 8 | OLIMS - Legal - Statement of Claim Date |
|  | DEFENCE_DATE | DATS | 8 | OLIMS - Legal - Defence Date |
|  | HEARING_DATE | DATS | 8 | OLIMS - Legal - Hearing Date |
|  | WID_SETTLE_AMOUNT | DEC | 11 | OLIMS - Legal WID Settlement Amount |
|  | COMM_AMOUNT | DEC | 11 | OLIMS - Legal Commutation Amount |
|  | CON_DATE | DATS | 8 | OLIMS - Legal - Conciliation/Arbitration Date |
|  | INF_CONF_DATE | DATS | 8 | OLIMS - Legal - Informal Settlement Conference Date |

### ZIM_IN_LEG_REQ_L

- File: `ZIM_IN_LEG_REQ_L_fields.json`
- Object type: `TRANSP`
- Field count: **39**
- Primary key: **MANDT, PERNR, INCIDENT, REQ_AREA, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | REQ_AREA | CHAR | 1 | OLIMS - Request Area |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | REQ_TYPE | CHAR | 2 | OLIMS - Inbound/Outbound Request Type |
|  | REQ_DATE | DATS | 8 | OLIMS - Request Date |
|  | REQ_DESC | CHAR | 80 | OLIMS - Type of Matter |
|  | CSA | NUMC | 8 | OLIMS - Contract Services Advisor |
|  | PROV_CODE | NUMC | 10 | OLIMS - Provider Code |
|  | INSURER | CHAR | 10 | OLIMS - Insurer Code |
|  | INS_FIRST_CONT | NUMC | 5 | OLIMS - Insurer Contact Code |
|  | AMOUNT | DEC | 11 | OLIMS - Request Amount |
|  | WPI_PERCENT_S66 | DEC | 5 | OLIMS - Legal Whole Person Impairment Percentage |
|  | WPI_PERCENT_S67 | DEC | 5 | OLIMS - Legal Whole Person Impairment Percentage |
|  | WPI_AMOUNT_S66 | DEC | 11 | OLIMS - Legal Whole Person Impairment Section 66 Amount |
|  | WPI_AMOUNT_S67 | DEC | 11 | OLIMS - Legal Whole Person Impairment Section 67 Amount |
|  | RECOVERY_AMOUNT | DEC | 11 | OLIMS - Legal Recovery Amount |
|  | CONSENT_FORM | CHAR | 1 | OLIMS - Consent Form Received |
|  | TELE_DATE | DATS | 8 | OLIMS - ARD Teleconference Date |
|  | TELE_TIME | TIMS | 6 | OLIMS - ARD Teleconference Time |
|  | STATUS | CHAR | 1 | OLIMS - Request Status |
|  | AGREE_DATE | DATS | 8 | OLIMS - Legal Agreed Date |
|  | S282_DATE | DATS | 8 | OLIMS - Legal - S282 Date |
|  | PRE_STATE_DATE | DATS | 8 | OLIMS - Legal - Pre Filing Statement Date |
|  | PRE_DEF_DATE | DATS | 8 | OLIMS - Legal - Pre Filing Defence Date |
|  | MED_DATE | DATS | 8 | OLIMS - Legal - Mediation Date |
|  | PRIV_MED_DATE | DATS | 8 | OLIMS - Legal - Private Mediation Date |
|  | STATE_CLAIM_DATE | DATS | 8 | OLIMS - Legal - Statement of Claim Date |
|  | DEFENCE_DATE | DATS | 8 | OLIMS - Legal - Defence Date |
|  | HEARING_DATE | DATS | 8 | OLIMS - Legal - Hearing Date |
|  | WID_SETTLE_AMOUNT | DEC | 11 | OLIMS - Legal WID Settlement Amount |
|  | COMM_AMOUNT | DEC | 11 | OLIMS - Legal Commutation Amount |
|  | CON_DATE | DATS | 8 | OLIMS - Legal - Conciliation/Arbitration Date |
|  | INF_CONF_DATE | DATS | 8 | OLIMS - Legal - Informal Settlement Conference Date |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_MAST

- File: `ZIM_IN_MAST_fields.json`
- Object type: `TRANSP`
- Field count: **81**
- Primary key: **MANDT, PERNR, INCIDENT**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
|  | INC_TYPE | CHAR | 1 | OLIMS - Incident Type |
|  | INC_STATUS | CHAR | 1 | OLIMS - Incident Status |
|  | ASS_STATUS | CHAR | 1 | OLIMS - Assessment Status |
|  | CLOSURE_STATUS | CHAR | 1 | OLIMS - Case Closure Status |
|  | IMA | NUMC | 8 | OLIMS - Injury Management Advisor |
|  | FTC | NUMC | 8 | OLIMS - Fitness To Continue Advisor |
|  | INIT_ASS_DATE | DATS | 8 | OLIMS - Date of Initial Assessment |
|  | INIT_ASS_TIME | TIMS | 6 | OLIMS - Time of Initial Assessment |
|  | LAST_ACT_DATE | DATS | 8 | OLIMS - Last Activity Date |
|  | RESTRICTED | CHAR | 1 | OLIMS - Restricted Case |
|  | THREE_POINT | CHAR | 1 | OLIMS - 3 Point Contact Complete |
|  | THREE_POINT_DATE | DATS | 8 | OLIMS - 3 Point Contact Complete |
|  | EMPLOYEE_COMP | CHAR | 1 | OLIMS - Employee Contact Complete |
|  | EMPLOYEE_COMP_DT | DATS | 8 | OLIMS - Date Employee Contact Complete |
|  | EMPLOYER_COMP | CHAR | 1 | OLIMS - Employer Contact Complete |
|  | EMPLOYER_COMP_DT | DATS | 8 | OLIMS - Date Employer Contact Complete |
|  | INSURER_COMP | CHAR | 1 | OLIMS - Insurer Contact Complete |
|  | INSURER_COMP_DT | DATS | 8 | OLIMS - Date Insurer Contact Complete |
|  | MGR | NUMC | 8 | OLIMS - Manager of the Injured Employee |
|  | SUP | NUMC | 8 | OLIMS - Supervisor of the Injured Employee |
|  | LAM | NUMC | 8 | OLIMS - LAM/HR Manager of the Injured Employee |
|  | GAO | NUMC | 8 | OLIMS - GAO for the Injured Employee |
|  | REG | NUMC | 8 | OLIMS - Region HR Manager |
|  | IMP_PROVIDED | CHAR | 1 | OLIMS - Injury Management Plan Provided |
|  | IMP_DATE | DATS | 8 | OLIMS - Date Injury Management Plan Provided |
|  | INFO_CONSENT | CHAR | 1 | OLIMS - Info Consent Form Received |
|  | INFO_DATE | DATS | 8 | OLIMS - Date Info Consent Form Received |
|  | NTD_CONTACT | DATS | 8 | OLIMS - Last Contact NTD Date |
|  | EMP_CONTACT | DATS | 8 | OLIMS - Last Employee Contact Date |
|  | MGR_CONTACT | DATS | 8 | OLIMS - Last Employer Contact Date |
|  | INS_CONTACT | DATS | 8 | OLIMS - Last Insurer Contact Date |
|  | ROSA_REVIEW | DATS | 8 | OLIMS - ROSA Review Date |
|  | PMO_REVIEW | DATS | 8 | OLIMS - PMO Review Date |
|  | PRIM_INJURY | CHAR | 1 | OLIMS - Injury Type |
|  | SEC_INJURY | CHAR | 1 | OLIMS - Injury Type |
|  | INSURER | CHAR | 10 | OLIMS - Insurer Code |
|  | INS_FIRST_CONT | NUMC | 5 | OLIMS - Insurer Contact Code |
|  | INS_SEC_CONT | NUMC | 5 | OLIMS - Insurer Contact Code |
|  | NTD | NUMC | 10 | OLIMS - Health Professional Code |
|  | NTS | NUMC | 10 | OLIMS - Health Professional Code |
|  | RET_TO_PID_SENT | CHAR | 1 | OLIMS - Return to PID Letter Sent |
|  | RET_TO_PID_DATE | DATS | 8 | OLIMS - Return to PID Letter Sent Date |
|  | AUTH_REL_MED | CHAR | 1 | OLIMS - Authority to Release Medical Info |
|  | HOD | CHAR | 1 | OLIMS - HOD Flag |
|  | DATE_CREATED | DATS | 8 | OLIMS Date Created |
|  | FTCO_DATE | DATS | 8 | OLIMS - Date the Case Assigned to FTCO |
|  | IMA_REGION | CHAR | 40 | IMA Region Description |
|  | INJ_LOCATION | CHAR | 80 | OLIMS - Location of Injury |
|  | DATE_CLOSED | DATS | 8 | OLIMS Date Closed |
|  | LAST_DAY_DUTY | DATS | 8 | OLIMS - Last Day of Duty |
|  | AWARD_2005 | CHAR | 1 | OLIMS - 2005 Award |
|  | MMI_RECEIVED | CHAR | 1 | OLIMS - MMI Information Received |
|  | MMI_RECEIVED_DT | DATS | 8 | OLIMS - MMI Information Received Date |
|  | DEPLOY_STATUS | CHAR | 1 | OLIMS - Deployment Status |
|  | OATH_OF_OFFICE | CHAR | 1 | IM - Executing Oath of Office |
|  | BACKGROUND | CHAR | 128 | OLIMS - File Update/Background |
|  | STRATEGIES | CHAR | 128 | OLIMS - Strategies/Actions |
|  | STRATEGIES_1 | CHAR | 128 | OLIMS - Strategies/Actions |
|  | ASSESS_DESC | CHAR | 80 | OLIMS - Initial Assessment Description |
|  | GOAL | CHAR | 1 | OLIMS - R@WP Goal |
|  | GOAL_DATE | DATS | 8 | OLIMS - R@WP Goal Date |
|  | REOPENED | CHAR | 1 | OLIMS - Case has been Reopened |
|  | REOPENED_DATE | DATS | 8 | OLIMS - Reopened Date |
|  | SUP_ADD | NUMC | 8 | OLIMS - Additional Supervisor of the Injured Employee |
|  | FULL_CASE_MGMT | CHAR | 1 | OLIMS - Full Case Management |
|  | MISCONDUCT | CHAR | 1 | IM - Misconduct Reported |
|  | MISCONDUCT_DATE | DATS | 8 | IM - Misconduct Reported Date |
|  | MISCONDUCT_DESC | CHAR | 80 | OLIMS - Misconduct Description |
|  | CHANGE_OF_GOAL | CHAR | 1 | OLIMS - Change of Goal |
|  | CHANGE_OF_GOAL_DATE | DATS | 8 | OLIMS - Change of Goal Date |
|  | CHANGE_OF_GOAL_DESC | CHAR | 80 | OLIMS - Change of Goal Description |
|  | REFER_TRANS | CHAR | 1 | OLIMS - Referred to Transition |
|  | REFER_TRANS_DATE | DATS | 8 | OLIMS - Referred to Transition Date |
|  | REFER_TRANS_DESC | CHAR | 80 | OLIMS - Referred to Transition Description |
|  | REFER_REHAB | CHAR | 1 | OLIMS - Referred to Rehab Provider |
|  | REFER_REHAB_DATE | DATS | 8 | OLIMS - Referred to Rehab Provider Date |
|  | REFER_REHAB_DESC | CHAR | 80 | OLIMS - Referred to Rehab Provider Description |
|  | OPENED_DATE | DATS | 8 | OLIMS - Opened Date |

### ZIM_IN_MAST_LOG

- File: `ZIM_IN_MAST_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **85**
- Primary key: **MANDT, PERNR, INCIDENT, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | INC_TYPE | CHAR | 1 | OLIMS - Incident Type |
|  | INC_STATUS | CHAR | 1 | OLIMS - Incident Status |
|  | ASS_STATUS | CHAR | 1 | OLIMS - Assessment Status |
|  | CLOSURE_STATUS | CHAR | 1 | OLIMS - Case Closure Status |
|  | IMA | NUMC | 8 | OLIMS - Injury Management Advisor |
|  | FTC | NUMC | 8 | OLIMS - Fitness To Continue Advisor |
|  | INIT_ASS_DATE | DATS | 8 | OLIMS - Date of Initial Assessment |
|  | INIT_ASS_TIME | TIMS | 6 | OLIMS - Time of Initial Assessment |
|  | LAST_ACT_DATE | DATS | 8 | OLIMS - Last Activity Date |
|  | RESTRICTED | CHAR | 1 | OLIMS - Restricted Case |
|  | THREE_POINT | CHAR | 1 | OLIMS - 3 Point Contact Complete |
|  | THREE_POINT_DATE | DATS | 8 | OLIMS - 3 Point Contact Complete |
|  | EMPLOYEE_COMP | CHAR | 1 | OLIMS - Employee Contact Complete |
|  | EMPLOYEE_COMP_DT | DATS | 8 | OLIMS - Date Employee Contact Complete |
|  | EMPLOYER_COMP | CHAR | 1 | OLIMS - Employer Contact Complete |
|  | EMPLOYER_COMP_DT | DATS | 8 | OLIMS - Date Employer Contact Complete |
|  | INSURER_COMP | CHAR | 1 | OLIMS - Insurer Contact Complete |
|  | INSURER_COMP_DT | DATS | 8 | OLIMS - Date Insurer Contact Complete |
|  | MGR | NUMC | 8 | OLIMS - Manager of the Injured Employee |
|  | SUP | NUMC | 8 | OLIMS - Supervisor of the Injured Employee |
|  | LAM | NUMC | 8 | OLIMS - LAM/HR Manager of the Injured Employee |
|  | GAO | NUMC | 8 | OLIMS - GAO for the Injured Employee |
|  | REG | NUMC | 8 | OLIMS - Region HR Manager |
|  | IMP_PROVIDED | CHAR | 1 | OLIMS - Injury Management Plan Provided |
|  | IMP_DATE | DATS | 8 | OLIMS - Date Injury Management Plan Provided |
|  | INFO_CONSENT | CHAR | 1 | OLIMS - Info Consent Form Received |
|  | INFO_DATE | DATS | 8 | OLIMS - Date Info Consent Form Received |
|  | NTD_CONTACT | DATS | 8 | OLIMS - Last Contact NTD Date |
|  | EMP_CONTACT | DATS | 8 | OLIMS - Last Employee Contact Date |
|  | MGR_CONTACT | DATS | 8 | OLIMS - Last Employer Contact Date |
|  | INS_CONTACT | DATS | 8 | OLIMS - Last Insurer Contact Date |
|  | ROSA_REVIEW | DATS | 8 | OLIMS - ROSA Review Date |
|  | PMO_REVIEW | DATS | 8 | OLIMS - PMO Review Date |
|  | PRIM_INJURY | CHAR | 1 | OLIMS - Injury Type |
|  | SEC_INJURY | CHAR | 1 | OLIMS - Injury Type |
|  | INSURER | CHAR | 10 | OLIMS - Insurer Code |
|  | INS_FIRST_CONT | NUMC | 5 | OLIMS - Insurer Contact Code |
|  | INS_SEC_CONT | NUMC | 5 | OLIMS - Insurer Contact Code |
|  | NTD | NUMC | 10 | OLIMS - Health Professional Code |
|  | NTS | NUMC | 10 | OLIMS - Health Professional Code |
|  | RET_TO_PID_SENT | CHAR | 1 | OLIMS - Return to PID Letter Sent |
|  | RET_TO_PID_DATE | DATS | 8 | OLIMS - Return to PID Letter Sent Date |
|  | AUTH_REL_MED | CHAR | 1 | OLIMS - Authority to Release Medical Info |
|  | HOD | CHAR | 1 | OLIMS - HOD Flag |
|  | DATE_CREATED | DATS | 8 | OLIMS Date Created |
|  | FTCO_DATE | DATS | 8 | OLIMS - Date the Case Assigned to FTCO |
|  | IMA_REGION | CHAR | 40 | IMA Region Description |
|  | INJ_LOCATION | CHAR | 80 | OLIMS - Location of Injury |
|  | DATE_CLOSED | DATS | 8 | OLIMS Date Closed |
|  | LAST_DAY_DUTY | DATS | 8 | OLIMS - Last Day of Duty |
|  | AWARD_2005 | CHAR | 1 | OLIMS - 2005 Award |
|  | MMI_RECEIVED | CHAR | 1 | OLIMS - MMI Information Received |
|  | MMI_RECEIVED_DT | DATS | 8 | OLIMS - MMI Information Received Date |
|  | DEPLOY_STATUS | CHAR | 1 | OLIMS - Deployment Status |
|  | OATH_OF_OFFICE | CHAR | 1 | IM - Executing Oath of Office |
|  | BACKGROUND | CHAR | 128 | OLIMS - File Update/Background |
|  | STRATEGIES | CHAR | 128 | OLIMS - Strategies/Actions |
|  | STRATEGIES_1 | CHAR | 128 | OLIMS - Strategies/Actions |
|  | ASSESS_DESC | CHAR | 80 | OLIMS - Initial Assessment Description |
|  | GOAL | CHAR | 1 | OLIMS - R@WP Goal |
|  | GOAL_DATE | DATS | 8 | OLIMS - R@WP Goal Date |
|  | REOPENED | CHAR | 1 | OLIMS - Case has been Reopened |
|  | REOPENED_DATE | DATS | 8 | OLIMS - Reopened Date |
|  | SUP_ADD | NUMC | 8 | Personnel Number |
|  | FULL_CASE_MGMT | CHAR | 1 | OLIMS - Full Case Management |
|  | MISCONDUCT | CHAR | 1 | IM - Misconduct Reported |
|  | MISCONDUCT_DATE | DATS | 8 | IM - Misconduct Reported Date |
|  | MISCONDUCT_DESC | CHAR | 80 | OLIMS - Misconduct Description |
|  | CHANGE_OF_GOAL | CHAR | 1 | OLIMS - Change of Goal |
|  | CHANGE_OF_GOAL_DATE | DATS | 8 | OLIMS - Change of Goal Date |
|  | CHANGE_OF_GOAL_DESC | CHAR | 80 | OLIMS - Change of Goal Description |
|  | REFER_TRANS | CHAR | 1 | OLIMS - Referred to Transition |
|  | REFER_TRANS_DATE | DATS | 8 | OLIMS - Referred to Transition Date |
|  | REFER_TRANS_DESC | CHAR | 80 | OLIMS - Referred to Transition Description |
|  | REFER_REHAB | CHAR | 1 | OLIMS - Referred to Rehab Provider |
|  | REFER_REHAB_DATE | DATS | 8 | OLIMS - Referred to Rehab Provider Date |
|  | REFER_REHAB_DESC | CHAR | 80 | OLIMS - Referred to Rehab Provider Description |
|  | OPENED_DATE | DATS | 8 | OLIMS - Opened Date |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_MD

- File: `ZIM_IN_MD_fields.json`
- Object type: `TRANSP`
- Field count: **58**
- Primary key: **MANDT, PERNR, INCIDENT**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
|  | INFO_PACK_SENT | CHAR | 1 | OLIMS - MD Info Pack Sent |
|  | INFO_PACK_DATE | DATS | 8 | OLIMS - MD Info Pack Sent Date |
|  | REC_DEED | CHAR | 1 | OLIMS - MDU Received Deed of Repayment |
|  | REC_AUTH | CHAR | 1 | OLIMS - MDU Received Letter of Authority & Direction |
|  | REC_PPD | CHAR | 1 | OLIMS - MDU Received PPD Form |
|  | REC_TAX | CHAR | 1 | OLIMS - MDU Received Tax Concession Form |
|  | REC_MED1 | CHAR | 1 | OLIMS - MDU Received Medical Reports |
|  | REC_MED2 | CHAR | 1 | OLIMS - MDU Received Medical Reports |
|  | MDRP_DATE | DATS | 8 | OLIMS - MDRP Date |
|  | MDRP_SUB_DATE | DATS | 8 | OLIMS - MD Submission Date |
|  | MDRP_RECOM | CHAR | 2 | OLIMS - MDRP Recommendation |
|  | POST_PANEL_DATE | DATS | 8 | OLIMS - MD Report sent to Employee Post Panel |
|  | COP_LTR_GEN_DT | DATS | 8 | OLIMS - MD CoP Letter Generated Date |
|  | COP_SUB_GEN_DT | DATS | 8 | OLIMS - MD Report sent to CoP Date |
|  | COP_SUB_RCVD_DT | DATS | 8 | OLIMS - MD Submission Received From CoP Date |
|  | COP_LTR_RCVD_DT | DATS | 8 | OLIMS - MD Report Received From CoP Date |
|  | COP_LTR_SENT_DT | DATS | 8 | OLIMS - MD CoP Letter sent to Employee Date |
|  | COP_TRIM_NO | CHAR | 15 | OLIMS - Manual TRIM Number |
|  | COP_TRIM_DATE | DATS | 8 | OLIMS - MD TRIM Date |
|  | NOM_LDS | DATS | 8 | OLIMS - Nominated Last Day of Service |
|  | REQ_LDS | DATS | 8 | OLIMS - Requested Last Day of Service |
|  | DD_AMOUNT | DEC | 11 | OLIMS - Medical Discharge Death & Disability Amount |
|  | DD_SERV_FACT | DEC | 5 | OLIMS - Death & Disability Service Factor |
|  | EMP_2MTH_SENT | CHAR | 1 | OLIMS - MD 2 Month Letter Sent to Employee |
|  | OFFDUTY_APPEAL | CHAR | 1 | OLIMS - Officer has Appealed against the Off-Duty Recom |
|  | CERT_DET_DATE | DATS | 8 | OLIMS - WC Commission issued a Certificate of Determination |
|  | APPEAL_AMOUNT | DEC | 11 | OLIMS - Medical Discharge Death & Disability Amount |
|  | APPEAL_DIFF | DEC | 11 | OLIMS - Medical Discharge Appeal Top-Up Amount |
|  | APP_LTR_GEN_DT | DATS | 8 | OLIMS - MD Appeal CoP Letter Generated Date |
|  | APP_SUB_GEN_DT | DATS | 8 | OLIMS - MD Appeal CoP Submission Generated Date |
|  | APP_SUB_RCVD_DT | DATS | 8 | OLIMS - MD Appeal Submission Received From CoP Date |
|  | APP_LTR_RCVD_DT | DATS | 8 | OLIMS - MD Appeal Letter Received From CoP Date |
|  | APP_LTR_SENT_DT | DATS | 8 | OLIMS - MD Appeal Letter sent to Employee Date |
|  | APP_TRIM_NO | CHAR | 15 | OLIMS - Manual TRIM Number |
|  | APP_TRIM_DATE | DATS | 8 | OLIMS - MD TRIM Date |
|  | TPD_AMOUNT | DEC | 11 | OLIMS - Medical Discharge TPD Amount |
|  | SASS_AMOUNT | DEC | 11 | OLIMS - Medical Discharge SASS Amount |
|  | SASS_DIFF | DEC | 11 | OLIMS - Medical Discharge SASS Top-Up Amount |
|  | SASS_LTR_GEN_DT | DATS | 8 | OLIMS - MD SASS CoP Letter Generated Date |
|  | SASS_SUB_GEN_DT | DATS | 8 | OLIMS - MD SASS CoP Submission Generated Date |
|  | SASS_SUB_RCVD_DT | DATS | 8 | OLIMS - MD SASS Submission Received From CoP Date |
|  | SASS_LTR_RCVD_DT | DATS | 8 | OLIMS - MD SASS Letter Received From CoP Date |
|  | SASS_LTR_SENT_DT | DATS | 8 | OLIMS - MD SASS Letter sent to Employee Date |
|  | SASS_TRIM_NO | CHAR | 15 | OLIMS - Manual TRIM Number |
|  | SASS_TRIM_DATE | DATS | 8 | OLIMS - MD TRIM Date |
|  | ADMIN_LTR_DATE | DATS | 8 | OLIMS - MD Admin Letter sent to Employee Date |
|  | ADMIN_LTR_RCVD | CHAR | 1 | OLIMS - MD Admin Letter Received from Employee |
|  | ADMIN_SUB_DATE | DATS | 8 | OLIMS - MD Admin Medical Discharge Submission Date |
|  | ADMIN_SUB_RECVD | DATS | 8 | OLIMS - MD Admin Medical Discharge Submission Recvd Date |
|  | ADMIN_RECOM | CHAR | 1 | OLIMS - Medical Discharge Recommendation |
|  | ADMIN_RPT_DATE | DATS | 8 | OLIMS - MD Admin Medical Discharge Report Date |
|  | ADMIN_FIN_RECVD | DATS | 8 | OLIMS - Signed Final MD Admin Letter Imported Date |
|  | ADMIN_FIN_DATE | DATS | 8 | OLIMS - Final MD Admin Letter sent to Employee Date |
|  | ADMIN_TRIM_NO | CHAR | 15 | OLIMS - Manual TRIM Number |
|  | ADMIN_TRIM_DATE | DATS | 8 | OLIMS - MD TRIM Date |

### ZIM_IN_MD_LOG

- File: `ZIM_IN_MD_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **62**
- Primary key: **MANDT, PERNR, INCIDENT, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | INFO_PACK_SENT | CHAR | 1 | OLIMS - MD Info Pack Sent |
|  | INFO_PACK_DATE | DATS | 8 | OLIMS - MD Info Pack Sent Date |
|  | REC_DEED | CHAR | 1 | OLIMS - MDU Received Deed of Repayment |
|  | REC_AUTH | CHAR | 1 | OLIMS - MDU Received Letter of Authority & Direction |
|  | REC_PPD | CHAR | 1 | OLIMS - MDU Received PPD Form |
|  | REC_TAX | CHAR | 1 | OLIMS - MDU Received Tax Concession Form |
|  | REC_MED1 | CHAR | 1 | OLIMS - MDU Received Medical Reports |
|  | REC_MED2 | CHAR | 1 | OLIMS - MDU Received Medical Reports |
|  | MDRP_DATE | DATS | 8 | OLIMS - MDRP Date |
|  | MDRP_SUB_DATE | DATS | 8 | OLIMS - MD Submission Date |
|  | MDRP_RECOM | CHAR | 2 | OLIMS - MDRP Recommendation |
|  | POST_PANEL_DATE | DATS | 8 | OLIMS - MD Report sent to Employee Post Panel |
|  | COP_LTR_GEN_DT | DATS | 8 | OLIMS - MD CoP Letter Generated Date |
|  | COP_SUB_GEN_DT | DATS | 8 | OLIMS - MD Report sent to CoP Date |
|  | COP_SUB_RCVD_DT | DATS | 8 | OLIMS - MD Submission Received From CoP Date |
|  | COP_LTR_RCVD_DT | DATS | 8 | OLIMS - MD Report Received From CoP Date |
|  | COP_LTR_SENT_DT | DATS | 8 | OLIMS - MD CoP Letter sent to Employee Date |
|  | COP_TRIM_NO | CHAR | 15 | OLIMS - Manual TRIM Number |
|  | COP_TRIM_DATE | DATS | 8 | OLIMS - MD TRIM Date |
|  | NOM_LDS | DATS | 8 | OLIMS - Nominated Last Day of Service |
|  | REQ_LDS | DATS | 8 | OLIMS - Requested Last Day of Service |
|  | DD_AMOUNT | DEC | 11 | OLIMS - Medical Discharge Death & Disability Amount |
|  | DD_SERV_FACT | DEC | 5 | OLIMS - Death & Disability Service Factor |
|  | EMP_2MTH_SENT | CHAR | 1 | OLIMS - MD 2 Month Letter Sent to Employee |
|  | OFFDUTY_APPEAL | CHAR | 1 | OLIMS - Officer has Appealed against the Off-Duty Recom |
|  | CERT_DET_DATE | DATS | 8 | OLIMS - WC Commission issued a Certificate of Determination |
|  | APPEAL_AMOUNT | DEC | 11 | OLIMS - Medical Discharge Death & Disability Amount |
|  | APPEAL_DIFF | DEC | 11 | OLIMS - Medical Discharge Appeal Top-Up Amount |
|  | APP_LTR_GEN_DT | DATS | 8 | OLIMS - MD Appeal CoP Letter Generated Date |
|  | APP_SUB_GEN_DT | DATS | 8 | OLIMS - MD Appeal CoP Submission Generated Date |
|  | APP_SUB_RCVD_DT | DATS | 8 | OLIMS - MD Appeal Submission Received From CoP Date |
|  | APP_LTR_RCVD_DT | DATS | 8 | OLIMS - MD Appeal Letter Received From CoP Date |
|  | APP_LTR_SENT_DT | DATS | 8 | OLIMS - MD Appeal Letter sent to Employee Date |
|  | APP_TRIM_NO | CHAR | 15 | OLIMS - Manual TRIM Number |
|  | APP_TRIM_DATE | DATS | 8 | OLIMS - MD TRIM Date |
|  | TPD_AMOUNT | DEC | 11 | OLIMS - Medical Discharge TPD Amount |
|  | SASS_AMOUNT | DEC | 11 | OLIMS - Medical Discharge SASS Amount |
|  | SASS_DIFF | DEC | 11 | OLIMS - Medical Discharge SASS Top-Up Amount |
|  | SASS_LTR_GEN_DT | DATS | 8 | OLIMS - MD SASS CoP Letter Generated Date |
|  | SASS_SUB_GEN_DT | DATS | 8 | OLIMS - MD SASS CoP Submission Generated Date |
|  | SASS_SUB_RCVD_DT | DATS | 8 | OLIMS - MD SASS Submission Received From CoP Date |
|  | SASS_LTR_RCVD_DT | DATS | 8 | OLIMS - MD SASS Letter Received From CoP Date |
|  | SASS_LTR_SENT_DT | DATS | 8 | OLIMS - MD SASS Letter sent to Employee Date |
|  | SASS_TRIM_NO | CHAR | 15 | OLIMS - Manual TRIM Number |
|  | SASS_TRIM_DATE | DATS | 8 | OLIMS - MD TRIM Date |
|  | ADMIN_LTR_DATE | DATS | 8 | OLIMS - MD Admin Letter sent to Employee Date |
|  | ADMIN_LTR_RCVD | CHAR | 1 | OLIMS - MD Admin Letter Received from Employee |
|  | ADMIN_SUB_DATE | DATS | 8 | OLIMS - MD Admin Medical Discharge Submission Date |
|  | ADMIN_SUB_RECVD | DATS | 8 | OLIMS - MD Admin Medical Discharge Submission Recvd Date |
|  | ADMIN_RECOM | CHAR | 1 | OLIMS - Medical Discharge Recommendation |
|  | ADMIN_RPT_DATE | DATS | 8 | OLIMS - MD Admin Medical Discharge Report Date |
|  | ADMIN_FIN_RECVD | DATS | 8 | OLIMS - Signed Final MD Admin Letter Imported Date |
|  | ADMIN_FIN_DATE | DATS | 8 | OLIMS - Final MD Admin Letter sent to Employee Date |
|  | ADMIN_TRIM_NO | CHAR | 15 | OLIMS - Manual TRIM Number |
|  | ADMIN_TRIM_DATE | DATS | 8 | OLIMS - MD TRIM Date |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_MED

- File: `ZIM_IN_MED_fields.json`
- Object type: `TRANSP`
- Field count: **5**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | MED_PRAC | NUMC | 10 | OLIMS - Health Professional Code |

### ZIM_IN_MEDRPT

- File: `ZIM_IN_MEDRPT_fields.json`
- Object type: `TRANSP`
- Field count: **9**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | MED_PRAC | NUMC | 10 | OLIMS - Health Professional Code |
|  | MED_OTHER | CHAR | 60 | OLIMS - Person that provided the Medical Report |
|  | MED_RPT_DATE | DATS | 8 | OLIMS - Medical Report Date |
|  | SHORT_DESC | CHAR | 80 | OLIMS - Short Descripiton of Medical Report |
|  | USER_GROUP | CHAR | 1 | OLIMS - User Access Category |

### ZIM_IN_MEDRPT_L

- File: `ZIM_IN_MEDRPT_L_fields.json`
- Object type: `TRANSP`
- Field count: **13**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | MED_PRAC | NUMC | 10 | OLIMS - Health Professional Code |
|  | MED_OTHER | CHAR | 60 | OLIMS - Person that provided the Medical Report |
|  | MED_RPT_DATE | DATS | 8 | OLIMS - Medical Report Date |
|  | SHORT_DESC | CHAR | 80 | OLIMS - Short Descripiton of Medical Report |
|  | USER_GROUP | CHAR | 1 | OLIMS - User Access Category |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_MED_LOG

- File: `ZIM_IN_MED_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **9**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | MED_PRAC | NUMC | 10 | OLIMS - Health Professional Code |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_MEET

- File: `ZIM_IN_MEET_fields.json`
- Object type: `TRANSP`
- Field count: **14**
- Primary key: **MANDT, PERNR, INCIDENT, MEET_DATE, MEET_TYPE**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | MEET_DATE | DATS | 8 | OLIMS - Meeting Date |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
|  | MEET_DESC | CHAR | 80 | OLIMS Meeting Description |
|  | MEET_OTHER_TYPE | CHAR | 30 | OLIMS - Meeting type for Other |
|  | MEET_TIME | TIMS | 6 | OLIMS - Meeting Time |
|  | MEET_GOAL | CHAR | 128 | OLIMS - Meeting Goal |
|  | AGENDAX | CHAR | 1 | OLIMS: Flag for Agenda Sent |
|  | AGENDA_SENT | DATS | 8 | Date |
|  | MINUTESX | CHAR | 1 | OLIMS: Minutes Sent flag |
|  | MINUTES_SENT | DATS | 8 | Date |
|  | MEET_LOCATION | CHAR | 60 | OLIMS Meeting Location |

### ZIM_IN_MEET_ACT

- File: `ZIM_IN_MEET_ACT_fields.json`
- Object type: `TRANSP`
- Field count: **13**
- Primary key: **MANDT, PERNR, INCIDENT, MEET_DATE, MEET_TYPE, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | MEET_DATE | DATS | 8 | OLIMS - Meeting Date |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | USER_CAT | CHAR | 1 | OLIMS - User Category |
|  | USER_CODE | NUMC | 10 | OLIMS - User Code |
|  | USER_NAME | CHAR | 60 | OLIMS - User Name |
|  | DUE_DATE | DATS | 8 | OLIMS - Dues date |
|  | COMPLETE | CHAR | 1 | OLIMS - Complete Flag |
|  | COMPL_DATE | DATS | 8 | OLIMS - Completion Date |
|  | USER_ACTION | CHAR | 128 | OLIMS - User action for meeting |

### ZIM_IN_MEET_ACTL

- File: `ZIM_IN_MEET_ACTL_fields.json`
- Object type: `TRANSP`
- Field count: **17**
- Primary key: **MANDT, PERNR, INCIDENT, MEET_DATE, MEET_TYPE, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | MEET_DATE | DATS | 8 | OLIMS - Meeting Date |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | USER_CAT | CHAR | 1 | OLIMS - User Category |
|  | USER_CODE | NUMC | 10 | OLIMS - User Code |
|  | USER_NAME | CHAR | 60 | OLIMS - User Name |
|  | DUE_DATE | DATS | 8 | OLIMS - Dues date |
|  | COMPLETE | CHAR | 1 | OLIMS - Complete Flag |
|  | COMPL_DATE | DATS | 8 | OLIMS - Completion Date |
|  | USER_ACTION | CHAR | 128 | OLIMS - User action for meeting |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_MEET_AGND

- File: `ZIM_IN_MEET_AGND_fields.json`
- Object type: `TRANSP`
- Field count: **11**
- Primary key: **MANDT, PERNR, INCIDENT, MEET_DATE, MEET_TYPE**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | MEET_DATE | DATS | 8 | OLIMS - Meeting Date |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
|  | MEET_DESC | CHAR | 80 | OLIMS Meeting Description |
|  | MEET_OTHER_TYPE | CHAR | 30 | OLIMS - Meeting type for Other |
|  | MEET_TIME | TIMS | 6 | OLIMS - Meeting Time |
|  | MEET_GOAL | CHAR | 128 | OLIMS - Meeting Goal |
|  | MEET_LOCATION | CHAR | 60 | OLIMS Meeting Location |
|  | MEET_AGENDA | CHAR | 225 | OLIMS - Meeting Agenda |

### ZIM_IN_MEET_ATT

- File: `ZIM_IN_MEET_ATT_fields.json`
- Object type: `TRANSP`
- Field count: **9**
- Primary key: **MANDT, PERNR, INCIDENT, MEET_DATE, MEET_TYPE, USER_CAT, USER_CODE, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | MEET_DATE | DATS | 8 | OLIMS - Meeting Date |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
| Y | USER_CAT | CHAR | 1 | OLIMS - User Category |
| Y | USER_CODE | NUMC | 10 | OLIMS - User Code |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | USER_NAME | CHAR | 60 | OLIMS - User Name |

### ZIM_IN_MEET_ATTL

- File: `ZIM_IN_MEET_ATTL_fields.json`
- Object type: `TRANSP`
- Field count: **13**
- Primary key: **MANDT, PERNR, INCIDENT, MEET_DATE, MEET_TYPE, USER_CAT, USER_CODE, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | MEET_DATE | DATS | 8 | OLIMS - Meeting Date |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
| Y | USER_CAT | CHAR | 1 | OLIMS - User Category |
| Y | USER_CODE | NUMC | 10 | OLIMS - User Code |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | USER_NAME | CHAR | 60 | OLIMS - User Name |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_MEET_LOG

- File: `ZIM_IN_MEET_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **10**
- Primary key: **MANDT, PERNR, INCIDENT, MEET_DATE, MEET_TYPE, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | MEET_DATE | DATS | 8 | OLIMS - Meeting Date |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | MEET_DESC | CHAR | 80 | OLIMS Meeting Description |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_MTG

- File: `ZIM_IN_MTG_fields.json`
- Object type: `TRANSP`
- Field count: **16**
- Primary key: **MANDT, PERNR, INCIDENT, MEET_TYPE, MEET_SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
| Y | MEET_SEQ_NO | NUMC | 4 | General Sequence Number - 4 Digits |
|  | MEET_DATE | DATS | 8 | OLIMS - Meeting Date |
|  | MEET_DESC | CHAR | 80 | OLIMS Meeting Description |
|  | MEET_OTHER_TYPE | CHAR | 30 | OLIMS - Meeting type for Other |
|  | MEET_TIME | TIMS | 6 | OLIMS - Meeting Time |
|  | MEET_GOAL | CHAR | 128 | OLIMS - Meeting Goal |
|  | AGENDAX | CHAR | 1 | OLIMS: Flag for Agenda Sent |
|  | AGENDA_SENT | DATS | 8 | Date |
|  | MINUTESX | CHAR | 1 | OLIMS: Minutes Sent flag |
|  | MINUTES_SENT | DATS | 8 | Date |
|  | MEET_LOCATION | CHAR | 60 | OLIMS Meeting Location |
|  | LEGAL_SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |

### ZIM_IN_MTG_ACT

- File: `ZIM_IN_MTG_ACT_fields.json`
- Object type: `TRANSP`
- Field count: **13**
- Primary key: **MANDT, PERNR, INCIDENT, MEET_TYPE, MEET_SEQ_NO, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
| Y | MEET_SEQ_NO | NUMC | 4 | General Sequence Number - 4 Digits |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | USER_CAT | CHAR | 1 | OLIMS - User Category |
|  | USER_CODE | NUMC | 10 | OLIMS - User Code |
|  | USER_NAME | CHAR | 60 | OLIMS - User Name |
|  | DUE_DATE | DATS | 8 | OLIMS - Dues date |
|  | COMPLETE | CHAR | 1 | OLIMS - Complete Flag |
|  | COMPL_DATE | DATS | 8 | OLIMS - Completion Date |
|  | USER_ACTION | CHAR | 128 | OLIMS - User action for meeting |

### ZIM_IN_MTG_ACTL

- File: `ZIM_IN_MTG_ACTL_fields.json`
- Object type: `TRANSP`
- Field count: **17**
- Primary key: **MANDT, PERNR, INCIDENT, MEET_TYPE, MEET_SEQ_NO, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
| Y | MEET_SEQ_NO | NUMC | 4 | General Sequence Number - 4 Digits |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | USER_CAT | CHAR | 1 | OLIMS - User Category |
|  | USER_CODE | NUMC | 10 | OLIMS - User Code |
|  | USER_NAME | CHAR | 60 | OLIMS - User Name |
|  | DUE_DATE | DATS | 8 | OLIMS - Dues date |
|  | COMPLETE | CHAR | 1 | OLIMS - Complete Flag |
|  | COMPL_DATE | DATS | 8 | OLIMS - Completion Date |
|  | USER_ACTION | CHAR | 128 | OLIMS - User action for meeting |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_MTG_AGND

- File: `ZIM_IN_MTG_AGND_fields.json`
- Object type: `TRANSP`
- Field count: **7**
- Primary key: **MANDT, PERNR, INCIDENT, MEET_TYPE, MEET_SEQ_NO, ITEM_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
| Y | MEET_SEQ_NO | NUMC | 4 | General Sequence Number - 4 Digits |
| Y | ITEM_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | AGENDA_LINE | CHAR | 132 | Text (length 132) |

### ZIM_IN_MTG_AGNDL

- File: `ZIM_IN_MTG_AGNDL_fields.json`
- Object type: `TRANSP`
- Field count: **11**
- Primary key: **MANDT, PERNR, INCIDENT, MEET_TYPE, MEET_SEQ_NO, ITEM_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
| Y | MEET_SEQ_NO | NUMC | 4 | General Sequence Number - 4 Digits |
| Y | ITEM_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | AGENDA_LINE | CHAR | 132 | Text (length 132) |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_MTG_ATT

- File: `ZIM_IN_MTG_ATT_fields.json`
- Object type: `TRANSP`
- Field count: **9**
- Primary key: **MANDT, PERNR, INCIDENT, MEET_TYPE, MEET_SEQ_NO, USER_CAT, USER_CODE, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
| Y | MEET_SEQ_NO | NUMC | 4 | General Sequence Number - 4 Digits |
| Y | USER_CAT | CHAR | 1 | OLIMS - User Category |
| Y | USER_CODE | NUMC | 10 | OLIMS - User Code |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | USER_NAME | CHAR | 60 | OLIMS - User Name |

### ZIM_IN_MTG_ATTL

- File: `ZIM_IN_MTG_ATTL_fields.json`
- Object type: `TRANSP`
- Field count: **13**
- Primary key: **MANDT, PERNR, INCIDENT, MEET_TYPE, MEET_SEQ_NO, USER_CAT, USER_CODE, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
| Y | MEET_SEQ_NO | NUMC | 4 | General Sequence Number - 4 Digits |
| Y | USER_CAT | CHAR | 1 | OLIMS - User Category |
| Y | USER_CODE | NUMC | 10 | OLIMS - User Code |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | USER_NAME | CHAR | 60 | OLIMS - User Name |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_MTG_LOG

- File: `ZIM_IN_MTG_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **20**
- Primary key: **MANDT, PERNR, INCIDENT, MEET_TYPE, MEET_SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
| Y | MEET_SEQ_NO | NUMC | 4 | General Sequence Number - 4 Digits |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | MEET_DATE | DATS | 8 | OLIMS - Meeting Date |
|  | MEET_DESC | CHAR | 80 | OLIMS Meeting Description |
|  | MEET_OTHER_TYPE | CHAR | 30 | OLIMS - Meeting type for Other |
|  | MEET_TIME | TIMS | 6 | OLIMS - Meeting Time |
|  | MEET_GOAL | CHAR | 128 | OLIMS - Meeting Goal |
|  | AGENDAX | CHAR | 1 | OLIMS: Flag for Agenda Sent |
|  | AGENDA_SENT | DATS | 8 | Date |
|  | MINUTESX | CHAR | 1 | OLIMS: Minutes Sent flag |
|  | MINUTES_SENT | DATS | 8 | Date |
|  | MEET_LOCATION | CHAR | 60 | OLIMS Meeting Location |
|  | LEGAL_SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_ORP

- File: `ZIM_IN_ORP_fields.json`
- Object type: `TRANSP`
- Field count: **14**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 5 | Sequence Number |
|  | BEGDA | DATS | 8 | Start Date |
|  | ENDDA | DATS | 8 | End Date |
|  | DOD | DATS | 8 | OLIMS - Date of Disablement |
|  | ORP_AMOUNT | CURR | 13 | Wage Type Amount for Payments |
|  | MANUAL_ENTRY | CHAR | 1 | Checkbox |
|  | UPD_DATE | DATS | 8 | Date |
|  | UPD_TIME | TIMS | 6 | Time |
|  | UPD_USER | CHAR | 12 | User Name |
|  | DESCRIPTION | CHAR | 80 | Description |
|  | INACTIVE | CHAR | 1 | Deletion Indicator |

### ZIM_IN_PAWE

- File: `ZIM_IN_PAWE_fields.json`
- Object type: `TRANSP`
- Field count: **22**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 5 | Sequence Number |
|  | BEGDA | DATS | 8 | Start Date |
|  | ENDDA | DATS | 8 | End Date |
|  | DOI | DATS | 8 | OLIMS: Date of Injury |
|  | YRLY_ADD_EARNING | CURR | 13 | Wage Type Amount for Payments |
|  | YRLY_FULL_SAL | CURR | 13 | Wage Type Amount for Payments |
|  | WKLY_FULL_SAL | CURR | 13 | Wage Type Amount for Payments |
|  | WKLY_LOST_WAGES | CURR | 13 | Wage Type Amount for Payments |
|  | WKLY_PFULL_CUR | CURR | 13 | Wage Type Amount for Payments |
|  | PERCENT_INC | DEC | 8 | OLIMS: PAWE Percent increase |
|  | PERCENT_INC_DEF | DEC | 8 | OLIMS: PAWE Percent increase |
|  | SAL_DATE_FROM | DATS | 8 | Date from |
|  | SAL_DATE_TO | DATS | 8 | To date |
|  | MANUAL_ENTRY | CHAR | 1 | Checkbox |
|  | UPD_DATE | DATS | 8 | Date |
|  | UPD_TIME | TIMS | 6 | Time |
|  | UPD_USER | CHAR | 12 | User Name |
|  | DESCRIPTION | CHAR | 80 | Description |
|  | INACTIVE | CHAR | 1 | Deletion Indicator |

### ZIM_IN_PAWE_LOG

- File: `ZIM_IN_PAWE_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **26**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 5 | Sequence Number |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | BEGDA | DATS | 8 | Start Date |
|  | ENDDA | DATS | 8 | End Date |
|  | DOI | DATS | 8 | OLIMS: Date of Injury |
|  | YRLY_ADD_EARNING | CURR | 13 | Wage Type Amount for Payments |
|  | YRLY_FULL_SAL | CURR | 13 | Wage Type Amount for Payments |
|  | WKLY_FULL_SAL | CURR | 13 | Wage Type Amount for Payments |
|  | WKLY_LOST_WAGES | CURR | 13 | Wage Type Amount for Payments |
|  | WKLY_PFULL_CUR | CURR | 13 | Wage Type Amount for Payments |
|  | PERCENT_INC | DEC | 8 | OLIMS: PAWE Percent increase |
|  | PERCENT_INC_DEF | DEC | 8 | OLIMS: PAWE Percent increase |
|  | SAL_DATE_FROM | DATS | 8 | Date from |
|  | SAL_DATE_TO | DATS | 8 | To date |
|  | MANUAL_ENTRY | CHAR | 1 | Checkbox |
|  | UPD_DATE | DATS | 8 | Date |
|  | UPD_TIME | TIMS | 6 | Time |
|  | UPD_USER | CHAR | 12 | User Name |
|  | DESCRIPTION | CHAR | 80 | Description |
|  | INACTIVE | CHAR | 1 | Deletion Indicator |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_PAWE_LOSL

- File: `ZIM_IN_PAWE_LOSL_fields.json`
- Object type: `TRANSP`
- Field count: **9**
- Primary key: **MANDT, PERNR, INCIDENT, LGART, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | LGART | CHAR | 4 | Wage Type |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | EXCL_ALLOW | CHAR | 1 | OLIMS - Exclude Allowance |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_PAWE_LOST

- File: `ZIM_IN_PAWE_LOST_fields.json`
- Object type: `TRANSP`
- Field count: **5**
- Primary key: **MANDT, PERNR, INCIDENT, LGART**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | LGART | CHAR | 4 | Wage Type |
|  | EXCL_ALLOW | CHAR | 1 | OLIMS - Exclude Allowance |

### ZIM_IN_PAWE_UPD

- File: `ZIM_IN_PAWE_UPD_fields.json`
- Object type: `INTTAB`
- Field count: **23**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | MANDT | CLNT | 3 | Client |
|  | PERNR | NUMC | 8 | Personnel Number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | SEQ_NO | NUMC | 5 | Sequence Number |
|  | BEGDA | DATS | 8 | Start Date |
|  | ENDDA | DATS | 8 | End Date |
|  | DOI | DATS | 8 | OLIMS: Date of Injury |
|  | YRLY_ADD_EARNING | CURR | 13 | Wage Type Amount for Payments |
|  | YRLY_FULL_SAL | CURR | 13 | Wage Type Amount for Payments |
|  | WKLY_FULL_SAL | CURR | 13 | Wage Type Amount for Payments |
|  | WKLY_LOST_WAGES | CURR | 13 | Wage Type Amount for Payments |
|  | WKLY_PFULL_CUR | CURR | 13 | Wage Type Amount for Payments |
|  | PERCENT_INC | DEC | 8 | OLIMS: PAWE Percent increase |
|  | PERCENT_INC_DEF | DEC | 8 | OLIMS: PAWE Percent increase |
|  | SAL_DATE_FROM | DATS | 8 | Date from |
|  | SAL_DATE_TO | DATS | 8 | To date |
|  | MANUAL_ENTRY | CHAR | 1 | Checkbox |
|  | UPD_DATE | DATS | 8 | Date |
|  | UPD_TIME | TIMS | 6 | Time |
|  | UPD_USER | CHAR | 12 | User Name |
|  | DESCRIPTION | CHAR | 80 | Description |
|  | INACTIVE | CHAR | 1 | Deletion Indicator |
|  | UPDKZ | CHAR | 1 | Update indicator |

### ZIM_IN_PMO

- File: `ZIM_IN_PMO_fields.json`
- Object type: `TRANSP`
- Field count: **8**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | REF_DATE | DATS | 8 | OLIMS - PMO Referral Date |
|  | REC_DATE | DATS | 8 | OLIMS - PMO Receipt Date |
|  | STATUS | CHAR | 1 | OLIMS - PMO Status |
|  | REVIEW_DATE | DATS | 8 | OLIMS - PMO Review Date |

### ZIM_IN_PMO_LOG

- File: `ZIM_IN_PMO_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **12**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | REF_DATE | DATS | 8 | OLIMS - PMO Referral Date |
|  | REC_DATE | DATS | 8 | OLIMS - PMO Receipt Date |
|  | STATUS | CHAR | 1 | OLIMS - PMO Status |
|  | REVIEW_DATE | DATS | 8 | OLIMS - PMO Review Date |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_PRE88

- File: `ZIM_IN_PRE88_fields.json`
- Object type: `TRANSP`
- Field count: **40**
- Primary key: **MANDT, PERNR, INCIDENT**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
|  | SCU_ADVISOR | NUMC | 8 | OLIMS - Specialist Claims Advisor |
|  | ASS_STATUS | CHAR | 1 | OLIMS - SCU Assessment Status |
|  | RECOMMENDATION | CHAR | 1 | OLIMS - SCU Claims Status (Recommended) |
|  | CURRENT_STATUS | CHAR | 1 | OLIMS - SCU Current Status |
|  | EMP_CONT_COMP | CHAR | 1 | OLIMS - SCU Employee Contact Complete |
|  | EMP_CONT_DATE | DATS | 8 | OLIMS - SCU Employee Contact Date |
|  | SUP_CONT_COMP | CHAR | 1 | OLIMS - SCU Employer Contact Complete |
|  | SUP_CONT_DATE | DATS | 8 | OLIMS - SCU Employer Contact Date |
|  | INS_CONT_COMP | CHAR | 1 | OLIMS - SCU Insurer Contact Complete |
|  | INS_CONT_DATE | DATS | 8 | OLIMS - SCU Insurer Contact Date |
|  | P124_RECEIVED | CHAR | 1 | OLIMS - SCU P124 Form Reveived |
|  | CREATED_DATE | DATS | 8 | OLIMS - SCU Created Date |
|  | CLOSED_DATE | DATS | 8 | OLIMS - SCU Closed Date |
|  | STATUS_DATE | DATS | 8 | OLIMS - Status Date |
|  | STRATEGIES | CHAR | 128 | OLIMS - Strategies/Actions |
|  | STRATEGIES_1 | CHAR | 128 | OLIMS - Strategies/Actions |
|  | CURRENT_ACTION | CHAR | 2 | OLIMS - SCU Current Action |
|  | LIAB_LTR_COMP | CHAR | 1 | OLIMS - SCU Liability Letter Complete |
|  | LIAB_LTR_APP | CHAR | 1 | OLIMS - SCU Liability Letter Approved |
|  | REC_COMP | CHAR | 1 | OLIMS - SCU Recommendation Complete |
|  | REC_COMP_DATE | DATS | 8 | OLIMS - SCU Recommendation Complete Date |
|  | REC_COMP_USER | CHAR | 12 | OLIMS - SCU Recommendation Completed By |
|  | REC_APP_TL | CHAR | 1 | OLIMS - SCU Recommendation Approved Team Leader |
|  | REC_APP_MGR | CHAR | 1 | OLIMS - SCU Recommendation Approved Manager |
|  | REC_APP_DIR | CHAR | 1 | OLIMS - SCU Recommendation Approved Director |
|  | LIAB_DEC_DATE | DATS | 8 | OLIMS - Pre 88 Liability Decision Date |
|  | ASS_COMP_DATE | DATS | 8 | OLIMS - SCU Assessment Complete Date |
|  | TL_APPROVED | CHAR | 12 | OLIMS - SCU Team Leader Approved |
|  | TL_APPROVED_DATE | DATS | 8 | OLIMS - SCU Team Leader Approved Date |
|  | MGR_APPROVED | CHAR | 12 | OLIMS - SCU Manager Approved |
|  | MGR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Manager Approved Date |
|  | DIR_APPROVED | CHAR | 12 | OLIMS - SCU Director Approved |
|  | DIR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Director Approved Date |
|  | DECLINE_IMP_DATE | DATS | 8 | OLIMS - Pre 88 Decline Import Date |
|  | LIAB_SENT_DATE | DATS | 8 | OLIMS - SCU Liability Sent Date |
|  | CLAIM_CLASS | CHAR | 1 | OLIMS - SCU - Claim Classification |
|  | PARENT_INCIDENT | NUMC | 10 | Incident No. |

### ZIM_IN_PRE88_LOG

- File: `ZIM_IN_PRE88_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **42**
- Primary key: **MANDT, PERNR, INCIDENT, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | SCU_ADVISOR | NUMC | 8 | OLIMS - Specialist Claims Advisor |
|  | ASS_STATUS | CHAR | 1 | OLIMS - SCU Assessment Status |
|  | RECOMMENDATION | CHAR | 1 | OLIMS - SCU Claims Status (Recommended) |
|  | CURRENT_STATUS | CHAR | 1 | OLIMS - SCU Current Status |
|  | EMP_CONT_COMP | CHAR | 1 | OLIMS - SCU Employee Contact Complete |
|  | EMP_CONT_DATE | DATS | 8 | OLIMS - SCU Employee Contact Date |
|  | SUP_CONT_COMP | CHAR | 1 | OLIMS - SCU Employer Contact Complete |
|  | SUP_CONT_DATE | DATS | 8 | OLIMS - SCU Employer Contact Date |
|  | INS_CONT_COMP | CHAR | 1 | OLIMS - SCU Insurer Contact Complete |
|  | INS_CONT_DATE | DATS | 8 | OLIMS - SCU Insurer Contact Date |
|  | P124_RECEIVED | CHAR | 1 | OLIMS - SCU P124 Form Reveived |
|  | CREATED_DATE | DATS | 8 | OLIMS - SCU Created Date |
|  | CLOSED_DATE | DATS | 8 | OLIMS - SCU Closed Date |
|  | STATUS_DATE | DATS | 8 | OLIMS - Status Date |
|  | STRATEGIES | CHAR | 128 | OLIMS - Strategies/Actions |
|  | STRATEGIES_1 | CHAR | 128 | OLIMS - Strategies/Actions |
|  | CURRENT_ACTION | CHAR | 2 | OLIMS - SCU Current Action |
|  | REC_COMP | CHAR | 1 | OLIMS - SCU Recommendation Complete |
|  | REC_COMP_DATE | DATS | 8 | OLIMS - SCU Recommendation Complete Date |
|  | REC_COMP_USER | CHAR | 12 | OLIMS - SCU Recommendation Completed By |
|  | REC_APP_TL | CHAR | 1 | OLIMS - SCU Recommendation Approved Team Leader |
|  | REC_APP_MGR | CHAR | 1 | OLIMS - SCU Recommendation Approved Manager |
|  | REC_APP_DIR | CHAR | 1 | OLIMS - SCU Recommendation Approved Director |
|  | LIAB_DEC_DATE | DATS | 8 | OLIMS - Pre 88 Liability Decision Date |
|  | ASS_COMP_DATE | DATS | 8 | OLIMS - SCU Assessment Complete Date |
|  | TL_APPROVED | CHAR | 12 | OLIMS - SCU Team Leader Approved |
|  | TL_APPROVED_DATE | DATS | 8 | OLIMS - SCU Team Leader Approved Date |
|  | MGR_APPROVED | CHAR | 12 | OLIMS - SCU Manager Approved |
|  | MGR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Manager Approved Date |
|  | DIR_APPROVED | CHAR | 12 | OLIMS - SCU Director Approved |
|  | DIR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Director Approved Date |
|  | DECLINE_IMP_DATE | DATS | 8 | OLIMS - Pre 88 Decline Import Date |
|  | LIAB_SENT_DATE | DATS | 8 | OLIMS - SCU Liability Sent Date |
|  | CLAIM_CLASS | CHAR | 1 | OLIMS - SCU - Claim Classification |
|  | PARENT_INCIDENT | NUMC | 10 | Incident No. |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_PRE_INV

- File: `ZIM_IN_PRE_INV_fields.json`
- Object type: `TRANSP`
- Field count: **24**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | CREATED_DATE | DATS | 8 | OLIMS Date Created |
|  | CATEG | CHAR | 5 | Payment categories |
|  | SUCAT | CHAR | 6 | Payment type sub-category for OHS |
|  | RECDT | DATS | 8 | Date |
|  | REFNO | CHAR | 20 | Char 20 |
|  | ZZVENDOR | CHAR | 10 | Vendor Number |
|  | ZZSGTXT | CHAR | 50 | Item Text |
|  | ZZINVGST | CHAR | 1 | GST Applicable |
|  | AMTPD | CURR | 9 | Amount |
|  | WAERS | CUKY | 5 | Currency Key |
|  | INV_COMP | CHAR | 1 | OLIMS - SCU Invoice Complete |
|  | INV_APP | CHAR | 1 | OLIMS - SCU Invoice Approved |
|  | PROC_DATE | DATS | 8 | Date Processed |
|  | BUKRS | CHAR | 4 | Company Code |
|  | BELNR | CHAR | 10 | Document Number of an Accounting Document |
|  | GJAHR | NUMC | 4 | Fiscal Year |
|  | TL_APPROVED | CHAR | 12 | OLIMS - SCU Team Leader Approved |
|  | TL_APPROVED_DATE | DATS | 8 | OLIMS - SCU Team Leader Approved Date |
|  | MGR_APPROVED | CHAR | 12 | OLIMS - SCU Manager Approved |
|  | MGR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Manager Approved Date |

### ZIM_IN_PRE_INV_L

- File: `ZIM_IN_PRE_INV_L_fields.json`
- Object type: `TRANSP`
- Field count: **28**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | CREATED_DATE | DATS | 8 | OLIMS Date Created |
|  | CATEG | CHAR | 5 | Payment categories |
|  | SUCAT | CHAR | 6 | Payment type sub-category for OHS |
|  | RECDT | DATS | 8 | Date |
|  | REFNO | CHAR | 20 | Char 20 |
|  | ZZVENDOR | CHAR | 10 | Vendor Number |
|  | ZZSGTXT | CHAR | 50 | Item Text |
|  | ZZINVGST | CHAR | 1 | GST Applicable |
|  | AMTPD | CURR | 9 | Amount |
|  | WAERS | CUKY | 5 | Currency Key |
|  | INV_COMP | CHAR | 1 | OLIMS - SCU Invoice Complete |
|  | INV_APP | CHAR | 1 | OLIMS - SCU Invoice Approved |
|  | PROC_DATE | DATS | 8 | Date Processed |
|  | BUKRS | CHAR | 4 | Company Code |
|  | BELNR | CHAR | 10 | Document Number of an Accounting Document |
|  | GJAHR | NUMC | 4 | Fiscal Year |
|  | TL_APPROVED | CHAR | 12 | OLIMS - SCU Team Leader Approved |
|  | TL_APPROVED_DATE | DATS | 8 | OLIMS - SCU Team Leader Approved Date |
|  | MGR_APPROVED | CHAR | 12 | OLIMS - SCU Manager Approved |
|  | MGR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Manager Approved Date |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_PRE_LEG

- File: `ZIM_IN_PRE_LEG_fields.json`
- Object type: `TRANSP`
- Field count: **21**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | ADVICE_GENERAL | CHAR | 1 | OLIMS - Pre 88 General Legal Advice |
|  | ADVICE_10B | CHAR | 1 | OLIMS - Pre 88 10B(3) Dispute Legal Advice |
|  | ADVICE_12D | CHAR | 1 | OLIMS - Pre 88 12D Legal Advice |
|  | ADVICE_12C | CHAR | 1 | OLIMS - Pre 88 12C Legal Advice |
|  | ADVICE_ABSENCES | CHAR | 1 | OLIMS - Pre 88 Absences Legal Advice |
|  | ADVICE_COMMON | CHAR | 1 | OLIMS - Pre 88 Common Law Legal Advice |
|  | ADVICE_OTHER | CHAR | 1 | OLIMS - Pre 88 Other Legal Advice |
|  | LEGAL_LTR_COMP | CHAR | 1 | OLIMS - SCU Legal Letter Complete |
|  | LEGAL_LTR_APP | CHAR | 1 | OLIMS - SCU Legal Letter Approved |
|  | SENT_DATE | DATS | 8 | OLIMS - Legal Sent Date |
|  | CREATED_DATE | DATS | 8 | OLIMS Date Created |
|  | DESCRIPTION | CHAR | 80 | OLIMS - Legal Short Description of Request |
|  | OTHER_DESC | CHAR | 80 | OLIMS - Legal Short Description of Request |
|  | TL_APPROVED | CHAR | 12 | OLIMS - SCU Team Leader Approved |
|  | TL_APPROVED_DATE | DATS | 8 | OLIMS - SCU Team Leader Approved Date |
|  | MGR_APPROVED | CHAR | 12 | OLIMS - SCU Manager Approved |
|  | MGR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Manager Approved Date |

### ZIM_IN_PRE_LEG_L

- File: `ZIM_IN_PRE_LEG_L_fields.json`
- Object type: `TRANSP`
- Field count: **25**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | ADVICE_GENERAL | CHAR | 1 | OLIMS - Pre 88 General Legal Advice |
|  | ADVICE_10B | CHAR | 1 | OLIMS - Pre 88 10B(3) Dispute Legal Advice |
|  | ADVICE_12D | CHAR | 1 | OLIMS - Pre 88 12D Legal Advice |
|  | ADVICE_12C | CHAR | 1 | OLIMS - Pre 88 12C Legal Advice |
|  | ADVICE_ABSENCES | CHAR | 1 | OLIMS - Pre 88 Absences Legal Advice |
|  | ADVICE_COMMON | CHAR | 1 | OLIMS - Pre 88 Common Law Legal Advice |
|  | ADVICE_OTHER | CHAR | 1 | OLIMS - Pre 88 Other Legal Advice |
|  | LEGAL_LTR_COMP | CHAR | 1 | OLIMS - SCU Legal Letter Complete |
|  | LEGAL_LTR_APP | CHAR | 1 | OLIMS - SCU Legal Letter Approved |
|  | SENT_DATE | DATS | 8 | OLIMS - Legal Sent Date |
|  | CREATED_DATE | DATS | 8 | OLIMS Date Created |
|  | DESCRIPTION | CHAR | 80 | OLIMS - Legal Short Description of Request |
|  | OTHER_DESC | CHAR | 80 | OLIMS - Legal Short Description of Request |
|  | TL_APPROVED | CHAR | 12 | OLIMS - SCU Team Leader Approved |
|  | TL_APPROVED_DATE | DATS | 8 | OLIMS - SCU Team Leader Approved Date |
|  | MGR_APPROVED | CHAR | 12 | OLIMS - SCU Manager Approved |
|  | MGR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Manager Approved Date |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_PRIM

- File: `ZIM_IN_PRIM_fields.json`
- Object type: `TRANSP`
- Field count: **13**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 5 | Sequence Number |
|  | BEGDA | DATS | 8 | Start Date |
|  | ENDDA | DATS | 8 | End Date |
|  | PRIM_CLAIM | CHAR | 1 | Pimary Claim for PIAWE |
|  | CONC_EXT_CLAIM | CHAR | 1 | Concurrent External Claim |
|  | DESCRIPTION | CHAR | 80 | Description |
|  | INACTIVE | CHAR | 1 | Deletion Indicator |
|  | UPD_DATE | DATS | 8 | Date |
|  | UPD_TIME | TIMS | 6 | Time |
|  | UPD_USER | CHAR | 12 | User Name |

### ZIM_IN_PRIM_LOG

- File: `ZIM_IN_PRIM_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **14**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 5 | Sequence Number |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | BEGDA | DATS | 8 | Start Date |
|  | ENDDA | DATS | 8 | End Date |
|  | PRIM_CLAIM | CHAR | 1 | Pimary Claim for PIAWE |
|  | CONC_EXT_CLAIM | CHAR | 1 | Concurrent External Claim |
|  | DESCRIPTION | CHAR | 80 | Description |
|  | INACTIVE | CHAR | 1 | Deletion Indicator |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_PRIM_UPD

- File: `ZIM_IN_PRIM_UPD_fields.json`
- Object type: `INTTAB`
- Field count: **14**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | MANDT | CLNT | 3 | Client |
|  | PERNR | NUMC | 8 | Personnel Number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | SEQ_NO | NUMC | 5 | Sequence Number |
|  | BEGDA | DATS | 8 | Start Date |
|  | ENDDA | DATS | 8 | End Date |
|  | PRIM_CLAIM | CHAR | 1 | Pimary Claim for PIAWE |
|  | CONC_EXT_CLAIM | CHAR | 1 | Concurrent External Claim |
|  | DESCRIPTION | CHAR | 80 | Description |
|  | INACTIVE | CHAR | 1 | Deletion Indicator |
|  | UPD_DATE | DATS | 8 | Date |
|  | UPD_TIME | TIMS | 6 | Time |
|  | UPD_USER | CHAR | 12 | User Name |
|  | UPDKZ | CHAR | 1 | Update indicator |

### ZIM_IN_PROV

- File: `ZIM_IN_PROV_fields.json`
- Object type: `TRANSP`
- Field count: **8**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | PROV_ACTIVITY | CHAR | 1 | OLIMS - External Provider Activity |
|  | PROV_CODE | NUMC | 10 | OLIMS - Provider Code |
|  | DATE_REQ | DATS | 8 | OLIMS - Date External Provider Requested |
|  | REF_SENT | CHAR | 1 | OLIMS - External Provider Referral Sent |

### ZIM_IN_PROV_LOG

- File: `ZIM_IN_PROV_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **12**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | PROV_ACTIVITY | CHAR | 1 | OLIMS - External Provider Activity |
|  | PROV_CODE | NUMC | 10 | OLIMS - Provider Code |
|  | DATE_REQ | DATS | 8 | OLIMS - Date External Provider Requested |
|  | REF_SENT | CHAR | 1 | OLIMS - External Provider Referral Sent |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_REC_AMT

- File: `ZIM_IN_REC_AMT_fields.json`
- Object type: `TRANSP`
- Field count: **9**
- Primary key: **MANDT, PERNR, INCIDENT, AMOUNT_TYPE, BEGDA, ENDDA**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | AMOUNT_TYPE | CHAR | 1 | OLIMS - Fixed Amount Type |
| Y | BEGDA | DATS | 8 | Start Date |
| Y | ENDDA | DATS | 8 | End Date |
|  | AMOUNT | DEC | 11 | OLIMS - Recoup Fixed Amount |
|  | EXT_EARNINGS | DEC | 11 | OLIMS - Section 40 External Earnings |
|  | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |

### ZIM_IN_REC_AMT_L

- File: `ZIM_IN_REC_AMT_L_fields.json`
- Object type: `TRANSP`
- Field count: **13**
- Primary key: **MANDT, PERNR, INCIDENT, AMOUNT_TYPE, BEGDA, ENDDA, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | AMOUNT_TYPE | CHAR | 1 | OLIMS - Fixed Amount Type |
| Y | BEGDA | DATS | 8 | Start Date |
| Y | ENDDA | DATS | 8 | End Date |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | AMOUNT | DEC | 11 | OLIMS - Recoup Fixed Amount |
|  | EXT_EARNINGS | DEC | 11 | OLIMS - Section 40 External Earnings |
|  | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_RED_PAY

- File: `ZIM_IN_RED_PAY_fields.json`
- Object type: `TRANSP`
- Field count: **5**
- Primary key: **MANDT, PERNR, INCIDENT, BEGDA, ENDDA**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | BEGDA | DATS | 8 | OLIMS - Commencement Date of Reduced Pay |
| Y | ENDDA | DATS | 8 | OLIMS - End Date of Reduced Pay |

### ZIM_IN_RED_PAY_L

- File: `ZIM_IN_RED_PAY_L_fields.json`
- Object type: `TRANSP`
- Field count: **9**
- Primary key: **MANDT, PERNR, INCIDENT, BEGDA, ENDDA, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | BEGDA | DATS | 8 | OLIMS - Commencement Date of Reduced Pay |
| Y | ENDDA | DATS | 8 | OLIMS - End Date of Reduced Pay |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_REHAB

- File: `ZIM_IN_REHAB_fields.json`
- Object type: `TRANSP`
- Field count: **9**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | ORGEH | NUMC | 8 | OLIMS - Rehabilitation Org Unit |
|  | BEGDA | DATS | 8 | OLIMS - Rehabilitation Commencement Date |
|  | ENDDA | DATS | 8 | OLIMS - Rehabilitation Completion Date |
|  | REVIEW_DATE | DATS | 8 | OLIMS - Rehabilitation Review Date |
|  | COMPLETE | CHAR | 1 | OLIMS - Rehabilitation Complete |

### ZIM_IN_REHAB_LOG

- File: `ZIM_IN_REHAB_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **13**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | ORGEH | NUMC | 8 | OLIMS - Rehabilitation Org Unit |
|  | BEGDA | DATS | 8 | OLIMS - Rehabilitation Commencement Date |
|  | ENDDA | DATS | 8 | OLIMS - Rehabilitation Completion Date |
|  | REVIEW_DATE | DATS | 8 | OLIMS - Rehabilitation Review Date |
|  | COMPLETE | CHAR | 1 | OLIMS - Rehabilitation Complete |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_REM

- File: `ZIM_IN_REM_fields.json`
- Object type: `TRANSP`
- Field count: **16**
- Primary key: **MANDT, PERNR, INCIDENT, ASS_TO, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | ASS_TO | CHAR | 1 | OLIMS - Injury Management Role |
| Y | SEQ_NO | NUMC | 6 | OLIMS - Unique Identifier - 6 digits |
|  | ASS_EMP | NUMC | 8 | OLIMS - Injury Management Advisor |
|  | DOC_UNIQUE | CHAR | 12 | OLIMS - Unique Code for Multiple Correspondence |
|  | CREATED_BY | CHAR | 12 | User Name |
|  | CREATED_DATE | DATS | 8 | OLIMS - Reminder/To Do List Date Created |
|  | REVIEW_DATE | DATS | 8 | OLIMS - Reminder/To Do List Review Date |
|  | NOTE_CAT | CHAR | 2 | OLIMS - Reminder/To Do List Category |
|  | BUSINESS_RULE | CHAR | 2 | OLIMS - Reminder/To Do List Business Rule |
|  | MESSAGE_TYPE | CHAR | 1 | OLIMS - Reminder/To Do List Message Type |
|  | ACTION | CHAR | 80 | OLIMS - Reminder/To Do List Action |
|  | ACTION2 | CHAR | 80 | OLIMS - Reminder/To Do List Action |
|  | NOTE_COMP | CHAR | 1 | OLIMS - Reminder/To Do List Complete |

### ZIM_IN_REM_LOG

- File: `ZIM_IN_REM_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **20**
- Primary key: **MANDT, PERNR, INCIDENT, ASS_TO, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | ASS_TO | CHAR | 1 | OLIMS - Injury Management Role |
| Y | SEQ_NO | NUMC | 6 | OLIMS - Unique Identifier - 6 digits |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | ASS_EMP | NUMC | 8 | OLIMS - Injury Management Advisor |
|  | DOC_UNIQUE | CHAR | 12 | OLIMS - Unique Code for Multiple Correspondence |
|  | CREATED_BY | CHAR | 12 | User Name |
|  | CREATED_DATE | DATS | 8 | OLIMS - Reminder/To Do List Date Created |
|  | REVIEW_DATE | DATS | 8 | OLIMS - Reminder/To Do List Review Date |
|  | NOTE_CAT | CHAR | 2 | OLIMS - Reminder/To Do List Category |
|  | BUSINESS_RULE | CHAR | 2 | OLIMS - Reminder/To Do List Business Rule |
|  | MESSAGE_TYPE | CHAR | 1 | OLIMS - Reminder/To Do List Message Type |
|  | ACTION | CHAR | 80 | OLIMS - Reminder/To Do List Action |
|  | ACTION2 | CHAR | 80 | OLIMS - Reminder/To Do List Action |
|  | NOTE_COMP | CHAR | 1 | OLIMS - Reminder/To Do List Complete |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_REQ

- File: `ZIM_IN_REQ_fields.json`
- Object type: `TRANSP`
- Field count: **14**
- Primary key: **MANDT, PERNR, INCIDENT, REQ_AREA, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | REQ_AREA | CHAR | 1 | OLIMS - Request Area |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | DIRECTION | CHAR | 1 | OLIMS - Request Direction |
|  | REQ_TYPE | CHAR | 2 | OLIMS - Inbound/Outbound Request Type |
|  | REQ_DATE | DATS | 8 | OLIMS - Request Date |
|  | INST_DATE | DATS | 8 | OLIMS - Date of Instructions |
|  | DUE_DATE | DATS | 8 | OLIMS - Request Due Date |
|  | MATTER | CHAR | 80 | OLIMS - Type of Matter |
|  | AMOUNT | DEC | 11 | OLIMS - Request Amount |
|  | CONSENT_FORM | CHAR | 1 | OLIMS - Consent Form Received |
|  | REQ_COMP | CHAR | 1 | OLIMS - Complete Flag |

### ZIM_IN_REQ_INF

- File: `ZIM_IN_REQ_INF_fields.json`
- Object type: `TRANSP`
- Field count: **7**
- Primary key: **MANDT, PERNR, INCIDENT, REQ_AREA, SEQ_NO, INF_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | REQ_AREA | CHAR | 1 | OLIMS - Request Area |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | INF_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | REQ_COMP | CHAR | 1 | OLIMS - Complete Flag |

### ZIM_IN_REQ_INF_L

- File: `ZIM_IN_REQ_INF_L_fields.json`
- Object type: `TRANSP`
- Field count: **11**
- Primary key: **MANDT, PERNR, INCIDENT, REQ_AREA, SEQ_NO, INF_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | REQ_AREA | CHAR | 1 | OLIMS - Request Area |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | INF_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | REQ_COMP | CHAR | 1 | OLIMS - Complete Flag |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_REQ_LOG

- File: `ZIM_IN_REQ_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **18**
- Primary key: **MANDT, PERNR, INCIDENT, REQ_AREA, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | REQ_AREA | CHAR | 1 | OLIMS - Request Area |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | DIRECTION | CHAR | 1 | OLIMS - Request Direction |
|  | REQ_TYPE | CHAR | 2 | OLIMS - Inbound/Outbound Request Type |
|  | REQ_DATE | DATS | 8 | OLIMS - Request Date |
|  | INST_DATE | DATS | 8 | OLIMS - Date of Instructions |
|  | DUE_DATE | DATS | 8 | OLIMS - Request Due Date |
|  | MATTER | CHAR | 80 | OLIMS - Type of Matter |
|  | AMOUNT | DEC | 11 | OLIMS - Request Amount |
|  | CONSENT_FORM | CHAR | 1 | OLIMS - Consent Form Received |
|  | REQ_COMP | CHAR | 1 | OLIMS - Complete Flag |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_IN_REQ_REV

- File: `ZIM_IN_REQ_REV_fields.json`
- Object type: `TRANSP`
- Field count: **11**
- Primary key: **MANDT, PERNR, INCIDENT, REVIEW_TYPE, BEGDA, ENDDA**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | REVIEW_TYPE | CHAR | 1 | OLIMS - Review Type |
| Y | BEGDA | DATS | 8 | Start Date |
| Y | ENDDA | DATS | 8 | End Date |
|  | OTHER_REVIEW_DESC | CHAR | 50 | OLIMS - Request for Review - Other review description |
|  | DESCRIPTION | CHAR | 80 | Description |
|  | SEQ_NO | NUMC | 5 | Sequence Number |
|  | DATE_UPDATED | DATS | 8 | Date |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_IN_ROSA

- File: `ZIM_IN_ROSA_fields.json`
- Object type: `TRANSP`
- Field count: **9**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | REQ_DATE | DATS | 8 | OLIMS - ROSA Request Date |
|  | REF_DATE | DATS | 8 | OLIMS - ROSA Referral Date |
|  | REC_DATE | DATS | 8 | OLIMS - ROSA Receipt Date |
|  | STATUS | CHAR | 1 | OLIMS - ROSA Status |
|  | REVIEW_DATE | DATS | 8 | OLIMS - ROSA Review Date |

### ZIM_IN_ROSA_LOG

- File: `ZIM_IN_ROSA_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **13**
- Primary key: **MANDT, PERNR, INCIDENT, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | REQ_DATE | DATS | 8 | OLIMS - ROSA Request Date |
|  | REF_DATE | DATS | 8 | OLIMS - ROSA Referral Date |
|  | REC_DATE | DATS | 8 | OLIMS - ROSA Receipt Date |
|  | STATUS | CHAR | 1 | OLIMS - ROSA Status |
|  | REVIEW_DATE | DATS | 8 | OLIMS - ROSA Review Date |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_LTR_DEF

- File: `ZIM_LTR_DEF_fields.json`
- Object type: `TRANSP`
- Field count: **23**
- Primary key: **MANDT, CORR_CODE**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | CORR_CODE | CHAR | 4 | OLIMS - Correspondence Code |
|  | LTR_CATEGORY | CHAR | 2 | OLIMS - Document Category |
|  | EMAIL_ATT | CHAR | 70 | OLIMS - Letter Code |
|  | EMAIL_BODY | CHAR | 70 | OLIMS - Letter Code |
|  | DEF_EMP | CHAR | 1 | OLIMS - Letter Employee Default |
|  | DEF_SUP | CHAR | 1 | OLIMS - Letter Employer Default |
|  | DEF_INS | CHAR | 1 | OLIMS - Letter Insurer Default |
|  | DEF_NTD | CHAR | 1 | OLIMS - Letter NTD Default |
|  | DEF_COM | CHAR | 1 | OLIMS - Letter Commander/Manager Default |
|  | DEF_PRO | CHAR | 1 | OLIMS - Letter Provider Default |
|  | DEF_OTH | CHAR | 1 | OLIMS - Letter Other Default |
|  | DEF_LAM | CHAR | 1 | OLIMS - Letter LAM/HR Manager Default |
|  | DEF_GAO | CHAR | 1 | OLIMS - Letter GAO Default |
|  | DEF_IMA | CHAR | 1 | OLIMS - Letter IMA Default |
|  | DEF_REG | CHAR | 1 | OLIMS - Letter Region Default |
|  | DEF_EMP_SMS | CHAR | 1 | OLIMS - Letter Emloyee SMS Default |
|  | DEF_EMP_HOME | CHAR | 1 | OLIMS - Letter Emloyee Home Email Default |
|  | UPDATE_LETTER | CHAR | 1 | OLIMS - Letter Must be Updated |
|  | UPDATE_BODY | CHAR | 1 | OLIMS - Email Body Must be Updated |
|  | CONVERT_PDF | CHAR | 1 | OLIMS - Convert Word Document to PDF |
|  | OTH_NAME | CHAR | 60 | OLIMS - User Name |
|  | OTH_EMAIL | CHAR | 241 | Communication: Long Identification/Number |

### ZIM_LTR_DEFT

- File: `ZIM_LTR_DEFT_fields.json`
- Object type: `TRANSP`
- Field count: **4**
- Primary key: **MANDT, SPRSL, CORR_CODE**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | SPRSL | LANG | 1 | Language Key |
| Y | CORR_CODE | CHAR | 4 | OLIMS - Correspondence Code |
|  | CORR_DESC | CHAR | 60 | OLIMS - Correspondence Description |

### ZIM_MD_DOC

- File: `ZIM_MD_DOC_fields.json`
- Object type: `TRANSP`
- Field count: **11**
- Primary key: **MANDT, PERNR, SEQ_NO, DOC_SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DOC_SEQ_NO | NUMC | 6 | OLIMS - Unique Identifier for the Document Transmission |
|  | LTR_CATEGORY | CHAR | 2 | OLIMS - Document Category |
|  | CORR_CODE | CHAR | 4 | OLIMS - Correspondence Code |
|  | DOC_UNIQUE | CHAR | 12 | OLIMS - Unique Code for Multiple Correspondence |
|  | ATT_DOC_ID | CHAR | 40 | SAP ArchiveLink: Document ID |
|  | BODY_DOC_ID | CHAR | 40 | SAP ArchiveLink: Document ID |
|  | DATE_PROCESSED | DATS | 8 | Date Processed |
|  | FILENAME | CHAR | 132 | OLIMS - Filename of Incoming Document |

### ZIM_MD_DOC_IN

- File: `ZIM_MD_DOC_IN_fields.json`
- Object type: `TRANSP`
- Field count: **9**
- Primary key: **MANDT, PERNR, SEQ_NO, DOC_SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DOC_SEQ_NO | NUMC | 6 | OLIMS - Unique Identifier for the Document Transmission |
|  | LTR_CATEGORY | CHAR | 2 | OLIMS - Document Category |
|  | DOC_UNIQUE | CHAR | 12 | OLIMS - Unique Code for Multiple Correspondence |
|  | FILENAME | CHAR | 132 | OLIMS - Filename of Incoming Document |
|  | ATT_DOC_ID | CHAR | 40 | SAP ArchiveLink: Document ID |
|  | DATE_PROCESSED | DATS | 8 | Date Processed |

### ZIM_MD_DOC_REC

- File: `ZIM_MD_DOC_REC_fields.json`
- Object type: `TRANSP`
- Field count: **13**
- Primary key: **MANDT, PERNR, SEQ_NO, DOC_SEQ_NO, REC_SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DOC_SEQ_NO | NUMC | 6 | OLIMS - Unique Identifier for the Document Transmission |
| Y | REC_SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | USER_CAT | CHAR | 1 | OLIMS - User Category |
|  | USER_CODE | NUMC | 10 | OLIMS - User Code |
|  | USER_NAME | CHAR | 60 | OLIMS - User Name |
|  | DIST_METH | CHAR | 1 | OLIMS - Distribution Method |
|  | EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | FAX | CHAR | 20 | Communication Number |
|  | DATE_PROCESSED | DATS | 8 | Date Processed |
|  | TIME_PROCESSED | TIMS | 6 | Time Processed |

### ZIM_MD_PRE

- File: `ZIM_MD_PRE_fields.json`
- Object type: `TRANSP`
- Field count: **53**
- Primary key: **MANDT, PERNR, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | STATUS | CHAR | 1 | OLIMS - SCU Medical Discharge Status |
|  | STATUS_DATE | DATS | 8 | OLIMS - Status Date |
|  | CURRENT_ACTION | CHAR | 2 | OLIMS - SCU Medical Discharge Action |
|  | WITHDRAWN | CHAR | 1 | OLIMS - Withdrawn |
|  | WITHDRAWN_DATE | DATS | 8 | OLIMS - Withdrawn Date |
|  | CREATED_DATE | DATS | 8 | OLIMS - SCU Created Date |
|  | CLOSED_DATE | DATS | 8 | OLIMS - SCU Closed Date |
|  | LDS | DATS | 8 | OLIMS - Nominated Last Day of Service |
|  | MD_OFFICER | NUMC | 8 | OLIMS - Medical Discharge Officer |
|  | REC_COMP | CHAR | 1 | OLIMS - SCU Recommendation Complete |
|  | REC_COMP_DATE | DATS | 8 | OLIMS - SCU Recommendation Complete Date |
|  | REC_COMP_USER | CHAR | 12 | OLIMS - SCU Recommendation Completed By |
|  | REC_APP_MGR | CHAR | 1 | OLIMS - SCU Recommendation Approved Manager |
|  | MGR_APPROVED | CHAR | 12 | OLIMS - SCU Manager Approved |
|  | MGR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Manager Approved Date |
|  | REC_APP_DIR | CHAR | 1 | OLIMS - SCU Recommendation Approved Director |
|  | DIR_APPROVED | CHAR | 12 | OLIMS - SCU Director Approved |
|  | DIR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Director Approved Date |
|  | STRATEGIES | CHAR | 128 | OLIMS - Strategies/Actions |
|  | STRATEGIES_1 | CHAR | 128 | OLIMS - Strategies/Actions |
|  | APPEAL_DATE | DATS | 8 | OLIMS - SCU MD Appeal Date |
|  | SECTION_8 | CHAR | 1 | OLIMS - SCU MD Section 8 |
|  | SECTION_10 | CHAR | 1 | OLIMS - SCU MD Section 10 |
|  | SECTION_15 | CHAR | 1 | OLIMS - SCU MD Section 15 |
|  | SECTION_12D | CHAR | 1 | OLIMS - SCU MD Section 12D |
|  | EMAIL_DATE_15B | DATS | 8 | OLIMS - Pre 88 MD 15B Email Date |
|  | SERVE_DATE_15B | DATS | 8 | OLIMS - Pre 88 MD 15B Serve Date |
|  | APP_ASSOC_DATE | DATS | 8 | OLIMS - Pre 88 MD With Association Date |
|  | APP_SOLIC_DATE | DATS | 8 | OLIMS - Pre 88 MD With Solicitors Date |
|  | APP_MERCER_DATE | DATS | 8 | OLIMS - Pre 88 MD With Mercer Date |
|  | REVIEW_DATE_15B | DATS | 8 | OLIMS - Pre 88 MD 15B Review Date |
|  | OFFICER_DATE_15B | DATS | 8 | OLIMS - Pre 88 MD 15B Officer Date |
|  | MERCER_DATE_15B | DATS | 8 | OLIMS - Pre 88 MD 15B Mercer Date |
|  | EMP_PHONE | CHAR | 20 | Communication Number |
|  | EMP_EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | CMDR | NUMC | 8 | Personnel Number |
|  | PAM | NUMC | 8 | Personnel Number |
|  | IMA | NUMC | 8 | Personnel Number |
|  | ALLIANZ_CONT | NUMC | 5 | OLIMS - Insurer Contact Code |
|  | PREF_CONTACT | NUMC | 8 | Personnel Number |
|  | SS_PAYROLL | NUMC | 8 | Personnel Number |
|  | MERCER_NAME | CHAR | 40 | Formatted Name of Employee or Applicant |
|  | MERCER_PHONE | CHAR | 20 | Communication Number |
|  | MERCER_EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | PANSW_NAME | CHAR | 40 | Formatted Name of Employee or Applicant |
|  | PANSW_PHONE | CHAR | 20 | Communication Number |
|  | PANSW_EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | OTHER_NAME | CHAR | 40 | Formatted Name of Employee or Applicant |
|  | OTHER_PHONE | CHAR | 20 | Communication Number |
|  | OTHER_EMAIL | CHAR | 241 | Communication: Long Identification/Number |

### ZIM_MD_PRE_CERT

- File: `ZIM_MD_PRE_CERT_fields.json`
- Object type: `TRANSP`
- Field count: **17**
- Primary key: **MANDT, PERNR, SEQ_NO, CERT_SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | CERT_SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | PSAC_DATE | DATS | 8 | OLIMS - SCU PSAC Date |
|  | REC_COMP | CHAR | 1 | OLIMS - SCU Recommendation Complete |
|  | REC_COMP_DATE | DATS | 8 | OLIMS - SCU Recommendation Complete Date |
|  | REC_COMP_USER | CHAR | 12 | OLIMS - SCU Recommendation Completed By |
|  | REC_APP_MGR | CHAR | 1 | OLIMS - SCU Recommendation Approved Manager |
|  | REC_APP_DIR | CHAR | 1 | OLIMS - SCU Recommendation Approved Director |
|  | MGR_APPROVED | CHAR | 12 | OLIMS - SCU Manager Approved |
|  | MGR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Manager Approved Date |
|  | DIR_APPROVED | CHAR | 12 | OLIMS - SCU Director Approved |
|  | DIR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Director Approved Date |
|  | DECLINE_IMP_DATE | DATS | 8 | OLIMS - Pre 88 Decline Import Date |
|  | CERT_SENT_DATE | DATS | 8 | OLIMS - Pre 88 MD Certificate Sent Date |
|  | DECLINE_SENT_DATE | DATS | 8 | OLIMS - Pre 88 Decline Sent Date |

### ZIM_MD_PRE_CERTL

- File: `ZIM_MD_PRE_CERTL_fields.json`
- Object type: `TRANSP`
- Field count: **21**
- Primary key: **MANDT, PERNR, SEQ_NO, CERT_SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | CERT_SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | PSAC_DATE | DATS | 8 | OLIMS - SCU PSAC Date |
|  | REC_COMP | CHAR | 1 | OLIMS - SCU Recommendation Complete |
|  | REC_COMP_DATE | DATS | 8 | OLIMS - SCU Recommendation Complete Date |
|  | REC_COMP_USER | CHAR | 12 | OLIMS - SCU Recommendation Completed By |
|  | REC_APP_MGR | CHAR | 1 | OLIMS - SCU Recommendation Approved Manager |
|  | REC_APP_DIR | CHAR | 1 | OLIMS - SCU Recommendation Approved Director |
|  | MGR_APPROVED | CHAR | 12 | OLIMS - SCU Manager Approved |
|  | MGR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Manager Approved Date |
|  | DIR_APPROVED | CHAR | 12 | OLIMS - SCU Director Approved |
|  | DIR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Director Approved Date |
|  | DECLINE_IMP_DATE | DATS | 8 | OLIMS - Pre 88 Decline Import Date |
|  | CERT_SENT_DATE | DATS | 8 | OLIMS - Pre 88 MD Certificate Sent Date |
|  | DECLINE_SENT_DATE | DATS | 8 | OLIMS - Pre 88 Decline Sent Date |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_MD_PRE_INC

- File: `ZIM_MD_PRE_INC_fields.json`
- Object type: `TRANSP`
- Field count: **4**
- Primary key: **MANDT, PERNR, SEQ_NO, INCIDENT**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | INCIDENT | NUMC | 10 | Incident No. |

### ZIM_MD_PRE_INC_L

- File: `ZIM_MD_PRE_INC_L_fields.json`
- Object type: `TRANSP`
- Field count: **8**
- Primary key: **MANDT, PERNR, SEQ_NO, INCIDENT, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_MD_PRE_INF

- File: `ZIM_MD_PRE_INF_fields.json`
- Object type: `TRANSP`
- Field count: **11**
- Primary key: **MANDT, PERNR, SEQ_NO, INCIDENT, INJ_SEQ_NO, PSAC_SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | INJ_SEQ_NO | NUMC | 3 | P902 - Sequence Number |
| Y | PSAC_SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | PSAC_DATE | DATS | 8 | OLIMS - SCU PSAC Date |
|  | PSAC_DETERM | CHAR | 1 | OLIMS - SCU PSAC Determination |
|  | CERT_ISSUED | CHAR | 1 | OLIMS - SCU Certificate Issued |
|  | NOT_SENT_DATE | DATS | 8 | OLIMS - SCU Notification Sent Date |
|  | PSAC_INFIRMITY | CHAR | 80 | OLIMS - SCU MD PSAC Infirmity |

### ZIM_MD_PRE_INF_L

- File: `ZIM_MD_PRE_INF_L_fields.json`
- Object type: `TRANSP`
- Field count: **15**
- Primary key: **MANDT, PERNR, SEQ_NO, INCIDENT, INJ_SEQ_NO, PSAC_SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | INJ_SEQ_NO | NUMC | 3 | P902 - Sequence Number |
| Y | PSAC_SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | PSAC_DATE | DATS | 8 | OLIMS - SCU PSAC Date |
|  | PSAC_DETERM | CHAR | 1 | OLIMS - SCU PSAC Determination |
|  | CERT_ISSUED | CHAR | 1 | OLIMS - SCU Certificate Issued |
|  | NOT_SENT_DATE | DATS | 8 | OLIMS - SCU Notification Sent Date |
|  | PSAC_INFIRMITY | CHAR | 80 | OLIMS - SCU MD PSAC Infirmity |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_MD_PRE_LOG

- File: `ZIM_MD_PRE_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **57**
- Primary key: **MANDT, PERNR, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | STATUS | CHAR | 1 | OLIMS - SCU Medical Discharge Status |
|  | STATUS_DATE | DATS | 8 | OLIMS - Status Date |
|  | CURRENT_ACTION | CHAR | 2 | OLIMS - SCU Medical Discharge Action |
|  | WITHDRAWN | CHAR | 1 | OLIMS - Withdrawn |
|  | WITHDRAWN_DATE | DATS | 8 | OLIMS - Withdrawn Date |
|  | CREATED_DATE | DATS | 8 | OLIMS - SCU Created Date |
|  | CLOSED_DATE | DATS | 8 | OLIMS - SCU Closed Date |
|  | LDS | DATS | 8 | OLIMS - Nominated Last Day of Service |
|  | MD_OFFICER | NUMC | 8 | OLIMS - Medical Discharge Officer |
|  | REC_COMP | CHAR | 1 | OLIMS - SCU Recommendation Complete |
|  | REC_COMP_DATE | DATS | 8 | OLIMS - SCU Recommendation Complete Date |
|  | REC_COMP_USER | CHAR | 12 | OLIMS - SCU Recommendation Completed By |
|  | REC_APP_MGR | CHAR | 1 | OLIMS - SCU Recommendation Approved Manager |
|  | MGR_APPROVED | CHAR | 12 | OLIMS - SCU Manager Approved |
|  | MGR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Manager Approved Date |
|  | REC_APP_DIR | CHAR | 1 | OLIMS - SCU Recommendation Approved Director |
|  | DIR_APPROVED | CHAR | 12 | OLIMS - SCU Director Approved |
|  | DIR_APPROVED_DATE | DATS | 8 | OLIMS - SCU Director Approved Date |
|  | STRATEGIES | CHAR | 128 | OLIMS - Strategies/Actions |
|  | STRATEGIES_1 | CHAR | 128 | OLIMS - Strategies/Actions |
|  | APPEAL_DATE | DATS | 8 | OLIMS - SCU MD Appeal Date |
|  | SECTION_8 | CHAR | 1 | OLIMS - SCU MD Section 8 |
|  | SECTION_10 | CHAR | 1 | OLIMS - SCU MD Section 10 |
|  | SECTION_15 | CHAR | 1 | OLIMS - SCU MD Section 15 |
|  | SECTION_12D | CHAR | 1 | OLIMS - SCU MD Section 12D |
|  | EMAIL_DATE_15B | DATS | 8 | OLIMS - Pre 88 MD 15B Email Date |
|  | SERVE_DATE_15B | DATS | 8 | OLIMS - Pre 88 MD 15B Serve Date |
|  | APP_ASSOC_DATE | DATS | 8 | OLIMS - Pre 88 MD With Association Date |
|  | APP_SOLIC_DATE | DATS | 8 | OLIMS - Pre 88 MD With Solicitors Date |
|  | APP_MERCER_DATE | DATS | 8 | OLIMS - Pre 88 MD With Mercer Date |
|  | REVIEW_DATE_15B | DATS | 8 | OLIMS - Pre 88 MD 15B Review Date |
|  | OFFICER_DATE_15B | DATS | 8 | OLIMS - Pre 88 MD 15B Officer Date |
|  | MERCER_DATE_15B | DATS | 8 | OLIMS - Pre 88 MD 15B Mercer Date |
|  | EMP_PHONE | CHAR | 20 | Communication Number |
|  | EMP_EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | CMDR | NUMC | 8 | Personnel Number |
|  | PAM | NUMC | 8 | Personnel Number |
|  | IMA | NUMC | 8 | Personnel Number |
|  | ALLIANZ_CONT | NUMC | 5 | OLIMS - Insurer Contact Code |
|  | PREF_CONTACT | NUMC | 8 | Personnel Number |
|  | SS_PAYROLL | NUMC | 8 | Personnel Number |
|  | MERCER_NAME | CHAR | 40 | Formatted Name of Employee or Applicant |
|  | MERCER_PHONE | CHAR | 20 | Communication Number |
|  | MERCER_EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | PANSW_NAME | CHAR | 40 | Formatted Name of Employee or Applicant |
|  | PANSW_PHONE | CHAR | 20 | Communication Number |
|  | PANSW_EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | OTHER_NAME | CHAR | 40 | Formatted Name of Employee or Applicant |
|  | OTHER_PHONE | CHAR | 20 | Communication Number |
|  | OTHER_EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_MD_REM

- File: `ZIM_MD_REM_fields.json`
- Object type: `TRANSP`
- Field count: **16**
- Primary key: **MANDT, PERNR, MD_SEQ_NO, ASS_TO, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | MD_SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | ASS_TO | CHAR | 1 | OLIMS - Injury Management Role |
| Y | SEQ_NO | NUMC | 6 | OLIMS - Unique Identifier - 6 digits |
|  | ASS_EMP | NUMC | 8 | OLIMS - Injury Management Advisor |
|  | DOC_UNIQUE | CHAR | 12 | OLIMS - Unique Code for Multiple Correspondence |
|  | CREATED_BY | CHAR | 12 | User Name |
|  | CREATED_DATE | DATS | 8 | OLIMS - Reminder/To Do List Date Created |
|  | REVIEW_DATE | DATS | 8 | OLIMS - Reminder/To Do List Review Date |
|  | NOTE_CAT | CHAR | 2 | OLIMS - Reminder/To Do List Category |
|  | BUSINESS_RULE | CHAR | 2 | OLIMS - Reminder/To Do List Business Rule |
|  | MESSAGE_TYPE | CHAR | 1 | OLIMS - Reminder/To Do List Message Type |
|  | ACTION | CHAR | 80 | OLIMS - Reminder/To Do List Action |
|  | ACTION2 | CHAR | 80 | OLIMS - Reminder/To Do List Action |
|  | NOTE_COMP | CHAR | 1 | OLIMS - Reminder/To Do List Complete |

### ZIM_MD_REM_LOG

- File: `ZIM_MD_REM_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **20**
- Primary key: **MANDT, PERNR, MD_SEQ_NO, ASS_TO, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | MD_SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | ASS_TO | CHAR | 1 | OLIMS - Injury Management Role |
| Y | SEQ_NO | NUMC | 6 | OLIMS - Unique Identifier - 6 digits |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | ASS_EMP | NUMC | 8 | OLIMS - Injury Management Advisor |
|  | DOC_UNIQUE | CHAR | 12 | OLIMS - Unique Code for Multiple Correspondence |
|  | CREATED_BY | CHAR | 12 | User Name |
|  | CREATED_DATE | DATS | 8 | OLIMS - Reminder/To Do List Date Created |
|  | REVIEW_DATE | DATS | 8 | OLIMS - Reminder/To Do List Review Date |
|  | NOTE_CAT | CHAR | 2 | OLIMS - Reminder/To Do List Category |
|  | BUSINESS_RULE | CHAR | 2 | OLIMS - Reminder/To Do List Business Rule |
|  | MESSAGE_TYPE | CHAR | 1 | OLIMS - Reminder/To Do List Message Type |
|  | ACTION | CHAR | 80 | OLIMS - Reminder/To Do List Action |
|  | ACTION2 | CHAR | 80 | OLIMS - Reminder/To Do List Action |
|  | NOTE_COMP | CHAR | 1 | OLIMS - Reminder/To Do List Complete |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |
|  | USER_PROCESSED | CHAR | 12 | User Processed |

### ZIM_MED

- File: `ZIM_MED_fields.json`
- Object type: `TRANSP`
- Field count: **14**
- Primary key: **MANDT, MED_PRAC**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | MED_PRAC | NUMC | 10 | OLIMS - Health Professional Code |
|  | NAME | CHAR | 60 | OLIMS - Health Professional Name |
|  | STRAS | CHAR | 60 | Street and House Number |
|  | LOCAT | CHAR | 40 | 2nd Address Line |
|  | ORT01 | CHAR | 40 | City |
|  | POSTCODE | CHAR | 10 | Postal Code |
|  | REGIO | CHAR | 3 | Region (State, Province, County) |
|  | PHONE | CHAR | 20 | Communication Number |
|  | MOBILE | CHAR | 20 | Communication Number |
|  | FAX | CHAR | 20 | Communication Number |
|  | EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | LAND1 | CHAR | 3 | Country Key |
|  | HEALTH_PROF | CHAR | 10 | OLIMS - Health Profession Code |

### ZIM_MED_PROF

- File: `ZIM_MED_PROF_fields.json`
- Object type: `TRANSP`
- Field count: **2**
- Primary key: **MANDT, HEALTH_PROF**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | HEALTH_PROF | CHAR | 10 | OLIMS - Health Profession Code |

### ZIM_MED_PROFT

- File: `ZIM_MED_PROFT_fields.json`
- Object type: `TRANSP`
- Field count: **4**
- Primary key: **MANDT, SPRSL, HEALTH_PROF**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | SPRSL | LANG | 1 | Language Key |
| Y | HEALTH_PROF | CHAR | 10 | OLIMS - Health Profession Code |
|  | HEALTH_DESC | CHAR | 60 | OLIMS - Health Profession Description |

### ZIM_MEET

- File: `ZIM_MEET_fields.json`
- Object type: `TRANSP`
- Field count: **4**
- Primary key: **MANDT, MEET_TYPE, USER_GROUP**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
| Y | USER_GROUP | CHAR | 1 | OLIMS - User Access Category |
|  | MEET_ACCESS | CHAR | 1 | OLIMS - Access Type |

### ZIM_MEET_RANGE

- File: `ZIM_MEET_RANGE_fields.json`
- Object type: `INTTAB`
- Field count: **4**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | SIGN | CHAR | 1 | Single-Character Indicator |
|  | OPTION | CHAR | 2 | Version Number Component |
|  | LOW | CHAR | 1 | OLIMS - Meeting Type |
|  | HIGH | CHAR | 1 | OLIMS - Meeting Type |

### ZIM_NOTE

- File: `ZIM_NOTE_fields.json`
- Object type: `TRANSP`
- Field count: **3**
- Primary key: **MANDT, LTR_CATEGORY, NOTE_UPD_CATEGORY**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | LTR_CATEGORY | CHAR | 2 | OLIMS - Document Category |
| Y | NOTE_UPD_CATEGORY | CHAR | 1 | OLIMS - Notes Update Category |

### ZIM_ORG

- File: `ZIM_ORG_fields.json`
- Object type: `TRANSP`
- Field count: **2**
- Primary key: **MANDT, ORGEH**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | ORGEH | NUMC | 8 | Organizational Unit |

### ZIM_PROV

- File: `ZIM_PROV_fields.json`
- Object type: `TRANSP`
- Field count: **17**
- Primary key: **MANDT, PROV_CODE**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PROV_CODE | NUMC | 10 | OLIMS - Provider Code |
|  | COMPANY | CHAR | 60 | OLIMS - Provider Company |
|  | CONSULTANT | CHAR | 60 | OLIMS - Provider Consultant |
|  | STRAS | CHAR | 60 | Street and House Number |
|  | LOCAT | CHAR | 40 | 2nd Address Line |
|  | ORT01 | CHAR | 40 | City |
|  | POSTCODE | CHAR | 10 | Postal Code |
|  | REGIO | CHAR | 3 | Region (State, Province, County) |
|  | PHONE | CHAR | 20 | Communication Number |
|  | MOBILE | CHAR | 20 | Communication Number |
|  | FAX | CHAR | 20 | Communication Number |
|  | EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | LAND1 | CHAR | 3 | Country Key |
|  | COVERAGE | CHAR | 60 | OLIMS - Provider Area Covered |
|  | HEALTH_PROF | CHAR | 10 | OLIMS - Health Profession Code |
|  | SERVICE | CHAR | 10 | OLIMS - Provider Service Code |

### ZIM_RECOUP

- File: `ZIM_RECOUP_fields.json`
- Object type: `TRANSP`
- Field count: **39**
- Primary key: **MANDT, PERNR, SEQNR, WC_WEEK, INCIDENT, WC_SECTION, CLAIM_NO, BUKRS, KOSTL, BEGDA, ENDDA, RATE35, PAWE, WEEKLY_HRS, WEEKLY_AWARD_CAP, RECNO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQNR | NUMC | 5 | Sequence Number |
| Y | WC_WEEK | ACCP | 6 | Factory calendar: Week |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | WC_SECTION | CHAR | 2 | Section |
| Y | CLAIM_NO | CHAR | 15 | OLIMS - Income Protection Claim Number |
| Y | BUKRS | CHAR | 4 | Company Code |
| Y | KOSTL | CHAR | 10 | Cost Center |
| Y | BEGDA | DATS | 8 | Start Date |
| Y | ENDDA | DATS | 8 | End Date |
| Y | RATE35 | DEC | 15 | Rate 35 |
| Y | PAWE | DEC | 15 | OLIMS - PAWE or PIAWE Value |
| Y | WEEKLY_HRS | DEC | 9 | Weekly Hours |
| Y | WEEKLY_AWARD_CAP | DEC | 15 | Weekly Award Cap |
| Y | RECNO | NUMC | 3 | Record Number |
|  | WC_HRS_LOST | DEC | 9 | Workers Comp Time lost hours in Claim |
|  | HRS_ROST_CLM | DEC | 9 | Hours Rostered in Claim |
|  | SALARY_EARNED | DEC | 15 | Salary Earned |
|  | WC_AMT_RECOUP | DEC | 15 | Workers Comp $ Recoup |
|  | ZWCH1 | DEC | 5 | Workers Comp Hours Friday |
|  | ZWCH2 | DEC | 5 | Workers Comp Hours Saturday |
|  | ZWCH3 | DEC | 5 | Workers Comp Hours Sunday |
|  | ZWCH4 | DEC | 5 | Workers Comp Hours Monday |
|  | ZWCH5 | DEC | 5 | Workers Comp Hours Tuesday |
|  | ZWCH6 | DEC | 5 | Workers Comp Hours Wednesday |
|  | ZWCH7 | DEC | 5 | Workers Comp Hours Thursday |
|  | MAX_WKLY_PAY_RATE | DEC | 15 | OLIMS - Maximum Weekly Pay Rate |
|  | ABS_START | DATS | 8 | OLIMS - Absence Start Date |
|  | ABS_END | DATS | 8 | OLIMS - Absence End Date |
|  | ACT_HRS | DEC | 7 | OLIMS - Actual Hours Worked |
|  | DEDUCT_EXP | DEC | 15 | OLIMS - Deductible Expenses |
|  | OTIME_ALLOW | DEC | 15 | OLIMS - Overtime and Allowances |
|  | OTIME | DEC | 15 | OLIMS - Overtime |
|  | SHIFTS_PEN | DEC | 15 | OLIMS - Shifts & Penalties |
|  | WORK_CAP_DCSN | DEC | 15 | OLIMS - Work Capacity Decision |
|  | RECOUP_PROCESSED | CHAR | 1 | Recoup Processed |
|  | PROCESSED_ON | DATS | 8 | Date |
|  | PROCESSED_BY | CHAR | 12 | User Name |

### ZIM_RECOUP_DOC

- File: `ZIM_RECOUP_DOC_fields.json`
- Object type: `TRANSP`
- Field count: **54**
- Primary key: **MANDT, DATE_PROCESSED, RUN_NO, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | DATE_PROCESSED | DATS | 8 | Workers Compensation - Date Processed |
| Y | RUN_NO | NUMC | 3 | Workers Compensation Run Number |
| Y | SEQ_NO | NUMC | 5 | Workers Compensation Sequence Number |
|  | PERNR | NUMC | 8 | Personnel Number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | WC_SECTION | CHAR | 2 | Section |
|  | RATE35 | DEC | 15 | Rate 35 |
|  | PAWE | DEC | 15 | OLIMS - PAWE or PIAWE Value |
|  | CLAIM_NO | CHAR | 15 | OLIMS - Income Protection Claim Number |
|  | PER_BEGDA | DATS | 8 | Workers Compensation - Period Start Date |
|  | PER_ENDDA | DATS | 8 | Workers Compensation - Period End Date |
|  | BEGDA | DATS | 8 | Start Date |
|  | ENDDA | DATS | 8 | End Date |
|  | BUKRS | CHAR | 4 | Company Code |
|  | KOSTL | CHAR | 10 | Cost Center |
|  | WC_HRS_LOST | DEC | 9 | Workers Comp Time lost hours in Claim |
|  | HRS_ROST_CLM | DEC | 9 | Hours Rostered in Claim |
|  | WEEKLY_HRS | DEC | 9 | Weekly Hours |
|  | WEEKLY_AWARD_CAP | DEC | 15 | Weekly Award Cap |
|  | SALARY_EARNED | DEC | 15 | Salary Earned |
|  | WBR | DEC | 15 | Weekly Benefit Rate |
|  | SAL_LOST | DEC | 15 | Workers Compensation - Lost Salary |
|  | WC_AMT_RECOUP | DEC | 15 | Workers Comp $ Recoup |
|  | ZWCH1 | DEC | 5 | Workers Comp Hours Friday |
|  | ZWCH2 | DEC | 5 | Workers Comp Hours Saturday |
|  | ZWCH3 | DEC | 5 | Workers Comp Hours Sunday |
|  | ZWCH4 | DEC | 5 | Workers Comp Hours Monday |
|  | ZWCH5 | DEC | 5 | Workers Comp Hours Tuesday |
|  | ZWCH6 | DEC | 5 | Workers Comp Hours Wednesday |
|  | ZWCH7 | DEC | 5 | Workers Comp Hours Thursday |
|  | MAX_WKLY_PAY_RATE | DEC | 15 | OLIMS - Maximum Weekly Pay Rate |
|  | ABS_START | DATS | 8 | OLIMS - Absence Start Date |
|  | ABS_END | DATS | 8 | OLIMS - Absence End Date |
|  | ACT_HRS | DEC | 7 | OLIMS - Actual Hours Worked |
|  | DEDUCT_EXP | DEC | 15 | OLIMS - Deductible Expenses |
|  | OTIME_ALLOW | DEC | 15 | OLIMS - Overtime and Allowances |
|  | OTIME | DEC | 15 | OLIMS - Overtime |
|  | SHIFTS_PEN | DEC | 15 | OLIMS - Shifts & Penalties |
|  | WORK_CAP_DCSN | DEC | 15 | OLIMS - Work Capacity Decision |
|  | BELNR | CHAR | 10 | Document Number of an Accounting Document |
|  | GJAHR | NUMC | 4 | Fiscal Year |
|  | RECEIPT_DATE | DATS | 8 | Workers Compensation - Receipt Date |
|  | USER_RECOUP | CHAR | 12 | Workers Compensation - User Recoup |
|  | REC_ADJUSTED | CHAR | 1 | WC - Recoup Adjustment Processed |
|  | MESSAGE | CHAR | 120 | Workers Compensation - Message |
|  | BELNR_OLD | CHAR | 10 | Document Number of an Accounting Document |
|  | GJAHR_OLD | NUMC | 4 | Fiscal Year |
|  | BELNR_REFUND | CHAR | 10 | Document Number of an Accounting Document |
|  | GJAHR_REFUND | NUMC | 4 | Fiscal Year |
|  | BELNR_CLR | CHAR | 10 | Document Number of an Accounting Document |
|  | GJAHR_CLR | NUMC | 4 | Fiscal Year |
|  | ADJ_CODE | NUMC | 2 | Workers' Compensation - Adjustment Reason Code |
|  | STATUS | CHAR | 1 | Recoup Invoice Status |

### ZIM_REM

- File: `ZIM_REM_fields.json`
- Object type: `TRANSP`
- Field count: **6**
- Primary key: **MANDT, NOTE_CAT, BUSINESS_RULE**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | NOTE_CAT | CHAR | 2 | OLIMS - Reminder/To Do List Category |
| Y | BUSINESS_RULE | CHAR | 2 | OLIMS - Reminder/To Do List Business Rule |
|  | ACTION | CHAR | 80 | OLIMS - Reminder/To Do List Action |
|  | INACTIVE | CHAR | 1 | OLIMS - Reminder Inactive |
|  | REM_DAYS | INT4 | 10 | OLIMS - Reminder Days |

### ZIM_REM_REPORT

- File: `ZIM_REM_REPORT_fields.json`
- Object type: `INTTAB`
- Field count: **25**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | MANDT | CLNT | 3 | Client |
|  | PERNR | NUMC | 8 | Personnel Number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | ASS_TO | CHAR | 1 | OLIMS - Injury Management Role |
|  | SEQ_NO | NUMC | 6 | OLIMS - Unique Identifier - 6 digits |
|  | ASS_EMP | NUMC | 8 | OLIMS - Injury Management Advisor |
|  | DOC_UNIQUE | CHAR | 12 | OLIMS - Unique Code for Multiple Correspondence |
|  | CREATED_BY | CHAR | 12 | User Name |
|  | CREATED_DATE | DATS | 8 | OLIMS - Reminder/To Do List Date Created |
|  | REVIEW_DATE | DATS | 8 | OLIMS - Reminder/To Do List Review Date |
|  | NOTE_CAT | CHAR | 2 | OLIMS - Reminder/To Do List Category |
|  | BUSINESS_RULE | CHAR | 2 | OLIMS - Reminder/To Do List Business Rule |
|  | MESSAGE_TYPE | CHAR | 1 | OLIMS - Reminder/To Do List Message Type |
|  | ACTION | CHAR | 80 | OLIMS - Reminder/To Do List Action |
|  | ACTION2 | CHAR | 80 | OLIMS - Reminder/To Do List Action |
|  | NOTE_COMP | CHAR | 1 | OLIMS - Reminder/To Do List Complete |
|  | NACHN | CHAR | 25 | Last Name |
|  | VORNA | CHAR | 25 | First Name |
|  | IMA | NUMC | 8 | Personnel Number |
|  | IMA_NAME | CHAR | 40 | Formatted Name of Employee or Applicant |
|  | ASS_NAME | CHAR | 40 | Formatted Name of Employee or Applicant |
|  | DUE_DATE | DATS | 8 | Date |
|  | DAYS_OVERDUE | INT4 | 10 | Natural Number |
|  | CAT_DESC | CHAR | 30 | Text (30 Characters) |
|  | PROC_MESSAGE | CHAR | 80 | Text (80 Characters) |

### ZIM_REQ

- File: `ZIM_REQ_fields.json`
- Object type: `TRANSP`
- Field count: **6**
- Primary key: **MANDT, REQ_AREA, REQ_TYPE**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | REQ_AREA | CHAR | 1 | OLIMS - Request Area |
| Y | REQ_TYPE | CHAR | 2 | OLIMS - Inbound/Outbound Request Type |
|  | DAYS_ACTIVE | NUMC | 3 | OLIMS - Request To Do Days - Active Employees |
|  | DAYS_TERM | NUMC | 3 | OLIMS - Request To Do Days - Terminated Employees |
|  | REVIEW | CHAR | 1 | OLIMS - Request - Review Required |

### ZIM_REQT

- File: `ZIM_REQT_fields.json`
- Object type: `TRANSP`
- Field count: **5**
- Primary key: **MANDT, SPRSL, REQ_AREA, REQ_TYPE**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | SPRSL | LANG | 1 | Language Key |
| Y | REQ_AREA | CHAR | 1 | OLIMS - Request Area |
| Y | REQ_TYPE | CHAR | 2 | OLIMS - Inbound/Outbound Request Type |
|  | REQ_DESC | CHAR | 80 | OLIMS - Request Description |

### ZIM_REQ_REV_LOG

- File: `ZIM_REQ_REV_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **14**
- Primary key: **MANDT, PERNR, INCIDENT, REVIEW_TYPE, BEGDA, ENDDA, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | INCIDENT | NUMC | 10 | Incident No. |
| Y | REVIEW_TYPE | CHAR | 1 | OLIMS - Review Type |
| Y | BEGDA | DATS | 8 | Start Date |
| Y | ENDDA | DATS | 8 | End Date |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | OTHER_REVIEW_DESC | CHAR | 50 | OLIMS - Request for Review - Other review description |
|  | DESCRIPTION | CHAR | 80 | Description |
|  | SEQ_NO | NUMC | 5 | Sequence Number |
|  | DATE_UPDATED | DATS | 8 | Date |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_RTWP

- File: `ZIM_RTWP_fields.json`
- Object type: `TRANSP`
- Field count: **39**
- Primary key: **MANDT, PERNR, SEQ_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | MC_SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | CATEGORY | CHAR | 1 | OLIMS - R@WP Category |
|  | PLAN_NO | NUMC | 3 | OLIMS - R@WP Plan Number |
|  | DATE_FROM | DATS | 8 | OLIMS - R@WP Date From |
|  | DATE_TO | DATS | 8 | OLIMS - R@WP Date To |
|  | GOAL | CHAR | 1 | OLIMS - R@WP Goal |
|  | GOAL_OTHER | CHAR | 132 | OLIMS - R@WP Goal Other |
|  | GOAL_DATE | DATS | 8 | OLIMS - R@WP Goal Date |
|  | SUP | NUMC | 8 | Personnel Number |
|  | LOCATION | NUMC | 8 | Organizational Unit |
|  | DUTIES | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | EMP_AGREED | CHAR | 1 | OLIMS - R@WP Agreed by Employee |
|  | SUP_AGREED | CHAR | 1 | OLIMS - R@WP Agreed by Employer |
|  | NTD_AGREED | CHAR | 1 | OLIMS - R@WP Agreed by NTD |
|  | OTH_AGREED | CHAR | 1 | OLIMS - R@WP Agreed by Other Parties |
|  | EMP_AGREED_DATE | DATS | 8 | OLIMS - Date R@WP Agreed by Employee |
|  | SUP_AGREED_DATE | DATS | 8 | OLIMS - Date R@WP Agreed by Employee |
|  | NTD_AGREED_DATE | DATS | 8 | OLIMS - Date R@WP Agreed by NTD |
|  | OTH_AGREED_DATE | DATS | 8 | OLIMS - Date R@WP Agreed by Other Agency |
|  | OTHER_NAME | CHAR | 30 | OLIMS - R@WP Agreed Other Name |
|  | REVIEW_DATE | DATS | 8 | OLIMS - Date R@WP Review Date |
|  | CAP_HOURS1 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS1 | CHAR | 1 | OLIMS - Capabilities for Days/Week |
|  | CAP_HOURS2 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS2 | CHAR | 1 | OLIMS - Capabilities for Days/Week |
|  | LIFTING | CHAR | 60 | OLIMS - Lifting Capabilities |
|  | WALKING | CHAR | 60 | OLIMS - Walking Capabilities |
|  | SITTING | CHAR | 60 | OLIMS - Sitting Capabilities |
|  | STANDING | CHAR | 60 | OLIMS - Standing Capabilities |
|  | TRAVELLING | CHAR | 60 | OLIMS - Travelling Capabilities |
|  | KEYING | CHAR | 60 | OLIMS - Keying Capabilities |
|  | PUSHING | CHAR | 60 | OLIMS - Pushing/Pulling Capabilities |
|  | DRIVING | CHAR | 60 | OLIMS - Driving Capabilities |
|  | BENDING | CHAR | 60 | OLIMS - Bending/Twisting/Squatting Capabilities |
|  | CERT_TYPE | CHAR | 1 | OLIMS - Certificate Type |

### ZIM_RTWP_GRADE

- File: `ZIM_RTWP_GRADE_fields.json`
- Object type: `TRANSP`
- Field count: **13**
- Primary key: **MANDT, PERNR, SEQ_NO, STAGE_NO**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | STAGE_NO | NUMC | 3 | OLIMS - R@WP Stage Number |
|  | DATE_FROM | DATS | 8 | OLIMS - R@WP Date From |
|  | DATE_TO | DATS | 8 | OLIMS - R@WP Date To |
|  | DURATION | NUMC | 3 | OLIMS - R@WP Stage Duration |
|  | LOCATION | NUMC | 8 | Organizational Unit |
|  | DUTIES | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | CAP_HOURS1 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS1 | CHAR | 1 | OLIMS - Capabilities for Days/Week |
|  | CAP_HOURS2 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS2 | CHAR | 1 | OLIMS - Capabilities for Days/Week |

### ZIM_RTWP_GRADE_L

- File: `ZIM_RTWP_GRADE_L_fields.json`
- Object type: `TRANSP`
- Field count: **17**
- Primary key: **MANDT, PERNR, SEQ_NO, STAGE_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | STAGE_NO | NUMC | 3 | OLIMS - R@WP Stage Number |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | DATE_FROM | DATS | 8 | OLIMS - R@WP Date From |
|  | DATE_TO | DATS | 8 | OLIMS - R@WP Date To |
|  | DURATION | NUMC | 3 | OLIMS - R@WP Stage Duration |
|  | LOCATION | NUMC | 8 | Organizational Unit |
|  | DUTIES | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | CAP_HOURS1 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS1 | CHAR | 1 | OLIMS - Capabilities for Days/Week |
|  | CAP_HOURS2 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS2 | CHAR | 1 | OLIMS - Capabilities for Days/Week |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_RTWP_LOG

- File: `ZIM_RTWP_LOG_fields.json`
- Object type: `TRANSP`
- Field count: **43**
- Primary key: **MANDT, PERNR, SEQ_NO, DATE_PROCESSED, TIME_PROCESSED**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | PERNR | NUMC | 8 | Personnel Number |
| Y | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
| Y | DATE_PROCESSED | DATS | 8 | Date Processed |
| Y | TIME_PROCESSED | TIMS | 6 | Time Processed |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | MC_SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | CATEGORY | CHAR | 1 | OLIMS - R@WP Category |
|  | PLAN_NO | NUMC | 3 | OLIMS - R@WP Plan Number |
|  | DATE_FROM | DATS | 8 | OLIMS - R@WP Date From |
|  | DATE_TO | DATS | 8 | OLIMS - R@WP Date To |
|  | GOAL | CHAR | 1 | OLIMS - R@WP Goal |
|  | GOAL_OTHER | CHAR | 132 | OLIMS - R@WP Goal Other |
|  | GOAL_DATE | DATS | 8 | OLIMS - R@WP Goal Date |
|  | SUP | NUMC | 8 | Personnel Number |
|  | LOCATION | NUMC | 8 | Organizational Unit |
|  | DUTIES | CHAR | 132 | OLIMS - R@WP Suitable Duties |
|  | EMP_AGREED | CHAR | 1 | OLIMS - R@WP Agreed by Employee |
|  | SUP_AGREED | CHAR | 1 | OLIMS - R@WP Agreed by Employer |
|  | NTD_AGREED | CHAR | 1 | OLIMS - R@WP Agreed by NTD |
|  | OTH_AGREED | CHAR | 1 | OLIMS - R@WP Agreed by Other Parties |
|  | EMP_AGREED_DATE | DATS | 8 | OLIMS - Date R@WP Agreed by Employee |
|  | SUP_AGREED_DATE | DATS | 8 | OLIMS - Date R@WP Agreed by Employee |
|  | NTD_AGREED_DATE | DATS | 8 | OLIMS - Date R@WP Agreed by NTD |
|  | OTH_AGREED_DATE | DATS | 8 | OLIMS - Date R@WP Agreed by Other Agency |
|  | OTHER_NAME | CHAR | 30 | OLIMS - R@WP Agreed Other Name |
|  | REVIEW_DATE | DATS | 8 | OLIMS - Date R@WP Review Date |
|  | CAP_HOURS1 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS1 | CHAR | 1 | OLIMS - Capabilities for Days/Week |
|  | CAP_HOURS2 | CHAR | 5 | OLIMS - Capabilities for Hours/Day |
|  | CAP_DAYS2 | CHAR | 1 | OLIMS - Capabilities for Days/Week |
|  | LIFTING | CHAR | 60 | OLIMS - Lifting Capabilities |
|  | WALKING | CHAR | 60 | OLIMS - Walking Capabilities |
|  | SITTING | CHAR | 60 | OLIMS - Sitting Capabilities |
|  | STANDING | CHAR | 60 | OLIMS - Standing Capabilities |
|  | TRAVELLING | CHAR | 60 | OLIMS - Travelling Capabilities |
|  | KEYING | CHAR | 60 | OLIMS - Keying Capabilities |
|  | PUSHING | CHAR | 60 | OLIMS - Pushing/Pulling Capabilities |
|  | DRIVING | CHAR | 60 | OLIMS - Driving Capabilities |
|  | BENDING | CHAR | 60 | OLIMS - Bending/Twisting/Squatting Capabilities |
|  | CERT_TYPE | CHAR | 1 | OLIMS - Certificate Type |
|  | USER_PROCESSED | CHAR | 12 | User Processed |
|  | CODE_PROCESSED | CHAR | 1 | Code Processed |

### ZIM_SCREEN

- File: `ZIM_SCREEN_fields.json`
- Object type: `INTTAB`
- Field count: **54**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | ACTIVITY | NUMC | 3 | OLIMS - Activity at Time of Incident |
|  | CAUSE | NUMC | 3 | OLIMS - Cause of the Incident |
|  | WHEREINC | NUMC | 3 | OLIMS - Where the Incident Occurred |
|  | DESCRIPT | CHAR | 60 | OLIMS - Description |
|  | CORR_CODE | CHAR | 4 | OLIMS - Correspondence Code |
|  | USER_CAT | CHAR | 1 | OLIMS - User Category |
|  | USER_CODE | NUMC | 10 | OLIMS - User Code |
|  | USER_NAME | CHAR | 60 | OLIMS - User Name |
|  | EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | FAX | CHAR | 20 | Communication Number |
|  | ASS_TO | CHAR | 1 | OLIMS - Injury Management Role |
|  | LTR_CATEGORY | CHAR | 2 | OLIMS - Document Category |
|  | FTC_STATUS | CHAR | 1 | OLIMS - FTC Status |
|  | MD_STATUS | CHAR | 2 | OLIMS - Medical Discharge Status |
|  | MD_AGE | NUMC | 2 | OLIMS - MD Benefit Age |
|  | MD_BASE | DEC | 15 | Workers Compensation - Normal Base Pay |
|  | INSURER | CHAR | 10 | OLIMS - Insurer Code |
|  | MDRP_DATE | DATS | 8 | OLIMS - MDRP Date |
|  | MD_TPD_PAID | DEC | 11 | OLIMS - Medical Discharge TPD Paid Amount |
|  | MD_PPD_PAID | DEC | 11 | OLIMS - Medical Discharge Death & Disability Amount |
|  | ROLE_DESC | CHAR | 40 | OLIMS Role Description |
|  | CAT_DESC | CHAR | 40 | OLIMS Letter Category Description |
|  | ORGEH | NUMC | 8 | Organizational Unit |
|  | S49_BEGDA | DATS | 8 | OLIMS - Beginning Date of Section 49 Leave |
|  | S49_ENDDA | DATS | 8 | OLIMS - End Date of Section 49 Leave |
|  | S49_NUMBR | DEC | 7 | Leave Duration |
|  | S49_QUOTA | DEC | 7 | Leave Quota |
|  | S49_PROC | DEC | 7 | Quota already Processed |
|  | S49_WC_LVE | DEC | 7 | WC Leave Duration |
|  | S49_STD_DUR | DEC | 7 | Standard Hours Duration |
|  | EXT_TYPE_ALL | CHAR | 1 | OLIMS - External Employment Activity Type |
|  | PAYROLL_AMOUNT | DEC | 15 | Amount Paid via Payroll |
|  | WEEKLY_AMOUNT | DEC | 15 | Weekly Amount Paid via Payroll |
|  | LOST_ALL_AMOUNT | DEC | 15 | Lost Allowance Amount |
|  | CLAIM_REVIEW_DT | DATS | 8 | OLIMS - CM Claim Review Date |
|  | CLAIM_REVIEW | CHAR | 1 | OLIMS - CM Claim Review |
|  | IPM_PABRJ | NUMC | 4 | Payroll Year |
|  | IPM_PABRP | NUMC | 2 | Payroll Period |
|  | DEPLOY_STATUS | CHAR | 1 | OLIMS - Deployment Status for the Overview Screen |
|  | IP_START_DATE | DATS | 8 | OLIMS - Income Protection Start Date |
|  | IP_END_DATE | DATS | 8 | OLIMS - Income Protection End Date |
|  | WCLMN | CHAR | 15 | Workcover Claim Number |
|  | REM_CAT | CHAR | 4 | Not More Closely Defined Area, Possibly Used for Patchlevels |
|  | SUBORDINATE | CHAR | 1 | Data element for domain BOOLE: TRUE (='X') and FALSE (=' ') |
|  | CSA | NUMC | 8 | OLIMS - Contract Services Advisor |
|  | CSA_NAME | CHAR | 40 | Formatted Name of Employee or Applicant |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | ASS_STATUS | CHAR | 1 | OLIMS - SCU Assessment Status |
|  | PRE88_STATUS | CHAR | 1 | OLIMS - PRE88 Status |
|  | PREMD_STATUS | CHAR | 1 | OLIMS - Pre 88 Medical Discharge Status |
|  | PREMD_SCREEN_STAT | CHAR | 1 | OLIMS - SCU Medical Discharge Status |
|  | REQ_TYPE | CHAR | 2 | OLIMS - Inbound/Outbound Request Type |
|  | HOME | CHAR | 241 | Communication: Long Identification/Number |
|  | SMS | CHAR | 20 | Communication Number |

### ZIM_SCREEN_ADDRESS

- File: `ZIM_SCREEN_ADDRESS_fields.json`
- Object type: `INTTAB`
- Field count: **23**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | MANDT | CLNT | 3 | Client |
|  | PERNR | NUMC | 8 | Personnel Number |
|  | STRAS | CHAR | 60 | Street and House Number |
|  | LOCAT | CHAR | 40 | 2nd Address Line |
|  | ORT01 | CHAR | 40 | City |
|  | POSTCODE | CHAR | 10 | Postal Code |
|  | REGIO | CHAR | 3 | Region (State, Province, County) |
|  | HOME_PHONE | CHAR | 20 | Communication Number |
|  | WORK_PHONE | CHAR | 20 | Communication Number |
|  | MOBILE | CHAR | 20 | Communication Number |
|  | EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | LAND1 | CHAR | 3 | Country Key |
|  | ALTERNATE_CONTACT | CHAR | 40 | Object Name |
|  | ALTERNATE_PHONE | CHAR | 20 | Communication Number |
|  | NO_CORRO | CHAR | 1 | OLIMS - No Correspondence |
|  | CONTACT_DETAILS1 | CHAR | 132 | Character with String Length 132 and Lowercase |
|  | CONTACT_DETAILS2 | CHAR | 132 | Character with String Length 132 and Lowercase |
|  | WORK_EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | OTH_WORK_EXTERNAL | CHAR | 20 | Communication Number |
|  | OTH_WORK_EAGLE | CHAR | 20 | Communication Number |
|  | OTH_HOME_TEL | CHAR | 20 | Communication Number |
|  | OTH_HOME_MOBILE | CHAR | 20 | Communication Number |
|  | OTH_HOME_EMAIL | CHAR | 241 | Communication: Long Identification/Number |

### ZIM_SCREEN_DEPEXT

- File: `ZIM_SCREEN_DEPEXT_fields.json`
- Object type: `INTTAB`
- Field count: **11**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | MANDT | CLNT | 3 | Client |
|  | PERNR | NUMC | 8 | Personnel Number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | EMPLOY_SEQNO | NUMC | 3 |  |
|  | DESC_EXT_ORG | CHAR | 60 | OLIMS - Deployment Description of Ext Org |
|  | START_DATE | DATS | 8 | OLIMS - Deployment Start Date |
|  | END_DATE | DATS | 8 | OLIMS - Deployment End Date |
|  | REVIEW_DATE | DATS | 8 | OLIMS - Deployment Review Date |
|  | CORR_SENT_DATE | DATS | 8 | OLIMS - Deployment Correspondence Sent Date |
|  | COMPLETE | CHAR | 1 | OLIMS - Deployment Complete |
|  | SAP_UPDATED | CHAR | 1 | OLIMS - Deployment SAP Updated |

### ZIM_SCREEN_DEPMTG

- File: `ZIM_SCREEN_DEPMTG_fields.json`
- Object type: `INTTAB`
- Field count: **7**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | MANDT | CLNT | 3 | Client |
|  | PERNR | NUMC | 8 | Personnel Number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | EMPLOY_SEQNO | NUMC | 3 |  |
|  | MTG_DT | DATS | 8 | OLIMS - Deployment Next Meeting Date |
|  | MTG_TM | TIMS | 6 | OLIMS - Deployment Next Meeting Time |
|  | MTG_CONFIRM | CHAR | 1 | OLIMS - Deployment Meeting Confirmation |

### ZIM_SCREEN_DEPREV

- File: `ZIM_SCREEN_DEPREV_fields.json`
- Object type: `INTTAB`
- Field count: **7**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | MANDT | CLNT | 3 | Client |
|  | PERNR | NUMC | 8 | Personnel Number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | EMPLOY_SEQNO | NUMC | 3 |  |
|  | REVIEW_DT | DATS | 8 | OLIMS - Deployment Next Case Review Date |
|  | REVIEW_TM | TIMS | 6 | OLIMS - Deployment Next Case Review Time |
|  | REVIEW_CONFIRM | CHAR | 1 | OLIMS - Deployment Review Confirmation |

### ZIM_SCREEN_ERG

- File: `ZIM_SCREEN_ERG_fields.json`
- Object type: `INTTAB`
- Field count: **11**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | MANDT | CLNT | 3 | Client |
|  | PERNR | NUMC | 8 | Personnel Number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | ERG_SENT | CHAR | 1 | OLIMS - Ergonomic Assessment Sent |
|  | ERG_SENT_DATE | DATS | 8 | OLIMS - Ergonomic Assessment Sent Date |
|  | ERG_REC_DATE | DATS | 8 | OLIMS - Ergonomic Assessment Received Date |
|  | INSPECT_REQ | CHAR | 1 | OLIMS - Ergonomic Inspection Required |
|  | INSPECT_REF | DATS | 8 | OLIMS - Ergonomic Inspection Referral Date |
|  | INSPECT_EMP | NUMC | 8 | Personnel Number |
|  | INSPECT_COMP | DATS | 8 | OLIMS - Ergonomic Inspection Completion Date |

### ZIM_SCREEN_MEET

- File: `ZIM_SCREEN_MEET_fields.json`
- Object type: `INTTAB`
- Field count: **15**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | MANDT | CLNT | 3 | Client |
|  | PERNR | NUMC | 8 | Personnel Number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | MEET_DATE | DATS | 8 | OLIMS - Meeting Date |
|  | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
|  | MEET_DESC | CHAR | 80 | OLIMS Meeting Description |
|  | MEET_OTHER_TYPE | CHAR | 30 | OLIMS - Meeting type for Other |
|  | MEET_TIME | TIMS | 6 | OLIMS - Meeting Time |
|  | MEET_GOAL | CHAR | 128 | OLIMS - Meeting Goal |
|  | AGENDAX | CHAR | 1 | OLIMS: Flag for Agenda Sent |
|  | AGENDA_SENT | DATS | 8 | Date |
|  | MINUTESX | CHAR | 1 | OLIMS: Minutes Sent flag |
|  | MINUTES_SENT | DATS | 8 | Date |
|  | MEET_LOCATION | CHAR | 60 | OLIMS Meeting Location |
|  | MEET_TYPE_ALL | CHAR | 1 | OLIMS - Meeting Type |

### ZIM_SCREEN_MTG

- File: `ZIM_SCREEN_MTG_fields.json`
- Object type: `INTTAB`
- Field count: **17**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | MANDT | CLNT | 3 | Client |
|  | PERNR | NUMC | 8 | Personnel Number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | MEET_TYPE | CHAR | 1 | OLIMS - Meeting Type |
|  | MEET_SEQ_NO | NUMC | 4 | General Sequence Number - 4 Digits |
|  | MEET_DATE | DATS | 8 | OLIMS - Meeting Date |
|  | MEET_DESC | CHAR | 80 | OLIMS Meeting Description |
|  | MEET_OTHER_TYPE | CHAR | 30 | OLIMS - Meeting type for Other |
|  | MEET_TIME | TIMS | 6 | OLIMS - Meeting Time |
|  | MEET_GOAL | CHAR | 128 | OLIMS - Meeting Goal |
|  | AGENDAX | CHAR | 1 | OLIMS: Flag for Agenda Sent |
|  | AGENDA_SENT | DATS | 8 | Date |
|  | MINUTESX | CHAR | 1 | OLIMS: Minutes Sent flag |
|  | MINUTES_SENT | DATS | 8 | Date |
|  | MEET_LOCATION | CHAR | 60 | OLIMS Meeting Location |
|  | LEGAL_SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | MEET_TYPE_ALL | CHAR | 1 | OLIMS - Meeting Type |

### ZIM_SCREEN_REHAB

- File: `ZIM_SCREEN_REHAB_fields.json`
- Object type: `INTTAB`
- Field count: **9**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | MANDT | CLNT | 3 | Client |
|  | PERNR | NUMC | 8 | Personnel Number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | SEQ_NO | NUMC | 3 | OLIMS - Unique Identifier |
|  | ORGEH | NUMC | 8 | OLIMS - Rehabilitation Org Unit |
|  | BEGDA | DATS | 8 | OLIMS - Rehabilitation Commencement Date |
|  | ENDDA | DATS | 8 | OLIMS - Rehabilitation Completion Date |
|  | REVIEW_DATE | DATS | 8 | OLIMS - Rehabilitation Review Date |
|  | COMPLETE | CHAR | 1 | OLIMS - Rehabilitation Complete |

### ZIM_SCREEN_SERV_REQ

- File: `ZIM_SCREEN_SERV_REQ_fields.json`
- Object type: `INTTAB`
- Field count: **6**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | PROV_CODE | NUMC | 10 | OLIMS - Provider Code |
|  | DATE_REQ | DATS | 8 | OLIMS - Date External Provider Requested |
|  | REF_MGMT | CHAR | 1 | OLIMS - IMEP Referred to Management |
|  | ROSA_REQUEST | CHAR | 1 | OLIMS - ROSA Requested |
|  | PMO_REQUEST | CHAR | 1 | OLIMS - PMO Requested |
|  | PROV_ACTIVITY | CHAR | 1 | OLIMS - External Provider Activity |

### ZIM_SCU_MD_CONTACT_DETAILS

- File: `ZIM_SCU_MD_CONTACT_DETAILS_fields.json`
- Object type: `INTTAB`
- Field count: **17**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | EMP_PHONE | CHAR | 20 | Communication Number |
|  | EMP_EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | CMDR | NUMC | 8 | Personnel Number |
|  | PAM | NUMC | 8 | Personnel Number |
|  | IMA | NUMC | 8 | Personnel Number |
|  | ALLIANZ_CONT | NUMC | 5 | OLIMS - Insurer Contact Code |
|  | PREF_CONTACT | NUMC | 8 | Personnel Number |
|  | SS_PAYROLL | NUMC | 8 | Personnel Number |
|  | MERCER_NAME | CHAR | 40 | Formatted Name of Employee or Applicant |
|  | MERCER_PHONE | CHAR | 20 | Communication Number |
|  | MERCER_EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | PANSW_NAME | CHAR | 40 | Formatted Name of Employee or Applicant |
|  | PANSW_PHONE | CHAR | 20 | Communication Number |
|  | PANSW_EMAIL | CHAR | 241 | Communication: Long Identification/Number |
|  | OTHER_NAME | CHAR | 40 | Formatted Name of Employee or Applicant |
|  | OTHER_PHONE | CHAR | 20 | Communication Number |
|  | OTHER_EMAIL | CHAR | 241 | Communication: Long Identification/Number |

### ZIM_SERVICE

- File: `ZIM_SERVICE_fields.json`
- Object type: `TRANSP`
- Field count: **2**
- Primary key: **MANDT, SERV_CODE**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | SERV_CODE | CHAR | 10 | OLIMS - Provider Service Code |

### ZIM_SERVICET

- File: `ZIM_SERVICET_fields.json`
- Object type: `TRANSP`
- Field count: **4**
- Primary key: **MANDT, SPRSL, SERV_CODE**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | SPRSL | LANG | 1 | Language Key |
| Y | SERV_CODE | CHAR | 10 | OLIMS - Provider Service Code |
|  | SERV_DESC | CHAR | 60 | OLIMS - Provider Service Description |

### ZIM_USER

- File: `ZIM_USER_fields.json`
- Object type: `TRANSP`
- Field count: **4**
- Primary key: **MANDT, TCODE**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
| Y | MANDT | CLNT | 3 | Client |
| Y | TCODE | CHAR | 20 | Transaction Code |
|  | USER_GROUP | CHAR | 1 | OLIMS - User Access Category |
|  | NOTE_CODE | CHAR | 10 | OLIMS - Default Note Code |

### ZIM_WC_BENEFITS

- File: `ZIM_WC_BENEFITS_fields.json`
- Object type: `INTTAB`
- Field count: **15**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | PERNR | NUMC | 8 | Personnel Number |
|  | INCIDENT | NUMC | 10 | Incident No. |
|  | DATE_FROM | DATS | 8 | OLIMS - MC Date From |
|  | DATE_TO | DATS | 8 | OLIMS - MC Date To |
|  | MC_STATUS | CHAR | 2 | OLIMS - Medical Certificate Status |
|  | DEP_SPOUSE | CHAR | 1 | Employee has a dependent spouse |
|  | DEP_CHILDREN | NUMC | 3 | The number of dependent children |
|  | WCLMN | CHAR | 15 | Workcover Claim Number |
|  | STAT | CHAR | 1 | Claim status code |
|  | STAT_RATE | DEC | 15 | Workers Compensation - Stat Rate |
|  | PAWE | DEC | 15 | OLIMS - Proposed Average Weekly Earnings |
|  | PREAS | CHAR | 2 | Reason for Changing Master Data |
|  | AMOUNT | DEC | 11 | OLIMS - Recoup Fixed Amount |
|  | EXT_EARNINGS | DEC | 11 | OLIMS - Section 40 External Earnings |
|  | TOP_UP | CHAR | 1 | Checkbox |

### ZIM_WC_SALARY

- File: `ZIM_WC_SALARY_fields.json`
- Object type: `INTTAB`
- Field count: **6**
- Primary key: **N/A**

| Key | Field | Type | Length | Text |
|---:|---|---|---:|---|
|  | LGART | CHAR | 4 | Wage Type |
|  | ANZHL | DEC | 7 | Number |
|  | OPKEN | CHAR | 1 | Operation Indicator for Wage Types |
|  | INDBW | CHAR | 1 | Indicator for indirect valuation |
|  | BETRG | DEC | 15 | Workers Compensation - Allowances |
|  | EXCL_ALLOW | CHAR | 1 | OLIMS - Exclude Allowance |
