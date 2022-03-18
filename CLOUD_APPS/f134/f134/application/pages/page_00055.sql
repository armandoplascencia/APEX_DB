prompt --application/pages/page_00055
begin
--   Manifest
--     PAGE: 00055
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
 p_id=>55
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Manage Project Action Items'
,p_step_title=>'Manage Project Action Items'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css" media="all">',
'div.body_inner div.region div.content_block{height:200px;overflow:scroll;overflow-y:scroll;overflow-x:hidden;}',
'.tbl-main .rounded-corner-region .rc-body-r{height:170px !important;}',
'',
'#MILESTONES .rc-body-r{height:490px !important;}',
'#AI .rc-body-r{height:270px !important;}',
'',
'</style>',
'',
'',
'<style type="text/css" media="all">',
'div.ctPDetails{border-bottom:1px solid #DDD;clear:both;position:relative;}',
'div.ctPDetails:last-child{border-bottom:none;}',
'div.ctPDetails h3{font:bold 12px/12px Arial,sans-serif;margin:0;padding:9px 10px;width:200px;color:#333;position:absolute;top:0;left:0;}',
'div.ctPDetails h3 a {color: #333; text-decoration: underline;}',
'div.ctPDetails h3 + ul{margin:0;list-style:none;padding:0;margin:0 0 0 220px;}',
'div.ctPDetails ul li{display:table;width:100%;}',
'div.ctPDetails ul li a.accountName{font:bold 11px/14px Arial,sans-serif;display:inline-block;padding:7px 0;color:#333;text-decoration:underline;}',
'div.ctPDetails ul li table a{color:#333;text-decoration:underline;}',
'div.ctPDetails ul li table{width:100%;}',
'div.ctPDetails ul li table th,',
'div.ctPDetails ul li table td{padding:0 0 5px 0;font:normal 11px/16px Arial,sans-serif;color:#666;vertical-align: top}',
'div.ctPDetails ul li table th{font-weight:bold;text-align:left;width:120px;vertical-align: top}',
'</style>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.timeline-edit-links .t-StatusList-editLink { position: absolute; right: 8px; top: 8px; font-size: 12px; line-height: 16px; float: right; padding: 4px 8px }',
'.timeline-edit-links .t-StatusList-itemBody { position: relative }',
'.timeline-edit-links .t-StatusList-item { border-bottom: 1px solid rgba(0, 0, 0, .05) }',
'.timeline-edit-links .t-StatusList-item:last-child { border-bottom: none }',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This page renders a timeline report of the project''s action items. Use the filter controls at the top of the report to change the timeline results. Click an action item''s name to navigate to it''s action item details page. Click the "Edit" link to edi'
||'t the action item from this report. Click the <strong>Add Action Item</strong> button to add a new action item. Click the <strong>< Return to Project</strong> button to return to the project details page.'
,p_last_upd_yyyymmddhh24miss=>'20190905092843'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(214947910654995365)
,p_plug_name=>'Action Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    a.action title,',
'    case when a.ACTION_STATUS in (''Closed'',''Not Applicable'') then',
'            ''Black''',
'        when trunc(a.due_date) < trunc(sysdate) then',
'            ''Red''',
'        when trunc(a.due_date) = trunc(sysdate) then',
'            ''Yellow''',
'        else',
'            ''Green''',
'    end as color,',
'    case when a.link_url is not null and a.link_text is not null and exists (select null',
'                 from apex_application_build_options',
'                where application_id = :APP_ID',
'                  and build_option_name = ''Action Item Links''',
'                  and build_option_status = ''Include'') then',
'        ''<small><a href="'' || a.link_url || ''" target="_blank">'' || a.link_text || ''</a></small>''',
'    end as link_text,',
'    case when a.ACTION_STATUS in (''Closed'',''Not Applicable'') then',
'            ''Closed or N/A''',
'        when trunc(a.due_date) < trunc(sysdate) then',
'            ''Past Due''',
'        when trunc(a.due_date) = trunc(sysdate) then',
'            ''Due Today''',
'        else',
'            ''Due In The Future''',
'    end as color_label,',
'    case when a.action_status = ''Closed'' then',
'            a.completed_date',
'        else',
'            a.due_date',
'    end as calendar_icon_date,',
'    apex_util.get_since(a.completed_date) as completed,',
'    case when apex_util.get_build_option_status (p_application_id => :APP_ID, p_build_option_name => ''Mandatory Action Item Resolution'') = ''INCLUDE'' and resolution is not null then',
'        resolution',
'    else',
'        null',
'    end resolution,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':78:''||:APP_SESSION',
'                ||'':::78:LAST_VIEW,P78_ACTION_ITEM_ID:55,''||a.id) link,',
'    decode(a.milestone_id,null,null,(select milestone_name m from eba_proj_status_ms where id = a.milestone_id)) milestone,',
'    s.project,',
'    a.action_description,',
'    a.ACTION_STATUS status,',
'    a.due_date due_date,',
'    case when owner_role_id is null then',
'        eba_proj_fw.get_name_from_email_address(a.action_owner_01)',
'            ||decode(a.action_owner_02,null,null,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_02))',
'            ||decode(a.action_owner_03,null,null,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_03))',
'            ||decode(a.action_owner_04,null,null,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_04))',
'    else',
'        nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '')',
'                within group (order by lower(u.username)) owner',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.role_id = a.owner_role_id',
'                and rf.project_id = a.project_id',
'                and u.id = rf.user_id',
'                and r.id = rf.role_id',
'            group by r.name',
'        ), (select ''No ''||r.name||'' defined''',
'            from eba_proj_roles r',
'            where r.id = a.owner_role_id)',
'        )',
'    end as owner,',
'    a.row_key,',
'    case when eba_proj_fw.is_edit_authorized(',
'        p_username   => upper(:APP_USER),',
'        p_project_id => a.project_id ) = ''Y'' then',
'        ''<a href="''',
'          ||apex_util.prepare_url(',
'              p_url => ''f?p=''||:APP_ID||'':73:''||:APP_SESSION||'':::73:P73_ID:''||a.id)',
'          ||''" class="t-StatusList-editLink"><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt=""></a>''',
'    else',
'        null',
'    end as edit_link',
'from eba_proj_status_ais a,',
'    eba_proj_status s,',
'    eba_proj_status_codes c',
'where a.project_id = s.id',
'    and s.project_status = c.id(+)',
'    and (a.project_id = :P55_ID',
'        or ( nvl(:P55_INCLUDE_CHILD_PROJECTS ,''N'') = ''Y''',
'            and a.project_id in (select ps.id from EBA_PROJ_STATUS ps where ps.parent_project_id = :P55_ID)))',
'    and (:P55_STATUS = ''0''',
'        or :P55_STATUS is null',
'        or a.action_status = :P55_STATUS)',
'   and (:P55_OWNER is null',
'        or upper(a.action_owner_01) like upper(:P55_OWNER)',
'        or upper(a.action_owner_02) like upper(:P55_OWNER)',
'        or upper(a.action_owner_03) like upper(:P55_OWNER)',
'        or upper(a.action_owner_04) like upper(:P55_OWNER)',
'        or',
'            (',
'                a.owner_role_id is not null',
'                and',
'                exists (select null',
'                          from eba_proj_user_ref rf,',
'                               eba_proj_status_users u',
'                         where rf.role_id = a.owner_role_id',
'                           and rf.project_id = a.project_id',
'                           and u.id = rf.user_id',
'                           and lower(u.username) = lower(:P55_OWNER))',
'            )',
'        )',
'order by nvl(a.original_due_date,a.due_date) desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P55_INCLUDE_CHILD_PROJECTS,P55_STATUS,P55_OWNER'
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
 p_id=>wwv_flow_api.id(214948069687995366)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Action Items found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'ALLAN'
,p_internal_uid=>39943367599351910
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214948178461995367)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214948293999995368)
,p_db_column_name=>'TITLE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Action Item'
,p_column_link=>'#LINK#'
,p_column_linktext=>'#TITLE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214948381584995369)
,p_db_column_name=>'COLOR'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214948416318995370)
,p_db_column_name=>'LINK_TEXT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Link text'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214948508458995371)
,p_db_column_name=>'COLOR_LABEL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Color label'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214948630695995372)
,p_db_column_name=>'CALENDAR_ICON_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Calendar icon date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214948785198995373)
,p_db_column_name=>'COMPLETED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Completed'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214948850483995374)
,p_db_column_name=>'RESOLUTION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Resolution'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_required_patch=>wwv_flow_api.id(18227432720253979239)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214948914069995375)
,p_db_column_name=>'LINK'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Link'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214949096331995376)
,p_db_column_name=>'MILESTONE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Milestone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214949118419995377)
,p_db_column_name=>'PROJECT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214949213387995378)
,p_db_column_name=>'ACTION_DESCRIPTION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Description'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214949341178995379)
,p_db_column_name=>'STATUS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214949480766995380)
,p_db_column_name=>'DUE_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Due Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214949524393995381)
,p_db_column_name=>'OWNER'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214949693113995382)
,p_db_column_name=>'ROW_KEY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Row key'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214949790114995383)
,p_db_column_name=>'EDIT_LINK'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Edit'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(227409261897733099)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'524046'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT_LINK:TITLE:MILESTONE:PROJECT:ACTION_DESCRIPTION:STATUS:DUE_DATE:OWNER:COMPLETED:RESOLUTION:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1677571906388844470)
,p_plug_name=>'Filters'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6869532016029731907)
,p_plug_name=>'Project Action Items'
,p_region_css_classes=>'timeline-edit-links'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hideHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    a.action title,',
'    case when a.ACTION_STATUS in (''Closed'',''Not Applicable'') then',
'            ''Black''',
'        when trunc(a.due_date) < trunc(sysdate) then',
'            ''Red''',
'        when trunc(a.due_date) = trunc(sysdate) then',
'            ''Yellow''',
'        else',
'            ''Green''',
'    end as color,',
'    case when a.link_url is not null and a.link_text is not null and exists (select null',
'                 from apex_application_build_options',
'                where application_id = :APP_ID',
'                  and build_option_name = ''Action Item Links''',
'                  and build_option_status = ''Include'') then',
'        ''<small><a href="'' || a.link_url || ''" target="_blank">'' || a.link_text || ''</a></small>''',
'    end as link_text,',
'    case when a.ACTION_STATUS in (''Closed'',''Not Applicable'') then',
'            ''Closed or N/A''',
'        when trunc(a.due_date) < trunc(sysdate) then',
'            ''Past Due''',
'        when trunc(a.due_date) = trunc(sysdate) then',
'            ''Due Today''',
'        else',
'            ''Due In The Future''',
'    end as color_label,',
'    case when a.action_status = ''Closed'' then',
'            a.completed_date',
'        else',
'            a.due_date',
'    end as calendar_icon_date,',
'    apex_util.get_since(a.completed_date) as completed,',
'    case when apex_util.get_build_option_status (p_application_id => :APP_ID, p_build_option_name => ''Mandatory Action Item Resolution'') = ''INCLUDE'' and resolution is not null then',
'        ''Resolution: '' || resolution',
'    else',
'        null',
'    end resolution,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':78:''||:APP_SESSION',
'                ||'':::78:LAST_VIEW,P78_ACTION_ITEM_ID:55,''||a.id) link,',
'    decode(a.milestone_id,null,null,(select milestone_name m from eba_proj_status_ms where id = a.milestone_id)) milestone,',
'    s.project,',
'    a.action_description,',
'    a.ACTION_STATUS status,',
'    a.due_date due_date,',
'    case when owner_role_id is null then',
'        eba_proj_fw.get_name_from_email_address(a.action_owner_01)',
'            ||decode(a.action_owner_02,null,null,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_02))',
'            ||decode(a.action_owner_03,null,null,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_03))',
'            ||decode(a.action_owner_04,null,null,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_04))',
'    else',
'        nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '')',
'                within group (order by lower(u.username)) owner',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.role_id = a.owner_role_id',
'                and rf.project_id = a.project_id',
'                and u.id = rf.user_id',
'                and r.id = rf.role_id',
'            group by r.name',
'        ), (select ''No ''||r.name||'' defined''',
'            from eba_proj_roles r',
'            where r.id = a.owner_role_id)',
'        )',
'    end as owner,',
'    a.row_key,',
'    case when eba_proj_fw.is_edit_authorized(',
'        p_username   => upper(:APP_USER),',
'        p_project_id => a.project_id ) = ''Y'' then',
'        ''<a href="''',
'          ||apex_util.prepare_url(',
'              p_url => ''f?p=''||:APP_ID||'':73:''||:APP_SESSION||'':::73:P73_ID:''||a.id)',
'          ||''" class="t-StatusList-editLink">Edit</a>''',
'    else',
'        null',
'    end as edit_link',
'from eba_proj_status_ais a,',
'    eba_proj_status s,',
'    eba_proj_status_codes c',
'where a.project_id = s.id',
'    and s.project_status = c.id(+)',
'    and (a.project_id = :P55_ID',
'        or ( nvl(:P55_INCLUDE_CHILD_PROJECTS ,''N'') = ''Y''',
'            and a.project_id in (select ps.id from EBA_PROJ_STATUS ps where ps.parent_project_id = :P55_ID)))',
'    and (:P55_STATUS = ''0''',
'        or :P55_STATUS is null',
'        or a.action_status = :P55_STATUS)',
'   and (:P55_OWNER is null',
'        or upper(a.action_owner_01) like upper(:P55_OWNER)',
'        or upper(a.action_owner_02) like upper(:P55_OWNER)',
'        or upper(a.action_owner_03) like upper(:P55_OWNER)',
'        or upper(a.action_owner_04) like upper(:P55_OWNER)',
'        or',
'            (',
'                a.owner_role_id is not null',
'                and',
'                exists (select null',
'                          from eba_proj_user_ref rf,',
'                               eba_proj_status_users u',
'                         where rf.role_id = a.owner_role_id',
'                           and rf.project_id = a.project_id',
'                           and u.id = rf.user_id',
'                           and lower(u.username) = lower(:P55_OWNER))',
'            )',
'        )',
'order by nvl(a.original_due_date,a.due_date) desc, a.action'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_ajax_items_to_submit=>'P55_INCLUDE_CHILD_PROJECTS,P55_STATUS'
,p_plug_query_num_rows=>5000
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'CALENDAR_ICON_DATE'
,p_attribute_02=>'COLOR'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'LINK'
,p_attribute_05=>'PROJECT'
,p_attribute_06=>'OWNER'
,p_attribute_07=>'MILESTONE'
,p_attribute_08=>'COMPLETED'
,p_attribute_09=>'ACTION_DESCRIPTION'
,p_attribute_10=>'RESOLUTION'
,p_attribute_11=>'EDIT_LINK'
,p_attribute_12=>'D'
,p_attribute_13=>'STATUS'
,p_attribute_14=>'COLOR_LABEL'
,p_attribute_15=>'LINK_TEXT'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869532122833731908)
,p_name=>'ID'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869532209747731909)
,p_name=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Title'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869532311357731910)
,p_name=>'COLOR'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color'
,p_display_sequence=>30
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869532470560731911)
,p_name=>'LINK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link'
,p_display_sequence=>40
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869532593615731913)
,p_name=>'PROJECT'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Project'
,p_display_sequence=>60
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869532886781731916)
,p_name=>'ACTION_DESCRIPTION'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_heading=>'Action description'
,p_display_sequence=>90
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869533163887731918)
,p_name=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Status'
,p_display_sequence=>110
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869533371663731920)
,p_name=>'DUE_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_visible=>true
,p_heading=>'Due date'
,p_display_sequence=>130
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869533547286731922)
,p_name=>'OWNER'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Owner(s)'
,p_display_sequence=>150
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869533628992731923)
,p_name=>'ROW_KEY'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Row key'
,p_display_sequence=>160
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15119499139371788947)
,p_name=>'EDIT_LINK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Edit link'
,p_display_sequence=>170
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15440632230433744477)
,p_name=>'COLOR_LABEL'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color label'
,p_display_sequence=>180
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18175886058932760647)
,p_name=>'RESOLUTION'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Resolution'
,p_display_sequence=>190
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(19313138617776735032)
,p_name=>'LINK_TEXT'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link text'
,p_display_sequence=>200
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(19313140051574735046)
,p_name=>'MILESTONE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Milestone'
,p_display_sequence=>210
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(19313141797237735063)
,p_name=>'CALENDAR_ICON_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_visible=>true
,p_heading=>'Calendar icon date'
,p_display_sequence=>220
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(19313141836166735064)
,p_name=>'COMPLETED'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Completed'
,p_display_sequence=>230
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9068395820624285637)
,p_plug_name=>'Hidden'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9068396422132285639)
,p_plug_name=>'Action Items'
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
 p_id=>wwv_flow_api.id(9068395615504285637)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'return_to_project'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Return to Project'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:&P55_ID.#projectActionItems'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9068395435641285635)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CREATE_AI'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Action Item'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:73:LAST_VIEW,P73_PROJECT_ID,P200_ID:55,&P55_ID.,&P55_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.are_ms_ai_restricted(',
'    p_application_id => :APP_ID,',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P55_ID ) = ''N'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3591864934063606278)
,p_name=>'P55_OWNER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1677571906388844470)
,p_prompt=>'Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    distinct initcap(v1.d), v1.r',
'from',
'    (',
'        select ',
'            (select initcap(u.username) from eba_proj_status_users u where u.id = r.user_id) as d,',
'            (select upper(u.username) from eba_proj_status_users u where u.id = r.user_id) as r',
'        from',
'            EBA_PROJ_USER_REF r',
'        where',
'            r.project_id = :P55_ID',
'        union all',
'        select ',
'            initcap(a.action_owner_01) as d,',
'            (select u.username from eba_proj_status_users u where upper(u.username) = upper(a.action_owner_01)) as r',
'        from',
'            EBA_PROJ_STATUS_AIS a',
'        where',
'            a.project_id = :P55_ID',
'        and',
'            a.action_owner_01 is not null',
'        union all',
'        select ',
'            initcap(a.action_owner_02) as d,',
'            upper(a.action_owner_02) as r',
'        from',
'            EBA_PROJ_STATUS_AIS a',
'        where',
'            a.project_id = :P55_ID',
'        and',
'            a.action_owner_02 is not null',
'        union all',
'        select ',
'            initcap(a.action_owner_03) as d,',
'            upper(a.action_owner_03) as r',
'        from',
'            EBA_PROJ_STATUS_AIS a',
'        where',
'            a.project_id = :P55_ID',
'        and',
'            a.action_owner_03 is not null',
'        union all',
'        select ',
'            initcap(a.action_owner_04) as d,',
'            upper(a.action_owner_04) as r',
'        from',
'            EBA_PROJ_STATUS_AIS a',
'        where',
'            a.project_id = :P55_ID',
'        and',
'            a.action_owner_04 is not null',
'        ) v1;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9068396020815285638)
,p_name=>'P55_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9068395820624285637)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9068397642488346900)
,p_name=>'P55_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1677571906388844470)
,p_item_default=>'Open'
,p_prompt=>'Status'
,p_source=>'Open'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ACTION ITEM STATUS (OPEN, CLOSED)'
,p_lov=>'.'||wwv_flow_api.id(9068159530204303387)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9068409414533362206)
,p_name=>'P55_INCLUDE_CHILD_PROJECTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1677571906388844470)
,p_item_default=>'N'
,p_prompt=>'Include Child Projects'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO RETURNS Y N'
,p_lov=>'.'||wwv_flow_api.id(9019252630556871632)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(19890960485833316269)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13193034231946755050)
,p_name=>'Refresh AI IRR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(9068395435641285635)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13193034340194755051)
,p_event_id=>wwv_flow_api.id(13193034231946755050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6869532016029731907)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15119499244637788948)
,p_name=>'Update Action Items'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(6869532016029731907)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15119499490868788950)
,p_event_id=>wwv_flow_api.id(15119499244637788948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P55_STATUS,P55_INCLUDE_CHILD_PROJECTS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15119499355183788949)
,p_event_id=>wwv_flow_api.id(15119499244637788948)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6869532016029731907)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(214949903360995385)
,p_name=>'Update Action Items IRR'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(214947910654995365)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214950052901995386)
,p_event_id=>wwv_flow_api.id(214949903360995385)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P55_STATUS,P55_INCLUDE_CHILD_PROJECTS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214950197767995387)
,p_event_id=>wwv_flow_api.id(214949903360995385)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(214947910654995365)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1677572094363844471)
,p_name=>'Apply Filters'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P55_INCLUDE_CHILD_PROJECTS,P55_STATUS,P55_OWNER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3591865004963606279)
,p_event_id=>wwv_flow_api.id(1677572094363844471)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P55_INCLUDE_CHILD_PROJECTS,P55_STATUS,P55_OWNER'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1677572103072844472)
,p_event_id=>wwv_flow_api.id(1677572094363844471)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6869532016029731907)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214949896577995384)
,p_event_id=>wwv_flow_api.id(1677572094363844471)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(214947910654995365)
);
wwv_flow_api.component_end;
end;
/
