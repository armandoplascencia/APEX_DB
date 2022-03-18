prompt --application/deployment/install/install_eba_proj_status_ais_milestone_fk
begin
--   Manifest
--     INSTALL: INSTALL-eba_proj_status_ais milestone fk
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
 p_id=>wwv_flow_api.id(6181379107330051751)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'eba_proj_status_ais milestone fk'
,p_sequence=>640
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table  eba_proj_status_ais$ add constraint eba_proj_status_ai_ms_fk foreign key (milestone_id)',
'      references  eba_proj_status_ms$(id) on delete set null enable',
''))
);
wwv_flow_api.component_end;
end;
/
