prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Remove Attachments'
,p_page_mode=>'MODAL'
,p_step_title=>'Remove Attachments'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'Select the age of the attachments you would like to remove and click the <strong>Remove Attachments</strong> button. All attachments from all projects that are older than the specified age will be removed.'
,p_last_upd_yyyymmddhh24miss=>'20190904143046'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(524870627965582499)
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
 p_id=>wwv_flow_api.id(6338186700228010295)
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
 p_id=>wwv_flow_api.id(6338187201228017194)
,p_plug_name=>'Metrics'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>200
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ''Size > 180 Days'' as label,',
'    to_char(',
'    decode(',
'         nvl(sum(dbms_lob.getlength(file_blob)),0),',
'         0,',
'         0,',
'         sum(dbms_lob.getlength(file_blob))/(1024*1024)',
'    ),',
'    ''999G999G999G999G990D99'') ||'' MB'' as value,',
'    100      as percent',
'from eba_proj_status_files f',
'where to_date(to_char(created,''YYYYMMDD''),''YYYYMMDD'') < sysdate - 180',
'union all',
'select',
'    ''Size > 1 year'' as label,',
'    to_char(',
'    decode(',
'         nvl(sum(dbms_lob.getlength(file_blob)),0),',
'         0,',
'         0,',
'         sum(dbms_lob.getlength(file_blob))/(1024*1024)',
'    ),',
'    ''999G999G999G999G990D99'') ||'' MB'' as value,',
'    100      as percent',
'from eba_proj_status_files f',
'where to_date(to_char(created,''YYYYMMDD''),''YYYYMMDD'') < sysdate - 365',
'union all',
'select',
'    ''Size > 2 Years'' as label,',
'    to_char(',
'    decode(',
'         nvl(sum(dbms_lob.getlength(file_blob)),0),',
'         0,',
'         0,',
'         sum(dbms_lob.getlength(file_blob))/(1024*1024)',
'    ),',
'    ''999G999G999G999G990D99'') ||'' MB'' as value,',
'    100      as percent',
'from eba_proj_status_files f',
'where to_date(to_char(created,''YYYYMMDD''),''YYYYMMDD'') < sysdate - 730',
'union all',
'select',
'    ''Size > 3 Years'' as label,',
'    to_char(',
'    decode(',
'         nvl(sum(dbms_lob.getlength(file_blob)),0),',
'         0,',
'         0,',
'         sum(dbms_lob.getlength(file_blob))/(1024*1024)',
'    ),',
'    ''999G999G999G999G990D99'') ||'' MB'' as value,',
'    100      as percent',
'from eba_proj_status_files f',
'where to_date(to_char(created,''YYYYMMDD''),''YYYYMMDD'') < sysdate - 1095'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_03=>'PERCENT'
,p_attribute_05=>'2'
,p_attribute_06=>'B'
,p_attribute_07=>'BOX'
,p_attribute_08=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6338187997034063282)
,p_plug_name=>'Remove Attachments'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6338188983045084329)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(524870627965582499)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6338189180654084336)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(524870627965582499)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remove Attachments'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6338188409140072208)
,p_name=>'P23_AGE_IN_DAYS'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6338187997034063282)
,p_item_default=>'730'
,p_prompt=>'Age In Days'
,p_source=>'730'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'REMOVE AGE IN DAYS'
,p_lov=>'.'||wwv_flow_api.id(6338190096173100810)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_inline_help_text=>'Remove all attachments older then the specified age in days.  Use this to reduce storage space.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(524870748377582500)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6338188983045084329)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(524870832478582501)
,p_event_id=>wwv_flow_api.id(524870748377582500)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6338189608163094894)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'remove attachments'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete ',
'from eba_proj_status_files f',
'where to_date(to_char(created,''YYYYMMDD''),''YYYYMMDD'') <= sysdate - :P23_AGE_IN_DAYS;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(6338189180654084336)
,p_process_success_message=>'Attachments Removed'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(524870955056582502)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
