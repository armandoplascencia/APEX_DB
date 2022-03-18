prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Event Details - &P3_EVENT_NAME.'
,p_alias=>'EVENT-DETAILS-P3-EVENT-NAME'
,p_step_title=>'Event Details - &P3_EVENT_NAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022052510671357508)
,p_step_template=>wwv_flow_api.id(1797825406221014278)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This is the event details page. Click the <strong>Cancel</strong> button to leave this page. Click the <strong>iCalendar</strong> button to save this event as an .ics file. Click the <strong>Print</strong> button to print this page. Click the <strong'
||'>Edit Event</strong> button to edit this event. Click the "Add Link" list item in the list on the right to add a link. Click the "Add Attachment" list item in the list on the right to upload a file attachment. If your app administrator has enabled th'
||'e "Show Updates" build option for this application, you will see an "Add Update" list item in the list on the right that you can click to add a comment to the event.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301102340'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(1798885697968402576)
,p_name=>'Details'
,p_template=>wwv_flow_api.id(1797842692634014308)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select    event_name,',
'          row_key,',
'          calendar_id,',
'          type_id,',
'          event_date_time,',
'          to_char(event_date_time,''HH:MI PM'') as start_time,',
'          to_char(event_date_time + duration/24,''HH:MI PM'') as end_time,',
'          duration,',
'          event_desc,',
'          contact_person,',
'          contact_email,',
'          location,',
'          created_on,',
'          created_by,',
'          last_updated_on,',
'          last_updated_by,',
'          case when series_id is null then ''No'' else ''Yes'' end as recurring_event,',
'          tags,',
'          (select recur_freq from eba_ca_series where series_id = e.series_id) as freq,',
'          (select start_date from eba_ca_series where series_id = e.series_id) as start_date,',
'          (select end_date from eba_ca_series where series_id = e.series_id) as end_date',
'     from EBA_ca_events e',
'   where event_id = :P3_EVENT_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P3_EVENT_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797864684393014349)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1798885747674402577)
,p_query_column_id=>1
,p_column_alias=>'EVENT_NAME'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1798887891823402598)
,p_query_column_id=>2
,p_column_alias=>'ROW_KEY'
,p_column_display_sequence=>12
,p_column_heading=>'Unique ID'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3232632379994971482)
,p_query_column_id=>3
,p_column_alias=>'CALENDAR_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Calendar'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and calendar_id is not null'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(1938896976341493348)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1798885927879402578)
,p_query_column_id=>4
,p_column_alias=>'TYPE_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Event Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(9022029019271333618)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1798885959124402579)
,p_query_column_id=>5
,p_column_alias=>'EVENT_DATE_TIME'
,p_column_display_sequence=>4
,p_column_heading=>'Event Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3232632108540971479)
,p_query_column_id=>6
,p_column_alias=>'START_TIME'
,p_column_display_sequence=>5
,p_column_heading=>'Start Time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3232632169463971480)
,p_query_column_id=>7
,p_column_alias=>'END_TIME'
,p_column_display_sequence=>6
,p_column_heading=>'End Time'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1798886104348402580)
,p_query_column_id=>8
,p_column_alias=>'DURATION'
,p_column_display_sequence=>7
,p_column_heading=>'Duration'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'#DURATION# hour(s)'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1798886202875402581)
,p_query_column_id=>9
,p_column_alias=>'EVENT_DESC'
,p_column_display_sequence=>11
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and event_desc is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1798886428323402583)
,p_query_column_id=>10
,p_column_alias=>'CONTACT_PERSON'
,p_column_display_sequence=>8
,p_column_heading=>'Contact person'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and contact_person is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1798886446581402584)
,p_query_column_id=>11
,p_column_alias=>'CONTACT_EMAIL'
,p_column_display_sequence=>9
,p_column_heading=>'Contact email'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and contact_email is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1798886532159402585)
,p_query_column_id=>12
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>10
,p_column_heading=>'Location'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and location is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1798887350340402593)
,p_query_column_id=>13
,p_column_alias=>'CREATED_ON'
,p_column_display_sequence=>13
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1798887502305402594)
,p_query_column_id=>14
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>14
,p_column_heading=>'Created by'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1798887631021402595)
,p_query_column_id=>15
,p_column_alias=>'LAST_UPDATED_ON'
,p_column_display_sequence=>15
,p_column_heading=>'Last Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1798887717603402596)
,p_query_column_id=>16
,p_column_alias=>'LAST_UPDATED_BY'
,p_column_display_sequence=>16
,p_column_heading=>'Last Updated By'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3232632499632971483)
,p_query_column_id=>17
,p_column_alias=>'RECURRING_EVENT'
,p_column_display_sequence=>18
,p_column_heading=>'Recurring Event'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1798887793916402597)
,p_query_column_id=>18
,p_column_alias=>'TAGS'
,p_column_display_sequence=>17
,p_column_heading=>'Tags'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and tags is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3232632613373971484)
,p_query_column_id=>19
,p_column_alias=>'FREQ'
,p_column_display_sequence=>19
,p_column_heading=>'Frequency'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and series_id is not null'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(9240770001967885879)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3232632685729971485)
,p_query_column_id=>20
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_format=>'&APP_DATE_FORMAT.'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and series_id is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3232632786648971486)
,p_query_column_id=>21
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>21
,p_column_heading=>'End Date'
,p_use_as_row_header=>'N'
,p_column_format=>'&APP_DATE_FORMAT.'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and series_id is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1947018122134972780)
,p_plug_name=>'No Edit Actions'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>140
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>'<p>You do not have rights to edit this event.</p>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P3_UPDATEABLE'
,p_plug_display_when_cond2=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2012909973831119566)
,p_plug_name=>'Event Actions'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-LinksList--showIcons:t-LinksList--actions'
,p_plug_template=>wwv_flow_api.id(1797842692634014308)
,p_plug_display_sequence=>130
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_api.id(2277068861002660778)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1797870489735014363)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P3_UPDATEABLE'
,p_plug_display_when_cond2=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2022596805204545018)
,p_plug_name=>'Region Display Selector'
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3337818775516957495)
,p_plug_name=>'Add Update'
,p_region_name=>'ADDNOTEM'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1797852256544014324)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_04'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3337822162618972719)
,p_name=>'Updates'
,p_template=>wwv_flow_api.id(1797853323124014327)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'        '''' class, --use grayComment for gray look',
'        ''Note'' note_type,',
'        replace(sys.dbms_lob.substr(note,2000,1),chr(10),''<br />'') comment_text,',
'        '''' attribute_1,',
'        '''' attribute_2,',
'        '''' attribute_3,',
'        '''' attribute_4,',
'        lower(created_by) user_name,',
'        apex_util.get_since(created) comment_date,',
'        upper(',
'          decode(instr(replace(created_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(created_by,1,2),',
'                 substr(created_by,1,1)||substr(created_by,instr(replace(created_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon,',
'        ''Edit'' actions,',
'        created,',
'        id note_id',
'from EBA_CA_NOTES ',
'where   event_id = :P3_EVENT_ID',
'union all',
'select',
'        ''grayComment'' class, --use grayComment for gray look',
'        ''Insert'' note_type,',
'        initcap(replace(replace(COLUMN_NAME,''_ID'',null),''_'','' '')) comment_text,',
'        null attribute_1,',
'        '' "''||new_value||''" inserted'' attribute_2,',
'        '' '' attribute_3,',
'        '' '' attribute_4,',
'        lower(CHANGED_BY) user_name,',
'        apex_util.get_since(CHANGE_DATE) comment_date,',
'        upper(',
'          decode(instr(replace(changed_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(changed_by,1,2),',
'                 substr(changed_by,1,1)||substr(changed_by,instr(replace(changed_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon,',
'        null actions,',
'        CHANGE_DATE,',
'        null note_id',
'from EBA_CA_HISTORY f',
'where component_id = :P3_EVENT_ID',
'and OLD_VALUE is null',
'union all',
'select',
'        ''grayComment'' class, --use grayComment for gray look',
'        ''Update'' note_type,',
'        initcap(replace(replace(COLUMN_NAME,''_ID'',null),''_'','' '')) comment_text,',
'        '' changed from "''||OLD_VALUE||''"'' attribute_1,',
'        '' to "''||new_value||''"'' attribute_2,',
'        '' '' attribute_3,',
'        '' '' attribute_4,',
'        lower(CHANGED_BY) user_name,',
'        apex_util.get_since(CHANGE_DATE) comment_date,',
'        upper(',
'          decode(instr(replace(changed_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(changed_by,1,2),',
'                 substr(changed_by,1,1)||substr(changed_by,instr(replace(changed_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon,',
'        null actions,',
'        CHANGE_DATE,',
'        null note_id',
'from EBA_CA_HISTORY f',
'where component_id = :P3_EVENT_ID',
'and OLD_VALUE is not null',
'order by 11 desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797862214297014343)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' '
,p_query_no_data_found=>'No updates found'
,p_query_row_count_max=>50
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(1760476393448857035)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3337822449430972728)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3337822557118972728)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Note Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1628309282284229472)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'Comment Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3337822748059972728)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>3
,p_column_heading=>'Attribute 1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3337822867737972728)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_column_heading=>'Attribute 2'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3337822973628972728)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>5
,p_column_heading=>'Attribute 3'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3337823070478972728)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>6
,p_column_heading=>'Attribute 4'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1628309372295229473)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1628309495213229474)
,p_query_column_id=>9
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Comment Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1628309635106229476)
,p_query_column_id=>10
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>13
,p_column_heading=>'User Icon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1628309596817229475)
,p_query_column_id=>11
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>12
,p_column_heading=>'Actions'
,p_column_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP,33:P33_ID:#NOTE_ID#'
,p_column_linktext=>'#ACTIONS#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3337823477742972728)
,p_query_column_id=>12
,p_column_alias=>'CREATED'
,p_column_display_sequence=>7
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338662770246211795)
,p_query_column_id=>13
,p_column_alias=>'NOTE_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Note Id'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3337902567102522837)
,p_name=>'Attachments'
,p_template=>wwv_flow_api.id(1797853323124014327)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id,',
'    ''<a href="''||APEX_UTIL.GET_BLOB_FILE_SRC(''P32_FILE_BLOB'',id)||''">''||apex_escape.html(filename)||''</a>'' filename,',
'    file_mimetype,',
'    file_charset,',
'    apex_util.filesize_mask(dbms_lob.getlength(file_blob)) f_len,',
'    substr(file_comments,1,50)||decode(greatest(length(file_comments),50),50,'''',''...'') FILE_COMMENTS,',
'    case when instr(upper(FILENAME),''.PPT'') > 0or instr(upper(FILENAME),''.PPTX'') > 0 then',
'        ''fa fa fa-file-powerpoint-o''',
'    when instr(upper(FILENAME),''.XLS'') > 0 or instr(upper(FILENAME),''.XLSX'') > 0 then',
'        ''fa fa fa-file-excel-o''',
'    when instr(upper(FILENAME),''.DOC'') > 0 or instr(upper(FILENAME),''.DOCX'') > 0 then',
'        ''fa fa fa-file-word-o''',
'    when instr(upper(FILENAME),''.PDF'') > 0 then',
'        ''fa fa fa-file-pdf-o''',
'    when instr(upper(FILENAME),''.GIF'') > 0 or',
'         instr(upper(FILENAME),''.PNG'') > 0 or',
'         instr(upper(FILENAME),''.TIFF'') > 0 or',
'         instr(upper(FILENAME),''.JPG'') > 0 then',
'        ''fa fa fa-file-image-o''',
'    else',
'        ''fa fa fa-file-o''',
'    end file_type,',
'    case when instr(upper(FILENAME),''.PPT'') > 0or instr(upper(FILENAME),''.PPTX'') > 0 then',
'        ''MS Powerpoint File''',
'    when instr(upper(FILENAME),''.XLS'') > 0 or instr(upper(FILENAME),''.XLSX'') > 0 then',
'        ''MS Excel File''',
'    when instr(upper(FILENAME),''.DOC'') > 0 or instr(upper(FILENAME),''.DOCX'') > 0 then',
'        ''MS Word File''',
'    when instr(upper(FILENAME),''.PDF'') > 0 then',
'        ''Adobe PDF File''',
'    when instr(upper(FILENAME),''.GIF'') > 0 or',
'         instr(upper(FILENAME),''.PNG'') > 0 or',
'         instr(upper(FILENAME),''.TIFF'') > 0 or',
'         instr(upper(FILENAME),''.JPG'') > 0 then',
'        ''Image File''',
'    else',
'        ''Text File''',
'    end file_type_title,',
'    created,',
'    lower(created_by) created_by',
'from EBA_CA_FILES f',
'where event_id = :P3_EVENT_ID',
'order by created desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797862998400014346)
,p_query_num_rows=>5000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No attachments found'
,p_query_row_count_max=>5000
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
 p_id=>wwv_flow_api.id(3337902875500522841)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3337902949977522841)
,p_query_column_id=>2
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>4
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3337903075203522841)
,p_query_column_id=>3
,p_column_alias=>'FILE_MIMETYPE'
,p_column_display_sequence=>5
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3337903172890522841)
,p_query_column_id=>4
,p_column_alias=>'FILE_CHARSET'
,p_column_display_sequence=>6
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3337903267650522841)
,p_query_column_id=>5
,p_column_alias=>'F_LEN'
,p_column_display_sequence=>7
,p_column_heading=>'Size'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3337903373851522842)
,p_query_column_id=>6
,p_column_alias=>'FILE_COMMENTS'
,p_column_display_sequence=>8
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3337903473575522842)
,p_query_column_id=>7
,p_column_alias=>'FILE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<span class="#FILE_TYPE#" title="#FILE_TYPE_TITLE#"></span>'
,p_column_alignment=>'CENTER'
,p_report_column_width=>15
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2389279245198672263)
,p_query_column_id=>8
,p_column_alias=>'FILE_TYPE_TITLE'
,p_column_display_sequence=>1
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3337903548748522846)
,p_query_column_id=>9
,p_column_alias=>'CREATED'
,p_column_display_sequence=>10
,p_column_heading=>'Date Added'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3337903670292522846)
,p_query_column_id=>10
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Added By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3337961549888350506)
,p_plug_name=>'Add Attachment'
,p_region_name=>'add_file_modal'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_api.id(1797852256544014324)
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3337969662804486690)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797855891776014330)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9022023598749333527)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1797876791493014394)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3337994354548588429)
,p_plug_name=>'Edit Links'
,p_region_name=>'edit_link_modal'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400:t-Form--stretchInputs:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(1797852256544014324)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_04'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(8050824727378414846)
,p_name=>'Links'
,p_template=>wwv_flow_api.id(1797853323124014327)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(link_name_1,link_url_1) name,',
'    link_url_1 url,',
'    last_updated_on updated, lower(last_updated_by) updated_by',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_1 is not null',
'union',
'select nvl(link_name_2,link_url_2) name,',
'    link_url_2 url,',
'    last_updated_on updated, lower(last_updated_by) updated_by',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_2 is not null',
'union',
'select nvl(link_name_3,link_url_3) name,',
'    link_url_3 url,',
'    last_updated_on updated, lower(last_updated_by) updated_by',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_3 is not null',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(1797862998400014346)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No links found'
,p_query_row_count_max=>500
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
 p_id=>wwv_flow_api.id(8050825035145414857)
,p_query_column_id=>1
,p_column_alias=>'NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(8050825136139414860)
,p_query_column_id=>2
,p_column_alias=>'URL'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_column_html_expression=>'<a href="#URL#" target="_window" alt="click to open link" title="click to open link">#NAME#</a>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338012658376740875)
,p_query_column_id=>3
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>4
,p_column_heading=>'Date Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338012769982740876)
,p_query_column_id=>4
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>3
,p_column_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8494348941707188703)
,p_plug_name=>'Event'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337978075402499789)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3337969662804486690)
,p_button_name=>'PRINT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Print'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_redirect_url=>'javascript: window.print();'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337826474786004543)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3337818775516957495)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'javascript:closeModal();'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337963259763391180)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3337961549888350506)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'javascript:closeModal();'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8494349156572188705)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3337969662804486690)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&P3_PREV_PAGE.:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337998152255597165)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(3337994354548588429)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'javascript:closeModal();'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337826646172004543)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3337818775516957495)
,p_button_name=>'ADD_NOTE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Update'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_security_scheme=>wwv_flow_api.id(3336588977096114584)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337963477078396237)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3337961549888350506)
,p_button_name=>'ADD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337998465068600888)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(3337994354548588429)
,p_button_name=>'EDIT_LINK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337825969114993519)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3337822162618972719)
,p_button_name=>'POP_ADD_NOTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(1797876052259014390)
,p_button_image_alt=>'Add Note'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:RP,33:P33_EVENT_ID:&P3_EVENT_ID.'
,p_button_condition=>'P3_UPDATEABLE'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(3336588977096114584)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337909363778606979)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3337902567102522837)
,p_button_name=>'POPATTACHMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(1797876052259014390)
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:RP,32:P32_EVENT_ID:&P3_EVENT_ID.'
,p_button_condition=>'P3_UPDATEABLE'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(3336588977096114584)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337813050619902980)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3337969662804486690)
,p_button_name=>'EDIT_EVENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Event'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_EVENT_ID:&P3_EVENT_ID.'
,p_button_condition=>'P3_UPDATEABLE'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_security_scheme=>wwv_flow_api.id(3336588977096114584)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337909574513610132)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3337902567102522837)
,p_button_name=>'VIEW_ATTACHMENTS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(1797876052259014390)
,p_button_image_alt=>'View Attachments'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.:::31:P31_ID:&P3_EVENT_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337917466464626737)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3337822162618972719)
,p_button_name=>'GOUPDATES'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(1797876052259014390)
,p_button_image_alt=>'View Updates'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:34:&SESSION.:::34:P34_ID:&P3_EVENT_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337929857685690417)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(8050824727378414846)
,p_button_name=>'POP_EDIT_LINKS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(1797876052259014390)
,p_button_image_alt=>'Edit Links'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'javascript:openModal(''edit_link_modal'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_1 is not null',
'union',
'select 1',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_2 is not null',
'union',
'select 1',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_3 is not null'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-pencil'
,p_security_scheme=>wwv_flow_api.id(3336588977096114584)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2277083317590739667)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_api.id(8050824727378414846)
,p_button_name=>'POP_ADD_LINKS'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(1797876052259014390)
,p_button_image_alt=>'Add Links'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'javascript:openModal(''edit_link_modal'');'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_1 is not null',
'union',
'select 1',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_2 is not null',
'union',
'select 1',
'  from EBA_ca_events',
' where event_id = :P3_EVENT_ID',
'   and link_url_3 is not null'))
,p_button_condition_type=>'NOT_EXISTS'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(3336588977096114584)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338917554891620137)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3337969662804486690)
,p_button_name=>'icalendar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'iCalendar'
,p_button_position=>'REGION_TEMPLATE_HELP'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3337964955785427850)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 06-APR-2012 10:58 by CBCHO'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(606418839018862433)
,p_name=>'P3_PREV_PAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(8494348941707188703)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1947018017987972779)
,p_name=>'P3_UPDATEABLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(8494348941707188703)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337827275610014334)
,p_name=>'P3_NOTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3337818775516957495)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Update Text'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>64
,p_cMaxlength=>32767
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(1797875786893014385)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337962257076371494)
,p_name=>'P3_FILE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3337961549888350506)
,p_prompt=>'File'
,p_post_element_text=>'<p><em>Attachments must be under 15M in size.</em></p>'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'WWV_FLOW_FILES'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337962476816377183)
,p_name=>'P3_FILE_TAGS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3337961549888350506)
,p_prompt=>'Tags'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337962763095382721)
,p_name=>'P3_FILE_COMMENTS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3337961549888350506)
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337994571183588429)
,p_name=>'P3_LINK_NAME_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3337994354548588429)
,p_prompt=>'Name 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Name of 1st link.  If not provided, the URL will be displayed.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337995050527588430)
,p_name=>'P3_LINK_URL_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(3337994354548588429)
,p_prompt=>'URL 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'URL for 1st link.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337995565120588431)
,p_name=>'P3_LINK_NAME_2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(3337994354548588429)
,p_prompt=>'Name 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Name of 2nd link.  If not provided, the URL will be displayed.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337996048734588431)
,p_name=>'P3_LINK_URL_2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(3337994354548588429)
,p_prompt=>'URL 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'URL for 2nd link.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337996547573588432)
,p_name=>'P3_LINK_NAME_3'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(3337994354548588429)
,p_prompt=>'Name 3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Name of 3rd link.  If not provided, the URL will be displayed.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337997066558588432)
,p_name=>'P3_LINK_URL_3'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(3337994354548588429)
,p_prompt=>'URL 3'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'URL for 3rd link.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8494350848428188707)
,p_name=>'P3_EVENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(8494348941707188703)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8494352546126188709)
,p_name=>'P3_EVENT_NAME'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(8494348941707188703)
,p_prompt=>'Event Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_help_text=>'Name of the event.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3337927965388673693)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'3'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1297461288541980630)
,p_validation_name=>'URL 1 Must start with http'
,p_validation_sequence=>10
,p_validation=>'substr(:P3_LINK_URL_1, 1, 4) = ''http'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'URL must start with http:// or https://'
,p_associated_item=>wwv_flow_api.id(3337995050527588430)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1297461378957980631)
,p_validation_name=>'URL2 Must start with http'
,p_validation_sequence=>20
,p_validation=>'substr(:P3_LINK_URL_2, 1, 4) = ''http'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'URL must start with http:// or https://'
,p_associated_item=>wwv_flow_api.id(3337996048734588431)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1297461495070980632)
,p_validation_name=>'URL 3 must start with http'
,p_validation_sequence=>30
,p_validation=>'substr(:P3_LINK_URL_3, 1, 4) = ''http'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'URL must start with http:// or https://'
,p_associated_item=>wwv_flow_api.id(3337997066558588432)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1798361181717031299)
,p_name=>'Refresh Updates'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798361584642031306)
,p_event_id=>wwv_flow_api.id(1798361181717031299)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3337822162618972719)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798362127415031308)
,p_event_id=>wwv_flow_api.id(1798361181717031299)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3232631591468971474)
,p_name=>'Refresh Links'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3232631702695971475)
,p_event_id=>wwv_flow_api.id(3232631591468971474)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(8050824727378414846)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3232631744583971476)
,p_event_id=>wwv_flow_api.id(3232631591468971474)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1797846908512390484)
,p_name=>'Refresh Attachments'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1797847014966390485)
,p_event_id=>wwv_flow_api.id(1797846908512390484)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3337902567102522837)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1797847037750390486)
,p_event_id=>wwv_flow_api.id(1797846908512390484)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3338005353256644774)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'edit links'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update eba_ca_events',
'set LINK_NAME_1 = :P3_LINK_NAME_1,                   ',
'    LINK_URL_1 = :P3_LINK_URL_1,                ',
'    LINK_NAME_2 = :P3_LINK_NAME_2,                    ',
'    LINK_URL_2 = :P3_LINK_URL_2,                     ',
'    LINK_NAME_3 = :P3_LINK_NAME_3,                   ',
'    LINK_URL_3 = :P3_LINK_URL_3',
'where event_id = :P3_EVENT_ID;',
'',
':P3_LINK_NAME_1 := null;',
':P3_LINK_URL_1 := null;',
':P3_LINK_NAME_2 := null;',
':P3_LINK_URL_2 := null;',
':P3_LINK_NAME_3 := null;',
':P3_LINK_URL_3 := null;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Unable to update the links'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3337998465068600888)
,p_process_success_message=>'Links updated'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3339026646305691437)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Download iCalendar file'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_dtstamp varchar2(255) := null;',
'    l_dtstart varchar2(255) := null;',
'    l_dtend   varchar2(255) := null;',
'    l_utc     timestamp with time zone := systimestamp at time zone ''UTC'';',
'',
'',
'begin',
'',
'--',
'-- Initialization',
'-- (think about changing the filename below, but be sure that the name is properly encoded,',
'-- similar to what is in wwv_flow_utilities.encode_filename)',
'--',
'sys.htp.init;',
'sys.owa_util.mime_header(''text/calendar'', FALSE, ''utf-8'');',
'sys.htp.p(''Content-Disposition: attachment;  filename="iCalendarFile.ics"'');',
'sys.owa_util.http_header_close;',
'',
'',
'for c1 in (',
'   select event_id id,',
'          event_name,',
'          type_id,',
'          event_date_time,',
'          duration,',
'          event_desc,',
'          contact_person,',
'          contact_email,',
'          location,',
'          series_id,',
'          created_on, ',
'          created_by, ',
'          last_updated_on, ',
'          last_updated_by',
'     from EBA_ca_events',
'   where event_id = :P3_EVENT_ID )',
'loop',
'',
'l_dtstamp := to_char(l_utc,''RRRRMMDD'')||''T''||',
'   to_char(l_utc,''HH24MISS'')||''Z'';',
'',
'l_dtstart := to_char(c1.event_date_time at time zone ''UTC'',''RRRRMMDD'')||''T''||',
'   to_char(c1.event_date_time at time zone ''UTC'',''HH24MISS'')||''Z'';',
'',
'-- add duration, duration column is in hours needs to be added to start time',
'l_dtend := to_char((c1.event_date_time at time zone ''UTC'' + numtodsinterval(c1.duration, ''hour'')),''RRRRMMDD'')||''T''||',
'   to_char((c1.event_date_time at time zone ''UTC'' + numtodsinterval(c1.duration, ''hour'')),''HH24MISS'')||''Z'';',
'',
'sys.htp.p(''BEGIN:VCALENDAR'');',
'sys.htp.p(''VERSION:2.0'');',
'sys.htp.p(''PRODID:-//hacksw/handcal//NONSGML v1.0//EN'');',
'sys.htp.p(''BEGIN:VEVENT'');',
'sys.htp.p(''UID:''||c1.id);',
'sys.htp.p(''DTSTAMP:''||l_dtstamp);',
'sys.htp.p(''ORGANIZER;CN=''||apex_escape.html(c1.contact_person)||'':MAILTO:''||apex_escape.html(c1.contact_email));',
'sys.htp.p(''DTSTART:''||l_dtstart);',
'sys.htp.p(''DTEND:''||l_dtend);',
'sys.htp.p(''SUMMARY:''||apex_escape.html(c1.event_name));',
'sys.htp.p(''END:VEVENT'');',
'sys.htp.p(''END:VCALENDAR'');',
'',
'exit;',
'end loop;',
'',
'',
'',
'',
'--',
'-- Tell the APEX engine to stop',
'--',
'apex_application.stop_apex_engine;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3338917554891620137)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8494368571612215805)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Load Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin  ',
'  for c1 in (select calendar_id, event_name',
'             from EBA_ca_events',
'             where event_id = :P3_EVENT_ID ',
'            ) loop',
'',
'    :P3_EVENT_NAME         := c1.event_name;',
'',
'    -- Determine if event updateable',
'    if c1.calendar_id is null then',
'      :P3_UPDATEABLE := ''Y'';',
'    elsif :MULTIPLE_CAL_BO = ''Exclude'' then',
'      :P3_UPDATEABLE := ''Y'';',
'    else',
'      for c2 in (select restricted_to',
'                 ,      access_level_id',
'                 from eba_ca_users',
'                 where username = :APP_USER',
'                ) loop',
'        if c2.restricted_to is null then',
'          if c2.access_level_id = 3 then',
'            :P3_UPDATEABLE := ''Y'';',
'          else',
'            :P3_UPDATEABLE := ''N'';',
'          end if;',
'        elsif instr(c2.restricted_to, c1.calendar_id) > 0 then',
'          :P3_UPDATEABLE := ''Y'';',
'        else',
'          :P3_UPDATEABLE := ''N'';',
'        end if;',
'      end loop;',
'    end if;',
'',
'  end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'failed to load data'
,p_process_when=>'P3_EVENT_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.component_end;
end;
/
