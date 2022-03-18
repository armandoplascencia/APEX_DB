prompt --application/deployment/install/upgrade_new_access_levels
begin
--   Manifest
--     INSTALL: UPGRADE-New Access Levels
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
 p_id=>wwv_flow_api.id(11915367449958421254)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'New Access Levels'
,p_sequence=>420
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status_access_levels',
'where id = 0'))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_proj_status_access_levels',
'    drop constraint eba_proj_stat_acc_lvl_ck;',
'',
'alter table eba_proj_status_access_levels',
'    add constraint eba_proj_stat_acc_lvl_ck check (access_level in (',
'        ''Super Admin'',',
'        ''Administrator'',',
'        ''Contributor'',',
'        ''Reader'',',
'        ''Pending Approval'',',
'        ''No Access'')) enable;',
'',
'insert into eba_proj_status_access_levels ( id, access_level )',
'    values ( -99, ''No Access'' );',
'insert into eba_proj_status_access_levels ( id, access_level )',
'    values ( 0, ''Pending Approval'' );',
'insert into eba_proj_status_access_levels ( id, access_level )',
'    values ( 4, ''Super Admin'' );'))
);
wwv_flow_api.component_end;
end;
/
