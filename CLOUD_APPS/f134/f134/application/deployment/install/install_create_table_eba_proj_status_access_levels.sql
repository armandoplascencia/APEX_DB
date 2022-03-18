prompt --application/deployment/install/install_create_table_eba_proj_status_access_levels
begin
--   Manifest
--     INSTALL: INSTALL-create table eba_proj_status_access_levels
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
 p_id=>wwv_flow_api.id(6169335707934240675)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'create table eba_proj_status_access_levels'
,p_sequence=>70
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_status_access_levels (',
'    id number not null enable, ',
'    access_level varchar2(30) not null enable, ',
'    row_version number, ',
'    constraint eba_proj_stat_acc_lvl_ck check (access_level in (',
'        ''Super Admin'',',
'        ''Administrator'',',
'        ''Contributor'',',
'        ''Reader'',',
'        ''Pending Approval'',',
'        ''No Access'')) enable,',
'    constraint eba_proj_stat_access_levels_pk primary key (id) enable',
');',
'insert into eba_proj_status_access_levels ( id, access_level )',
'    values ( -99, ''No Access'' );',
'insert into eba_proj_status_access_levels ( id, access_level )',
'    values ( 0, ''Pending Approval'' );',
'insert into eba_proj_status_access_levels ( id, access_level )',
'    values ( 1, ''Reader'' );',
'insert into eba_proj_status_access_levels ( id, access_level )',
'    values ( 2, ''Contributor'' );',
'insert into eba_proj_status_access_levels ( id, access_level )',
'    values ( 3, ''Administrator'' );',
'insert into eba_proj_status_access_levels ( id, access_level )',
'    values ( 4, ''Super Admin'' );',
'',
'commit;',
'',
'',
''))
);
wwv_flow_api.component_end;
end;
/
