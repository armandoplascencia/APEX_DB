prompt --application/deployment/install/install_product_statuses
begin
--   Manifest
--     INSTALL: INSTALL-product statuses
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
 p_id=>wwv_flow_api.id(14380421017911170405)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'product statuses'
,p_sequence=>260
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_product_statuses (',
'    id            number         not NULL,',
'    status        varchar2(255),',
'    description   varchar2(512),',
'    is_current_yn varchar2(1),',
'    --',
'    created     timestamp with time zone not null,',
'    created_by  varchar2(255) not null,',
'    updated     timestamp with time zone,',
'    updated_by  varchar2(255)',
'   )',
'/',
'alter table eba_cust_product_statuses',
'   add constraint eba_cust_product_statuses_pk',
'       primary key (id)',
'/',
'',
''))
);
wwv_flow_api.component_end;
end;
/
