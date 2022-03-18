prompt --application/deployment/install/upgrade_remove_eba_ca_admins_not_used
begin
--   Manifest
--     INSTALL: UPGRADE-remove eba_ca_admins (not used)
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
 p_id=>wwv_flow_api.id(1938083548968619835)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'remove eba_ca_admins (not used)'
,p_sequence=>100
,p_script_type=>'UPGRADE'
,p_script_clob=>'drop table eba_ca_admins cascade constraints;'
);
wwv_flow_api.component_end;
end;
/
