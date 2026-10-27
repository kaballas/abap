Transp. Table      ZIM_REM             Active
Short Description  OLIMS - Reminders/To Do Descriptions
MANDT	MANDT	CLNT	3	0	Client
NOTE_CAT	ZIM_NOTE_CATEGORY	CHAR	2	0	OLIMS - Reminder/To Do List Category
BUSINESS_RULE	ZIM_NOTE_BUSINESS_RULE	CHAR	2	0	OLIMS - Reminder/To Do List Business Rule
ACTION	ZIM_NOTE_ACTION	CHAR	80	0	OLIMS - Reminder/To Do List Action
INACTIVE	ZIM_REM_INACTIVE	CHAR	1	0	OLIMS - Reminder Inactive
REM_DAYS	ZIM_REM_DAYS	INT4	10	0	OLIMS - Reminder Days

REPORT  zhuim_reminders
  LINE-COUNT 65
  LINE-SIZE 132
  MESSAGE-ID zz
  NO STANDARD PAGE HEADING.
*----------------------------------------------------------------------*
* PROGRAM          # ZHUIM_REMINDERS
* DATE WRITTEN     # 04.08.2011
* SAP R/3 VERSION  # 4.7
* TYPE             # Update Program
* AUTHOR           # Darryl Mee
* Functional Spec  #
* Technical Spec   # ZHUIM_REMINDERS_TECH.doc
*----------------------------------------------------------------------*
* TITLE            # OLIMS - Update Reminders
* PURPOSE          # This program is designed to review the incidents
*                  # in the system and create reminders for the IMA's
*                  # in the system and create reminders for the IMA's
*----------------------------------------------------------------------*
*                m o d i f i c a t i o n   l o g
*----------------------------------------------------------------------*
*   DATE      PROGRAMMER      REQUEST #   DESCRIPTION
*----------------------------------------------------------------------*
* 04/08/2011  Darryl Mee      DEVK975729  New Program
* 20/12/2011  Darryl Mee      DEVK978322  Cater for Pre 88
* 23/02/2012  Darryl Mee      DEVK978527  Changes to IMEP
* 13/08/2012  Darryl Mee      DEVK980118  D&D Implementation
* 01/07/2013  Vangie Reodique DEVK9A10S9  Add nightly reminders
*                                         for OLIMS Deployment Unit
* 26/03/2014  Darryl Mee      DEVK9HR0WQ  Add OMPQ reminder
* 05/04/2017  Charlie Busuttil DEVK9HR5YA CR1874 reminders which
*                                         are NOT needed currently
* 12/07/2019  Charlie Busuttil DEVK9HR9TY CR2414 reminders which
*                                         are NOT needed currently
* 05/08/2019  Charlie Busuttil DEVK9HR9XW CR2414 minor adjusting.
* 12/11/2019  Y Chen           DEVK9HRA9Y Fix production error
*                                         Replace Insert with Modify
*                                         in updating table ZIM_IN_REM
* 25/09/2020  Darryl Mee       DEVK9HRBM2 CEP89 OLIMS Enhancements
*----------------------------------------------------------------------*
*     s e l e c t i o n  -  s c r e e n   p a r a m e t e r s
*----------------------------------------------------------------------*

TABLES: zim_in_mast,
        zim_in_mast_log,
        zim_in_rem,
        zim_in_imep,
        zim_in_prov,
        zim_in_cert,
        zim_in_cap,
        zim_rtwp,
        zim_rtwp_grade,
        zim_rem,
        zim_in_ftc,
        zim_in_doc,
        zim_in_doc_in,
        zim_advisor,
        zim_in_cm,
        zim_in_claim,
        zim_incident,
        zim_in_deploy,
        pa0001,
        pa0002,
        dd07v.

CONSTANTS: c_lang(2)       TYPE c  VALUE 'EN',     " language
           c_quote(1)      TYPE c  VALUE '"',      " field delimiter
           c_nodata(01)    TYPE c VALUE '/',
           c_true(01)      TYPE c VALUE 'X'.

DATA: retcd LIKE sy-subrc.

INCLUDE z_alv_include.

DATA :   gt_list_bottom_of_list  TYPE slis_t_listheader,
         gt_fieldcatalog_head    TYPE slis_t_fieldcat_alv,
         keycat_in               TYPE slis_keyinfo_alv.

DATA: disvariant LIKE disvariant VALUE ''.

DATA:  BEGIN OF det_line,
          pernr                LIKE zim_in_mast-pernr,
          nachn                LIKE pa0002-nachn,
          vorna                LIKE pa0002-vorna,
          incident             LIKE zim_in_mast-incident,
          ass_to               LIKE zim_in_rem-ass_to,
          to_desc(30)          TYPE c,
          ass_emp              LIKE zim_in_rem-ass_emp,
          note_cat             LIKE zim_in_rem-note_cat,
          cat_desc(30)         TYPE c,
          business_rule        LIKE zim_in_rem-business_rule,
          action               LIKE zim_in_rem-action,
          proc_message(80)     TYPE c,
       END OF det_line.

DATA: tbl_detail LIKE det_line OCCURS 0 WITH HEADER LINE.


DATA: BEGIN OF tbl_fieldnames OCCURS 10,  " table control fieldnames
          title(30),
          table(6),
          field(10),
          type(1),
      END OF tbl_fieldnames.

DATA: tabix           LIKE sy-tabix,
      zaehler         LIKE sy-tabix.

DATA:  file_id(20)   TYPE c VALUE 'loc.csv'.

DATA: w_first(1)      TYPE c,
      w_break         TYPE t,
      w_lines         TYPE i,
      w_end           TYPE i,
      w_count         TYPE i,
      w_action(1)     TYPE c,
      w_missing_col   TYPE i,
      w_error_lines   TYPE i,
      w_error_count   TYPE i,
      w_warning_lines TYPE i,
      w_process_lines TYPE i,
      w_title(39)     TYPE c,
      w_params        LIKE pri_params,
      w_valid         TYPE c,
      w_result(1)        TYPE c,
      w_file             TYPE string,
      w_file_table       TYPE filetable,
      w_rc               TYPE i,
      w_subrc            LIKE sy-subrc,
      w_bapi_message(80) TYPE c,
      w_user_action      TYPE i,
      w_sima             LIKE zim_advisor-sima,
      w_plans_old        LIKE zre_eak_csu-plans,
      w_stext            LIKE hrp1000-stext,
      w_short            LIKE hrp1000-short,
      w_rem_seq_no       LIKE zim_in_rem-seq_no.

RANGES :  r_cat           FOR zim_ltr_def-ltr_category.

DATA: BEGIN OF tbl_emp OCCURS 10,
        pernr          LIKE zim_in_mast-pernr,
        incident       LIKE zim_in_mast-incident,
      END OF tbl_emp.

DATA : tbl_zim_in_cert   LIKE zim_in_cert  OCCURS 0 WITH HEADER LINE.
DATA : tbl_zim_in_cap    LIKE zim_in_cap   OCCURS 0 WITH HEADER LINE.
DATA : tbl_zim_in_mtg   LIKE zim_in_mtg  OCCURS 0 WITH HEADER LINE.
DATA : tbl_zim_in_imep   LIKE zim_in_imep  OCCURS 0 WITH HEADER LINE.
DATA : tbl_zim_in_prov   LIKE zim_in_prov  OCCURS 0 WITH HEADER LINE.
DATA : tbl_zim_in_req    LIKE zim_in_req   OCCURS 0 WITH HEADER LINE.
DATA : tbl_zim_rtwp      LIKE zim_rtwp     OCCURS 0 WITH HEADER LINE.
DATA : tbl_zim_in_ftc    LIKE zim_in_ftc   OCCURS 0 WITH HEADER LINE.
DATA : tbl_zim_in_rem    LIKE zim_in_rem   OCCURS 0 WITH HEADER LINE.
DATA : tbl_zim_in_ftcax  LIKE zim_in_ftcax OCCURS 0 WITH HEADER LINE.
DATA : tbl_zim_in_claim  LIKE zim_in_claim OCCURS 0 WITH HEADER LINE.
DATA : tbl_zim_in_deploy LIKE zim_in_deploy OCCURS 0 WITH HEADER LINE.


DATA: BEGIN OF ihelp_fields OCCURS 100.
        INCLUDE STRUCTURE help_value.
DATA: END OF ihelp_fields.

DATA: BEGIN OF helptab OCCURS 100,
         feld(30),
      END OF helptab.

DATA: sel_val            LIKE help_info-fldvalue,
      dynpname           LIKE d020s-prog,
      dynpnumb           LIKE d020s-dnum.

DATA: BEGIN OF dynpvaluetab OCCURS 1.
        INCLUDE STRUCTURE dynpread.
DATA: END   OF dynpvaluetab.

DATA: w_auth_check      TYPE c.

DATA: wx_variant LIKE disvariant,
      w_exit(1) TYPE c.

DATA: BEGIN OF ptext OCCURS 10,
        line(80)  TYPE c,
      END OF ptext.

DATA: BEGIN OF text-version,
         nummer  TYPE x VALUE '02',
      END OF text-version.

DATA: tx-key   LIKE pskey,
      w_srtfd  LIKE pcl1-srtfd.  " key for pcl1 text

DATA :  lt_longt      TYPE char255 OCCURS 0 WITH HEADER LINE.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE text-000.
SELECT-OPTIONS : s_pernr        FOR zim_in_mast-pernr
                                MATCHCODE OBJECT zzpremn.
PARAMETERS p_date     LIKE sy-datum DEFAULT sy-datum.
SELECTION-SCREEN END OF BLOCK b2.

SELECTION-SCREEN BEGIN OF BLOCK b1
                 WITH FRAME TITLE text-049.       " Selection Screen

PARAMETERS : p_size(3)   TYPE n DEFAULT 850 NO-DISPLAY.

SELECTION-SCREEN BEGIN OF LINE.
SELECTION-SCREEN COMMENT 1(31) text-053.                    "
PARAMETERS:  p_test     RADIOBUTTON  GROUP 010.
SELECTION-SCREEN END OF LINE.
SELECTION-SCREEN BEGIN OF LINE.
SELECTION-SCREEN COMMENT 1(31) text-054.          " Submit session
PARAMETERS:  p_submit   RADIOBUTTON  GROUP 010.
SELECTION-SCREEN END OF LINE.
SELECTION-SCREEN END OF BLOCK b1.


SELECTION-SCREEN BEGIN OF BLOCK blk3 WITH FRAME TITLE text-022.
PARAMETERS: p_var LIKE disvariant-variant.
SELECTION-SCREEN END OF BLOCK blk3.

* Text Fields
DATA : w_thead                LIKE thead,
       w_text_key             LIKE thead-tdname,
       tbl_html               LIKE TABLE OF htmlline,
       rec_html               LIKE htmlline,
       w_comm_exists(1)       TYPE c.

DATA : BEGIN OF tbl_tline OCCURS 10.
        INCLUDE STRUCTURE tline.
DATA  END OF tbl_tline.

DATA: gs_message          TYPE bapiret2,
      gr_week_sr          TYPE RANGE OF anzweeks,
      gr_week_unfit_sima  TYPE RANGE OF anzweeks.

*----------------------------------------------------------------------*
*                           I n c l u d e s
*----------------------------------------------------------------------*
INCLUDE zfrstdhdg.


*----------------------------------------------------------------------*
*                     I n i t i a l i z a t i o n
*----------------------------------------------------------------------*
INITIALIZATION.

  g_repid = sy-repid.
  PERFORM layout_init USING gs_layout.
  PERFORM eventtab_build USING gt_events[].
  gs_variant-report = g_repid.
  g_save           = 'A'.
  CLEAR: disvariant.

*----------------------------------------------------------------------*
*            AT SELECTION-SCREEN                                       *
*----------------------------------------------------------------------*

AT SELECTION-SCREEN.

  PERFORM variant_fill.

  disvariant-variant = p_var.
*----------------------------------------------------------------------*
AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_var.

  PERFORM variant_f4 USING p_var.

*----------------------------------------------------------------------*
AT SELECTION-SCREEN OUTPUT.


*----------------------------------------------------------------------*
*                      t o p - o f - p a g e
*----------------------------------------------------------------------*
TOP-OF-PAGE.

  PERFORM write_top_of_page USING text-t01.


*----------------------------------------------------------------------*
*             START-OF-SELECTION                                *
*----------------------------------------------------------------------*
START-OF-SELECTION.

  PERFORM set_parameters.

  SELECT pernr incident FROM zim_in_mast
         INTO TABLE tbl_emp
         WHERE pernr IN s_pernr.

  PERFORM generate_reminders.

  PERFORM generate_reminders_cm.

  PERFORM generate_reminders_deploy.

END-OF-SELECTION.
*----------------------------------------------------------------------*
*                e n d - o f - s e l e c t i o n
*----------------------------------------------------------------------*

  PERFORM get_additional_fields.

  DESCRIBE TABLE tbl_detail LINES w_lines.
  IF w_lines > 0.
    PERFORM alv_report TABLES tbl_detail.
  ENDIF.

  IF w_lines = 0.
    SKIP 2.
    WRITE /56 'No Reminders Created'.
    SKIP 3.
    WRITE /54 '***** End Of Report *****'.
  ENDIF.

*&---------------------------------------------------------------------*
*&      Form  variant_f4
*&---------------------------------------------------------------------*
FORM variant_f4  USING    p_variant.

  disvariant-report = g_repid.

  CALL FUNCTION 'LVC_VARIANT_F4'
    EXPORTING
      is_variant    = disvariant
      i_save        = g_save
    IMPORTING
      e_exit        = w_exit
      es_variant    = wx_variant
    EXCEPTIONS
      not_found     = 1
      program_error = 2
      OTHERS        = 3.

  IF sy-subrc <> 0.
    MESSAGE i999(zz) WITH text-g01.
  ENDIF.

  IF w_exit IS INITIAL.
    disvariant-variant = wx_variant-variant.
    p_variant = wx_variant-variant.
  ENDIF.

ENDFORM.                    " variant_f4

*&---------------------------------------------------------------------*
*&      Form  variant_fill
*&---------------------------------------------------------------------*
FORM variant_fill .

  CLEAR: disvariant.

  IF p_var IS INITIAL.
    disvariant-variant = 'STANDARD'.
    disvariant-report = g_repid.
  ELSE.

    disvariant-variant = p_var.
    disvariant-report = g_repid.

    CALL FUNCTION 'LVC_VARIANT_EXISTENCE_CHECK'
      EXPORTING
        i_save     = g_save
      CHANGING
        cs_variant = disvariant
      EXCEPTIONS
        OTHERS     = 01.
    IF sy-subrc NE 0.
      MESSAGE i999(zz) WITH text-g02.
    ENDIF.
  ENDIF.

ENDFORM.                    " variant_fill

*&---------------------------------------------------------------------*
*&      Form  SET_PARAMETERS
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM set_parameters .


ENDFORM.                    " SET_PARAMETERS

*&---------------------------------------------------------------------*
*&      Form  GET_ADDITIONAL_FIELDS
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM get_additional_fields .

  DATA : l_ass_to           LIKE zim_in_rem-ass_to,
         l_note_cat         LIKE zim_in_rem-note_cat,
         l_domvalue_l       LIKE dd07l-domvalue_l,
         l_dd07v            LIKE dd07v.


  SORT tbl_detail BY pernr.
  CLEAR pa0002.
  LOOP AT tbl_detail.
    IF tbl_detail-pernr NE pa0002-pernr.
      SELECT SINGLE * FROM pa0002
             WHERE pernr = tbl_detail-pernr
               AND begda LE sy-datum
               AND endda GE sy-datum.
      IF sy-subrc NE 0.
        CLEAR pa0002.
      ENDIF.
    ENDIF.
    tbl_detail-nachn = pa0002-nachn.
    tbl_detail-vorna = pa0002-vorna.

    MODIFY tbl_detail.
  ENDLOOP.

  SORT tbl_detail BY ass_to.
* Retrieve the Assigned To description
  CLEAR : l_domvalue_l, l_dd07v.
  LOOP AT tbl_detail.
    IF tbl_detail-ass_to NE l_domvalue_l.
      l_domvalue_l = tbl_detail-ass_to.
      PERFORM get_domain_text USING l_domvalue_l
                                    'ZIM_IM_ROLE'
                              CHANGING l_dd07v.
    ENDIF.
    tbl_detail-to_desc = l_dd07v-ddtext.
    MODIFY tbl_detail.
  ENDLOOP.

  SORT tbl_detail BY note_cat.
* Retrieve the Category description
  CLEAR : l_domvalue_l, l_dd07v.
  LOOP AT tbl_detail.
    IF tbl_detail-note_cat NE l_domvalue_l.
      l_domvalue_l = tbl_detail-note_cat.
      PERFORM get_domain_text USING l_domvalue_l
                                    'ZIM_NOTE_CATEGORY'
                              CHANGING l_dd07v.
    ENDIF.
    tbl_detail-cat_desc = l_dd07v-ddtext.
    MODIFY tbl_detail.
  ENDLOOP.

  SORT tbl_detail BY pernr incident.

ENDFORM.                    " GET_ADDITIONAL_FIELDS
*&---------------------------------------------------------------------*
*&      Form  LAYOUT_INIT
*&---------------------------------------------------------------------*
FORM layout_init USING rs_layout TYPE slis_layout_alv.

*"Build layout for list display
  rs_layout-detail_popup       = ' '.
  rs_layout-colwidth_optimize  = 'X'.
  rs_layout-zebra              = 'X'.
  rs_layout-cell_merge         = 'X'.
  rs_layout-no_uline_hs        = ' '.
* rs_layout-min_linesize       = 170.
  rs_layout-expand_fieldname   = 'EXPAND'.
* rs_layout-coltab_fieldname   = 'COLOUR'.
  rs_layout-expand_all         = 'X'.
  rs_layout-no_totalline       = ' '.
  rs_layout-totals_text        = 'Grand Total'.
  rs_layout-subtotals_text     = 'Sub Total'.
  rs_layout-no_vline           = ' '.

ENDFORM.                    "layout_init
*---------------------------------------------------------------------*
*       FORM EVENTTAB_BUILD                                           *
*---------------------------------------------------------------------*
FORM eventtab_build USING rt_events TYPE slis_t_event.
*"Registration of events to happen during list display
  DATA: ls_event TYPE slis_alv_event.
*
  CALL FUNCTION 'REUSE_ALV_EVENTS_GET'
    EXPORTING
      i_list_type = 0
    IMPORTING
      et_events   = rt_events.

  READ TABLE rt_events WITH KEY name = slis_ev_top_of_page
                           INTO ls_event.
  IF sy-subrc = 0.
    MOVE g_top_of_page TO ls_event-form.
    APPEND ls_event TO rt_events.
  ENDIF.

ENDFORM.                    "eventtab_build
*&---------------------------------------------------------------------*
*&      Form  alv_report
*&---------------------------------------------------------------------*
FORM alv_report TABLES t_tab.

  DATA: l_structure LIKE dd02l-tabname.

  l_structure = 'DET_LINE'.

*"List Header for Top-Of-Page
  PERFORM comment_build USING gt_list_top_of_page[].
  PERFORM end_list_build USING gt_list_bottom_of_list[].
  PERFORM build_fieldcatalog CHANGING gt_fieldcatalog.
  PERFORM build_sort_fields CHANGING gt_sort.
  gs_variant-variant = p_var.

*"Display List
  CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
    EXPORTING
      i_buffer_active         = ' '
      i_callback_program      = g_repid
      i_callback_user_command = g_user_command
      i_structure_name        = l_structure
      is_layout               = gs_layout
      it_fieldcat             = gt_fieldcatalog
      it_sort                 = gt_sort
      i_save                  = g_save
      is_variant              = gs_variant
      it_events               = gt_events[]
      i_grid_settings         = gs_sett
    IMPORTING
      e_exit_caused_by_caller = g_exit_caused_by_caller
      es_exit_caused_by_user  = gs_exit_caused_by_user
    TABLES
      t_outtab                = t_tab
    EXCEPTIONS
      program_error           = 1
      OTHERS                  = 2.

  IF sy-subrc = 0.
    IF g_exit_caused_by_caller = 'X'.
*"  Forced Exit by calling program
*"  <do_something>.
    ELSE.
*"  User left list via F3, F12 or F15
      IF gs_exit_caused_by_user-back = 'X'.       "F3
*"    <do_something>.
      ELSE.
        IF gs_exit_caused_by_user-exit = 'X'.     "F15
*"      <do_something>.
        ELSE.
          IF gs_exit_caused_by_user-cancel = 'X'. "F12
*"        <do_something>.
          ELSE.
*"        should not occur!
*"        <do_Abnormal_End>.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
  ELSE.
*"Fatal error callin ALV
* MESSAGE AXXX(XY) WITH ...
  ENDIF.
ENDFORM.                    " alv_report
*&---------------------------------------------------------------------*
*&      Form  comment_build
*&---------------------------------------------------------------------*
FORM comment_build USING lt_top_of_page TYPE
                                        slis_t_listheader.
  DATA: ls_line          TYPE slis_listheader,
        l_text1(10)      TYPE c,
        l_text2(10)      TYPE c,
        l_stext          LIKE hrp1000-stext,
        l_lines          TYPE i,
        l_fieldname(30)  TYPE c.

  REFRESH lt_top_of_page.

  CLEAR ls_line.
  ls_line-typ  = 'H'.
  ls_line-info = text-t01.
  APPEND ls_line TO lt_top_of_page.

  ls_line-typ  = 'S'.
  ls_line-key = 'Report Date'.
  WRITE p_date TO ls_line-info.
  APPEND ls_line TO lt_top_of_page.

  LOOP AT s_pernr.
    CLEAR ls_line.
    ls_line-typ  = 'S'.
    ls_line-key = 'Employee '.
    IF s_pernr-high IS INITIAL OR
       s_pernr-high = s_pernr-low.
      ls_line-info = s_pernr-low.
      SHIFT ls_line-info LEFT DELETING LEADING '0'.
    ELSE.
      ls_line-info = s_pernr-high.
      SHIFT ls_line-info LEFT DELETING LEADING '0'.
      CONCATENATE s_pernr-low 'to' ls_line-info INTO ls_line-info
                  SEPARATED BY ' '.
      SHIFT ls_line-info LEFT DELETING LEADING '0'.
    ENDIF.
    APPEND ls_line TO lt_top_of_page.
  ENDLOOP.

  ls_line-typ  = 'S'.
  ls_line-key = 'Processing Mode'.
  IF p_submit = 'X'.
    ls_line-info = 'Update'.
  ELSE.
    ls_line-info = 'Test'.
  ENDIF.
  APPEND ls_line TO lt_top_of_page.

ENDFORM.                    " comment_build

*&---------------------------------------------------------------------*
*&      Form  build_fieldcatalog
*&---------------------------------------------------------------------*
FORM build_fieldcatalog CHANGING gt_fieldcatalog
                        TYPE slis_t_fieldcat_alv.

  DATA: l_repid LIKE sy-repid,
        l_include LIKE sy-repid,
        l_itable TYPE slis_tabname.

  l_repid   = sy-repid.
  l_include = sy-repid.
  l_itable = 'DET_LINE'.

* get fieldcatalog
  CALL FUNCTION 'REUSE_ALV_FIELDCATALOG_MERGE'
    EXPORTING
      i_program_name         = l_repid
      i_internal_tabname     = l_itable
*     i_structure_name       = ' '
*     I_CLIENT_NEVER_DISPLAY = 'X'
      i_inclname             = l_include
*     i_bypassing_buffer     = 'X'
*     i_buffer_active        = gs_test-buffer_active
    CHANGING
      ct_fieldcat            = gt_fieldcatalog
    EXCEPTIONS
      inconsistent_interface = 1
      program_error          = 2
      OTHERS                 = 3.
  IF sy-subrc NE 0.
    EXIT.
  ENDIF.

* change fieldcatalog
  DATA: ls_fieldcatalog TYPE slis_fieldcat_alv.
  LOOP AT gt_fieldcatalog INTO ls_fieldcatalog.
    ls_fieldcatalog-ddictxt = 'M'.
    ls_fieldcatalog-no_zero = 'X'.
    CASE ls_fieldcatalog-fieldname.
      WHEN 'PERNR'.
        ls_fieldcatalog-seltext_m = 'Emp No.'.
        ls_fieldcatalog-hotspot   = 'X'.
        ls_fieldcatalog-key       = ' '.
      WHEN 'VORNA'.
        ls_fieldcatalog-seltext_m = 'First Name'.
        ls_fieldcatalog-lowercase = 'X'.
      WHEN 'NACHN'.
        ls_fieldcatalog-seltext_m = 'Surname'.
        ls_fieldcatalog-lowercase = 'X'.
      WHEN 'INCIDENT'.
        ls_fieldcatalog-seltext_m = 'Incident'.
        ls_fieldcatalog-lowercase = 'X'.
        ls_fieldcatalog-key       = ' '.
      WHEN 'ASS_TO'.
        ls_fieldcatalog-seltext_m = 'Assigned To'.
        ls_fieldcatalog-lowercase = 'X'.
        ls_fieldcatalog-no_out    = 'X'.
      WHEN 'TO_DESC'.
        ls_fieldcatalog-seltext_m = 'Assigned To'.
        ls_fieldcatalog-lowercase = 'X'.
        ls_fieldcatalog-key       = ' '.
      WHEN 'ASS_EMP'.
        ls_fieldcatalog-seltext_m = 'Assigned Emp'.
        ls_fieldcatalog-lowercase = 'X'.
      WHEN 'NOTE_CAT'.
        ls_fieldcatalog-seltext_m = 'Category'.
        ls_fieldcatalog-lowercase = 'X'.
        ls_fieldcatalog-no_out    = 'X'.
      WHEN 'CAT_DESC'.
        ls_fieldcatalog-seltext_m = 'Category'.
        ls_fieldcatalog-lowercase = 'X'.
        ls_fieldcatalog-key       = ' '.
      WHEN 'BUSINESS_RULE'.
        ls_fieldcatalog-seltext_m = 'Business Rule'.
        ls_fieldcatalog-lowercase = 'X'.
        ls_fieldcatalog-no_zero   = ' '.
        ls_fieldcatalog-just      = 'C'.
      WHEN 'ACTION'.
        ls_fieldcatalog-seltext_m = 'Action/To Do'.
        ls_fieldcatalog-lowercase = 'X'.
      WHEN 'PROC_MESSAGE'.
        ls_fieldcatalog-seltext_m = 'Message'.
        ls_fieldcatalog-lowercase = 'X'.
    ENDCASE.
    MODIFY gt_fieldcatalog FROM ls_fieldcatalog.
  ENDLOOP.

ENDFORM.                    "build_fieldcatalog

*---------------------------------------------------------------------*
*       FORM USER_COMMAND                                             *
*---------------------------------------------------------------------*
FORM user_command USING r_ucomm LIKE sy-ucomm
                  rs_selfield TYPE slis_selfield.
  DATA: l_p1001 LIKE p1001,
        l_date  TYPE d.

  CLEAR : det_line.
  READ TABLE tbl_detail INTO det_line INDEX rs_selfield-tabindex.

  CASE r_ucomm.
    WHEN '&IC1'.
      CLEAR g_user_command.
      CASE rs_selfield-fieldname.
        WHEN 'PERNR'.
          IF det_line-pernr IS NOT INITIAL.
            SET PARAMETER ID 'PER' FIELD det_line-pernr.
            CALL TRANSACTION 'PA20'.
          ENDIF.
        WHEN 'INCIDENT'.
          IF det_line-incident IS NOT INITIAL.
            SET PARAMETER ID 'PER' FIELD det_line-pernr.
            SET PARAMETER ID '8BR' FIELD det_line-incident.
            CALL TRANSACTION 'ZIM_DISP_IM' AND SKIP FIRST SCREEN.
          ENDIF.
      ENDCASE.
      g_user_command = 'USER_COMMAND'.
  ENDCASE.
  CLEAR r_ucomm.

ENDFORM.                    "user_command

*&---------------------------------------------------------------------*
*&      Form  build_sort_fields
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
FORM build_sort_fields CHANGING sorttab TYPE slis_t_sortinfo_alv.
  DATA: l_sort TYPE slis_t_sortinfo_alv WITH HEADER LINE,
        l_spos TYPE alvdynp-sortpos.

  CLEAR l_spos.

  REFRESH sorttab.

ENDFORM.                    " build_sort_fields

*---------------------------------------------------------------------*
*       FORM TOP_OF_PAGE                                              *
*---------------------------------------------------------------------*
FORM top_of_page.

  CALL FUNCTION 'REUSE_ALV_COMMENTARY_WRITE'
    EXPORTING
*     I_LOGO             = 'ENJOYSAP_LOGO'
      it_list_commentary = gt_list_top_of_page.

ENDFORM.                    "top_of_page


*---------------------------------------------------------------------*
*       FORM END_OF_LIST                                              *
*---------------------------------------------------------------------*
FORM end_of_list.

  DATA: ls_line TYPE slis_listheader.

  CALL FUNCTION 'REUSE_ALV_COMMENTARY_WRITE'
    EXPORTING
*     I_LOGO             = 'ENJOYSAP_LOGO'
      i_end_of_list_grid = 'X'
      it_list_commentary = gt_list_bottom_of_list.

ENDFORM.                    "end_of_list
*&---------------------------------------------------------------------*
*&      Form  END_LIST_BUILD
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*      -->P_GT_LIST_BOTTOM_OF_LIST[]  text
*----------------------------------------------------------------------*
FORM end_list_build USING lt_bottom_of_list TYPE
                                        slis_t_listheader.
  DATA: ls_line TYPE slis_listheader,
        l_name(50)   TYPE c,
        l_month(10)  TYPE c,
        l_lines      TYPE i.

  REFRESH lt_bottom_of_list.

ENDFORM.                    " END_LIST_BUILD
*&---------------------------------------------------------------------*
*&      Form  GET_OBJTXT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*      -->P_R_ORG_LOW  text
*      -->P_3091   text
*      -->P_L_STEXT  text
*----------------------------------------------------------------------*
FORM get_objtxt  USING    p_objid
                          p_otype
                 CHANGING p_name.

  DATA :  l_objid      LIKE hrealo-realo,
          l_name       LIKE p1000-stext.

  l_objid = p_objid.

  CALL FUNCTION 'RH_READ_OBJECT'
    EXPORTING
      plvar           = '01'
      otype           = p_otype
      realo           = l_objid
      check_stru_auth = ' '
    IMPORTING
      stext           = l_name
    EXCEPTIONS
      not_found       = 1
      OTHERS          = 2.
  IF sy-subrc <> 0.
    CLEAR l_name.
  ENDIF.

  p_name = l_name.

ENDFORM.                    " GET_OBJTXT
*&---------------------------------------------------------------------*
*&      Form  GET_DOMAIN_TEXT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*      -->P_L_DOMVALUE_L  text
*----------------------------------------------------------------------*
FORM get_domain_text  USING    p_value
                               p_domain
                      CHANGING p_dd07v.

  DATA : l_rc               LIKE sy-subrc.

  CALL FUNCTION 'DD_DOMVALUE_TEXT_GET'
    EXPORTING
      domname  = p_domain
      value    = p_value
      langu    = 'E'
    IMPORTING
      dd07v_wa = p_dd07v
      rc       = l_rc
    EXCEPTIONS
      OTHERS   = 1.
  IF  l_rc NE 0.
    CLEAR p_dd07v.
  ENDIF.

ENDFORM.                    " GET_DOMAIN_TEXT
*&---------------------------------------------------------------------*
*&      Form  F4_IMA
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*      -->P_S_IMA_LOW  text
*----------------------------------------------------------------------*
FORM f4_ima  USING    p_ima.

  DATA: l_role             LIKE zim_advisor-role,
        l_domvalue_l       LIKE dd07l-domvalue_l,
        l_dd07v            LIKE dd07v.

  DATA : BEGIN OF tbl_advisor          OCCURS 0,
           ima                LIKE zim_advisor-ima,
           ename              LIKE pa0001-ename,
           role               LIKE zim_advisor-role,
           role_desc(40)      TYPE c,
         END OF tbl_advisor.

  REFRESH: ihelp_fields, helptab.
  MOVE 'ZIM_IN_MAST' TO ihelp_fields-tabname.
  MOVE 'IMA' TO ihelp_fields-fieldname.
  MOVE 'X' TO ihelp_fields-selectflag.
  APPEND ihelp_fields.
  MOVE 'PA0001' TO ihelp_fields-tabname.
  MOVE 'ENAME' TO ihelp_fields-fieldname.
  MOVE ' ' TO ihelp_fields-selectflag.
  APPEND ihelp_fields.
  MOVE 'ZIM_ADVISOR' TO ihelp_fields-tabname.
  MOVE 'ROLE' TO ihelp_fields-fieldname.
  MOVE ' ' TO ihelp_fields-selectflag.
  APPEND ihelp_fields.

* Build the Help Table
  REFRESH : helptab, tbl_advisor.

  SELECT f~ima f~role j~ename
         INTO CORRESPONDING FIELDS OF TABLE tbl_advisor
         FROM zim_advisor AS f INNER JOIN pa0001 AS j
           ON f~ima = j~pernr
         WHERE ( j~begda LE sy-datum AND
                 j~endda GE sy-datum ).

  SORT tbl_advisor BY role.
  CLEAR : l_role, l_dd07v.
  LOOP AT tbl_advisor.
    IF tbl_advisor-role NE l_role.
      l_domvalue_l = tbl_advisor-role.
      PERFORM get_domain_text  USING l_domvalue_l
                                     'ZIM_IM_ROLE'
                            CHANGING l_dd07v.
    ENDIF.
    tbl_advisor-role_desc = l_dd07v-ddtext.
    MODIFY tbl_advisor.
  ENDLOOP.

  LOOP AT tbl_advisor.
    helptab = tbl_advisor-ima.
    APPEND helptab.
    helptab = tbl_advisor-ename.
    APPEND helptab.
    helptab = tbl_advisor-role_desc.
    APPEND helptab.
  ENDLOOP.

** Panaya 2013-01-05 - Replaced call to obsolete function module
** Panaya 2013-01-05 - 'HELP_VALUES_GET_WITH_TABLE'(task: 718)
  "Panaya 2013-01-05
  DATA: pny_lv_retfield1 TYPE dfies-fieldname,        "Panaya 2013-01-05
        pny_field_wa1 TYPE help_value,                "Panaya 2013-01-05
        pny_li_return1 TYPE ddshretval OCCURS 0 WITH HEADER LINE,
        pny_li_help_fields1 TYPE dfies OCCURS 0 WITH HEADER LINE.
  DATA: pny_lv_pvalkey1 TYPE ddshpvkey.               "Panaya 2013-01-05
  LOOP AT ihelp_fields INTO pny_field_wa1.            "Panaya 2013-01-05
    pny_li_help_fields1-tabname = pny_field_wa1-tabname.
    pny_li_help_fields1-fieldname = pny_field_wa1-fieldname.
    APPEND pny_li_help_fields1.                     "Panaya 2013-01-05
    "Panaya 2013-01-05
    IF pny_field_wa1-selectflag = 'X'.              "Panaya 2013-01-05
      pny_lv_retfield1 = pny_field_wa1-fieldname. "Panaya 2013-01-05
    ENDIF.                                          "Panaya 2013-01-05
  ENDLOOP.                                            "Panaya 2013-01-05
  CONCATENATE 'ZIM_ADVISOR' 'IMA' INTO pny_lv_pvalkey1.
  "Panaya 2013-01-05
  CALL FUNCTION 'F4IF_INT_TABLE_VALUE_REQUEST'        "Panaya 2013-01-05
      EXPORTING                                       "Panaya 2013-01-05
          retfield = pny_lv_retfield1                 "Panaya 2013-01-05
          pvalkey = pny_lv_pvalkey1                   "Panaya 2013-01-05
      TABLES                                          "Panaya 2013-01-05
          value_tab = helptab                         "Panaya 2013-01-05
          field_tab = pny_li_help_fields1             "Panaya 2013-01-05
          return_tab = pny_li_return1                 "Panaya 2013-01-05
      EXCEPTIONS                                      "Panaya 2013-01-05
          OTHERS = 99.                                "Panaya 2013-01-05
  "Panaya 2013-01-05
  IF pny_li_return1[] IS NOT INITIAL.                 "Panaya 2013-01-05
    READ TABLE pny_li_return1 INDEX 1.              "Panaya 2013-01-05
    sel_val = pny_li_return1-fieldval.              "Panaya 2013-01-05
  ENDIF.                                              "Panaya 2013-01-05

  IF ( sy-subrc EQ 0 ) AND ( NOT ( sel_val IS INITIAL ) ).
    p_ima = sel_val.
  ENDIF.

ENDFORM.                                                    " F4_IMA
*&---------------------------------------------------------------------*
*&      Form  GENERATE_REMINDERS
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM generate_reminders .

  DATA : l_subrc         LIKE sy-subrc,
         l_date          LIKE sy-datum,
         l_days          TYPE i,
         l_count         TYPE i,
         l_doc_unique    LIKE zim_in_rem-doc_unique,
         lv_week_no      TYPE i.

  LOOP AT tbl_emp.

    REFRESH : tbl_zim_in_cert, tbl_zim_in_mtg, tbl_zim_in_imep,
              tbl_zim_in_prov, tbl_zim_in_req,  tbl_zim_rtwp,
              tbl_zim_in_ftc,  tbl_zim_in_ftcax, tbl_zim_in_cap.
    CLEAR   : tbl_zim_in_cert, tbl_zim_in_mtg, tbl_zim_in_imep,
              tbl_zim_in_prov, tbl_zim_in_req,  tbl_zim_rtwp,
              tbl_zim_in_ftc,  tbl_zim_in_ftcax, tbl_zim_in_cap.

    SELECT SINGLE * FROM zim_in_mast
           WHERE pernr    = tbl_emp-pernr
             AND incident = tbl_emp-incident.
    IF sy-subrc NE 0.
      CONTINUE.
    ENDIF.

    IF zim_in_mast-inc_status = 'C'.
* Delete all existing reminders for closed cases
      SELECT * FROM zim_in_rem
             INTO TABLE tbl_zim_in_rem
             WHERE pernr = tbl_emp-pernr
               AND incident = tbl_emp-incident.
      PERFORM delete_reminder.
      CONTINUE.
    ENDIF.

* No reminders for One-off incidents
    IF zim_in_mast-inc_type = 'O'.
      CONTINUE.
    ENDIF.

* No new reminders for suspended cases
* A  - Category 99      - General Reminders
*      Business Rule 10 - A suspended case is due to be reviewed

    IF zim_in_mast-inc_status = 'S'.
      l_days = p_date - zim_in_mast-last_act_date.
      IF l_days GT 90.
        PERFORM create_reminder USING 'I'
                                    zim_in_mast-ima
                                    '99'
                                    '10'
                                    ' '.
      ENDIF.
      CONTINUE.
    ENDIF.

    SELECT SINGLE * FROM pa0001
           WHERE pernr = zim_in_mast-pernr
             AND begda LE sy-datum
             AND endda GE sy-datum.
    IF sy-subrc NE 0.
      CLEAR pa0001.
    ENDIF.

* 01 - Category 01      - Initial Assessment
*      Business Rule 01 - 3 Point contact has not been completed
    CALL FUNCTION 'BKK_ADD_WORKINGDAY'
      EXPORTING
        i_date   = zim_in_mast-date_created
        i_days   = 1
      IMPORTING
        e_date   = l_date
        e_return = l_subrc.

    IF ( zim_in_mast-inc_status = 'O'   OR
         zim_in_mast-inc_status = 'I' ) AND
         zim_in_mast-ima IS NOT INITIAL AND
         l_date LE p_date               AND
         zim_in_mast-three_point IS INITIAL.
      PERFORM create_reminder USING 'I'
                                  zim_in_mast-ima
                                  '01'
                                  '01'
                                  ' '.
    ENDIF.

* 02 - Category 99      - General Reminders
*      Business Rule 01 - No activity performed for > 21 days
* begin DEVK9HR9TY     CR2414
    "    IF zim_in_mast-inc_status = 'O'.
    "      l_date = zim_in_mast-last_act_date + 21.
    "      IF l_date LE p_date.
    "        PERFORM create_reminder USING 'I'
    "                                    zim_in_mast-ima
    "                                    '99'
    "                                    '01'
    "                                    ' '.
    "      ENDIF.
    "    ENDIF.
* end DEVK9HR9TY     CR2414
* 03 - Category 99      - General Reminders
*      Business Rule 02 - No contact with IW for > 21 days

    IF zim_in_mast-inc_status = 'O'.
      IF zim_in_mast-emp_contact IS NOT INITIAL.
        l_date = zim_in_mast-emp_contact + 21.
      ELSE.
        l_date = zim_in_mast-date_created + 21.
      ENDIF.
      IF l_date LE p_date.
        PERFORM create_reminder USING 'I'
                                    zim_in_mast-ima
                                    '99'
                                    '02'
                                    ' '.
      ENDIF.
    ENDIF.

* 04 - Category 18      - Medical Certificates/Certificates of Capacity
*      Business Rule 01 - The certificate of capacity has expired
*                         3 days after the expiry date
* Begin DEVK9HR9TY     CR2414
    IF zim_in_mast-inc_status = 'O'.
      SELECT * FROM zim_in_cert
             INTO TABLE tbl_zim_in_cert
             WHERE pernr = tbl_emp-pernr
               AND incident = tbl_emp-incident
               AND inactive = ' '.
      SELECT * FROM zim_in_cap
             APPENDING CORRESPONDING FIELDS OF TABLE tbl_zim_in_cert
             WHERE pernr = tbl_emp-pernr
               AND incident = tbl_emp-incident
               AND inactive = ' '.
      SORT tbl_zim_in_cert BY date_from DESCENDING
                              date_to   DESCENDING.
      LOOP AT tbl_zim_in_cert.
        EXIT.
      ENDLOOP.
      " Begin CR2414 - DEVK9HR9XW
      "      IF tbl_zim_in_cert-date_to IS NOT INITIAL.
      "        CALL FUNCTION 'BKK_ADD_WORKINGDAY'
      "          EXPORTING
      "            i_date   = tbl_zim_in_cert-date_to
      "            i_days   = 3
      "          IMPORTING
      "            e_date   = l_date
      "            e_return = l_subrc.

      "        IF l_date GT p_date.
      "          PERFORM create_reminder USING 'I'
      "                                      zim_in_mast-ima
      "                                      '18'
      "                                      '01'
      "                                      ' '.
      "        ENDIF.
      "      ENDIF.
    ENDIF.
    "* End CR2414 - DEVK9HR9TY CR2414 - DEVK9HR9XW
* 05 - Category 18      - Certificate of Capacity
*      Business Rule 02 - A Cert must be received within 14 days of
*                         the initial assessment

    IF zim_in_mast-inc_status = 'O' AND
       zim_in_mast-init_ass_date IS NOT INITIAL.
      DESCRIBE TABLE tbl_zim_in_cert LINES w_lines.
      l_days = p_date - zim_in_mast-init_ass_date.
      IF l_days GE 14 AND
         w_lines = 0.
        PERFORM create_reminder USING 'I'
                                    zim_in_mast-ima
                                    '18'
                                    '02'
                                    ' '.
      ENDIF.
    ENDIF.

*    - Category 18      - Certificate of Capacity
*      Business Rule 11 - Restricted Duties for 6 weeks
*                       – IMA to arrange a case conference
* begin DEVK9HR9TY     CR2414
  "    IF ( zim_in_mast-inc_status = 'O' OR            "Incident is Open
    "         zim_in_mast-inc_status = 'T'   ) AND
    "         "Incident is Re-opened
    "       ( tbl_zim_in_cert-status = 'SD'  OR
    "       "Med cert - Suitable duties
    "         tbl_zim_in_cert-status = 'C'   ).
    "         "Cert of Cap - Capacity
    "* Check to determine if they have a second MC which is Unfit
    "      SELECT SINGLE * FROM zim_in_cert
    "             WHERE pernr     =  tbl_emp-pernr
    "               AND date_from LE p_date
    "               AND date_to   GE p_date
    "               AND status    =  'U'.
    "      IF sy-subrc NE 0.
    "* Check to determine if they have a second CC which is No Capacity
    "        SELECT SINGLE * FROM zim_in_cap
    "               WHERE pernr     =  tbl_emp-pernr
    "                 AND date_from LE p_date
    "                 AND date_to   GE p_date
    "                 AND status    =  'N'.
    "        IF sy-subrc NE 0.

    "          l_days = p_date - zim_in_mast-date_created.
    "          CLEAR l_doc_unique.
    "          l_doc_unique = 'O'.
    "*     If case is re-opened
    "          IF zim_in_mast-inc_status = 'T'.
    "            l_days = p_date - zim_in_mast-reopened_date.
    "            l_doc_unique = 'T'.
    "          ENDIF.

    "          IF l_days GE 42.
    "* Only create a reminder if one has not already been created
    "            SELECT SINGLE * FROM zim_in_rem
    "                   WHERE pernr         = zim_in_mast-pernr
    "                     AND incident      = zim_in_mast-incident
    "                     AND ass_to        = 'I'
    "                     AND ass_emp       = zim_in_mast-ima
    "                     AND doc_unique    = l_doc_unique
    "                     AND note_cat      = '99'
    "                     AND business_rule = '22'
    "                     AND message_type  = 'B'.
    "            IF sy-subrc NE 0.
    "              PERFORM create_reminder USING 'I'
    "                                          zim_in_mast-ima
    "                                          '18'
    "                                          '11'
    "                                          l_doc_unique.
    "            ENDIF.
    "          ENDIF.
    "        ENDIF.
    "      ENDIF.
    "    ENDIF.
* End

* 06 - Category 01      - Initial Assessment
*      Business Rule 02 - Info Consent Form received within 14 days of
*                         the initial assessment

    IF zim_in_mast-inc_status = 'O' AND
       zim_in_mast-init_ass_date IS NOT INITIAL AND
       zim_in_mast-info_consent IS INITIAL. " CR2414 - DEVK9HR9XW
      l_days = p_date - zim_in_mast-init_ass_date.
      IF l_days GE 14.
        PERFORM create_reminder USING 'I'
                                    zim_in_mast-ima
                                    '01'
                                    '02'
                                    ' '.
      ENDIF.
    ENDIF.

* 07 - Category 99      - General Reminders
*      Business Rule 03 - NTD/NTS must be contacted every month post 88
    IF zim_in_mast-inc_status = 'O' AND
       zim_in_mast-hod IS INITIAL   AND
       zim_in_mast-inc_type NE 'N'.         "exclude NWR incidents
      IF zim_in_mast-ntd_contact IS NOT INITIAL.
        l_date = zim_in_mast-ntd_contact + 31.
        l_days = p_date - zim_in_mast-ntd_contact.
      ELSE.
        l_date = zim_in_mast-date_created + 31.
        l_days = p_date - zim_in_mast-date_created.
      ENDIF.
      IF l_days GE 30.
        PERFORM create_reminder USING 'I'
                                    zim_in_mast-ima
                                    '99'
                                    '03'
                                    ' '.
      ENDIF.
    ENDIF.

* 07A - Category 99      - General Reminders
*     Business Rule 09 - NTD/NTS must be contacted every 2 months pre 88

    IF zim_in_mast-inc_status = 'O' AND
       zim_in_mast-hod        = 'X'.
      IF zim_in_mast-ntd_contact IS NOT INITIAL.
        l_date = zim_in_mast-ntd_contact + 62.
        l_days = p_date - zim_in_mast-ntd_contact.
      ELSE.
        l_date = zim_in_mast-date_created + 62.
        l_days = p_date - zim_in_mast-date_created.
      ENDIF.
      IF l_days GE 62.
        PERFORM create_reminder USING 'I'
                                    zim_in_mast-ima
                                    '99'
                                    '09'
                                    ' '.
      ENDIF.
    ENDIF.

    SELECT * FROM zim_in_mtg
           INTO TABLE tbl_zim_in_mtg
           WHERE pernr = tbl_emp-pernr
             AND incident = tbl_emp-incident.
    SORT tbl_zim_in_mtg BY meet_type
                           meet_date DESCENDING.

** 08 - Category 99      - General Reminders
**      Business Rule 04 - A Case Conference must be held every 3 months
*
*    IF zim_in_mast-inc_status = 'O' AND
*       zim_in_mast-hod IS INITIAL.
*      CLEAR tbl_zim_in_mtg.
*      LOOP AT tbl_zim_in_mtg
*           WHERE meet_type = 'C'.
*        EXIT.
*      ENDLOOP.
*
*      IF tbl_zim_in_mtg-meet_date IS NOT INITIAL.
*        l_days = p_date - tbl_zim_in_mtg-meet_date.
*        IF l_days GE 92.
*          PERFORM create_reminder USING 'I'
*                                      zim_in_mast-ima
*                                      '99'
*                                      '04'
*                                      ' '.
*        ENDIF.
*      ELSE.
*        l_days = p_date - zim_in_mast-date_created.
*        IF l_days GE 92.
*          PERFORM create_reminder USING 'I'
*                                      zim_in_mast-ima
*                                      '99'
*                                      '04'
*                                      ' '.
*        ENDIF.
*      ENDIF.
*    ENDIF.
*
* 09 - Category 99      - General Reminders
*      Business Rule 05 - An IMP must be held every 60 days

    IF zim_in_mast-inc_status = 'O'.
      CLEAR tbl_zim_in_mtg.
      LOOP AT tbl_zim_in_mtg
           WHERE meet_type = 'I'.
        EXIT.
      ENDLOOP.

      IF tbl_zim_in_mtg-meet_date IS NOT INITIAL.
        l_days = p_date - tbl_zim_in_mtg-meet_date.
        IF l_days GE 59.
          PERFORM create_reminder USING 'I'
                                      zim_in_mast-ima
                                      '99'
                                      '05'
                                      ' '.
        ENDIF.
      ELSE.
        l_days = p_date - zim_in_mast-date_created.
        IF l_days GE 59.
          PERFORM create_reminder USING 'I'
                                      zim_in_mast-ima
                                      '99'
                                      '05'
                                      ' '.
        ENDIF.
      ENDIF.
    ENDIF.

*   Agenda sent for case conference meeting 5 days before meeting date
    IF zim_in_mast-inc_status = 'O'.
      CLEAR tbl_zim_in_mtg.
      LOOP AT tbl_zim_in_mtg
           WHERE meet_type = 'C'.
        EXIT.
      ENDLOOP.

      IF tbl_zim_in_mtg-meet_date IS NOT INITIAL AND
         tbl_zim_in_mtg-meet_date GT p_date.
        l_days = tbl_zim_in_mtg-meet_date - p_date.
        IF l_days LE 5 AND tbl_zim_in_mtg-agendax IS INITIAL.
          PERFORM create_reminder USING 'I'
                                      zim_in_mast-ima
                                      '99'
                                      '12'
                                      ' '.
        ENDIF.
      ENDIF.
    ENDIF.
*    Minutes sent for case conference meeting 2 days after meeting date
* Begin DEVK9HR9TY     CR2414
    "    IF zim_in_mast-inc_status = 'O'.
    "      CLEAR tbl_zim_in_mtg.
    "      LOOP AT tbl_zim_in_mtg
    "           WHERE meet_type = 'C'.
    "        EXIT.
    "      ENDLOOP.

    "      IF tbl_zim_in_mtg-meet_date IS NOT INITIAL.
    "        l_days = p_date - tbl_zim_in_mtg-meet_date.
    "        IF l_days GT 2 AND tbl_zim_in_mtg-minutesx IS INITIAL.
    "          PERFORM create_reminder USING 'I'
    "                                      zim_in_mast-ima
    "                                      '99'
    "                                      '13'
    "                                      ' '.
    "        ENDIF.
    "      ENDIF.
    "    ENDIF.
* End DEVK9HR9TY     CR2414
** 10 - Category 50      - IMEP
**      Business Rule 04 - 4 mth review for IMEP referral if not PID
*
*    IF zim_in_mast-inc_status = 'O' AND
*       zim_in_mast-hod IS INITIAL.
*      IF tbl_zim_in_cert-status NE 'P'.
*        IF pa0001-persk LE 'XF'.
*          l_days = p_date - zim_in_mast-date_created.
*          IF l_days GE 123.
*            SELECT SINGLE * FROM zim_in_imep
*                   WHERE pernr    = tbl_emp-pernr
*                     AND incident = tbl_emp-incident.
*            IF sy-subrc NE 0.
*              PERFORM create_reminder USING 'I'
*                                          zim_in_mast-ima
*                                          '50'
*                                          '04'
*                                          ' '.
*            ENDIF.
*          ENDIF.
*        ENDIF.
*      ENDIF.
*    ENDIF.
*
* 11 - Category 99      - General Reminders
*      Business Rule 06 - A 6 Weekly SIMA Review is required

    CLEAR w_sima.
    SELECT SINGLE * FROM zim_advisor
           WHERE ima = zim_in_mast-ima.
    IF sy-subrc = 0.
      w_sima = zim_advisor-sima.
    ENDIF.
    IF w_sima IS INITIAL.
      w_sima = zim_in_mast-ima.
    ENDIF.

    IF zim_in_mast-inc_status = 'O' AND
       w_sima NE zim_in_mast-ima.
      CLEAR tbl_zim_in_mtg.
      LOOP AT tbl_zim_in_mtg
           WHERE meet_type = 'S'.
        EXIT.
      ENDLOOP.

      IF tbl_zim_in_mtg-meet_date IS INITIAL.
        l_days = p_date - zim_in_mast-date_created.
        IF l_days GE 42.
          PERFORM create_reminder USING 'S'
                                      w_sima
                                      '99'
                                      '06'
                                      ' '.
        ENDIF.
      ENDIF.
    ENDIF.

* 12 - Category 99      - General Reminders
*      Business Rule 07 - A 12 Weekly SIMA Review is required

    IF zim_in_mast-inc_status = 'O' AND
       w_sima NE zim_in_mast-ima.
      CLEAR : tbl_zim_in_mtg, l_count.
      LOOP AT tbl_zim_in_mtg
           WHERE meet_type = 'S'.
        ADD 1 TO l_count.
      ENDLOOP.

      IF l_count LT 2.
        l_days = p_date - zim_in_mast-date_created.
        IF l_days GE 84.
          PERFORM create_reminder USING 'S'
                                      w_sima
                                      '99'
                                      '07'
                                      ' '.
        ENDIF.
      ENDIF.
    ENDIF.

* 13 - Category 99      - General Reminders
*      Business Rule 08 - A 6 Monthly SIMA Review is required

    IF zim_in_mast-inc_status = 'O' AND
       w_sima NE zim_in_mast-ima.
      CLEAR : tbl_zim_in_mtg, l_count.
      LOOP AT tbl_zim_in_mtg
           WHERE meet_type = 'S'.
        ADD 1 TO l_count.
      ENDLOOP.

      IF l_count LT 3.
        l_days = p_date - zim_in_mast-date_created.
        IF l_days GE 183.
          PERFORM create_reminder USING 'S'
                                      w_sima
                                      '99'
                                      '08'
                                      ' '.
        ENDIF.
      ELSE.
        CLEAR tbl_zim_in_mtg.
        LOOP AT tbl_zim_in_mtg
             WHERE meet_type = 'S'.
          EXIT.
        ENDLOOP.

        l_days = p_date - tbl_zim_in_mtg-meet_date.
        IF l_days GE 183.
          PERFORM create_reminder USING 'S'
                                      w_sima
                                      '99'
                                      '08'
                                      ' '.
        ENDIF.
      ENDIF.
    ENDIF.

* 14 - Category 17      - RTWP
*      Business Rule 01 - PRTWP created within 1 month of incident

    IF zim_in_mast-inc_status = 'O'.
      IF tbl_zim_in_cert-status = 'U' OR
         tbl_zim_in_cert-status = 'N'.
        l_days = p_date - zim_in_mast-date_created.
        IF l_days GE 30.
          SELECT SINGLE * FROM zim_rtwp
                 WHERE pernr    = tbl_emp-pernr
                   AND incident = tbl_emp-incident.
          IF sy-subrc NE 0.
* The employee may have multiple cases open and the RTWP could be linked
* to a different incident
            SELECT * FROM zim_rtwp
                   INTO TABLE tbl_zim_rtwp
                   WHERE pernr = tbl_emp-pernr.
            SORT tbl_zim_rtwp BY goal_date DESCENDING.
            CLEAR tbl_zim_rtwp.
            LOOP AT tbl_zim_rtwp.
              EXIT.
            ENDLOOP.
            l_days = p_date - tbl_zim_rtwp-goal_date.
            IF l_days GE 30.
              PERFORM create_reminder USING 'I'
                                          zim_in_mast-ima
                                          '17'
                                          '01'
                                          ' '.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.

*      Category 99      - General Reminder
*      Business Rule 22 - Unfit for 4 weeks – IMA to arrange a
*                         case conference
    IF ( zim_in_mast-inc_status = 'O' OR
       zim_in_mast-inc_status = 'T' ) AND         "Reopened
      tbl_zim_in_cert-status = 'U'.
      l_days = p_date - zim_in_mast-date_created.
      CLEAR l_doc_unique.
      l_doc_unique = 'O'.
*       If case is re-opened
      IF zim_in_mast-inc_status = 'T'.
        l_days = p_date - zim_in_mast-reopened_date.
        l_doc_unique = 'T'.
      ENDIF.

      IF l_days GE 28.
* Only create a reminder if one has not already been created
        SELECT SINGLE * FROM zim_in_rem
               WHERE pernr         = zim_in_mast-pernr
                 AND incident      = zim_in_mast-incident
                 AND ass_to        = 'I'
                 AND ass_emp       = zim_in_mast-ima
                 AND doc_unique    = l_doc_unique
                 AND note_cat      = '99'
                 AND business_rule = '22'
                 AND message_type  = 'B'.
        IF sy-subrc NE 0.
          PERFORM create_reminder USING 'I'
                                      zim_in_mast-ima
                                      '99'
                                      '22'
                                      l_doc_unique.
        ENDIF.
      ENDIF.
    ENDIF.
*      Category 99
*      Business Rule 23 - Unfit for X weeks – SIMA review required
    " Begin CR2414  DEVK9HR9TY
    "    IF zim_in_mast-inc_status = 'O' AND
    "       tbl_zim_in_cert-status = 'U'.
    "      PERFORM get_weeks_unfit_sima.
    "      PERFORM get_week_number USING zim_in_mast-date_created
    "                                    sy-datum
    "                           CHANGING lv_week_no.
    "      IF lv_week_no IN  gr_week_unfit_sima.
    "        CLEAR: l_date, gs_message.
    "        gs_message-message_v1 = lv_week_no.
    "        CONDENSE gs_message-message_v1.
    "        CLEAR l_date.
    "        PERFORM get_week_start_date  USING zim_in_mast-date_created
    "                                           lv_week_no
    "                                  CHANGING l_date.
    "        CLEAR l_doc_unique.
    "        CONCATENATE zim_in_mast-date_created
    "                    gs_message-message_v1
    "              INTO  l_doc_unique.      "date + week
    "*     check if reminder already exists
    "        SELECT SINGLE * FROM zim_in_rem
    "               WHERE pernr         = zim_in_mast-pernr
    "                 AND incident      = zim_in_mast-incident
    "                 AND ass_to        = 'I'
    "                 AND ass_emp       = zim_advisor-sima
    "                 AND doc_unique    = l_doc_unique
    "                 AND created_date  = l_date
    "                 AND note_cat      = '99'
    "                 AND business_rule = '23'
    "                 AND message_type  = 'B'.
    "        IF sy-subrc NE 0.
    "          PERFORM create_reminder USING 'I'
    "                                      zim_advisor-sima
    "                                      '99'
    "                                      '23'
    "                                      l_doc_unique.
    "        ENDIF.
    "      ENDIF.
    "    ENDIF.
    " End CR2414  DEVK9HR9TY
** 15 - Category 10      - External Provider Service
**      Business Rule 01 - Unfit for 8 weeks external provider service
**                         required
*
*    IF zim_in_mast-inc_status = 'O' AND
*       zim_in_mast-hod IS INITIAL.
*      IF tbl_zim_in_cert-status = 'U'.
*        l_days = p_date - zim_in_mast-date_created.
*        IF l_days GE 62.
*          SELECT SINGLE * FROM zim_in_prov
*                 WHERE pernr    = tbl_emp-pernr
*                   AND incident = tbl_emp-incident.
*          IF sy-subrc NE 0.
** Only create a reminder if one has not already been created
*            SELECT SINGLE * FROM zim_in_rem
*                   WHERE pernr         = zim_in_mast-pernr
*                     AND incident      = zim_in_mast-incident
*                     AND ass_to        = 'I'
*                     AND ass_emp       = zim_in_mast-ima
*                     AND doc_unique    = ' '
*                     AND note_cat      = '10'
*                     AND business_rule = '01'
*                     AND message_type  = 'B'.
*            IF sy-subrc NE 0.
*              PERFORM create_reminder USING 'I'
*                                          zim_in_mast-ima
*                                          '10'
*                                          '01'
*                                          ' '.
*            ENDIF.
*          ENDIF.
*        ENDIF.
*      ENDIF.
*    ENDIF.

* 16 - Category 17      - RTWP
*      Business Rule 02 - If SD, an RTWP must be in place the day after
*                         the medical certificate

    IF zim_in_mast-inc_status = 'O'.
      IF tbl_zim_in_cert-status = 'SD' OR
         tbl_zim_in_cert-status = 'C'.
        SELECT SINGLE * FROM zim_rtwp
               WHERE pernr     =  tbl_emp-pernr
                 AND date_to   GE tbl_zim_in_cert-date_to.
        IF sy-subrc NE 0.
          SELECT SINGLE * FROM zim_rtwp_grade
                 WHERE pernr     =  tbl_emp-pernr
                   AND date_to   GE tbl_zim_in_cert-date_to.
          IF sy-subrc NE 0.
* Check to determine if they have a second MC which is Unfit
            SELECT SINGLE * FROM zim_in_cert
                   WHERE pernr     =  tbl_emp-pernr
                     AND date_from LE p_date
                     AND date_to   GE p_date
                     AND status    =  'U'.
            IF sy-subrc NE 0.
* Check to determine if they have a second CC which is No Capacity
              SELECT SINGLE * FROM zim_in_cap
                     WHERE pernr     =  tbl_emp-pernr
                       AND date_from LE p_date
                       AND date_to   GE p_date
                       AND status    =  'N'.
              IF sy-subrc NE 0.
                PERFORM create_reminder USING 'I'
                                            zim_in_mast-ima
                                            '17'
                                            '02'
                                            ' '.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.

* 17 - Category 18      - Certificate of Capacity
*      Business Rule 03 - If a certificate has the employee as
*                         Fit for Pre Injury Duties, the case should be
*                         closed within 1 month

    IF zim_in_mast-inc_status = 'O'.
      IF tbl_zim_in_cert-status = 'P'.
        l_days = p_date - tbl_zim_in_cert-date_from.
        IF l_days GE 30.
          PERFORM create_reminder USING 'I'
                                      zim_in_mast-ima
                                      '18'
                                      '03'
                                      ' '.
        ENDIF.
      ENDIF.
    ENDIF.

* 18 - Category 11      - ROSA Referral
*      Business Rule 01 - The employee is Fit for PID, determine if a
*                         ROSA or a PMO is required

    IF zim_in_mast-inc_status = 'O' AND
       zim_in_mast-hod IS INITIAL.
      IF tbl_zim_in_cert-status = 'P'.
        IF pa0001-persk LE 'XF'.
* Only create a reminder if one has not already been created
          SELECT SINGLE * FROM zim_in_rem
                 WHERE pernr         = zim_in_mast-pernr
                   AND incident      = zim_in_mast-incident
                   AND ass_to        = 'I'
                   AND ass_emp       = zim_in_mast-ima
                   AND doc_unique    = ' '
                   AND note_cat      = '11'
                   AND business_rule = '01'
                   AND message_type  = 'B'.
          IF sy-subrc NE 0.
            PERFORM create_reminder USING 'I'
                                        zim_in_mast-ima
                                        '11'
                                        '01'
                                        ' '.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.

* 19 - Category 16      - Medical Certificate
*      Business Rule 04 - If the final medical certificate recommends
*                         Restricted, the case should be referred
*                         to the PRD Unit

    IF zim_in_mast-inc_status = 'O'.
      IF tbl_zim_in_cert-category = 'F' AND
         tbl_zim_in_cert-status = 'R'.
        l_days = p_date - tbl_zim_in_cert-mc_date.
        IF l_days GE 1.
          PERFORM create_reminder USING 'I'
                                      zim_in_mast-ima
                                      '16'
                                      '04'
                                      ' '.
        ENDIF.
      ENDIF.
    ENDIF.

** 20 - Category 10      - External Provider Service
**     Business Rule 02 - External provider service request has not been
**                         confirmed 3 days after the request
*
*    IF zim_in_mast-inc_status = 'O' AND
*       zim_in_mast-hod IS INITIAL.
*      SELECT * FROM zim_in_prov
*             INTO TABLE tbl_zim_in_prov
*             WHERE pernr = tbl_emp-pernr
*               AND incident = tbl_emp-incident.
*      SORT tbl_zim_in_prov BY date_req  DESCENDING.
*      LOOP AT tbl_zim_in_prov.
*        IF tbl_zim_in_prov-ref_sent IS INITIAL.
*          CALL FUNCTION 'BKK_ADD_WORKINGDAY'
*            EXPORTING
*              i_date   = tbl_zim_in_prov-date_req
*              i_days   = 3
*            IMPORTING
*              e_date   = l_date
*              e_return = l_subrc.
*
*          IF l_date LE p_date.
*            PERFORM create_reminder USING 'I'
*                                        zim_in_mast-ima
*                                        '10'
*                                        '02'
*                                        ' '.
*          ENDIF.
*        ENDIF.
*      ENDLOOP.
*    ENDIF.
*
* 21 - Category 11      - ROSA
*      Business Rule 02 - ROSA Review date has been reached

    IF zim_in_mast-inc_status = 'O'.
      IF zim_in_mast-rosa_review GE p_date.
        PERFORM create_reminder USING 'I'
                                    zim_in_mast-ima
                                    '11'
                                    '02'
                                    ' '.
      ENDIF.
    ENDIF.

* 22 - Category 12      - PMO
*      Business Rule 01 - PMO Review date has been reached

    IF zim_in_mast-inc_status = 'O'.
      IF zim_in_mast-pmo_review GE p_date.
        PERFORM create_reminder USING 'I'
                                    zim_in_mast-ima
                                    '11'
                                    '01'
                                    ' '.
      ENDIF.
    ENDIF.

    SELECT * FROM zim_in_imep
           INTO TABLE tbl_zim_in_imep
           WHERE pernr = tbl_emp-pernr
             AND incident = tbl_emp-incident.
    SORT tbl_zim_in_imep BY seq_no  DESCENDING.

** 23 - Category 50      - IMEP
**      Business Rule 06 - An IMEP Appeal has not been lodged within 21
**                         days of the report received date
*
*    IF zim_in_mast-closure_status IS INITIAL.
*      SELECT * FROM zim_in_imep
*             INTO TABLE tbl_zim_in_imep
*             WHERE pernr = tbl_emp-pernr
*               AND incident = tbl_emp-incident.
*      SORT tbl_zim_in_imep BY seq_no  DESCENDING.
*      LOOP AT tbl_zim_in_imep.
*        IF tbl_zim_in_imep-appeal IS INITIAL.
*          l_date = tbl_zim_in_imep-report_date + 21.
** Only create a reminder if one has not already been created
*          IF l_date LE p_date.
*            IF tbl_zim_in_imep-rec_work_status NE 'U'.
*              SELECT SINGLE * FROM zim_in_rem
*                     WHERE pernr         = zim_in_mast-pernr
*                       AND incident      = zim_in_mast-incident
*                       AND ass_to        = 'I'
*                       AND doc_unique    = ' '
*                       AND note_cat      = '50'
*                       AND business_rule = '06'
*                       AND message_type  = 'B'.
*              IF sy-subrc NE 0.
*                PERFORM create_reminder USING 'I'
*                                            zim_in_mast-ima
*                                            '50'
*                                            '06'
*                                            ' '.
*              ENDIF.
*            ELSE.
*              SELECT SINGLE * FROM zim_in_rem
*                     WHERE pernr         = zim_in_mast-pernr
*                       AND incident      = zim_in_mast-incident
*                       AND ass_to        = 'F'
*                       AND doc_unique    = ' '
*                       AND note_cat      = '50'
*                       AND business_rule = '06'
*                       AND message_type  = 'B'.
*              IF sy-subrc NE 0.
*                PERFORM create_reminder USING 'F'
*                                            zim_in_mast-ftc
*                                            '50'
*                                            '06'
*                                            ' '.
*              ENDIF.
*            ENDIF.
*          ENDIF.
*        ENDIF.
*      ENDLOOP.
*    ENDIF.
*
* 24 - Category 30      - Legal
*      Business Rule 02 - The request for information is overdue

    SELECT * FROM zim_in_req
           INTO TABLE tbl_zim_in_req
           WHERE pernr = tbl_emp-pernr
             AND incident = tbl_emp-incident.
    SORT tbl_zim_in_req  BY req_area
                            seq_no.
    LOOP AT tbl_zim_in_req
         WHERE req_area = 'L'
           AND due_date IS NOT INITIAL
           AND req_comp IS INITIAL.
      IF tbl_zim_in_req-due_date LE p_date.
        CONCATENATE 'REQ' tbl_zim_in_req-req_area
                    tbl_zim_in_req-seq_no INTO l_doc_unique.
        PERFORM create_reminder USING 'L'
                                    ' '
                                    '30'
                                    '02'
                                    l_doc_unique.
      ENDIF.
    ENDLOOP.

* 25 - Category 60      - FTC
*      Business Rule 08 - The request for information is overdue

    IF zim_in_mast-inc_status = 'F'.
      LOOP AT tbl_zim_in_req
           WHERE req_area = 'F'
             AND due_date IS NOT INITIAL
             AND req_comp IS INITIAL.
        IF tbl_zim_in_req-due_date LE p_date.
          CONCATENATE 'REQ' tbl_zim_in_req-req_area
                      tbl_zim_in_req-seq_no INTO l_doc_unique.
          PERFORM create_reminder USING 'F'
                                      ' '
                                      '60'
                                      '08'
                                      l_doc_unique.
        ENDIF.
      ENDLOOP.
    ENDIF.

* 26 - Category 50      - IMEP
*      Business Rule 12 - The IMEP appointment has not been booked

    IF zim_in_mast-closure_status IS INITIAL.
      LOOP AT tbl_zim_in_imep.
        IF tbl_zim_in_imep-sign_not_date IS NOT INITIAL AND
           tbl_zim_in_imep-app_date IS INITIAL.
          PERFORM create_reminder USING 'I'
                                      zim_in_mast-ima
                                      '50'
                                      '12'
                                      ' '.
        ENDIF.
      ENDLOOP.
    ENDIF.

* 27 - Category 50      - IMEP
*      Business Rule 10 - An IMEP Report has not been received 14
*                         days after the appointment date

    IF zim_in_mast-closure_status IS INITIAL.
      LOOP AT tbl_zim_in_imep.
        IF tbl_zim_in_imep-report_date IS INITIAL AND
           tbl_zim_in_imep-app_date IS NOT INITIAL.
          l_date = tbl_zim_in_imep-app_date + 14.
          IF l_date LE p_date.
            PERFORM create_reminder USING 'I'
                                        zim_in_mast-ima
                                        '50'
                                        '10'
                                        ' '.
          ENDIF.
        ENDIF.
      ENDLOOP.
    ENDIF.

* 28 - Category 50      - IMEP
*      Business Rule 11 - The IMEP Report has not been sent to the
*                         Command and the Officer

    IF zim_in_mast-closure_status IS INITIAL.
      LOOP AT tbl_zim_in_imep.
        IF tbl_zim_in_imep-rec_work_status IS NOT INITIAL AND
           tbl_zim_in_imep-rpt_sent_date   IS INITIAL.
          IF tbl_zim_in_imep-rec_work_status NE 'U'.
            PERFORM create_reminder USING 'I'
                                        zim_in_mast-ima
                                        '50'
                                        '11'
                                        ' '.
          ELSE.
            SELECT SINGLE * FROM zim_in_ftc
                   WHERE pernr    = zim_in_mast-pernr
                     AND incident = zim_in_mast-incident.
            IF sy-subrc NE 0.
              CLEAR zim_in_ftc.
            ENDIF.
            IF zim_in_ftc-info_pack_date IS INITIAL.
              PERFORM create_reminder USING 'F'
                                          zim_in_mast-ftc
                                          '50'
                                          '11'
                                          ' '.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDLOOP.
    ENDIF.

* 29 - Category 60      - FTC
*      Business Rule 12 - The overstrength letter has not been sent to
*                         the Command

    IF zim_in_mast-closure_status IS INITIAL.
      SELECT SINGLE * FROM zim_in_ftc
             WHERE pernr = tbl_emp-pernr
               AND incident = tbl_emp-incident.
      IF sy-subrc = 0.
        SELECT SINGLE * FROM pa0001
               WHERE pernr = zim_in_mast-pernr
                 AND begda LE sy-datum
                 AND endda GE sy-datum.
        IF sy-subrc NE 0.
          CLEAR pa0001.
        ENDIF.
        IF pa0001-persk LE 'XF'.
          IF zim_in_ftc-command_date IS INITIAL.
            PERFORM create_reminder USING 'F'
                                        zim_in_mast-ftc
                                        '60'
                                        '12'
                                        ' '.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.

* 30 - Category 60      - FTC
*      Business Rule 13 - The Info Pack has not been sent to
*                         the Officer

    IF zim_in_mast-closure_status IS INITIAL.
      SELECT SINGLE * FROM zim_in_ftc
             WHERE pernr = tbl_emp-pernr
               AND incident = tbl_emp-incident.
      IF sy-subrc = 0.
        IF zim_in_ftc-info_pack_date IS INITIAL.
          PERFORM create_reminder USING 'F'
                                      zim_in_mast-ftc
                                      '60'
                                      '13'
                                      ' '.
        ENDIF.
      ENDIF.
    ENDIF.

* 31 - Category 60      - FTC
*      Business Rule 14 - The Notification email has not been sent to
*                         the Insurer

    IF zim_in_mast-closure_status IS INITIAL.
      SELECT SINGLE * FROM zim_in_ftc
             WHERE pernr = tbl_emp-pernr
               AND incident = tbl_emp-incident.
      IF sy-subrc = 0.
        IF pa0001-persk LE 'XF'.
          IF zim_in_ftc-insurer_date IS INITIAL.
            PERFORM create_reminder USING 'F'
                                        zim_in_mast-ftc
                                        '60'
                                        '14'
                                        ' '.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.

* 32 - Category 60      - FTC
*      Business Rule 15 - The initial contact has not been made with
*                         the Employee

    IF zim_in_mast-closure_status IS INITIAL.
      SELECT SINGLE * FROM zim_in_ftc
             WHERE pernr = tbl_emp-pernr
               AND incident = tbl_emp-incident.
      IF sy-subrc = 0.
        IF pa0001-persk LE 'XF'.
          IF zim_in_ftc-emp_cont IS INITIAL.
            PERFORM create_reminder USING 'F'
                                        zim_in_mast-ftc
                                        '60'
                                        '15'
                                        ' '.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.

* 33 - Category 55      - FTC Assessment
*      Business Rule 10 - The Command Report has not been received
*                         5 days after being sent

    REFRESH tbl_zim_in_ftcax.
    CLEAR   tbl_zim_in_ftcax.
    SELECT * FROM zim_in_ftcax
           INTO TABLE tbl_zim_in_ftcax
           WHERE pernr    = tbl_emp-pernr
             AND incident = tbl_emp-incident.
    SORT tbl_zim_in_ftcax BY seq_no DESCENDING.
    LOOP AT tbl_zim_in_ftcax.
      EXIT.
    ENDLOOP.

    IF zim_in_mast-closure_status IS INITIAL.
      IF tbl_zim_in_ftcax-comm_sent_date IS NOT INITIAL AND
         tbl_zim_in_ftcax-comm_rec_date  IS INITIAL.
        CALL FUNCTION 'BKK_ADD_WORKINGDAY'
          EXPORTING
            i_date   = tbl_zim_in_ftcax-comm_sent_date
            i_days   = 5
          IMPORTING
            e_date   = l_date
            e_return = l_subrc.
        IF l_date LE p_date.
          PERFORM create_reminder USING 'I'
                                      zim_in_mast-ima
                                      '55'
                                      '10'
                                      ' '.
        ENDIF.
      ENDIF.
    ENDIF.

* 34 - Category 55      - FTC Assessment
*      Business Rule 11 - The SIMA has not reviewed the FTC AX
*                         Referral 2 days after being sent

    IF zim_in_mast-closure_status IS INITIAL.
      IF tbl_zim_in_ftcax-ref_date_sima IS NOT INITIAL AND
         tbl_zim_in_ftcax-sima_ref_date  IS INITIAL.
        CALL FUNCTION 'BKK_ADD_WORKINGDAY'
          EXPORTING
            i_date   = tbl_zim_in_ftcax-ref_date_sima
            i_days   = 2
          IMPORTING
            e_date   = l_date
            e_return = l_subrc.
        IF l_date LE p_date.
          PERFORM create_reminder USING 'S'
                                      w_sima
                                      '55'
                                      '11'
                                      ' '.
        ENDIF.
      ENDIF.
    ENDIF.

* 35 - Category 55      - FTC Assessment
*      Business Rule 12 - MHS have not provided the appointment
*                         details 5 days after being sent

    IF zim_in_mast-closure_status IS INITIAL.
      IF tbl_zim_in_ftcax-mhs_notif_date IS NOT INITIAL AND
         tbl_zim_in_ftcax-app_date  IS INITIAL.
        CALL FUNCTION 'BKK_ADD_WORKINGDAY'
          EXPORTING
            i_date   = tbl_zim_in_ftcax-mhs_notif_date
            i_days   = 5
          IMPORTING
            e_date   = l_date
            e_return = l_subrc.
        IF l_date LE p_date.
          PERFORM create_reminder USING 'I'
                                      zim_in_mast-ima
                                      '55'
                                      '12'
                                      ' '.
        ENDIF.
      ENDIF.
    ENDIF.

* 36 - Category 55      - FTC Assessment
*      Business Rule 13 - Employee has not returned Acknowledgement
*                         of Receipt 5 days after being sent

    IF zim_in_mast-closure_status IS INITIAL.
      IF tbl_zim_in_ftcax-emp_notif_date IS NOT INITIAL AND
         tbl_zim_in_ftcax-ack_recvd_date IS INITIAL     AND
         tbl_zim_in_ftcax-mhs_provider = 'X'.
        CALL FUNCTION 'BKK_ADD_WORKINGDAY'
          EXPORTING
            i_date   = tbl_zim_in_ftcax-emp_notif_date
            i_days   = 5
          IMPORTING
            e_date   = l_date
            e_return = l_subrc.
        IF l_date LE p_date.
          SELECT SINGLE * FROM zim_in_rem
                 WHERE pernr         = zim_in_mast-pernr
                   AND incident      = zim_in_mast-incident
                   AND ass_to        = 'I'
                   AND doc_unique    = ' '
                   AND note_cat      = '55'
                   AND business_rule = '13'
                   AND message_type  = 'B'.
          IF sy-subrc NE 0.
            PERFORM create_reminder USING 'I'
                                        zim_in_mast-ima
                                        '55'
                                        '13'
                                        ' '.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.

* 37 - Category 55      - FTC Assessment
*      Business Rule 14 - MHS have not provided the FTC Ax
*                         Report 15 days after the appointment

    IF zim_in_mast-closure_status IS INITIAL.
      IF tbl_zim_in_ftcax-app_date IS NOT INITIAL AND
         tbl_zim_in_ftcax-report_date  IS INITIAL.
        l_date = tbl_zim_in_ftcax-app_date + 15.
        IF l_date LE p_date.
          PERFORM create_reminder USING 'I'
                                      zim_in_mast-ima
                                      '55'
                                      '14'
                                      ' '.
        ENDIF.
      ENDIF.
    ENDIF.

* 38 - Category 55      - FTC Assessment
*      Business Rule 15 - MHS have not provided the Supplementary
*                         Report 15 days after being sent

    IF zim_in_mast-closure_status IS INITIAL.
      IF tbl_zim_in_ftcax-supp_req_date IS NOT INITIAL AND
         tbl_zim_in_ftcax-supp_recvd_date  IS INITIAL.
        l_date = tbl_zim_in_ftcax-supp_req_date + 15.
        IF l_date LE p_date.
          PERFORM create_reminder USING 'I'
                                      zim_in_mast-ima
                                      '55'
                                      '15'
                                      ' '.
        ENDIF.
      ENDIF.
    ENDIF.

* 39 - Category 55      - FTC Assessment
*      Business Rule 16 - The FTC Ax Report has not been sent to the
*                         employee 2 days after being received

    IF zim_in_mast-closure_status IS INITIAL.
      IF tbl_zim_in_ftcax-report_date IS NOT INITIAL AND
         tbl_zim_in_ftcax-rpt_sent_date  IS INITIAL.
        CALL FUNCTION 'BKK_ADD_WORKINGDAY'
          EXPORTING
            i_date   = tbl_zim_in_ftcax-report_date
            i_days   = 2
          IMPORTING
            e_date   = l_date
            e_return = l_subrc.
        IF l_date LE p_date.
          PERFORM create_reminder USING 'I'
                                      zim_in_mast-ima
                                      '55'
                                      '16'
                                      ' '.
        ENDIF.
      ENDIF.
    ENDIF.

* 40 - Category 55      - FTC Assessment
*      Business Rule 17 - An Appeal has not been received from the
*                         employee 15 days after the report was sent

    IF zim_in_mast-closure_status IS INITIAL.
      IF tbl_zim_in_ftcax-rpt_sent_date IS NOT INITIAL AND
         tbl_zim_in_ftcax-appeal    IS INITIAL AND
         tbl_zim_in_ftcax-no_appeal IS INITIAL.
        l_date = tbl_zim_in_ftcax-rpt_sent_date + 21.
        IF l_date LE p_date.
          PERFORM create_reminder USING 'I'
                                      zim_in_mast-ima
                                      '55'
                                      '17'
                                      ' '.
        ENDIF.
      ENDIF.
    ENDIF.

* 41 - Category 55      - FTC Assessment
*      Business Rule 18 - If the FTC Ax recommended status is not Unfit
*                         a PRTWP must be generated within 2 days

    IF zim_in_mast-closure_status IS INITIAL.
      IF tbl_zim_in_ftcax-rpt_sent_date IS NOT INITIAL AND
         tbl_zim_in_ftcax-rec_work_status NE 'U'.
        CALL FUNCTION 'BKK_ADD_WORKINGDAY'
          EXPORTING
            i_date   = tbl_zim_in_ftcax-rpt_sent_date
            i_days   = 2
          IMPORTING
            e_date   = l_date
            e_return = l_subrc.
        IF l_date LE p_date.
          SELECT SINGLE * FROM zim_in_doc
                 WHERE pernr         = zim_in_mast-pernr
                  AND doc_unique LIKE 'RTWP%'
                  AND date_processed GE tbl_zim_in_ftcax-rpt_sent_date.
          IF sy-subrc NE 0.
            SELECT SINGLE * FROM zim_in_rem
                   WHERE pernr         = zim_in_mast-pernr
                     AND incident      = zim_in_mast-incident
                     AND ass_to        = 'I'
                     AND doc_unique    = ' '
                     AND note_cat      = '55'
                     AND business_rule = '18'
                     AND message_type  = 'B'.
            IF sy-subrc NE 0.
              PERFORM create_reminder USING 'I'
                                          zim_in_mast-ima
                                          '55'
                                          '18'
                                          ' '.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.

    PERFORM add_general_reminders.
  ENDLOOP.

ENDFORM.                    " GENERATE_REMINDERS

*&---------------------------------------------------------------------*
*&      Form  get_weeks_sr
*&---------------------------------------------------------------------*
*       Get Startegic Review reminders table
*----------------------------------------------------------------------*
FORM get_weeks_sr.
  CHECK gr_week_sr IS INITIAL.

  DATA ls_week_sr  LIKE LINE OF gr_week_sr.

* Set a reminder for week 1, 3, 6, 10, 16, 20, 26, 52 and 130
  ls_week_sr-sign = 'I'.
  ls_week_sr-option = 'EQ'.
  ls_week_sr-low = 1.
  APPEND  ls_week_sr TO gr_week_sr.

  ls_week_sr-low = 3.
  APPEND  ls_week_sr TO gr_week_sr.
  ls_week_sr-low = 6.
  APPEND  ls_week_sr TO gr_week_sr.
  ls_week_sr-low = 10.
  APPEND  ls_week_sr TO gr_week_sr.
  ls_week_sr-low = 16.
  APPEND  ls_week_sr TO gr_week_sr.
  ls_week_sr-low = 20.
  APPEND  ls_week_sr TO gr_week_sr.
  ls_week_sr-low = 26.
  APPEND  ls_week_sr TO gr_week_sr.
  ls_week_sr-low = 52.
  APPEND  ls_week_sr TO gr_week_sr.
  ls_week_sr-low = 130.
  APPEND  ls_week_sr TO gr_week_sr.
ENDFORM.                    "get_weeks_sr
*&---------------------------------------------------------------------*
*&      Form  get_weeks_unfit_sima
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
FORM get_weeks_unfit_sima.
  CHECK gr_week_unfit_sima IS INITIAL.

  DATA ls_week_sr  LIKE LINE OF gr_week_unfit_sima.

* Set a reminder for week 8, 16, 24 and 52
  ls_week_sr-sign = 'I'.
  ls_week_sr-option = 'EQ'.
  ls_week_sr-low = 8.
  APPEND  ls_week_sr TO gr_week_unfit_sima.

  ls_week_sr-low = 16.
  APPEND  ls_week_sr TO gr_week_unfit_sima.
  ls_week_sr-low = 24.
  APPEND  ls_week_sr TO gr_week_unfit_sima.
  ls_week_sr-low = 52.
  APPEND  ls_week_sr TO gr_week_unfit_sima.
ENDFORM.                    "get_weeks_unfit_sima

*&---------------------------------------------------------------------*
*&      Form  add_general_reminders
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
FORM add_general_reminders.
  DATA: lv_week_no      TYPE anzweeks,
        lv_date         TYPE datum,
        lv_doc_unique   TYPE char12.
* 42 - Category 99      - Administer OMPQ
*      Business Rule 11 - Generate a notification to Administer OMPQ
*                         28 days from date of injury notification if
*                         it is a physical claim
* begin DEVK9HR9TY     CR2414
  "  IF zim_in_mast-inc_status = 'O' AND
  "     zim_in_mast-hod IS INITIAL.
  "    lv_date = zim_in_mast-date_created + 28.
  "    IF ( zim_in_mast-prim_injury = 'P' OR
  "         zim_in_mast-sec_injury  = 'P' ) AND
  "         lv_date LE p_date.
  "* Only create a reminder if one has not already been created
  "      SELECT SINGLE * FROM zim_in_rem
  "             WHERE pernr         = zim_in_mast-pernr
  "               AND incident      = zim_in_mast-incident
  "               AND ass_to        = 'I'
  "               AND ass_emp       = zim_in_mast-ima
  "               AND doc_unique    = ' '
  "               AND note_cat      = '99'
  "               AND business_rule = '11'
  "               AND message_type  = 'B'.
  "      IF sy-subrc NE 0.
  "        PERFORM create_reminder USING 'I'
  "                                    zim_in_mast-ima
  "                                    '99'
  "                                    '11'
  "                                    ' '.
  "      ENDIF.
  "    ENDIF.
  "  ENDIF.
* End
*      Category 99
*      Business Rule 21 - strategic Review with Insurer
* begin DEVK9HR9TY     CR2414
  "  IF zim_in_mast-inc_status = 'O' AND
  "     zim_in_mast-hod IS INITIAL.
  "    PERFORM get_weeks_sr.
  "    PERFORM get_week_number USING zim_in_mast-date_created
  "                                  sy-datum
  "                         CHANGING lv_week_no.
  "    IF lv_week_no IN  gr_week_sr.
  "      CLEAR: lv_date, gs_message.
  "      gs_message-message_v1 = lv_week_no.
  "      CONDENSE gs_message-message_v1.
  "      PERFORM get_week_start_date  USING zim_in_mast-date_created
  "                                         lv_week_no
  "                                CHANGING lv_date.
  "      CONCATENATE zim_in_mast-date_created
  "                  gs_message-message_v1
  "            INTO  lv_doc_unique.      "date + week
  "*     check if reminder already exists
  "      SELECT SINGLE * FROM zim_in_rem
  "             WHERE pernr         = zim_in_mast-pernr
  "               AND incident      = zim_in_mast-incident
  "               AND ass_to        = 'I'
  "               AND ass_emp       = zim_in_mast-ima
  "               AND doc_unique    = lv_doc_unique
  "               AND created_date  = lv_date
  "               AND note_cat      = '99'
  "               AND business_rule = '21'
  "               AND message_type  = 'B'.
  "      IF sy-subrc NE 0.
  "        PERFORM create_reminder USING 'I'
  "                                    zim_in_mast-ima
  "                                    '99'
  "                                    '21'
  "                                    lv_doc_unique.
  "      ENDIF.
  "    ENDIF.
  "  ENDIF.
* end DEVK9HR9TY     CR2414
ENDFORM.                    "add_general_reminders
*&---------------------------------------------------------------------*
*&      Form  get_week_number
*&---------------------------------------------------------------------*
FORM get_week_number USING pv_date_from
                           pv_date_to
                  CHANGING pv_week_no.
* calc number of weeks
  pv_week_no = ( pv_date_to - pv_date_from ) / 7.
  IF pv_week_no < 0.
    pv_week_no = 0.
  ENDIF.

ENDFORM.                    "get_week_number
*&---------------------------------------------------------------------*
*&      Form  get_week_start_date
*&---------------------------------------------------------------------*
FORM get_week_start_date  USING pv_date_from
                                pv_weeks
                       CHANGING pv_date_to.
  CHECK pv_weeks >= 0.
  pv_date_to = pv_date_from + ( pv_weeks * 7 ).
ENDFORM.                    "get_week_start_date

*&---------------------------------------------------------------------*
*&      Form  GENERATE_REMINDERS_CM
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM generate_reminders_cm .

  DATA : l_subrc         LIKE sy-subrc,
         l_date          LIKE sy-datum,
         l_days          TYPE i,
         l_count         TYPE i,
         l_doc_unique    LIKE zim_in_rem-doc_unique,
         l_admin(1)      TYPE c.

  LOOP AT tbl_emp.

    REFRESH : tbl_zim_in_cert, tbl_zim_in_claim.
    CLEAR   : tbl_zim_in_cert, tbl_zim_in_claim.

    SELECT SINGLE * FROM zim_in_mast
           WHERE pernr    = tbl_emp-pernr
             AND incident = tbl_emp-incident.
    IF sy-subrc NE 0.
      CONTINUE.
    ENDIF.

    SELECT SINGLE * FROM zim_incident
           WHERE pernr    = tbl_emp-pernr
             AND incident = tbl_emp-incident.
    IF sy-subrc NE 0.
      CONTINUE.
    ENDIF.

    SELECT SINGLE * FROM zim_in_cm
           WHERE pernr    = tbl_emp-pernr
             AND incident = tbl_emp-incident.
    IF sy-subrc NE 0.
      CONTINUE.
    ENDIF.

    SELECT * FROM zim_in_claim
           INTO TABLE tbl_zim_in_claim
           WHERE pernr    = tbl_emp-pernr
             AND incident = tbl_emp-incident.
    SORT tbl_zim_in_claim BY claim_type
                             begda      DESCENDING.

    SELECT * FROM zim_in_cert
           INTO TABLE tbl_zim_in_cert
           WHERE pernr    = tbl_emp-pernr
             AND incident = tbl_emp-incident
             AND inactive = ' '.
    SELECT * FROM zim_in_cap
           APPENDING CORRESPONDING FIELDS OF TABLE tbl_zim_in_cert
           WHERE pernr    = tbl_emp-pernr
             AND incident = tbl_emp-incident
             AND inactive = ' '.
    SORT tbl_zim_in_cert BY mc_date   DESCENDING
                            date_from DESCENDING
                            date_to   DESCENDING.

    SELECT SINGLE * FROM pa0001
           WHERE pernr = zim_in_mast-pernr
             AND begda LE sy-datum
             AND endda GE sy-datum.
    IF sy-subrc NE 0.
      CLEAR pa0001.
    ENDIF.

    IF pa0001-persk GE 'XG' AND
       pa0001-persk LE 'XT'.
      l_admin = 'X'.
    ELSE.
      CLEAR l_admin.
    ENDIF.


* 01 - Category 80      - Case Management
*      Business Rule 02 - 266 Days after the Date of Disablement
* Begin CR1874 remnders NOT needed currently
*    IF l_admin IS INITIAL AND
*       zim_in_cm-disablement_date IS NOT INITIAL.
*      IF zim_in_cm-wc_status = 'O' AND
*         zim_in_cm-duty_det  = 'O'.
*        l_days = p_date - zim_in_cm-disablement_date.
*        IF l_days GE 266.
** Only create a reminder if one has not already been created
*          SELECT SINGLE * FROM zim_in_rem
*                 WHERE pernr         = zim_in_mast-pernr
*                   AND incident      = zim_in_mast-incident
*                   AND ass_to        = 'W'
*                   AND ass_emp       = zim_in_cm-ip_advisor
*                   AND doc_unique    = ' '
*                   AND note_cat      = '80'
*                   AND business_rule = '02'
*                   AND message_type  = 'B'.
*          IF sy-subrc NE 0.
*            PERFORM create_reminder USING 'W'
*                                          zim_in_cm-ip_advisor
*                                          '80'
*                                          '02'
*                                          ' '.
*          ENDIF.
*        ENDIF.
*      ENDIF.
*    ENDIF.
* End CR1874

* 02 - Category 80      - Case Management
*      Business Rule 03 - Off Duty Claim, 50 days after
*                         Date of Disablement

    IF l_admin IS INITIAL AND
       zim_in_cm-disablement_date IS NOT INITIAL.
      IF zim_in_cm-ip_status = 'O' AND
         zim_in_cm-duty_det  = 'F'.
        l_days = p_date - zim_in_cm-disablement_date.
        IF l_days GE 50.
* Only create a reminder if one has not already been created
          SELECT SINGLE * FROM zim_in_rem
                 WHERE pernr         = zim_in_mast-pernr
                   AND incident      = zim_in_mast-incident
                   AND ass_to        = 'W'
                   AND ass_emp       = zim_in_cm-ip_advisor
                   AND doc_unique    = ' '
                   AND note_cat      = '80'
                   AND business_rule = '03'
                   AND message_type  = 'B'.
          IF sy-subrc NE 0.
            PERFORM create_reminder USING 'W'
                                          zim_in_cm-ip_advisor
                                          '80'
                                          '03'
                                          ' '.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.

* 03 - Category 80      - Case Management
*      Business Rule 04 - 30 Days prior to WC End Date

    IF zim_in_cm-wc_status = 'O'.
      l_days = zim_in_cm-wc_end_date - p_date.
      IF l_days LE 30.
* Only create a reminder if one has not already been created
        SELECT SINGLE * FROM zim_in_rem
               WHERE pernr         = zim_in_mast-pernr
                 AND incident      = zim_in_mast-incident
                 AND ass_to        = 'W'
                 AND ass_emp       = zim_in_cm-wc_advisor
                 AND doc_unique    = ' '
                 AND note_cat      = '80'
                 AND business_rule = '04'
                 AND message_type  = 'B'.
        IF sy-subrc NE 0.
          PERFORM create_reminder USING 'W'
                                        zim_in_cm-wc_advisor
                                        '80'
                                        '04'
                                        ' '.
        ENDIF.
      ENDIF.
    ENDIF.


* 04 - Category 80      - Case Management
*      Business Rule 05 - 30 Days prior to IP End Date
* Begin CR1874 remnders NOT needed currently DEVK9HR5YA
*    IF l_admin IS INITIAL AND
*       zim_in_cm-ip_end_date IS NOT INITIAL.
*      IF zim_in_cm-wc_status = 'O'.
*        l_days = zim_in_cm-ip_end_date - p_date.
*        IF l_days LE 30.
** Only create a reminder if one has not already been created
*          SELECT SINGLE * FROM zim_in_rem
*                 WHERE pernr         = zim_in_mast-pernr
*                   AND incident      = zim_in_mast-incident
*                   AND ass_to        = 'W'
*                   AND ass_emp       = zim_in_cm-ip_advisor
*                   AND doc_unique    = ' '
*                   AND note_cat      = '80'
*                   AND business_rule = '05'
*                   AND message_type  = 'B'.
*          IF sy-subrc NE 0.
*            PERFORM create_reminder USING 'W'
*                                          zim_in_cm-ip_advisor
*                                          '80'
*                                          '05'
*                                          ' '.
*          ENDIF.
*        ENDIF.
*      ENDIF.
*    ENDIF.
* End CR1874

** 05 - Category 80      - Case Management
**      Business Rule 06 - 5 working days prior to expiry of
**                         the WorkCover certificate
*
*    CLEAR tbl_zim_in_cert.
*    LOOP AT tbl_zim_in_cert.
*      EXIT.
*    ENDLOOP.
*    IF sy-subrc = 0.
*      IF zim_in_cm-wc_status = 'O'.
*        IF tbl_zim_in_cert-status = 'U' OR
*           tbl_zim_in_cert-status = 'SD' or
*           tbl_zim_in_cert-status = 'C' OR
*           tbl_zim_in_cert-status = 'N'.
*          CALL FUNCTION 'BKK_ADD_WORKINGDAY'
*            EXPORTING
*              i_date   = tbl_zim_in_cert-date_to
*              i_days   = -5
*            IMPORTING
*              e_date   = l_date
*              e_return = l_subrc.
*
*          IF l_date LE p_date.
*            PERFORM create_reminder USING 'W'
*                                          zim_in_cm-wc_advisor
*                                          '80'
*                                          '06'
*                                          ' '.
*          ENDIF.
*        ENDIF.
*      ENDIF.
*    ENDIF.
*
* 06 - Category 80      - Case Management
*      Business Rule 07 - 7 Days after claim status declined
*                         if letter not sent

    CLEAR tbl_zim_in_claim.
    LOOP AT tbl_zim_in_claim
            WHERE claim_type = 'W'.
      EXIT.
    ENDLOOP.
    IF tbl_zim_in_claim-stat      = '7' AND
       tbl_zim_in_claim-sent_date IS INITIAL.
      l_days = p_date - tbl_zim_in_claim-date_updated.
      IF l_days GE 7.
        PERFORM create_reminder USING 'W'
                                      zim_in_cm-wc_advisor
                                      '80'
                                      '07'
                                      ' '.
      ENDIF.
    ENDIF.


* 07 - Category 80      - Case Management
*      Business Rule 08 - First claim review after 6 weeks
* Begin CR1874 remnders NOT needed currently DEVK9HR5YA
*    IF zim_in_cm-ip_status = 'O'.
*      IF zim_in_cm-disablement_date IS NOT INITIAL.
*        l_days = p_date - zim_in_cm-disablement_date.
*      ELSE.
*        l_days = p_date - zim_incident-datereported.
*      ENDIF.
*      IF l_days GE 42 AND
*         zim_in_cm-claim_review IS INITIAL.
*        PERFORM create_reminder USING 'W'
*                                      zim_in_cm-ip_advisor
*                                      '80'
*                                      '08'
*                                      ' '.
*      ENDIF.
*    ENDIF.
* End CR1874

* 08 - Category 80      - Case Management
*      Business Rule 09 - Second claim review after 12 weeks
* Begin CR1874 remnders NOT needed currently DEVK9HR5YA
*    IF zim_in_cm-ip_status = 'O'.
*      IF zim_in_cm-disablement_date IS NOT INITIAL.
*        l_days = p_date - zim_in_cm-disablement_date.
*      ELSE.
*        l_days = p_date - zim_incident-datereported.
*      ENDIF.
*      IF l_days GE 84 AND
*         zim_in_cm-claim_review LT '2'.
*        PERFORM create_reminder USING 'W'
*                                      zim_in_cm-ip_advisor
*                                      '80'
*                                      '09'
*                                      ' '.
*      ENDIF.
*    ENDIF.
* End CR1874

* 09 - Category 80      - Case Management
*      Business Rule 10 - Third claim review after 20 weeks
* Begin CR1874 remnders NOT needed currently DEVK9HR5YA
*    IF zim_in_cm-ip_status = 'O'.
*      IF zim_in_cm-disablement_date IS NOT INITIAL.
*        l_days = p_date - zim_in_cm-disablement_date.
*      ELSE.
*        l_days = p_date - zim_incident-datereported.
*      ENDIF.
*      IF l_days GE 140 AND
*         zim_in_cm-claim_review LT '3'.
*        PERFORM create_reminder USING 'W'
*                                      zim_in_cm-ip_advisor
*                                      '80'
*                                      '10'
*                                      ' '.
*      ENDIF.
*    ENDIF.
* End CR1874

* 10 - Category 80      - Case Management
*      Business Rule 11 - Fourth claim review after 26 weeks
* Begin CR1874 remnders NOT needed currently DEVK9HR5YA
*    IF zim_in_cm-ip_status = 'O'.
*      IF zim_in_cm-disablement_date IS NOT INITIAL.
*        l_days = p_date - zim_in_cm-disablement_date.
*      ELSE.
*        l_days = p_date - zim_incident-datereported.
*      ENDIF.
*      IF l_days GE 182 AND
*         zim_in_cm-claim_review LT '4'.
*        PERFORM create_reminder USING 'W'
*                                      zim_in_cm-ip_advisor
*                                      '80'
*                                      '11'
*                                      ' '.
*      ENDIF.
*    ENDIF.
* End CR1874

* 11 - Category 80      - Case Management
*      Business Rule 12 - Fifth claim review after 52 weeks
* Begin CR1874 remnders NOT needed currently DEVK9HR5YA
*    IF zim_in_cm-ip_status = 'O'.
*      IF zim_in_cm-disablement_date IS NOT INITIAL.
*        l_days = p_date - zim_in_cm-disablement_date.
*      ELSE.
*        l_days = p_date - zim_incident-datereported.
*      ENDIF.
*      IF l_days GE 364 AND
*         zim_in_cm-claim_review LT '5'.
*        PERFORM create_reminder USING 'W'
*                                      zim_in_cm-ip_advisor
*                                      '80'
*                                      '12'
*                                      ' '.
*      ENDIF.
*    ENDIF.
* End CR1874

* 12 - Category 80      - Case Management
*      Business Rule 14 - Employers Statement not returned by LAC
*                         within 7 days
* Begin CR1874 remnders NOT needed currently DEVK9HR5YA
*    IF l_admin IS INITIAL AND
*       zim_in_cm-emp_sent_date IS NOT INITIAL.
*      l_date = zim_in_cm-emp_sent_date + 7.
*      IF zim_in_cm-ip_status = 'O' AND
*         l_date LE p_date.
*        SELECT SINGLE * FROM zim_in_doc_in
*               WHERE pernr    = zim_in_mast-pernr
*                 AND incident = zim_in_mast-incident
*                 AND ( ltr_category = 'DG'
*                   OR  ltr_category = 'DN' )
*                 AND date_processed GE zim_in_cm-emp_sent_date.
*        IF sy-subrc NE 0.
*          PERFORM create_reminder USING 'W'
*                                        zim_in_cm-ip_advisor
*                                        '80'
*                                        '14'
*                                        ' '.
*        ENDIF.
*      ENDIF.
*    ENDIF.
* End CR1874

  ENDLOOP.

ENDFORM.                    " GENERATE_REMINDERS_CM

*&---------------------------------------------------------------------*
*&      Form  CREATE_REMINDER
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*      -->P_5288   text
*      -->P_W_SIMA  text
*      -->P_5290   text
*      -->P_5291   text
*      -->P_W_DOC_UNIQUE  text
*      -->P_5293   text
*----------------------------------------------------------------------*
FORM create_reminder  USING    p_ass_to
                               p_ass_emp
                               p_cat
                               p_rule
                               p_doc_unique.

* Check to determine if the reminder already exists
  SELECT SINGLE * FROM zim_in_rem
         WHERE pernr         = zim_in_mast-pernr
           AND incident      = zim_in_mast-incident
           AND doc_unique    = p_doc_unique
           AND note_cat      = p_cat
           AND business_rule = p_rule
           AND message_type  = 'B'
           AND note_comp     = ' '.
  IF sy-subrc = 0.
    EXIT.
  ENDIF.

* Create a reminder
  SELECT MAX( seq_no ) FROM zim_in_rem
         INTO w_rem_seq_no
         WHERE pernr    = zim_in_mast-pernr
           AND incident = zim_in_mast-incident
           AND ass_to   = p_ass_to.
  IF sy-subrc NE 0.
    w_rem_seq_no = 1.
  ELSE.
    ADD 1 TO w_rem_seq_no.
  ENDIF.
  w_action = 'I'.
  PERFORM get_note_desc USING p_cat
                              p_rule.

* change text with variables if needed
  PERFORM substitute_variables.

  CLEAR zim_in_rem.
  zim_in_rem-pernr         = zim_in_mast-pernr.
  zim_in_rem-incident      = zim_in_mast-incident.
  zim_in_rem-seq_no        = w_rem_seq_no.
  zim_in_rem-ass_to        = p_ass_to.
  zim_in_rem-ass_emp       = p_ass_emp.
  zim_in_rem-doc_unique    = p_doc_unique.
  zim_in_rem-created_date  = sy-datum.
  zim_in_rem-created_by    = sy-uname.
  zim_in_rem-note_cat      = p_cat.
  zim_in_rem-business_rule = p_rule.
  zim_in_rem-message_type  = 'B'.
  zim_in_rem-action        = zim_rem-action.
  CLEAR tbl_detail.
  MOVE-CORRESPONDING zim_in_rem TO tbl_detail.
  APPEND tbl_detail.

  IF p_submit = 'X'.
* Modicied by Y Chen on 12.11.2019 for CR2481
* Replace INSERT with MODIFY in updating ZIM_IN_REM to avoid error
* when there is duplicated record
*   INSERT zim_in_rem.
    MODIFY zim_in_rem.
    IF sy-subrc NE 0.
      w_subrc = sy-subrc.
      ROLLBACK WORK.
      WRITE: /10 'Error occurred when updating ZIM_IN_REM',
                 ' Return code:', w_subrc.
*      MESSAGE e999 WITH 'Error occurred when updating ZIM_IN_REM'
*                        'Return code ' w_subrc.
    ENDIF.

  ENDIF.

ENDFORM.                    " CREATE_REMINDER

*&---------------------------------------------------------------------*
*&      Form  substitute_variables
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
FORM substitute_variables.
  CHECK gs_message IS NOT INITIAL.

  IF gs_message-message_v1 IS NOT INITIAL.
    REPLACE FIRST OCCURRENCE OF '&1' IN zim_rem-action WITH
    gs_message-message_v1.
  ENDIF.
  IF gs_message-message_v2 IS NOT INITIAL.
    REPLACE FIRST OCCURRENCE OF '&2' IN zim_rem-action WITH
    gs_message-message_v2.
  ENDIF.
  IF gs_message-message_v3 IS NOT INITIAL.
    REPLACE FIRST OCCURRENCE OF '&3' IN zim_rem-action WITH
    gs_message-message_v3.
  ENDIF.
  IF gs_message-message_v4 IS NOT INITIAL.
    REPLACE FIRST OCCURRENCE OF '&4' IN zim_rem-action WITH
    gs_message-message_v4.
  ENDIF.

  CLEAR gs_message.
ENDFORM.                    "substitute_variables
*&---------------------------------------------------------------------*
*&      Form  DELETE_REMINDER
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*      -->P_5288   text
*      -->P_W_SIMA  text
*      -->P_5290   text
*      -->P_5291   text
*      -->P_W_DOC_UNIQUE  text
*      -->P_5293   text
*----------------------------------------------------------------------*
FORM delete_reminder  .

  LOOP AT tbl_zim_in_rem
       WHERE note_cat NE '80'.
    CLEAR tbl_detail.
    MOVE-CORRESPONDING tbl_zim_in_rem TO tbl_detail.
    tbl_detail-proc_message = 'Reminder Deleted'.
    APPEND tbl_detail.

    IF p_submit = 'X'.
      DELETE zim_in_rem FROM tbl_zim_in_rem.
      IF sy-subrc NE 0.
        w_subrc = sy-subrc.
        ROLLBACK WORK.
        MESSAGE e999 WITH 'Error occurred when updating ZIM_IN_REM'
                          'Return code ' w_subrc.
      ENDIF.
    ENDIF.
  ENDLOOP.

ENDFORM.                    " DELETE_REMINDER

*&---------------------------------------------------------------------*
*&      Form  GET_NOTE_DESC
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*      -->P_P_CAT  text
*      -->P_P_RULE  text
*----------------------------------------------------------------------*
FORM get_note_desc  USING    p_cat
                             p_rule.

  SELECT SINGLE * FROM zim_rem
         WHERE note_cat      = p_cat
           AND business_rule = p_rule.
  IF sy-subrc NE 0.
    CLEAR zim_rem.
  ENDIF.

ENDFORM.                    " GET_NOTE_DESC

*&------------------------------------------------------------------*
*&      Form GENERATE_REMINDERS_DEPLOY
*&------------------------------------------------------------------*
*       text
*-------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*-------------------------------------------------------------------*
FORM generate_reminders_deploy.
  DATA : l_subrc1         LIKE sy-subrc,
         l_date1          LIKE sy-datum,
         l_days1          TYPE i.

  LOOP AT tbl_emp.

    REFRESH : tbl_zim_in_deploy.
    CLEAR   : tbl_zim_in_deploy.

    SELECT SINGLE * FROM zim_in_deploy
      WHERE pernr    = tbl_emp-pernr
      AND   incident = tbl_emp-incident.
    IF sy-subrc NE 0.
      CONTINUE.
    ENDIF.

    SELECT SINGLE * FROM zim_advisor
      WHERE ima = zim_in_mast-ima.


* 01 - Category 20      - Deployment Unit
*      Business Rule 20 - 5 working days after Deployment Referral was
*      sent
    IF zim_in_deploy-sign_ref_recd_dt IS INITIAL AND
       zim_in_deploy-ref_sent_date IS NOT INITIAL AND
       zim_in_deploy-date_closed IS INITIAL.
      CALL FUNCTION 'Z_BKK_ADD_WORKINGDAY'
        EXPORTING
          i_date   = zim_in_deploy-ref_sent_date
          i_days   = 5
        IMPORTING
          e_date   = l_date1
          e_return = l_subrc1.

      SELECT SINGLE * FROM zim_advisor
        WHERE ima = zim_in_mast-ima.

      IF p_date GE l_date1.
        PERFORM create_reminder USING 'U'
                                      zim_in_deploy-case_officer
                                      '20'
                                      '20'
                                      ' '.
      ENDIF.
    ENDIF.


* 02 - Category 20      - Deployment Unit
*      Business Rule 21 - CMD not notified 1 working day of the
*      Deployment Unit accepting the case
    IF zim_in_deploy-date_closed IS INITIAL AND
       zim_in_deploy-case_accepted_dt IS NOT INITIAL AND
       zim_in_deploy-cmd_notify_dt IS INITIAL.

      CALL FUNCTION 'Z_BKK_ADD_WORKINGDAY'
        EXPORTING
          i_date   = zim_in_deploy-case_accepted_dt
          i_days   = 1
        IMPORTING
          e_date   = l_date1
          e_return = l_subrc1.

      IF p_date GE l_date1.
        PERFORM create_reminder USING 'U'
                                      zim_in_deploy-case_officer
                                      '20'
                                      '21'
                                      ' '.
      ENDIF.
    ENDIF.



* 03 - Category 20      - Deployment Unit
*      Business Rule 22 - Emp not contacted 1 working day of the
*      Deployment Unit accepting the case
    IF zim_in_deploy-date_closed IS INITIAL AND
       zim_in_deploy-case_accepted_dt IS NOT INITIAL AND
       ( zim_in_deploy-first_contact_dt IS INITIAL OR
       zim_in_deploy-last_contact_dt IS INITIAL ).

      CALL FUNCTION 'Z_BKK_ADD_WORKINGDAY'
        EXPORTING
          i_date   = zim_in_deploy-case_accepted_dt
          i_days   = 1
        IMPORTING
          e_date   = l_date1
          e_return = l_subrc1.

      IF p_date GE l_date1.
        PERFORM create_reminder USING 'U'
                                      zim_in_deploy-case_officer
                                      '20'
                                      '22'
                                      ' '.
      ENDIF.
    ENDIF.


* 04 - Category 20      - Deployment Unit
*      Business Rule 23 - Email not sent to Emp abt the mtg
*      1 working day of the Emp initial contact
    IF zim_in_deploy-date_closed IS INITIAL AND
       zim_in_deploy-first_contact_dt IS NOT INITIAL AND
       zim_in_deploy-mtg_corr_sent_dt IS INITIAL.

      CALL FUNCTION 'Z_BKK_ADD_WORKINGDAY'
        EXPORTING
          i_date   = zim_in_deploy-first_contact_dt
          i_days   = 1
        IMPORTING
          e_date   = l_date1
          e_return = l_subrc1.

      IF p_date GE l_date1.
        PERFORM create_reminder USING 'U'
                                      zim_in_deploy-case_officer
                                      '20'
                                      '23'
                                      ' '.
      ENDIF.
    ENDIF.



* 05 - Category 20      - Deployment Unit
*      Business Rule 24 - Agrred goals not sent to Emp
*      5 working day of the meeting date

    IF zim_in_deploy-date_closed IS INITIAL AND
       zim_in_deploy-first_mtg_dt IS NOT INITIAL AND
       zim_in_deploy-goals_sent_dt IS INITIAL.

      CALL FUNCTION 'Z_BKK_ADD_WORKINGDAY'
        EXPORTING
          i_date   = zim_in_deploy-first_mtg_dt
          i_days   = 5
        IMPORTING
          e_date   = l_date1
          e_return = l_subrc1.

      IF p_date GE l_date1.
        PERFORM create_reminder USING 'U'
                                      zim_in_deploy-case_officer
                                      '20'
                                      '24'
                                      ' '.
      ENDIF.
    ENDIF.

* 06 - Category 20      - Deployment Unit
*      Business Rule 25 - Last Contact Date is not blank
*      14 days earlier

    IF zim_in_deploy-date_closed IS INITIAL AND
       zim_in_deploy-last_contact_dt IS NOT INITIAL.

      CALL FUNCTION 'Z_BKK_ADD_WORKINGDAY'
        EXPORTING
          i_date   = zim_in_deploy-last_contact_dt
          i_days   = 14
        IMPORTING
          e_date   = l_date1
          e_return = l_subrc1.

      IF p_date GE l_date1.
        PERFORM create_reminder USING 'U'
                                      zim_in_deploy-case_officer
                                      '20'
                                      '25'
                                      ' '.
      ENDIF.
    ENDIF.


* 07 - Category 20      - Deployment Unit
*      Business Rule 26 - Case Closure not sent
*      1 working day of the email to Cmd

    IF zim_in_deploy-date_closed IS INITIAL AND
       zim_in_deploy-comd_rep_sent_dt IS INITIAL AND
       zim_in_deploy-cmd_notify_dt IS NOT INITIAL.

      CALL FUNCTION 'Z_BKK_ADD_WORKINGDAY'
        EXPORTING
          i_date   = zim_in_deploy-cmd_notify_dt
          i_days   = 1
        IMPORTING
          e_date   = l_date1
          e_return = l_subrc1.

      IF p_date GE l_date1.
        PERFORM create_reminder USING 'U'
                                      zim_in_deploy-case_officer
                                      '20'
                                      '26'
                                      ' '.
      ENDIF.
    ENDIF.

* 08 - Category 20      - Deployment Unit
*      Business Rule 27 - Emp Email for Prop Pos not sent
*      14 days of the Placement type

    IF zim_in_deploy-date_closed IS INITIAL AND
       zim_in_deploy-prop_pos_sent_dt IS INITIAL AND
       zim_in_deploy-place_type_dt IS NOT INITIAL.

      l_days1 = p_date - zim_in_deploy-place_type_dt.

      IF l_days1 GE 14.
        PERFORM create_reminder USING 'U'
                                      zim_in_deploy-case_officer
                                      '20'
                                      '27'
                                      ' '.
      ENDIF.
    ENDIF.


* 09 - Category 20      - Deployment Unit
*      Business Rule 28 - Emp Not responded to Prop Pos
*      5 working days of the email sent

    IF zim_in_deploy-date_closed IS INITIAL AND
       zim_in_deploy-prop_pos_sent_dt IS NOT INITIAL AND
       zim_in_deploy-resp_recd_dt IS NOT INITIAL.

      CALL FUNCTION 'Z_BKK_ADD_WORKINGDAY'
        EXPORTING
          i_date   = zim_in_deploy-prop_pos_sent_dt
          i_days   = 5
        IMPORTING
          e_date   = l_date1
          e_return = l_subrc1.


      IF p_date GE l_date1.
        PERFORM create_reminder USING 'U'
                                      zim_in_deploy-case_officer
                                      '20'
                                      '28'
                                      ' '.
      ENDIF.
    ENDIF.


* 10 - Category 20      - Deployment Unit
*      Business Rule 29 - Case Closure Rep not sent
*      1 working days of he position accepted

    IF zim_in_deploy-date_closed IS INITIAL AND
       zim_in_deploy-pos_dt_accptd IS NOT INITIAL AND
       zim_in_deploy-comd_rep_sent_dt IS INITIAL.

      CALL FUNCTION 'Z_BKK_ADD_WORKINGDAY'
        EXPORTING
          i_date   = zim_in_deploy-prop_pos_sent_dt
          i_days   = 1
        IMPORTING
          e_date   = l_date1
          e_return = l_subrc1.


      IF p_date GE l_date1.
        PERFORM create_reminder USING 'U'
                                      zim_in_deploy-case_officer
                                      '20'
                                      '29'
                                      ' '.
      ENDIF.
    ENDIF.


* 11 - Category 20      - Deployment Unit
*      Business Rule 30 - If no position found
*      after 90 days

    IF zim_in_deploy-date_closed IS INITIAL AND
       zim_in_deploy-place_type_dt IS NOT INITIAL AND
       zim_in_deploy-prop_pos_sent_dt IS INITIAL AND
       zim_in_deploy-no_pos_avail_dt IS INITIAL.

      l_days1 = p_date - zim_in_deploy-place_type_dt.

      IF l_days1 GE 90.
        PERFORM create_reminder USING 'U'
                                      zim_in_deploy-case_officer
                                      '20'
                                      '30'
                                      ' '.
      ENDIF.
    ENDIF.


* 12 - Category 20      - Deployment Unit
*      Business Rule 31 - If Dep Mth has not created
*      14 days region decision was uploaded

    IF zim_in_deploy-date_closed IS INITIAL AND
       zim_in_deploy-region_recd_dt IS NOT INITIAL AND
       zim_in_deploy-mth_mtg_held IS INITIAL.

      l_days1 = p_date - zim_in_deploy-region_recd_dt.

      IF l_days1 GE 14.
        PERFORM create_reminder USING 'U'
                                      zim_in_deploy-case_officer
                                      '20'
                                      '31'
                                      ' '.
      ENDIF.
    ENDIF.


* 13 - Category 20      - Deployment Unit
*      Business Rule 32 - If Case Closure Rep not sent
*      1 working day of a position accepted

    IF zim_in_deploy-date_closed IS INITIAL AND
       zim_in_deploy-comd_rep_sent_dt IS INITIAL AND
       zim_in_deploy-pos_dt_accptd IS NOT INITIAL.

      CALL FUNCTION 'Z_BKK_ADD_WORKINGDAY'
        EXPORTING
          i_date   = zim_in_deploy-pos_dt_accptd
          i_days   = 1
        IMPORTING
          e_date   = l_date1
          e_return = l_subrc1.


      IF p_date GE l_date1.
        PERFORM create_reminder USING 'U'
                                    zim_in_deploy-case_officer
                                    '20'
                                    '32'
                                    ' '.
      ENDIF.
    ENDIF.


  ENDLOOP.
ENDFORM.                    " GENERATE_REMINDERS_DEPLOY