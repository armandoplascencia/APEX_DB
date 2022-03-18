prompt --application/deployment/install/upgrade_add_tags_columns
begin
--   Manifest
--     INSTALL: UPGRADE-Add Tags Columns
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
 p_id=>wwv_flow_api.id(6091910002344474669)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Add Tags Columns'
,p_sequence=>270
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name in ( ''EBA_PROJ_STATUS_LINKS$'', ''EBA_PROJ_STATUS_AIS$'', ''EBA_PROJ_STATUS_MS$'', ''EBA_PROJ_STATUS_UPDATES$'')',
'    and column_name = ''TAGS'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_proj_status_links$    add tags varchar2(4000);',
'alter table eba_proj_status_ais$      add tags varchar2(4000);',
'alter table eba_proj_status_ms$       add tags varchar2(4000);',
'alter table eba_proj_status_updates$  add tags varchar2(4000);'))
);
wwv_flow_api.component_end;
end;
/
