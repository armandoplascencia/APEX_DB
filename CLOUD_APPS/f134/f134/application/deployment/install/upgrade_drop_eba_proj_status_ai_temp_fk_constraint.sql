prompt --application/deployment/install/upgrade_drop_eba_proj_status_ai_temp_fk_constraint
begin
--   Manifest
--     INSTALL: UPGRADE-drop eba_proj_status_ai_temp_fk constraint
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
 p_id=>wwv_flow_api.id(262072493976634321)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'drop eba_proj_status_ai_temp_fk constraint'
,p_sequence=>1400
,p_script_type=>'UPGRADE'
,p_condition_type=>'EXISTS'
,p_condition=>'select * from ALL_CONSTRAINTS where constraint_name = ''EBA_PROJ_STATUS_AI_TEMP_FK'''
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- dropping this foreign key constraint resolves bug 28011908',
'-- Allan 19-JUN-2018',
'alter table EBA_PROJ_STATUS_AIS$ drop constraint EBA_PROJ_STATUS_AI_TEMP_FK;'))
);
wwv_flow_api.component_end;
end;
/
