prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>128
,p_default_id_offset=>101063537470361591
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(114040253666691082)
,p_name=>'Pki Equiqment Baskets'
,p_alias=>'PKI-EQUIQMENT-BASKETS'
,p_step_title=>'Pki Equiqment Baskets'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220105012924'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(114349555531694507)
,p_plug_name=>'Equiqment Baskets'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(113948832580690975)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'PKI_EQUIQMENT_BASKETS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Pki Equiqment Baskets'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(114349690954694507)
,p_name=>'Pki Equiqment Baskets'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:25:&APP_SESSION.:::25:P25_ID:\#ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'MISO'
,p_internal_uid=>13286153484332916
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114350047768694508)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114350399855694508)
,p_db_column_name=>'LOCATION_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(114235184005693228)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114350745012694509)
,p_db_column_name=>'IDVARCHAR2128_PRIMARY_KEY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Idvarchar2128 Primary Key'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114351204951694509)
,p_db_column_name=>'BASKETS_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Baskets Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114351618673694510)
,p_db_column_name=>'HAVE_ORTHER_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Have Orther Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114352008445694511)
,p_db_column_name=>'BASKETS_TYPE_ORTHER'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Baskets Type Orther'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114352346635694511)
,p_db_column_name=>'IMAGES_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Images'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(114290477153693879)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114352780301694512)
,p_db_column_name=>'CREATEDBY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Createdby'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114353226457694512)
,p_db_column_name=>'UPDATEDBY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Updatedby'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114353612539694513)
,p_db_column_name=>'CREATEDAT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Createdat'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114354028555694513)
,p_db_column_name=>'UPDATEDAT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updatedat'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114354393837694514)
,p_db_column_name=>'DELETEDAT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Deletedat'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114354782548694515)
,p_db_column_name=>'CREATED'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114355221313694515)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114355611636694516)
,p_db_column_name=>'UPDATED'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(114355998955694516)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(114765685780696713)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'137022'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LOCATION_ID:IDVARCHAR2128_PRIMARY_KEY:BASKETS_TYPE:HAVE_ORTHER_TYPE:BASKETS_TYPE_ORTHER:IMAGES_ID:CREATEDBY:UPDATEDBY:CREATEDAT:UPDATEDAT:DELETEDAT'
,p_sort_column_1=>'LOCATION_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(114357812500694519)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(113960062245690988)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(113893081680690910)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(114017169963691055)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(114357020070694518)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(114349555531694507)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(114015882109691053)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(114359598496694522)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(114349555531694507)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(114015766488691053)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(114358733839694520)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(114349555531694507)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(114359184132694521)
,p_event_id=>wwv_flow_api.id(114358733839694520)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(114349555531694507)
);
wwv_flow_api.component_end;
end;
/
