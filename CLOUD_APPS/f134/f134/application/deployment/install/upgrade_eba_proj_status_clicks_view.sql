prompt --application/deployment/install/upgrade_eba_proj_status_clicks_view
begin
--   Manifest
--     INSTALL: UPGRADE-EBA_PROJ_STATUS_CLICKS view
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(12742294630660449621)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'EBA_PROJ_STATUS_CLICKS view'
,p_sequence=>830
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace view eba_proj_status_clicks as',
'select id, ',
'    project_id, ',
'    app_username, ',
'    view_timestamp, ',
'    app_session ',
'from eba_proj_status_clicks$ c',
'where exists ( select null from eba_proj_status ps where ps.id = c.project_id );'))
);
wwv_flow_api.component_end;
end;
/
