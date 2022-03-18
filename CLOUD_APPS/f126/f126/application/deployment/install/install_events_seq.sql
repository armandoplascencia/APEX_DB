prompt --application/deployment/install/install_events_seq
begin
--   Manifest
--     INSTALL: INSTALL-events_seq
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(3338034754473033079)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'events_seq'
,p_sequence=>202
,p_script_type=>'INSTALL'
,p_script_clob=>'create sequence eba_ca_seq;'
);
wwv_flow_api.component_end;
end;
/
