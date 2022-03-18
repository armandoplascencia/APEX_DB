prompt --application/deployment/install/upgrade_add_sales_channel
begin
--   Manifest
--     INSTALL: UPGRADE-add sales channel
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
 p_id=>wwv_flow_api.id(15944146789045606072)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'add sales channel'
,p_sequence=>200
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name = ''SALES_CHANNEL_ID'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table EBA_CUST_CUSTOMERS add SALES_CHANNEL_ID number;',
'/',
'',
'alter table eba_cust_customers',
'   add constraint eba_customers_channel_fk',
'       foreign key (sales_channel_id)',
'       references eba_cust_sales_channel(id) on delete set null',
'/',
'',
'create index eba_cust_customers_05 on eba_cust_customers (sales_channel_id);'))
);
wwv_flow_api.component_end;
end;
/
