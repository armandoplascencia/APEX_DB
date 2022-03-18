prompt --application/deployment/install/upgrade_update_null_values_for_column_eba_proj_status_updates_upper_update_owner
begin
--   Manifest
--     INSTALL: UPGRADE-update null values for column EBA_PROJ_STATUS_UPDATES$.UPPER_UPDATE_OWNER
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
 p_id=>wwv_flow_api.id(4303126095425839000)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'update null values for column EBA_PROJ_STATUS_UPDATES$.UPPER_UPDATE_OWNER'
,p_sequence=>1300
,p_script_type=>'UPGRADE'
,p_condition_type=>'EXISTS'
,p_condition=>'select 1 from EBA_PROJ_STATUS_UPDATES$ where UPPER_UPDATE_OWNER is null'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter package EBA_PROJ_FW compile body',
'/',
'',
'alter trigger bi_eba_proj_status_updates disable;',
'',
'update EBA_PROJ_STATUS_UPDATES$ set UPPER_UPDATE_OWNER = upper(update_owner) where upper_update_owner is null;',
'',
'commit;',
'',
'alter trigger bi_eba_proj_status_updates enable;'))
);
wwv_flow_api.component_end;
end;
/
