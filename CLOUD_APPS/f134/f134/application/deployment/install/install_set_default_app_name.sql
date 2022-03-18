prompt --application/deployment/install/install_set_default_app_name
begin
--   Manifest
--     INSTALL: INSTALL-Set Default App Name
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
 p_id=>wwv_flow_api.id(4173007111431532850)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Set Default App Name'
,p_sequence=>950
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_title varchar2(255);',
'begin',
'    l_title := eba_proj_fw.get_preference_value(''APPLICATION_TITLE'');',
'    if l_title = ''Preference does not exist'' or l_title is null then',
'        eba_proj_fw.set_preference_value(''APPLICATION_TITLE'',''P-Track'');',
'    end if;',
'end;',
'/'))
);
wwv_flow_api.component_end;
end;
/
