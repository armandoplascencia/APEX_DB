prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Projects to view in navigator'
,p_step_title=>'Projects to view in navigator'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'Select the types of projects you would like displayed in your left-hand navigation menu (open projects only or all projects). Click the <strong>Apply Changes</strong> button to set the preference value and vary the projects displayed in your menu.'
,p_last_upd_yyyymmddhh24miss=>'20190905080427'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5401683552284019681)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5406314294883659768)
,p_plug_name=>'Navigation Menu Preferences'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14234093115549172780)
,p_name=>'Project Status Codes'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status_short_desc,',
'    case',
'        when :P33_NAV_MENU_PREFERENCE = ''ALL'' then',
'            ''Displayed''',
'        else',
'            decode(is_closed_status, ''Y'', ''Not displayed'', ''N'', ''Displayed'', is_closed_status)',
'    end display_in_tree,',
'    decode(IS_DESIRABLE_YN,null,''Yes'',''Y'',''Yes'',''N'',''No'',''Unknown'') IS_DESIRABLE,',
'    decode(is_closed_status,''Y'',''Yes'',''N'',''No'',is_closed_status) is_closed_status,',
'    (select c.color_name from eba_proj_color_codes c where c.id = sc.color_code_id) color,',
'    (select count(*) from eba_proj_status s where s.project_status = sc.id) as project_count',
'from EBA_PROJ_STATUS_CODES  sc',
'where IS_ACTIVE_YN = ''Y''',
'order by display_sequence'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>150
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14234104979189172789)
,p_query_column_id=>1
,p_column_alias=>'STATUS_SHORT_DESC'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14234294848906221308)
,p_query_column_id=>2
,p_column_alias=>'DISPLAY_IN_TREE'
,p_column_display_sequence=>3
,p_column_heading=>'Display In Tree'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14234105363946172789)
,p_query_column_id=>3
,p_column_alias=>'IS_DESIRABLE'
,p_column_display_sequence=>2
,p_column_heading=>'Is Desirable'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14234105809056172790)
,p_query_column_id=>4
,p_column_alias=>'IS_CLOSED_STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Is Closed Status'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14234106177059172790)
,p_query_column_id=>5
,p_column_alias=>'COLOR'
,p_column_display_sequence=>5
,p_column_heading=>'Color'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14234106558407172791)
,p_query_column_id=>6
,p_column_alias=>'PROJECT_COUNT'
,p_column_display_sequence=>6
,p_column_heading=>'Projects'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5390801063088692697)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:130:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5390800970257692696)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(5390801211836692699)
,p_branch_name=>'Return to preferences page'
,p_branch_action=>'f?p=&APP_ID.:130:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5390800811104692695)
,p_name=>'P33_NAV_MENU_PREFERENCE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5406314294883659768)
,p_item_default=>'OPEN'
,p_prompt=>'Navigation Menu Preference'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select preference_value',
'from eba_proj_user_preferences p',
'where upper(p.username) = :APP_USER',
'    and p.preference_name = ''NAVIGATION MENU'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:All Projects;ALL,Open Projects;OPEN'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1897958750994419866)
,p_name=>'Refresh Status Codes Region'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_NAV_MENU_PREFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1897958971303419868)
,p_event_id=>wwv_flow_api.id(1897958750994419866)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P33_NAV_MENU_PREFERENCE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1897958885097419867)
,p_event_id=>wwv_flow_api.id(1897958750994419866)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14234093115549172780)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5390801136972692698)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Navigation Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'merge into eba_proj_user_preferences p',
'using ( select :APP_USER username, ''NAVIGATION MENU'' preference_name, :P33_NAV_MENU_PREFERENCE preference_value',
'        from dual ) src',
'on ( p.username = src.username and p.preference_name = src.preference_name )',
'when matched then',
'    update set p.preference_value = src.preference_value',
'when not matched then',
'    insert ( username, preference_name, preference_value )',
'    values ( src.username, src.preference_name, src.preference_value );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Preference saved.'
);
wwv_flow_api.component_end;
end;
/
