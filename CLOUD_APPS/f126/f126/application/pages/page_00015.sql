prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Send Email'
,p_alias=>'SEND-EMAIL'
,p_step_title=>'Send Email'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022053313788358351)
,p_step_template=>wwv_flow_api.id(1797817832896014262)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3336588467926114584)
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ol>',
'  <li>Use the filter to select the set of events to be included.</li>',
'  <li>Select the group to send email to and/or enter email addresses separated by commas.</li>',
'  <li>Customize the from, subject and message body.</li>',
'  <li>Click [Send Email].</li>',
'</ol>',
'<p>If a group is selected, emails will be sent to each member of the selected list along with any email addresses specified.  The set of events will be appended to the message body, along with the url of the Calendar system.  The ''From'' will copied o'
||'n the email.',
'</p>'))
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301102340'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8095737029092265542)
,p_name=>'Events to be Included'
,p_template=>wwv_flow_api.id(1797853323124014327)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.EVENT_ID,',
'       event_name,',
'       et.type_name || decode(:EXTERNAL_INTERNAL_BO, ''Include'', decode(internal_yn, ''Y'', '' (Internal Only)'', null), null) event_type,',
'       e.EVENT_DATE_TIME event_date,',
'       case when to_char(e.EVENT_DATE_TIME,''MI'') = ''00'' ',
'            then ltrim(to_char(e.EVENT_DATE_TIME,''HHam''),''0'')',
'            else ltrim(to_char(e.EVENT_DATE_TIME,''HH:MIam''),''0'')',
'            end start_time,',
'       case when to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''MI'') = ''00''',
'            then ltrim(to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''HHam''),''0'')',
'            else ltrim(to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''HH:MIam''),''0'')',
'            end end_time,',
'       case when e.duration = 0  then ''0 mins''',
'            when e.duration = .25 then ''15 mins''',
'            when e.duration = .5 then ''30 mins''',
'            when e.duration = .75 then ''45 mins''',
'            when e.duration = 1 then ''1 hr''',
'            when e.duration > 1 then to_char(trunc(e.duration)) || '' hrs''',
'              || case when e.duration - trunc(e.duration) = 0  then ''''',
'                      when e.duration - trunc(e.duration) = .25 then '' 15 mins''',
'                      when e.duration - trunc(e.duration) = .5 then '' 30 mins''',
'                      when e.duration - trunc(e.duration) = .75 then '' 45 mins''',
'                 end',
'            end duration,',
'       e.EVENT_DESC',
'  from EBA_CA_EVENTS e,',
'       EBA_CA_EVENT_TYPES et',
' where (:EXTERNAL_INTERNAL_BO = ''Exclude''',
'        or (   nvl(internal_yn, ''N'') = ''N''',
'            or upper(:APP_USER) in (select upper(username) from eba_ca_users)',
'           )',
'       )',
'   and e.type_id = et.type_id (+)',
'   and (:P15_EVENT_TYPE is null or e.type_id = :P15_EVENT_TYPE)',
'   and (:P15_START_DATE is null or ',
'        trunc(to_date(to_char(e.event_date_time,''&APP_DATE_FORMAT.''),',
'              ''&APP_DATE_FORMAT.'')) >= to_date(:P15_START_DATE,''&APP_DATE_FORMAT.'') )',
'   and (:P15_END_DATE is null or ',
'        trunc(to_date(to_char(e.event_date_time,''&APP_DATE_FORMAT.''),',
'              ''&APP_DATE_FORMAT.'')) <= to_date(:P15_END_DATE,''&APP_DATE_FORMAT.'') )',
'   and (:P15_TIMEFRAME is null or',
'        (trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'            >= (select start_date from EBA_ca_timeframes',
'                 where :P15_TIMEFRAME = tf_id) and',
'         trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'            <= (select end_date from EBA_ca_timeframes',
'                 where :P15_TIMEFRAME = tf_id)))',
' order by e.event_date_time'))
,p_header=>'<p/>'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797862998400014346)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No events found.'
,p_query_num_rows_type=>'SEARCH_ENGINE'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8095737337129265544)
,p_query_column_id=>1
,p_column_alias=>'EVENT_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Event Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8095737452207265546)
,p_query_column_id=>2
,p_column_alias=>'EVENT_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8095737540588265546)
,p_query_column_id=>3
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>7
,p_column_heading=>'Type'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8095737641339265546)
,p_query_column_id=>4
,p_column_alias=>'EVENT_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Event Date'
,p_column_format=>'&APP_DATE_FORMAT.'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7491005220361792354)
,p_query_column_id=>5
,p_column_alias=>'START_TIME'
,p_column_display_sequence=>3
,p_column_heading=>'Timing'
,p_column_html_expression=>'#START_TIME# - #END_TIME# (#DURATION#)'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7491005320814792355)
,p_query_column_id=>6
,p_column_alias=>'END_TIME'
,p_column_display_sequence=>4
,p_column_heading=>'End Time'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7491005413047792355)
,p_query_column_id=>7
,p_column_alias=>'DURATION'
,p_column_display_sequence=>5
,p_column_heading=>'Duration'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8095737924097265546)
,p_query_column_id=>8
,p_column_alias=>'EVENT_DESC'
,p_column_display_sequence=>8
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8095745950405279943)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Region--hideHeader'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8107647652716772508)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1797855891776014330)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9022023598749333527)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1797876791493014394)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8108504747820442843)
,p_plug_name=>'Email Details'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Region--hideHeader'
,p_region_attributes=>'style="width: 99%; min-width: 99%"'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>20
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
 p_id=>wwv_flow_api.id(2516754619722400460)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8108504747820442843)
,p_button_name=>'MEMBERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--primary:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'View Members'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP:P20_GROUP_ID:&P15_GROUP_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    1',
'from',
'    (',
'        select g.group_id,',
'               g.group_name name,',
'               count(*) cnt    ',
'          from EBA_ca_email_groups g, ',
'               EBA_ca_email_group_mbrs m',
'         where m.group_id = g.group_id',
'         group by g.group_id, g.group_name',
'    ) v1',
'where',
'    v1.cnt > 0'))
,p_button_condition_type=>'EXISTS'
,p_button_cattributes=>'style="margin-top:8px;"'
,p_grid_new_row=>'N'
,p_grid_column_span=>5
,p_grid_column=>8
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7516555806748149768)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8095745950405279943)
,p_button_name=>'P15_CLEAR'
,p_button_static_id=>'P15_CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Clear'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_request_source=>'CLEAR'
,p_request_source_type=>'STATIC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1973127592089368706)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(8107647652716772508)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8108523625628559432)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8107647652716772508)
,p_button_name=>'SEND_EMAIL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send Email'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8095790344611334985)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8095745950405279943)
,p_button_name=>'P15_GO'
,p_button_static_id=>'P15_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Go'
,p_button_position=>'REGION_TEMPLATE_HELP'
,p_request_source=>'Go'
,p_request_source_type=>'STATIC'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8095790545981334986)
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7516565825448155123)
,p_branch_action=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15::'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(7516555806748149768)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 18-OCT-2010 12:47 by SBKENNED'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7501642096063381361)
,p_name=>'P15_FROM'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(8108504747820442843)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if instr(:APP_USER,''@'') > 0 then',
'   return lower(:APP_USER);',
'end if;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'From'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Who the email will be sent from.  If username is an email address, it is defaulted.  The ''From'' user will also be cced on the email.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7507585100992530815)
,p_name=>'P15_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8108504747820442843)
,p_prompt=>'To (emails)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Addresses to email.  Multiple addresses can be included if separated by commas.  This can be in addition to a selected group or instead of selecting a group.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8095742438631276547)
,p_name=>'P15_START_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(8095745950405279943)
,p_prompt=>'From'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>16
,p_cMaxlength=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1797875786893014385)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'If entered, Events before this date will not be included.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8095783734091322571)
,p_name=>'P15_END_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(8095745950405279943)
,p_prompt=>'Until'
,p_format_mask=>'&APP_DATE_FORMAT.'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>16
,p_cMaxlength=>30
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1797875786893014385)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'If entered, Events after this date will not be included.'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8095786652791327928)
,p_name=>'P15_EVENT_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(8095745950405279943)
,p_prompt=>'Type'
,p_display_as=>'NATIVE_SELECT_LIST'
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
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(1797875786893014385)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'If selected, only events of this type will be included.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8108505639986450078)
,p_name=>'P15_GROUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8108504747820442843)
,p_prompt=>'To (group)'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMAIL GROUPS WITH CNT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name || '' ('' || cnt  || ',
'          case when cnt = 1 then '' member)''',
'               else '' members)'' end d, ',
'       group_id r ',
'  from (',
'select g.group_id,',
'       g.group_name name,',
'       count(*) cnt    ',
'  from EBA_ca_email_groups g, ',
'       EBA_ca_email_group_mbrs m',
' where m.group_id = g.group_id',
' group by g.group_id, g.group_name',
')',
'order by name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Group -'
,p_cHeight=>1
,p_colspan=>7
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    1',
'from',
'    (',
'        select g.group_id,',
'               g.group_name name,',
'               count(*) cnt    ',
'          from EBA_ca_email_groups g, ',
'               EBA_ca_email_group_mbrs m',
'         where m.group_id = g.group_id',
'         group by g.group_id, g.group_name',
'    ) v1',
'where',
'    v1.cnt > 0'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'The email group that the email will be sent to.  The can be in addition to email addresses identified in the ''To'' or instead of.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8108506024533455015)
,p_name=>'P15_SUBJECT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(8108504747820442843)
,p_item_default=>'Please review the following events'
,p_prompt=>'Subject'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'The subject line for the email.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8108509336569477436)
,p_name=>'P15_MSG_BODY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(8108504747820442843)
,p_item_default=>'Below is a set of events for your review.  If updates are necessary, please let me know.'
,p_prompt=>'Message'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>90
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the body of your email.  A table including the selected events will be included below the text.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8144672746167493750)
,p_name=>'P15_TIMEFRAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(8095745950405279943)
,p_prompt=>'Timeframe'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAMES (SHOWING DATES)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tf_name || '' ('' || start_date || '' to '' ||',
'                          end_date || '')'' d, ',
'       tf_id r',
'  from EBA_ca_timeframes',
' order by start_date',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- None -'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_ca_timeframes'))
,p_display_when_type=>'EXISTS'
,p_field_template=>wwv_flow_api.id(1797875786893014385)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select Reporting Timeframe to restrict the report.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8108522426536550189)
,p_validation_name=>'P15_GROUP_ID  or TO not null'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P15_GROUP_ID is not null or ',
':P15_TO is not null'))
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Either a group must be selected or ''To'' must be specified.'
,p_when_button_pressed=>wwv_flow_api.id(8108523625628559432)
,p_associated_item=>wwv_flow_api.id(8108505639986450078)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7501670624422436803)
,p_validation_name=>'P15_FROM not null'
,p_validation_sequence=>20
,p_validation=>'P15_FROM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'From must be specified.'
,p_when_button_pressed=>wwv_flow_api.id(8108523625628559432)
,p_associated_item=>wwv_flow_api.id(7501642096063381361)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8108522835540552844)
,p_validation_name=>'P15_SUBJECT not null'
,p_validation_sequence=>30
,p_validation=>'P15_SUBJECT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Subject must be specified.'
,p_when_button_pressed=>wwv_flow_api.id(8108523625628559432)
,p_associated_item=>wwv_flow_api.id(8108506024533455015)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(8108523146968556118)
,p_validation_name=>'P15_MSG_BODY must be specified'
,p_validation_sequence=>40
,p_validation=>'P15_MSG_BODY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Message Body must be specified.'
,p_when_button_pressed=>wwv_flow_api.id(8108523625628559432)
,p_associated_item=>wwv_flow_api.id(8108509336569477436)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7507602106842579840)
,p_validation_name=>'From valid email'
,p_validation_sequence=>50
,p_validation=>'P15_FROM'
,p_validation2=>'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>'Invalid Email format for From.'
,p_validation_condition=>'P15_FROM'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_api.id(8108523625628559432)
,p_associated_item=>wwv_flow_api.id(7501642096063381361)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8115042640759665083)
,p_name=>'save group id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_GROUP_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8115042941864665127)
,p_event_id=>wwv_flow_api.id(8115042640759665083)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P15_GROUP_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2516754631654400461)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P15_GROUP_ID'
,p_condition_element=>'P15_GROUP_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2516754788361400462)
,p_event_id=>wwv_flow_api.id(2516754631654400461)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(2516754619722400460)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2516754924972400463)
,p_event_id=>wwv_flow_api.id(2516754631654400461)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(2516754619722400460)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8108527133771599557)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Send Email'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_app_name  varchar2(255)  default ''Team Calendar'';',
'   l_body      clob;',
'   l_email_to  varchar2(32000);',
'   crlf        varchar2(2) := chr(10) || chr(13); ',
'begin',
'',
'   for c1 in (',
'      select logo, logo_type',
'        from apex_applications',
'       where application_id = :APP_ID )',
'   loop',
'      if c1.logo_type = ''Text Logo'' then',
'         l_app_name := replace(substr(c1.logo,6),''&''||''APPLICATION_TITLE.'',:APPLICATION_TITLE);',
'         if lower(substr(l_app_name,1,4)) = ''<img'' then',
'            l_app_name := substr(l_app_name,instr(l_app_name,''>'')+1);',
'         end if;',
'      end if;',
'   end loop;',
'',
'   l_body := ''<div style="margin: 10px">',
'    <h1 style="margin: 0 0 5px 0; padding: 10px; font: bold 18px/32px Arial, sans-serif; color: #EA0000; background-color: #F0F0F0; border-bottom: 2px solid #E6E6E6">''||l_app_name||''</h1>',
'    <p style="margin: 15px 0; font: normal 13px/18px Arial, sans-serif;padding: 0 10px">''||crlf;',
'',
'   dbms_lob.append(l_body, apex_escape.html(:P15_MSG_BODY)||''</p>''||crlf);',
'',
'   dbms_lob.append(l_body,''<p style="margin: 15px 0; font: normal 13px/18px Arial, sans-serif;padding: 0 10px">''||crlf);',
'',
'   dbms_lob.append(l_body,''Please note that all dates and times are shown in ''||:F855_TIMEZONE||',
'                   '' time.  You can access these events in the <a href="''||:HOST_URL||''f?p=''||:APP_ID||'':1">''||l_app_name||''</a> application.</p>''||crlf);',
'',
'   dbms_lob.append(l_body,'' <table style="width: 100%;" cellspacing="0" cellpadding="0" border="0">',
'        <tr>',
'            <th style="background-color: #CCC; color: #333; font: bold 11px/18px Arial, sans-serif; text-align: left; width: 10%; padding: 5px 10px">Event Date</th>',
'            <th style="background-color: #CCC; color: #333; font: bold 11px/18px Arial, sans-serif; text-align: left; width: 17%; padding: 5px 10px">Time</th>',
'            <th style="background-color: #CCC; color: #333; font: bold 11px/18px Arial, sans-serif; text-align: left; width: 28%; padding: 5px 10px">Event Name</th>',
'            <th style="background-color: #CCC; color: #333; font: bold 11px/18px Arial, sans-serif; text-align: left; width: 10%; padding: 5px 10px">Type</th>',
'            <th style="background-color: #CCC; color: #333; font: bold 11px/18px Arial, sans-serif; text-align: left; width: 35%; padding: 5px 10px">Description</th>',
'        </tr>''||crlf);',
'',
'   for c1 in (',
'      select to_char(e.EVENT_DATE_TIME,:APP_DATE_FORMAT) event_date,',
'             case when to_char(e.EVENT_DATE_TIME,''MI'') = ''00'' ',
'                  then ltrim(to_char(e.EVENT_DATE_TIME,''HHam''),''0'')',
'                 else ltrim(to_char(e.EVENT_DATE_TIME,''HH:MIam''),''0'')',
'                 end || '' - '' ||',
'            case when to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''MI'') = ''00''',
'                 then ltrim(to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''HHam''),''0'')',
'                 else ltrim(to_char(to_date(to_char(EVENT_DATE_TIME,''DD-MON-RR''||''HH:MIam''),',
'                         ''DD-MON-RR''||''HH:MIam'')+(e.duration/24),''HH:MIam''),''0'')',
'                 end || '' ('' ||',
'            case when e.duration = 0  then ''0 mins''',
'                 when e.duration = .5 then ''30 mins''',
'                 when e.duration = 1 then ''1 hr''',
'                 when e.duration > 1 then to_char(e.duration) || '' hrs''',
'                 end || '')'' event_time,',
'             case when et.display_color is not null',
'                  then ''<span style="color:'' || apex_escape.html(et.display_color) || ''; white-space:nowrap; font-weight:bold;">'' || apex_escape.html(e.event_name) || ''</span>''',
'                  else ''<span style="white-space:nowrap; font-weight:bold;">'' || apex_escape.html(e.event_name) || ''</span>''',
'                  end event_name,',
'             nvl(apex_escape.html(et.type_name),''&nbsp;'') event_type,',
'             nvl(apex_escape.html(e.EVENT_DESC),''&nbsp;'') event_desc',
'        from EBA_CA_EVENTS e,',
'             EBA_CA_EVENT_TYPES et',
'       where e.type_id = et.type_id (+)',
'         and (:P15_EVENT_TYPE is null or e.type_id = :P15_EVENT_TYPE)',
'         and (:P15_START_DATE is null or ',
'              trunc(to_date(to_char(e.event_date_time,:APP_DATE_FORMAT),',
'                    ''&APP_DATE_FORMAT.'')) >= to_date(:P15_START_DATE,:APP_DATE_FORMAT) )',
'         and (:P15_END_DATE is null or ',
'              trunc(to_date(to_char(e.event_date_time,''&APP_DATE_FORMAT.''),',
'                    ''&APP_DATE_FORMAT.'')) <= to_date(:P15_END_DATE,:APP_DATE_FORMAT) )',
'         and (:P15_TIMEFRAME is null or',
'              (trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                  >= (select start_date from EBA_ca_timeframes',
'                       where :P15_TIMEFRAME = tf_id) and',
'               trunc(to_date(to_char(e.event_date_time,''DD-MON-RRRR''),''DD-MON-RRRR''))',
'                  <= (select end_date from EBA_ca_timeframes',
'                       where :P15_TIMEFRAME = tf_id))) ',
'        order by e.event_date_time )',
'   loop',
'      dbms_lob.append(l_body,''<tr style="font: normal 12px/16px Arial, sans-serif; vertical-align: top;">'');',
'      dbms_lob.append(l_body,''<td style="padding: 5px 10px; background-color: #F4F4F4; border-bottom: 1px solid #E0E0E0">''||c1.event_date||''</td>'');',
'      dbms_lob.append(l_body,''<td style="padding: 5px 10px; background-color: #F4F4F4; border-bottom: 1px solid #E0E0E0">''||c1.event_time||''</td>'');',
'      dbms_lob.append(l_body,''<td style="padding: 5px 10px; background-color: #F4F4F4; border-bottom: 1px solid #E0E0E0">''||c1.event_name||''</td>'');',
'      dbms_lob.append(l_body,''<td style="padding: 5px 10px; background-color: #F4F4F4; border-bottom: 1px solid #E0E0E0">''||c1.event_type||''</td>'');',
'      dbms_lob.append(l_body,''<td style="padding: 5px 10px; background-color: #F4F4F4; border-bottom: 1px solid #E0E0E0">''||c1.event_desc||''</td>'');',
'      dbms_lob.append(l_body,''</tr>''||crlf);',
'   end loop;',
'',
'   dbms_lob.append(l_body,''</table></div>''||crlf);',
'',
'   for c1 in (',
'      select email_address',
'        from EBA_ca_email_group_mbrs',
'       where group_id = :P15_GROUP_ID )',
'   loop',
'      l_email_to := l_email_to || c1.email_address || '','';',
'   end loop;',
'',
'   if :P15_TO is not null then ',
'      l_email_to := l_email_to || :P15_TO || '','';',
'   end if;',
'',
'   l_email_to := substr(l_email_to,1,length(l_email_to)-1);',
'',
'   apex_mail.send (',
'      p_to        => l_email_to,',
'      p_from      => :P15_FROM,',
'      p_cc        => :P15_FROM,',
'      p_body      => to_clob('' ''),',
'      p_body_html => l_body,',
'      p_subj      => :P15_SUBJECT );',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Email(s) failed to be sent.'
,p_process_when_button_id=>wwv_flow_api.id(8108523625628559432)
,p_process_success_message=>'Email(s) sent.'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7516569121077163331)
,p_process_sequence=>20
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'Reset Pagination'
,p_process_sql_clob=>'reset_pagination'
,p_attribute_01=>'THIS_PAGE'
,p_process_when=>'Go,CLEAR'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
null;
wwv_flow_api.component_end;
end;
/
