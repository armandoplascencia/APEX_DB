prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Milestone Summary by Project'
,p_step_title=>'Milestone Summary by Project'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_step_template=>wwv_flow_api.id(6781074610982890727)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This interactive report shows summarized project Milestones sorted by project. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, filter,'
||' format, download, and/or save the interactive report.'
,p_last_upd_yyyymmddhh24miss=>'20190904143926'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6181543384866029204)
,p_plug_name=>'Projects'
,p_region_name=>'IR'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    s.ID,',
'    s.PROJECT  project,',
'    sysdate as curr_date,',
'    decode(eba_proj_stat_ui.is_project_open(s.id), 0, ''Closed'', 1, ''Open'') as project_open,',
'    decode(s.parent_project_id,null,null,',
'    (select project from eba_proj_status p where p.id = s.parent_project_id)) parent_project,',
'    nvl(eba_proj_fw.get_project_rowkey(p_project_id => s.id), s.row_key) as row_key,',
'    s.project_customer as customer,',
'    decode((select count(*) from EBA_PROJ_STATUS_FAVORITES f where f.content_id = s.id and f.user_name = upper(:APP_USER)),0,''No'',''Yes'') following,',
'    (   select listagg(lower(u.username),'', '') within group',
'            (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username)) as owners',
'        from eba_proj_user_ref rf,',
'            eba_proj_status_users u,',
'            eba_proj_roles r',
'        where rf.project_id = s.id',
'            and rf.user_id = u.id',
'            and rf.role_id = r.id',
'            and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as owner,',
'    (select category from EBA_PROJ_STATUS_CATS pc where s.cat_id = pc.id) category,',
'    (select ''background-color: ''||apex_escape.html(col.color_code)||'';''',
'        from eba_proj_color_codes col',
'        where col.id = c.color_code_id ) status_color,',
'    (select ''color: ''||case when col.color_code in (''#e10'',''#B31100'') then',
'          ''#ffffff''',
'        else',
'          ''#000000''',
'        end',
'        || '';''',
'        from eba_proj_color_codes col',
'        where col.id = c.color_code_id ) color,',
'    c.status_short_desc status,',
'    (select count(*) from EBA_PROJ_STATUS_UPDATES u where u.project_id = s.id) updates,',
'    (select count(*) from EBA_PROJ_STATUS_UPDATES u where u.project_id = s.id and created > current_date- 7) updates_1w,',
'    (select count(*) from EBA_PROJ_STATUS_AIS a where a.project_id = s.id and a.action_status = ''Open'') open_action_items,',
'    (select count(*) from EBA_PROJ_STATUS_AIS a where a.project_id = s.id and a.action_status = ''Open'' and a.due_date < trunc(current_date)) past_due_action_items,',
'    (select count(*) from eba_proj_status_ms m where m.project_id = s.id) milestones,',
'    (select count(*) from eba_proj_status_ms m where m.project_id = s.id and m.milestone_status = ''Open'') open_milestones,',
'    (select count(*) from eba_proj_status_ms m where m.project_id = s.id and m.milestone_status = ''Open'' and m.milestone_date < trunc(current_date)) past_due_milestones,',
'    s.goal,',
'    s.CREATED,',
'    s.CREATED_BY,',
'    nvl(s.UPDATED,s.created) updated,',
'    s.UPDATED_BY,',
'    apex_util.prepare_url(''f?p=''||:app_id||'':20:''||:app_session||'':::20:P20_ID:''||apex_escape.html(s.id)) email_link,',
'    decode(INCLUDE_BY_DEFAULT_YN,''Y'',''Yes'',''N'',''No'',''No'') inc,',
'    tags,',
'    (select max(CREATED) from EBA_PROJ_STATUS_VERIFICATIONS v ',
'     where v.project_id = s.id) last_verification',
'from EBA_PROJ_STATUS s,',
'     eba_proj_status_codes c',
'where c.id = s.PROJECT_STATUS(+) and ',
'      s.project is not null'))
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
 p_id=>wwv_flow_api.id(6181543608199029207)
,p_name=>'Projects'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No projects found.  You can create a project by clicking the create project button.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>' '
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
,p_internal_uid=>876559228665891534
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181543693626029217)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181544391236029223)
,p_db_column_name=>'PROJECT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_ID:#ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181544489319029223)
,p_db_column_name=>'OWNER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Owners'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181544602230029224)
,p_db_column_name=>'STATUS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Project Status'
,p_column_html_expression=>'<span class="status_indicator" style="#STATUS_COLOR##COLOR#"></span> #STATUS#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9025721939150772116)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181544781408029224)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181544901249029224)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181544995980029225)
,p_db_column_name=>'CUSTOMER'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181545093623029225)
,p_db_column_name=>'ROW_KEY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Project Key'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181545208361029225)
,p_db_column_name=>'GOAL'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Goal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181545304871029225)
,p_db_column_name=>'CATEGORY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'&CAT_TITLE.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181545487827029225)
,p_db_column_name=>'UPDATES'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Updates'
,p_column_link=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.:RP,75:P75_PROJECT:#ID#'
,p_column_linktext=>'#UPDATES#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181545596452029225)
,p_db_column_name=>'EMAIL_LINK'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Email'
,p_column_link=>'#EMAIL_LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#htmldb/icons/mail_20x.gif" alt="Email project owner for status update">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181545795439029226)
,p_db_column_name=>'TAGS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_rpt_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag',
'  from eba_proj_tags_type_sum',
' where tag_count > 0',
'   and content_type = ''STATUS'''))
,p_rpt_show_filter_lov=>'C'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181545909505029226)
,p_db_column_name=>'OPEN_ACTION_ITEMS'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Open Action Items'
,p_column_link=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:RP,46,RIR:P46_PROJECT_ID,IREQ_PROJECT,IREQ_OPEN:#ID#,\#PROJECT#\,Open'
,p_column_linktext=>'#OPEN_ACTION_ITEMS#'
,p_column_link_attr=>'title="#OPEN_ACTION_ITEMS# open action items"'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181546008710029226)
,p_db_column_name=>'PARENT_PROJECT'
,p_display_order=>22
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
 p_id=>wwv_flow_api.id(6181546107124029227)
,p_db_column_name=>'UPDATES_1W'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Updates 1w'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181546190671029227)
,p_db_column_name=>'STATUS_COLOR'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Status Color'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181546399368029228)
,p_db_column_name=>'COLOR'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181543808314029223)
,p_db_column_name=>'PAST_DUE_ACTION_ITEMS'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Past Due Action Items'
,p_column_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,RIR:P49_PAST_DUE_YN,IR_PROJECT,IR_ACTION_STATUS,IRLT_DUE_DATE:Y,\#PROJECT#\,Open,#CURR_DATE#'
,p_column_linktext=>'#PAST_DUE_ACTION_ITEMS#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181543882032029223)
,p_db_column_name=>'OPEN_MILESTONES'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Open Milestones'
,p_column_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP,63,CIR:IR_MILESTONE_STATUS,IR_PROJECT:Open,\#PROJECT#\'
,p_column_linktext=>'#OPEN_MILESTONES#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181543990267029223)
,p_db_column_name=>'PAST_DUE_MILESTONES'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Past Due Milestones'
,p_column_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP,63,RIR:IR_MILESTONE_STATUS,IR_PROJECT,IRLT_MILESTONE_DATE:Open,\#PROJECT#\,#CURR_DATE#'
,p_column_linktext=>'#PAST_DUE_MILESTONES#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181544184731029223)
,p_db_column_name=>'CREATED'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181544286179029223)
,p_db_column_name=>'UPDATED'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181549891832064170)
,p_db_column_name=>'MILESTONES'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Milestones'
,p_column_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP,63,RIR:IR_PROJECT:\#PROJECT#\'
,p_column_linktext=>'#MILESTONES#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181614882969888803)
,p_db_column_name=>'LAST_VERIFICATION'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Last Verification'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6183848687616050183)
,p_db_column_name=>'FOLLOWING'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Following'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371333890523321931)
,p_db_column_name=>'INC'
,p_display_order=>45
,p_column_identifier=>'AJ'
,p_column_label=>'Inc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18916799011992277970)
,p_db_column_name=>'PROJECT_OPEN'
,p_display_order=>55
,p_column_identifier=>'AK'
,p_column_label=>'Project Open Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18916799558617277976)
,p_db_column_name=>'CURR_DATE'
,p_display_order=>65
,p_column_identifier=>'AL'
,p_column_label=>'Curr date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(6181546511952029228)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'8765622'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'PROJECT:STATUS:MILESTONES:OPEN_MILESTONES:PAST_DUE_MILESTONES:LAST_VERIFICATION:FOLLOWING::CURR_DATE'
,p_sort_column_1=>'PROJECT'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'UPDATED'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'UPDATES_1W'
,p_sort_direction_3=>'DESC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19035114834902264513)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Open Projects'
,p_report_seq=>10
,p_report_alias=>'178066383'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'PROJECT:PROJECT_OPEN:STATUS:MILESTONES:OPEN_MILESTONES:PAST_DUE_MILESTONES:OPEN_ACTION_ITEMS:PAST_DUE_ACTION_ITEMS:CURR_DATE'
,p_sort_column_1=>'PROJECT'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'UPDATED'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'UPDATES_1W'
,p_sort_direction_3=>'DESC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(19035161058442284288)
,p_report_id=>wwv_flow_api.id(19035114834902264513)
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
 p_id=>wwv_flow_api.id(6181547311984029233)
,p_plug_name=>'preferences'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>20
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6181548104805029234)
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
 p_id=>wwv_flow_api.id(6181546697923029231)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6181543384866029204)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(6181548508692029235)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'26'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13193036067812755068)
,p_computation_sequence=>20
,p_computation_item=>'PROJECT_CAME_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.component_end;
end;
/
