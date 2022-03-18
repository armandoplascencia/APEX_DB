prompt --application/deployment/install/install_error_lookup_table
begin
--   Manifest
--     INSTALL: INSTALL-error lookup table
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
 p_id=>wwv_flow_api.id(7949481699552021037)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'error lookup table'
,p_sequence=>40
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE  EBA_PROJ_ERROR_LOOKUP',
'   (    CONSTRAINT_NAME VARCHAR2(30) NOT NULL ENABLE,',
'    MESSAGE VARCHAR2(4000) NOT NULL ENABLE,',
'    LANGUAGE_CODE VARCHAR2(30) NOT NULL ENABLE,',
'    CONSTRAINT EBA_PROJ_ERROR_LOOKUP_PK PRIMARY KEY (CONSTRAINT_NAME) ENABLE',
'   )',
'/'))
);
wwv_flow_api.component_end;
end;
/
