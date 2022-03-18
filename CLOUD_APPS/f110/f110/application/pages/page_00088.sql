prompt --application/pages/page_00088
begin
--   Manifest
--     PAGE: 00088
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>88
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Question Details'
,p_alias=>'QUESTION-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Question Details'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518144528'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(334572950734153845)
,p_plug_name=>'currently published'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'This Poll is currently published.  It is not advised to add or modify questions.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_polls',
' where id = :POLL_ID',
'   and status_id = 3'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(334573057676153846)
,p_plug_name=>'currently closed'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'This Poll is currently closed.  It is not advised to add or modify questions.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_polls',
' where id = :POLL_ID',
'   and status_id = 4'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8327701863313114744)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8344001504235387325)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14488312324053941959)
,p_plug_name=>'Display Question Image'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14690167327773251146)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   c integer := 0;',
'begin',
'   for c2 in (',
'      select image_height, image_width',
'        from EBA_QPOLL_QUESTIONS',
'       where id = :P88_ID',
'         and image_filename is not null',
'   ) loop',
'      c := c + 1;',
'      sys.htp.p(''<p><img src="''||apex_util.get_blob_file_src(''P88_IMAGE_BLOB'',:P88_ID)||''"'');',
'      if c2.image_height is not null then',
'         sys.htp.p('' height="''|| c2.image_height ||''"'');',
'      end if;',
'      if c2.image_width is not null then',
'         sys.htp.p('' width="''|| c2.image_width ||''"'');',
'      end if;',
'      sys.htp.p('' /></p>'');',
'   end loop;',
'   if c = 0 then',
'       sys.htp.p(''<p>No image has been selected click the <strong>choose file</strong> button to add an image.</p>'');',
'   end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'        from EBA_QPOLL_QUESTIONS',
'where id = :P88_ID and NVL(dbms_lob.getlength(IMAGE_BLOB),0) > 0'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15313187407201624422)
,p_plug_name=>'Add Question'
,p_region_name=>'ADDQ'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15314770829907683381)
,p_plug_name=>'Custom Answers'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>'<h4>Answers</h4>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15314813018609825105)
,p_name=>'Canned Answers'
,p_template=>wwv_flow_api.id(14690161967644251135)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ANSWER_01 display, 1 d, apex_item.radiogroup(p_idx => 1, p_value => answer_01, p_selected_value => :P88_CORRECT_ANSWER, p_item_id => ''rg_'' || replace(answer_01,'' '',''_''), p_item_label => ''rg_'' || replace(answer_01,'' '',''_'')) correct, ',
'       apex_item.select_list_from_lov(p_idx => 2, p_value => 0, p_lov => ''SCORE'', p_show_null => ''NO'', p_item_id => ''answer_01_score'', p_item_label => ''answer_01_score'') score',
'from EBA_QPOLL_CANNED_ANSWERS',
'where CODE = :P88_QUESTION_TYPE and ANSWER_01 is not null',
'union all',
'select ANSWER_02 display, 2 d, apex_item.radiogroup(p_idx => 1, p_value => answer_02, p_selected_value => :P88_CORRECT_ANSWER, p_item_id => ''rg_'' || replace(answer_02,'' '',''_''), p_item_label => ''rg_'' || replace(answer_02,'' '',''_'')) correct, ',
'       apex_item.select_list_from_lov(p_idx => 2, p_value => 0, p_lov => ''SCORE'', p_show_null => ''NO'', p_item_id => ''answer_02_score'', p_item_label => ''answer_02_score'') score',
'from EBA_QPOLL_CANNED_ANSWERS',
'where CODE = :P88_QUESTION_TYPE and ANSWER_02 is not null',
'union all',
'select ANSWER_03 display, 3 d, apex_item.radiogroup(p_idx => 1, p_value => answer_03, p_selected_value => :P88_CORRECT_ANSWER, p_item_id => ''rg_'' || replace(answer_03,'' '',''_''), p_item_label => ''rg_'' || replace(answer_03,'' '',''_'')) correct, ',
'       apex_item.select_list_from_lov(p_idx => 2, p_value => 0, p_lov => ''SCORE'', p_show_null => ''NO'', p_item_id => ''answer_03_score'', p_item_label => ''answer_03_score'') score',
'from EBA_QPOLL_CANNED_ANSWERS',
'where CODE = :P88_QUESTION_TYPE and ANSWER_03 is not null',
'union all',
'select ANSWER_04 display, 4 d, apex_item.radiogroup(p_idx => 1, p_value => answer_04, p_selected_value => :P88_CORRECT_ANSWER, p_item_id => ''rg_'' || replace(answer_04,'' '',''_''), p_item_label => ''rg_'' || replace(answer_04,'' '',''_'')) correct, ',
'       apex_item.select_list_from_lov(p_idx => 2, p_value => 0, p_lov => ''SCORE'', p_show_null => ''NO'', p_item_id => ''answer_04_score'', p_item_label => ''answer_04_score'') score',
'from EBA_QPOLL_CANNED_ANSWERS',
'where CODE = :P88_QUESTION_TYPE and ANSWER_04 is not null',
'union all',
'select ANSWER_05 display, 5 d, apex_item.radiogroup(p_idx => 1, p_value => answer_05, p_selected_value => :P88_CORRECT_ANSWER, p_item_id => ''rg_'' || replace(answer_05,'' '',''_''), p_item_label => ''rg_'' || replace(answer_05,'' '',''_'')) correct, ',
'       apex_item.select_list_from_lov(p_idx => 2, p_value => 0, p_lov => ''SCORE'', p_show_null => ''NO'', p_item_id => ''answer_05_score'', p_item_label => ''answer_05_score'') score',
'from EBA_QPOLL_CANNED_ANSWERS',
'where CODE = :P88_QUESTION_TYPE and ANSWER_05 is not null',
'union all',
'select ANSWER_06 display, 6 d, apex_item.radiogroup(p_idx => 1, p_value => answer_06, p_selected_value => :P88_CORRECT_ANSWER, p_item_id => ''rg_'' || replace(answer_06,'' '',''_''), p_item_label => ''rg_'' || replace(answer_06,'' '',''_'')) correct, ',
'       apex_item.select_list_from_lov(p_idx => 2, p_value => 0, p_lov => ''SCORE'', p_show_null => ''NO'', p_item_id => ''answer_06_score'', p_item_label => ''answer_06_score'') score',
'from EBA_QPOLL_CANNED_ANSWERS',
'where CODE = :P88_QUESTION_TYPE and ANSWER_06 is not null',
'union all',
'select ANSWER_07 display, 7 d, apex_item.radiogroup(p_idx => 1, p_value => answer_07, p_selected_value => :P88_CORRECT_ANSWER, p_item_id => ''rg_'' || replace(answer_07,'' '',''_''), p_item_label => ''rg_'' || replace(answer_07,'' '',''_'')) correct, ',
'       apex_item.select_list_from_lov(p_idx => 2, p_value => 0, p_lov => ''SCORE'', p_show_null => ''NO'', p_item_id => ''answer_07_score'', p_item_label => ''answer_07_score'') score',
'from EBA_QPOLL_CANNED_ANSWERS',
'where CODE = :P88_QUESTION_TYPE and ANSWER_07 is not null',
'union all',
'select ANSWER_08 display, 8 d, apex_item.radiogroup(p_idx => 1, p_value => answer_08, p_selected_value => :P88_CORRECT_ANSWER, p_item_id => ''rg_'' || replace(answer_08,'' '',''_''), p_item_label => ''rg_'' || replace(answer_08,'' '',''_'')) correct, ',
'       apex_item.select_list_from_lov(p_idx => 2, p_value => 0, p_lov => ''SCORE'', p_show_null => ''NO'', p_item_id => ''answer_08_score'', p_item_label => ''answer_08_score'') score',
'from EBA_QPOLL_CANNED_ANSWERS',
'where CODE = :P88_QUESTION_TYPE and ANSWER_08 is not null',
'union all',
'select ANSWER_09 display, 9 d, apex_item.radiogroup(p_idx => 1, p_value => answer_09, p_selected_value => :P88_CORRECT_ANSWER, p_item_id => ''rg_'' || replace(answer_09,'' '',''_''), p_item_label => ''rg_'' || replace(answer_09,'' '',''_'')) correct, ',
'       apex_item.select_list_from_lov(p_idx => 2, p_value => 0, p_lov => ''SCORE'', p_show_null => ''NO'', p_item_id => ''answer_09_score'', p_item_label => ''answer_09_score'') score',
'from EBA_QPOLL_CANNED_ANSWERS',
'where CODE = :P88_QUESTION_TYPE and ANSWER_09 is not null',
'union all',
'select ANSWER_10 display, 10 d, apex_item.radiogroup(p_idx => 1, p_value => answer_10, p_selected_value => :P88_CORRECT_ANSWER, p_item_id => ''rg_'' || replace(answer_10,'' '',''_''), p_item_label => ''rg_'' || replace(answer_10,'' '',''_'')) correct, ',
'       apex_item.select_list_from_lov(p_idx => 2, p_value => 0, p_lov => ''SCORE'', p_show_null => ''NO'', p_item_id => ''answer_10_score'', p_item_label => ''answer_10_score'') score',
'from EBA_QPOLL_CANNED_ANSWERS',
'where CODE = :P88_QUESTION_TYPE and ANSWER_10 is not null',
'union all',
'select ANSWER_11 display, 11 d, apex_item.radiogroup(p_idx => 1, p_value => answer_11, p_selected_value => :P88_CORRECT_ANSWER, p_item_id => ''rg_'' || replace(answer_11,'' '',''_''), p_item_label => ''rg_'' || replace(answer_11,'' '',''_'')) correct, ',
'       apex_item.select_list_from_lov(p_idx => 2, p_value => 0, p_lov => ''SCORE'', p_show_null => ''NO'', p_item_id => ''answer_11_score'', p_item_label => ''answer_11_score'') score',
'from EBA_QPOLL_CANNED_ANSWERS',
'where CODE = :P88_QUESTION_TYPE and ANSWER_11 is not null',
'union all',
'select ANSWER_12 display, 12 d, apex_item.radiogroup(p_idx => 1, p_value => answer_12, p_selected_value => :P88_CORRECT_ANSWER, p_item_id => ''rg_'' || replace(answer_12,'' '',''_''), p_item_label => ''rg_'' || replace(answer_12,'' '',''_'')) correct, ',
'       apex_item.select_list_from_lov(p_idx => 2, p_value => 0, p_lov => ''SCORE'', p_show_null => ''NO'', p_item_id => ''answer_12_score'', p_item_label => ''answer_12_score'') score',
'from EBA_QPOLL_CANNED_ANSWERS',
'where CODE = :P88_QUESTION_TYPE and ANSWER_12 is not null',
'order by 2'))
,p_header=>'<h3>Define Answers</h3>'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P88_QUESTION_TYPE,P88_CORRECT_ANSWER,P88_SHOW_ENABLE_SCORING,P88_ENABLE_SCORE_YN'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8343637271030716967)
,p_query_column_id=>1
,p_column_alias=>'DISPLAY'
,p_column_display_sequence=>2
,p_column_heading=>'Value'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8343637649611716969)
,p_query_column_id=>2
,p_column_alias=>'D'
,p_column_display_sequence=>1
,p_column_heading=>'Sequence'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8343638062834716969)
,p_query_column_id=>3
,p_column_alias=>'CORRECT'
,p_column_display_sequence=>3
,p_column_heading=>'Correct?'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_condition=>'P88_POLL_OR_QUIZ'
,p_display_when_condition2=>'Q'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8343638453337716971)
,p_query_column_id=>4
,p_column_alias=>'SCORE'
,p_column_display_sequence=>4
,p_column_heading=>'Score'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P88_SHOW_ENABLE_SCORING = ''Y'' and',
'nvl(:P88_ENABLE_SCORE_YN,''N'') = ''Y'''))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15385229729202469502)
,p_plug_name=>'Correct Answer'
,p_region_template_options=>'#DEFAULT#:margin-top-md'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>80
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_QPOLL_POLLS',
' where id = :POLL_ID',
'   and poll_or_quiz = ''Q'''))
,p_plug_header=>'<h3>Define Correct Answer</h3>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(108123405430357232)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(8327701863313114744)
,p_button_name=>'ADD_ANOTHER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Add and Add Another'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P88_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8343615875199716909)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(8327701863313114744)
,p_button_name=>'ADD_QUESTION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Question'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P88_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8344248545587277387)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8327701863313114744)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P88_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8349852836340289663)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14488312324053941959)
,p_button_name=>'REMOVE_IMAGE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Remove Question Image'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8344248837807279846)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(8327701863313114744)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_condition=>'P88_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8343615474927716902)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8327701863313114744)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(108123476036357233)
,p_branch_name=>'ADD_ANOTHER'
,p_branch_action=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:RP,88:P88_POLL_ID,P88_SECTION_ID:&P88_POLL_ID.,&P88_SECTION_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(108123405430357232)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8349853698745304456)
,p_branch_name=>'return to page'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(8349852836340289663)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(356988762273704075)
,p_branch_name=>'for first question'
,p_branch_action=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8327701781973114743)
,p_name=>'P88_POLL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8344001504235387325)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&POLL_ID.'
,p_source=>'POLL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8327702218718114747)
,p_name=>'P88_SHOW_ENABLE_SCORING'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(15313187407201624422)
,p_use_cache_before_default=>'NO'
,p_source=>'ENABLE_SCORE_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8327702259405114748)
,p_name=>'P88_POLL_OR_QUIZ'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(15313187407201624422)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343617404056716919)
,p_name=>'P88_SECTION_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15313187407201624422)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Section'
,p_source=>'SECTION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select title, id',
'  from eba_qpoll_sections',
' where poll_id = :POLL_ID',
' order by display_sequence, title'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_display_when=>'P88_USE_SECTIONS_YN'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343617770963716921)
,p_name=>'P88_QUESTION'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15313187407201624422)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Question'
,p_source=>'QUESTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343618176250716922)
,p_name=>'P88_MANDATORY_YN'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15313187407201624422)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Mandatory'
,p_source=>'MANDATORY_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_display_when=>'P88_POLL_OR_QUIZ'
,p_display_when2=>'P'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If a question is mandatory, it will be highlighted to the user as required.  The user can submit a response without answering the question but they will be warned that they did not respond to a mandatory question and the user''s results will not be di'
||'splayed as a valid result.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343619287896716928)
,p_name=>'P88_QUESTION_TYPE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(15313187407201624422)
,p_use_cache_before_default=>'NO'
,p_item_default=>'RADIO_GROUP'
,p_prompt=>'Type'
,p_source=>'QUESTION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DYNAMIC ANSWER TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'from',
'(',
'select ''Pick one'' d, ''RADIO_GROUP'' r, 1 sort_order',
'from dual',
'union all',
'select ''Pick many'' d, ''CHECKBOX'' r, 3 sort_order',
'from dual',
'union all',
'select ''Stack Rank'' d, ''STACK'' r, 4 sort_order',
'from dual',
'union all',
'select ''Allocate $100'' d, ''ALLOCATION'' r, 5 sort_order',
'from dual',
'union all',
'select name d, code r, sort_order',
'from   EBA_QPOLL_CANNED_ANSWERS',
')',
'order by sort_order, d'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343619747865716929)
,p_name=>'P88_ENABLE_SCORE_YN'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(15313187407201624422)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Scoring Enabled'
,p_source=>'ENABLE_SCORE_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO  (Y/N)'
,p_lov=>'.'||wwv_flow_api.id(16164232820407773274)||'.'
,p_cHeight=>1
,p_display_when=>'P18_POLL_OR_QUIZ'
,p_display_when2=>'P'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343620067910716929)
,p_name=>'P88_DISPLAY_SEQUENCE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(15313187407201624422)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_next_seq number := 0;',
'begin',
'',
'    select nvl(max(display_sequence), l_next_seq) + 10',
'      into l_next_seq',
'      from eba_qpoll_questions ',
'     where poll_id = :POLL_ID;',
'',
'    return l_next_seq;',
'',
'exception',
'    when others then',
'        return l_next_seq + 10;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Sequence'
,p_source=>'DISPLAY_SEQUENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>4000
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343620456470716930)
,p_name=>'P88_IMAGE_BLOB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(15313187407201624422)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image'
,p_source=>'IMAGE_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>4000
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'        from EBA_QPOLL_QUESTIONS',
'where id = :P88_ID and NVL(dbms_lob.getlength(IMAGE_BLOB),0) > 0'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'IMAGE_MIMETYPE'
,p_attribute_03=>'IMAGE_FILENAME'
,p_attribute_04=>'IMAGE_CHARSET'
,p_attribute_05=>'IMAGE_LAST_UPDATED'
,p_attribute_06=>'Y'
,p_attribute_07=>'Download Question Image &nbsp;'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343620903908716931)
,p_name=>'P88_IMAGE_HEIGHT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(15313187407201624422)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Height'
,p_source=>'IMAGE_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343621283436716931)
,p_name=>'P88_IMAGE_WIDTH'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(15313187407201624422)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Width'
,p_source=>'IMAGE_WIDTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343622420520716936)
,p_name=>'P88_ANSWER_01'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'1'
,p_source=>'ANSWER_01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343622793437716936)
,p_name=>'P88_ANSWER_01_CORRECT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_prompt=>'Answer 1 is Correct'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Correct;Y'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_POLL_OR_QUIZ'
,p_display_when2=>'Q'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343623149351716936)
,p_name=>'P88_ANSWER_01_SCORE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Answer 1 Score'
,p_source=>'ANSWER_01_SCORE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SCORE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i-1 d, i-1 r',
'from wwv_flow_dual100 ',
'where i < 12',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_SHOW_ENABLE_SCORING'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343623628808716937)
,p_name=>'P88_ANSWER_02'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'2'
,p_source=>'ANSWER_02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343624028344716937)
,p_name=>'P88_ANSWER_02_CORRECT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_prompt=>'Answer 2 is Correct'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Correct;Y'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_POLL_OR_QUIZ'
,p_display_when2=>'Q'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343624365379716937)
,p_name=>'P88_ANSWER_02_SCORE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Answer 2 Score'
,p_source=>'ANSWER_02_SCORE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SCORE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i-1 d, i-1 r',
'from wwv_flow_dual100 ',
'where i < 12',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_SHOW_ENABLE_SCORING'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343624821043716938)
,p_name=>'P88_ANSWER_03'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'3'
,p_source=>'ANSWER_03'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343625210892716938)
,p_name=>'P88_ANSWER_03_CORRECT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_prompt=>'Answer 3 is Correct'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Correct;Y'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_POLL_OR_QUIZ'
,p_display_when2=>'Q'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343625567083716939)
,p_name=>'P88_ANSWER_03_SCORE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Answer 3 Score'
,p_source=>'ANSWER_03_SCORE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SCORE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i-1 d, i-1 r',
'from wwv_flow_dual100 ',
'where i < 12',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_SHOW_ENABLE_SCORING'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343625948193716939)
,p_name=>'P88_ANSWER_04'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'4'
,p_source=>'ANSWER_04'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343626401774716940)
,p_name=>'P88_ANSWER_04_CORRECT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_prompt=>'Answer 4 is Correct'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Correct;Y'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_POLL_OR_QUIZ'
,p_display_when2=>'Q'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343626756215716941)
,p_name=>'P88_ANSWER_04_SCORE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Answer 4 Score'
,p_source=>'ANSWER_04_SCORE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SCORE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i-1 d, i-1 r',
'from wwv_flow_dual100 ',
'where i < 12',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_SHOW_ENABLE_SCORING'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343627227588716941)
,p_name=>'P88_ANSWER_05'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'5'
,p_source=>'ANSWER_05'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343627610030716942)
,p_name=>'P88_ANSWER_05_CORRECT'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_prompt=>'Answer 5 is Correct'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Correct;Y'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_POLL_OR_QUIZ'
,p_display_when2=>'Q'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343627972912716943)
,p_name=>'P88_ANSWER_05_SCORE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Answer 5 Score'
,p_source=>'ANSWER_05_SCORE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SCORE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i-1 d, i-1 r',
'from wwv_flow_dual100 ',
'where i < 12',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_SHOW_ENABLE_SCORING'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343628388379716944)
,p_name=>'P88_ANSWER_06'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'6'
,p_source=>'ANSWER_06'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343628835378716944)
,p_name=>'P88_ANSWER_06_CORRECT'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_prompt=>'Answer 6 is Correct'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Correct;Y'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_POLL_OR_QUIZ'
,p_display_when2=>'Q'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343629183980716945)
,p_name=>'P88_ANSWER_06_SCORE'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Answer 6 Score'
,p_source=>'ANSWER_06_SCORE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SCORE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i-1 d, i-1 r',
'from wwv_flow_dual100 ',
'where i < 12',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_SHOW_ENABLE_SCORING'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343629548239716946)
,p_name=>'P88_ANSWER_07'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'7'
,p_source=>'ANSWER_07'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343629991295716947)
,p_name=>'P88_ANSWER_07_CORRECT'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_prompt=>'Answer 7 is Correct'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Correct;Y'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_POLL_OR_QUIZ'
,p_display_when2=>'Q'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343630568029716949)
,p_name=>'P88_ANSWER_07_SCORE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Answer 7 Score'
,p_source=>'ANSWER_07_SCORE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SCORE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i-1 d, i-1 r',
'from wwv_flow_dual100 ',
'where i < 12',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_SHOW_ENABLE_SCORING'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343630961110716950)
,p_name=>'P88_ANSWER_08'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'8'
,p_source=>'ANSWER_08'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343631429915716951)
,p_name=>'P88_ANSWER_08_CORRECT'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_prompt=>'Answer 8 is Correct'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Correct;Y'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_POLL_OR_QUIZ'
,p_display_when2=>'Q'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343631776367716952)
,p_name=>'P88_ANSWER_08_SCORE'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Answer 8 Score'
,p_source=>'ANSWER_08_SCORE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SCORE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i-1 d, i-1 r',
'from wwv_flow_dual100 ',
'where i < 12',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_SHOW_ENABLE_SCORING'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343632219129716952)
,p_name=>'P88_ANSWER_09'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'9'
,p_source=>'ANSWER_09'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343632554979716953)
,p_name=>'P88_ANSWER_09_CORRECT'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_prompt=>'Answer 9 is Correct'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Correct;Y'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_POLL_OR_QUIZ'
,p_display_when2=>'Q'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343632979988716955)
,p_name=>'P88_ANSWER_09_SCORE'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Answer 9 Score'
,p_source=>'ANSWER_09_SCORE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SCORE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i-1 d, i-1 r',
'from wwv_flow_dual100 ',
'where i < 12',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_SHOW_ENABLE_SCORING'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343633359146716955)
,p_name=>'P88_ANSWER_10'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'10'
,p_source=>'ANSWER_10'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343633769937716956)
,p_name=>'P88_ANSWER_10_CORRECT'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_prompt=>'Answer 10 is Correct'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Correct;Y'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_POLL_OR_QUIZ'
,p_display_when2=>'Q'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343634236879716957)
,p_name=>'P88_ANSWER_10_SCORE'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Answer 10 Score'
,p_source=>'ANSWER_10_SCORE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SCORE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i-1 d, i-1 r',
'from wwv_flow_dual100 ',
'where i < 12',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_SHOW_ENABLE_SCORING'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343634583832716957)
,p_name=>'P88_ANSWER_11'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'11'
,p_source=>'ANSWER_11'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343634963721716958)
,p_name=>'P88_ANSWER_11_CORRECT'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_prompt=>'Answer 11 is Correct'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Correct;Y'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_POLL_OR_QUIZ'
,p_display_when2=>'Q'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343635425466716959)
,p_name=>'P88_ANSWER_11_SCORE'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Answer 11 Score'
,p_source=>'ANSWER_11_SCORE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SCORE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i-1 d, i-1 r',
'from wwv_flow_dual100 ',
'where i < 12',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_SHOW_ENABLE_SCORING'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343635788670716959)
,p_name=>'P88_ANSWER_12'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'12'
,p_source=>'ANSWER_12'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>4000
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343636205455716960)
,p_name=>'P88_ANSWER_12_CORRECT'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_prompt=>'Answer 12 is Correct'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Correct;Y'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_POLL_OR_QUIZ'
,p_display_when2=>'Q'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343636599480716960)
,p_name=>'P88_ANSWER_12_SCORE'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_api.id(15314770829907683381)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Answer 12 Score'
,p_source=>'ANSWER_12_SCORE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SCORE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i-1 d, i-1 r',
'from wwv_flow_dual100 ',
'where i < 12',
'order by 1'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_display_when=>'P88_SHOW_ENABLE_SCORING'
,p_display_when2=>'Y'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(14690190146706251208)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8343639150471716973)
,p_name=>'P88_CORRECT_ANSWER'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_api.id(15385229729202469502)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Correct Answer'
,p_source=>'CORRECT_ANSWER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8344001288955386331)
,p_name=>'P88_CAN_ADD_QUESTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8344001504235387325)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8344002183329387332)
,p_name=>'P88_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8344001504235387325)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8344010384591430985)
,p_name=>'P88_USE_SECTIONS_YN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(8344001504235387325)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8344201522665017971)
,p_name=>'P88_USE_CUSTOM_ANSWERS_YN'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_api.id(8344001504235387325)
,p_use_cache_before_default=>'NO'
,p_source=>'USE_CUSTOM_ANSWERS_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(8343996979370359613)
,p_computation_sequence=>60
,p_computation_item=>'P88_CAN_ADD_QUESTION'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   c  number  := 0;',
'begin',
'',
'for c1 in (',
'   select count(*) cnt',
'     from EBA_QPOLL_QUESTIONS',
'    where POLL_ID = :POLL_ID',
') loop',
'  c := c1.cnt;',
'end loop;',
'',
'if c >= 20 then',
'   return ''N'';',
'else',
'   return ''Y'';',
'end if;',
'',
'end;'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(8343997826491364447)
,p_computation_sequence=>60
,p_computation_item=>'P88_POLL_OR_QUIZ'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select poll_or_quiz',
'from EBA_QPOLL_POLLS',
'where id = :POLL_ID'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(8343988159671309197)
,p_computation_sequence=>60
,p_computation_item=>'P88_CORRECT_ANSWER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_correct_answer  varchar2(4000);',
'begin',
'',
'   if :P88_QUESTION_TYPE in (''TEXT'', ''TEXTAREA'') then',
'      l_correct_answer := :P88_CORRECT_ANSWER;',
'   elsif :P88_QUESTION_TYPE = ''CHECKBOX'' then',
'       l_correct_answer := eba_qpoll_quiz.delim_answers (',
'                              p_answer_01 => case when :P88_ANSWER_01_CORRECT = ''Y''',
'                                                  then :P88_ANSWER_01 end,',
'                              p_answer_02 => case when :P88_ANSWER_02_CORRECT = ''Y''',
'                                                  then :P88_ANSWER_02 end,',
'                              p_answer_03 => case when :P88_ANSWER_03_CORRECT = ''Y''',
'                                                  then :P88_ANSWER_03 end,',
'                              p_answer_04 => case when :P88_ANSWER_04_CORRECT = ''Y''',
'                                                  then :P88_ANSWER_04 end,',
'                              p_answer_05 => case when :P88_ANSWER_05_CORRECT = ''Y''',
'                                                  then :P88_ANSWER_05 end,',
'                              p_answer_06 => case when :P88_ANSWER_06_CORRECT = ''Y''',
'                                                  then :P88_ANSWER_06 end,',
'                              p_answer_07 => case when :P88_ANSWER_07_CORRECT = ''Y''',
'                                                  then :P88_ANSWER_07 end,',
'                              p_answer_08 => case when :P88_ANSWER_08_CORRECT = ''Y''',
'                                                  then :P88_ANSWER_08 end,',
'                              p_answer_09 => case when :P88_ANSWER_09_CORRECT = ''Y''',
'                                                  then :P88_ANSWER_09 end,',
'                              p_answer_10 => case when :P88_ANSWER_10_CORRECT = ''Y''',
'                                                  then :P88_ANSWER_10 end,',
'                              p_answer_11 => case when :P88_ANSWER_11_CORRECT = ''Y''',
'                                                  then :P88_ANSWER_11 end,',
'                              p_answer_12 => case when :P88_ANSWER_12_CORRECT = ''Y''',
'                                                  then :P88_ANSWER_12 end );',
'   elsif :P88_QUESTION_TYPE = ''RADIO_GROUP'' then',
'      if :P88_ANSWER_01_CORRECT = ''Y'' then',
'         l_correct_answer := :P88_ANSWER_01;',
'      elsif :P88_ANSWER_02_CORRECT = ''Y'' then',
'         l_correct_answer := :P88_ANSWER_02;',
'      elsif :P88_ANSWER_03_CORRECT = ''Y'' then',
'         l_correct_answer := :P88_ANSWER_03;',
'      elsif :P88_ANSWER_04_CORRECT = ''Y'' then',
'         l_correct_answer := :P88_ANSWER_04;',
'      elsif :P88_ANSWER_05_CORRECT = ''Y'' then',
'         l_correct_answer := :P88_ANSWER_05;',
'      elsif :P88_ANSWER_06_CORRECT = ''Y'' then',
'         l_correct_answer := :P88_ANSWER_06;',
'      elsif :P88_ANSWER_07_CORRECT = ''Y'' then',
'         l_correct_answer := :P88_ANSWER_07;',
'      elsif :P88_ANSWER_08_CORRECT = ''Y'' then',
'         l_correct_answer := :P88_ANSWER_08;',
'      elsif :P88_ANSWER_09_CORRECT = ''Y'' then',
'         l_correct_answer := :P88_ANSWER_09;',
'      elsif :P88_ANSWER_10_CORRECT = ''Y'' then',
'         l_correct_answer := :P88_ANSWER_10;',
'      elsif :P88_ANSWER_11_CORRECT = ''Y'' then',
'         l_correct_answer := :P88_ANSWER_11;',
'      elsif :P88_ANSWER_12_CORRECT = ''Y'' then',
'         l_correct_answer := :P88_ANSWER_12;',
'      end if;',
'   elsif :P88_QUESTION_TYPE = ''PICK_TWO'' then',
'      null; -- not implemented yet',
'   else',
'      for i in 1..apex_application.g_f01.count loop',
'         l_correct_answer := apex_application.g_f01(i);',
'      end loop;',
'   end if;',
'',
'   return l_correct_answer;',
'',
'end;'))
,p_compute_when=>'P88_POLL_OR_QUIZ'
,p_compute_when_text=>'Q'
,p_compute_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(8343988667317312481)
,p_computation_sequence=>60
,p_computation_item=>'P88_ENABLE_SCORE_YN'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'N'
,p_compute_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P88_SHOW_ENABLE_SCORING = ''N'' or ',
':P88_QUESTION_TYPE in (''TEXTAREA'',''TEXT'',''CHECKBOX'',''STACK'',''ALLOCATION'')'))
,p_compute_when_text=>'PLSQL'
,p_compute_when_type=>'EXPRESSION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8344286745084420929)
,p_validation_name=>'P88_CORRECT_ANSWER not null'
,p_validation_sequence=>10
,p_validation=>'P88_CORRECT_ANSWER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Correct Answer must be provided for Polls that are quizzes.'
,p_validation_condition=>'P88_POLL_OR_QUIZ'
,p_validation_condition2=>'Q'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_api.id(8343639150471716973)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8343989221421318109)
,p_validation_name=>'For pick one, can only pick one'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if nvl(length(:P88_ANSWER_01_CORRECT),0) + nvl(length(:P88_ANSWER_02_CORRECT),0) +',
'   nvl(length(:P88_ANSWER_03_CORRECT),0) + nvl(length(:P88_ANSWER_04_CORRECT),0) +',
'   nvl(length(:P88_ANSWER_05_CORRECT),0) + nvl(length(:P88_ANSWER_06_CORRECT),0) +',
'   nvl(length(:P88_ANSWER_07_CORRECT),0) + nvl(length(:P88_ANSWER_08_CORRECT),0) +',
'   nvl(length(:P88_ANSWER_09_CORRECT),0) + nvl(length(:P88_ANSWER_10_CORRECT),0) +',
'   nvl(length(:P88_ANSWER_11_CORRECT),0) + nvl(length(:P88_ANSWER_12_CORRECT),0) > 1',
'then return false;',
'else return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Can only select one correct answer.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P88_POLL_OR_QUIZ = ''Q'' and',
':P88_QUESTION_TYPE = ''RADIO_GROUP'''))
,p_validation_condition2=>'SQL'
,p_validation_condition_type=>'EXPRESSION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(307849642727051853)
,p_validation_name=>'For pick, need to provide answers'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P88_ANSWER_01 is not null or',
'   :P88_ANSWER_02 is not null or',
'   :P88_ANSWER_03 is not null or',
'   :P88_ANSWER_04 is not null or',
'   :P88_ANSWER_05 is not null or',
'   :P88_ANSWER_06 is not null or',
'   :P88_ANSWER_07 is not null or',
'   :P88_ANSWER_08 is not null or',
'   :P88_ANSWER_09 is not null or',
'   :P88_ANSWER_10 is not null or',
'   :P88_ANSWER_11 is not null or',
'   :P88_ANSWER_12 is not null',
'then return true;',
'else return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Must provide answers to display.'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':REQUEST in (''ADD_QUESTION'',''SAVE'') and',
':P88_QUESTION_TYPE in (''RADIO_GROUP'',''CHECKBOX'',''STACK'',''ALLOCATION'')'))
,p_validation_condition2=>'SQL'
,p_validation_condition_type=>'EXPRESSION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8143325477215702774)
,p_validation_name=>'Ensure Unique Display Sequence'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_sequence',
'  from eba_qpoll_questions ',
' where POLL_ID = :POLL_ID',
'   and display_sequence = :P88_DISPLAY_SEQUENCE;'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>'The provided sequence number is already in use for this poll''s questions. Please use a different sequence number.'
,p_when_button_pressed=>wwv_flow_api.id(8343615875199716909)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8327702035113114745)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8343615474927716902)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8327702138761114746)
,p_event_id=>wwv_flow_api.id(8327702035113114745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8343752290623836198)
,p_name=>'show hide custom answers'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P88_QUESTION_TYPE'
,p_condition_element=>'P88_QUESTION_TYPE'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'RADIO_GROUP, PICK_TWO, CHECKBOX, STACK, ALLOCATION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343752663518836209)
,p_event_id=>wwv_flow_api.id(8343752290623836198)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15314770829907683381)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343753231763836209)
,p_event_id=>wwv_flow_api.id(8343752290623836198)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15314770829907683381)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343753732944836210)
,p_event_id=>wwv_flow_api.id(8343752290623836198)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15314813018609825105)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343754198678836210)
,p_event_id=>wwv_flow_api.id(8343752290623836198)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15314813018609825105)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8343754732890838051)
,p_name=>'Show new answers'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P88_QUESTION_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343755575547838051)
,p_event_id=>wwv_flow_api.id(8343754732890838051)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15314813018609825105)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8343755968851839799)
,p_name=>'show hide correct answer'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P88_QUESTION_TYPE'
,p_condition_element=>'P88_QUESTION_TYPE'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'TEXTAREA,TEXT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P88_POLL_OR_QUIZ'
,p_display_when_cond2=>'Q'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343756431545839799)
,p_event_id=>wwv_flow_api.id(8343755968851839799)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15385229729202469502)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343756883283839800)
,p_event_id=>wwv_flow_api.id(8343755968851839799)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15385229729202469502)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8343757341552840893)
,p_name=>'hide canned for text and textarea'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P88_QUESTION_TYPE'
,p_condition_element=>'P88_QUESTION_TYPE'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'TEXT,TEXTAREA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343757674175840897)
,p_event_id=>wwv_flow_api.id(8343757341552840893)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15314813018609825105)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343758203523840897)
,p_event_id=>wwv_flow_api.id(8343757341552840893)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P88_ANSWERS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343758672627840898)
,p_event_id=>wwv_flow_api.id(8343757341552840893)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P88_ANSWERS'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8343759120257842214)
,p_name=>'show/hide enable scoring for question types'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P88_QUESTION_TYPE'
,p_condition_element=>'P88_QUESTION_TYPE'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'TEXTAREA,TEXT,CHECKBOX'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343759464547842319)
,p_event_id=>wwv_flow_api.id(8343759120257842214)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P88_ENABLE_SCORE_YN'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343760024039842323)
,p_event_id=>wwv_flow_api.id(8343759120257842214)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P88_ENABLE_SCORE_YN'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8343760355473843925)
,p_name=>'show/hide scores'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P88_ENABLE_SCORE_YN'
,p_condition_element=>'P88_ENABLE_SCORE_YN'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343760754571843926)
,p_event_id=>wwv_flow_api.id(8343760355473843925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P88_ANSWER_01_SCORE,P88_ANSWER_02_SCORE,P88_ANSWER_03_SCORE,P88_ANSWER_04_SCORE,P88_ANSWER_05_SCORE,P88_ANSWER_06_SCORE,P88_ANSWER_07_SCORE,P88_ANSWER_08_SCORE,P88_ANSWER_09_SCORE,P88_ANSWER_10_SCORE,P88_ANSWER_11_SCORE,P88_ANSWER_12_SCORE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343761259429843927)
,p_event_id=>wwv_flow_api.id(8343760355473843925)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P88_ANSWER_01_SCORE,P88_ANSWER_02_SCORE,P88_ANSWER_03_SCORE,P88_ANSWER_04_SCORE,P88_ANSWER_05_SCORE,P88_ANSWER_06_SCORE,P88_ANSWER_07_SCORE,P88_ANSWER_08_SCORE,P88_ANSWER_09_SCORE,P88_ANSWER_10_SCORE,P88_ANSWER_11_SCORE,P88_ANSWER_12_SCORE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343761844956843927)
,p_event_id=>wwv_flow_api.id(8343760355473843925)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15314813018609825105)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343762312304843927)
,p_event_id=>wwv_flow_api.id(8343760355473843925)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15314813018609825105)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8343830855720911733)
,p_name=>'handle scoring'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P88_SHOW_ENABLE_SCORING'
,p_display_when_cond2=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343832577322912514)
,p_event_id=>wwv_flow_api.id(8343830855720911733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P88_ENABLE_SCORE_YN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8343831782140911739)
,p_event_id=>wwv_flow_api.id(8343830855720911733)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P88_ENABLE_SCORE_YN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8344118129217744053)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_QPOLL_QUESTIONS'
,p_attribute_02=>'EBA_QPOLL_QUESTIONS'
,p_attribute_03=>'P88_ID'
,p_attribute_04=>'ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8343998551816370598)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set POLL_OR_QUIZ and SHOW_ENABLE_SCORING'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select poll_or_quiz, score_type, use_sections_yn',
'     from EBA_QPOLL_POLLS',
'    where id = :POLL_ID',
') loop',
'   :P88_POLL_OR_QUIZ := c1.poll_or_quiz;',
'',
'   if c1.poll_or_quiz =''Q'' or c1.score_type = ''N'' then',
'      :P88_SHOW_ENABLE_SCORING :=  ''N'';',
'   else',
'      :P88_SHOW_ENABLE_SCORING :=  ''Y'';',
'   end if;',
'   ',
'   :P88_USE_SECTIONS_YN := c1.use_sections_yn;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8344184526060922978)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set correct answer checkboxes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_delim  varchar2(1);',
'begin',
'   if :P88_QUESTION_TYPE = ''CHECKBOX'' then',
'      l_delim := substr(:P88_CORRECT_ANSWER,1,1);',
'      if instr(:P88_CORRECT_ANSWER,l_delim||:P88_ANSWER_01||l_delim) > 0 then',
'         :P88_ANSWER_01_CORRECT := ''Y'';',
'      end if;',
'      if instr(:P88_CORRECT_ANSWER,l_delim||:P88_ANSWER_02||l_delim) > 0 then',
'         :P88_ANSWER_02_CORRECT := ''Y'';',
'      end if;',
'      if instr(:P88_CORRECT_ANSWER,l_delim||:P88_ANSWER_03||l_delim) > 0 then',
'         :P88_ANSWER_03_CORRECT := ''Y'';',
'      end if;',
'      if instr(:P88_CORRECT_ANSWER,l_delim||:P88_ANSWER_04||l_delim) > 0 then',
'         :P88_ANSWER_04_CORRECT := ''Y'';',
'      end if;',
'      if instr(:P88_CORRECT_ANSWER,l_delim||:P88_ANSWER_05||l_delim) > 0 then',
'         :P88_ANSWER_05_CORRECT := ''Y'';',
'      end if;',
'      if instr(:P88_CORRECT_ANSWER,l_delim||:P88_ANSWER_06||l_delim) > 0 then',
'         :P88_ANSWER_06_CORRECT := ''Y'';',
'      end if;',
'      if instr(:P88_CORRECT_ANSWER,l_delim||:P88_ANSWER_07||l_delim) > 0 then',
'         :P88_ANSWER_07_CORRECT := ''Y'';',
'      end if;',
'      if instr(:P88_CORRECT_ANSWER,l_delim||:P88_ANSWER_08||l_delim) > 0 then',
'         :P88_ANSWER_08_CORRECT := ''Y'';',
'      end if;',
'      if instr(:P88_CORRECT_ANSWER,l_delim||:P88_ANSWER_09||l_delim) > 0 then',
'         :P88_ANSWER_09_CORRECT := ''Y'';',
'      end if;',
'      if instr(:P88_CORRECT_ANSWER,l_delim||:P88_ANSWER_10||l_delim) > 0 then',
'         :P88_ANSWER_10_CORRECT := ''Y'';',
'      end if;',
'      if instr(:P88_CORRECT_ANSWER,l_delim||:P88_ANSWER_11||l_delim) > 0 then',
'         :P88_ANSWER_11_CORRECT := ''Y'';',
'      end if;',
'      if instr(:P88_CORRECT_ANSWER,l_delim||:P88_ANSWER_12||l_delim) > 0 then',
'         :P88_ANSWER_12_CORRECT := ''Y'';',
'      end if;',
'   elsif :P88_USE_CUSTOM_ANSWERS_YN = ''Y'' and :P88_QUESTION_TYPE not in (''TEXT'',''TEXTAREA'') then',
'      if :P88_ANSWER_01 = :P88_CORRECT_ANSWER then',
'         :P88_ANSWER_01_CORRECT := ''Y'';',
'      elsif :P88_ANSWER_02 = :P88_CORRECT_ANSWER then',
'         :P88_ANSWER_02_CORRECT := ''Y'';',
'      elsif :P88_ANSWER_03 = :P88_CORRECT_ANSWER then',
'         :P88_ANSWER_03_CORRECT := ''Y'';',
'      elsif :P88_ANSWER_04 = :P88_CORRECT_ANSWER then',
'         :P88_ANSWER_04_CORRECT := ''Y'';',
'      elsif :P88_ANSWER_05 = :P88_CORRECT_ANSWER then',
'         :P88_ANSWER_05_CORRECT := ''Y'';',
'      elsif :P88_ANSWER_06 = :P88_CORRECT_ANSWER then',
'         :P88_ANSWER_06_CORRECT := ''Y'';',
'      elsif :P88_ANSWER_07 = :P88_CORRECT_ANSWER then',
'         :P88_ANSWER_07_CORRECT := ''Y'';',
'      elsif :P88_ANSWER_08 = :P88_CORRECT_ANSWER then',
'         :P88_ANSWER_08_CORRECT := ''Y'';',
'      elsif :P88_ANSWER_09 = :P88_CORRECT_ANSWER then',
'         :P88_ANSWER_09_CORRECT := ''Y'';',
'      elsif :P88_ANSWER_10 = :P88_CORRECT_ANSWER then',
'         :P88_ANSWER_10_CORRECT := ''Y'';         ',
'      elsif :P88_ANSWER_11 = :P88_CORRECT_ANSWER then',
'         :P88_ANSWER_11_CORRECT := ''Y'';         ',
'      elsif :P88_ANSWER_12 = :P88_CORRECT_ANSWER then',
'         :P88_ANSWER_12_CORRECT := ''Y'';                  ',
'      end if;',
'   end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'P88_POLL_OR_QUIZ'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Q'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(669400360684738441)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear answers if now canned answers'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P88_ANSWER_01 := null;',
':P88_ANSWER_02 := null;',
':P88_ANSWER_03 := null;',
':P88_ANSWER_03 := null;',
':P88_ANSWER_04 := null;',
':P88_ANSWER_06 := null;',
':P88_ANSWER_07 := null;',
':P88_ANSWER_08 := null;',
':P88_ANSWER_09 := null;',
':P88_ANSWER_10 := null;',
':P88_ANSWER_11 := null;',
':P88_ANSWER_12 := null;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P88_QUESTION_TYPE like ''RANGE_%'' or',
':P88_QUESTION_TYPE in (''YES_NO'',''TRUE_FALSE'',''GRADE'',''INTUITIVE'',''LIKE'',''LOW_HIGH'',''HOT_COLD'',''MOSCOW'')'))
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'SQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8343989496086321124)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set score for canned answers'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in 1..apex_application.g_f02.count loop',
'   if i = 1 then',
'      :P88_ANSWER_01_SCORE := apex_application.g_f02(i);',
'   elsif i = 2 then',
'      :P88_ANSWER_02_SCORE := apex_application.g_f02(i);',
'   elsif i = 3 then',
'      :P88_ANSWER_03_SCORE := apex_application.g_f02(i);',
'   elsif i = 4 then',
'      :P88_ANSWER_04_SCORE := apex_application.g_f02(i);',
'   elsif i = 5 then',
'      :P88_ANSWER_05_SCORE := apex_application.g_f02(i);',
'   elsif i = 6 then',
'      :P88_ANSWER_06_SCORE := apex_application.g_f02(i);',
'   elsif i = 7 then',
'      :P88_ANSWER_07_SCORE := apex_application.g_f02(i);',
'   elsif i = 8 then',
'      :P88_ANSWER_08_SCORE := apex_application.g_f02(i);',
'   elsif i = 9 then',
'      :P88_ANSWER_09_SCORE := apex_application.g_f02(i);',
'   elsif i = 10 then',
'      :P88_ANSWER_10_SCORE := apex_application.g_f02(i);',
'   elsif i = 11 then',
'      :P88_ANSWER_11_SCORE := apex_application.g_f02(i);',
'   elsif i = 12 then',
'      :P88_ANSWER_12_SCORE := apex_application.g_f02(i);',
'   end if;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(8343615875199716909)
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P88_SHOW_ENABLE_SCORING = ''Y'' and',
':P88_ENABLE_SCORE_YN = ''Y'' and',
':P88_QUESTION_TYPE not in (''RADIO_GROUP'', ''PICK_TWO'', ''CHECKBOX'',''TEXTAREA'', ''TEXT'', ''STACK'',''ALLOCATION'')'))
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8343649720399718258)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'add question'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  l_image_filename      varchar2(400);',
'  l_image_mimetype      varchar2(255);',
'  l_image_blob          blob;',
'  l_image_last_updated  date;',
'begin',
'  ',
'if :P88_IMAGE_BLOB is not null then',
'  select filename,',
'         mime_type,',
'         blob_content,',
'         created_on',
'    into l_image_filename,',
'         l_image_mimetype,',
'         l_image_blob,',
'         l_image_last_updated',
'    from apex_application_temp_files',
'   where name = :P88_IMAGE_BLOB;',
'end if;',
'',
'apex_debug.message(''before insert into EBA_QPOLL_QUESTIONS'');',
'',
'insert into EBA_QPOLL_QUESTIONS',
'(POLL_ID, ',
'SECTION_ID,',
'DISPLAY_SEQUENCE,',
'QUESTION_TYPE,',
'QUESTION, ',
'mandatory_yn,',
'answer_01,',
'answer_02,',
'answer_03,',
'answer_04,',
'answer_05,',
'answer_06,',
'answer_07,',
'answer_08,',
'answer_09,',
'answer_10,',
'answer_11,',
'answer_12,',
'correct_answer,',
'enable_score_yn,',
'answer_01_score,',
'answer_02_score,',
'answer_03_score,',
'answer_04_score,',
'answer_05_score,',
'answer_06_score,',
'answer_07_score,',
'answer_08_score,',
'answer_09_score,',
'answer_10_score,',
'answer_11_score,',
'answer_12_score,',
'image_height,',
'image_width,',
'image_filename,',
'image_mimetype,',
'image_blob,',
'image_last_updated',
')',
'values',
'(:POLL_ID,',
':P88_SECTION_ID,',
':P88_DISPLAY_SEQUENCE,',
':P88_QUESTION_TYPE,',
':P88_QUESTION, ',
'case when :P88_POLL_OR_QUIZ = ''Q'' then ''N'' else :P88_MANDATORY_YN end,',
':P88_ANSWER_01,',
':P88_ANSWER_02,',
':P88_ANSWER_03,',
':P88_ANSWER_04,',
':P88_ANSWER_05,',
':P88_ANSWER_06,',
':P88_ANSWER_07,',
':P88_ANSWER_08,',
':P88_ANSWER_09,',
':P88_ANSWER_10,',
':P88_ANSWER_11,',
':P88_ANSWER_12,',
':P88_CORRECT_ANSWER,',
':P88_ENABLE_SCORE_YN,',
':P88_ANSWER_01_SCORE,',
':P88_ANSWER_02_SCORE,',
':P88_ANSWER_03_SCORE,',
':P88_ANSWER_04_SCORE,',
':P88_ANSWER_05_SCORE,',
':P88_ANSWER_06_SCORE,',
':P88_ANSWER_07_SCORE,',
':P88_ANSWER_08_SCORE,',
':P88_ANSWER_09_SCORE,',
':P88_ANSWER_10_SCORE,',
':P88_ANSWER_11_SCORE,',
':P88_ANSWER_12_SCORE,',
':P88_IMAGE_HEIGHT,',
':P88_IMAGE_WIDTH,',
'l_image_filename,',
'l_image_mimetype,',
'l_image_blob,',
'l_image_last_updated',
' );',
'commit;',
'',
'apex_debug.message(''after insert into EBA_QPOLL_QUESTIONS'');',
'',
'if :P88_IMAGE_BLOB is not null then',
'    delete from apex_application_temp_files',
'     where name = :P88_IMAGE_BLOB;',
'    commit;',
'end if;',
'',
':P88_QUESTION := null;',
':P88_ANSWER_01 := null;',
':P88_ANSWER_02 := null;',
':P88_ANSWER_03 := null;',
':P88_ANSWER_04 := null;',
':P88_ANSWER_05 := null;',
':P88_ANSWER_06 := null;',
':P88_ANSWER_07 := null;',
':P88_ANSWER_08 := null;',
':P88_ANSWER_09 := null;',
':P88_ANSWER_10 := null;',
':P88_ANSWER_11 := null;',
':P88_ANSWER_12 := null;',
':P88_ANSWER_01_CORRECT := null;',
':P88_ANSWER_02_CORRECT := null;',
':P88_ANSWER_03_CORRECT := null;',
':P88_ANSWER_04_CORRECT := null;',
':P88_ANSWER_05_CORRECT := null;',
':P88_ANSWER_06_CORRECT := null;',
':P88_ANSWER_07_CORRECT := null;',
':P88_ANSWER_08_CORRECT := null;',
':P88_ANSWER_09_CORRECT := null;',
':P88_ANSWER_10_CORRECT := null;',
':P88_ANSWER_11_CORRECT := null;',
':P88_ANSWER_12_CORRECT := null;',
':P88_CORRECT_ANSWER := null;',
':P88_ANSWER_01_SCORE := null;',
':P88_ANSWER_02_SCORE := null;',
':P88_ANSWER_03_SCORE := null;',
':P88_ANSWER_04_SCORE := null;',
':P88_ANSWER_05_SCORE := null;',
':P88_ANSWER_06_SCORE := null;',
':P88_ANSWER_07_SCORE := null;',
':P88_ANSWER_08_SCORE := null;',
':P88_ANSWER_09_SCORE := null;',
':P88_ANSWER_10_SCORE := null;',
':P88_ANSWER_11_SCORE := null;',
':P88_ANSWER_12_SCORE := null;',
':P88_IMAGE_BLOB      := null;',
':P88_IMAGE_HEIGHT    := null;',
':P88_IMAGE_WIDTH     := null;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Could not add question.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'''ADD_QUESTION'',''ADD_ANOTHER'''
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Question added!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8344286859590426522)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_QPOLL_QUESTIONS'
,p_attribute_02=>'EBA_QPOLL_QUESTIONS'
,p_attribute_03=>'P88_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8349853158241292172)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove image'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update EBA_QPOLL_QUESTIONS',
'set IMAGE_BLOB = null, IMAGE_CHARSET  = null, IMAGE_MIMETYPE = null, IMAGE_FILENAME = null, IMAGE_LAST_UPDATED = null',
'where id = :P88_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(8349852836340289663)
,p_process_success_message=>'Question Image has been successfully removed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8327702400953114749)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :REQUEST = ''ADD_ANOTHER'' then',
'   return FALSE;',
'end if;',
'',
'for c1 in (',
'   select count(*) cnt',
'     from eba_qpoll_questions',
'    where poll_id = :POLL_ID',
') loop',
'   if c1.cnt > 1 and :REQUEST != ''REMOVE_IMAGE'' then',
'      return TRUE;',
'   end if;',
'end loop;',
'',
'return FALSE;',
'    '))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
