prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Project Links Report'
,p_step_title=>'Project Links Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956244196798598610)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This is an interactive report of all project links. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, filter, format, download, and/or s'
||'ave the interactive report.'
,p_last_upd_yyyymmddhh24miss=>'20190904142139'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9021276245396906317)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9021276632419906320)
,p_plug_name=>'Links'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case',
'           when eba_proj_fw.is_edit_authorized(p_username   => upper(:APP_USER), p_project_id => p.id ) = ''Y'' then',
'               ''<a href="'' || apex_util.prepare_url(''f?p=''||:APP_ID||'':3:''||:APP_SESSION||'':::3:P3_ID,P3_PROJECT_ID:''||l.id||'',''||p.id||'':'') || ''"><img src="#IMAGE_PREFIX#menu/pencil2_16x16.gif" alt="Edit Link" title="Edit Link"></a>''',
'       else',
'           null',
'       end as edit_link,',
'       l.LINK_TARGET,',
'       nvl(l.LINK_TEXT,l.link_target) link_text,',
'       l.updated,',
'       l.link_comments,',
'       nvl(l.gold_yn, ''N'') as gold_yn,',
'       c.CATEGORY,',
'       p.project,',
'       l.tags,',
'       eba_proj_fw.get_name_from_email_address(l.created_by) as created_by,',
'       l.created,',
'       p.id project_id,',
'       l.id link_id,',
'       p.project_status as project_status,',
'       decode(eba_proj_stat_ui.is_project_open(p.id), 0, ''Closed'', 1, ''Open'') as project_open',
'  from eba_proj_status_links l,',
'       eba_proj_status p,',
'       eba_proj_status_cats c',
' where l.project_id = p.id',
'   and p.cat_id = c.id(+)'))
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
 p_id=>wwv_flow_api.id(9021276732711906320)
,p_name=>'Links'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'MIKE'
,p_internal_uid=>3716292353178768647
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12720327865181531859)
,p_db_column_name=>'EDIT_LINK'
,p_display_order=>10
,p_column_identifier=>'L'
,p_column_label=>'Edit'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9021276924999906324)
,p_db_column_name=>'LINK_TARGET'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Link Target'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9021277028433906326)
,p_db_column_name=>'LINK_TEXT'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Link Text'
,p_column_link=>'#LINK_TARGET#'
,p_column_linktext=>'#LINK_TEXT#'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9021277124750906326)
,p_db_column_name=>'UPDATED'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9021277230236906327)
,p_db_column_name=>'LINK_COMMENTS'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9021277344727906327)
,p_db_column_name=>'CATEGORY'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'&CAT_TITLE.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9021277435202906328)
,p_db_column_name=>'PROJECT'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:#PROJECT_ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9021278344460913969)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9021278444393913970)
,p_db_column_name=>'CREATED'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9021294419011944475)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Project ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9035812830683007672)
,p_db_column_name=>'LINK_ID'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Selected Link'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18016135141086311030)
,p_db_column_name=>'GOLD_YN'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Gold'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(9019252630556871632)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18916798498727277965)
,p_db_column_name=>'PROJECT_STATUS'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Project Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(6172832987382026683)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18916798665204277967)
,p_db_column_name=>'PROJECT_OPEN'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Project Open Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847244252700918372)
,p_db_column_name=>'TAGS'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(9021277518834906513)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'8883781'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EDIT_LINK:LINK_TEXT:CATEGORY:GOLD_YN:PROJECT:PROJECT_STATUS:CREATED_BY:CREATED:'
,p_sort_column_1=>'CREATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'LINK_TEXT'
,p_sort_direction_2=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19034918749735183796)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Open Projects'
,p_report_seq=>10
,p_report_alias=>'178064422'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EDIT_LINK:LINK_TEXT:CATEGORY:GOLD_YN:PROJECT:PROJECT_OPEN:PROJECT_STATUS:CREATED_BY:CREATED:'
,p_sort_column_1=>'CREATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'LINK_TEXT'
,p_sort_direction_2=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(19034919138432183800)
,p_report_id=>wwv_flow_api.id(19034918749735183796)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'PROJECT_OPEN'
,p_operator=>'='
,p_expr=>'Open'
,p_condition_sql=>'"PROJECT_OPEN" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Open''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9024116741843555088)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9021276632419906320)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP,21,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(9065634540475046644)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'21'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13193035749698755065)
,p_computation_sequence=>20
,p_computation_item=>'PROJECT_CAME_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13193035848953755066)
,p_name=>'Refresh Region after dialog close'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(9021276632419906320)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13193035919191755067)
,p_event_id=>wwv_flow_api.id(13193035848953755066)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9021276632419906320)
);
wwv_flow_api.component_end;
end;
/
