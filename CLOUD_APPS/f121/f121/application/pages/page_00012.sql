prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>121
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(95153343667962421)
,p_name=>'dellete old data'
,p_alias=>'DELLETE-OLD-DATA'
,p_step_title=>'dellete old data'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220203022423'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95928347106996138)
,p_plug_name=>'dellete old data'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(95063787534962349)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(95928846268996139)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(95928347106996138)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(95128836075962396)
,p_button_image_alt=>'Submit'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(95928731420996139)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(95928347106996138)
,p_button_name=>'CANCEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(95128836075962396)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95929676008996144)
,p_name=>'P12_ROWS_DELETED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(95928347106996138)
,p_prompt=>'V Rows Deleted'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(95126389788962393)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95930099783996146)
,p_name=>'P12_ROWS_DELETED_TIME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(95928347106996138)
,p_prompt=>'V Rows Deleted Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(95126389788962393)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95930452693996146)
,p_name=>'P12_ROWS_DELETED_ERR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(95928347106996138)
,p_prompt=>'V Rows Deleted Err'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(95126389788962393)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95930877810996146)
,p_name=>'P12_SQLCODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(95928347106996138)
,p_prompt=>'V Sqlcode'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(95126389788962393)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(95931277366996146)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run Stored Procedure'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'"#OWNER#"."DEL_ZENDESK_TICKET_METRICS"(',
'"V_ROWS_DELETED" => :P12_ROWS_DELETED,',
'"V_ROWS_DELETED_TIME" => :P12_ROWS_DELETED_TIME,',
'"V_ROWS_DELETED_ERR" => :P12_ROWS_DELETED_ERR,',
'"V_SQLCODE" => :P12_SQLCODE);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(95928846268996139)
);
wwv_flow_api.component_end;
end;
/
