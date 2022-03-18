prompt --application/deployment/install/install_eba_proj_status_pref_api
begin
--   Manifest
--     INSTALL: INSTALL-eba_proj_status_pref_api
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(9025642627577740546)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'eba_proj_status_pref_api'
,p_sequence=>490
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE PACKAGE "EBA_PROJ_STATUS_PREF_API" ',
'as',
'function get_email return varchar2;',
'end eba_proj_status_pref_api;',
'/',
'',
'',
'CREATE OR REPLACE PACKAGE BODY "EBA_PROJ_STATUS_PREF_API" ',
'as',
'function get_email return varchar2',
'is',
'    l_return varchar2(4000) := null;',
'begin',
'    for c1 in (select preference_value from eba_proj_preferences where preference_name = ''EMAIL'') loop',
'        l_return := c1.preference_value;',
'    end loop;',
'    return l_return;',
'end get_email;',
'end eba_proj_status_pref_api;',
'/',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(6964823473401123835)
,p_script_id=>wwv_flow_api.id(9025642627577740546)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'EBA_PROJ_STATUS_PREF_API'
,p_last_updated_on=>to_date('20141219062054','YYYYMMDDHH24MISS')
,p_created_on=>to_date('20141219062054','YYYYMMDDHH24MISS')
);
wwv_flow_api.component_end;
end;
/
