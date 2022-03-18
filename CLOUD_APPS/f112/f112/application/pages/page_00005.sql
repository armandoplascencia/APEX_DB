prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(14644135011863537602)
,p_name=>'Customer Types'
,p_alias=>'CUSTOMER-TYPES'
,p_page_mode=>'MODAL'
,p_step_title=>'Customer Types'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14820268321661277386)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(15775842108167638827)
,p_protection_level=>'C'
,p_help_text=>'&CUSTOMER_TYPE_HELP.'
,p_last_upd_yyyymmddhh24miss=>'20200210140014'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17907021924639740858)
,p_plug_name=>'Customer Types'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(14959353317676679143)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    t.id,',
'    t.type as customer_type,',
'    t.description,',
'    decode(t.is_active,''Y'',:ACTIVE_MSG,:INACTIVE_MSG) Status,',
'    t.updated,',
'    t.created,',
'    t.updated_by,',
'    t.created_by,',
'    (select count(*) from eba_cust_customers c where c.type_id = t.id) customer_count',
'from',
'    eba_cust_type t'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(17907022013868740858)
,p_name=>'Customer Statuses'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No type codes found.'
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
,p_internal_uid=>3741422720003038728
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17907022217852740862)
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
 p_id=>wwv_flow_api.id(17907022420167740863)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17907022543675740863)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16988981169350331098)
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
 p_id=>wwv_flow_api.id(16988981211426331099)
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
 p_id=>wwv_flow_api.id(16988981381639331100)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>35
,p_column_identifier=>'H'
,p_column_label=>'Updated by'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16988981445942331101)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>45
,p_column_identifier=>'I'
,p_column_label=>'Created by'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16988981516140331102)
,p_db_column_name=>'CUSTOMER_COUNT'
,p_display_order=>55
,p_column_identifier=>'J'
,p_column_label=>'Customer Count'
,p_column_link=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:RP,59:P59_STATUS:#ID#'
,p_column_linktext=>'#CUSTOMER_COUNT#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17102155944563231771)
,p_db_column_name=>'CUSTOMER_TYPE'
,p_display_order=>65
,p_column_identifier=>'K'
,p_column_label=>'Customer Type'
,p_column_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:RP,6:P6_ID:#ID#'
,p_column_linktext=>'#CUSTOMER_TYPE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17907022830880743382)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'9136235'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CUSTOMER_TYPE:DESCRIPTION:STATUS:CUSTOMER_COUNT:'
,p_sort_column_1=>'CUSTOMER_TYPE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'CUSTOMER_STATUS'
,p_sort_direction_2=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14858977799144426620)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17907021924639740858)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17900483592537707734)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17907021924639740858)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14959371564035679192)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Type Code'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1717753195088144649)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1717753668333144649)
,p_event_id=>wwv_flow_api.id(1717753195088144649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17907021924639740858)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1717754178093144650)
,p_event_id=>wwv_flow_api.id(1717753195088144649)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_api.component_end;
end;
/
