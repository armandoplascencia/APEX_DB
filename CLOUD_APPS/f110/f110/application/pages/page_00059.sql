prompt --application/pages/page_00059
begin
--   Manifest
--     PAGE: 00059
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
 p_id=>59
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Email History'
,p_alias=>'EMAIL-HISTORY'
,p_page_mode=>'MODAL'
,p_step_title=>'Email History'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(16485731932639691338)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(250463977822234829)
,p_protection_level=>'C'
,p_help_text=>'<p>If you cannot find an email that you were expecting to see here, check the <a href="f?p=&APP_ID.:34:&APP_SESSION.::NO:34,RIR::">Opt Out User List</a> to see if the user has opted out from receiving &APPLICATION_TITLE. emails.</p>'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518153820'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14006137390745543740)
,p_plug_name=>'View Email'
,p_region_name=>'view_email'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690170320946251154)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
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
 p_id=>wwv_flow_api.id(14006137801050565650)
,p_name=>'View Email'
,p_parent_plug_id=>wwv_flow_api.id(14006137390745543740)
,p_template=>wwv_flow_api.id(14690161967644251135)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sent_time,',
'       html_body message',
'  from eba_qpoll_emails',
' where id = :P59_EMAIL_ID',
' order by sent_time'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14690179856222251179)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(14006145891291696512)
,p_query_column_id=>1
,p_column_alias=>'SENT_TIME'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14006138078098565652)
,p_query_column_id=>2
,p_column_alias=>'MESSAGE'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14033605188852865540)
,p_plug_name=>'Email History'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690169852560251151)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'	   subject,',
'	   sent_time,',
'	   lower(sent_by) sent_by,',
'	   replace(sent_to,'','','', '') sent_to,',
'	   ''View'' view_email,',
'       POLL_ID,',
'       COMMUNITY_ID,',
'       RESPONDENT_ID,',
'       (select poll_name from eba_qpoll_polls x where x.id = h.poll_id) poll,',
'       nvl((select name from EBA_QPOLL_RESP_COMMUNITIES x where x.id = h.community_id),''Other Invitee'') community,',
'       (select email from EBA_QPOLL_RESPONDENTS x where x.id = h.respondent_id) invitee,',
'       initcap(replace(template_static_id,''_'','' '')) template',
'  from eba_qpoll_emails h'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14033605292896865540)
,p_name=>'Email History'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'MIKE'
,p_internal_uid=>936618815108168113
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14033605480596865570)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14033605604413865572)
,p_db_column_name=>'SUBJECT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Subject'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14033605686211865572)
,p_db_column_name=>'SENT_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Sent'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14033605782243865572)
,p_db_column_name=>'SENT_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Sent By'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14033606294913865574)
,p_db_column_name=>'VIEW_EMAIL'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'View Email'
,p_column_link=>'javascript:$s(''P59_EMAIL_ID'',''#ID#'');'
,p_column_linktext=>'#VIEW_EMAIL#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14035794290350144457)
,p_db_column_name=>'POLL_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Selected Poll'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14035794382678144459)
,p_db_column_name=>'COMMUNITY_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Selected Community'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14035794489576144459)
,p_db_column_name=>'RESPONDENT_ID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Selected Respondent'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14035797485623389740)
,p_db_column_name=>'POLL'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Poll'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14035797594707389740)
,p_db_column_name=>'COMMUNITY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Community'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14035797706184389740)
,p_db_column_name=>'INVITEE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Invitee'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14135195696569482921)
,p_db_column_name=>'SENT_TO'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Sent To'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(669398342019738421)
,p_db_column_name=>'TEMPLATE'
,p_display_order=>26
,p_column_identifier=>'Q'
,p_column_label=>'Template'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14033606595778867465)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9366202'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SENT_TIME:SENT_TO:SENT_BY:TEMPLATE:SUBJECT:POLL:VIEW_EMAIL:'
,p_sort_column_1=>'SENT_TIME'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14009630487304551938)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14033605188852865540)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(669396780574725973)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14033605188852865540)
,p_button_name=>'PURGE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(14690191013111251220)
,p_button_image_alt=>'Purge'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6::'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14006137689677560537)
,p_name=>'P59_EMAIL_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14033605188852865540)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14006140587554637414)
,p_name=>'Load Email'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_EMAIL_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14006140886473637425)
,p_event_id=>wwv_flow_api.id(14006140587554637414)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P59_EMAIL_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14006141110306642158)
,p_event_id=>wwv_flow_api.id(14006140587554637414)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14006137801050565650)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14006141301464646233)
,p_event_id=>wwv_flow_api.id(14006140587554637414)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'openModal("view_email");',
'$("#view_email").parent().width("700px");'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(522081519624064568)
,p_name=>'refresh after purge'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(669396780574725973)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(669398163667738419)
,p_event_id=>wwv_flow_api.id(522081519624064568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14033605188852865540)
);
wwv_flow_api.component_end;
end;
/
