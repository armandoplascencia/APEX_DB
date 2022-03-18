prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 110
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(16006903818735772086)
,p_welcome_message=>'This application installer will guide you through the process of creating your database objects and seed data.'
,p_configuration_message=>'You can configure the following attributes of your application.'
,p_build_options_message=>'You can choose to include the following build options.'
,p_validation_message=>'The following validations will be performed to ensure your system is compatible with this application.'
,p_install_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_install_success_message=>'Your application''s supporting objects have been installed.'
,p_install_failure_message=>'Installation of database objects and seed data has failed.'
,p_upgrade_message=>'The application installer has detected that this application''s supporting objects were previously installed.  This wizard will guide you through the process of upgrading these supporting objects.'
,p_upgrade_confirm_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_success_message=>'Your application''s supporting objects have been installed.'
,p_upgrade_failure_message=>'Installation of database objects and seed data has failed.'
,p_get_version_sql_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select object_name',
'from user_objects',
'where object_name like ''EBA_QPOLL_%'''))
,p_deinstall_success_message=>'Deinstallation complete.'
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'drop table eba_qpoll_sections           cascade constraints;',
'drop table eba_qpoll_questions          cascade constraints;',
'drop table eba_qpoll_resp_communities   cascade constraints;',
'drop table eba_qpoll_comm_invites       cascade constraints;',
'drop table eba_qpoll_invites            cascade constraints;',
'drop table eba_qpoll_canned_answers     cascade constraints;',
'drop table eba_qpoll_respondents        cascade constraints;',
'drop table eba_qpoll_polls              cascade constraints;',
'drop table eba_qpoll_notifications      cascade constraints;',
'drop table eba_qpoll_preferences        cascade constraints;',
'drop table eba_qpoll_errors             cascade constraints;',
'drop table eba_qpoll_results            cascade constraints;',
'drop table eba_qpoll_access_requests    cascade constraints;',
'drop table eba_qpoll_error_log          cascade constraints;',
'drop table eba_qpoll_application_log    cascade constraints;',
'drop table eba_qpoll_user_log           cascade constraints;',
'drop table eba_qpoll_emails             cascade constraints;',
'drop table eba_qpoll_result_details     cascade constraints;',
'drop table eba_qpoll_resp_comm_ref      cascade constraints;',
'drop table eba_qpoll_email_opt_out      cascade constraints;',
'drop table eba_qpoll_history            cascade constraints;',
'',
'drop sequence eba_qpoll_seq;',
'',
'drop package eba_qpoll;',
'drop package eba_qpoll_fw;',
'drop package eba_qpoll_quiz;',
'drop package eba_qpoll_account;',
'drop package eba_qpoll_email;',
''))
,p_required_free_kb=>100
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE SEQUENCE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
,p_required_names_available=>'EBA_QPOLL_POLLS:EBA_QPOLL_NOTIFICATIONS:EBA_QPOLL_PREFERENCES:EBA_QPOLL:EBA_QPOLL_FW:EBA_QPOLL_SEQ:EBA_QPOLL_QUIZ:EBA_QPOLL_ACCOUNT:EBA_QPOLL_RESP_COMM_REF:EBA_QPOLL_RESPONDENTS:EBA_QPOLL_RESP_COMMUNITIES:EBA_QPOLL_RESULTS:EBA_QPOLL_RESULT_DETAILS:EB'
||'A_QPOLL_USER_LOG:EBA_QPOLL_APPLICATION_LOG:EBA_QPOLL_ERROR_LOG:EBA_QPOLL_ACCESS_REQUESTS:EBA_QPOLL_CANNED_ANSWERS:EBA_QPOLL_QUESTIONS:EBA_QPOLL_ERRORS:EBA_QPOLL_EMAIL_OPT_OUT:EBA_QPOLL_INVITES:EBA_QPOLL_COMM_INVITES:EBA_QPOLL_EMAILS:EBA_QPOLL_EMAIL'
,p_deinstall_message=>'This operation will completely remove this application from your workspace.'
);
wwv_flow_api.component_end;
end;
/
