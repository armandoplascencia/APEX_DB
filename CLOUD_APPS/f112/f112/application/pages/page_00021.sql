prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(14644135011863537602)
,p_name=>'Activity Calendar'
,p_alias=>'ACTIVITY-CALENDAR'
,p_step_title=>'Activity Calendar'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14820268795473279241)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(16066770301217181173)
,p_protection_level=>'C'
,p_help_text=>'This is a monthly calendar of application activity, reporting distinct users and their total page views by day. Click the <strong><</strong> button to go to the previous month and the <strong>></strong> button to go forward a month. Switch between th'
||'e calendar view to the list view by clicking the <strong>list</strong> button.'
,p_last_upd_yyyymmddhh24miss=>'20210218140138'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16837719820122524260)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14959356293935679148)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17940232663340213707)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14959371794034679193)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16837720316829526743)
,p_plug_name=>'Activity Calendar'
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'lower(USERID) ||'' - ''||',
'trim(to_char(count(*),''999G999G999G990'')) Page_Events,',
'trunc(time_stamp) the_day',
'from apex_activity_log l',
'where flow_id = :app_id and userid is not null and userid != ''nobody''',
'group by trunc(time_stamp), lower(USERID)'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'THE_DAY'
,p_attribute_03=>'PAGE_EVENTS'
,p_attribute_07=>'N'
,p_attribute_09=>'list:navigation'
,p_attribute_13=>'N'
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'15'
,p_attribute_22=>'Y'
,p_attribute_23=>'3'
);
wwv_flow_api.component_end;
end;
/
