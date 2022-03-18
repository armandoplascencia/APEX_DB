prompt --application/pages/page_00057
begin
--   Manifest
--     PAGE: 00057
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>57
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Email Preview'
,p_alias=>'EMAIL-PREVIEW'
,p_step_title=>'Email Preview'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(16485731932639691338)
,p_step_template=>wwv_flow_api.id(14690143547597251098)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210521075123'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14004453282876761643)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14004453490772761647)
,p_plug_name=>'Show Template'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_poll_url   varchar2(4000);',
'   l_body       clob;',
'   l_subject    varchar2(4000);',
'   l_html_body  clob;',
'   l_text_body  clob;',
'begin',
'',
'l_poll_url := ''<a href="#">''||:POLL_NAME||''</a>'';',
'                                                     ',
'l_body := replace(:P72_INVITE_BODY,''#POLL_LINK#'',l_poll_url);',
'   ',
'for c1 in (',
'    select case when :P57_METHOD = ''INVITE''',
'                then nvl(apex_escape.html(:P72_INVITE_SUBJECT),''Please Share Your Opinion on ''||:POLL_NAME) ',
'                else nvl(apex_escape.html(:P1072_REMINDER_SUBJECT),''Reminder: Please Share Your Opinion on ''||:POLL_NAME) ',
'                end invite_subject, ',
'           case when :P57_METHOD = ''INVITE''',
'                then nvl(apex_escape.html(:P72_INVITE_BODY),''<p>Please take #POLL_LINK#.</p>',
'''||',
'           case when authentication_req_yn = ''N''',
'                then apex_lang.message(''UNAUTH_MSG'') end ||',
'''<p>Thanks in advance for your participation!</p>',
'<p>Best Regards,</p>',
'<p>The ''||apex_escape.html(:APPLICATION_TITLE)||'' Team</p>'') ',
'                else nvl(apex_escape.html(:P1072_REMINDER_BODY),''<p>Please take #POLL_LINK#.</p>',
'''||',
'           case when authentication_req_yn = ''N''',
'                then apex_lang.message(''UNAUTH_MSG'') end ||',
'''<p>Thanks in advance for your participation!</p>',
'<p>Best Regards,</p>',
'<p>The ''||apex_escape.html(:APPLICATION_TITLE)||'' Team</p>'') end invite_body',
'      from eba_qpoll_polls',
'     where id = :POLL_ID',
') loop',
'',
'   apex_mail.prepare_template (',
'      p_static_id       => ''INVITE'',',
'      p_placeholders    => ''{'' || ',
'                           ''    "SUBJECT":''           || apex_json.stringify( c1.invite_subject ) || ',
'                           ''   ,"APPLICATION_TITLE":'' || apex_json.stringify( apex_escape.html(:APPLICATION_TITLE) ) || ',
'                           ''   ,"OPT_OUT_TEXT":''      || apex_json.stringify( apex_lang.message(''OPT_OUT_TEXT'', ',
'                                                                              :APP_PATH || ''/f?p='' || :APP_ID || '':optout'',',
'                                                                              apex_escape.html(:APPLICATION_TITLE)) ) || ',
'                           ''   ,"BODY":''  || apex_json.stringify( replace(c1.invite_body,''#POLL_LINK#'',''<a href="#">''||:POLL_NAME||''</a>'') ) || ',
'                           ''}'' , ',
'      p_application_id  => :APP_ID,',
'      p_subject         => l_subject,',
'      p_html            => l_html_body,',
'      p_text            => l_text_body );',
'      ',
'   sys.htp.p(l_html_body);',
'   ',
'end loop;',
'      ',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14004454580290780133)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14004453282876761643)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close Preview'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:window.close();'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(522079544942064548)
,p_name=>'P57_METHOD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14004453282876761643)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.component_end;
end;
/
