prompt --application/deployment/install/install_set_plscope_settings
begin
--   Manifest
--     INSTALL: INSTALL-Set plscope_settings
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
 p_id=>wwv_flow_api.id(16864518095519544849)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'Set plscope_settings'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>'ALTER SESSION SET PLSCOPE_SETTINGS = ''IDENTIFIERS:NONE'';'
);
wwv_flow_api.component_end;
end;
/
