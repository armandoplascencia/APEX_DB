prompt --application/pages/page_00079
begin
--   Manifest
--     PAGE: 00079
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
 p_id=>79
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Attachments Dashboard'
,p_page_mode=>'MODAL'
,p_step_title=>'Attachments Dashboard'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956244196798598610)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_protection_level=>'C'
,p_help_text=>'This page gives an administrator a high-level view of just how much disk space your project attachments are using. If the attachment file size amount is getting too high, click the <strong>Manage Attachments</strong> button to remove older attachment'
||'s and regain free disk space.'
,p_last_upd_yyyymmddhh24miss=>'20190905112208'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(524871068995582503)
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
 p_id=>wwv_flow_api.id(6908307315012768379)
,p_plug_name=>'Metrics'
,p_region_template_options=>'t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    ''Attachments'' as label,',
'    to_char(count(*),''999G999G999G999G990'') as value,',
'    100      as percent',
'from eba_proj_status_files f',
'union all',
'select',
'    ''Total Size'' as label,',
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
'union all',
'select',
'    ''Average Size'' as label,',
'    to_char(',
'    decode(',
'         nvl(avg(dbms_lob.getlength(file_blob)),0),',
'         0,',
'         0,',
'         avg(dbms_lob.getlength(file_blob))/(1024*1024)',
'    ),',
'    ''999G999G999G999G990D99'') || '' MB'' as value,',
'    100      as percent',
'from eba_proj_status_files f',
'union all',
'select',
'    ''Projects with Attachments'' as label,',
'    to_char(',
'    count(distinct project_id) ,',
'    ''999G999G999G999G990'')  as value,',
'    100      as percent',
'from eba_proj_status_files f',
'union all',
'select',
'    ''Size < 1 Week'' as label,',
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
'where to_date(to_char(created,''YYYYMMDD''),''YYYYMMDD'') > sysdate - 7',
'union all',
'select',
'    ''Size < 4 Weeks'' as label,',
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
'where to_date(to_char(created,''YYYYMMDD''),''YYYYMMDD'') > sysdate - 28',
'union all',
'select',
'    ''Size < 1 Year'' as label,',
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
'where to_date(to_char(created,''YYYYMMDD''),''YYYYMMDD'') > sysdate - 365',
'union all',
'select',
'    ''Size >= 1 Year'' as label,',
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
'where to_date(to_char(created,''YYYYMMDD''),''YYYYMMDD'') <= sysdate - 365'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_03=>'PERCENT'
,p_attribute_04=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:RP::'
,p_attribute_05=>'4'
,p_attribute_07=>'BOX'
,p_attribute_08=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6908307689616768393)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--showBreadcrumb:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6908308025361768395)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(524871068995582503)
,p_button_name=>'MANAGE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Manage Attachments'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP,23::'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(7577519912345437356)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(524871179108582504)
,p_name=>'Refresh on Delete'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6908308025361768395)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(524871225776582505)
,p_event_id=>wwv_flow_api.id(524871179108582504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6908307315012768379)
);
wwv_flow_api.component_end;
end;
/
