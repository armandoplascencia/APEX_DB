prompt --application/deployment/install/upgrade_type_id_into_customers_table
begin
--   Manifest
--     INSTALL: UPGRADE-type_id into customers table
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
 p_id=>wwv_flow_api.id(17101691866741127129)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'type_id into customers table'
,p_sequence=>310
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name = ''TYPE_ID'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_customers add type_id number',
'/',
'alter table eba_cust_customers',
'   add constraint eba_customers_type_fk',
'       foreign key (type_id)',
'       references eba_cust_type (id) on delete cascade',
'/',
'create index eba_cust_customers_08 on eba_cust_customers (type_id)',
'/'))
);
wwv_flow_api.component_end;
end;
/
