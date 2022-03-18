prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(63894538847235817)
,p_name=>'call email'
,p_alias=>'CALL-EMAIL'
,p_step_title=>'call email'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211214182730'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73196733789304494)
,p_plug_name=>'call email'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(63804998619235739)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73203749036617806)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(63804998619235739)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<PRE>',
'https://jeffkemponoracle.com/2019/07/wipe-apex-mail-queue/',
'https://jeffkemponoracle.com/2016/04/email-made-easier/',
'https://blogs.oracle.com/apex/post/sending-email-from-your-oracle-apex-app-on-autonomous-database',
'http://dgielis.blogspot.com/2019/10/free-oracle-cloud-11-sending-emails.html',
'http://dgielis.blogspot.com/2019/03/including-image-from-apex-static.html',
'https://docs.oracle.com/en-us/iaas/Content/Email/Concepts/overview.htm',
'https://www.dazhuanlan.com/yutaoer/topics/1661326',
'',
'begin',
'*** WARNING: DO NOT RUN THIS IN PRODUCTION! if we need to remove all emails',
'  for r in (',
'    select workspace_id',
'          ,workspace',
'    from apex_workspaces',
'    ) loop',
'    apex_application_install.set_workspace_id (r.workspace_id);',
'    apex_util.set_security_group_id',
'      (p_security_group_id => apex_application_install.get_workspace_id);',
'    delete apex_mail_queue;',
'  end loop;',
'  commit;',
'end;',
'/',
'</PRE>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73197204560304495)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(73196733789304494)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63870030705235784)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73197132404304495)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(73196733789304494)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63870030705235784)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73198012224304496)
,p_name=>'P15_G_TO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(73196733789304494)
,p_prompt=>'Msg To'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(63867587437235780)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73198448380304498)
,p_name=>'P15_G_SUBJECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(73196733789304494)
,p_prompt=>'Msg Subject'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(63867587437235780)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73198815623304498)
,p_name=>'P15_G_TEXT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(73196733789304494)
,p_prompt=>'Msg Text'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(63867587437235780)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73199222108304499)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run Stored Procedure'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'"#OWNER#"."MISO_AP_SEND_MAIL"(',
'"MSG_TO" => :P15_G_TO,',
'"MSG_SUBJECT" => :P15_G_SUBJECT,',
'"MSG_TEXT" => :P15_G_TEXT);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(73197204560304495)
);
wwv_flow_api.component_end;
end;
/
