prompt --application/pages/page_00070
begin
--   Manifest
--     PAGE: 00070
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
 p_id=>70
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Add Community / Members'
,p_alias=>'ADD-COMMUNITY-MEMBERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Community / Members'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14033558290501184673)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250464227793234829)
,p_protection_level=>'C'
,p_help_text=>'<p>Select an "Action" and provide the required data. You may optionally enter (or paste) email addresses in any format. When you copy and paste email addresses from email messages, extraneous text will be filtered out. Existing or duplicate email add'
||'resses will be ignored.  Do NOT Use email mailing lists only include individual people.</p>'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301100152'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14022196701557438117)
,p_plug_name=>'Provide Respondent Community Details'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14022204292618542968)
,p_plug_name=>'Wizard Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690166820479251144)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_02'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14022205608595576046)
,p_plug_name=>'footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14022197290933438125)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14022205608595576046)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:70,71::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14022197580816438125)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14022205608595576046)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14022197985715438129)
,p_branch_action=>'f?p=&APP_ID.:71:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14022197580816438125)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14022898798097648182)
,p_name=>'P70_RESPONDENT_EMAIL_ADDRESSES'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(14022196701557438117)
,p_prompt=>'Email Addresses (paste any text that contains emails)'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>32767
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14022957478961973013)
,p_name=>'P70_COMMUNITY_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14022196701557438117)
,p_prompt=>'"From" Respondent Community'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMMUNITY FROM'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name, id',
'from EBA_QPOLL_RESP_COMMUNITIES',
'where id <> nvl(:P70_COMMUNITY_ID_TO,-1)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14022961084101016185)
,p_name=>'P70_COMMUNITY_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14022196701557438117)
,p_prompt=>'Community Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14022993600611920224)
,p_name=>'P70_COMMUNITY_ACTION'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14022196701557438117)
,p_item_default=>'-2'
,p_prompt=>'Action'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'COMMUNITY ACTIONS'
,p_lov=>'.'||wwv_flow_api.id(14022974091536808740)||'.'
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14022999084592003565)
,p_name=>'P70_COMMUNITY_ID_TO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14022196701557438117)
,p_prompt=>'"To" Community'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMMUNITY TO'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name, id',
'from EBA_QPOLL_RESP_COMMUNITIES',
'where id <> nvl(:P70_COMMUNITY_ID,-1)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_read_only_when=>'(:P70_COMMUNITY_ACTION = ''-3'' and :P70_COMMUNITY_ID_TO is not null) or :P70_COMMUNITY_ID_TO is not null'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14026751603558398343)
,p_name=>'P70_RESPONDENT_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14022196701557438117)
,p_prompt=>'Existing Member'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P70 AVAILABLE RESPONDENTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(name,email) || '' ('' || lower(email) || '')'' d, id r',
'from   EBA_QPOLL_RESPONDENTS',
'where id not in (select respondent_id from EBA_QPOLL_RESP_COMM_REF where community_id = :P70_COMMUNITY_ID_TO)',
'order by lower(nvl(name,email))'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14023354703548815264)
,p_validation_name=>'P70_COMMUNITY_ID Not Null'
,p_validation_sequence=>10
,p_validation=>'P70_COMMUNITY_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P70_COMMUNITY_ACTION'
,p_validation_condition2=>'-1:0'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(14022197580816438125)
,p_associated_item=>wwv_flow_api.id(14022957478961973013)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14023354886943823013)
,p_validation_name=>'P70_COMMUNITY_ID_TO Not Null'
,p_validation_sequence=>20
,p_validation=>'P70_COMMUNITY_ID_TO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P70_COMMUNITY_ACTION'
,p_validation_condition2=>'-1:-3:-4'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(14022197580816438125)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14023355103320830554)
,p_validation_name=>'P70_COMMUNITY_NAME Not Null'
,p_validation_sequence=>30
,p_validation=>'P70_COMMUNITY_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P70_COMMUNITY_ACTION'
,p_validation_condition2=>'-2:0'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(14022197580816438125)
,p_associated_item=>wwv_flow_api.id(14022961084101016185)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14026774079986548814)
,p_validation_name=>'P70_RESPONDENT_EMAIL_ADDRESSES Not Null'
,p_validation_sequence=>40
,p_validation=>'P70_RESPONDENT_EMAIL_ADDRESSES'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P70_COMMUNITY_ACTION'
,p_validation_condition2=>'-4:-5'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(14022197580816438125)
,p_associated_item=>wwv_flow_api.id(14022898798097648182)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14026775395631663126)
,p_validation_name=>'P70_RESPONDENT_ID Not Null'
,p_validation_sequence=>50
,p_validation=>'P70_RESPONDENT_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P70_COMMUNITY_ACTION'
,p_validation_condition2=>'-3'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(14022197580816438125)
,p_associated_item=>wwv_flow_api.id(14026751603558398343)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14027016884760273501)
,p_name=>'Clear Errors'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_COMMUNITY_ACTION'
,p_condition_element=>'P70_COMMUNITY_ACTION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14027017203140273503)
,p_event_id=>wwv_flow_api.id(14027016884760273501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''span.uLabelError'').hide();',
'$(''section#uNotificationMessage'').hide();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14022961209406028490)
,p_name=>'Show/Hide Community Name'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_COMMUNITY_ACTION'
,p_condition_element=>'P70_COMMUNITY_ACTION'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'-2,0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026791900318527074)
,p_event_id=>wwv_flow_api.id(14022961209406028490)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P70_COMMUNITY_ACTION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026792088025532732)
,p_event_id=>wwv_flow_api.id(14022961209406028490)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P70_COMMUNITY_ACTION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14022961484578028495)
,p_event_id=>wwv_flow_api.id(14022961209406028490)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_COMMUNITY_NAME'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14022961685683028496)
,p_event_id=>wwv_flow_api.id(14022961209406028490)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_COMMUNITY_NAME'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14022994904452944932)
,p_name=>'Show/Hide Community ID'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_COMMUNITY_ACTION'
,p_condition_element=>'P70_COMMUNITY_ACTION'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'-1,0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026792280908536006)
,p_event_id=>wwv_flow_api.id(14022994904452944932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P70_COMMUNITY_ACTION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026792508285538523)
,p_event_id=>wwv_flow_api.id(14022994904452944932)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P70_COMMUNITY_ACTION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14022995205572944934)
,p_event_id=>wwv_flow_api.id(14022994904452944932)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_COMMUNITY_ID'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14022995405204944935)
,p_event_id=>wwv_flow_api.id(14022994904452944932)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_COMMUNITY_ID'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14022999205024011265)
,p_name=>'Show/Hide Community ID To'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_COMMUNITY_ACTION'
,p_condition_element=>'P70_COMMUNITY_ACTION'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'-1,-3,-4'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026792703109540975)
,p_event_id=>wwv_flow_api.id(14022999205024011265)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P70_COMMUNITY_ACTION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026792898364543161)
,p_event_id=>wwv_flow_api.id(14022999205024011265)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P70_COMMUNITY_ACTION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14022999491046011265)
,p_event_id=>wwv_flow_api.id(14022999205024011265)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_COMMUNITY_ID_TO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14022999705933011265)
,p_event_id=>wwv_flow_api.id(14022999205024011265)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_COMMUNITY_ID_TO'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14026751790872410591)
,p_name=>'Show/Hide Respondent'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_COMMUNITY_ACTION'
,p_condition_element=>'P70_COMMUNITY_ACTION'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'-3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026794179386551983)
,p_event_id=>wwv_flow_api.id(14026751790872410591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P70_COMMUNITY_ACTION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026794406979554334)
,p_event_id=>wwv_flow_api.id(14026751790872410591)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P70_COMMUNITY_ACTION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026752101460410592)
,p_event_id=>wwv_flow_api.id(14026751790872410591)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_RESPONDENT_ID'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026752291976410592)
,p_event_id=>wwv_flow_api.id(14026751790872410591)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_RESPONDENT_ID'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14026774393135575074)
,p_name=>'Change Emails textarea label to required for add new respondents'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_COMMUNITY_ACTION'
,p_condition_element=>'P70_COMMUNITY_ACTION'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'-4,-5'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026794600724557224)
,p_event_id=>wwv_flow_api.id(14026774393135575074)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P70_COMMUNITY_ACTION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026794795980559431)
,p_event_id=>wwv_flow_api.id(14026774393135575074)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P70_COMMUNITY_ACTION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026774889544575075)
,p_event_id=>wwv_flow_api.id(14026774393135575074)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''label[for="P70_RESPONDENT_EMAIL_ADDRESSES"]'').removeClass(''uRequired'');',
''))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026795003084571355)
,p_event_id=>wwv_flow_api.id(14026774393135575074)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_RESPONDENT_EMAIL_ADDRESSES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026774691468575075)
,p_event_id=>wwv_flow_api.id(14026774393135575074)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''label[for="P70_RESPONDENT_EMAIL_ADDRESSES"] img.uAsterisk'').remove();',
'$(''label[for="P70_RESPONDENT_EMAIL_ADDRESSES"]'').removeClass(''uOptional'');',
'$(''label[for="P70_RESPONDENT_EMAIL_ADDRESSES"]'').addClass(''uRequired'');',
'$(''label[for="P70_RESPONDENT_EMAIL_ADDRESSES"]'').append(''<img class="uAsterisk" alt="Value Required" src="#IMAGE_PREFIX#f_spacer.gif">'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14026750403245357392)
,p_name=>'Show/Hide RESPONDENT_EMAIL_ADDRESSES'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_COMMUNITY_ACTION'
,p_condition_element=>'P70_COMMUNITY_ACTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'-3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026793092757545715)
,p_event_id=>wwv_flow_api.id(14026750403245357392)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P70_COMMUNITY_ACTION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026793288444547727)
,p_event_id=>wwv_flow_api.id(14026750403245357392)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P70_COMMUNITY_ACTION'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026750881918357397)
,p_event_id=>wwv_flow_api.id(14026750403245357392)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''html body form#wwvFlowForm div#uBodyContainer div#uOneCol div.cWizard div.cWizardContentContainer div.cWizardContent div table.formlayout tbody tr td label[for="P70_RESPONDENT_EMAIL_ADDRESSES"]'').parent().show();'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14026785586787199041)
,p_event_id=>wwv_flow_api.id(14026750403245357392)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''html body form#wwvFlowForm div#uBodyContainer div#uOneCol div.cWizard div.cWizardContentContainer div.cWizardContent div table.formlayout tbody tr td label[for="P70_RESPONDENT_EMAIL_ADDRESSES"]'').parent().hide();'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9576708336494639878)
,p_event_id=>wwv_flow_api.id(14026750403245357392)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_RESPONDENT_EMAIL_ADDRESSES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9576708689907642647)
,p_event_id=>wwv_flow_api.id(14026750403245357392)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_RESPONDENT_EMAIL_ADDRESSES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14092855296094155860)
,p_name=>'Set From Community id'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P70_COMMUNITY_ID'
,p_condition_element=>'P70_COMMUNITY_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14092855579087155861)
,p_event_id=>wwv_flow_api.id(14092855296094155860)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P70_COMMUNITY_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14092857184774178529)
,p_event_id=>wwv_flow_api.id(14092855296094155860)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P70_COMMUNITY_ID_TO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14022903308658806093)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections for copy communities'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_line      varchar2(32767);',
'    l_emails    wwv_flow_global.vc_arr2;',
'    l_email     varchar2(4000);',
'    l_at        number;',
'    l_dot       number;',
'    l_valid     boolean := true;',
'    l_domain    varchar2(4000);',
'begin',
'    ---------------------',
'    -- create collections',
'    --',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_QPOLL_RESPONDENT_INVALID'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_QPOLL_RESPONDENT_VALID'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_QPOLL_RESPONDENT_CREATE'');',
'',
'    --------------------------------------------',
'    -- replace delimiting characters with commas',
'    --',
'    l_line := :P70_RESPONDENT_EMAIL_ADDRESSES;',
'    l_line := replace(l_line,chr(10),'' '');',
'    l_line := replace(l_line,chr(13),'' '');',
'    l_line := replace(l_line,chr(9),'' '');',
'    l_line := replace(l_line,''<'','' '');',
'    l_line := replace(l_line,''>'','' '');',
'    l_line := replace(l_line,'';'','' '');',
'    l_line := replace(l_line,'':'','' '');',
'    l_line := replace(l_line,''('','' '');',
'    l_line := replace(l_line,'')'','' '');',
'    l_line := replace(l_line,'' '','','');',
'',
'    -----------------------------------------',
'    -- get one comma separated line of emails',
'    --',
'    for j in 1..1000 loop',
'        if instr(l_line,'',,'') > 0 then',
'           l_line := replace(l_line,'',,'','','');',
'        else',
'           exit;',
'        end if;',
'    end loop;',
'',
'    -------------------------',
'    -- get an array of emails',
'    --',
'    l_emails := wwv_flow_utilities.string_to_table(l_line,'','');',
'',
'    -----------------------------',
'    -- add emails to a collection',
'    --',
'    l_email := null;',
'    l_domain := null;',
'    l_at := 0;',
'    l_dot := 0;',
'    for j in 1..l_emails.count loop',
'        l_valid := true;',
'        l_email := trim(l_emails(j));',
'        l_email := replace(l_email,chr(49824),null);',
'',
'        if l_email is not null then',
'            -----------',
'            -- Validate',
'            --',
'            l_at := instr(nvl(l_email,''x''),''@'');',
'            l_domain := substr(l_email,l_at+1);',
'            l_dot := instr(l_domain,''.'');',
'            if l_at < 2 then',
'                -- invalid email',
'                apex_collection.add_member(',
'                    p_collection_name => ''EBA_QPOLL_RESPONDENT_INVALID'',',
'                    p_c001            => l_email,',
'                    p_c002            => apex_lang.message(''MISSING_AT_SIGN''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_dot = 0 and l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''EBA_QPOLL_RESPONDENT_INVALID'',',
'                    p_c001            => l_email,',
'                    p_c002            => apex_lang.message(''MISSING_DOT''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'',
'            l_email := trim(l_email);',
'            l_email := trim(both ''.'' from l_email);',
'            l_email := replace(l_email,'' '',null);',
'            l_email := replace(l_email,chr(10),null);',
'            l_email := replace(l_email,chr(9),null);',
'            l_email := replace(l_email,chr(13),null);',
'            l_email := replace(l_email,chr(49824),null);',
'',
'            if l_valid and length(l_email) > 255 then',
'                apex_collection.add_member(',
'                    p_collection_name => ''EBA_QPOLL_RESPONDENT_INVALID'',',
'                    p_c001            => upper(l_email),',
'                    p_c002            => apex_lang.message(''EMAIL_TOO_LONG''));',
'                commit;',
'                l_valid := false;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select /* APEX76a66f */ r.email',
'                             from eba_qpoll_respondents r,',
'                                  eba_qpoll_resp_comm_ref j',
'                            where upper(r.email) = upper(l_email)',
'                              and r.id = j.respondent_id',
'                              and j.community_id = :P70_COMMUNITY_ID_TO)',
'                loop',
'                    wwv_flow_collection.add_member(',
'                        p_collection_name => ''EBA_QPOLL_RESPONDENT_INVALID'',',
'                        p_c001            => upper(l_email),',
'                        p_c002            => apex_lang.message(''ALREADY_IN_COMMUNITY''));',
'                    commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                for c1 in (select /* APEXeaf772 */  c001',
'                             from wwv_flow_collections',
'                            where collection_name = ''EBA_QPOLL_RESPONDENT_VALID''',
'                              and c001 = upper(l_email))',
'                loop',
'                    apex_collection.add_member(',
'                        p_collection_name => ''EBA_QPOLL_RESPONDENT_INVALID'',',
'                        p_c001            => upper(l_email),',
'                        p_c002            => apex_lang.message(''DUPLICATE_EMAIL''));',
'                        commit;',
'                    l_valid := false;',
'                    exit;',
'                end loop;',
'            end if;',
'',
'            if l_valid then',
'                apex_collection.add_member(',
'                    p_collection_name => ''EBA_QPOLL_RESPONDENT_VALID'',',
'                    p_c001            => upper(l_email));',
'                    commit;',
'            end if;',
'',
'        end if;',
'        l_email := null;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14022197580816438125)
,p_process_when=>'P70_COMMUNITY_ACTION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'-3'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14026754007176642362)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Collections for adding respondent'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_valid     boolean := true;',
'    l_email     varchar2(1000);',
'    l_domain    varchar2(4000);',
'begin',
'    ---------------------',
'    -- create collections',
'    --',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_QPOLL_RESPONDENT_INVALID'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_QPOLL_RESPONDENT_VALID'');',
'    apex_collection.CREATE_OR_TRUNCATE_COLLECTION (''EBA_QPOLL_RESPONDENT_CREATE'');',
' ',
'    for c1 in (select /* APEX76a66f */ r.email',
'                 from EBA_QPOLL_RESP_COMM_REF ref,',
'                      EBA_QPOLL_RESPONDENTS r',
'                where ref.respondent_id = :P70_RESPONDENT_ID',
'                  and r.id = ref.respondent_id',
'                  and ref.community_id = :P70_COMMUNITY_ID_TO)',
'    loop',
'        l_email := c1.email;',
'        wwv_flow_collection.add_member(',
'            p_collection_name => ''EBA_QPOLL_RESPONDENT_INVALID'',',
'            p_c001            => upper(l_email),',
'            p_c002            => apex_lang.message(''ALREADY_IN_COMMUNITY''));',
'        commit;',
'        l_valid := false;',
'        exit;',
'    end loop;',
'',
'    select /* APEX76a66f */ r.email',
'      into l_email',
'      from EBA_QPOLL_RESPONDENTS r',
'     where r.id = :P70_RESPONDENT_ID;',
'',
'    l_email := replace(l_email,chr(49824),null);',
'',
'    if l_email is not null then',
'        l_valid := true;',
'    end if;',
'',
'    if l_valid then',
'        for c1 in (select /* APEXeaf772 */  c001',
'                     from wwv_flow_collections',
'                    where collection_name = ''EBA_QPOLL_RESPONDENT_VALID''',
'                      and c001 = upper(l_email))',
'        loop',
'            apex_collection.add_member(',
'                p_collection_name => ''EBA_QPOLL_RESPONDENT_INVALID'',',
'                p_c001            => upper(l_email),',
'                p_c002            => apex_lang.message(''DUPLICATE_EMAIL''));',
'                commit;',
'            l_valid := false;',
'            exit;',
'        end loop;',
'    end if;',
'',
'    if l_valid then',
'        apex_collection.add_member(',
'            p_collection_name => ''EBA_QPOLL_RESPONDENT_VALID'',',
'            p_c001            => upper(l_email));',
'            commit;',
'    end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14022197580816438125)
,p_process_when=>'P70_COMMUNITY_ACTION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'-3'
);
wwv_flow_api.component_end;
end;
/
