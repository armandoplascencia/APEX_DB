prompt --application/pages/page_00100
begin
--   Manifest
--     PAGE: 00100
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
 p_id=>100
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Time Zone Preference'
,p_alias=>'TIMEZONE'
,p_step_title=>'Time Zone Preference'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022052510671357508)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  Select your preferred time zone and click the <strong>Apply Changes</strong> button to set your time zone. Click the <strong>Cancel</strong> button to leave this page.',
'</p>',
'<p>',
'  Various other functions in this app record and report timestamps according to this setting.  ',
'</p>'))
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301102339'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1420619570860890001)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797855891776014330)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9022023598749333527)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1797876791493014394)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8062148742905525195)
,p_plug_name=>'Preference'
,p_region_template_options=>'t-Alert--wizard:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>wwv_flow_api.id(1797840840350014304)
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_api.id(8062154851263556052)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1420619570860890001)
,p_button_name=>'CLOSE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338753469954486036)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1420619570860890001)
,p_button_name=>'APPLY_CHANGES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8062151633331541773)
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8062148936147525200)
,p_name=>'P100_TIMEZONE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8062148742905525195)
,p_item_default=>'&F855_TIMEZONE.'
,p_prompt=>'Time Zone'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STD TIME ZONES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct tzname d, tzname r',
'  from V$TIMEZONE_NAMES',
' order by 1'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'Select timezone.  This is used to adjust all dates and times.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8062149248100526785)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Change Timezone'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   c integer := 0;',
'begin',
'   for c1 in (select id, timezone_preference ',
'              from eba_ca_tz_pref ',
'              where userid = :APP_USER) loop',
'      update eba_ca_tz_pref',
'      set timezone_preference = nvl(:P100_TIMEZONE,''UTC'')',
'      where id = c1.id;',
'      c := c + 1;',
'   end loop;',
'   if c = 0 then',
'      insert into eba_ca_tz_pref (userid, timezone_preference)',
'      values (:APP_USER,:P100_TIMEZONE);',
'   end if;',
'   APEX_UTIL.SET_SESSION_TIME_ZONE (  ',
'          P_TIME_ZONE => :P100_TIMEZONE); ',
'    :F855_TIMEZONE := :P100_TIMEZONE;',
'   commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(3338753469954486036)
,p_process_success_message=>'Timezone Set.'
);
wwv_flow_api.component_end;
end;
/
