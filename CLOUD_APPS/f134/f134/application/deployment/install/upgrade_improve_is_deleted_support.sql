prompt --application/deployment/install/upgrade_improve_is_deleted_support
begin
--   Manifest
--     INSTALL: UPGRADE-Improve is_deleted support
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
 p_id=>wwv_flow_api.id(20513984535471533630)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Improve is_deleted support'
,p_sequence=>30
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_PROJ_STATUS$''',
'    and column_name = ''DELETED_BY'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_proj_status$',
'add ( deleted_by varchar2(255),',
'    deleted_on timestamp with local time zone );',
'/',
'',
'alter table eba_proj_status_ais$',
'add ( is_deleted_yn varchar2(1) default ''N'' not null',
'        constraint eba_proj_status_ais_ck_del',
'            check ( is_deleted_yn in (''Y'',''N'') ),',
'    deleted_by varchar2(255),',
'    deleted_on timestamp with local time zone );',
'/',
'',
'alter table eba_proj_status_ms$',
'add ( is_deleted_yn varchar2(1) default ''N'' not null',
'        constraint eba_proj_status_ms_ck_del',
'            check ( is_deleted_yn in (''Y'',''N'') ),',
'    deleted_by varchar2(255),',
'    deleted_on timestamp with local time zone );',
'/'))
);
wwv_flow_api.component_end;
end;
/
