prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Preview Updated Users'
,p_step_title=>'Preview Updated Users'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243988833596300)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_protection_level=>'C'
,p_help_text=>'<p>When closing all Action Items that are associated to a given Milestone, the Milestone will also be marked as completed.</p>'
,p_last_upd_yyyymmddhh24miss=>'20190904140203'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23048563082447175009)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(23298264193137212585)
,p_name=>'Updates'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    n001 as user_id,',
'    c001 as action,',
'    c002 as old_value,',
'    c003 as new_value,',
'    c004 as username',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_USERS''',
'order by 5;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No updatable Action Item(s) found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2822192297611451094)
,p_query_column_id=>1
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2825260963001082982)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>1
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2825261338334082982)
,p_query_column_id=>3
,p_column_alias=>'OLD_VALUE'
,p_column_display_sequence=>2
,p_column_heading=>'Old Value'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2825261712762082983)
,p_query_column_id=>4
,p_column_alias=>'NEW_VALUE'
,p_column_display_sequence=>3
,p_column_heading=>'New Value'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2822192341493451095)
,p_query_column_id=>5
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>5
,p_column_heading=>'User'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23349107896328614109)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2825265448762083005)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP,11::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2825265833695083008)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_USERS'''))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2825268000079083018)
,p_branch_action=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2825264384824082989)
,p_name=>'P16_ACTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23349107896328614109)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(2825266360462083014)
,p_computation_sequence=>10
,p_computation_item=>'P16_ACTION'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    distinct c001 as action',
'from',
'    apex_collections',
'where',
'    collection_name = ''PREVIEW_USERS'''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2825267471034083016)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Users'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_access_level_id number;',
'    l_country_id      number;',
'    l_region_id       number;',
'begin',
'    for c1 in',
'    (',
'        select',
'            n001 as user_id,',
'            c001 as action,',
'            c002 as old_value,',
'            c003 as new_value,',
'            c004 as username',
'        from',
'            apex_collections',
'        where',
'            collection_name = ''PREVIEW_USERS''',
'    )',
'    loop',
'        if c1.action = ''Change Access Level'' then',
'            select id into l_access_level_id from eba_proj_status_access_levels where access_level = c1.new_value;',
'            update eba_proj_status_users set access_level_id = l_access_level_id where id = c1.user_id;',
'        elsif c1.action = ''Change Country'' then',
'            select id into l_country_id from eba_proj_countries where country_name = c1.new_value;',
'            select region_id into l_region_id from eba_proj_countries where country_name = c1.new_value;',
'            update eba_proj_status_users set country_id = l_country_id where id = c1.user_id;',
'            update eba_proj_status_users set region_id = l_region_id where id = c1.user_id;',
'        elsif c1.action = ''Change Timezone'' then',
'            update eba_proj_status_users set home_timezone = c1.new_value where id = c1.user_id;',
'        elsif c1.action = ''Change Background Check(s)'' then',
'            update eba_proj_status_users set bg_checks = c1.new_value where id = c1.user_id;',
'        elsif c1.action = ''Change Skillsets'' then',
'            update eba_proj_status_users set skillsets = c1.new_value where id = c1.user_id;',
'        elsif c1.action = ''Change Team Group(s)'' then',
'            update eba_proj_status_users set team_groups = c1.new_value where id = c1.user_id;',
'        elsif c1.action = ''Change Locked Status'' then',
'            update eba_proj_status_users set account_locked = c1.new_value where id = c1.user_id;',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2825265833695083008)
,p_process_success_message=>'User(s) updated successfully.'
);
wwv_flow_api.component_end;
end;
/
