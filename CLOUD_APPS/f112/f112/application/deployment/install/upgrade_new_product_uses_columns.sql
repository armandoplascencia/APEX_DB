prompt --application/deployment/install/upgrade_new_product_uses_columns
begin
--   Manifest
--     INSTALL: UPGRADE-New Product Uses Columns
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
 p_id=>wwv_flow_api.id(14343553871968856797)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'New Product Uses Columns'
,p_sequence=>220
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_PRODUCT_USES''',
'    and column_name = ''REFERENCE_TYPE_IDS'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_product_uses add (',
'    reference_type_ids varchar2(4000),',
'    internal_contact varchar2(255),',
'    customer_contact_id number,',
'    reference_status_id number,',
'    valid_from timestamp with time zone,',
'    valid_to timestamp with time zone,',
'    comments varchar2(4000)',
');'))
);
wwv_flow_api.component_end;
end;
/
