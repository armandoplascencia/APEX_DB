prompt --application/deployment/install/install_product_families
begin
--   Manifest
--     INSTALL: INSTALL-Product Families
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
 p_id=>wwv_flow_api.id(17855449766965615131)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'Product Families'
,p_sequence=>190
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_product_families (',
'    id                  number       not null,',
'    row_version_number  number,',
'    name                varchar2(60) not null,',
'    description         varchar2(4000),',
'    --',
'    created             timestamp with time zone not null,',
'    created_by          varchar2(255) not null,',
'    updated             timestamp with time zone,',
'    updated_by          varchar2(255),',
'    --',
'    constraint eba_cust_prod_families_pk primary key (id)',
')',
'/',
'create unique index eba_cust_prod_families_uk on eba_cust_product_families(name)',
'/',
'',
'create or replace trigger biu_eba_cust_product_families',
'    before insert or update on eba_cust_product_families',
'    for each row',
'begin',
'    if inserting then',
'        if :new.id is null then',
'            :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'        end if;',
'        :new.created := current_timestamp;',
'        :new.created_by := nvl(v(''APP_USER''),user);',
'        :new.row_version_number := 1;',
'    else',
'        :new.row_version_number := nvl(:new.row_version_number,0) + 1;',
'    end if;',
'    :new.updated := current_timestamp;',
'    :new.updated_by := nvl(v(''APP_USER''),user);',
'end biu_eba_cust_product_families;',
'/',
'alter trigger biu_eba_cust_product_families enable;',
'/',
''))
);
wwv_flow_api.component_end;
end;
/
