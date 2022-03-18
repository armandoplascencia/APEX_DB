prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>128
,p_default_id_offset=>101063537470361591
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(114040253666691082)
,p_name=>'General Information'
,p_alias=>'GENERAL-INFORMATION'
,p_page_mode=>'MODAL'
,p_step_title=>'General Information'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220105012923'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(114294378110694162)
,p_plug_name=>'General Information'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(113919692633690943)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'PKI_GENERAL_INFORMATIONS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(114309961105694185)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(113920694257690944)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(114310411576694186)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(114309961105694185)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114015766488691053)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(114312011487694188)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(114309961105694185)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(114015766488691053)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(114312423087694189)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(114309961105694185)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114015766488691053)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(114312753275694189)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(114309961105694185)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114015766488691053)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P21_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114294710801694163)
,p_name=>'P21_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114014617903691052)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114295039416694163)
,p_name=>'P21_LOCATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Location'
,p_source=>'LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOCATIONS.NAME'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114013309008691050)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114295505384694164)
,p_name=>'P21_IDVARCHAR2128_PRIMARY_KEY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Idvarchar2128 Primary Key'
,p_source=>'IDVARCHAR2128_PRIMARY_KEY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114013309008691050)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114295910147694165)
,p_name=>'P21_BRAND_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Brand'
,p_source=>'BRAND_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NEW_BRAND.IDVARCHAR2128_PRIMARY_KEY'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114013309008691050)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114296280740694165)
,p_name=>'P21_ADDRESS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address'
,p_source=>'ADDRESS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NEW_ADDRESS.IDVARCHAR2128_PRIMARY_KEY'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114013309008691050)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114296735628694166)
,p_name=>'P21_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type'
,p_source=>'TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114013309008691050)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114297064765694167)
,p_name=>'P21_IMAGES_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Images'
,p_source=>'IMAGES_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NEW_IMAGES.IDVARCHAR2128_PRIMARY_KEY'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114013309008691050)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114297438594694167)
,p_name=>'P21_WORKTIME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Worktime'
,p_source=>'WORKTIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114013309008691050)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114297927189694168)
,p_name=>'P21_ELECTRICAL_REQUIRE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Electrical Require'
,p_source=>'ELECTRICAL_REQUIRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114013309008691050)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114298244532694169)
,p_name=>'P21_INTERNET_REQUIRE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Internet Require'
,p_source=>'INTERNET_REQUIRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114013309008691050)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114298638283694169)
,p_name=>'P21_CREATEDBY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Createdby'
,p_source=>'CREATEDBY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>128
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114013309008691050)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114299056884694170)
,p_name=>'P21_UPDATEDBY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updatedby'
,p_source=>'UPDATEDBY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114013309008691050)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114299511039694171)
,p_name=>'P21_CREATEDAT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Createdat'
,p_source=>'CREATEDAT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114013309008691050)
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
 p_id=>wwv_flow_api.id(114300260904694172)
,p_name=>'P21_UPDATEDAT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updatedat'
,p_source=>'UPDATEDAT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114013309008691050)
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
 p_id=>wwv_flow_api.id(114301068482694173)
,p_name=>'P21_DELETEDAT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Deletedat'
,p_source=>'DELETEDAT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114013309008691050)
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
 p_id=>wwv_flow_api.id(114301845428694174)
,p_name=>'P21_CREATED'
,p_source_data_type=>'TIMESTAMP'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114014617903691052)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114302692570694175)
,p_name=>'P21_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114014617903691052)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114303059722694176)
,p_name=>'P21_UPDATED'
,p_source_data_type=>'TIMESTAMP'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114014617903691052)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(114303857780694177)
,p_name=>'P21_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(114294378110694162)
,p_item_source_plug_id=>wwv_flow_api.id(114294378110694162)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>60
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(114014617903691052)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(114300022305694171)
,p_validation_name=>'P21_CREATEDAT must be timestamp'
,p_validation_sequence=>120
,p_validation=>'P21_CREATEDAT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(114299511039694171)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(114300829790694173)
,p_validation_name=>'P21_UPDATEDAT must be timestamp'
,p_validation_sequence=>130
,p_validation=>'P21_UPDATEDAT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(114300260904694172)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(114301610389694174)
,p_validation_name=>'P21_DELETEDAT must be timestamp'
,p_validation_sequence=>140
,p_validation=>'P21_DELETEDAT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(114301068482694173)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(114302343325694175)
,p_validation_name=>'P21_CREATED must be timestamp'
,p_validation_sequence=>150
,p_validation=>'P21_CREATED'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(114301845428694174)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(114303616322694177)
,p_validation_name=>'P21_UPDATED must be timestamp'
,p_validation_sequence=>170
,p_validation=>'P21_UPDATED'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(114303059722694176)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(114310529601694186)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(114310411576694186)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(114311321809694187)
,p_event_id=>wwv_flow_api.id(114310529601694186)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(114313623430694190)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(114294378110694162)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form General Information'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(114314016784694190)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(114313185552694190)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(114294378110694162)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form General Information'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
