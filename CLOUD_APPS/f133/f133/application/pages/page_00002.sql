prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>133
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(104891014803699938)
,p_name=>'My Metadata'
,p_alias=>'MY-METADATA'
,p_page_mode=>'MODAL'
,p_step_title=>'My Metadata'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220303230556'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(104920910731700110)
,p_plug_name=>'My Metadata'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(104770402101699841)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with abc as ( select MY_METADATA_ID,',
'       ORIGINAL_MD,',
'       MD,',
'       DBMS_LOB.INSTR( MD, ''/*'',1 ) first_s_cmt,',
'       DBMS_LOB.INSTR( MD, ''*/'',1 ) first_e_cmt,',
'       dbms_lob.substr( md,  ',
'         ( DBMS_LOB.INSTR( MD, ''*/'',1 ) - DBMS_LOB.INSTR( MD, ''/*'',1 ) +2 ),',
'         DBMS_LOB.INSTR( MD, ''/*'',1 ) ',
'       ) cmt_str,',
'--       MD_HTML,',
'       MDSIZE,',
'       OWNER,',
'       ONAME,',
'       OTYPE,',
'       FIRST_200,',
'/*       TOKEN1,',
'       TOKEN2,',
'       TOKEN3,',
'       TOKEN4,',
'       TOKEN5,',
'       TOKEN6,',
'       TOKEN7,',
'       TOKEN8,',
'       TOKEN9,',
'       TOKEN10, */',
'       CREATED_DATE,',
'       DONE_FLAG,',
'       TABLE_NAME',
'  from MY_METADATA )',
'select  MY_METADATA_ID, my_metadata_clob_replace (md, cmt_Str,'' '') md, first_s_cmt,first_e_cmt,',
'cmt_str,',
'--       MD_HTML,',
'       MDSIZE,',
'       OWNER,',
'       ONAME,',
'       OTYPE,',
'       FIRST_200,',
'  /*     TOKEN1,',
'       TOKEN2,',
'       TOKEN3,',
'       TOKEN4,',
'       TOKEN5,',
'       TOKEN6,',
'       TOKEN7,',
'       TOKEN8,',
'       TOKEN9,',
'       TOKEN10, */',
'       CREATED_DATE,',
'       DONE_FLAG,',
'       TABLE_NAME       ',
' from abc'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(104935936857700320)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(104771470355699841)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(104936354500700320)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(104935936857700320)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(104866565688699908)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(104937958628700323)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(104935936857700320)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(104866565688699908)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P2_MY_METADATA_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(104938323465700323)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(104935936857700320)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(104866565688699908)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P2_MY_METADATA_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(104938709827700324)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(104935936857700320)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(104866565688699908)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P2_MY_METADATA_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101105923223203239)
,p_name=>'P2_TABLE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(104920910731700110)
,p_item_source_plug_id=>wwv_flow_api.id(104920910731700110)
,p_prompt=>'Table Name'
,p_source=>'TABLE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>400
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(104864052684699904)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101106037595203240)
,p_name=>'P2_FIRST_S_CMT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(104920910731700110)
,p_item_source_plug_id=>wwv_flow_api.id(104920910731700110)
,p_source=>'FIRST_S_CMT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101106146914203241)
,p_name=>'P2_FIRST_E_CMT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(104920910731700110)
,p_item_source_plug_id=>wwv_flow_api.id(104920910731700110)
,p_source=>'FIRST_E_CMT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(101106238637203242)
,p_name=>'P2_CMT_STR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(104920910731700110)
,p_item_source_plug_id=>wwv_flow_api.id(104920910731700110)
,p_prompt=>'Cmt Str'
,p_source=>'CMT_STR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>32767
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(104864052684699904)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104921337796700111)
,p_name=>'P2_MY_METADATA_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(104920910731700110)
,p_item_source_plug_id=>wwv_flow_api.id(104920910731700110)
,p_use_cache_before_default=>'NO'
,p_prompt=>'My Metadata ID'
,p_source=>'MY_METADATA_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(104865327959699905)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104922018959700309)
,p_name=>'P2_MD'
,p_source_data_type=>'CLOB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(104920910731700110)
,p_item_source_plug_id=>wwv_flow_api.id(104920910731700110)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Md'
,p_source=>'MD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(104864052684699904)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104922867713700310)
,p_name=>'P2_MDSIZE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(104920910731700110)
,p_item_source_plug_id=>wwv_flow_api.id(104920910731700110)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Mdsize'
,p_source=>'MDSIZE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(104864052684699904)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104923212124700310)
,p_name=>'P2_OWNER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(104920910731700110)
,p_item_source_plug_id=>wwv_flow_api.id(104920910731700110)
,p_prompt=>'Owner'
,p_source=>'OWNER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(104864052684699904)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104923683864700311)
,p_name=>'P2_ONAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(104920910731700110)
,p_item_source_plug_id=>wwv_flow_api.id(104920910731700110)
,p_prompt=>'Oname'
,p_source=>'ONAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(104864052684699904)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104924078126700311)
,p_name=>'P2_OTYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(104920910731700110)
,p_item_source_plug_id=>wwv_flow_api.id(104920910731700110)
,p_prompt=>'Otype'
,p_source=>'OTYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(104864052684699904)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104924486148700311)
,p_name=>'P2_FIRST_200'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(104920910731700110)
,p_item_source_plug_id=>wwv_flow_api.id(104920910731700110)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First 200'
,p_source=>'FIRST_200'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(104864052684699904)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104928804871700314)
,p_name=>'P2_CREATED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(104920910731700110)
,p_item_source_plug_id=>wwv_flow_api.id(104920910731700110)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created Date'
,p_source=>'CREATED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(104864052684699904)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104929244650700314)
,p_name=>'P2_DONE_FLAG'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(104920910731700110)
,p_item_source_plug_id=>wwv_flow_api.id(104920910731700110)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Done Flag'
,p_source=>'DONE_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(104864052684699904)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(104936474235700320)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(104936354500700320)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(104937224687700322)
,p_event_id=>wwv_flow_api.id(104936474235700320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(104939537635700324)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(104920910731700110)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form My Metadata'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(104939989836700325)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(104939101600700324)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(104920910731700110)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form My Metadata'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
