prompt --application/deployment/install/install_customer_use_cases
begin
--   Manifest
--     INSTALL: INSTALL-Customer Use Cases
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
 p_id=>wwv_flow_api.id(17217678342974517700)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'Customer Use Cases'
,p_sequence=>180
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_use_case (',
'   id                      number       not null,',
'   row_version_number      number,',
'   use_case                varchar2(60) not null,',
'   description             varchar2(4000) ,',
'   is_active               varchar2(1)  default ''Y'',',
'',
'   --',
'   created               timestamp with time zone not null,',
'   created_by            varchar2(255) not null,',
'   updated               timestamp with time zone,',
'   updated_by            varchar2(255)',
'  )',
'/',
'alter table eba_cust_use_case',
'   add constraint eba_cust_use_case_pk',
'       primary key (id)',
'/',
'create unique index eba_cust_use_case_uk on eba_cust_use_case(use_case)',
'/',
'alter table eba_cust_use_case',
'   add constraint eba_cust_use_case_uk',
'       unique (use_case)',
'       using index eba_cust_use_case_uk',
'/'))
);
wwv_flow_api.component_end;
end;
/
