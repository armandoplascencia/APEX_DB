prompt --application/deployment/install/upgrade_update_completed_dates
begin
--   Manifest
--     INSTALL: UPGRADE-Update Completed Dates
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
 p_id=>wwv_flow_api.id(19673320524200779375)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Update Completed Dates'
,p_sequence=>1080
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--',
'-- Update Action Items',
'--',
'',
'-- Disable Trigger',
'alter trigger aiu_eba_proj_status_ais disable;',
'',
'-- Update Completed_Date Column Value',
'update eba_proj_status_ais$',
'   set completed_date = due_date',
' where action_status = ''Closed''',
'   and completed_date is null;',
'',
'-- Enable Trigger',
'alter trigger aiu_eba_proj_status_ais enable;',
'',
'--',
'-- Update Milestones',
'--',
'',
'-- Disable Trigger',
'alter trigger aiu_eba_proj_status_ms disable;',
'',
'-- Update Completed_Date Column Value',
'update eba_proj_status_ms$',
'   set completed_date = milestone_date',
' where milestone_status = ''Completed''',
'   and completed_date is null;',
'',
'-- Enable Trigger',
'alter trigger aiu_eba_proj_status_ms enable;',
'',
'commit;'))
);
wwv_flow_api.component_end;
end;
/
