prompt --application/pages/page_00057
begin
--   Manifest
--     PAGE: 00057
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
 p_id=>57
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Work Days'
,p_page_mode=>'MODAL'
,p_step_title=>'Work Days'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_protection_level=>'C'
,p_help_text=>'Select which days should be used as normal work days in calculating milestone lengths and validating due dates. Click the <strong>Apply Changes</strong> button to save your work days settings.'
,p_last_upd_yyyymmddhh24miss=>'20190905093601'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(509377573245008084)
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
 p_id=>wwv_flow_api.id(12288022153108109846)
,p_plug_name=>'Work Days'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2102163296972548821)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Select which days should be used as normal work days in calculating milestone lengths and validating due dates. Click the <strong>Apply Changes</strong> button to save your work days settings.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13559428696875438789)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12288022365512109848)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(509377573245008084)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12288022687575109851)
,p_branch_name=>'Go to Administration'
,p_branch_action=>'f?p=&APP_ID.:SETTINGS:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12288022305812109847)
,p_name=>'P57_WORKDAYS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12288022153108109846)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Workdays'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select eba_proj_fw.get_preference_value(''WORKDAYS'') dy',
'from dual'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with dy as (',
'    select level x',
'    from dual',
'    connect by level <= 7',
')',
'select to_char(sysdate-to_number(to_char(sysdate,''D''))+dy.x,''Day'') d, dy.x r',
'from dy'))
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'7'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12288022455524109849)
,p_validation_name=>'P57_WORKDAYS not null'
,p_validation_sequence=>10
,p_validation=>'P57_WORKDAYS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'At least one day must be a workday.'
,p_associated_item=>wwv_flow_api.id(12288022305812109847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12288022580132109850)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Workdays'
,p_process_sql_clob=>'eba_proj_fw.set_preference_value(''WORKDAYS'', :P57_WORKDAYS);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Workdays updated.'
);
wwv_flow_api.component_end;
end;
/
