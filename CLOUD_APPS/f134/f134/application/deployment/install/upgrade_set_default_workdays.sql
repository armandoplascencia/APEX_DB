prompt --application/deployment/install/upgrade_set_default_workdays
begin
--   Manifest
--     INSTALL: UPGRADE-Set Default Workdays
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
 p_id=>wwv_flow_api.id(13562797687616991823)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Set Default Workdays'
,p_sequence=>470
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_preferences',
'where preference_name = ''WORKDAYS'';',
''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into eba_proj_preferences ( preference_name, preference_value )',
'    values ( ''WORKDAYS'', ''2:3:4:5:6'' );'))
);
wwv_flow_api.component_end;
end;
/
