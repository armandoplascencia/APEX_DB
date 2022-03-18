prompt --application/deployment/install/install_eba_qpoll_email_body
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_email body
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14004408102064007529)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_email body'
,p_sequence=>530
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package body eba_qpoll_email as',
'',
'procedure send (',
'   p_app_id              in   number,',
'   p_template_static_id  in   varchar2,',
'   p_placeholders        in   clob,',
'   p_to                  in   varchar2,',
'   p_from                in   varchar2,',
'   p_cc                  in   varchar2  default null,',
'   p_poll_id             in   number    default null,',
'   p_community_id        in   number    default null,',
'   p_respondent_id       in   number    default null,',
'   p_email_id            out  number )',
'is',
'   l_subject            varchar2(4000);',
'   l_html_body          clob;',
'   l_text_body          clob;',
'   l_apex_email_id      number;',
'begin',
'',
'   apex_application.g_flow_id := p_app_id;',
'   for c1 in (',
'      select workspace, workspace_id',
'        from apex_applications',
'       where application_id = p_app_id',
'   ) loop',
'      apex_util.set_workspace (p_workspace => c1.workspace);',
'      apex_util.set_security_group_id (p_security_group_id => c1.workspace_id);',
'   end loop;',
'',
'   insert into eba_qpoll_emails',
'      (template_static_id, placeholders, sent_to, sent_by, cc,',
'       poll_id, community_id, respondent_id)',
'   values',
'      (p_template_static_id, p_placeholders, p_to, p_from, p_cc,',
'       p_poll_id, p_community_id, p_respondent_id)',
'   returning id into p_email_id;',
'   commit;',
'',
'   apex_mail.prepare_template (',
'      p_static_id       => p_template_static_id,',
'      p_placeholders    => p_placeholders,',
'      p_application_id  => p_app_id,',
'      p_subject         => l_subject,',
'      p_html            => l_html_body,',
'      p_text            => l_text_body );',
'',
'   update eba_qpoll_emails',
'      set subject   = l_subject,',
'          text_body = l_text_body,',
'          html_body = l_html_body',
'    where id = p_email_id;',
'   commit;',
'   ',
'   l_apex_email_id := apex_mail.send (',
'                         p_to        => p_to,',
'                         p_from      => p_from,',
'                         p_cc        => p_cc,',
'                         p_replyto   => replace(eba_qpoll_fw.get_preference_value(''NOTIFICATION_EMAIL_REPLY_TO''), ''N/A'', null),',
'                         p_body      => l_text_body,',
'                         p_body_html => l_html_body,',
'                         p_subj      => l_subject );',
'',
'   apex_mail.push_queue;',
'',
'   for c1 in (',
'      select mail_send_error',
'        from apex_mail_queue',
'       where id = l_apex_email_id',
'         and mail_send_error is not null',
'   ) loop',
'      update eba_qpoll_emails',
'         set email_status = ''FAILURE'',',
'             error_message = c1.mail_send_error',
'       where id = p_email_id;',
'      commit;',
'   end loop;',
'',
'   for c1 in (',
'      select email_status',
'        from eba_qpoll_emails',
'       where id = p_email_id',
'   ) loop',
'      if c1.email_status is null then',
'         update eba_qpoll_emails',
'            set email_status = ''SUCCESS''',
'          where id = p_email_id;',
'         commit;',
'      end if;',
'   end loop;',
'end send;',
'',
'end eba_qpoll_email;',
'/'))
);
wwv_flow_api.component_end;
end;
/
