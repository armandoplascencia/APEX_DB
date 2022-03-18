prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'&CAT_TITLE.'
,p_page_mode=>'MODAL'
,p_step_title=>'&CAT_TITLE.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'   table.project_table td span.status_indicator,',
'       span.status_indicator  {',
'       display: block;',
'       min-width: 30px;',
'       max-width: 60px;',
'       text-align: center;',
'       padding: 0 5px;',
'       height: 12px;',
'       -moz-border-radius: 6px;',
'       -webkit-border-radius: 6px;',
'       -moz-border-radius: 6px;',
'       background-color: #CCC;',
'       border: 1px solid #AAA;',
'       border: 1px solid rgba(0,0,0,.25);',
'       font: bold 10px/12px arial, sans-serif',
'       }',
'</style>'))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'Supply a &CAT_TITLE_LC. name, status, an optional display order sequence value, and click the <strong>Create &CAT_TITLE.</strong> button to create a new project &CAT_TITLE_LC.. Click the <strong>Apply Changes</strong> button after editing an existing'
||' project category or click the <strong>Delete</strong> button to remove an existing &CAT_TITLE_LC.. Trying to delete a &CAT_TITLE_LC. that is already assigned to one or more projects will result in a integrity constraint violation error. Be sure to r'
||'eassign the &CAT_TITLE_LC. value of all projects assigned to the &CAT_TITLE_LC. you would like to delete before trying to delete the &CAT_TITLE_LC..'
,p_last_upd_yyyymmddhh24miss=>'20190401154543'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(509379218873008101)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9012108524183983994)
,p_plug_name=>'&CAT_TITLE.'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9012112725646984017)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9021987938616668425)
,p_name=>'Projects Associated with Identified &CAT_TITLE.'
,p_template=>wwv_flow_api.id(6781111273838890791)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    project,',
'    (   select category',
'        from eba_proj_status_cats c',
'        where p.cat_id = c.id ) category,',
'    (   select count(*)',
'        from eba_proj_status_links l',
'        where p.id = l.project_id) links,',
'    nvl( (  select count(*)',
'            from eba_proj_status_updates u',
'            where p.id = u.project_id',
'                and u.include_on_status_rpt = ''Y''), 0) updates,',
'    decode( (   select count(*)',
'                from eba_proj_status_ms ms',
'                where ms.project_id = p.id',
'                    and ms.milestone_status = ''Open''),0,''No'',''Yes'') open_milestones,',
'    (   select ''<span class="status_indicator" style="''',
'            ||''background-color: ''||apex_escape.html(col.color_code)',
'            ||'';'' ||''">''||apex_escape.html(c.status_short_desc)',
'            ||''</span>''',
'        from eba_proj_status_codes c,',
'            eba_proj_color_codes col',
'        where c.id = p.project_status',
'            and col.id = c.color_code_id ) project_status',
'from eba_proj_status p',
'where p.cat_id = :P7_ID',
'order by 2,1'))
,p_display_when_condition=>'P7_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'1'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
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
 p_id=>wwv_flow_api.id(9021988816810668429)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>7
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9021988730671668429)
,p_query_column_id=>2
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>2
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:#ID#'
,p_column_linktext=>'#PROJECT#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9021988130360668428)
,p_query_column_id=>3
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>1
,p_column_heading=>'&CAT_TITLE.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9021988226830668428)
,p_query_column_id=>4
,p_column_alias=>'LINKS'
,p_column_display_sequence=>4
,p_column_heading=>'Links'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9021988325461668428)
,p_query_column_id=>5
,p_column_alias=>'UPDATES'
,p_column_display_sequence=>5
,p_column_heading=>'Updates'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7973468392159017358)
,p_query_column_id=>6
,p_column_alias=>'OPEN_MILESTONES'
,p_column_display_sequence=>6
,p_column_heading=>'Open Milestones'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(9021988616174668428)
,p_query_column_id=>7
,p_column_alias=>'PROJECT_STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9012109027221983997)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(509379218873008101)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9012108846235983997)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(509379218873008101)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9012108719852983997)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(509379218873008101)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create &CAT_TITLE.'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9012108922887983997)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(509379218873008101)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7151440285322040097)
,p_name=>'P7_DISPLAY_SEQUENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9012108524183983994)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_seqno number;',
'begin',
'    select max(nvl(DISPLAY_SEQUENCE,0)) + 1 into l_seqno from EBA_PROJ_STATUS_CATS;',
'    return l_seqno;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Display Sequence'
,p_source=>'DISPLAY_SEQUENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>8
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7151471203001196658)
,p_name=>'P7_IS_ACTIVE_YN'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9012108524183983994)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Is Active?'
,p_source=>'IS_ACTIVE_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9012109939451984002)
,p_name=>'P7_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9012108524183983994)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9012110135099984004)
,p_name=>'P7_CATEGORY'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9012108524183983994)
,p_use_cache_before_default=>'NO'
,p_prompt=>'&CAT_TITLE.'
,p_source=>'CATEGORY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(509379378264008102)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9012109027221983997)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(509379421246008103)
,p_event_id=>wwv_flow_api.id(509379378264008102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9012110323714984004)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_PROJ_STATUS_CATS'
,p_attribute_02=>'EBA_PROJ_STATUS_CATS'
,p_attribute_03=>'P7_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_process_error_message=>'Unable to fetch row.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9012110533106984005)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_PROJ_STATUS_CATS'
,p_attribute_02=>'EBA_PROJ_STATUS_CATS'
,p_attribute_03=>'P7_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'Unable to process row of table EBA_PROJ_STATUS_CATS.'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9012110724268984005)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(9012108922887983997)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(509379595131008104)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
