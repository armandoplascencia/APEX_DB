prompt --application/pages/page_00127
begin
--   Manifest
--     PAGE: 00127
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
 p_id=>127
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Project Usage Metrics'
,p_step_title=>'Project Usage Metrics'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This page shows a calendar view of how many times this project has been viewed and by how many distinct users. Use the forward and back buttons to go forward a month or back a month. Switch between list view and calendar view by using the buttons on '
||'the right. Click the <strong>View Project</strong> button to return to the project details page.'
,p_last_upd_yyyymmddhh24miss=>'20190905144614'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6176226402812250666)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6176934195024604536)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7446134411564171880)
,p_plug_name=>'Project Usage Metrics'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    trunc(view_timestamp) view_timestamp,',
'    trim(to_char(count(*),''999G999G999G990'')) ||'' Views / ''||trim(to_char(count(distinct app_username),''999G999G999G990'')) ||'' Users'' display',
'from',
'    eba_proj_status_clicks',
'where',
'    project_id = :P127_ID ',
'and',
'    view_timestamp > sysdate - 90',
'group by trunc(view_timestamp ) '))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'VIEW_TIMESTAMP'
,p_attribute_03=>'DISPLAY'
,p_attribute_05=>'f?p=&APP_ID.:164:&SESSION.::&DEBUG.:RP:P164_ID,P164_DATE:&P127_ID.,&VIEW_TIMESTAMP.'
,p_attribute_07=>'N'
,p_attribute_09=>'list:navigation'
,p_attribute_13=>'N'
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
,p_attribute_23=>'3'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6179099985451365979)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'VIEW_PROJECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Project'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:&P127_ID.'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6176934483247606265)
,p_name=>'P127_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6176934195024604536)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
