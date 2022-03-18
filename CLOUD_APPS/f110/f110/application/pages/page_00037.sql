prompt --application/pages/page_00037
begin
--   Manifest
--     PAGE: 00037
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
 p_id=>37
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Access Request Details'
,p_alias=>'ACCESS-REQUEST-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Access Request Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(16485731932639691338)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(250463977822234829)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518154040'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14004342494252647614)
,p_plug_name=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690162135548251137)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14004343580315662517)
,p_plug_name=>'Access Request Details'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>11
,p_plug_display_point=>'BODY_3'
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
 p_id=>wwv_flow_api.id(14004346485434758610)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14004342494252647614)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14004346709329765494)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14004342494252647614)
,p_button_name=>'DECLINE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Decline'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_css_classes=>'uButtonAlt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14004346890413769539)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14004342494252647614)
,p_button_name=>'APPROVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Approve Request for Access'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14004352210211166966)
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14004343906305667282)
,p_name=>'P37_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14004343580315662517)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14004344496373687169)
,p_name=>'P37_EMAIL_ADDRESS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14004343580315662517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Email Address'
,p_source=>'EMAIL_ADDRESS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14004344689256690444)
,p_name=>'P37_JUSTIFICATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14004343580315662517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Justification'
,p_source=>'JUSTIFICATION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14004344879983694725)
,p_name=>'P37_CREATED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(14004343580315662517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created'
,p_format_mask=>'fmMonth DDfm, RRRR HH24:MI AM'
,p_source=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14004345104123698759)
,p_name=>'P37_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(14004343580315662517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14004345295281702842)
,p_name=>'P37_ACTIONED_BY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(14004343580315662517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Actioned By'
,p_source=>'ACTIONED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14004345486870706693)
,p_name=>'P37_ALREADY_APP_USER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(14004343580315662517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Already App User'
,p_source=>'This email address is already authorized to access this self-service system but they do not have an Application Express account.  If you approve, one will be created for them.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from ',
'(',
'select ''Y'' apex_auth,',
'       nvl((select ''Y''  ',
'              from apex_appl_acl_users',
'             where application_id = :APP_ID',
'               and user_name_lc = lower(:P37_EMAIL_ADDRESS)),''N'') is_app_user',
'  from apex_applications',
' where application_id = :APP_ID',
'   and authentication_scheme_type = ''Application Express Accounts''',
')',
' where apex_auth = ''Y''',
'   and is_app_user = ''Y'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(14690190497303251212)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14004346299988746208)
,p_name=>'P37_ACTIONED_REASON'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(14004343580315662517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Actioned Reason'
,p_source=>'ACTIONED_REASON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(14690190733279251214)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'Approved'
,p_quick_pick_value_01=>'Approved'
,p_quick_pick_label_02=>'Declined'
,p_quick_pick_value_02=>'Declined'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14006110409144685409)
,p_name=>'P37_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14004343580315662517)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'DB_COLUMN'
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
 p_id=>wwv_flow_api.id(14004347499726819526)
,p_name=>'hide actioned_by when no action yet'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P37_ACTIONED_BY'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14004347780527819534)
,p_event_id=>wwv_flow_api.id(14004347499726819526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P37_ACTIONED_BY'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14004347301280782114)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_QPOLL_ACCESS_REQUESTS'
,p_attribute_02=>'EBA_QPOLL_ACCESS_REQUESTS'
,p_attribute_03=>'P37_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14004422190102240594)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Approve requests'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_qpoll_account.approve_access_request (',
'   p_app_id          => :APP_ID,',
'   p_app_title       => :APPLICATION_TITLE,',
'   p_app_link        => ''<a href="''||:APP_PATH||''/f?p=''||:APP_ID||''">''||:APPLICATION_TITLE||''</a>'',',
'   p_request_id      => :P37_ID,',
'   p_actioned_reason => :P37_ACTIONED_REASON );'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Request failed to be approved.',
'#SQLERRM#'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14004346890413769539)
,p_process_success_message=>'Request approved.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14004422389540249933)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Decline requests'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_qpoll_account.decline_access_request (',
'   p_app_id          => :APP_ID,',
'   p_app_title       => :APPLICATION_TITLE,',
'   p_request_id      => :P37_ID,',
'   p_actioned_reason => :P37_ACTIONED_REASON );'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Request failed to be declined.',
'#SQLERRM#'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14004346709329765494)
,p_process_success_message=>'Request declined.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14004423086554258555)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Reset Page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
