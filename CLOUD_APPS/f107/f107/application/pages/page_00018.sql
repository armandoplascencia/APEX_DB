prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(63894538847235817)
,p_name=>'sams AUDIT'
,p_alias=>'SAMS-AUDIT'
,p_step_title=>'sams AUDIT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220304005104'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105252680797996249)
,p_plug_name=>'sams AUDIT'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(63804998619235739)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(105253108934996250)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(105252680797996249)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63870030705235784)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(105253090061996250)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(105252680797996249)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(63870030705235784)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(105255548188996254)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(105253108934996250)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(105253928905996252)
,p_name=>'P18_MAINT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(105252680797996249)
,p_prompt=>'V Maint'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(63867587437235780)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(105254390905996253)
,p_name=>'P18_OWNER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(105252680797996249)
,p_prompt=>'V Owner'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(63867587437235780)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(105254745013996253)
,p_name=>'P18_TABLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(105252680797996249)
,p_prompt=>'V Table'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(63867587437235780)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(105255136035996253)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run Stored Procedure'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'"#OWNER#"."BUILD_AUDIT_TRIGS_4"(',
'"V_MAINT" => :P18_MAINT,',
'"V_OWNER" => :P18_OWNER,',
'"V_TABLE" => :P18_TABLE);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(105253108934996250)
);
wwv_flow_api.component_end;
end;
/
