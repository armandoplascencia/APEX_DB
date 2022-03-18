prompt --application/pages/page_00155
begin
--   Manifest
--     PAGE: 00155
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
 p_id=>155
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Project Status'
,p_page_mode=>'MODAL'
,p_step_title=>'Project Status'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch:t-Dialog--noPadding'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_protection_level=>'C'
,p_help_text=>'This interactive report displays ALL projects (including deleted projects). From this page you can "undelete" a project. Click the pencil icon next to a "deleted" project and then change the project''s "Deleted" status from "Yes" to "No". Click the <s'
||'trong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, filter, format, download, and/or save the interactive report.'
,p_last_upd_yyyymmddhh24miss=>'20190905165944'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11918408384008230543)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11918409005922230545)
,p_plug_name=>'Project Access Control Status'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select prj.id,',
'    prj.parent_project_id,',
'    prj.row_key,',
'    prj.code_name,',
'    prj.project,',
'    prj.project_status,',
'    prj.created,',
'    prj.created_by,',
'    prj.updated,',
'    prj.updated_by,',
'    prj.description,',
'    prj.is_deleted_yn,',
'    prj.acl_status_level,',
'    prj.template_id as template,',
'    (   select count(*)',
'        from eba_proj_user_ref rf',
'        where rf.project_id = prj.id ) associated_people',
'from eba_proj_status$ prj'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11918409069663230545)
,p_name=>'Project Access Control Status'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:157:&SESSION.::&DEBUG.:RP,157:P157_PROJECT_ID:#ID#'
,p_detail_link_text=>'<center><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt=""></center>'
,p_owner=>'DAVID'
,p_internal_uid=>10689932456968727417
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11918409444745230547)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11918411424960230549)
,p_db_column_name=>'PROJECT'
,p_display_order=>11
,p_column_identifier=>'F'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11918410710493230548)
,p_db_column_name=>'PARENT_PROJECT_ID'
,p_display_order=>21
,p_column_identifier=>'D'
,p_column_label=>'Parent Project'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(11677310552046892880)
,p_rpt_show_filter_lov=>'1'
,p_required_patch=>wwv_flow_api.id(19890960485833316269)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11918411033108230549)
,p_db_column_name=>'ROW_KEY'
,p_display_order=>31
,p_column_identifier=>'E'
,p_column_label=>'Project Key'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11918422242165230561)
,p_db_column_name=>'PROJECT_STATUS'
,p_display_order=>41
,p_column_identifier=>'AG'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9025721939150772116)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11918425494752230566)
,p_db_column_name=>'CREATED'
,p_display_order=>51
,p_column_identifier=>'AO'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11918425898031230567)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>61
,p_column_identifier=>'AP'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11918426251451230567)
,p_db_column_name=>'UPDATED'
,p_display_order=>71
,p_column_identifier=>'AQ'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11918426627737230568)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>81
,p_column_identifier=>'AR'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11918427019041230569)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>91
,p_column_identifier=>'AS'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11918434247671230576)
,p_db_column_name=>'IS_DELETED_YN'
,p_display_order=>101
,p_column_identifier=>'BK'
,p_column_label=>'Deleted?'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9019252630556871632)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11918434677264230577)
,p_db_column_name=>'ACL_STATUS_LEVEL'
,p_display_order=>111
,p_column_identifier=>'BL'
,p_column_label=>'Access Control'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(11154171524619972300)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11916209512651762845)
,p_db_column_name=>'ASSOCIATED_PEOPLE'
,p_display_order=>121
,p_column_identifier=>'BN'
,p_column_label=>'Associated People'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19167488920525858474)
,p_db_column_name=>'CODE_NAME'
,p_display_order=>131
,p_column_identifier=>'BO'
,p_column_label=>'Project Code Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_required_patch=>wwv_flow_api.id(19245436446324471171)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18016138463823311063)
,p_db_column_name=>'TEMPLATE'
,p_display_order=>141
,p_column_identifier=>'BP'
,p_column_label=>'Template'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(13656494570850118221)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11918471181789247836)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'106899946'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROJECT:TEMPLATE:PROJECT_STATUS:UPDATED:IS_DELETED_YN:ACL_STATUS_LEVEL:ASSOCIATED_PEOPLE:'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11916209574723762846)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11918409005922230545)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11916210050407762851)
,p_name=>'Handle Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(11918409005922230545)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11916210171499762852)
,p_event_id=>wwv_flow_api.id(11916210050407762851)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11918409005922230545)
);
wwv_flow_api.component_end;
end;
/
