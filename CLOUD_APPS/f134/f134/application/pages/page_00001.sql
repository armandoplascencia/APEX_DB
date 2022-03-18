prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Projects Interactive Report'
,p_step_title=>'Projects Interactive Report'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style> ',
'   table.project_table td span.status_indicator,',
'       span.status_indicator  {',
'       display: inline-block;',
'       width: 12px;',
'       text-align: center;',
'       padding: 0;',
'       height: 12px;',
'       line-height: 16px;',
'       -moz-border-radius: 12px;',
'       -webkit-border-radius: 12px;',
'       -moz-border-radius: 12px;',
'       background-color: #CCC;',
'       border: 1px solid #AAA;',
'       border: 1px solid rgba(0,0,0,.25);',
'       font: bold 10px/12px arial, sans-serif;',
'       vertical-align: top;',
'       }',
'</style>'))
,p_step_template=>wwv_flow_api.id(6781074610982890727)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'<p>Use this Interactive Report view to sort and filter the projects.  Click the <strong>Actions</strong> menu button to control which columns you see and the order in which you see them.  You can name and save your favorite report views by clicking <'
||'strong>Actions</strong> then <strong>Save Report</strong>.  Click column headings to filter, sort and control break.  You can also select <strong>Download</strong> under the <strong>Actions</strong> menu.</p>'
,p_last_updated_by=>'SHAKEEB'
,p_last_upd_yyyymmddhh24miss=>'20191029070736'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8972396015306050713)
,p_plug_name=>'Projects'
,p_region_name=>'IR'
,p_region_css_classes=>'flex_projects'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    s.ID,',
'    sysdate as curr_date,',
'    s.PROJECT  project,',
'    s.code_name,',
'    s.headline,',
'    s.headline_last_updated,',
'    s.requesting_team,',
'    s.impacted_environment,',
'    s.deal_type_id as deal_type,',
'    decode(s.parent_project_id,null,null,',
'    (select project from eba_proj_status p where p.id = s.parent_project_id)) parent_project,',
'    s.row_key,',
'    (select ''color:'' || cc.color_code || '';'' from eba_proj_color_codes cc where cc.id = c.COLOR_CODE_ID) as status_color,',
'    s.project_customer as customer,',
'    decode((select count(*) from EBA_PROJ_STATUS_FAVORITES f where f.content_id = s.id and f.user_name = upper(:APP_USER)),0,''No'',''Yes'') following,',
'    (   select listagg(lower(u.username),'', '') within group',
'                (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username)) as owners',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.project_id = s.id',
'                and rf.user_id = u.id',
'                and rf.role_id = r.id',
'                and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as users,',
'    (   select listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '') within group',
'                (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username)) as owners',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.project_id = s.id',
'                and rf.user_id = u.id',
'                and rf.role_id = r.id',
'                and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as owner,',
'    (select category from EBA_PROJ_STATUS_CATS pc where s.cat_id = pc.id) category,',
'    s.project_status as status,',
'    (select count(*) from EBA_PROJ_STATUS_UPDATES u where u.project_id = s.id) updates,',
'    (select count(*) from EBA_PROJ_STATUS_UPDATES u where u.project_id = s.id and created > current_date- 7) updates_1w,',
'    (select count(*) from EBA_PROJ_STATUS_AIS a where a.project_id = s.id) action_items,',
'    (select count(*) from EBA_PROJ_STATUS_AIS a where a.project_id = s.id and a.action_status = ''Open'') open_action_items,',
'    (select count(*) from EBA_PROJ_STATUS_AIS a where a.project_id = s.id and a.action_status = ''Open'' and a.due_date < trunc(current_date)) past_due_action_items,',
'    (select count(*) from eba_proj_status_ms m where m.project_id = s.id) milestones,',
'    (select count(*) from eba_proj_status_ms m where m.project_id = s.id and m.milestone_status = ''Open'') open_milestones,',
'    (select count(*) from eba_proj_status_ms m where m.project_id = s.id and m.milestone_status = ''Open'' and m.milestone_date < trunc(current_date)) past_due_milestones,',
'    next_milestones.MILESTONE_NAME as next_milestone,',
'    next_milestones.MILESTONE_DATE as milestone_date,',
'    s.goal,',
'    decode(s.url,null,null,''<a href="''||apex_escape.html(url)||''" target="TOP" alt="open URL">''||',
'         ''<img src="#IMAGE_PREFIX#menu/go_button_16x16.gif"></a>'') url,',
'    s.CREATED,',
'    s.CREATED_BY,',
'    nvl(s.UPDATED,s.created) updated,',
'    s.UPDATED_BY,',
'    decode(eba_proj_stat_ui.is_project_open(s.id), 0, ''Closed'', 1, ''Open'') as open_closed,',
'    apex_util.prepare_url(''f?p=''||:app_id||'':20:''||:app_session||'':::20:P20_ID:''||apex_escape.html(s.id)) email_link,',
'    decode(INCLUDE_BY_DEFAULT_YN,''Y'',''Yes'',''N'',''No'',''No'') inc,',
'    tags,',
'    (select max(CREATED) from EBA_PROJ_STATUS_VERIFICATIONS v ',
'     where v.project_id = s.id) last_verification,',
'    (   select case when dbms_lob.getlength(status_update) > 3950',
'            then dbms_lob.substr(status_update,3950)||''...''',
'            else cast(status_update as varchar2(4000))',
'        end as status_update',
'        from eba_proj_status_updates',
'        where update_date=(select max(update_date)',
'                           from EBA_PROJ_STATUS_UPDATES u',
'                           where u.project_id = s.id)) latest_status_update,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_01'',s.project_flex_01) project_flex_01,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_02'',s.project_flex_02) project_flex_02,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_03'',s.project_flex_03) project_flex_03,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_04'',s.project_flex_04) project_flex_04,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_05'',s.project_flex_05) project_flex_05,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_06'',s.project_flex_06) project_flex_06,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_07'',s.project_flex_07) project_flex_07,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_08'',s.project_flex_08) project_flex_08,',
'    eba_proj_flex_fw.fetch_n(''PROJECT_FLEX_N01'',s.project_flex_n01) project_flex_n01,',
'    eba_proj_flex_fw.fetch_n(''PROJECT_FLEX_N02'',s.project_flex_n02) project_flex_n02,',
'    eba_proj_flex_fw.fetch_n(''PROJECT_FLEX_N03'',s.project_flex_n03) project_flex_n03,',
'    eba_proj_flex_fw.fetch_n(''PROJECT_FLEX_N04'',s.project_flex_n04) project_flex_n04,',
'    s.project_flex_d01,',
'    s.project_flex_d02,',
'    s.project_flex_d03,',
'    s.project_flex_d04,',
'    s.project_flex_d05,',
'    s.project_flex_d06,',
'    s.project_flex_d07,',
'    s.project_flex_d08,',
'    s.project_flex_d09,',
'    s.project_flex_d10,',
'    s.project_flex_d11,',
'    s.project_flex_d12,',
'    s.project_flex_clob',
'from EBA_PROJ_STATUS s,',
'     eba_proj_status_codes c,',
'    (   select ms.project_id, ms.milestone_date, ms.milestone_name,',
'            row_number() over (partition by ms.project_id',
'            order by ms.milestone_date) rownumber',
'        from eba_proj_status_ms ms',
'        where ms.milestone_status = ''Open'' ) next_milestones',
'where c.id = s.PROJECT_STATUS(+) and s.project is not null',
'    and s.id = next_milestones.project_id(+)',
'    and next_milestones.rownumber(+) = 1'))
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
 p_id=>wwv_flow_api.id(8972396244014050713)
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
,p_internal_uid=>3667411864480913040
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(8972396324942050719)
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
 p_id=>wwv_flow_api.id(8972396428622050726)
,p_db_column_name=>'PROJECT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_ID:#ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9012047237376046990)
,p_db_column_name=>'OWNER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'People'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9012047418039046990)
,p_db_column_name=>'NEXT_MILESTONE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Next Milestone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9012047838016046991)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9012048018595046992)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9012065443095086517)
,p_db_column_name=>'CUSTOMER'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9012219729972102347)
,p_db_column_name=>'ROW_KEY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Key'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9012491533529510158)
,p_db_column_name=>'GOAL'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Goal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9012494523597715485)
,p_db_column_name=>'CATEGORY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'&CAT_TITLE.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9012495619937875236)
,p_db_column_name=>'URL'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'URL'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9012962624428618005)
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
 p_id=>wwv_flow_api.id(9013035425783491614)
,p_db_column_name=>'EMAIL_LINK'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Email'
,p_column_link=>'#EMAIL_LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#htmldb/icons/mail_20x.gif" alt="Email project people for status update">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9030979236719927908)
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
 p_id=>wwv_flow_api.id(9031289515549703705)
,p_db_column_name=>'OPEN_ACTION_ITEMS'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Open Action Items'
,p_column_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,CIR:IREQ_PROJECT,IREQ_ACTION_STATUS:\#PROJECT#\,Open'
,p_column_linktext=>'#OPEN_ACTION_ITEMS#'
,p_column_link_attr=>'title="#OPEN_ACTION_ITEMS# open action items"'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9032689617831896656)
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
 p_id=>wwv_flow_api.id(9045056534478903258)
,p_db_column_name=>'UPDATES_1W'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Updates 1w'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7971167080888856718)
,p_db_column_name=>'OPEN_CLOSED'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Project Open Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5862833801660030687)
,p_db_column_name=>'PAST_DUE_ACTION_ITEMS'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Past Due Action Items'
,p_column_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,CIR:P49_PAST_DUE_YN,IR_PROJECT,IR_ACTION_STATUS,IRLT_DUE_DATE:Y,\#PROJECT#\,Open,#CURR_DATE#'
,p_column_linktext=>'#PAST_DUE_ACTION_ITEMS#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5862833896643030691)
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
 p_id=>wwv_flow_api.id(5862834192171035030)
,p_db_column_name=>'PAST_DUE_MILESTONES'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Past Due Milestones'
,p_column_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP,63,CIR:IR_MILESTONE_STATUS,IR_PROJECT,IRLT_MILESTONE_DATE:Open,\#PROJECT#\,#CURR_DATE#'
,p_column_linktext=>'#PAST_DUE_MILESTONES#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5981761500456113105)
,p_db_column_name=>'MILESTONE_DATE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Milestone Due Date'
,p_column_html_expression=>'<span style="white-space: pre;">#MILESTONE_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5981761581160113108)
,p_db_column_name=>'CREATED'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Project Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5981761685422113108)
,p_db_column_name=>'UPDATED'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Project Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6181614492026884593)
,p_db_column_name=>'LAST_VERIFICATION'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Last Verification'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6183853996002076746)
,p_db_column_name=>'FOLLOWING'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Following'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6252502111631488972)
,p_db_column_name=>'PROJECT_FLEX_D01'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'PROJECT_FLEX_D01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6252502186156488972)
,p_db_column_name=>'PROJECT_FLEX_D02'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'PROJECT_FLEX_D02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6252502295473488972)
,p_db_column_name=>'PROJECT_FLEX_D03'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'PROJECT_FLEX_D03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6252502405126488972)
,p_db_column_name=>'PROJECT_FLEX_D04'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'PROJECT_FLEX_D04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3945328005656585400)
,p_db_column_name=>'PROJECT_FLEX_D05'
,p_display_order=>60
,p_column_identifier=>'BZ'
,p_column_label=>'Project flex d05'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3945328186147585401)
,p_db_column_name=>'PROJECT_FLEX_D06'
,p_display_order=>70
,p_column_identifier=>'CA'
,p_column_label=>'Project flex d06'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D06'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3945328299145585402)
,p_db_column_name=>'PROJECT_FLEX_D07'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Project flex d07'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3945328361082585403)
,p_db_column_name=>'PROJECT_FLEX_D08'
,p_display_order=>90
,p_column_identifier=>'CC'
,p_column_label=>'Project flex d08'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3945328421398585404)
,p_db_column_name=>'PROJECT_FLEX_D09'
,p_display_order=>100
,p_column_identifier=>'CD'
,p_column_label=>'Project flex d09'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D09'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3945328521860585405)
,p_db_column_name=>'PROJECT_FLEX_D10'
,p_display_order=>110
,p_column_identifier=>'CE'
,p_column_label=>'Project flex d10'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D10'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3945328650249585406)
,p_db_column_name=>'PROJECT_FLEX_D11'
,p_display_order=>120
,p_column_identifier=>'CF'
,p_column_label=>'Project flex d11'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D11'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4112881282529300457)
,p_db_column_name=>'PROJECT_FLEX_D12'
,p_display_order=>130
,p_column_identifier=>'CG'
,p_column_label=>'Project flex d12'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D12'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6252502484994488972)
,p_db_column_name=>'PROJECT_FLEX_CLOB'
,p_display_order=>140
,p_column_identifier=>'AY'
,p_column_label=>'PROJECT_FLEX_CLOB'
,p_display_in_default_rpt=>'N'
,p_column_type=>'CLOB'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_CLOB'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6266370598262830968)
,p_db_column_name=>'LATEST_STATUS_UPDATE'
,p_display_order=>150
,p_column_identifier=>'AZ'
,p_column_label=>'Latest Status Update'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7864336450995779592)
,p_db_column_name=>'PROJECT_FLEX_01'
,p_display_order=>160
,p_column_identifier=>'BA'
,p_column_label=>'lov'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7864336510388779593)
,p_db_column_name=>'PROJECT_FLEX_02'
,p_display_order=>170
,p_column_identifier=>'BB'
,p_column_label=>'PROJECT_FLEX_02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7864336653226779594)
,p_db_column_name=>'PROJECT_FLEX_03'
,p_display_order=>180
,p_column_identifier=>'BC'
,p_column_label=>'PROJECT_FLEX_03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7864336745224779595)
,p_db_column_name=>'PROJECT_FLEX_04'
,p_display_order=>190
,p_column_identifier=>'BD'
,p_column_label=>'PROJECT_FLEX_04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7864336811622779596)
,p_db_column_name=>'PROJECT_FLEX_05'
,p_display_order=>200
,p_column_identifier=>'BE'
,p_column_label=>'PROJECT_FLEX_05'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7864336947956779597)
,p_db_column_name=>'PROJECT_FLEX_06'
,p_display_order=>210
,p_column_identifier=>'BF'
,p_column_label=>'PROJECT_FLEX_06'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_06'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7864337078276779598)
,p_db_column_name=>'PROJECT_FLEX_07'
,p_display_order=>220
,p_column_identifier=>'BG'
,p_column_label=>'PROJECT_FLEX_07'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7864337161196779599)
,p_db_column_name=>'PROJECT_FLEX_08'
,p_display_order=>230
,p_column_identifier=>'BH'
,p_column_label=>'PROJECT_FLEX_08'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7864337264535779600)
,p_db_column_name=>'PROJECT_FLEX_N01'
,p_display_order=>240
,p_column_identifier=>'BI'
,p_column_label=>'PROJECT_FLEX_N01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_N01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7864337311385779601)
,p_db_column_name=>'PROJECT_FLEX_N02'
,p_display_order=>250
,p_column_identifier=>'BJ'
,p_column_label=>'PROJECT_FLEX_N02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_N02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7864337384435779602)
,p_db_column_name=>'PROJECT_FLEX_N03'
,p_display_order=>260
,p_column_identifier=>'BK'
,p_column_label=>'PROJECT_FLEX_N03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_N03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7864337511892779603)
,p_db_column_name=>'PROJECT_FLEX_N04'
,p_display_order=>270
,p_column_identifier=>'BL'
,p_column_label=>'PROJECT_FLEX_N04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_N04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371333944373321932)
,p_db_column_name=>'INC'
,p_display_order=>280
,p_column_identifier=>'BM'
,p_column_label=>'Inc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18916798396581277964)
,p_db_column_name=>'CURR_DATE'
,p_display_order=>290
,p_column_identifier=>'BN'
,p_column_label=>'Curr date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18405132199342962977)
,p_db_column_name=>'CODE_NAME'
,p_display_order=>300
,p_column_identifier=>'BO'
,p_column_label=>'Code Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID',
'   and build_option_name = ''Project Code Names''',
'   and build_option_status = ''Include'''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18405132243836962978)
,p_db_column_name=>'DEAL_TYPE'
,p_display_order=>310
,p_column_identifier=>'BP'
,p_column_label=>'Deal Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(19267269827873371215)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_status',
' where deal_type_id is not null',
'   and exists (select null ',
'                 from eba_proj_deal_types',
'                where is_active_yn = ''Y'')',
'   and exists (select null',
'                 from apex_application_build_options',
'                where application_id = :APP_ID',
'                  and build_option_name = ''Project Deal Types''',
'                  and build_option_status = ''Include'')'))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19850570198702020738)
,p_db_column_name=>'ACTION_ITEMS'
,p_display_order=>320
,p_column_identifier=>'BQ'
,p_column_label=>'Action Items'
,p_column_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,CIR:IR_PROJECT:\#PROJECT#\'
,p_column_linktext=>'#ACTION_ITEMS#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19850570262205020739)
,p_db_column_name=>'MILESTONES'
,p_display_order=>330
,p_column_identifier=>'BR'
,p_column_label=>'Milestones'
,p_column_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP,63,CIR:IR_PROJECT:\#PROJECT#\'
,p_column_linktext=>'#MILESTONES#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20233638955601250533)
,p_db_column_name=>'STATUS'
,p_display_order=>340
,p_column_identifier=>'BS'
,p_column_label=>'Project Status'
,p_column_html_expression=>'<span class="u-nowrap"><span class="fa fa-circle" style="#STATUS_COLOR#" aria-hidden="true"></span> #STATUS#</span>'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9025721939150772116)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20398312821628735530)
,p_db_column_name=>'USERS'
,p_display_order=>350
,p_column_identifier=>'BT'
,p_column_label=>'People (Usernames)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2755408145732815986)
,p_db_column_name=>'STATUS_COLOR'
,p_display_order=>360
,p_column_identifier=>'BU'
,p_column_label=>'Status color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2760166418648015504)
,p_db_column_name=>'HEADLINE'
,p_display_order=>370
,p_column_identifier=>'BV'
,p_column_label=>'Headline'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_required_patch=>wwv_flow_api.id(2770584289789526386)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2760166544723015505)
,p_db_column_name=>'REQUESTING_TEAM'
,p_display_order=>380
,p_column_identifier=>'BW'
,p_column_label=>'Requesting Team(s)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_required_patch=>wwv_flow_api.id(2770586391043537687)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2760166672669015506)
,p_db_column_name=>'IMPACTED_ENVIRONMENT'
,p_display_order=>390
,p_column_identifier=>'BX'
,p_column_label=>'Impacted Environment(s)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_required_patch=>wwv_flow_api.id(2770586993360548656)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2770695873071251395)
,p_db_column_name=>'HEADLINE_LAST_UPDATED'
,p_display_order=>400
,p_column_identifier=>'BY'
,p_column_label=>'Headline Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_required_patch=>wwv_flow_api.id(2770584289789526386)
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3849152116971343678)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Category Projects'
,p_report_seq=>10
,p_report_alias=>'36741475'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT:OPEN_CLOSED:CATEGORY:ACTION_ITEMS:MILESTONES:USERS:HEADLINE:REQUESTING_TEAM:IMPACTED_ENVIRONMENT:HEADLINE_LAST_UPDATED::PROJECT_FLEX_N01'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PROJECT'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'UPDATES_1W'
,p_sort_direction_3=>'DESC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(3849152565781343710)
,p_report_id=>wwv_flow_api.id(3849152116971343678)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OPEN_CLOSED'
,p_operator=>'='
,p_expr=>'Open'
,p_condition_sql=>'"OPEN_CLOSED" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Open''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(8972409530005074835)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'8395101'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT:STATUS:MILESTONES:OPEN_MILESTONES:PAST_DUE_MILESTONES:ACTION_ITEMS:OPEN_ACTION_ITEMS:PAST_DUE_ACTION_ITEMS:UPDATED:PROJECT_FLEX_D05:PROJECT_FLEX_D06:PROJECT_FLEX_D07:PROJECT_FLEX_D08:PROJECT_FLEX_D09:PROJECT_FLEX_D10:PROJECT_FLEX_D11:PROJECT_'
||'FLEX_D12:PROJECT_FLEX_01'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PROJECT'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'UPDATES_1W'
,p_sort_direction_3=>'DESC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19034923785653186863)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Open Projects'
,p_report_seq=>10
,p_report_alias=>'178064472'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT:OPEN_CLOSED:OPEN_PAST_DUE_OPEN_PAST_DUE_UPDATED::ACTION_ITEMS:MILESTONES:USERS:STATUS_COLOR:HEADLINE:REQUESTING_TEAM:IMPACTED_ENVIRONMENT:HEADLINE_LAST_UPDATED:PROJECT_FLEX_N01'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PROJECT'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'UPDATES_1W'
,p_sort_direction_3=>'DESC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(19845545701156016252)
,p_report_id=>wwv_flow_api.id(19034923785653186863)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OPEN_CLOSED'
,p_operator=>'='
,p_expr=>'Open'
,p_condition_sql=>'"OPEN_CLOSED" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Open''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8972408318619050821)
,p_plug_name=>'BreadCrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9013389131422720339)
,p_plug_name=>'preferences'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2821824372866251376)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8972408318619050821)
,p_button_name=>'HOME'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Go to Homepage'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-home'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2821824026125248398)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(8972408318619050821)
,p_button_name=>'DASHBOARD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Go to Dashboard'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-dial-gauge-chart'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9012492846267608480)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(8972396015306050713)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(9015641814999175390)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13193035358369755061)
,p_computation_sequence=>20
,p_computation_item=>'PROJECT_CAME_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.component_end;
end;
/
