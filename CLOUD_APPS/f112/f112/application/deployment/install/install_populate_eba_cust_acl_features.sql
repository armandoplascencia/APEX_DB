prompt --application/deployment/install/install_populate_eba_cust_acl_features
begin
--   Manifest
--     INSTALL: INSTALL-populate eba_cust_acl_features
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
 p_id=>wwv_flow_api.id(1460685951126567676)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'populate eba_cust_acl_features'
,p_sequence=>570
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into eba_cust_acl_features (authorization_name, feature, access_level_id)',
'  values (''EDIT_COMPETITORS'',''Specify what access level is required to maintain competitors.'',2);',
'insert into eba_cust_acl_features (authorization_name, feature, access_level_id)',
'  values (''VIEW_COMPETITORS'',''Specify what level can view competiors, and add them to customers.'',2);',
'commit;',
''))
);
wwv_flow_api.component_end;
end;
/
