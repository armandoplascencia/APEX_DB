prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>127
,p_default_id_offset=>99999615750817235
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(108707147906896472)
,p_tab_set=>'TS1'
,p_name=>'Canned Reports'
,p_alias=>'CANNED-REPORTS'
,p_step_title=>'Canned Reports'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'APLASCENCIA'
,p_last_upd_yyyymmddhh24miss=>'20220227194536'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(99975537670758429)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(108699848063896457)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'AP_SCHED_RUNNING_JOBS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(99975678146758430)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'MISO'
,p_internal_uid=>99975678146758430
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99975730588758431)
,p_db_column_name=>'LOG_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Log Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99975885678758432)
,p_db_column_name=>'JOB_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Job Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99975990102758433)
,p_db_column_name=>'JOB_STYLE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Job Style'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99976090925758434)
,p_db_column_name=>'ELAPSED_TIME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Elapsed Time'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99976187516758435)
,p_db_column_name=>'CPU_USED'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cpu Used'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99976275893758436)
,p_db_column_name=>'DESTINATION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Destination'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99976366490758437)
,p_db_column_name=>'SESSION_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Session Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99976482466758438)
,p_db_column_name=>'RESOURCE_CONSUMER_GROUP'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Resource Consumer Group'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99976562162758439)
,p_db_column_name=>'CREDENTIAL_NAME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Credential Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(101113111401206254)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1011132'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LOG_ID:JOB_NAME:JOB_STYLE:ELAPSED_TIME:CPU_USED:DESTINATION:SESSION_ID:RESOURCE_CONSUMER_GROUP:CREDENTIAL_NAME'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(99976616239758440)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(108699848063896457)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'AP_SCHED_SCHEDULED_JOBS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(99976789164758441)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'MISO'
,p_internal_uid=>99976789164758441
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99976806071758442)
,p_db_column_name=>'JOB_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Job Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99976901405758443)
,p_db_column_name=>'JOB_TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Job Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99977043626758444)
,p_db_column_name=>'JOB_PRIORITY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Job Priority'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99977198714758445)
,p_db_column_name=>'JOB_ACTION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Job Action'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99977247693758446)
,p_db_column_name=>'JOB_ARGS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Job Args'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99977307571758447)
,p_db_column_name=>'REPEAT_INTERVAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Repeat Interval'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99977459694758448)
,p_db_column_name=>'RUN_COUNT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Run Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99977509550758449)
,p_db_column_name=>'FAILURE_COUNT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Failure Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99977615684758450)
,p_db_column_name=>'RETRY_COUNT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Retry Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101102102686203201)
,p_db_column_name=>'NEXT_RUN_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Next Run Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101102283877203202)
,p_db_column_name=>'LAST_START_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Last Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101102342939203203)
,p_db_column_name=>'LAST_RUN_DURATION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Run Duration'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101102452910203204)
,p_db_column_name=>'AUTODROP_'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Autodrop'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101102593032203205)
,p_db_column_name=>'ENABLED_'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Enabled'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101102687215203206)
,p_db_column_name=>'COMMENTS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(101113712913206278)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1011138'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JOB_NAME:JOB_TYPE:JOB_PRIORITY:JOB_ACTION:JOB_ARGS:REPEAT_INTERVAL:RUN_COUNT:FAILURE_COUNT:RETRY_COUNT:NEXT_RUN_DATE:LAST_START_DATE:LAST_RUN_DURATION:AUTODROP_:ENABLED_:COMMENTS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101071379869448405)
,p_plug_name=>'Canned Reports'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(108699848063896457)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from user_views where view_name like ''AP_SCHED%'''
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Canned Reports'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(101071457415448405)
,p_name=>'Canned Reports'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'MISO'
,p_internal_uid=>101071457415448405
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99973140530758405)
,p_db_column_name=>'VIEW_NAME'
,p_display_order=>10
,p_column_identifier=>'B'
,p_column_label=>'View Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99973241655758406)
,p_db_column_name=>'TEXT_LENGTH'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Text Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99973372858758407)
,p_db_column_name=>'TEXT'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Text'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99973458576758408)
,p_db_column_name=>'TEXT_VC'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Text Vc'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99973564426758409)
,p_db_column_name=>'TYPE_TEXT_LENGTH'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Type Text Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99973630238758410)
,p_db_column_name=>'TYPE_TEXT'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Type Text'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99973774336758411)
,p_db_column_name=>'OID_TEXT_LENGTH'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Oid Text Length'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99973828011758412)
,p_db_column_name=>'OID_TEXT'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Oid Text'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99973933175758413)
,p_db_column_name=>'VIEW_TYPE_OWNER'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'View Type Owner'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99974094284758414)
,p_db_column_name=>'VIEW_TYPE'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'View Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99974187117758415)
,p_db_column_name=>'SUPERVIEW_NAME'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Superview Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99974283960758416)
,p_db_column_name=>'EDITIONING_VIEW'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Editioning View'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99974387254758417)
,p_db_column_name=>'READ_ONLY'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Read Only'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99974406666758418)
,p_db_column_name=>'CONTAINER_DATA'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Container Data'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99974502275758419)
,p_db_column_name=>'BEQUEATH'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Bequeath'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99974699666758420)
,p_db_column_name=>'ORIGIN_CON_ID'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Origin Con Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99974762844758421)
,p_db_column_name=>'DEFAULT_COLLATION'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Default Collation'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99974892504758422)
,p_db_column_name=>'CONTAINERS_DEFAULT'
,p_display_order=>180
,p_column_identifier=>'S'
,p_column_label=>'Containers Default'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99974960592758423)
,p_db_column_name=>'CONTAINER_MAP'
,p_display_order=>190
,p_column_identifier=>'T'
,p_column_label=>'Container Map'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99975017094758424)
,p_db_column_name=>'EXTENDED_DATA_LINK'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Extended Data Link'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99975102213758425)
,p_db_column_name=>'EXTENDED_DATA_LINK_MAP'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Extended Data Link Map'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99975246569758426)
,p_db_column_name=>'HAS_SENSITIVE_COLUMN'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Has Sensitive Column'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99975329390758427)
,p_db_column_name=>'ADMIT_NULL'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'Admit Null'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99975477627758428)
,p_db_column_name=>'PDB_LOCAL_ONLY'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Pdb Local Only'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(101072463488449232)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1010725'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VIEW_NAME:VIEW_TYPE_OWNER:TEXT:BEQUEATH:TEXT_LENGTH:TYPE_TEXT:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101102717022203207)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(108699848063896457)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'AP_SCHED_SCHED_JOB_RUN_DET'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(101102801992203208)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'MISO'
,p_internal_uid=>101102801992203208
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101102962535203209)
,p_db_column_name=>'JOB_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Job Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101103090987203210)
,p_db_column_name=>'RUN_DUR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Run Dur'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(101114452937206312)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1011145'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JOB_NAME:RUN_DUR'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(101103162358203211)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(108699848063896457)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from ap_sched_jobs_history',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(101103282644203212)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'MISO'
,p_internal_uid=>101103282644203212
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101103398429203213)
,p_db_column_name=>'LOG_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Log Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101103454807203214)
,p_db_column_name=>'JOB_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Job Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101103543076203215)
,p_db_column_name=>'SUCCEEDED'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Succeeded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101103687126203216)
,p_db_column_name=>'FAILED'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Failed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101103786500203217)
,p_db_column_name=>'ERROR_DESC'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Error Desc'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101103816400203218)
,p_db_column_name=>'FIRST_RUN'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'First Run'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101103903427203219)
,p_db_column_name=>'LAST_RUN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Last Run'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101104045354203220)
,p_db_column_name=>'RUN_DURATION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Run Duration'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101104133084203221)
,p_db_column_name=>'CPU_USED'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Cpu Used'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(101306377354875328)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1013064'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LOG_ID:JOB_NAME:SUCCEEDED:FAILED:ERROR_DESC:FIRST_RUN:LAST_RUN:RUN_DURATION:CPU_USED'
);
wwv_flow_api.component_end;
end;
/
