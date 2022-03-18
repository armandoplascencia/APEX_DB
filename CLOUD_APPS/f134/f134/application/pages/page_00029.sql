prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Past Due Milestones'
,p_step_title=>'Past Due Milestones'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_step_template=>wwv_flow_api.id(6781074610982890727)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This interactive report shows all past due project Milestones. Click the pencil icon to edit a Milestone. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows '
||'displayed per page, filter, format, download, and/or save the interactive report.'
,p_last_upd_yyyymmddhh24miss=>'20190905080117'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14126107465138843561)
,p_plug_name=>'Projects'
,p_region_name=>'IR'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    case when eba_proj_fw.is_edit_authorized( p_username   => upper(:APP_USER), p_project_id => m.project_id ) = ''Y'' then',
'        ''<a href="'' || apex_util.prepare_url(''f?p='' || :APP_ID || '':48:'' || :APP_SESSION || '':::48:P48_ID,P48_PROJECT_ID:'' || m.id || '','' || m.project_id || '':'') || ''"><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pe'
||'ncil" alt="Edit Milestone"></a>''',
'    else',
'        null',
'    end as edit_link,',
'    case',
'        when (select count(*)',
'                from eba_proj_status_ais',
'               where project_id = m.project_id',
'                 and milestone_id = m.id',
'                 and action_status != ''Not Applicable'') > 0 then',
'             round((select count(*)',
'                from eba_proj_status_ais',
'               where project_id = m.project_id',
'                 and milestone_id = m.id',
'                 and action_status = ''Closed'')/(select count(*)',
'                from eba_proj_status_ais',
'               where project_id = m.project_id',
'                 and milestone_id = m.id',
'                 and action_status != ''Not Applicable'') * 100, -1) || ''%''',
'    else',
'        ''0%''',
'    end as percent_complete,',
'    decode(eba_proj_stat_ui.is_project_open(m.project_id), 0, ''Closed'', 1, ''Open'') as project_open,',
'    row_key,',
'    (   select y.project',
'        from eba_proj_status x,',
'            eba_proj_status y',
'        where x.id = m.project_id',
'            and x.parent_project_id = y.id) parent_project,',
'    project_id,',
'    (   select project',
'        from eba_proj_status x',
'        where x.id = m.project_id ) project, ',
'    milestone_name,',
'    milestone_description,',
'    milestone_date,',
'    milestone_date past_due,',
'    (   select status_short_desc',
'        from eba_proj_status_codes',
'        where id = (select project_status',
'                    from eba_proj_status',
'                    where id = m.project_id)) as status_level,',
'    (   select category',
'        from eba_proj_status_cats',
'        where id = (select cat_id',
'                    from eba_proj_status',
'                    where id = m.project_id)) as category,',
'    milestone_status,',
'    decode(nvl(is_major_yn,''N''),''N'',''No'',''Yes'') major,',
'    created,',
'    created_by,',
'    updated,',
'    updated_by,',
'    case when owner_role_id is null then',
'        milestone_owner',
'    else',
'        nvl((select listagg(lower(u.username),'', '')',
'                within group (order by lower(u.username)) owner',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u',
'            where rf.role_id = m.owner_role_id',
'                and rf.project_id = m.project_id',
'                and u.id = rf.user_id',
'        ), (select ''No ''||r.name||'' defined''',
'            from eba_proj_roles r',
'            where r.id = m.owner_role_id)',
'        )',
'    end as milestone_owner',
'from eba_proj_status_ms m',
'where milestone_date < sysdate and milestone_status = ''Open'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_output_show_link=>'Y'
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
 p_id=>wwv_flow_api.id(14126108005417843581)
,p_name=>'Projects'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No projects found.  You can create a project by clicking the create project button.'
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
,p_description=>'Projects Report'
,p_owner=>'MIKE'
,p_internal_uid=>12897631392723340453
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14017074105774634148)
,p_db_column_name=>'EDIT_LINK'
,p_display_order=>10
,p_column_identifier=>'AQ'
,p_column_label=>'<span class="u-VisuallyHidden">Edit</span>'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126108106478843584)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126111989306843615)
,p_db_column_name=>'PROJECT'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_ID:#PROJECT_ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126113189483843618)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>40
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126113590789843619)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>50
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126114374985843620)
,p_db_column_name=>'ROW_KEY'
,p_display_order=>60
,p_column_identifier=>'M'
,p_column_label=>'Project Key'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126115125274843621)
,p_db_column_name=>'CATEGORY'
,p_display_order=>70
,p_column_identifier=>'O'
,p_column_label=>'&CAT_TITLE.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126117139423843626)
,p_db_column_name=>'PARENT_PROJECT'
,p_display_order=>80
,p_column_identifier=>'V'
,p_column_label=>'Parent Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID',
'   and build_option_name = ''Allow Parent Projects''',
'   and build_option_status = ''Include'''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126109601465843589)
,p_db_column_name=>'CREATED'
,p_display_order=>90
,p_column_identifier=>'AE'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126110007575843590)
,p_db_column_name=>'UPDATED'
,p_display_order=>100
,p_column_identifier=>'AF'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126169862041874506)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>110
,p_column_identifier=>'AG'
,p_column_label=>'Project ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126170585394874510)
,p_db_column_name=>'MILESTONE_NAME'
,p_display_order=>120
,p_column_identifier=>'AH'
,p_column_label=>'Milestone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126171990664874512)
,p_db_column_name=>'MILESTONE_DESCRIPTION'
,p_display_order=>130
,p_column_identifier=>'AJ'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126172632663874514)
,p_db_column_name=>'MILESTONE_DATE'
,p_display_order=>140
,p_column_identifier=>'AK'
,p_column_label=>'Milestone Target Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126173345212874515)
,p_db_column_name=>'STATUS_LEVEL'
,p_display_order=>150
,p_column_identifier=>'AL'
,p_column_label=>'Project Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126174072734874516)
,p_db_column_name=>'MILESTONE_STATUS'
,p_display_order=>160
,p_column_identifier=>'AM'
,p_column_label=>'Milestone Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126174736605874518)
,p_db_column_name=>'MAJOR'
,p_display_order=>170
,p_column_identifier=>'AN'
,p_column_label=>'Major'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126175479855874520)
,p_db_column_name=>'MILESTONE_OWNER'
,p_display_order=>180
,p_column_identifier=>'AO'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14126308882628931797)
,p_db_column_name=>'PAST_DUE'
,p_display_order=>190
,p_column_identifier=>'AP'
,p_column_label=>'Past Due'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18916798773345277968)
,p_db_column_name=>'PROJECT_OPEN'
,p_display_order=>200
,p_column_identifier=>'AR'
,p_column_label=>'Project Open Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18916798880011277969)
,p_db_column_name=>'PERCENT_COMPLETE'
,p_display_order=>210
,p_column_identifier=>'AS'
,p_column_label=>'Percent Complete'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14126119159770843630)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'128976426'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'EDIT_LINK:PROJECT:STATUS_LEVEL:MILESTONE_NAME:MILESTONE_STATUS:MILESTONE_DATE:PERCENT_COMPLETE:MAJOR:MILESTONE_OWNER:PAST_DUE:'
,p_sort_column_1=>'PROJECT'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'UPDATED'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'UPDATES_1W'
,p_sort_direction_3=>'DESC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19034323656835905222)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Open Projects'
,p_report_seq=>10
,p_report_alias=>'178058471'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'EDIT_LINK:PROJECT:PROJECT_OPEN:STATUS_LEVEL:MILESTONE_NAME:MILESTONE_STATUS:MILESTONE_DATE:PERCENT_COMPLETE:MAJOR:MILESTONE_OWNER:PAST_DUE:'
,p_sort_column_1=>'PROJECT'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'UPDATED'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'UPDATES_1W'
,p_sort_direction_3=>'DESC'
,p_break_on=>'PROJECT:0:0:0:0:0'
,p_break_enabled_on=>'PROJECT:0:0:0:0:0'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(19034901211420173622)
,p_report_id=>wwv_flow_api.id(19034323656835905222)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'PROJECT_OPEN'
,p_operator=>'='
,p_expr=>'Open'
,p_condition_sql=>'"PROJECT_OPEN" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Open''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14126120087865843634)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14151597896908906797)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CREATE_MILESTONE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Milestone'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:48::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14126121165032843639)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14126107465138843561)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14126122111694843640)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14126122430070843641)
,p_computation_sequence=>20
,p_computation_item=>'PROJECT_CAME_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14126122756307843642)
,p_name=>'Refresh IRR on MS Add'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14151597896908906797)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14126123223659843643)
,p_event_id=>wwv_flow_api.id(14126122756307843642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14126107465138843561)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14017074175366634149)
,p_name=>'Refresh IRR on MS Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(14126107465138843561)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14017074247645634150)
,p_event_id=>wwv_flow_api.id(14017074175366634149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14126107465138843561)
);
wwv_flow_api.component_end;
end;
/
