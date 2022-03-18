prompt --application/pages/page_00048
begin
--   Manifest
--     PAGE: 00048
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
 p_id=>48
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Poll Details'
,p_alias=>'POLL-DETAILS2'
,p_page_mode=>'MODAL'
,p_step_title=>'Poll Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518154207'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(589234247318765118)
,p_plug_name=>'published'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'Be cautious of what you change because this Poll is currently Published.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_polls',
' where id = :P48_ID',
'   and status_id = 3'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4635721322693686773)
,p_plug_name=>'Advanced'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4635721357186686774)
,p_plug_name=>'RDS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4635721519477686775)
,p_plug_name=>'Poll'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13964688487573738242)
,p_plug_name=>'Details'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13964694279560738272)
,p_plug_name=>'bottom buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24226451193804583333)
,p_plug_name=>'Customize Display'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13964688892621738243)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13964694279560738272)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13964688684267738243)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(13964694279560738272)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P48_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7608771005793240542)
,p_name=>'P48_POLL_OR_QUIZ'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(13964688487573738242)
,p_use_cache_before_default=>'NO'
,p_item_default=>'P'
,p_prompt=>'Type'
,p_source=>'POLL_OR_QUIZ'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'POLL OR QUIZ'
,p_lov=>'.'||wwv_flow_api.id(424566774689434481)||'.'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_help_text=>'Identify if the question set represents a poll or a quiz.  A poll can have scoring enabled to allow you to assign 0-10 to each answer and evaluate the responses based on either the average or cumulative score.  With a quiz, you identify the correct a'
||'nswer(s) and a grade is then assigned to each response.'
,p_inline_help_text=>'Choose the <strong>Poll</strong> type if there is no correct answer. Choose type <strong>Quiz</strong> if questions have correct answers.'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7608771848315240544)
,p_name=>'P48_USE_SECTIONS_YN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24226451193804583333)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Use Sections'
,p_source=>'USE_SECTIONS_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If set to Yes, you will be able to define sections and then assign questions to those sections.  If set to No, even if sections are defined, they will not be displayed within the poll.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7608772748216240545)
,p_name=>'P48_SCORE_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(4635721322693686773)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Poll Score Type'
,p_source=>'SCORE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'QSET_SCORE_TYPE'
,p_lov=>'.'||wwv_flow_api.id(14032707904479673080)||'.'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_help_text=>'Polls may be scored, meaning that answers to questions can be given a weighting of 0 to 10.  Scoring answers allows a poll, designed to be scored, the ability to distill poll results into a single numeric value.  Use scoring if you are asking satisfa'
||'ction type questions.  Textual responses can not be scored.'
,p_inline_help_text=>'Polls can be scored, this allows answers to be assigned a numeric value allowing you to sum or average responses over all answers.'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7608773671582240546)
,p_name=>'P48_IMAGE_BLOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(24226451193804583333)
,p_use_cache_before_default=>'NO'
,p_item_default=>'IMAGE_BLOB'
,p_prompt=>'Image'
,p_source=>'IMAGE_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If you include an image, it will be displayed at the top of any poll created from this question set.'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'IMAGE_MIMETYPE'
,p_attribute_03=>'IMAGE_FILENAME'
,p_attribute_04=>'IMAGE_CHARSET'
,p_attribute_05=>'IMAGE_LAST_UPDATED'
,p_attribute_06=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7608774635375240547)
,p_name=>'P48_IMAGE_HEIGHT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(24226451193804583333)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Image Height'
,p_source=>'IMAGE_HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7608774979480240547)
,p_name=>'P48_IMAGE_WIDTH'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(24226451193804583333)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Width'
,p_source=>'IMAGE_WIDTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13964689308225738247)
,p_name=>'P48_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4635721519477686775)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13964690289535738260)
,p_name=>'P48_POLL_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(4635721519477686775)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Poll Name'
,p_source=>'POLL_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The poll name will display in the email invitations as well as within this application.  Please use a descriptive name.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13964690883227738261)
,p_name=>'P48_STATUS_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(4635721519477686775)
,p_use_cache_before_default=>'NO'
,p_item_default=>'4'
,p_prompt=>'Status'
,p_source=>'STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'POLL STATUSES'
,p_lov=>'.'||wwv_flow_api.id(315066277989730098)||'.'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select <strong>Published</strong> if you wish to make this poll available to be taken (by the general user community or by those you have invited).  If you select <strong>Testing</strong>, the poll can be tested by users who are contributors.  Use th'
||'is to ensure your poll is set up correctly.  Once you are done testing and are ready to publish, you can easily remove your testing responses.'
,p_attribute_01=>'4'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14019801683583020624)
,p_name=>'P48_ANONYMOUS_YN'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(13964688487573738242)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Anonymize Results'
,p_source=>'ANONYMOUS_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If set to Yes, the name of the respondent will not be displayed when viewing results (e.g. who selected which answer).  If you choose <strong>No</strong>, each response will be labeled with the respondent.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14019802309881023663)
,p_name=>'P48_ALL_VIEW_RESULTS_YN'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(4635721322693686773)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Invitees Can View Results'
,p_source=>'ALL_VIEW_RESULTS_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Poll results are always viewable by Readers, Contributors and Administrators of this application. Click this to allow those invited to take this poll to view the results, whether or not they have Reader or greater access. If Yes, there will the optio'
||'n to include a "View Results" link in all email invitations and a "View Results" button will be displayed on the thank you page after completing the poll.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14022942508256473204)
,p_name=>'P48_CAN_UPDATE_ANSWERS_YN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(4635721322693686773)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Can Update Answers'
,p_source=>'CAN_UPDATE_ANSWERS_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If you allow update, a respondent can access the poll again and update their answers.  '
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14026491398368274604)
,p_name=>'P48_POLL_DETAILS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13964688487573738242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_source=>'POLL_DETAILS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This is only displayed to Contributors when managing the poll - not displayed to users when taking a poll.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14026491595133276145)
,p_name=>'P48_INTRO_TEXT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24226451193804583333)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Introduction Text'
,p_source=>'INTRO_TEXT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Introduction text, if provided, is displayed on the main poll page.  Use this to explain the poll, if necessary.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14026491791899277610)
,p_name=>'P48_THANK_YOU_TEXT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24226451193804583333)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Thank You Text'
,p_source=>'THANK_YOU_TEXT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>3
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Thank you text, if provided, is shown on the page the user is navigated to after they submit their response.  It does not need to thank them for submitting - the page already contains "Thank you for submitting your poll".'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14033596483938748112)
,p_name=>'P48_ENABLE_SCORE_YN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(4635721322693686773)
,p_use_cache_before_default=>'NO'
,p_item_default=>'N'
,p_prompt=>'Scoring Enabled'
,p_source=>'ENABLE_SCORE_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If scoring is enabled, the score of each response will be displayed in the results.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14035753485202521045)
,p_name=>'P48_INVITE_ONLY_YN'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(13964688487573738242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Invite Only'
,p_source=>'INVITE_ONLY_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Selecting invite only <strong>Yes</strong> will restrict the list of people who can take your poll to those who have been invited.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14094314402072337588)
,p_name=>'P48_AUTHENTICATION_REQ_YN'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(13964688487573738242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Require Login'
,p_source=>'AUTHENTICATION_REQ_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'If you select <strong>Yes</strong> for login required, all invitees will be required to login to take the poll.  If you choose <strong>No</strong> for login required, then your users will only require access to the server to take the poll.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(28542011857649078196)
,p_name=>'P48_ANON_NO_CHANGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(13964688487573738242)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Note'
,p_source=>'When a Poll is set to Anonymize Results and there are already responses, you cannot change the setting.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14094314692187342700)
,p_name=>'When not authenticated, invite only'
,p_event_sequence=>2
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P48_AUTHENTICATION_REQ_YN'
,p_condition_element=>'P48_AUTHENTICATION_REQ_YN'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14094315006443342724)
,p_event_id=>wwv_flow_api.id(14094314692187342700)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_INVITE_ONLY_YN'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14094315407262342725)
,p_event_id=>wwv_flow_api.id(14094314692187342700)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_INVITE_ONLY_YN'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14094315205073342724)
,p_event_id=>wwv_flow_api.id(14094314692187342700)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_INVITE_ONLY_YN'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(28542017261832086735)
,p_name=>'hide P48_ANON_NO_CHANGE'
,p_event_sequence=>15
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28542017670574086737)
,p_event_id=>wwv_flow_api.id(28542017261832086735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_ANON_NO_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(28541899776699243581)
,p_name=>'when anon and results, cannot change'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from eba_qpoll_results',
' where poll_id = :POLL_ID',
'   and :P48_ANONYMOUS_YN = ''Y'''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28541900169669243583)
,p_event_id=>wwv_flow_api.id(28541899776699243581)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_ANONYMOUS_YN'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(28542019466942089549)
,p_event_id=>wwv_flow_api.id(28541899776699243581)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_ANON_NO_CHANGE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7608782693138243512)
,p_name=>'show/hide poll score type'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P48_POLL_OR_QUIZ'
,p_condition_element=>'P48_POLL_OR_QUIZ'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Q'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7608783137742243513)
,p_event_id=>wwv_flow_api.id(7608782693138243512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_SCORE_TYPE,P48_ENABLE_SCORE_YN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7608783586794243514)
,p_event_id=>wwv_flow_api.id(7608782693138243512)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_SCORE_TYPE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7608784129048243514)
,p_event_id=>wwv_flow_api.id(7608782693138243512)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_SCORE_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(329636174630789767)
,p_event_id=>wwv_flow_api.id(7608782693138243512)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_ENABLE_SCORE_YN'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(329636283512789768)
,p_name=>'show/hide enable score'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P48_SCORE_TYPE'
,p_condition_element=>'P48_SCORE_TYPE'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'A,C'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(334570384054153819)
,p_event_id=>wwv_flow_api.id(329636283512789768)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_ENABLE_SCORE_YN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(334570440034153820)
,p_event_id=>wwv_flow_api.id(329636283512789768)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_ENABLE_SCORE_YN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(334570580997153821)
,p_event_id=>wwv_flow_api.id(329636283512789768)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_ENABLE_SCORE_YN'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13964693685093738271)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_QPOLL_POLLS'
,p_attribute_02=>'EBA_QPOLL_POLLS'
,p_attribute_03=>'P48_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13964693898563738272)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_QPOLL_POLLS'
,p_attribute_02=>'EBA_QPOLL_POLLS'
,p_attribute_03=>'P48_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(329633476393789740)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set POLL_NAME'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':POLL_NAME       := null;',
':POLL_OR_QUIZ    := null;',
':POLL_AUTHENTICATION_REQ_YN := null;',
'',
'for c1 in (',
'   select id, apex_escape.html(poll_name) as poll_name, poll_or_quiz, authentication_req_yn',
'     from eba_qpoll_polls',
'    where id = :POLL_ID',
') loop',
'   :POLL_NAME       := c1.poll_name;',
'   :POLL_OR_QUIZ    := c1.poll_or_quiz;',
'   :POLL_AUTHENTICATION_REQ_YN := c1.authentication_req_yn;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13964694105954738272)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(349283365669878131)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14094316697381344237)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set values of disabled items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P48_AUTHENTICATION_REQ_YN = ''N'' then',
'   :P48_INVITE_ONLY_YN := ''Y'';',
'end if;',
'',
'-- if was anonymous and there is one result, can''t change',
'for c1 in (',
'   select p.anonymous_yn',
'     from eba_qpoll_polls p,',
'          eba_qpoll_results r',
'    where p.id = :POLL_ID',
'      and p.id = r.poll_id',
') loop',
'   if c1.anonymous_yn = ''Y'' then',
'      :P48_ANONYMOUS_YN := ''Y'';',
'   end if;',
'   exit;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13964688684267738243)
);
wwv_flow_api.component_end;
end;
/
