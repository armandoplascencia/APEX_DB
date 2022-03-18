prompt --application/deployment/install/upgrade_add_reference_phase_id
begin
--   Manifest
--     INSTALL: UPGRADE-add reference_phase_id
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
 p_id=>wwv_flow_api.id(15919386598325315395)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'add reference_phase_id'
,p_sequence=>180
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_CUSTOMERS''',
'    and column_name = ''REFERENCE_PHASE_ID'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_customers add reference_phase_id number;',
''))
);
wwv_flow_api.component_end;
end;
/
