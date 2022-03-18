prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 128
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>128
,p_default_id_offset=>101063537470361591
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(114043458306691092)
,p_group_name=>'Administration'
);
wwv_flow_api.component_end;
end;
/
