prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Reports'
,p_step_title=>'Reports'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956244196798598610)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_protection_level=>'C'
,p_help_text=>'This page provides a list of links to various administrative reports that show how the application is being used and any errors that may have been encountered.'
,p_page_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<link rel="stylesheet" href="#IMAGE_PREFIX#eba/css/eba_header.css" type="text/css" />',
'<link rel="stylesheet" href="#IMAGE_PREFIX#eba/css/eba_search_filter.css" type="text/css" />'))
,p_last_upd_yyyymmddhh24miss=>'20190905081252'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9028004831084552293)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9029542139664696069)
,p_plug_name=>'Activity Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(9028017725561683466)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(6781130957503890839)
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(9030245544355921098)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'36'
);
wwv_flow_api.component_end;
end;
/
