prompt --application/deployment/install/upgrade_add_total_contract_value_discount_level_to_customers_table
begin
--   Manifest
--     INSTALL: UPGRADE-Add total_contract_value & discount_level to Customers table
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
 p_id=>wwv_flow_api.id(1254549327720828056)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'Add total_contract_value & discount_level to Customers table'
,p_sequence=>420
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_columns',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name in (''TOTAL_CONTRACT_VALUE'', ''DISCOUNT_LEVEL'')'))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_customers add (total_contract_value number, discount_level number);',
'',
'alter table eba_cust_customers add  annual_recurring_revenue      number;',
'alter table eba_cust_customers add  currency                      varchar2(20);'))
);
wwv_flow_api.component_end;
end;
/
