prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(47345157114674058)
,p_name=>'Miso Time Dim'
,p_alias=>'MISO-TIME-DIM'
,p_step_title=>'Miso Time Dim'
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
,p_last_upd_yyyymmddhh24miss=>'20211215004935'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47371429121674170)
,p_plug_name=>'Miso Time Hhmmss Dim'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47253606869673979)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SK_TIME,',
'       HOUR,',
'       MINUTE,',
'       SECOND,',
'       TIME,',
'       PERIOD,',
'       LOAD_DATE,',
'       "15_MIN_WINDOW",',
'       END_15_MIN_WINDOW',
'  from MISO_TIME_HHMMSS_DIM'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Miso Time Dim'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(47371554194674170)
,p_name=>'Miso Time Dim'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'MISO'
,p_internal_uid=>47371554194674170
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47371997457674172)
,p_db_column_name=>'SK_TIME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sk Time'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47372321862674172)
,p_db_column_name=>'HOUR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Hour'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47372753419674173)
,p_db_column_name=>'MINUTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Minute'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47373153550674173)
,p_db_column_name=>'SECOND'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Second'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47373563855674173)
,p_db_column_name=>'TIME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47373930042674173)
,p_db_column_name=>'PERIOD'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Period'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(47374316338674174)
,p_db_column_name=>'LOAD_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Load Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73203968911617808)
,p_db_column_name=>'15_MIN_WINDOW'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'15 Min Window'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73204091628617809)
,p_db_column_name=>'END_15_MIN_WINDOW'
,p_display_order=>27
,p_column_identifier=>'I'
,p_column_label=>'End 15 Min Window'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(47391237521674203)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'473913'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SK_TIME:HOUR:MINUTE:SECOND:TIME:PERIOD:LOAD_DATE::15_MIN_WINDOW:END_15_MIN_WINDOW'
,p_sort_column_1=>'SK_TIME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(47375544943674175)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(47264970928673984)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(47197962022673927)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(47322072878674028)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(47374738593674174)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(47371429121674170)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(47320743044674027)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.component_end;
end;
/
