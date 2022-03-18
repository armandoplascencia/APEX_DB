prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Filter Options'
,p_alias=>'FILTER-OPTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Filter Options'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301102339'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17520451044937756558)
,p_plug_name=>'Filter Options'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17864956925199067214)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1938752196160352076)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17864956925199067214)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1965711572919830963)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17864956925199067214)
,p_button_name=>'RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Reset All'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1938752476267352078)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(17864956925199067214)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Set'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1938753171236352091)
,p_name=>'P5_CAL_ALL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17520451044937756558)
,p_prompt=>'Calendars'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:All;0'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(1938766493817367015)
,p_help_text=>'Use to limit the results to events from the Calendars selected.'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1938753602911352099)
,p_name=>'P5_CALENDARS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(17520451044937756558)
,p_prompt=>'Calendars'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'CALENDARS WITH DEFAULT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'  from',
'(',
'select ''Default'' d,',
'       -1 r,',
'       1 ob',
'  from dual',
' where exists (select 1 from eba_ca_events',
'                where calendar_id is null)',
'union',
'select short_name ||'' - ''|| calendar_name || decode(public_view_yn, ''Y'', null, '' (Private)'') d,',
'       calendar_id r,',
'       2 ob',
'  from eba_ca_calendars c',
'  where public_view_yn = ''Y''',
'  or    exists (select ''x''',
'                from eba_ca_users u',
'                where u.username = :APP_USER',
'                and   (   instr(u.restricted_to, c.calendar_id) > 0',
'                       or (access_level_id = 3 and restricted_to is null)',
'                      )',
'               ) ',
')',
' order by ob, d'))
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(1797875248052014376)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_required_patch=>wwv_flow_api.id(1938766493817367015)
,p_help_text=>'Use to restrict to events from one or more calendars.'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1938753976480352100)
,p_name=>'P5_ET_ALL'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(17520451044937756558)
,p_prompt=>'Event Types'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:All;0'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Use to limit the results to events with the Event Types selected.'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1938754363297352100)
,p_name=>'P5_EVENT_TYPES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17520451044937756558)
,p_prompt=>'Event Types'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'EVENT TYPES FOR MAIN CAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) d, type_id r',
'  from EBA_ca_event_types',
'where (:EXTERNAL_INTERNAL_BO = ''Exclude''',
'       or (   nvl(internal_yn, ''N'') = ''N''',
'           or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'          )',
'      )',
' order by type_name'))
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(1797875248052014376)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1938862310777960418)
,p_name=>'P5_CONTACT_EMAIL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17520451044937756558)
,p_prompt=>'Contact Email'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CONTACTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(replace(decode(instr(username, ''@''), 0, username, substr(username, 1, instr(username, ''@'') - 1)), ''.'', '' ''))  d, upper(username) r',
'from eba_ca_users u',
'where exists (select ''x''',
'              from eba_ca_events e',
'              where instr(upper(e.contact_email), u.username) > 0',
'             )',
'order by 1',
''))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''x'' from',
'eba_ca_events where contact_email is not null;'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_security_scheme=>wwv_flow_api.id(3336588977096114584)
,p_required_patch=>wwv_flow_api.id(1713314835132982612)
,p_help_text=>'Use to limit the results to events where the Contact Email matches the email listed in the Access Control List (under Administration).'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1938756805276352133)
,p_name=>'when calendars All'
,p_event_sequence=>5
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_CAL_ALL'
,p_condition_element=>'P5_CAL_ALL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1938757266044352136)
,p_event_id=>wwv_flow_api.id(1938756805276352133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_CALENDARS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1938757673951352137)
,p_name=>'when cal other than all'
,p_event_sequence=>7
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_CALENDARS'
,p_condition_element=>'P5_CALENDARS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1938758133213352137)
,p_event_id=>wwv_flow_api.id(1938757673951352137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_CAL_ALL'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1938758535645352137)
,p_name=>'when event_types All'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_ET_ALL'
,p_condition_element=>'P5_ET_ALL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1938759094445352138)
,p_event_id=>wwv_flow_api.id(1938758535645352137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_EVENT_TYPES'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1938759441613352138)
,p_name=>'when event type other than all'
,p_event_sequence=>12
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_EVENT_TYPES'
,p_condition_element=>'P5_EVENT_TYPES'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1938760012224352138)
,p_event_id=>wwv_flow_api.id(1938759441613352138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_ET_ALL'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1938760400168352139)
,p_name=>'close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1938752196160352076)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1938760833500352140)
,p_event_id=>wwv_flow_api.id(1938760400168352139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1965711718217830964)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Reset'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P5_EVENT_TYPES := null;',
':P5_CALENDARS := null;',
':P5_CONTACT_EMAIL := null;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1965711572919830963)
,p_process_success_message=>'All filters reset'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1938754761209352130)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set event type pref'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_PREFERENCE(        ',
'   p_preference => ''EVENT_TYPES_FILTER'',',
'   p_value      => nvl(:P5_EVENT_TYPES,''0''),      ',
'   p_user       => :APP_USER);',
'   ',
':EVENT_TYPES_FILTER := nvl(:P5_EVENT_TYPES,''0'');'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Filters failed to be set.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Filters set.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1938755136181352131)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set calendar pref'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_PREFERENCE(        ',
'   p_preference => ''CALENDARS_FILTER'',',
'   p_value      => nvl(:P5_CALENDARS,''0''),      ',
'   p_user       => :APP_USER);',
'   ',
':CALENDARS_FILTER := nvl(:P5_CALENDARS,''0'');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1774768850557852802)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set contact email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.SET_PREFERENCE(        ',
'   p_preference => ''CONTACT_EMAIL'',',
'   p_value      => nvl(:P5_CONTACT_EMAIL,''0''),      ',
'   p_user       => :APP_USER);',
'   ',
':CONTACT_EMAIL := :P5_CONTACT_EMAIL;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Filters failed to be set.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Filters set.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1938755568044352131)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1938756370706352132)
,p_process_sequence=>12
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load event types'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_pref varchar2(4000);',
'begin',
'',
'l_pref := apex_util.get_preference (',
'              p_preference => ''EVENT_TYPES_FILTER'',',
'              p_user       => :APP_USER );',
'',
'if l_pref is null or l_pref = ''0'' then',
'   :P5_ET_ALL := ''0'';',
'else',
'   :P5_EVENT_TYPES := l_pref;',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1938755936824352131)
,p_process_sequence=>22
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load cals'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_pref varchar2(4000);',
'begin',
'',
'l_pref := apex_util.get_preference (',
'              p_preference => ''CALENDARS_FILTER'',',
'              p_user       => :APP_USER );',
'',
'if l_pref is null or l_pref = ''0'' then',
'   :P5_CAL_ALL := ''0'';',
'else',
'   :P5_CALENDARS := l_pref;',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(888591132271458086)
,p_process_sequence=>32
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load contact_email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_pref varchar2(4000);',
'begin',
'',
'l_pref := apex_util.get_preference (',
'              p_preference => ''CONTACT_EMAIL'',',
'              p_user       => :APP_USER );',
'',
'if l_pref is null or l_pref = ''0'' then',
'   :P5_CONTACT_EMAIL := null;',
'else',
'   :P5_CONTACT_EMAIL := l_pref;',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
