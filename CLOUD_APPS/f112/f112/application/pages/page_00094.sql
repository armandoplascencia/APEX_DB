prompt --application/pages/page_00094
begin
--   Manifest
--     PAGE: 00094
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
 p_id=>94
,p_user_interface_id=>wwv_flow_api.id(14644135011863537602)
,p_name=>'Product Reference Statuses'
,p_alias=>'PRODUCT-REFERENCE-STATUSES'
,p_page_mode=>'MODAL'
,p_step_title=>'Product Reference Statuses'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14820268321661277386)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(15775842108167638827)
,p_required_patch=>wwv_flow_api.id(14388502044040264448)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200924024448'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14380747981688230148)
,p_plug_name=>'Reference Statuses'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(14959353317676679143)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    id,',
'    status,',
'    description,',
'    decode(IS_CURRENT_YN ,''Y'',''Yes'',''N'',''No'',IS_CURRENT_YN) is_current,',
'    created,',
'    created_by,',
'    updated,',
'    updated_by,',
'    (select count(*) from eba_cust_product_uses where reference_status_id = s.id) as customer_product_assignments',
'from',
'    eba_cust_product_statuses s'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(14380748042642230148)
,p_name=>'Product Statuses'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No product statuses found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'ALLAN'
,p_internal_uid=>13223594657419844178
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14380748398455230154)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14380748861820230156)
,p_db_column_name=>'STATUS'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Status'
,p_column_link=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:RP,95:P95_ID:#ID#'
,p_column_linktext=>'#STATUS#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14380749195565230156)
,p_db_column_name=>'CREATED'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14380749664551230157)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14380750049478230157)
,p_db_column_name=>'UPDATED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14380760436233230158)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14377964598793578796)
,p_db_column_name=>'CUSTOMER_PRODUCT_ASSIGNMENTS'
,p_display_order=>16
,p_column_identifier=>'G'
,p_column_label=>'Product Assignments'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14423546022056698351)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14423550276945704894)
,p_db_column_name=>'IS_CURRENT'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>'Is Current'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14380761477191230908)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'132236081'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATUS:DESCRIPTION:CUSTOMER_PRODUCT_ASSIGNMENTS:IS_CURRENT:UPDATED:UPDATED_BY:'
,p_sort_column_1=>'UPDATED_BY'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14377963637452578786)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14380747981688230148)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14377963765138578787)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14380747981688230148)
,p_button_name=>'ADD_STATUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14959371564035679192)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Status'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:RP,95::'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14377963837389578788)
,p_name=>'Refresh IRR on Add Close'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14377963765138578787)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14377963930187578789)
,p_event_id=>wwv_flow_api.id(14377963837389578788)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14380747981688230148)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14423593248165733735)
,p_name=>'on dialog close refresh report'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(14380747981688230148)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14423593675939733736)
,p_event_id=>wwv_flow_api.id(14423593248165733735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14380747981688230148)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1717757780553148993)
,p_name=>'Refresh Report'
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1717758104753148993)
,p_event_id=>wwv_flow_api.id(1717757780553148993)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1717758662811148994)
,p_event_id=>wwv_flow_api.id(1717757780553148993)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Action Processed.'');'
);
wwv_flow_api.component_end;
end;
/
