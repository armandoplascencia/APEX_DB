prompt --application/deployment/install/upgrade_add_headline_last_updated
begin
--   Manifest
--     INSTALL: UPGRADE-Add headline_last_updated
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
 p_id=>wwv_flow_api.id(2814614646347526747)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Add headline_last_updated'
,p_sequence=>80
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_PROJ_STATUS$''',
'    and column_name = ''HEADLINE_LAST_UPDATED'''))
,p_script_clob=>'alter table eba_proj_status$ add headline_last_updated timestamp with local time zone;'
);
wwv_flow_api.component_end;
end;
/
