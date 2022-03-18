prompt --application/pages/page_00104
begin
--   Manifest
--     PAGE: 00104
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
 p_id=>104
,p_user_interface_id=>wwv_flow_api.id(14644135011863537602)
,p_name=>'Customer Use Cases'
,p_alias=>'CUSTOMER-USE-CASES'
,p_page_mode=>'MODAL'
,p_step_title=>'Customer Use Cases'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14820268321661277386)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(15775842108167638827)
,p_required_patch=>wwv_flow_api.id(17217818275744521140)
,p_protection_level=>'C'
,p_help_text=>'&CUSTOMER_USE_CASE_HELP.'
,p_last_upd_yyyymmddhh24miss=>'20200210140417'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17226553079091679760)
,p_plug_name=>'Customer Use Cases'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(14959353317676679143)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    u.id,',
'    u.use_case,',
'    u.description,',
'    decode(u.is_active,''Y'',:ACTIVE_MSG,:INACTIVE_MSG) Status,',
'    u.updated,',
'    u.created,',
'    u.updated_by,',
'    u.created_by,',
'    (select count(*) from eba_cust_customers c where c.use_case_id = u.id) customer_count',
'from',
'    eba_cust_use_case u'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(17226553413603679762)
,p_name=>'Customer Statuses'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No use case codes found.'
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
,p_download_formats=>'CSV:HTML:EMAIL:PDF'
,p_owner=>'MIKE'
,p_internal_uid=>16069400028381293792
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17226553559491679770)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17226553948944679771)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17226554321110679772)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17226554735684679772)
,p_db_column_name=>'UPDATED'
,p_display_order=>15
,p_column_identifier=>'F'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17226555147878679773)
,p_db_column_name=>'CREATED'
,p_display_order=>25
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17226555523290679773)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>35
,p_column_identifier=>'H'
,p_column_label=>'Updated by'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17226556044441679774)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>45
,p_column_identifier=>'I'
,p_column_label=>'Created by'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17226556473199679775)
,p_db_column_name=>'CUSTOMER_COUNT'
,p_display_order=>55
,p_column_identifier=>'J'
,p_column_label=>'Customer Count'
,p_column_link=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:RP,59:P59_USE_CASE:#ID#'
,p_column_linktext=>'#CUSTOMER_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17102157084070231782)
,p_db_column_name=>'USE_CASE'
,p_display_order=>65
,p_column_identifier=>'L'
,p_column_label=>'Use Case'
,p_column_link=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.:RP,105:P105_ID:#ID#'
,p_column_linktext=>'#USE_CASE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17226557187590679776)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'160694039'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DESCRIPTION:STATUS:CUSTOMER_COUNT::USE_CASE'
,p_sort_column_1=>'CUSTOMER_TYPE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'CUSTOMER_STATUS'
,p_sort_direction_2=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17226557589762679782)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17226553079091679760)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:5,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17226552673407679756)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17226553079091679760)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14959371564035679192)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Use Case Code'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:105:&SESSION.::&DEBUG.:105::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(434367127481178379)
,p_name=>'Refresh on Add'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(17226552673407679756)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(434367210619178380)
,p_event_id=>wwv_flow_api.id(434367127481178379)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17226553079091679760)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(434367307833178381)
,p_name=>'Refresh on Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(17226553079091679760)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(438499469308953232)
,p_event_id=>wwv_flow_api.id(434367307833178381)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17226553079091679760)
);
wwv_flow_api.component_end;
end;
/
