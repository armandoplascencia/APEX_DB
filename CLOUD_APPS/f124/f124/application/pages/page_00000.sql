prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>124
,p_default_id_offset=>97439342994982660
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(1218849447906494434)
,p_name=>'0'
,p_alias=>'0'
,p_step_title=>'0'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_upd_yyyymmddhh24miss=>'20200116130021'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1395008940499615662)
,p_plug_name=>'CSS Override'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>10
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'.infoTextRegion.padded {',
'  padding: 8px 0;',
'  margin: 8px 8px 12px 8px;',
'}',
'',
'.infoTextRegion {',
'  padding: 0;',
'}',
'.infoTextRegion p,',
'.infoTextRegion li {',
'  font-size: 14px;',
'  color: #707070;',
'  padding: 0 0 12px 0;',
'  margin: 0;',
'  line-height: 20px;',
'}',
'.infoTextRegion ul,',
'.infoTextRegion ol {',
'margin: 8px 8px 8px 24px !important;',
'padding-bottom: 12px;',
'}',
'.infoTextRegion ul {',
'list-style: disc outside;',
'}',
'.infoTextRegion ol {',
'list-style: decimal outside;',
'}',
'.infoTextRegion li {',
'padding-bottom: 0;',
'}',
'',
'</style>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.component_end;
end;
/
