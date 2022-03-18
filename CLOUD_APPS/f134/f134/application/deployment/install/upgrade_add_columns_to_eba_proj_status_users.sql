prompt --application/deployment/install/upgrade_add_columns_to_eba_proj_status_users
begin
--   Manifest
--     INSTALL: UPGRADE-add columns to eba_proj_status_users
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
 p_id=>wwv_flow_api.id(11150952284449872098)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'add columns to eba_proj_status_users'
,p_sequence=>220
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_PROJ_STATUS_USERS''',
'    and column_name = ''PHONE_01'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table EBA_PROJ_STATUS_USERS add (',
'    email_address varchar2(30),',
'    phone_01 varchar2(30),',
'    phone_02 varchar2(30),',
'    title varchar2(255),',
'    address varchar2(4000),',
'    note varchar2(4000),',
'    assistant_name varchar2(255),',
'    assistant_phone varchar2(30)',
');'))
);
wwv_flow_api.component_end;
end;
/
