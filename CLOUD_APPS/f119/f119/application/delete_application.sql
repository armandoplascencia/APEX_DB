prompt --application/delete_application
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>119
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
wwv_flow_api.component_end;
end;
/
