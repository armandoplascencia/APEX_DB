prompt --application/deployment/install/install_error_messages
begin
--   Manifest
--     INSTALL: INSTALL-Error Messages
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
 p_id=>wwv_flow_api.id(7972983693518322364)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Error Messages'
,p_sequence=>430
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into eba_proj_error_lookup (constraint_name, message,language_code)',
'values (''EBA_PROJ_STATUS_PROJECT_UNQ'',''Project name already in use.'',''EN'');'))
);
wwv_flow_api.component_end;
end;
/
