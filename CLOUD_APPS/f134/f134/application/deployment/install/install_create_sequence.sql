prompt --application/deployment/install/install_create_sequence
begin
--   Manifest
--     INSTALL: INSTALL-create sequence
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
 p_id=>wwv_flow_api.id(9012425317720439378)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'create sequence'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>'create sequence eba_proj_seq;'
);
wwv_flow_api.component_end;
end;
/
