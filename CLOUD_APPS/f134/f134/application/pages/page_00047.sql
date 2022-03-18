prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Template Milestones'
,p_step_title=>'Template Milestones'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(13619049542774220759)
,p_protection_level=>'C'
,p_help_text=>'This interactive report shows the milestones assigned to the given project template. Click the pencil icon to edit the associated milestone. Click the <strong>Add Milestone</strong> button to add a new milestone. Click the <strong>Upload Milestones</'
||'strong> button to upload a .csv file (comma-separated values). Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, filter, format, downloa'
||'d, and/or save the interactive report.'
,p_last_upd_yyyymmddhh24miss=>'20190905090131'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13630299109032829397)
,p_plug_name=>'Template Milestones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.id,',
'    m.template_id,',
'    m.name,',
'    m.owner,',
'    m.owner_role_id,',
'    m.description,',
'    eba_proj_template_fw.start_offset( m.id ) start_date_offset,',
'    m.parent_milestone_id,',
'    m.due_date_offset,',
'    m.is_major_yn,',
'    m.created,',
'    m.created_by,',
'    m.updated,',
'    m.updated_by',
'from eba_proj_template_ms m',
'where m.template_id = :P47_TEMPLATE_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(13630299433596829398)
,p_name=>'Template Milestones'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No Template Milestones found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:181:&SESSION.::&DEBUG.::P181_ID,P181_TEMPLATE_ID:#ID#,#TEMPLATE_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'DAVID'
,p_internal_uid=>12401822820902326270
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13630299585082829402)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13630299933497829405)
,p_db_column_name=>'TEMPLATE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Template ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13630300408627829406)
,p_db_column_name=>'NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13630300720544829407)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13630301141155829407)
,p_db_column_name=>'START_DATE_OFFSET'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Start Date Offset'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13630301590917829408)
,p_db_column_name=>'DUE_DATE_OFFSET'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Length (Days)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13630301916216829408)
,p_db_column_name=>'IS_MAJOR_YN'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Major'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9019252630556871632)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13630302370994829409)
,p_db_column_name=>'CREATED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13630302723422829410)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13630303187984829410)
,p_db_column_name=>'UPDATED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13630303562353829411)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12288033780775109862)
,p_db_column_name=>'PARENT_MILESTONE_ID'
,p_display_order=>21
,p_column_identifier=>'L'
,p_column_label=>'Parent Milestone'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(13656917392069305987)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20152065081424308244)
,p_db_column_name=>'OWNER'
,p_display_order=>31
,p_column_identifier=>'M'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20152065205640308245)
,p_db_column_name=>'OWNER_ROLE_ID'
,p_display_order=>41
,p_column_identifier=>'N'
,p_column_label=>'Owner Role'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(11728375031648423160)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(13630312675283837058)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'124018361'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAME:DESCRIPTION:START_DATE_OFFSET:DUE_DATE_OFFSET:IS_MAJOR_YN:UPDATED:UPDATED_BY:PARENT_MILESTONE_ID:'
,p_sort_column_1=>'START_DATE_OFFSET'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'NAME'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13630306329658829422)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13630304855979829414)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Milestone'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:181:&SESSION.::&DEBUG.:181:P181_TEMPLATE_ID:&P47_TEMPLATE_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13698213678866786946)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'UPLOAD_MILESTONES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Upload Milestones'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:185:&SESSION.::&DEBUG.:RP,185,186,187,188:P185_TEMPLATE_NAME:&P47_TEMPLATE_NAME.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13656173446342066447)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(13630299109032829397)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR:P47_TEMPLATE_ID:&P47_TEMPLATE_ID.'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12288033567125109860)
,p_name=>'P47_TEMPLATE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13630299109032829397)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15358583660901489763)
,p_name=>'P47_TEMPLATE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(13630299109032829397)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(15358583792744489764)
,p_computation_sequence=>10
,p_computation_item=>'P47_TEMPLATE_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pt.name',
'from eba_proj_templates pt',
'where pt.id = :P47_TEMPLATE_ID'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13630303936986829411)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(13630299109032829397)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13630304488808829413)
,p_event_id=>wwv_flow_api.id(13630303936986829411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(13630299109032829397)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13630305250778829414)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13630304855979829414)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13630305812586829415)
,p_event_id=>wwv_flow_api.id(13630305250778829414)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(13630299109032829397)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15358582065508489747)
,p_name=>'Refresh on Close after upload'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13698213678866786946)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15358582142746489748)
,p_event_id=>wwv_flow_api.id(15358582065508489747)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(13630299109032829397)
);
wwv_flow_api.component_end;
end;
/
