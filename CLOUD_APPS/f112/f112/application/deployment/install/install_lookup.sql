prompt --application/deployment/install/install_lookup
begin
--   Manifest
--     INSTALL: INSTALL-lookup
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
 p_id=>wwv_flow_api.id(16760730525694724511)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'lookup'
,p_sequence=>120
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_error_lookup (',
'    constraint_name         varchar2(30)        not null',
'                                                constraint eba_cust_error_lookup_pk',
'                                                primary key,',
'    message                 varchar2(4000)      not null,',
'    language_code           varchar2(30)        not null',
')',
'/',
'create unique index eba_cust_error_lookup_uk on eba_cust_error_lookup (constraint_name,language_code);',
'',
'',
''))
);
wwv_flow_api.component_end;
end;
/
