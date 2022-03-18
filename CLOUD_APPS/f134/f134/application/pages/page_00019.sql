prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Headlines Report'
,p_step_title=>'Headlines Report'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
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
 p_id=>wwv_flow_api.id(2830685145906152292)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11633642669508565033)
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
'    case',
'        when (select count(*) from eba_proj_history where column_name = ''HEADLINE'' and component_id = s.id) > 0 then',
'            ''<a href="'' || apex_util.prepare_url(''f?p=&APP_ID.:58:&APP_SESSION.::::P58_PROJECT_ID:'' || s.id) || ''" class="t-Button--simple" style="padding:5px;white-space: nowrap;">View History</a> <a href="'' || apex_util.prepare_url(''f?p=&APP_ID.:25'
||':&APP_SESSION.::::P25_PROJECT_ID:'' || s.id) || ''" class="t-Button--simple" style="padding:5px;white-space: nowrap;">Update Headline</a>''',
'        else',
'            ''<a href="'' || apex_util.prepare_url(''f?p=&APP_ID.:25:&APP_SESSION.::::P25_PROJECT_ID:'' || s.id) || ''" class="t-Button--simple" style="padding:5px;white-space: nowrap;">Update Headline</a>''',
'    end as actions,',
'    s.headline,',
'    s.headline_last_updated,',
'    s.requesting_team,',
'    s.impacted_environment,',
'    s.deal_type_id as deal_type,',
'    decode(s.parent_project_id,null,null,',
'    (select project from eba_proj_status p where p.id = s.parent_project_id)) parent_project,',
'    s.row_key,',
'    (select ''background-color:'' || cc.color_code || '';'' from eba_proj_color_codes cc where cc.id = c.COLOR_CODE_ID) as status_color,',
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
'    (   select case when dbms_lob.getlength(status_update) > 200',
'            then dbms_lob.substr(status_update,200)||''...''',
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
'    and (:P19_STATUS is null or '':''||:P19_STATUS||'':'' like ''%:''||s.project_status||'':%'')',
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
 p_id=>wwv_flow_api.id(11633642898216565033)
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
,p_internal_uid=>11458638196127921577
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836264748585157827)
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
 p_id=>wwv_flow_api.id(2836265127810157827)
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
 p_id=>wwv_flow_api.id(2836265520688157827)
,p_db_column_name=>'OWNER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'People'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836265947747157828)
,p_db_column_name=>'NEXT_MILESTONE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Next Milestone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836266324769157828)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836266778622157829)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836267106264157829)
,p_db_column_name=>'CUSTOMER'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836267532875157829)
,p_db_column_name=>'ROW_KEY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Key'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836267966483157830)
,p_db_column_name=>'GOAL'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Goal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836268356525157830)
,p_db_column_name=>'CATEGORY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'&CAT_TITLE.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836268769851157830)
,p_db_column_name=>'URL'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'URL'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836269113420157831)
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
 p_id=>wwv_flow_api.id(2836269538273157832)
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
 p_id=>wwv_flow_api.id(2836269927503157833)
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
 p_id=>wwv_flow_api.id(2836270344691157834)
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
 p_id=>wwv_flow_api.id(2836270795157157835)
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
 p_id=>wwv_flow_api.id(2836271186246157835)
,p_db_column_name=>'UPDATES_1W'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Updates 1w'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836264304473157826)
,p_db_column_name=>'OPEN_CLOSED'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Project Open Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836253992238157814)
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
 p_id=>wwv_flow_api.id(2836254307037157815)
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
 p_id=>wwv_flow_api.id(2836254773812157815)
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
 p_id=>wwv_flow_api.id(2836255144240157816)
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
 p_id=>wwv_flow_api.id(2836255529393157816)
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
 p_id=>wwv_flow_api.id(2836255908050157817)
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
 p_id=>wwv_flow_api.id(2836256335126157817)
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
 p_id=>wwv_flow_api.id(2836256761603157818)
,p_db_column_name=>'FOLLOWING'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Following'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836257114015157819)
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
 p_id=>wwv_flow_api.id(2836257544043157819)
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
 p_id=>wwv_flow_api.id(2836257966113157819)
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
 p_id=>wwv_flow_api.id(2836258358652157820)
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
 p_id=>wwv_flow_api.id(4112882186516300466)
,p_db_column_name=>'PROJECT_FLEX_D05'
,p_display_order=>60
,p_column_identifier=>'CA'
,p_column_label=>'Project flex d05'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4112882280001300467)
,p_db_column_name=>'PROJECT_FLEX_D06'
,p_display_order=>70
,p_column_identifier=>'CB'
,p_column_label=>'Project flex d06'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D06'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4112882317444300468)
,p_db_column_name=>'PROJECT_FLEX_D07'
,p_display_order=>80
,p_column_identifier=>'CC'
,p_column_label=>'Project flex d07'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4112882497265300469)
,p_db_column_name=>'PROJECT_FLEX_D08'
,p_display_order=>90
,p_column_identifier=>'CD'
,p_column_label=>'Project flex d08'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4112882523270300470)
,p_db_column_name=>'PROJECT_FLEX_D09'
,p_display_order=>100
,p_column_identifier=>'CE'
,p_column_label=>'Project flex d09'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D09'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4112882681919300471)
,p_db_column_name=>'PROJECT_FLEX_D10'
,p_display_order=>110
,p_column_identifier=>'CF'
,p_column_label=>'Project flex d10'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D10'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4112882795331300472)
,p_db_column_name=>'PROJECT_FLEX_D11'
,p_display_order=>120
,p_column_identifier=>'CG'
,p_column_label=>'Project flex d11'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D11'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4112882884979300473)
,p_db_column_name=>'PROJECT_FLEX_D12'
,p_display_order=>130
,p_column_identifier=>'CH'
,p_column_label=>'Project flex d12'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D12'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836258763481157820)
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
 p_id=>wwv_flow_api.id(2836259114614157821)
,p_db_column_name=>'LATEST_STATUS_UPDATE'
,p_display_order=>150
,p_column_identifier=>'AZ'
,p_column_label=>'Latest Status Update'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836259564123157821)
,p_db_column_name=>'PROJECT_FLEX_01'
,p_display_order=>160
,p_column_identifier=>'BA'
,p_column_label=>'lov'
,p_column_type=>'STRING'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836259953138157822)
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
 p_id=>wwv_flow_api.id(2836260393887157822)
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
 p_id=>wwv_flow_api.id(2836260753705157823)
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
 p_id=>wwv_flow_api.id(2836261117659157823)
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
 p_id=>wwv_flow_api.id(2836261535044157823)
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
 p_id=>wwv_flow_api.id(2836261989812157824)
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
 p_id=>wwv_flow_api.id(2836262328344157824)
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
 p_id=>wwv_flow_api.id(2836262785234157825)
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
 p_id=>wwv_flow_api.id(2836263194251157825)
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
 p_id=>wwv_flow_api.id(2836263526577157825)
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
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836263904475157826)
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
 p_id=>wwv_flow_api.id(2836271586491157836)
,p_db_column_name=>'INC'
,p_display_order=>280
,p_column_identifier=>'BM'
,p_column_label=>'Inc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836272790462157837)
,p_db_column_name=>'CURR_DATE'
,p_display_order=>290
,p_column_identifier=>'BN'
,p_column_label=>'Curr date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836271975515157836)
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
 p_id=>wwv_flow_api.id(2836272320991157836)
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
 p_id=>wwv_flow_api.id(2836273166279157838)
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
 p_id=>wwv_flow_api.id(2836273524907157838)
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
 p_id=>wwv_flow_api.id(2836273969638157839)
,p_db_column_name=>'STATUS'
,p_display_order=>340
,p_column_identifier=>'BS'
,p_column_label=>'Status'
,p_column_html_expression=>'<span style="#STATUS_COLOR#"> &nbsp;   &nbsp;  </span> &nbsp;  #STATUS#'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9025721939150772116)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836274356884157839)
,p_db_column_name=>'USERS'
,p_display_order=>350
,p_column_identifier=>'BT'
,p_column_label=>'People (Usernames)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836251989942157809)
,p_db_column_name=>'STATUS_COLOR'
,p_display_order=>360
,p_column_identifier=>'BU'
,p_column_label=>'Status color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836252382618157811)
,p_db_column_name=>'HEADLINE'
,p_display_order=>370
,p_column_identifier=>'BV'
,p_column_label=>'Headline'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_required_patch=>wwv_flow_api.id(2770584289789526386)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836252771717157812)
,p_db_column_name=>'REQUESTING_TEAM'
,p_display_order=>380
,p_column_identifier=>'BW'
,p_column_label=>'Requesting Team(s)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_required_patch=>wwv_flow_api.id(2770586391043537687)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836253174123157813)
,p_db_column_name=>'IMPACTED_ENVIRONMENT'
,p_display_order=>390
,p_column_identifier=>'BX'
,p_column_label=>'Impacted Environment(s)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_required_patch=>wwv_flow_api.id(2770586993360548656)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2836253564796157813)
,p_db_column_name=>'HEADLINE_LAST_UPDATED'
,p_display_order=>400
,p_column_identifier=>'BY'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_required_patch=>wwv_flow_api.id(2770584289789526386)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2830683251226152273)
,p_db_column_name=>'ACTIONS'
,p_display_order=>410
,p_column_identifier=>'BZ'
,p_column_label=>'Actions'
,p_column_html_expression=>'<div style="white-space: nowrap;">#ACTIONS#</div>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11633656184207589155)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'26612700'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT:HEADLINE:HEADLINE_LAST_UPDATED:STATUS:ACTIONS:PROJECT_FLEX_D05:PROJECT_FLEX_D06:PROJECT_FLEX_D07:PROJECT_FLEX_D08:PROJECT_FLEX_D09:PROJECT_FLEX_D10:PROJECT_FLEX_D11:PROJECT_FLEX_D12:PROJECT_FLEX_01'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PROJECT'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'UPDATES_1W'
,p_sort_direction_3=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11633654972821565141)
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
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11674635785625234659)
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
 p_id=>wwv_flow_api.id(2836277044342157868)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11633654972821565141)
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
 p_id=>wwv_flow_api.id(2836276642175157868)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11633654972821565141)
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
 p_id=>wwv_flow_api.id(2836275954631157856)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11633642669508565033)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:RP,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2846500919194669490)
,p_name=>'P19_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2830685145906152292)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    r varchar2(400) := null; ',
'begin',
'    for c1 in ( select sc.id',
'                from eba_proj_status_codes sc',
'                where is_active_yn = ''Y''',
'                    and ( ''ALL'' = nvl( (select preference_value',
'                            from eba_proj_user_preferences pr',
'                            where pr.username = v(''APP_USER'')',
'                                and pr.preference_name = ''NAVIGATION MENU'' ), ''OPEN'' )',
'                        or sc.is_closed_status = ''N''',
'                )',
'                order by display_sequence ) loop',
'        r := r||c1.id||'':'';',
'    end loop;',
'    return r;',
'exception when others then return ''0'';',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Status'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    r varchar2(400) := null; ',
'begin',
'    for c1 in ( select sc.id',
'                from eba_proj_status_codes sc',
'                where is_active_yn = ''Y''',
'                    and ( ''ALL'' = nvl( (select preference_value',
'                            from eba_proj_user_preferences pr',
'                            where pr.username = v(''APP_USER'')',
'                                and pr.preference_name = ''NAVIGATION MENU'' ), ''OPEN'' )',
'                        or sc.is_closed_status = ''N''',
'                )',
'                order by display_sequence ) loop',
'        r := r||c1.id||'':'';',
'    end loop;',
'    return r;',
'exception when others then return ''0'';',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'STATUS CODES WITH COUNTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select display_value, return_value',
'from',
'(',
'select STATUS_short_desc || '' (''||count(*)||'')'' display_value, ',
'       sc.ID return_value ,',
'       sc.display_sequence',
'from EBA_PROJ_STATUS_CODES sc, eba_proj_status s',
'where is_active_yn = ''Y'' and ',
'      status_short_desc is not null and',
'      s.project_status = sc.id',
'group by sc.STATUS_short_desc, sc.id, sc. display_sequence',
'order by 3,1',
') x'))
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'10'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(2836278147345157885)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'1'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(2836278529428157887)
,p_computation_sequence=>20
,p_computation_item=>'PROJECT_CAME_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2830684107212152282)
,p_name=>'Refresh on Update'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(11633642669508565033)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2830684230660152283)
,p_event_id=>wwv_flow_api.id(2830684107212152282)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11633642669508565033)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2830685279210152293)
,p_name=>'Refresh IRR'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P19_STATUS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2830685303508152294)
,p_event_id=>wwv_flow_api.id(2830685279210152293)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P19_STATUS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2830685425538152295)
,p_event_id=>wwv_flow_api.id(2830685279210152293)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11633642669508565033)
);
wwv_flow_api.component_end;
end;
/
