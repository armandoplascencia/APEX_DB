prompt --application/deployment/install/upgrade_change_date_to_timestamp
begin
--   Manifest
--     INSTALL: UPGRADE-Change Date to Timestamp
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
 p_id=>wwv_flow_api.id(5920389882593718548)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Change Date to Timestamp'
,p_sequence=>200
,p_script_type=>'UPGRADE'
,p_condition_type=>'EXISTS'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from user_tab_cols',
'where data_type = ''DATE''',
'    and table_name like ''EBA_PROJ%'''))
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table EBA_PROJ_COLOR_CODES modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_COLOR_CODES modify UPDATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_PREFERENCES modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_PREFERENCES modify UPDATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS$ modify NEXT_MILESTONE_DATE timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS$ modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS$ modify UPDATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_AIS$ modify DUE_DATE timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_AIS$ modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_AIS$ modify UPDATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_AIS_TYPES modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_AIS_TYPES modify UPDATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_AI_CMNTS$ modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_AI_CMNTS$ modify UPDATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_CATS modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_CATS modify UPDATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_CODES modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_CODES modify UPDATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_FILES$ modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_FILES$ modify UPDATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_INGEST_LOG modify APPLY_DATE timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_LINKS$ modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_LINKS$ modify UPDATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_MS$ modify MILESTONE_DATE timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_MS$ modify MILESTONE_START_DATE timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_MS$ modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_MS$ modify UPDATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_REPORTS$ modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_REPORTS$ modify UPDATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_RPT_PROJ_UPD$ modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_RPT_PROJ_UPD$ modify UPDATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_SEARCHES modify SEARCH_DATE timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_UPDATES$ modify UPDATE_DATE timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_UPDATES$ modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_UPDATES$ modify UPDATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_UPDATE_TYPES modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_UPDATE_TYPES modify UPDATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_UPD_CLASSES modify CREATED timestamp(6) with local time zone;',
'alter table EBA_PROJ_STATUS_UPD_CLASSES modify UPDATED timestamp(6) with local time zone;',
''))
);
wwv_flow_api.component_end;
end;
/
