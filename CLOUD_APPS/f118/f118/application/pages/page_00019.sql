prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>118
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(71961679766536925)
,p_name=>'WALK_RPT'
,p_alias=>'WALK-RPT'
,p_step_title=>'WALK_RPT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'APLASCENCIA'
,p_last_upd_yyyymmddhh24miss=>'20211209203625'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(72487426646130339)
,p_plug_name=>'WALK_RPT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(71870146219536844)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select rownum rownumof,',
'       PRODUCT_NAME,',
'       PRODUCT_LOCATION,',
'       EMPLOYEE_NAME,',
'       EMPLOYEE_EMAIL,',
'       EMPLOYEE_JOB,',
'       HARDWARE_SKILL,',
'       HARDWARE_PROFICIENCY,',
'       MGMT_SKILL,',
'       MGMT_PROFICIENCY,',
'       SOFTWARE_SKILL,',
'       SOFTWARE_PROFICIENCY,',
'       BUSINESS_SKILL,',
'       BUSINESS_PROFICIENCY',
'  from ND_V_WALK_SKILLS'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'WALK_RPT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(72487589351130339)
,p_name=>'WALK_RPT'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ROWNUMOF'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'APLASCENCIA'
,p_internal_uid=>72487589351130339
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72487927764130343)
,p_db_column_name=>'PRODUCT_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Product Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72488361283130344)
,p_db_column_name=>'PRODUCT_LOCATION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Product Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72488715875130345)
,p_db_column_name=>'EMPLOYEE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72489132708130345)
,p_db_column_name=>'EMPLOYEE_EMAIL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Employee Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72489588735130345)
,p_db_column_name=>'EMPLOYEE_JOB'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Employee Job'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72489986626130345)
,p_db_column_name=>'HARDWARE_SKILL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Hardware Skill'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72490314267130346)
,p_db_column_name=>'HARDWARE_PROFICIENCY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Hardware Proficiency'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72490701196130346)
,p_db_column_name=>'MGMT_SKILL'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Mgmt Skill'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72491134158130346)
,p_db_column_name=>'MGMT_PROFICIENCY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Mgmt Proficiency'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72491543123130346)
,p_db_column_name=>'SOFTWARE_SKILL'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Software Skill'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72491943400130347)
,p_db_column_name=>'SOFTWARE_PROFICIENCY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Software Proficiency'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72492300764130347)
,p_db_column_name=>'BUSINESS_SKILL'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Business Skill'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72492744937130347)
,p_db_column_name=>'BUSINESS_PROFICIENCY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Business Proficiency'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(72324909892872838)
,p_db_column_name=>'ROWNUMOF'
,p_display_order=>23
,p_column_identifier=>'N'
,p_column_label=>'Rownumof'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(72494160010148666)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'724942'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRODUCT_NAME:PRODUCT_LOCATION:EMPLOYEE_NAME:EMPLOYEE_EMAIL:EMPLOYEE_JOB:HARDWARE_SKILL:HARDWARE_PROFICIENCY:MGMT_SKILL:MGMT_PROFICIENCY:SOFTWARE_SKILL:SOFTWARE_PROFICIENCY:BUSINESS_SKILL:BUSINESS_PROFICIENCY:ROWNUMOF'
);
wwv_flow_api.component_end;
end;
/
