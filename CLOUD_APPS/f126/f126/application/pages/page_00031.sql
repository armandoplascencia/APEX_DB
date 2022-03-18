prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Attachments'
,p_alias=>'ATTACHMENTS'
,p_step_title=>'Attachments'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(1398772477606929854)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This page shows a report of the file attachments that have been added to this event. Click the pencil icon to edit attributes of an existing attachment. Click the <strong>Add Attachment</strong> button to add an attachment. Click the <strong>Cancel</'
||'strong> button to return to the decision request details page. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, filter, format, downloa'
||'d, and/or save the interactive report.'
,p_last_upd_yyyymmddhh24miss=>'20200131133339'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3337973668511499542)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(1797842835406014310)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3337974659254499547)
,p_plug_name=>'Attachments'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797851790615014320)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select event_id, ',
'id,',
'''<a href="''||APEX_UTIL.GET_BLOB_FILE_SRC(''P32_FILE_BLOB'',id)||''">''||apex_escape.html(filename)||''</a>'' filename,',
'substr(file_comments,1,50)||decode(greatest(length(file_comments),50),50,'''',''...'') FILE_COMMENTS,',
'TAGS,',
'dbms_lob.getlength(FILE_BLOB) file_size,',
'FILE_MIMETYPE mimetype,',
'created, lower(created_by) created_by,',
'updated, lower(updated_by) updated_by,',
'''#'' delete_file',
'from eba_ca_files',
'where event_id = :P31_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(3337974849941499548)
,p_name=>'Links'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No attachments found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32:P32_ID:#ID#'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_detail_link_attr=>'title="Edit #FILENAME#"'
,p_detail_link_auth_scheme=>wwv_flow_api.id(3336588977096114584)
,p_owner=>'MIKE'
,p_internal_uid=>2594250504666917254
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3337974952212499554)
,p_db_column_name=>'TAGS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3337975063999499562)
,p_db_column_name=>'CREATED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Date Added'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3337975176780499562)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Added By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3337975272036499562)
,p_db_column_name=>'UPDATED'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3337975372249499562)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3337975453584499562)
,p_db_column_name=>'ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3337975577859499562)
,p_db_column_name=>'FILENAME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3337975659930499562)
,p_db_column_name=>'FILE_COMMENTS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3337975751978499563)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3337975877374499563)
,p_db_column_name=>'DELETE_FILE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Delete'
,p_column_link=>'f?p=&APP_ID.:31:&SESSION.:DELETE_FILE:&DEBUG.::P31_DELETE_FILE_ID:#ID#'
,p_column_linktext=>'<span class="t-Icon fa fa-trash-o" aria-hidden="true"></span>'
,p_column_link_attr=>'onclick="return confirm(''Are you sure you want to delete this file?'');" class="t-Button t-Button--danger t-Button--simple t-Button--small" title="Delete File"'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3337975963667499563)
,p_db_column_name=>'FILE_SIZE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FILESIZE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3337978355448503527)
,p_db_column_name=>'EVENT_ID'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Event Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3337976172802499564)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25942519'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'FILENAME:FILE_SIZE:FILE_COMMENTS:CREATED:CREATED_BY:TAGS:DELETE_LINK::DELETE_FILE:F_LEN:ENVIRONMENT_ID:EVENT_ID'
,p_sort_column_1=>'CREATED'
,p_sort_direction_1=>'DESC'
,p_sum_columns_on_break=>'FILE_SIZE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3337976568924499567)
,p_plug_name=>'BC'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797855891776014330)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9022023598749333527)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1797876791493014394)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337974049910499544)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3337976568924499567)
,p_button_name=>'ATTACH_FILE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32:P32_EVENT_ID:&P31_ID.'
,p_button_condition=>'P3_UPDATEABLE'
,p_button_condition2=>'Y'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_security_scheme=>wwv_flow_api.id(3336588977096114584)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3337973862476499543)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3337974659254499547)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876052259014390)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3337977567029499578)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 12-JAN-2012 07:05 by MIKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337974269870499544)
,p_name=>'P31_DELETE_FILE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3337973668511499542)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3337974477402499545)
,p_name=>'P31_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3337973668511499542)
,p_prompt=>'Event Name:'
,p_pre_element_text=>'<a href="f?p=&APP_ID.:3:&APP_SESSION.::::P3_EVENT_ID:&P31_ID.">'
,p_post_element_text=>'</a>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'EVENTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select event_name d, event_id r',
'from   eba_ca_events',
'order by 1'))
,p_field_template=>wwv_flow_api.id(1797875685625014383)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'LOV'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(2045745553782872383)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'31'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(3337977145745499574)
,p_computation_sequence=>10
,p_computation_item=>'P3_EVENT_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P31_ID'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1798366905180135552)
,p_name=>'Refresh Reports'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798367277943135553)
,p_event_id=>wwv_flow_api.id(1798366905180135552)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3337974659254499547)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1798367747317135553)
,p_event_id=>wwv_flow_api.id(1798366905180135552)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3337977253173499576)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete file'
,p_process_sql_clob=>'delete from eba_ca_files where id = :P31_DELETE_FILE_ID;'
,p_process_clob_language=>'PLSQL'
,p_process_when=>'DELETE_FILE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'File deleted.'
);
wwv_flow_api.component_end;
end;
/
