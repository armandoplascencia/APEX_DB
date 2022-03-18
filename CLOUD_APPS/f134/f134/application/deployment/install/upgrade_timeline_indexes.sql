prompt --application/deployment/install/upgrade_timeline_indexes
begin
--   Manifest
--     INSTALL: UPGRADE-Timeline Indexes
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
 p_id=>wwv_flow_api.id(13502545005429755865)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Timeline Indexes'
,p_sequence=>460
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_indexes',
'where index_name = ''EBA_PROJ_STATUS_MS_I3'';'))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create index eba_proj_status_i18       on eba_proj_status$(created);',
'create index eba_proj_status_ms_i3     on eba_proj_status_ms$(created);',
'create index eba_proj_status_ais_i8    on eba_proj_status_ais$(created);',
'create index eba_proj_status_files_i2  on eba_proj_status_files$(created);',
'create index eba_proj_status_links_i2  on eba_proj_status_links$(created);',
'create index eba_proj_status_upd_i3    on eba_proj_status_updates$(created);',
'create index eba_proj_status_rpts_i3   on eba_proj_status_rpts$(created);',
'create index eba_proj_history_i2       on eba_proj_history$(change_date, component_id);',
'create index eba_proj_user_ref_n4      on eba_proj_user_ref(created);'))
);
wwv_flow_api.component_end;
end;
/
