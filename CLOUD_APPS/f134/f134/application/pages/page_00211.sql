prompt --application/pages/page_00211
begin
--   Manifest
--     PAGE: 00211
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>211
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Deal Type'
,p_page_mode=>'MODAL'
,p_step_title=>'Deal Type'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(19245446063791282124)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190401155715'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19266204691196073419)
,p_plug_name=>'Deal Type'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(19266205364119073421)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19266205772009073421)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(19266205364119073421)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19266205235785073421)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(19266205364119073421)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P211_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19266205203351073421)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(19266205364119073421)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P211_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19266205073203073421)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(19266205364119073421)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Deal Type'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P211_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19266208125480073436)
,p_name=>'P211_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(19266204691196073419)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19266208514224073453)
,p_name=>'P211_DEAL_TYPE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(19266204691196073419)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deal Type'
,p_source=>'DEAL_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'<p>Provide the deal type''s name here.</p>'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19266208992226073453)
,p_name=>'P211_DISPLAY_SEQUENCE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(19266204691196073419)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_retval number;',
'    l_rows   number;',
'begin',
'    select count(*) into l_rows from eba_proj_deal_types;',
'',
'    if l_rows > 0 then',
'        select max(display_sequence) + 1 into l_retval from eba_proj_deal_types;',
'    else',
'        l_retval := 1;',
'    end if;',
'    return l_retval;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Display Sequence'
,p_source=>'DISPLAY_SEQUENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(748281690398960066)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'<p>Provide a number that represents which list item this deal type should be displayed as in the drop-down select list of deal type options.</p>'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19266209321389073454)
,p_name=>'P211_IS_ACTIVE_YN'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(19266204691196073419)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_prompt=>'Active'
,p_source=>'IS_ACTIVE_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'<p>Select "Yes" if this deal type should be used as a legitimate deal type option in the application. Otherwise, choose "No".</p>'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(19266205834307073421)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(19266205772009073421)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19266206669380073426)
,p_event_id=>wwv_flow_api.id(19266205834307073421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19266211046381073458)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_PROJ_DEAL_TYPES'
,p_attribute_02=>'EBA_PROJ_DEAL_TYPES'
,p_attribute_03=>'P211_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19266211494950073459)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_PROJ_DEAL_TYPES'
,p_attribute_02=>'EBA_PROJ_DEAL_TYPES'
,p_attribute_03=>'P211_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19266211851205073460)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(19266205235785073421)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19266212294727073460)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.component_end;
end;
/
