prompt --application/deployment/install/upgrade_add_contact_columns
begin
--   Manifest
--     INSTALL: UPGRADE-add contact columns
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14949728806606553499)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'add contact columns'
,p_sequence=>90
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select column_name',
'from user_tab_columns',
'where table_name = ''EBA_CUST_CONTACTS''',
'    and column_name = ''FACEBOOK'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_contacts add facebook varchar2(4000);',
'alter table eba_cust_contacts add linkedin varchar2(4000);',
'alter table eba_cust_contacts add twitter  varchar2(4000);',
'',
''))
);
wwv_flow_api.component_end;
end;
/
