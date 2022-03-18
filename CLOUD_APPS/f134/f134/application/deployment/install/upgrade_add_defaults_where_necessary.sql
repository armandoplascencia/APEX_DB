prompt --application/deployment/install/upgrade_add_defaults_where_necessary
begin
--   Manifest
--     INSTALL: UPGRADE-Add defaults where necessary
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
 p_id=>wwv_flow_api.id(2685150360626939315)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Add defaults where necessary'
,p_sequence=>1060
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_proj_status_updates$',
'modify gold_yn default ''N''',
'/',
'',
'alter table eba_proj_status_links$',
'modify gold_yn default ''N''',
'/',
'',
'alter table eba_proj_status_files$',
'modify gold_yn default ''N''',
'/',
'',
'alter table eba_proj_status_updates$',
'modify gold_yn default ''N''',
'/',
'',
'alter table eba_proj_template_ai',
'modify inc_in_status_eml_yn default ''Y''',
'/',
'',
'alter table eba_proj_status_ais$',
'modify inc_in_status_eml_yn default ''Y''',
'/'))
);
wwv_flow_api.component_end;
end;
/
