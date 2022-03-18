prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>115
,p_default_id_offset=>358200981570066140
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(188228516534147947)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Excel Gateway for Oracle APEX'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'THERWIX'
,p_last_upd_yyyymmddhh24miss=>'20210819142246'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(188242171529151286)
,p_plug_name=>'Home'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(188116479380147832)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Please select a template above or create a new template. The selected template serves as a filter for further work with the application.</b>',
'<br><br>',
'<img src="#APP_IMAGES#prozess.jpg" alt="Prozess">'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
