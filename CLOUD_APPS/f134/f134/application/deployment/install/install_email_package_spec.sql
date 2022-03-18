prompt --application/deployment/install/install_email_package_spec
begin
--   Manifest
--     INSTALL: INSTALL-Email Package Spec
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
 p_id=>wwv_flow_api.id(17450470980508337069)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Email Package Spec'
,p_sequence=>460
,p_script_type=>'INSTALL'
,p_script_option=>'PACKAGE_SPEC'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package eba_proj_stat_email as',
'',
'    g_progress       varchar2(4000) := null;',
'    ',
'    procedure log_sent_email',
'    (',
'        p_email_to   in varchar2,',
'        p_email_from in varchar2,',
'        p_body_size  in number,',
'        p_type       in varchar2,',
'        p_project_id in number    default null',
'    );',
'    ',
'    procedure print_message (',
'        p_id              in number,',
'        p_app_id          in number,',
'        p_session         in number,',
'        p_app_name        in varchar2,',
'        p_email           in varchar2,',
'        p_max_rows        in number default 20,',
'        p_target          in varchar2 default null,',
'        p_show_buttons_yn in varchar2 default ''Y'',',
'        p_reply_email     in varchar2 default null,',
'        p_use_since_yn    in varchar2 default ''N'',',
'        p_email_type      in varchar2 default ''SUMMARY''',
'    );',
'    ',
'    procedure print_ai_message (',
'        p_action_item_id  in number,',
'        p_app_id          in number,',
'        p_session         in number,',
'        p_app_name        in varchar2,',
'        p_target          in varchar2 default null,',
'        p_show_buttons_yn in varchar2 default ''Y'',',
'        p_reply_email     in varchar2 default null,',
'        p_use_since_yn    in varchar2 default ''N''',
'    );',
'    ',
'    procedure print_status_rpt_message (',
'        p_id              in number,',
'        p_status_rpt_id   in number,',
'        p_proj_owners     in varchar2,',
'        p_proj_status     in varchar2,',
'        p_proj_desc       in varchar2,',
'        p_proj_goal       in varchar2,',
'        p_milestones      in varchar2,',
'        p_action_items    in varchar2,',
'        p_issues          in varchar2,',
'        p_resources       in varchar2,',
'        p_app_user        in varchar2,',
'        p_app_date_format in varchar2,',
'        p_app_name        in varchar2,',
'        p_show_footer     in varchar2 default ''Y'',',
'        p_app_id          in number,',
'        p_session         in number,',
'        p_max_rows        in number default 20,',
'        p_target          in varchar2 default null,',
'        p_show_buttons_yn in varchar2 default ''Y'',',
'        p_reply_email     in varchar2 default null,',
'        p_use_since_yn    in varchar2 default ''N''',
'    );',
'    ',
'    procedure send_past_due_emails',
'    (',
'        p_app_id     in number,',
'        p_user_email in varchar2 default null,',
'        p_method     in varchar2 default ''JOB''',
'    );',
'    ',
'    procedure send_upcoming_emails',
'    (',
'        p_app_id     in number,',
'        p_user_email in varchar2 default null,',
'        p_method     in varchar2 default ''JOB''',
'    );',
'    ',
'    procedure send_summary_emails',
'    (',
'        p_app_id     in number,',
'        p_project_id in number   default null,',
'        p_method     in varchar2 default ''JOB''',
'    );',
'    ',
'    procedure send_status_emails',
'    (',
'        p_app_id     in number,',
'        p_project_id in number   default null,',
'        p_method     in varchar2 default ''JOB''',
'    );',
'    ',
'    procedure send_feedback_email',
'    (',
'        p_app_id        in number,',
'        p_page_id       in number,',
'        p_submitter     in varchar2,',
'        p_feedback_type in varchar2,',
'        p_feedback      in varchar2',
'    );',
'    ',
'end eba_proj_stat_email;',
'/',
'show errors'))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(17450471063940337071)
,p_script_id=>wwv_flow_api.id(17450470980508337069)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'EBA_PROJ_STAT_EMAIL'
,p_last_updated_on=>to_date('20160325191040','YYYYMMDDHH24MISS')
,p_created_by=>'DAVID'
,p_created_on=>to_date('20160325191040','YYYYMMDDHH24MISS')
);
wwv_flow_api.component_end;
end;
/
