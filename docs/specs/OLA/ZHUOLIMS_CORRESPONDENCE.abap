
  <source>REPORT zhuolims MESSAGE-ID zon.

&quot;TOP Include
INCLUDE zhuim_top.
INCLUDE zhuim_top_class.

&quot;PBO &amp; PAI Include
INCLUDE zhuim_main.

&quot;FORM Include
INCLUDE zhuim_update.
INCLUDE zhuim_bdc.
INCLUDE zhuim_common.
INCLUDE zhuim_search_help.
INCLUDE zhuim_email.
INCLUDE zhuolims_correspondence.
INCLUDE zhuolims_update2.

INCLUDE zhuim_main_2.

INCLUDE zhuim_update3.

INCLUDE zhuim_update4.


*----------------------------------------------------------------------*
*      Form  BUILD_FIELDCAT_INC_BP_INJ
*----------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*      --&gt;P_INC_BP_INJ_FIELDCAT  text
*----------------------------------------------------------------------*
FORM build_fieldcat_inc_bp_inj  TABLES  p_fieldcat STRUCTURE lvc_s_fcat.


  DATA: l_col        TYPE i,
         l_text(20)   TYPE c.

  REFRESH p_fieldcat.
  CLEAR rec_fieldcat.
  l_col = 0.

  CLEAR rec_fieldcat.
  ADD 1 TO l_col.
  rec_fieldcat-fieldname     = &apos;LOCATION_DESC&apos;.
  rec_fieldcat-col_pos       = l_col.
  rec_fieldcat-coltext       = &apos;Body Location&apos;.
  rec_fieldcat-just          = &apos;L&apos;.
  rec_fieldcat-outputlen     = 40.
  rec_fieldcat-lowercase     = abap_true.
  APPEND rec_fieldcat TO p_fieldcat.

  CLEAR rec_fieldcat.
  ADD 1 TO l_col.
  rec_fieldcat-fieldname     = &apos;NATURE_DESC&apos;.
  rec_fieldcat-col_pos       = l_col.
  rec_fieldcat-coltext       = &apos;Injury&apos;.
  rec_fieldcat-just          = &apos;L&apos;.
  rec_fieldcat-outputlen     = 40.
  rec_fieldcat-lowercase     = abap_true.
  APPEND rec_fieldcat TO p_fieldcat.

  CLEAR rec_fieldcat.
  ADD 1 TO l_col.
  rec_fieldcat-fieldname     = &apos;MAIN_INJURY&apos;.
  rec_fieldcat-col_pos       = l_col.
  rec_fieldcat-coltext       = &apos;Is Main Injury&apos;.
  rec_fieldcat-checkbox      = abap_true.
  APPEND rec_fieldcat TO p_fieldcat.

ENDFORM.                    &quot; BUILD_FIELDCAT_INC_BP_INJ
*----------------------------------------------------------------------*
*      Module  SCREEN_CONTROL_1006  OUTPUT
*----------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE screen_control_1006 OUTPUT.

  LOOP AT SCREEN.
    &quot;Set all fields to Display Only
    IF w_1000_action = &apos;DISP&apos;.
      IF screen-group3 = &apos;920&apos;.
        screen-invisible = &apos;1&apos;.
        screen-active    = &apos;0&apos;.
        MODIFY SCREEN.
      ENDIF.
    ENDIF.
  ENDLOOP.

ENDMODULE.                 &quot; SCREEN_CONTROL_1006  OUTPUT

*----------------------------------------------------------------------*
*      Module  USER_COMMAND_1006  INPUT
*----------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_1006 INPUT.

  IF w_code2 = &apos;UPDINJBP&apos; OR
     w_code2 = &apos;DELINJBP&apos;.

    CALL METHOD inc_bp_inj_alv-&gt;get_scroll_info_via_id
      IMPORTING
        es_col_info = gr_outtab58_col_info
        es_row_no   = gr_outtab58_row_no.

    CALL METHOD inc_bp_inj_alv-&gt;get_selected_rows
      IMPORTING
        et_index_rows = gt_row_table
        et_row_no     = gt_row_no
      EXCEPTIONS
        OTHERS        = 1.
    IF sy-subrc &lt;&gt; 0.
      MESSAGE a000.
    ENDIF.

    DESCRIBE TABLE gt_row_table LINES w_lines.
    IF w_lines = 0.
      MESSAGE i999(zz) WITH &apos;Select an Injury to be Processed&apos;.
    ELSEIF w_lines GT 1.
      MESSAGE i999(zz) WITH &apos;Only select one Injury&apos;.
    ELSE.
      READ TABLE gt_row_table INTO gr_row_table INDEX 1.
      READ TABLE gt_outtab58 INTO gr_outtab58 INDEX gr_row_table-index.
      gr_outtab58_row_table = gr_row_table.
      IF w_code2 = &apos;UPDINJBP&apos;.
        PERFORM call_7080 USING &apos;UPD&apos;.
      ELSEIF w_code2 = &apos;DELINJBP&apos;.
        PERFORM call_7080 USING &apos;DEL&apos;.
      ENDIF.
    ENDIF.
  ENDIF.

  IF w_code2 = &apos;ADDINJBP&apos;.
    PERFORM call_7080 USING &apos;INS&apos;.
  ENDIF.


ENDMODULE.                 &quot; USER_COMMAND_1006  INPUT

*----------------------------------------------------------------------*
*      Module  STATUS_1005  OUTPUT
*----------------------------------------------------------------------*
*      Set stataus for screen 1005
*----------------------------------------------------------------------*
MODULE status_1005 OUTPUT.


ENDMODULE.                 &quot; STATUS_1005  OUTPUT

*----------------------------------------------------------------------*
*      Module  SCREEN_CONTROL_1005  OUTPUT
*----------------------------------------------------------------------*
*      Perform screen control actions for screen 1005
*----------------------------------------------------------------------*
MODULE screen_control_1005 OUTPUT.

  LOOP AT SCREEN.

    &quot;Set all fields to Display Only
    IF w_1000_action = &apos;DISP&apos;.
      screen-input  = &apos;0&apos;.
      MODIFY SCREEN.
    ENDIF.
  ENDLOOP.

  SET CURSOR FIELD w_cursor.

  CLEAR w_cursor.


ENDMODULE.                 &quot; SCREEN_CONTROL_1005  OUTPUT

*&amp;---------------------------------------------------------------------*
*&amp;      Form  GET_BP_INJURY_DATA
*&amp;---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  --&gt;  p1        text
*  &lt;--  p2        text
*----------------------------------------------------------------------*
FORM get_bp_injury_data .

  DATA :  lt_bp_injury         TYPE TABLE OF zim_inc_p902_inj,
          l_bp_inj_sf          TYPE zim_inc_p902_inj_sf,
          lv_bp_injury         TYPE zim_inc_p902_inj.

 refresh tbl_bp_injury.

  SELECT * FROM zim_inc_p902_inj
    INTO CORRESPONDING FIELDS OF TABLE lt_bp_injury
   WHERE pernr     EQ p9001-pernr AND
         bp_number EQ p9001-bp_number AND
         incident  EQ p9001-identnr.

  LOOP AT lt_bp_injury INTO lv_bp_injury.
    MOVE-CORRESPONDING lv_bp_injury TO l_bp_inj_sf.
    SELECT SINGLE injury FROM zpbp_injury_sutt
           INTO l_bp_inj_sf-injury
           WHERE sprsl  = &apos;E&apos;
             AND sys_id = l_bp_inj_sf-injury_subtype.

    SELECT SINGLE body   FROM zpbp_body_locatt
           INTO l_bp_inj_sf-body
           WHERE sprsl  = &apos;E&apos;
             AND sys_id = l_bp_inj_sf-bodily_location_subtype.
    APPEND l_bp_inj_sf TO tbl_bp_injury.
  ENDLOOP.

ENDFORM.                    &quot; GET_BP_INJURY_DATA

*&amp;---------------------------------------------------------------------*
*&amp;      Module  STATUS_7070  OUTPUT
*&amp;---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE status_7070 OUTPUT.
  IF w_7070_action = &apos;DEL&apos;.
    PERFORM exclfunc_append USING &apos;SAVE&apos;.
  ELSE.
    PERFORM exclfunc_append USING &apos;DELETE&apos;.
  ENDIF.

  SET PF-STATUS &apos;7070&apos; EXCLUDING exclfunc.
  SET TITLEBAR  &apos;7070&apos;.

ENDMODULE.                 &quot; STATUS_7070  OUTPUT

*----------------------------------------------------------------------*
*      Form  READ_7070
*----------------------------------------------------------------------*
*      Get reference details
*----------------------------------------------------------------------*

FORM read_7070 .

  SELECT SINGLE * FROM zp902_location
         INTO w_zp902_location
         WHERE location_code = w_location_code.
  IF sy-subrc NE 0.
    CLEAR w_zp902_location.
  ENDIF.

  SELECT SINGLE * FROM zp902_nature
         INTO w_zp902_nature
         WHERE nature_code = w_nature_code.
  IF sy-subrc NE 0.
    CLEAR w_zp902_nature.
  ENDIF.

ENDFORM.                    &quot; READ_7070

*----------------------------------------------------------------------*
*      Form  VALIDATE_7070
*----------------------------------------------------------------------*
*      Validate details entered
*----------------------------------------------------------------------*

FORM validate_7070 .

  SELECT SINGLE * FROM zp902_location
         INTO w_zp902_location
         WHERE location_code = w_location_code.
  IF sy-subrc NE 0.
    CLEAR w_zp902_location.
    CLEAR w_popup_ucomm..
    w_error = &apos;X&apos;.
    MESSAGE e999 WITH &apos;Invalid Location Code&apos;.
  ENDIF.

  IF w_other_location IS INITIAL AND
     w_zp902_location-other_text IS NOT INITIAL.
    CLEAR w_popup_ucomm..
    w_error = &apos;X&apos;.
    MESSAGE e999 WITH &apos;The Other Location&apos;
                      &apos;must be entered&apos;.
  ENDIF.

  SELECT SINGLE * FROM zp902_nature
         INTO w_zp902_nature
         WHERE nature_code = w_nature_code.
  IF sy-subrc NE 0.
    CLEAR w_popup_ucomm..
    w_error = &apos;X&apos;.
    CLEAR w_zp902_nature.
    MESSAGE e999 WITH &apos;Invalid Nature Code&apos;.
  ENDIF.

  IF w_other_nature IS INITIAL AND
     w_zp902_nature-other_text IS NOT INITIAL.
    CLEAR w_popup_ucomm..
    w_error = &apos;X&apos;.
    MESSAGE e999 WITH &apos;The Other Nature&apos;
                      &apos;must be entered&apos;.
  ENDIF.

ENDFORM.                    &quot; VALIDATE_7070

*----------------------------------------------------------------------*
*      Form  CHECK_GET_BP_INJURY
*----------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*

FORM check_get_bp_injury   USING    p_pernr
                                    p_incident
                           CHANGING cv_injury  TYPE string.

  DATA: lv_location         TYPE zpbp_body_locat_code,
        l_zim_inc_p902_inj  TYPE zim_inc_p902_inj.

  CLEAR: cv_injury.

  SELECT SINGLE * FROM zim_inc_p902_inj
         INTO l_zim_inc_p902_inj
         WHERE pernr       EQ p_pernr
           AND incident    EQ p_incident
           AND main_injury EQ abap_true.

  IF sy-subrc = 0.
    SELECT SINGLE body
           FROM zpbp_body_locatt
           INTO lv_location
           WHERE sprsl  EQ &apos;E&apos;
           AND sys_id   EQ l_zim_inc_p902_inj-bodily_location_subtype.
    IF sy-subrc EQ 0.
      cv_injury = lv_location.
    ENDIF.
  ENDIF.

ENDFORM.                    &quot; CHECK_GET_BP_INJURY</source>
 </PROG>
</nugget>

class ZCL_OLIMS_PRIM_CLAIM definition
  public
  final
  create public .

public section.

  data GV_INCIDENT type ZHR_INC_IDENTNR read-only .
  data GV_PERNR type PERSNO read-only .
  data GT_PRIM_PERNR type ZIM_IN_PRIM_TAB read-only .
  constants GC_DOCUMENT_PREFIX type CHAR4 value 'PRIM'. "#EC NOTEXT
  constants GC_DOCUMENT_CATEGORY type ZIM_LETTER_CATEGORY value 'ZC'. "#EC NOTEXT

  methods GET_PRIMARY_CLAIMS_INCIDENT
    returning
      value(ET_PRIM_INCIDENT) type ZIM_IN_PRIM_TAB .
  methods GET_PRIMARY_CLAIMS_FOR_DATE
    importing
      value(IV_BEGDA) type BEGDA
      value(IV_ENDDA) type ENDDA
    exporting
      !ET_PRIM_CLAIM type ZIM_IN_PRIM_TAB .
  methods SAVE_PRIM_CLAIM_TO_DB .
  methods CONSTRUCTOR
    importing
      value(IV_INCIDENT) type ZHR_INC_IDENTNR
      value(IV_PERNR) type PERSNO .
  class-methods ADD_DATE_RANGE
    importing
      !IV_BEGDA type BEGDA
      !IV_ENDDA type ENDDA
      !IV_OVERLAP type XFELD default ' '
    changing
      !CT_DATE_RANGE type ZCA_DATE_RANGE_UPD_TAB .
  methods CONVERT_DATE_RANGE_TO_PRIM_UPD
    importing
      !IT_DATE_RANGE type ZCA_DATE_RANGE_UPD_TAB
      !IT_PRIM_TABLE type ZIM_IN_PRIM_TAB
      !IS_PRIM_NEW type ZIM_IN_PRIM optional
    exporting
      !ET_PRIM_CLAIM_UPD type ZIM_IN_PRIM_UPD_TAB .
  methods CHECK_IF_UPDATE_REQUIRED
    returning
      value(RV_UPDATE) type BOOLE_D .
  methods PUT_PRIM_UPD
    importing
      !IT_PRIM_CLAIM_UPD type ZIM_IN_PRIM_UPD_TAB .
  methods GET_PRIMARY_CLAIMS_PERNR
    returning
      value(ET_PRIM_PERNR) type ZIM_IN_PRIM_TAB .
  class-methods SPLIT_DATE_RANGE
    importing
      !IV_BEGDA type BEGDA
      !IV_ENDDA type ENDDA
      !IT_DATE_RANGE type ZCA_DATE_RANGE_UPD_TAB
    exporting
      !ET_SPLITS type ZCA_DATE_RANGE_UPD_TAB .
  methods REFRESH_UPDATE_TABLE .
  methods GET_PRIMARY_INCLUDING_INACTIVE
    returning
      value(ET_PRIM_INC_INACTIVE) type ZIM_IN_PRIM_TAB .
  methods CLOSE_CLAIM
    importing
      !IV_CLOSE_DATE type DATUM optional .
  class-methods CHECK_IF_DOC_EXISTS
    importing
      !IS_IN_PRIM type ZIM_IN_PRIM
    returning
      value(RV_EXIST) type BOOLE_D .
  class-methods GET_OPEN_PRIMARY_CLAIM_PERNR
    importing
      !IV_PERNR type PERSNO
      !IV_DATE type DATUM
    returning
      value(RV_INCIDENT) type ZHR_INC_IDENTNR
    raising
      CX_ME_NO_DATA .
  class-methods GET_DEF_CLAIM_FLAG
    importing
      !IV_PERNR type ZIM_IN_MAST-PERNR
      !IV_INCIDENT type ZIM_IN_MAST-INCIDENT
      !IV_BEGDA type DATUM
      !IV_ENDDA type DATUM
    returning
      value(RV_DEF_CLAIM) type BOOLE_D .
protected section.
private section.

  data GT_PRIM_CLAIM_UPD type ZIM_IN_PRIM_UPD_TAB .
  data GT_PRIM_PERNR_INC_DEL type ZIM_IN_PRIM_TAB .

  methods SAVE_PRIM_LOG_TO_DB
    exporting
      !EV_ERROR type BOOLE_D .
ENDCLASS.



CLASS ZCL_OLIMS_PRIM_CLAIM IMPLEMENTATION.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_OLIMS_PRIM_CLAIM=>ADD_DATE_RANGE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_BEGDA                       TYPE        BEGDA
* | [--->] IV_ENDDA                       TYPE        ENDDA
* | [--->] IV_OVERLAP                     TYPE        XFELD (default =' ')
* | [<-->] CT_DATE_RANGE                  TYPE        ZCA_DATE_RANGE_UPD_TAB
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD add_date_range.

  DATA: ls_range    TYPE zca_date_range_upd,
        lt_range    TYPE zca_date_range_upd_tab.

  FIELD-SYMBOLS:
        <ls_date_range> TYPE zca_date_range_upd.

* append the new date range as is
  APPEND INITIAL LINE TO ct_date_range ASSIGNING <ls_date_range>.
  <ls_date_range>-begda = iv_begda.
  <ls_date_range>-endda = iv_endda.
  <ls_date_range>-updkz = 'I'.            "Insert

  SORT ct_date_range by begda.

* if no overlapping alowed
  IF iv_overlap IS INITIAL.
** Delimit records
    LOOP AT ct_date_range ASSIGNING <ls_date_range> WHERE updkz IS  INITIAL.
*   If the record is included in the new date range
      IF <ls_date_range>-begda BETWEEN iv_begda AND iv_endda AND
         <ls_date_range>-endda BETWEEN iv_begda AND iv_endda.
        <ls_date_range>-updkz = 'D'.            "Delete the record as it is completely included
      ENDIF.

*   check if record is partly in provided date range / ENDDA
      IF  <ls_date_range>-begda BETWEEN iv_begda AND iv_endda AND
      NOT <ls_date_range>-endda BETWEEN iv_begda AND iv_endda.

        <ls_date_range>-updkz = 'D'.            "Delete this record

*     delimit the record with end date
        CLEAR ls_range.
        ls_range-begda = iv_endda + 1.
        ls_range-endda = <ls_date_range>-endda.
        ls_range-updkz = 'I'.
        ls_range-ref_idx = <ls_date_range>-source_idx.
        APPEND ls_range TO lt_range.
      ENDIF.

*   check if record is partly in provided date range / BEGDA
      IF  NOT <ls_date_range>-begda BETWEEN iv_begda AND iv_endda AND
              <ls_date_range>-endda BETWEEN iv_begda AND iv_endda.

        <ls_date_range>-updkz = 'D'.            "Delete this record

*     create new record with beg date
        CLEAR ls_range.
        ls_range-begda = <ls_date_range>-begda.
        ls_range-endda = iv_begda - 1.
        ls_range-updkz = 'I'.
        ls_range-ref_idx = <ls_date_range>-source_idx.
        APPEND ls_range TO lt_range.
      ENDIF.

*   check if record is not in b/w begda and endda
      IF  NOT <ls_date_range>-begda BETWEEN iv_begda AND iv_endda AND
          NOT <ls_date_range>-endda BETWEEN iv_begda AND iv_endda.

        <ls_date_range>-updkz = 'D'.            "Delete this record

*     create new record with beg date
        CLEAR ls_range.
        ls_range-begda = <ls_date_range>-begda.
        ls_range-endda = iv_begda - 1.
        ls_range-updkz = 'I'.
        ls_range-ref_idx = <ls_date_range>-source_idx.
        APPEND ls_range TO lt_range.

*     delimit the record with end date
        CLEAR ls_range.
        ls_range-begda = iv_endda + 1.
        ls_range-endda = <ls_date_range>-endda.
        ls_range-updkz = 'I'.
        ls_range-ref_idx = <ls_date_range>-source_idx.
        APPEND ls_range TO lt_range.
      ENDIF.
    ENDLOOP.
  ENDIF.


  IF lt_range IS NOT INITIAL.
    APPEND LINES OF lt_range TO ct_date_range.
  ENDIF.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_OLIMS_PRIM_CLAIM=>CHECK_IF_DOC_EXISTS
* +-------------------------------------------------------------------------------------------------+
* | [--->] IS_IN_PRIM                     TYPE        ZIM_IN_PRIM
* | [<-()] RV_EXIST                       TYPE        BOOLE_D
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD check_if_doc_exists.
  DATA: lv_doc_unique   TYPE zim_in_doc_in-doc_unique,
        lv_filename     TYPE zim_in_filename.

* get the unique id for document
  CONCATENATE zcl_olims_prim_claim=>gc_document_prefix
              is_in_prim-seq_no
         INTO lv_doc_unique.

  SELECT SINGLE filename FROM zim_in_doc_in
          INTO lv_filename
         WHERE pernr      = is_in_prim-pernr
           AND incident   = is_in_prim-incident
           AND doc_unique = lv_doc_unique.
  IF sy-subrc EQ 0.
    rv_exist  = abap_true.
  ELSE.
    rv_exist = abap_false.
  ENDIF.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_OLIMS_PRIM_CLAIM->CHECK_IF_UPDATE_REQUIRED
* +-------------------------------------------------------------------------------------------------+
* | [<-()] RV_UPDATE                      TYPE        BOOLE_D
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD check_if_update_required.
  IF NOT gt_prim_claim_upd IS  INITIAL.
    rv_update = abap_true.
  ELSE.
    rv_update = abap_false.
  ENDIF.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_OLIMS_PRIM_CLAIM->CLOSE_CLAIM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_CLOSE_DATE                  TYPE        DATUM(optional)
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD close_claim.
  DATA: lv_close_date   TYPE datum,
        lt_prim_claim   TYPE TABLE OF zim_in_prim,
        ls_prim_claim   TYPE zim_in_prim,
        ls_prim_upd     TYPE zim_in_prim_upd,
        lt_prim_upd     TYPE TABLE OF zim_in_prim_upd,
        lv_char10       TYPE char10.

* close date
  IF iv_close_date IS INITIAL.
    lv_close_date = sy-datum.
  ELSE.
    lv_close_date = iv_close_date.
  ENDIF.

* get records from db for the date range
  lt_prim_claim = me->get_primary_claims_incident( ).
  CHECK lt_prim_claim IS NOT INITIAL.

* For any records that are valid on close date, must be delimited.
  LOOP AT lt_prim_claim INTO ls_prim_claim  WHERE endda GT lv_close_date.
    IF ls_prim_claim-begda LE lv_close_date.
*     Record needs to be delimited
      MOVE-CORRESPONDING ls_prim_claim TO ls_prim_upd.
      ls_prim_upd-updkz = 'D'.
      APPEND ls_prim_upd TO lt_prim_upd.

      ls_prim_upd-updkz = 'I'.
      WRITE lv_close_date to lv_char10.
      ls_prim_upd-description = |Claim closed with closure date of { lv_char10 }|.
      ls_prim_upd-endda = lv_close_date.
      APPEND ls_prim_upd TO lt_prim_upd.

    ELSE.
*   record to be made inactive
      MOVE-CORRESPONDING ls_prim_claim TO ls_prim_upd.
      ls_prim_upd-updkz = 'D'.
      APPEND ls_prim_upd TO lt_prim_upd.
    ENDIF.
  ENDLOOP.

* set the update table
  IF lt_prim_upd IS NOT INITIAL.
    CALL METHOD me->put_prim_upd
      EXPORTING
        it_prim_claim_upd = lt_prim_upd.
* Save
    me->save_prim_claim_to_db( ).
  ENDIF.

ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_OLIMS_PRIM_CLAIM->CONSTRUCTOR
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_INCIDENT                    TYPE        ZHR_INC_IDENTNR
* | [--->] IV_PERNR                       TYPE        PERSNO
* +--------------------------------------------------------------------------------------</SIGNATURE>
method constructor.
* Instance attributes
  gv_incident = iv_incident.
  gv_pernr    = iv_pernr.

* Select all primary claims for this person and store it in an attribute
  select * from zim_in_prim
           into table gt_prim_pernr_inc_del   "Get all records inclusing inactive ones
           where pernr = gv_pernr.

  if sy-subrc eq 0.
    delete gt_prim_pernr_inc_del where conc_ext_claim = 'X'.        "No concurrent claims required
    sort  gt_prim_pernr   by   begda descending.
*   put active records in public attribute
    gt_prim_pernr = gt_prim_pernr_inc_del.
    delete gt_prim_pernr where inactive = abap_true.
*    if gv_incident is not initial.
*      delete gt_prim_pernr where incident ne gv_incident.
*    endif.
  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_OLIMS_PRIM_CLAIM->CONVERT_DATE_RANGE_TO_PRIM_UPD
* +-------------------------------------------------------------------------------------------------+
* | [--->] IT_DATE_RANGE                  TYPE        ZCA_DATE_RANGE_UPD_TAB
* | [--->] IT_PRIM_TABLE                  TYPE        ZIM_IN_PRIM_TAB
* | [--->] IS_PRIM_NEW                    TYPE        ZIM_IN_PRIM(optional)
* | [<---] ET_PRIM_CLAIM_UPD              TYPE        ZIM_IN_PRIM_UPD_TAB
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD convert_date_range_to_prim_upd.
  DATA: ls_date_range      TYPE zca_date_range_upd,
        ls_prim            TYPE zim_in_prim,
        ls_prim_claim_upd  TYPE zim_in_prim_upd,
        lt_prim_claim_upd  TYPE zim_in_prim_upd_tab.

* conversion of date range returned from zcl_olims_prim_claim=>delimit_date_ranges
*   to primary table update
  LOOP AT it_date_range INTO ls_date_range.
    IF ls_date_range-updkz = 'I'.                 "New record to be inserted
      CLEAR ls_prim_claim_upd.
      ls_prim_claim_upd-updkz = ls_date_range-updkz.
      ls_prim_claim_upd-begda = ls_date_range-begda.
      ls_prim_claim_upd-endda = ls_date_range-endda.
*     New record from delimited existing record
      IF NOT ls_date_range-ref_idx IS INITIAL.
        READ TABLE it_prim_table INTO ls_prim  INDEX ls_date_range-ref_idx.
        IF sy-subrc EQ 0.
          ls_prim_claim_upd-pernr = ls_prim-pernr.
          ls_prim_claim_upd-incident = ls_prim-incident.
          ls_prim_claim_upd-description = ls_prim-description.
        ENDIF.
      ENDIF.
*     Brand new reord
      IF ls_prim_claim_upd-pernr IS INITIAL.
        ls_prim_claim_upd-pernr = me->gv_pernr.
      ENDIF.
      IF ls_prim_claim_upd-incident IS INITIAL.
        ls_prim_claim_upd-incident = me->gv_incident.
      ENDIF.
      IF ls_prim_claim_upd-description IS INITIAL.
        ls_prim_claim_upd-description = is_prim_new-description.
      ENDIF.

*     Append to update table
      APPEND ls_prim_claim_upd TO lt_prim_claim_upd.

    ELSEIF ls_date_range-updkz = 'D'.                 "Delete existing record
      READ TABLE it_prim_table INTO ls_prim  INDEX ls_date_range-source_idx.
      IF sy-subrc EQ 0.
        CLEAR ls_prim_claim_upd.
        MOVE-CORRESPONDING ls_prim TO ls_prim_claim_upd.
        ls_prim_claim_upd-updkz = ls_date_range-updkz.
        APPEND ls_prim_claim_upd TO lt_prim_claim_upd.
      ENDIF.
    ENDIF.
  ENDLOOP.

  et_prim_claim_upd = lt_prim_claim_upd.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_OLIMS_PRIM_CLAIM=>GET_DEF_CLAIM_FLAG
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_PERNR                       TYPE        ZIM_IN_MAST-PERNR
* | [--->] IV_INCIDENT                    TYPE        ZIM_IN_MAST-INCIDENT
* | [--->] IV_BEGDA                       TYPE        DATUM
* | [--->] IV_ENDDA                       TYPE        DATUM
* | [<-()] RV_DEF_CLAIM                   TYPE        BOOLE_D
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD get_def_claim_flag.
  DATA: lt_prim_incident TYPE TABLE OF zim_in_prim,
        lr_prim_claim    TYPE REF TO zcl_olims_prim_claim.

  CLEAR rv_def_claim.
* Create primary claim object
  CREATE OBJECT lr_prim_claim
    EXPORTING
      iv_pernr    = iv_pernr
      iv_incident = iv_incident.

* Get primary claims just for this incident
  lt_prim_incident = lr_prim_claim->get_primary_claims_incident( ).
* Filter based on medical certificate dates
  DELETE lt_prim_incident WHERE endda LT iv_begda.   "del records where end date is lower than begin date
  DELETE lt_prim_incident WHERE begda GT iv_endda.   "del records where begin date is greated than end date

* if no primary claim dates, display warning message
  IF lt_prim_incident IS NOT INITIAL.
    rv_def_claim = abap_true.
  ENDIF.

ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_OLIMS_PRIM_CLAIM=>GET_OPEN_PRIMARY_CLAIM_PERNR
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_PERNR                       TYPE        PERSNO
* | [--->] IV_DATE                        TYPE        DATUM
* | [<-()] RV_INCIDENT                    TYPE        ZHR_INC_IDENTNR
* | [!CX!] CX_ME_NO_DATA
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD get_open_primary_claim_pernr.
* Get primary open claim. WC_STATUS in table ZIM_IN_CM should not be closed
  SELECT SINGLE
         p~incident
    FROM zim_in_prim AS p
    INNER JOIN zim_in_cm  AS c
    ON    p~pernr = c~pernr
    AND   p~incident = c~incident
    INTO rv_incident
   WHERE p~pernr = iv_pernr
    AND  p~begda LE iv_date
    AND  p~endda GE iv_date
    AND  p~prim_claim = abap_true
    AND  p~inactive = space
    AND  c~wc_status NE 'C'.
  IF sy-subrc NE 0.
    RAISE EXCEPTION TYPE cx_me_no_data
      EXPORTING
        name = 'INCIDENT'.
  ENDIF.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_OLIMS_PRIM_CLAIM->GET_PRIMARY_CLAIMS_FOR_DATE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_BEGDA                       TYPE        BEGDA
* | [--->] IV_ENDDA                       TYPE        ENDDA
* | [<---] ET_PRIM_CLAIM                  TYPE        ZIM_IN_PRIM_TAB
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD get_primary_claims_for_date.
* get records falling in the date range
  et_prim_claim = me->gt_prim_pernr.
  DELETE et_prim_claim WHERE endda LT iv_begda.   "del records where end date is lower than begin date
  DELETE et_prim_claim WHERE begda GT iv_endda.   "del records where begin date is greated than end date

ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_OLIMS_PRIM_CLAIM->GET_PRIMARY_CLAIMS_INCIDENT
* +-------------------------------------------------------------------------------------------------+
* | [<-()] ET_PRIM_INCIDENT               TYPE        ZIM_IN_PRIM_TAB
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD get_primary_claims_incident.
* filter incidents for the selected incident
  et_prim_incident = gt_prim_pernr.
  DELETE et_prim_incident WHERE incident NE me->gv_incident.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_OLIMS_PRIM_CLAIM->GET_PRIMARY_CLAIMS_PERNR
* +-------------------------------------------------------------------------------------------------+
* | [<-()] ET_PRIM_PERNR                  TYPE        ZIM_IN_PRIM_TAB
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD get_primary_claims_pernr.
  et_prim_pernr = gt_prim_pernr.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_OLIMS_PRIM_CLAIM->GET_PRIMARY_INCLUDING_INACTIVE
* +-------------------------------------------------------------------------------------------------+
* | [<-()] ET_PRIM_INC_INACTIVE           TYPE        ZIM_IN_PRIM_TAB
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD get_primary_including_inactive.
  et_prim_inc_inactive = me->gt_prim_pernr_inc_del.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_OLIMS_PRIM_CLAIM->PUT_PRIM_UPD
* +-------------------------------------------------------------------------------------------------+
* | [--->] IT_PRIM_CLAIM_UPD              TYPE        ZIM_IN_PRIM_UPD_TAB
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD put_prim_upd.
  me->gt_prim_claim_upd = it_prim_claim_upd.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_OLIMS_PRIM_CLAIM->REFRESH_UPDATE_TABLE
* +-------------------------------------------------------------------------------------------------+
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD refresh_update_table.
  REFRESH me->gt_prim_claim_upd.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_OLIMS_PRIM_CLAIM->SAVE_PRIM_CLAIM_TO_DB
* +-------------------------------------------------------------------------------------------------+
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD save_prim_claim_to_db.
  DATA:  ls_prim_claim        TYPE zim_in_prim,
         lt_prim_del          TYPE TABLE OF zim_in_prim,
         lt_prim_ins          TYPE TABLE OF zim_in_prim,
         lt_prim_seqno        TYPE TABLE OF zim_in_prim,
         lt_upd_tmp           TYPE TABLE OF zim_in_prim_upd,
         lv_error             TYPE boole_d.

  FIELD-SYMBOLS:
         <ls_prim_seqno>      TYPE zim_in_prim,
         <ls_prim_claim_upd>  TYPE zim_in_prim_upd.

* check if any update is required
  CHECK me->check_if_update_required( ) = abap_true.

* get new sequence numbers for inserting unique keys into db
* Before insert, get the max SEQ_NO used in DB for combination of PERNR INCIDENT
  READ TABLE me->gt_prim_claim_upd  WITH KEY updkz = 'I'
                                    TRANSPORTING NO FIELDS.
  IF sy-subrc EQ 0.
    lt_upd_tmp = me->gt_prim_claim_upd.
    IF lt_upd_tmp IS  NOT INITIAL.
      SORT lt_upd_tmp BY pernr incident.
      DELETE ADJACENT DUPLICATES FROM lt_upd_tmp COMPARING pernr incident.
      SELECT * FROM zim_in_prim
        INTO TABLE lt_prim_seqno
        FOR ALL ENTRIES IN lt_upd_tmp
        WHERE pernr = lt_upd_tmp-pernr
          AND incident = lt_upd_tmp-incident.
      IF sy-subrc EQ 0.
        SORT lt_prim_seqno  BY pernr incident
                     seq_no DESCENDING.
        DELETE ADJACENT DUPLICATES FROM lt_prim_seqno COMPARING pernr incident.
      ENDIF.
    ENDIF.
  ENDIF.

* Get the new enties to be inserted into an ITAB
  LOOP AT me->gt_prim_claim_upd ASSIGNING <ls_prim_claim_upd> WHERE updkz = 'I'.
    READ TABLE lt_prim_seqno ASSIGNING <ls_prim_seqno>
                             WITH KEY pernr = <ls_prim_claim_upd>-pernr
                                      incident = <ls_prim_claim_upd>-incident.
    IF sy-subrc NE 0.
      APPEND INITIAL LINE TO  lt_prim_seqno ASSIGNING <ls_prim_seqno>.
      <ls_prim_seqno>-pernr = <ls_prim_claim_upd>-pernr.
      <ls_prim_seqno>-incident = <ls_prim_claim_upd>-incident.
    ENDIF.

    <ls_prim_seqno>-seq_no = <ls_prim_seqno>-seq_no + 1.
    <ls_prim_claim_upd>-seq_no = <ls_prim_seqno>-seq_no.
    <ls_prim_claim_upd>-upd_date = sy-datum.
    <ls_prim_claim_upd>-upd_time = sy-uzeit.
    <ls_prim_claim_upd>-upd_user = sy-uname.
    IF <ls_prim_claim_upd>-conc_ext_claim IS INITIAL.
      <ls_prim_claim_upd>-prim_claim = abap_true.       "Set the Primary flag for backward compatibility
    ENDIF.

*   append to insert table
    ls_prim_claim  = <ls_prim_claim_upd>.
    IF ls_prim_claim-pernr IS INITIAL.
      ls_prim_claim-pernr = gv_pernr.
    ENDIF.
    IF ls_prim_claim-incident IS INITIAL.
      ls_prim_claim-incident = gv_incident.
    ENDIF.
    APPEND ls_prim_claim TO lt_prim_ins.
  ENDLOOP.

* Set Deletion indicator
  LOOP AT me->gt_prim_claim_upd ASSIGNING <ls_prim_claim_upd>
                                    WHERE updkz = 'D'.
    UPDATE zim_in_prim
       SET inactive = abap_true
           upd_date = sy-datum
           upd_time = sy-uzeit
           upd_user = sy-uname
       WHERE pernr = <ls_prim_claim_upd>-pernr
         AND incident = <ls_prim_claim_upd>-incident
         AND seq_no   = <ls_prim_claim_upd>-seq_no.
    IF sy-subrc NE 0.
      lv_error = abap_true.
      EXIT.
    ENDIF.
  ENDLOOP.

** Insert newly created records into db
  IF lv_error IS  INITIAL.
* Insert new records
    INSERT zim_in_prim  FROM TABLE lt_prim_ins.
    IF sy-subrc NE 0.
      lv_error = abap_true.
    ENDIF.
  ENDIF.

  IF lv_error IS  INITIAL.
* Update the log table
    me->save_prim_log_to_db( IMPORTING ev_error = lv_error ).
  ENDIF.

  IF lv_error = abap_true.
    ROLLBACK WORK.
    MESSAGE 'Error occurred when updating ZIM_IN_PRIM' TYPE 'E'.
  ELSE.
    me->refresh_update_table( ).
  ENDIF.


ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_OLIMS_PRIM_CLAIM->SAVE_PRIM_LOG_TO_DB
* +-------------------------------------------------------------------------------------------------+
* | [<---] EV_ERROR                       TYPE        BOOLE_D
* +--------------------------------------------------------------------------------------</SIGNATURE>
method save_prim_log_to_db.
  data:  ls_prim_log        type zim_in_prim_log,
         ls_prim_claim_upd  type zim_in_prim_upd,
         lt_prim_log_ins    type table of zim_in_prim_log.

* Update the log table
  loop at me->gt_prim_claim_upd into ls_prim_claim_upd.
    move-corresponding ls_prim_claim_upd to ls_prim_log.
    ls_prim_log-date_processed = sy-datum.
    ls_prim_log-time_processed = sy-uzeit.
    ls_prim_log-user_processed = sy-uname.
    ls_prim_log-code_processed = ls_prim_claim_upd-updkz.
    if ls_prim_log-pernr is initial.
      ls_prim_log-pernr = gv_pernr.
    endif.
    if ls_prim_log-incident is initial.
      ls_prim_log-incident = gv_incident.
    endif.
    append ls_prim_log to lt_prim_log_ins.
  endloop.
  if sy-subrc eq 0.
    delete adjacent duplicates from lt_prim_log_ins.
    insert zim_in_prim_log  from table lt_prim_log_ins.

    if sy-subrc ne 0.
      ev_error = abap_true.
    endif.
  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_OLIMS_PRIM_CLAIM=>SPLIT_DATE_RANGE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_BEGDA                       TYPE        BEGDA
* | [--->] IV_ENDDA                       TYPE        ENDDA
* | [--->] IT_DATE_RANGE                  TYPE        ZCA_DATE_RANGE_UPD_TAB
* | [<---] ET_SPLITS                      TYPE        ZCA_DATE_RANGE_UPD_TAB
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD split_date_range.
  DATA: ls_range      TYPE zca_date_range_upd,
        lt_range_out  TYPE zca_date_range_upd_tab,
        lt_range_in   TYPE zca_date_range_upd_tab.

  FIELD-SYMBOLS:
        <ls_date_range> TYPE zca_date_range_upd.

  lt_range_in = it_date_range.
  DELETE lt_range_in WHERE endda LT iv_begda.   "del records where end date is lower than begin date
  DELETE lt_range_in WHERE begda GT iv_endda.   "del records where begin date is greated than end date

  SORT lt_range_in by begda.

*** Split the incoming date range into valid dates as per the ct_date_range table
  LOOP AT lt_range_in ASSIGNING <ls_date_range> WHERE updkz IS  INITIAL.
**   check if input dates is contained in date range table, if so append and exit from LOOP
    IF  iv_begda BETWEEN <ls_date_range>-begda AND <ls_date_range>-endda AND
        iv_endda BETWEEN <ls_date_range>-begda AND <ls_date_range>-endda.
*     the date range
      CLEAR ls_range.
      ls_range-begda = iv_begda.
      ls_range-endda = iv_endda.
      ls_range-updkz = 'I'.
      ls_range-ref_idx = <ls_date_range>-source_idx.
      APPEND ls_range TO lt_range_out.
      EXIT.
    ENDIF.

*   If the record is included in the new date range
    IF <ls_date_range>-begda BETWEEN iv_begda AND iv_endda AND
       <ls_date_range>-endda BETWEEN iv_begda AND iv_endda.
*     Date range to be included
      CLEAR ls_range.
      ls_range-begda = <ls_date_range>-begda.
      ls_range-endda = <ls_date_range>-endda.
      ls_range-updkz = 'I'.
      ls_range-ref_idx = <ls_date_range>-source_idx.
      APPEND ls_range TO lt_range_out.
    ENDIF.

*   check if record is partly in provided date range / ENDDA
    IF  <ls_date_range>-begda BETWEEN iv_begda AND iv_endda AND
    NOT <ls_date_range>-endda BETWEEN iv_begda AND iv_endda.

*     delimit the record with end date
      CLEAR ls_range.
      ls_range-begda = <ls_date_range>-begda.
      ls_range-endda = iv_endda.
      ls_range-updkz = 'I'.
      ls_range-ref_idx = <ls_date_range>-source_idx.
      APPEND ls_range TO lt_range_out.
    ENDIF.

*   check if record is partly in provided date range / BEGDA
    IF  NOT <ls_date_range>-begda BETWEEN iv_begda AND iv_endda AND
            <ls_date_range>-endda BETWEEN iv_begda AND iv_endda.

*     create new record with beg date
      CLEAR ls_range.
      ls_range-begda = iv_begda.
      ls_range-endda = <ls_date_range>-endda.
      ls_range-updkz = 'I'.
      ls_range-ref_idx = <ls_date_range>-source_idx.
      APPEND ls_range TO lt_range_out.
    ENDIF.
*
  ENDLOOP.
  IF sy-subrc NE 0.
* date range must be deleted
    CLEAR ls_range.
    ls_range-begda = iv_begda.
    ls_range-endda = iv_endda.
    ls_range-updkz = 'D'.
    APPEND ls_range TO lt_range_out.
  ENDIF.

  et_splits = lt_range_out.

ENDMETHOD.
ENDCLASS.