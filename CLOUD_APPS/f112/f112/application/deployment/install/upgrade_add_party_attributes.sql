prompt --application/deployment/install/upgrade_add_party_attributes
begin
--   Manifest
--     INSTALL: UPGRADE-add party attributes
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
 p_id=>wwv_flow_api.id(17242958552850662020)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'add party attributes'
,p_sequence=>340
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name = ''PARTY_ID'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_customers add support_id            varchar2(50);',
'',
'alter table eba_cust_customers add party_id            varchar2(50);',
'',
'alter table eba_cust_customers add parent_party_id     varchar2(50);',
'',
'alter table eba_cust_customers add party_name          varchar2(255);',
'',
'alter table eba_cust_customers add partent_party_name  varchar2(255);',
''))
);
wwv_flow_api.component_end;
end;
/
