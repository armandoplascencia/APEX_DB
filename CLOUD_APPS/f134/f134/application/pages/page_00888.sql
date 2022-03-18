prompt --application/pages/page_00888
begin
--   Manifest
--     PAGE: 00888
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>888
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Following'
,p_page_mode=>'MODAL'
,p_step_title=>'Followed Projects'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_inline_css=>'.t-Dialog-body {padding: 0;}'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190904141555'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18937125970930941835)
,p_plug_name=>'Following'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'      s.PROJECT,',
'      s.id,',
'      s.updated,',
'      nvl((  select status_short_desc',
'                            from eba_proj_status_codes c',
'                            where c.id = s.project_status),',
'                        ''Not Defined'') project_status,',
'    decode(s.acl_status_level,2,''fa-lock'',3,''fa-lock'',''u-hidden'') as lock_icon,',
'    eba_proj_stat_get_con_comp(s.id) complete_status',
'from EBA_PROJ_STATUS s,',
'     eba_proj_status_codes c',
'where c.id = s.PROJECT_STATUS(+) and ',
'      s.project is not null',
'    and (',
'             exists (',
'             select 1 from EBA_PROJ_STATUS_FAVORITES f ',
'             where f.content_id = s.id and f.user_name = upper(:APP_USER)))'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(19974135733283199043)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_owner=>'SHAKEEB'
,p_internal_uid=>18745659120588695915
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19974135874164199044)
,p_db_column_name=>'PROJECT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP:P200_ID:#ID#'
,p_column_linktext=>'<span class="fa #LOCK_ICON#" aria-hidden="true"></span> #PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19974135945952199045)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19974136093049199046)
,p_db_column_name=>'UPDATED'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19974136169387199047)
,p_db_column_name=>'PROJECT_STATUS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19974136225732199048)
,p_db_column_name=>'LOCK_ICON'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Lock icon'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19974136405324199049)
,p_db_column_name=>'COMPLETE_STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Completeness'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(20007956853245123448)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'187794803'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'PROJECT:PROJECT_STATUS:COMPLETE_STATUS:UPDATED:'
,p_sort_column_1=>'PROJECT'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.component_end;
end;
/
