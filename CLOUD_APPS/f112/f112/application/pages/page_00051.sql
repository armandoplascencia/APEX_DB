prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>51
,p_user_interface_id=>wwv_flow_api.id(14644135011863537602)
,p_tab_set=>'TS1'
,p_name=>'Customer Links'
,p_alias=>'CUSTOMER-LINKS'
,p_step_title=>'Customer Links'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14820268899628280514)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_upd_yyyymmddhh24miss=>'20200116130020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16523982807083951846)
,p_plug_name=>'Customer Links'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14959356293935679148)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17940232663340213707)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14959371794034679193)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16691242696581086567)
,p_plug_name=>'Customer Links'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14959353317676679143)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'customer_id,',
'nvl(link,link_desc) link_text,',
'link link_target,',
'link_comments,',
'tags,',
'created date_added,',
'lower(created_by) added_by,',
'updated,',
'updated_by,',
'''#'' delete_link',
'from eba_cust_links',
'where customer_id = :P51_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(16691242923290086617)
,p_name=>'Customer Links'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No links found'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'CBCHO'
,p_internal_uid=>2525643629424384487
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16691243002458086621)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16691243098678086624)
,p_db_column_name=>'CUSTOMER_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Customer Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16691243914834086639)
,p_db_column_name=>'UPDATED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16691244001029086639)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16691244100030086639)
,p_db_column_name=>'LINK_COMMENTS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16691244211123086640)
,p_db_column_name=>'TAGS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16691249926268196991)
,p_db_column_name=>'LINK_TEXT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Name'
,p_column_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:RP,66:P66_ID:#ID#'
,p_column_linktext=>'#LINK_TEXT#'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_rpt_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(link_desc, link) d',
'from eba_cust_links',
'where customer_id = :p51_id',
'order by 1'))
,p_rpt_show_filter_lov=>'C'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16691249996915196991)
,p_db_column_name=>'LINK_TARGET'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Link Target'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16691250106975196991)
,p_db_column_name=>'DATE_ADDED'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Date Added'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16691250200927196992)
,p_db_column_name=>'ADDED_BY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Added By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16691359206968248155)
,p_db_column_name=>'DELETE_LINK'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'&nbsp;'
,p_column_link=>'f?p=&APP_ID.:51:&SESSION.:DELETE_LINK:&DEBUG.::P51_DELETE_LINK_ID:#ID#'
,p_column_linktext=>'<span class="t-Icon fa fa-trash-o" aria-hidden="true"></span>'
,p_column_link_attr=>'class="t-Button t-Button--danger t-Button--simple t-Button--small" title="Delete Link: #LINK_TEXT#"'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_api.id(16066770301217181173)
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16691251808784229809)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25256526'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LINK_TEXT:LINK_TARGET:DATE_ADDED:ADDED_BY:TAGS:DELETE_LINK:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16691244425975086640)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16523982807083951846)
,p_button_name=>'ADD_LINK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14959371564035679192)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Link'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:66:P66_CUSTOMER_ID:&P51_ID.'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>wwv_flow_api.id(16066770301217181173)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16691476801128274889)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16691242696581086567)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16523982599787951845)
,p_name=>'P51_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16691242696581086567)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16691475195802263900)
,p_name=>'P51_DELETE_LINK_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16691242696581086567)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(16694978895636414482)
,p_computation_sequence=>10
,p_computation_item=>'P50_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'ITEM_VALUE'
,p_computation=>'P51_ID'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13626893191555669816)
,p_name=>'Refresh IRR on close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16691244425975086640)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13626893349953669817)
,p_event_id=>wwv_flow_api.id(13626893191555669816)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16691242696581086567)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14377965953011578809)
,p_name=>'Refresh IRR on Edit Close'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(16691242696581086567)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14377966013484578810)
,p_event_id=>wwv_flow_api.id(14377965953011578809)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16691242696581086567)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16691475612425268663)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete link'
,p_process_sql_clob=>'delete from eba_cust_links where id = :P51_DELETE_LINK_ID;'
,p_process_clob_language=>'PLSQL'
,p_process_when=>'DELETE_LINK'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Link deleted'
,p_security_scheme=>wwv_flow_api.id(16066770301217181173)
);
wwv_flow_api.component_end;
end;
/
