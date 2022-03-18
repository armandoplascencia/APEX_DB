prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 120
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(94736133449367516)
,p_group_name=>'Administration'
);
wwv_flow_api.component_end;
end;
/
