prompt --application/pages/page_00094
begin
--   Manifest
--     PAGE: 00094
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
 p_id=>94
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Activity Calendar'
,p_page_mode=>'MODAL'
,p_step_title=>'Activity Calendar'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956244196798598610)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_protection_level=>'C'
,p_help_text=>'This is a monthly calendar of application activity, reporting distinct users and total page views by day. Click the <strong><</strong> button to go to the previous month and the <strong>></strong> button to go forward a month. Switch between the cale'
||'ndar view to the list view by clicking the <strong>list</strong> button.'
,p_last_upd_yyyymmddhh24miss=>'20190905130422'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7445863533536899921)
,p_plug_name=>'Activity Calendar'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'lower(USERID)|| '' - ''||trim(to_char(count(*),''999G999G999G990''))|| '' page views''   "Page Events",',
'trunc(time_stamp) the_day',
'from apex_activity_log l',
'where flow_id = :app_id and userid is not null and userid != ''nobody''',
'group by trunc(time_stamp), lower(USERID)'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'THE_DAY'
,p_attribute_03=>'Page Events'
,p_attribute_07=>'N'
,p_attribute_09=>'list:navigation'
,p_attribute_13=>'N'
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
,p_attribute_23=>'3'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7977068583455806260)
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
wwv_flow_api.component_end;
end;
/
