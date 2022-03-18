prompt --application/deployment/install/upgrade_add_milestone_id_to_action_items
begin
--   Manifest
--     INSTALL: UPGRADE-Add milestone_id to action items
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
 p_id=>wwv_flow_api.id(6172948887219240758)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Add milestone_id to action items'
,p_sequence=>100
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_PROJ_STATUS_AIS$''',
'    and column_name = ''MILESTONE_ID'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_proj_status_ais$',
'add milestone_id number;',
'',
'alter table eba_proj_status_ais',
'add constraint eba_proj_status_ai_ms_fk',
'               foreign key ( milestone_id )',
'               references eba_proj_status_ms$(id)',
'               on delete set null;'))
);
wwv_flow_api.component_end;
end;
/
