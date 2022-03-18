prompt --application/shared_components/logic/application_items/project_came_from
begin
--   Manifest
--     APPLICATION ITEM: PROJECT_CAME_FROM
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(13413156279741851995)
,p_name=>'PROJECT_CAME_FROM'
,p_protection_level=>'S'
,p_escape_on_http_output=>'N'
);
wwv_flow_api.component_end;
end;
/
