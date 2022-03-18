prompt --application/deployment/install/upgrade_allow_null_preference_values
begin
--   Manifest
--     INSTALL: UPGRADE-Allow NULL Preference Values
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
 p_id=>wwv_flow_api.id(20326914457476781659)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'Allow NULL Preference Values'
,p_sequence=>40
,p_script_type=>'UPGRADE'
,p_condition_type=>'EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where table_name = ''EBA_CUST_PREFERENCES''',
'    and column_name = ''PREFERENCE_VALUE''',
'    and nullable = ''N'''))
,p_script_clob=>'alter table eba_cust_preferences modify (preference_value null);'
);
wwv_flow_api.component_end;
end;
/
