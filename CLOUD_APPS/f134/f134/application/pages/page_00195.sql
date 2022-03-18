prompt --application/pages/page_00195
begin
--   Manifest
--     PAGE: 00195
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
 p_id=>195
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'My Profile'
,p_page_mode=>'MODAL'
,p_step_title=>'My Profile'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5958518907406586753)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>'.attachment-note {color: #707070;}'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190903103051'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15291031771517632572)
,p_plug_name=>'My Profile'
,p_region_name=>'myProfile'
,p_region_css_classes=>'none'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15291032487516632573)
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
 p_id=>wwv_flow_api.id(15291032831623632574)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15291032487516632573)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15291032228673632573)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(15291032487516632573)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P195_UPDATE_BTN_TEXT.'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P195_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2760164151994015481)
,p_name=>'P195_COUNTRY_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Country'
,p_source=>'COUNTRY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P195_COUNTRIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select country_name d, id r',
'from eba_proj_countries',
'where (region_id = :P195_REGION_ID and :P195_REGION_ID is not null)',
'or (region_id is not null and :P195_REGION_ID is null)',
'order by lower(country_name)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_lov_cascade_parent_items=>'P195_REGION_ID'
,p_ajax_items_to_submit=>'P195_REGION_ID'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2760164243671015482)
,p_name=>'P195_REGION_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Region'
,p_source=>'REGION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P195_REGIONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct r.region_name d, c.region_id r',
'  from eba_proj_countries c,',
'       eba_proj_regions r',
' where c.region_id = r.id',
'   and ((c.id = :P195_COUNTRY_ID and :P195_COUNTRY_ID is not null)',
'or (c.id is not null and :P195_COUNTRY_ID is null))',
'order by lower(r.region_name)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2760164588604015485)
,p_name=>'P195_HOME_TIMEZONE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Home Timezone'
,p_source=>'HOME_TIMEZONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct tzname d, tzname r',
'  from V$TIMEZONE_NAMES',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2760164691460015486)
,p_name=>'P195_TEAM_GROUPS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Team Groups'
,p_source=>'TEAM_GROUPS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct team_groups from eba_proj_status_users'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(2770587393234575801)
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2760164737434015487)
,p_name=>'P195_SKILLSETS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Skillset(s)'
,p_source=>'SKILLSETS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct skillsets from eba_proj_status_users'
,p_cSize=>30
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(2770587552010580829)
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2760164829390015488)
,p_name=>'P195_BG_CHECKS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Background Checks'
,p_source=>'BG_CHECKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>'select distinct bg_checks from eba_proj_status_users'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(2770587737367599922)
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2760164962587015489)
,p_name=>'P195_HIPPA_CERT_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'HIPPA Certified On'
,p_source=>'HIPPA_CERT_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(2770587954927608466)
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15168142937420469045)
,p_name=>'P195_PHOTO_DISPLAY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Photo'
,p_post_element_text=>'&nbsp;<button class="t-Button t-Button--small" id="deletePic" type="button">Delete Photo</button>'
,p_source=>'PHOTO_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'style="max-width: 250px; max-height: 250px;"'
,p_display_when=>'select null from EBA_PROJ_STATUS_USERS where upper(username) = :APP_USER and dbms_lob.getlength(photo_blob) > 0'
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Drag and drop a new image file onto the File Browse/Choose File button above to replace this photo. Please upload square photos, non-square photos may appear distorted. Images should be 250 pixels wide and 250 pixels tall.'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_04=>'PHOTO_NAME'
,p_attribute_05=>'PHOTO_LASTUPD'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15291035237500632657)
,p_name=>'P195_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15291035574732632670)
,p_name=>'P195_USERNAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15291035998071632672)
,p_name=>'P195_NOTE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Profile'
,p_source=>'NOTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15291036320219632673)
,p_name=>'P195_PHOTO_BLOB'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image/File'
,p_post_element_text=>'<br><small class="attachment-note">Attachments must be under 350K in size.</small>'
,p_source=>'PHOTO_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Please upload square photos, non-square photos may appear distorted. Images should be 250 pixels wide and 250 pixels tall. The file size of your photo must be less than 350kb.'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15291036748921632675)
,p_name=>'P195_PHOTO_NAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Photo Name'
,p_source=>'PHOTO_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P195_PHOTO_BLOB'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15291037202680632675)
,p_name=>'P195_PHOTO_MIMETYPE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_source=>'PHOTO_MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15291037604897632676)
,p_name=>'P195_PHOTO_CHARSET'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_source=>'PHOTO_CHARSET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15291037967237632676)
,p_name=>'P195_PHOTO_LASTUPD'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_source=>'PHOTO_LASTUPD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15292176249611915794)
,p_name=>'P195_PHONE_01'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone 1'
,p_source=>'PHONE_01'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15292183610175867503)
,p_name=>'P195_PHONE_02'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Phone 2'
,p_source=>'PHONE_02'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15292208461227923254)
,p_name=>'P195_TITLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'select null from EBA_PROJ_STATUS_USERS where upper(username) = :APP_USER and title is not null'
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Ask your application administrator to update your title (if the title information displayed here seems incorrect to you).'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15292210891647925250)
,p_name=>'P195_ADDRESS'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Address'
,p_source=>'ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15292212800732927511)
,p_name=>'P195_ASSISTANT_NAME'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assistant Name'
,p_source=>'ASSISTANT_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(2814507098077253822)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15292214570248929424)
,p_name=>'P195_ASSISTANT_PHONE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assistant Phone'
,p_source=>'ASSISTANT_PHONE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(2814507098077253822)
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15292326458171964902)
,p_name=>'P195_EMAIL_ADDRESS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email'
,p_source=>'EMAIL_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'EMAIL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15334710021722361116)
,p_name=>'P195_FIRST_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15334713160792362864)
,p_name=>'P195_LAST_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20233638703563250530)
,p_name=>'P195_UPDATE_BTN_TEXT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15291031771517632572)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(15168142894683469044)
,p_computation_sequence=>10
,p_computation_item=>'P195_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select id from EBA_PROJ_STATUS_USERS where upper(username) = :APP_USER'
,p_compute_when=>'P195_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(20233638722955250531)
,p_computation_sequence=>10
,p_computation_item=>'P195_UPDATE_BTN_TEXT'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_person_id number := :P195_ID;',
'    l_user_id   number;',
'    l_btn_text  varchar2(50);',
'begin',
'    for c1 in',
'    (',
'        select id',
'          from eba_proj_status_users',
'         where upper(username) = :APP_USER',
'    )',
'    loop',
'        l_user_id := c1.id;',
'    end loop;',
'    if l_person_id = l_user_id then',
'        l_btn_text := ''Update My Profile'';',
'    else',
'        l_btn_text := ''Update '' || apex_escape.html(:P137_DISPLAY_NAME) || ''''''s Profile'';',
'    end if;',
'    return l_btn_text;',
'end;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15291032918213632574)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15291032831623632574)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15291033788869632577)
,p_event_id=>wwv_flow_api.id(15291032918213632574)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15168143501516469050)
,p_name=>'Delete Photo'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#deletePic'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(this.triggeringElement).text() === "Delete Photo"'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15168143748470469053)
,p_event_id=>wwv_flow_api.id(15168143501516469050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'Are you sure you want to delete this photo?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15168143569782469051)
,p_event_id=>wwv_flow_api.id(15168143501516469050)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update eba_proj_status_users set photo_blob = null, photo_mimetype = null, photo_name = null, photo_lastupd = null, photo_charset = null where id = :P195_ID;',
'commit;'))
,p_attribute_02=>'P195_ID,P195_PHOTO_BLOB,P195_PHOTO_NAME,P195_PHOTO_MIMETYPE,P195_PHOTO_CHARSET,P195_PHOTO_LASTUPD,P195_PHOTO_DISPLAY'
,p_attribute_03=>'P195_ID,P195_PHOTO_BLOB,P195_PHOTO_NAME,P195_PHOTO_MIMETYPE,P195_PHOTO_CHARSET,P195_PHOTO_LASTUPD,P195_PHOTO_DISPLAY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15168144837534469064)
,p_event_id=>wwv_flow_api.id(15168143501516469050)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''a'').text(''Download'').remove();'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15168144569880469061)
,p_event_id=>wwv_flow_api.id(15168143501516469050)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P195_PHOTO_DISPLAY'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15291040836216632681)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_PROJ_STATUS_USERS'
,p_attribute_02=>'EBA_PROJ_STATUS_USERS'
,p_attribute_03=>'P195_ID'
,p_attribute_04=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15291041262732632683)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_PROJ_STATUS_USERS'
,p_attribute_02=>'EBA_PROJ_STATUS_USERS'
,p_attribute_03=>'P195_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15291042094259632684)
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
