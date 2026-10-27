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
