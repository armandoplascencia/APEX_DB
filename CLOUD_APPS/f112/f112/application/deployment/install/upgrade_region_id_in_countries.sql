prompt --application/deployment/install/upgrade_region_id_in_countries
begin
--   Manifest
--     INSTALL: UPGRADE-region_id in countries
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
 p_id=>wwv_flow_api.id(17268084001202068780)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'region_id in countries'
,p_sequence=>350
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_COUNTRIES''',
'    and column_name = ''REGION_ID'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table eba_cust_countries add region_id number',
'/',
'alter table eba_cust_countries',
'   add constraint eba_countries_region_fk',
'       foreign key (region_id)',
'       references eba_cust_geographies (id) on delete cascade',
'/'))
);
wwv_flow_api.component_end;
end;
/
