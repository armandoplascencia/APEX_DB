prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Event Details'
,p_alias=>'EVENT-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Event Details'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(1398772477606929854)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var groupCal = groupCal || {};',
'',
'groupCal.defaultDuration = 1;'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3336588977096114584)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200817100012'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1797847419215390489)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842835406014310)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8050779241943220465)
,p_plug_name=>'Links'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1797849259226014317)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9022042994209333678)
,p_plug_name=>'Event'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9022582412046332307)
,p_plug_name=>'Audit Information'
,p_parent_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P10_EVENT_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9240687394275628281)
,p_plug_name=>'Recurrence'
,p_parent_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8604603564572652042)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(1797847419215390489)
,p_button_name=>'DELETE2'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P10_EVENT_ID is not null and',
':P10_SERIES_ID is not null'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9022043106602333679)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1797847419215390489)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9022043201282333679)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1797847419215390489)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P10_EVENT_ID is not null and',
':P10_SERIES_ID is null'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9022043303956333679)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1797847419215390489)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10_EVENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9022043414301333679)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1797847419215390489)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Event'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10_EVENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8602659858246476615)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P10_RECUR = ''Y'' and :REQUEST in (''SAVE'',''DELETE2'')'
,p_branch_condition_text=>'PLSQL'
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 08-SEP-2010 20:10 by SBKENNED'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8602661849420511973)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(9022043201282333679)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 08-SEP-2010 20:10 by SBKENNED'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(690316771502263324)
,p_branch_name=>'Go To Home if setting event to recur'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(9022043303956333679)
,p_branch_sequence=>30
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':P10_RECUR = ''N'' and :P10_RECUR_FLAG = ''Y'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(9022043522706333680)
,p_branch_name=>'Go To Page &LAST_VIEW.'
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':REQUEST not in (''DELETE'',''DELETE2'')'
,p_branch_condition_text=>'PLSQL'
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1774768684489852800)
,p_name=>'P10_CALENDAR_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_prompt=>'Calendar'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CALENDARS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select short_name || '' - '' || calendar_name || decode(public_view_yn, ''Y'', null, '' (Private)'') d',
', calendar_id r',
'from eba_ca_calendars c',
'where public_view_yn = ''Y''',
'or    exists (select ''x''',
'              from eba_ca_users u',
'              where u.username = :APP_USER',
'              and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                     or (access_level_id = 3 and restricted_to is null)',
'                    )',
'             ) ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Default Calendar -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'Name of the event.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1960836786432227045)
,p_name=>'P10_NEW_COLOR_PREF_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Color Preference'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COLOR PREFERENCE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select color_name, id ',
'from EBA_CA_color_prefs ',
'order by display_sequence, id'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Color Preference -'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1960837104011230038)
,p_name=>'P10_NEW_INTERNAL_YN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_use_cache_before_default=>'NO'
,p_prompt=>'External / Internal'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:External;N,Internal Only;Y'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_required_patch=>wwv_flow_api.id(1713314835132982612)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337835770481192572)
,p_name=>'P10_TAGS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_prompt=>'Tags'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag',
'  from eba_ca_tags_type_sum',
' where content_type = ''EVENT''',
' order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'Y'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_11=>','
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338925264251698546)
,p_name=>'P10_CONTACT_EMAIL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_prompt=>'Contact Email'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Person to contact for more information.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7484289796768940265)
,p_name=>'P10_SUPPRESS_TIME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_prompt=>'All day event?'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'CHECKBOX'
,p_lov=>'.'||wwv_flow_api.id(9240797696184016672)||'.'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'If you do not want the start time to display on the Monthly report, check Suppress Time.'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8050743947905127554)
,p_name=>'P10_LINK_NAME_1'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(8050779241943220465)
,p_prompt=>'Name 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Name of 1st link.  If not provided, the URL will be displayed.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8050745525526130517)
,p_name=>'P10_LINK_URL_1'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(8050779241943220465)
,p_prompt=>'URL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_protection_level=>'S'
,p_help_text=>'URL for 1st link.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8050754827520150046)
,p_name=>'P10_LINK_NAME_2'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(8050779241943220465)
,p_prompt=>'2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Name of 2nd link.  If not provided, the URL will be displayed.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8050755336178152560)
,p_name=>'P10_LINK_URL_2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(8050779241943220465)
,p_prompt=>'2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1797875248052014376)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_protection_level=>'S'
,p_help_text=>'URL for 2nd link.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8050763124104177447)
,p_name=>'P10_LINK_NAME_3'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(8050779241943220465)
,p_prompt=>'3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Name of 3rd link.  If not provided, the URL will be displayed.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8050763731376179485)
,p_name=>'P10_LINK_URL_3'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(8050779241943220465)
,p_prompt=>'3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1797875248052014376)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_protection_level=>'S'
,p_help_text=>'URL for 3rd link.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8479002945109810777)
,p_name=>'P10_SERIES_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(9240687394275628281)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8602620864462327065)
,p_name=>'P10_LOCATION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_prompt=>'Location'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Location of the event.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8602661464180506759)
,p_name=>'P10_RECUR'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(9240687394275628281)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8863715498540075286)
,p_name=>'P10_EVENT_DATE_D'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_prompt=>'Date'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Select the event date.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8897794983183983247)
,p_name=>'P10_NEW_EVENT_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_prompt=>'New Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>48
,p_cMaxlength=>60
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'If desired type is not in the select list, you can enter an event type here and it will be created.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9022043614528333681)
,p_name=>'P10_EVENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9022043705888333682)
,p_name=>'P10_EVENT_NAME'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Name of the event.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9022043899618333682)
,p_name=>'P10_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_item_default=>'nvl(:P1_EVENT_TYPE,:P12_EVENT_TYPE)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EVENT TYPES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'  from',
'(',
'select 1 ob, ''- New Event Type -'' d, -1 r',
'  from dual',
'union all',
'select 2 ob, type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', '' (External)''), null) d, type_id r',
'  from EBA_ca_event_types',
'where (:EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
')',
'order by ob, d'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Type -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'Type of event.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9022044100518333682)
,p_name=>'P10_EVENT_DATE_TIME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9022045105811333683)
,p_name=>'P10_EVENT_DESC'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Description of the event.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9022045301907333684)
,p_name=>'P10_CONTACT_PERSON'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_prompt=>'Contact Person'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Person to contact for more information.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9022045517049333684)
,p_name=>'P10_CREATED_ON'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(9022582412046332307)
,p_prompt=>'Created:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The date on which the record was created.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9022045816147333684)
,p_name=>'P10_CREATED_BY'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(9022582412046332307)
,p_prompt=>'Created By:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The user who created the record.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9022046011789333684)
,p_name=>'P10_LAST_UPDATED_ON'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(9022582412046332307)
,p_prompt=>'Last Updated:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The date on which the record was last updated.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9022046324684333684)
,p_name=>'P10_LAST_UPDATED_BY'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(9022582412046332307)
,p_prompt=>'Last Updated By:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'The user who last updated the record.'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9233406709073859056)
,p_name=>'P10_EVENT_START_TIME_D'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_prompt=>'Start Time'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'START TIME SELECTOR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(trunc(sysdate)+((i-1)/48),v(''APP_TIME_FORMAT'')) d,',
'       to_char(trunc(sysdate)+((i-1)/48),v(''APP_TIME_FORMAT'')) r',
'  from wwv_flow_dual100',
' where i < 49',
'order by i',
''))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Start time of the event.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9233407418077861679)
,p_name=>'P10_DURATION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_prompt=>'End Time'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(to_date(to_char(trunc(sysdate),''&APP_DATE_FORMAT.'')||:P10_EVENT_START_TIME_D,',
'                       ''&APP_DATE_FORMAT.''||''&APP_TIME_FORMAT.'') + ((i-1)/(24*4)),',
'               ''&APP_TIME_FORMAT.'') ||',
'       '' ('' ||',
'      case when i = 1 then ''0 mins''',
'            when i = 2 then ''15 mins''',
'            when i = 3 then ''30 mins''',
'            when i = 4 then ''45 mins''',
'            when i = 5 then ''1 hr''',
'            when i > 5 then to_char(trunc((i-1)/4)) || '' hrs'' ||',
'              case when i - trunc((i-1)/4)*4 = 1 then ''''',
'                   when i - trunc((i-1)/4)*4 = 2 then '' 15 mins''',
'                   when i - trunc((i-1)/4)*4 = 3 then '' 30 mins''',
'                   when i - trunc((i-1)/4)*4 = 4 then '' 45 mins''',
'               end',
'             end',
'       || '')'' d,',
'       (i-1)/4 r',
'  from wwv_flow_dual100',
' where i < 50',
'order by i',
''))
,p_lov_cascade_parent_items=>'P10_EVENT_START_TIME_D'
,p_ajax_items_to_submit=>'P10_DURATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'End time of the event.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9240771817898890493)
,p_name=>'P10_RECUR_FREQ'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(9240687394275628281)
,p_prompt=>'Frequency'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'RECUR FREQUENCY'
,p_lov=>'.'||wwv_flow_api.id(9240770001967885879)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'Select recurrence frequency.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9240773609717897630)
,p_name=>'P10_RECUR_END_DATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(9240687394275628281)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'case when :P10_EVENT_ID is null',
'     then sysdate+7',
'     else to_date(:P10_EVENT_DATE_D,''&APP_DATE_FORMAT.'')+7',
'     end'))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>15
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Date on which the recurrence will end.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9240789412843974192)
,p_name=>'P10_RECUR_FLAG'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(9022042994209333678)
,p_prompt=>'Recurs?'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'CHECKBOX'
,p_lov=>'.'||wwv_flow_api.id(9240797696184016672)||'.'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_help_text=>'Identifies if event recurs.'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3874484102193559984)
,p_computation_sequence=>10
,p_computation_item=>'P10_EVENT_DATE_D'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'to_char(to_date(:P10_EVENT_DATE_D,''&APP_DATE_TIME_FORMAT.''),''&APP_NLS_DATE_FORMAT.'')'
,p_compute_when=>'P10_EVENT_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(8095269041365924489)
,p_computation_sequence=>10
,p_computation_item=>'P10_EVENT_START_TIME_D'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(trunc(to_date(to_char(current_timestamp,''&APP_TIME_FORMAT.''),''&APP_TIME_FORMAT.''),''HH'')+1/24,''&APP_TIME_FORMAT.'') from dual',
''))
,p_compute_when=>'P10_EVENT_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(8494080071097553459)
,p_computation_sequence=>20
,p_computation_item=>'P10_DURATION'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
,p_compute_when=>'P10_EVENT_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1594029051303206735)
,p_validation_name=>'P10_NEW_EVENT_TYPE Not Null'
,p_validation_sequence=>10
,p_validation=>'P10_NEW_EVENT_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P10_TYPE_ID'
,p_validation_condition2=>'-1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_api.id(8897794983183983247)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1947020148982972801)
,p_validation_name=>'P10_NEW_COLOR_PREF_ID Not Null'
,p_validation_sequence=>30
,p_validation=>'P10_NEW_COLOR_PREF_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P10_TYPE_ID'
,p_validation_condition2=>'-1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_api.id(1960836786432227045)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1947020323540972802)
,p_validation_name=>'P10_NEW_INTERNAL_YN Not Null'
,p_validation_sequence=>40
,p_validation=>'P10_NEW_INTERNAL_YN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P10_TYPE_ID'
,p_validation_condition2=>'-1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_associated_item=>wwv_flow_api.id(1960837104011230038)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_required_patch=>wwv_flow_api.id(1713314835132982612)
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(9240837017543164726)
,p_validation_name=>'P10_RECUR_END_DATE not null'
,p_validation_sequence=>50
,p_validation=>'P10_RECUR_END_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Recur End Date must be supplied.'
,p_validation_condition=>'P10_RECUR_FLAG'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(9240773609717897630)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(9240835600443150349)
,p_validation_name=>'recur end date > event date'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'to_date(:P10_RECUR_END_DATE,''&APP_DATE_FORMAT.'') >=',
'to_date(:P10_EVENT_DATE_D,''&APP_DATE_FORMAT.'')'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Recur End Date must be after Event Date'
,p_validation_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P10_RECUR_END_DATE is not null and ',
':P10_RECUR_FLAG is not null'))
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_associated_item=>wwv_flow_api.id(9240773609717897630)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(375472518199868819)
,p_validation_name=>'Valid Characters in Tag'
,p_validation_sequence=>70
,p_validation=>'not regexp_like( :P10_TAGS, ''[:;#\/\\\?\&]'' )'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Tags may not contain the following characters: : ; \ / ? &'
,p_validation_condition=>'CREATE,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_api.id(3337835770481192572)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(566714122207570927)
,p_validation_name=>'URL 1 must start with http'
,p_validation_sequence=>80
,p_validation=>'substr(:P10_LINK_URL_1, 1, 4) = ''http'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'URL must start with http:// or https://'
,p_validation_condition=>'P10_LINK_URL_1'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(8050745525526130517)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(566714196724570928)
,p_validation_name=>'URL 2 must start with http'
,p_validation_sequence=>90
,p_validation=>'substr(:P10_LINK_URL_2, 1, 4) = ''http'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'URL must start with http:// or https://'
,p_validation_condition=>'P10_LINK_URL_2'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(8050755336178152560)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(566714341928570929)
,p_validation_name=>'URL 3 must start with http'
,p_validation_sequence=>100
,p_validation=>'substr(:P10_LINK_URL_3, 1, 4) = ''http'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'URL must start with http:// or https://'
,p_validation_condition=>'P10_LINK_URL_3'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(8050763731376179485)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8494090847380584406)
,p_name=>'save duration'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_DURATION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8494091163638584411)
,p_event_id=>wwv_flow_api.id(8494090847380584406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var duration = $v("P10_DURATION");',
'',
'if ( duration > 0 ) {',
'   groupCal.defaultDuration = duration;',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8494248142475829004)
,p_name=>'reset duration after refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_DURATION'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8494248460421829005)
,p_event_id=>wwv_flow_api.id(8494248142475829004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_DURATION'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'groupCal.defaultDuration'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9240804405319028787)
,p_name=>'display recurrence region'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_RECUR_FLAG'
,p_condition_element=>'P10_RECUR_FLAG'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9240804701939028789)
,p_event_id=>wwv_flow_api.id(9240804405319028787)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9240687394275628281)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9240804892912028790)
,p_event_id=>wwv_flow_api.id(9240804405319028787)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9240687394275628281)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8897824488612126686)
,p_name=>'show/hide new event type'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_TYPE_ID'
,p_condition_element=>'P10_TYPE_ID'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'-1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8897824782047126693)
,p_event_id=>wwv_flow_api.id(8897824488612126686)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_NEW_EVENT_TYPE,P10_NEW_COLOR_PREF_ID,P10_NEW_INTERNAL_YN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8897824984440126698)
,p_event_id=>wwv_flow_api.id(8897824488612126686)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_NEW_EVENT_TYPE,P10_NEW_COLOR_PREF_ID,P10_NEW_INTERNAL_YN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8095194730948694387)
,p_name=>'redefault recur end date'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_EVENT_DATE_D'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>'(:P10_EVENT_ID is null or :P10_RECUR_FLAG is null) and regexp_like(:P10_EVENT_DATE_D,''^[:digit:]+\-[:alpha:]+\-[:digit:]+$'')'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8095195045806694392)
,p_event_id=>wwv_flow_api.id(8095194730948694387)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_RECUR_END_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'to_date(:P10_EVENT_DATE_D,''&APP_DATE_FORMAT.'')+7'
,p_attribute_07=>'P10_EVENT_DATE_D'
,p_attribute_08=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3385487772637447524)
,p_name=>'Hide time if All Day event'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_SUPPRESS_TIME'
,p_condition_element=>'P10_SUPPRESS_TIME'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3385488050737447526)
,p_event_id=>wwv_flow_api.id(3385487772637447524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_EVENT_START_TIME_D,P10_DURATION'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3385488258029447527)
,p_event_id=>wwv_flow_api.id(3385487772637447524)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P10_EVENT_START_TIME_D,P10_DURATION'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1797847462874390490)
,p_name=>'Cancel Dialog'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9022043106602333679)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1797847602562390491)
,p_event_id=>wwv_flow_api.id(1797847462874390490)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8863866069937502259)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select event_name,',
'          calendar_id,',
'          type_id,',
'          event_date_time,',
'          duration,',
'          event_desc,',
'          contact_person,',
'          case when display_time = ''Y'' then null',
'               when display_time = ''N'' then ''Y''',
'               end suppress_time,',
'          location,',
'          link_name_1, link_url_1, link_name_2, link_url_2, link_name_3, link_url_3,',
'          series_id,',
'          created_on, ',
'          created_by, ',
'          last_updated_on, ',
'          last_updated_by, ',
'          tags,',
'          contact_email',
'     from EBA_ca_events',
'   where event_id = :P10_EVENT_ID )',
'loop',
'   :P10_EVENT_NAME         := c1.event_name;	',
'   :P10_CALENDAR_ID        := c1.calendar_id;',
'   :P10_TYPE_ID	           := c1.type_id;	',
'   :P10_EVENT_DATE_TIME	   := to_char(c1.event_date_time,''&APP_DATE_FORMAT.&APP_TIME_FORMAT.'');		',
'   :P10_EVENT_DATE_D	   := to_char(c1.event_date_time,''&APP_DATE_FORMAT.'');	',
'   :P10_EVENT_START_TIME_D := to_char(c1.event_date_time,''&APP_TIME_FORMAT.'');	',
'   :P10_DURATION           := c1.duration;	',
'   :P10_EVENT_DESC	   := c1.event_desc;	',
'   :P10_CONTACT_PERSON	   := c1.contact_person;',
'   if c1.contact_email is null and ',
'      instr(c1.contact_person,''@'') > 0 and ',
'      instr(c1.contact_person,''.'') > 0 then',
'      :P10_CONTACT_EMAIL      := c1.contact_person;',
'   else',
'      :P10_CONTACT_EMAIL      := c1.contact_email;',
'   end if;',
'   ',
'   :P10_SUPPRESS_TIME      := c1.suppress_time;',
'   :P10_LOCATION           := c1.location;',
'   :P10_LINK_NAME_1        := c1.link_name_1;',
'   :P10_LINK_URL_1         := c1.link_url_1;',
'   :P10_LINK_NAME_2        := c1.link_name_2;',
'   :P10_LINK_URL_2         := c1.link_url_2;',
'   :P10_LINK_NAME_3        := c1.link_name_3;',
'   :P10_LINK_URL_3         := c1.link_url_3;',
'   :P10_TAGS               := c1.tags;',
'   :P10_SERIES_ID          := c1.series_id;	',
'',
'   :P10_CREATED_ON	   := apex_util.get_since(c1.created_on);	',
'   :P10_CREATED_BY	   := c1.created_by;	',
'   :P10_LAST_UPDATED_ON	   := apex_util.get_since(c1.last_updated_on);	',
'   :P10_LAST_UPDATED_BY	   := c1.last_updated_by;	',
'',
'   if c1.series_id is not null then',
'      for c2 in (',
'         select recur_freq,',
'                end_date',
'           from EBA_ca_series',
'         where series_id = c1.series_id )',
'      loop',
'         :P10_RECUR_FLAG	:= ''Y'';',
'         :P10_RECUR_FREQ	:= c2.recur_freq;	',
'         :P10_RECUR_END_DATE	:= to_char(c2.end_date,''&APP_DATE_FORMAT.'');	',
'      end loop;',
'      :P10_RECUR := ''Y'';',
'   else',
'      :P10_RECUR := ''N'';',
'   end if;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'failed to load data'
,p_process_when=>'P10_EVENT_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9244672718824732777)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_type_id         number;',
'   l_new_event_type  varchar2(60);',
'   l_display_time    varchar2(1);',
'   l_duration        number := :P10_DURATION;',
'begin',
'',
'if :P10_TYPE_ID = ''-1'' then',
'   l_type_id        := null;',
'   l_new_event_type := :P10_NEW_EVENT_TYPE;',
'else',
'   l_type_id        := :P10_TYPE_ID;',
'   l_new_event_type := null;',
'end if;',
'',
'if :P10_SUPPRESS_TIME = ''Y'' then',
'   l_display_time := ''N'';',
'   l_duration := 24;',
'else',
'   l_display_time := ''Y'';',
'end if;',
'',
'EBA_ca_api.create_event (',
'   p_event_name      => :P10_EVENT_NAME,',
'   p_calendar_id     => :P10_CALENDAR_ID,',
'   p_type_id         => l_type_id,',
'   p_new_event_type  => l_new_event_type,',
'   p_new_color_pref_id => :P10_NEW_COLOR_PREF_ID,',
'   p_new_internal_yn   => :P10_NEW_INTERNAL_YN,',
'   p_event_date_time => to_date(:P10_EVENT_DATE_D||:P10_EVENT_START_TIME_D,',
'                               ''&APP_DATE_FORMAT.&APP_TIME_FORMAT.''),',
'   p_duration        => l_duration,',
'   p_event_desc      => :P10_EVENT_DESC,',
'   p_contact_person  => :P10_CONTACT_PERSON,',
'   p_contact_email   => :P10_CONTACT_EMAIL,',
'   p_display_time    => l_display_time,',
'   p_location        => :P10_LOCATION,',
'   p_link_name_1     => :P10_LINK_NAME_1,',
'   p_link_url_1      => :P10_LINK_URL_1,',
'   p_link_name_2     => :P10_LINK_NAME_2,',
'   p_link_url_2      => :P10_LINK_URL_2,',
'   p_link_name_3     => :P10_LINK_NAME_3,',
'   p_link_url_3      => :P10_LINK_URL_3,',
'   p_tags            => :P10_TAGS,',
'   --',
'   p_recur_flag      => :P10_RECUR_FLAG,',
'   p_recur_freq      => :P10_RECUR_FREQ,',
'   p_recur_end_date  => to_date(:P10_RECUR_END_DATE||:P10_EVENT_START_TIME_D,',
'                               ''&APP_DATE_FORMAT.&APP_TIME_FORMAT.'') );',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error creating event.'
,p_process_when_button_id=>wwv_flow_api.id(9022043414301333679)
,p_process_success_message=>'Event created.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8602659964480478467)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_type_id         number;',
'   l_new_event_type  varchar2(60);',
'   l_display_time    varchar2(1);',
'   l_duration        number := :P10_DURATION;',
'begin',
'',
'if :P10_SUPPRESS_TIME = ''Y'' then',
'   l_display_time := ''N'';',
'   l_duration := 24;',
'else',
'   l_display_time := ''Y'';',
'end if;',
'',
'for c1 in (',
'   select series_id, to_char(event_date_time,''&APP_DATE_FORMAT.'') event_date',
'     from EBA_ca_events',
'    where event_id = :P10_EVENT_ID )',
'loop',
'   -- simple update or adding recurrence',
'   if c1.series_id is null then',
'',
'      if :P10_TYPE_ID = ''-1'' then',
'         l_type_id        := null;',
'         l_new_event_type := :P10_NEW_EVENT_TYPE;',
'      else',
'         l_type_id        := :P10_TYPE_ID;',
'         l_new_event_type := null;',
'      end if;',
'',
'      EBA_ca_api.update_event (',
'         p_event_id        => :P10_EVENT_ID,',
'         p_event_name      => :P10_EVENT_NAME,',
'         p_calendar_id     => :P10_CALENDAR_ID,',
'         p_type_id         => l_type_id,',
'         p_new_event_type  => l_new_event_type,',
'         p_new_color_pref_id  => :P10_NEW_COLOR_PREF_ID,',
'         p_new_internal_yn    => :P10_NEW_INTERNAL_YN,',
'         p_event_date_time => to_date(:P10_EVENT_DATE_D||:P10_EVENT_START_TIME_D,',
'                                     ''&APP_DATE_FORMAT.&APP_TIME_FORMAT.''),',
'         p_duration        => l_duration,',
'         p_event_desc      => :P10_EVENT_DESC,',
'         p_contact_person  => :P10_CONTACT_PERSON,',
'         p_contact_email   => :P10_CONTACT_EMAIL,',
'         p_display_time    => l_display_time,',
'         p_location        => :P10_LOCATION,',
'         p_link_name_1     => :P10_LINK_NAME_1,',
'         p_link_url_1      => :P10_LINK_URL_1,',
'         p_link_name_2     => :P10_LINK_NAME_2,',
'         p_link_url_2      => :P10_LINK_URL_2,',
'         p_link_name_3     => :P10_LINK_NAME_3,',
'         p_link_url_3      => :P10_LINK_URL_3,',
'         p_tags            => :P10_TAGS,',
'         --',
'         p_recur_flag      => :P10_RECUR_FLAG,',
'         p_recur_freq      => :P10_RECUR_FREQ,',
'         p_recur_end_date  => to_date(:P10_RECUR_END_DATE||:P10_EVENT_START_TIME_D,',
'                                     ''&APP_DATE_FORMAT.&APP_TIME_FORMAT.''), ',
'         --',
'         p_update_request => ''S'' );',
'',
'   else',
'      -- removing recurrence',
'      if c1.series_id is not null and :P10_RECUR_FLAG is null then',
'         :P10_RECUR := ''Y'';',
'         :P11_REQUEST_TYPE := ''AFO'';',
'      else',
'         if :P10_EVENT_DATE_D != c1.event_date then ',
'            :P10_RECUR := ''Y'';',
'            :P11_REQUEST_TYPE := ''FO'';',
'         else',
'            for c2 in (',
'               select recur_freq, end_date',
'                 from EBA_ca_series',
'                where series_id = c1.series_id )',
'            loop',
'               if c2.recur_freq != :P10_RECUR_FREQ or',
'                  to_char(c2.end_date,''&APP_DATE_FORMAT.'') != :P10_RECUR_END_DATE then',
'                  :P10_RECUR := ''Y'';',
'                  :P11_REQUEST_TYPE := ''AF'';',
'               else',
'                  :P10_RECUR := ''Y'';',
'                  :P11_REQUEST_TYPE := ''AFO'';',
'               end if;',
'            end loop;',
'         end if;',
'      end if;',
'   end if;',
'end loop;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error updating event.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(9022043303956333679)
,p_process_success_message=>'Event updated.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8602662361541515463)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Simple Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'EBA_ca_api.delete_event (',
'   p_event_id       => :P10_EVENT_ID );'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error deleting event.'
,p_process_when_button_id=>wwv_flow_api.id(9022043201282333679)
,p_process_success_message=>'Event deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8604604859508660068)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Recur Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P10_RECUR        := ''Y'';',
':P11_REQUEST_TYPE := ''D'';'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(8604603564572652042)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1797847691617390492)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.component_end;
end;
/
