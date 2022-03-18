prompt --application/deployment/install/install_preferences
begin
--   Manifest
--     INSTALL: INSTALL-preferences
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
 p_id=>wwv_flow_api.id(16760730701583726977)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'preferences'
,p_sequence=>130
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_cust_preferences (',
'    id                      number              not null',
'                                                constraint eba_cust_preferences_pk',
'                                                primary key,',
'    preference_name         varchar2(255)       not null',
'                                                constraint eba_cust_prefs_prefname_ck',
'                                                check (upper(preference_name)=preference_name),',
'    preference_value        varchar2(255),',
'    created_by              varchar2(255)       not null,',
'    created_on              timestamp with time zone,',
'    updated_by              varchar2(255),',
'    updated_on              timestamp with time zone )',
'/',
'create unique index eba_cust_preferences_uk on eba_cust_preferences (preference_name)',
'/',
'',
'',
''))
);
wwv_flow_api.component_end;
end;
/
