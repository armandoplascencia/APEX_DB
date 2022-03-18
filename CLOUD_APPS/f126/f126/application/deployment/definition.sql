prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 126
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(7488934904666529534)
,p_welcome_message=>'This application installer will guide you through the process of creating your database objects and seed data.'
,p_configuration_message=>'You can configure the following attributes of your application.'
,p_build_options_message=>'You can choose to include the following build options.'
,p_validation_message=>'The following validations will be performed to ensure your system is compatible with this application.'
,p_install_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_message=>'The application installer has detected that this application''s supporting objects were previously installed.  This wizard will guide you through the process of upgrading these supporting objects.'
,p_upgrade_confirm_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_success_message=>'Your application''s supporting objects have been installed.'
,p_upgrade_failure_message=>'Installation of database objects and seed data has failed.'
,p_get_version_sql_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from user_tables',
' where table_name like ''EBA_CA_%'''))
,p_deinstall_success_message=>'Deinstallation complete.'
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'drop table eba_ca_event_types      cascade constraints;',
'drop table eba_ca_series           cascade constraints;',
'drop table eba_ca_events           cascade constraints;',
'drop table eba_ca_email_groups     cascade constraints;',
'drop table eba_ca_email_group_mbrs cascade constraints;',
'drop table eba_ca_timeframes       cascade constraints;',
'drop table eba_ca_admins           cascade constraints;',
'drop table eba_ca_access_levels    cascade constraints purge;',
'drop table eba_ca_error_lookup     cascade constraints purge;',
'drop table eba_ca_preferences      cascade constraints;',
'drop table eba_ca_users            cascade constraints purge;',
'drop table eba_ca_notifications    cascade constraints purge;',
'drop table eba_ca_tz_pref          cascade constraints purge;',
'drop table eba_ca_HISTORY          cascade constraints purge;',
'drop table eba_ca_tags             cascade constraints;',
'drop table eba_ca_tags_type_sum    cascade constraints;',
'drop table eba_ca_tags_sum         cascade constraints;',
'drop table eba_ca_FILES            cascade constraints;',
'drop table eba_ca_NOTES            cascade constraints;',
'drop table eba_ca_color_prefs      cascade constraints;',
'drop table eba_ca_errors           cascade constraints;',
'drop table eba_ca_calendars        cascade constraints;',
'',
'drop package eba_ca_api;',
'drop package eba_ca;',
'drop package eba_ca_fw;',
'drop package eba_ca_sample_data;',
'',
'drop sequence eba_ca_seq;',
'',
'begin',
'    wwv_flow_api.create_or_remove_file( ',
'        p_location => ''APPLICATION'',',
'        p_name     => ''group-cal-logo2.png'',',
'        p_mode     => ''REMOVE'',',
'        p_type     => ''IMAGE'');',
'end;',
'/',
'',
''))
,p_required_free_kb=>1408
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE SEQUENCE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
,p_required_names_available=>'EBA_CA_ACCESS_LEVELS:EBA_CA_ADMINS:EBA_CA_COLOR_PREFS:EBA_CA_EMAIL_GROUP_MBRS:EBA_CA_EMAIL_GROUPS:EBA_CA_ERROR_LOOKUP:EBA_CA_EVENT_TYPES:EBA_CA_EVENTS:EBA_CA_FILES:EBA_CA_HISTORY:EBA_CA_NOTES:EBA_CA_NOTIFICATIONS:EBA_CA_PREFERENCES:EBA_CA_SERIES:EBA_'
||'CA_TAGS:EBA_CA_TAGS_TYPE_SUM:EBA_CA_TAGS_SUM:EBA_CA_TIMEFRAMES:EBA_CA_TZ_PREF:EBA_CA_USERS:EBA_CA_API:EBA_CA:EBA_CA_SEQ:EBA_CA_FW'
,p_deinstall_message=>'This operation will completely remove this application from your workspace.'
);
wwv_flow_api.component_end;
end;
/
