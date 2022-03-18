prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'&APPLICATION_TITLE.: Milestones by Date'
,p_step_title=>'&APPLICATION_TITLE.: Milestones by Date'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956244298529599071)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<link rel="stylesheet" href="#IMAGE_PREFIX#eba/css/eba_timeline.css" type="text/css" media="all" charset="utf-8">',
'<style type="text/css" media="all">',
'div.body_inner div.region div.content_block{height:200px;overflow:scroll;overflow-y:scroll;overflow-x:hidden;}',
'',
'table.formlayout label {display: block; line-height:18px; }',
'table.formlayout label a {font: bold 11px/18px Arial, sans-serif; color: #333;}',
'table.formlayout label + br {display: none;}',
'#main-sb-left > div {margin-left: 10px;}',
'',
'#MILESTONES .rc-body-r{height:390px !important;}',
'</style>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.timeline-edit-links .t-StatusList-editLink { position: absolute; right: 8px; top: 8px; font-size: 12px; line-height: 16px; float: right; padding: 4px 8px }',
'.timeline-edit-links .t-StatusList-itemBody { position: relative }',
'.timeline-edit-links .t-StatusList-item { border-bottom: 1px solid rgba(0, 0, 0, .05) }',
'.timeline-edit-links .t-StatusList-item:last-child { border-bottom: none }',
'',
'.nowrap { white-space: nowrap; }',
'.icon-action-item { margin-left: 24px;;}',
'.milestones-icon { opacity: .65 }',
'.row-milestone a { margin: 4px 0; display: inline-block; vertical-align: top; }',
'.row-milestone .t-Icon { margin: 4px 0; }',
'.milestones-owner {opacity: 0.65; display: block;}'))
,p_step_template=>wwv_flow_api.id(6781077225859890733)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'Use the filter controls on the left to change the Milestones displayed in the timeline on the right. This page also contains links to several other Milestone reports and tools.'
,p_last_upd_yyyymmddhh24miss=>'20190905081103'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9066095138198744593)
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
 p_id=>wwv_flow_api.id(9066101543990762428)
,p_plug_name=>'Search Filter'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Form--stretchInputs:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(9521812655385658333)
,p_name=>'Milestones'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n, row_type, row_type_label, row_type_icon, name, start_date, end_date, completed_date, owner,',
'    ''<span class="t-Badge t-Badge--basic t-Badge--xsmall is-''',
'        ||apex_escape.html(color_code)||'' w100p">''||apex_escape.html(status)||''</span>'' status,',
'    disp_link, edit_link, add_link, ai_link,',
'    (   select pj.project from eba_proj_status pj where pj.id = pj_id ) project_name, pj_id project_id',
'from (  select mn.milestone_number||''.0'' n,',
'            ''<strong>''||apex_escape.html(m.milestone_name)||''</strong>'' name,',
'            ''Milestone'' row_type_label,',
'            ''milestone'' row_type,',
'            case when upper(m.milestone_status) = ''OPEN'' then ''fa-flag-o''',
'                 else ''fa-flag'' end as row_type_icon,',
'            m.milestone_start_date start_date,',
'            m.milestone_date end_date,',
'            m.completed_date completed_date,',
'            m.milestone_status status,',
'            case when m.owner_role_id is null then',
'                eba_proj_fw.get_name_from_email_address(m.milestone_owner)',
'            else',
'                nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))'
||'),'', '')',
'                        within group (order by lower(u.username)) owner',
'                    from eba_proj_user_ref rf,',
'                        eba_proj_status_users u,',
'                        eba_proj_roles r',
'                    where rf.role_id = m.owner_role_id',
'                        and rf.project_id = m.project_id',
'                        and u.id = rf.user_id',
'                        and r.id = rf.role_id',
'                    group by r.name',
'                ), (select ''No ''||r.name||'' defined''',
'                    from eba_proj_roles r',
'                    where r.id = m.owner_role_id)',
'                )',
'            end as owner,',
'            m.project_id pj_id,',
'            m.id ms_id,',
'            null ai_id,',
'            case when upper(m.milestone_status) = ''OPEN'' and trunc(m.milestone_date) > trunc(sysdate) then ''success''',
'                when upper(m.milestone_status) = ''OPEN'' and trunc(m.milestone_date) = trunc(sysdate) then ''warning''',
'                when upper(m.milestone_status) = ''OPEN'' /* past due */ then ''danger''',
'                else ''complete'' end as color_code,',
'            p.row_key o0,',
'            mn.milestone_number o1,',
'            0                   o2,',
'            apex_util.prepare_url(''f?p=''||:APP_ID||'':107:''||:APP_SESSION||'':::107:P107_ID,P107_PROJECT_ID,P200_ID:''',
'                ||m.id||'',''||m.project_id||'',''||m.project_id) disp_link,',
'            apex_util.prepare_url(''f?p=''||:APP_ID||'':48:''||:APP_SESSION||'':::48:P48_ID:''||m.id) edit_link,',
'            case when eba_proj_fw.are_ms_ai_restricted( p_application_id => :APP_ID,',
'                                                        p_username   => upper(:APP_USER),',
'                                                        p_project_id => m.project_id ) = ''N''',
'                    and eba_proj_stat_ui.get_authorization_level( p_username => upper(:APP_USER) ) >= 2 then',
'                ''<button type="button" class="t-Button t-Button--small t-Button--simple u-pullRight" onClick="''',
'                    ||apex_util.prepare_url(''f?p=''||:APP_ID||'':73:''||:APP_SESSION||'':::73:P73_PROJECT_ID,P73_MILESTONE_ID:''',
'                                            ||m.project_id||'',''||m.id)||''">Add Action Item</button>''',
'             end as add_link,',
'             null as ai_link',
'        from eba_proj_status_ms m,',
'            eba_proj_status_ms_no_v mn,',
'            eba_proj_status p',
'        where mn.project_id = m.project_id',
'            and mn.milestone_id = m.id',
'            and p.id = m.project_id',
'            and (:P35_MILESTONE_OWNER is null',
'                or ( m.owner_role_id is null and lower(m.milestone_owner) = lower(:P35_MILESTONE_OWNER))',
'                or exists ( select null',
'                            from eba_proj_user_ref rf,',
'                                eba_proj_status_users u',
'                            where rf.role_id = m.owner_role_id',
'                                and rf.project_id = m.project_id',
'                                and u.id = rf.user_id',
'                                and lower(u.username) = lower(:P35_MILESTONE_OWNER) )',
'                )',
'            and ( nvl(:P35_SHOW,''Open'') = ''All''',
'                or (m.milestone_status = ''Open''',
'                    and nvl(:P35_SHOW,''Open'') = ''Open'' ))',
'            and (nvl(:P35_IS_MAJOR,''ALL'') = ''ALL''',
'                or (nvl(is_major_yn,''N'') = ''Y''',
'                    and nvl(:P35_IS_MAJOR,''ALL'') = ''MAJOR'' ))',
'            and ( :P35_QUARTER is null',
'                  or exists',
'                 (select null from eba_proj_fy_periods p where trunc(m.milestone_date) between p.first_day and p.last_day and p.period_name = :P35_QUARTER)',
'                )',
'            and ( :P35_PROJECT is null or m.project_id = :P35_PROJECT )',
'            and ( :P35_SEARCH is null',
'                or upper(:P35_SEARCH) = m.row_key',
'                or instr(upper(m.milestone_name), upper(:P35_SEARCH)) > 0',
'                or instr(upper(m.milestone_description), upper(:P35_SEARCH)) > 0)',
'            and ( nvl(:P35_CATEGORY,0) = 0',
'                or p.cat_id = :P35_CATEGORY)',
'    union all',
'        select mn.milestone_number||''.''||an.action_item_number n,',
'            apex_escape.html(a.action) name,',
'            ''Action Item'' row_type_label,',
'            ''action-item'' row_type,',
'            case when upper(a.action_status) = ''OPEN'' then ''fa fa-square-o icon-action-item''',
'                 else ''fa fa-check-square-o icon-action-item'' end as row_type_icon,',
'            null start_date,',
'            a.due_date end_date,',
'            a.completed_date completed_date,',
'            a.action_status status,',
'            case when a.owner_role_id is null then',
'                eba_proj_fw.get_name_from_email_address(a.action_owner_01)',
'                    ||nvl2(a.action_owner_02,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_02),null)',
'                    ||nvl2(a.action_owner_03,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_03),null)',
'                    ||nvl2(a.action_owner_04,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_04),null)',
'            else',
'                nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))'
||'),'', '')',
'                        within group (order by lower(u.username)) owner',
'                    from eba_proj_user_ref rf,',
'                        eba_proj_status_users u,',
'                        eba_proj_roles r',
'                    where rf.role_id = a.owner_role_id',
'                        and rf.project_id = a.project_id',
'                        and u.id = rf.user_id',
'                        and r.id = rf.role_id',
'                    group by r.name',
'                ), (select ''No ''||r.name||'' defined''',
'                    from eba_proj_roles r',
'                    where r.id = a.owner_role_id)',
'                )',
'            end as owner,',
'            a.project_id pj_id,',
'            a.milestone_id ms_id,',
'            a.id ai_id,',
'            case when upper(a.action_status) = ''OPEN'' and trunc(a.due_date) > trunc(sysdate) then ''success''',
'                when upper(a.action_status) = ''OPEN'' and trunc(m.milestone_date) = trunc(sysdate) then ''warning''',
'                when upper(a.action_status) = ''OPEN'' /* past due */ then ''danger''',
'                else ''complete'' end as color_code,',
'            p.row_key o0,',
'            mn.milestone_number   o1,',
'            an.action_item_number o2,',
'            apex_util.prepare_url(''f?p=''||:APP_ID||'':78:''||:APP_SESSION||'':::107:LAST_VIEW,P78_GOTO,P78_ACTION_ITEM_ID,P55_ID,P200_ID:200,MS,''',
'                ||a.id||'',''||a.project_id||'',''||a.project_id) disp_link,',
'            apex_util.prepare_url(''f?p=''||:APP_ID||'':73:''||:APP_SESSION||'':::73:P73_ID:''||a.id) edit_link,',
'            null add_link,',
'            case when a.link_url is not null then ''<a href="'' ||apex_escape.html(a.link_url)|| ''" target="_blank" title="''',
'                ||apex_escape.html(a.link_text)',
'                ||''" class="t-Button t-Button--small t-Button--noUI"><span class="t-Icon fa fa-link"></span></a>'' ',
'            end as ai_link',
'        from eba_proj_status_ais a,',
'            eba_proj_status_ms m,',
'            eba_proj_status_ms_no_v mn,',
'            eba_proj_status_ai_no_tbl an,',
'            eba_proj_status p',
'        where mn.project_id = a.project_id',
'            and mn.milestone_id = a.milestone_id',
'            and an.project_id = a.project_id',
'            and an.action_item_id = a.id',
'            and m.project_id = a.project_id',
'            and m.id = a.milestone_id',
'            and p.id = m.project_id',
'            and apex_util.get_build_option_status( p_application_id => :APP_ID,',
'                                                   p_build_option_name => ''Project Action Items'') = ''INCLUDE''',
'            and (:P35_MILESTONE_OWNER is null',
'                or ( m.owner_role_id is null and lower(m.milestone_owner) = lower(:P35_MILESTONE_OWNER))',
'                or exists ( select null',
'                            from eba_proj_user_ref rf,',
'                                eba_proj_status_users u',
'                            where rf.role_id = m.owner_role_id',
'                                and rf.project_id = m.project_id',
'                                and u.id = rf.user_id',
'                                and lower(u.username) = lower(:P35_MILESTONE_OWNER) )',
'                )',
'            and ( nvl(:P35_SHOW,''Open'') = ''All''',
'                or (m.milestone_status = nvl(:P35_SHOW,''Open'')',
'                   and a.action_status = nvl(:P35_SHOW,''Open''))',
'                )',
'            and (nvl(:P35_IS_MAJOR,''ALL'') = ''ALL''',
'                or (nvl(is_major_yn,''N'') = ''Y''',
'                    and nvl(:P35_IS_MAJOR,''ALL'') = ''MAJOR'' ))',
'            and ( :P35_QUARTER is null',
'                  or exists',
'                 (select null from eba_proj_fy_periods p where trunc(m.milestone_date) between p.first_day and p.last_day and p.period_name = :P35_QUARTER)',
'                )',
'            and ( :P35_PROJECT is null or m.project_id = :P35_PROJECT )',
'            and ( :P35_SEARCH is null',
'                or upper(:P35_SEARCH) = m.row_key',
'                or instr(upper(m.milestone_name), upper(:P35_SEARCH)) > 0',
'                or instr(upper(m.milestone_description), upper(:P35_SEARCH)) > 0)',
'            and ( nvl(:P35_CATEGORY,0) = 0',
'                or p.cat_id = :P35_CATEGORY)',
'    )',
'order by o0, o1, o2'))
,p_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-StatusList-legend" style="padding: 8px; border-top: 1px solid rgba(0,0,0,.05); font-size: 11px;">',
'    <strong>Status Color Coding:</strong>',
'    <span class="t-Badge t-Badge--basic t-Badge--small is-complete">Closed</span>',
'    <span class="t-Badge t-Badge--basic t-Badge--small is-danger">Past Due</span>',
'    <span class="t-Badge t-Badge--basic t-Badge--small is-warning">Due Today</span>',
'    <span class="t-Badge t-Badge--basic t-Badge--small is-success">Due in the Future</span>',
'</div>'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>50000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502856933764410630)
,p_query_column_id=>1
,p_column_alias=>'N'
,p_column_display_sequence=>2
,p_column_heading=>'Item #'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502857390304410631)
,p_query_column_id=>2
,p_column_alias=>'ROW_TYPE'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502857735765410632)
,p_query_column_id=>3
,p_column_alias=>'ROW_TYPE_LABEL'
,p_column_display_sequence=>14
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502858176388410632)
,p_query_column_id=>4
,p_column_alias=>'ROW_TYPE_ICON'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502858567939410633)
,p_query_column_id=>5
,p_column_alias=>'NAME'
,p_column_display_sequence=>5
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="a-MediaBlock row-#ROW_TYPE#">',
'  <div class="a-MediaBlock-graphic">',
'    <span class="t-Icon milestones-icon fa #ROW_TYPE_ICON#" aria-hidden="true"></span><span class="u-VisuallyHidden">#ROW_TYPE_LABEL#</span> ',
'  </div>',
'  <div class="a-MediaBlock-content">',
'    <a href="#DISP_LINK#">#NAME#</a>',
'    #ADD_LINK#',
'  </div>',
'</div>'))
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502858931250410633)
,p_query_column_id=>6
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Start'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_column_css_class=>'nowrap'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502859382948410634)
,p_query_column_id=>7
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'End'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_column_css_class=>'nowrap'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502859769108410634)
,p_query_column_id=>8
,p_column_alias=>'COMPLETED_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Completed'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_column_css_class=>'nowrap'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502860161328410637)
,p_query_column_id=>9
,p_column_alias=>'OWNER'
,p_column_display_sequence=>6
,p_column_heading=>'Owner'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502860521030410638)
,p_query_column_id=>10
,p_column_alias=>'STATUS'
,p_column_display_sequence=>10
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502860936078410640)
,p_query_column_id=>11
,p_column_alias=>'DISP_LINK'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502861372984410641)
,p_query_column_id=>12
,p_column_alias=>'EDIT_LINK'
,p_column_display_sequence=>1
,p_column_link=>'#EDIT_LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P35_ID ) = ''Y'''))
,p_display_when_condition2=>'PLSQL'
,p_report_column_required_role=>wwv_flow_api.id(7306166303644991446)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502861783106410644)
,p_query_column_id=>13
,p_column_alias=>'ADD_LINK'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502862195769410644)
,p_query_column_id=>14
,p_column_alias=>'AI_LINK'
,p_column_display_sequence=>15
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(19245477420249490834)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502862551182410645)
,p_query_column_id=>15
,p_column_alias=>'PROJECT_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:#PROJECT_ID#'
,p_column_linktext=>'#PROJECT_NAME#'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'ITEM_IS_NULL'
,p_display_when_condition=>'P35_PROJECT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1502862954958410645)
,p_query_column_id=>16
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>16
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20016918481555328101)
,p_plug_name=>'Milestone Reports & Tools'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-LinksList--nowrap'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(5362435294263416536)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(6781129762632890837)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8151653042798635300)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9066101543990762428)
,p_button_name=>'P35_RESET_REPORT'
,p_button_static_id=>'P35_RESET_REPORT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_icon_css_classes=>'fa-undo-alt'
,p_request_source=>'Reset Report'
,p_request_source_type=>'STATIC'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(9066106319126250630)
,p_branch_action=>'f?p=&FLOW_ID.:35:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5460734230163423047)
,p_name=>'P35_QUARTER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9066101543990762428)
,p_prompt=>'Quarter'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'QUARTERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select period_name as d,',
'       period_name as r',
'  from eba_proj_fy_periods',
' order by first_day asc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Quarters -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8139012526037910978)
,p_name=>'P35_IS_MAJOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9066101543990762428)
,p_item_default=>'ALL'
,p_prompt=>'Type'
,p_source=>'ALL'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MAJOR MILESTONES'
,p_lov=>'.'||wwv_flow_api.id(8139011421273890714)||'.'
,p_cHeight=>1
,p_tag_attributes=>'style="width: 170px;"'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8139049140093947967)
,p_name=>'P35_MILESTONE_OWNER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9066101543990762428)
,p_prompt=>'Milestone Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MILESTONE OR PROJECT OWNER TWO VALUES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct display_owner d, lower(owner) r',
'from (',
'    select eba_proj_fw.get_name_from_email_address(u.username) as display_owner, u.username as owner',
'    from eba_proj_status_users u,',
'        eba_proj_user_ref rf,',
'        eba_proj_roles r,',
'        eba_proj_status p',
'    where rf.user_id = u.id',
'        and rf.role_id = r.id',
'        and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
'        and rf.project_id = p.id',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(milestone_owner) as display_owner, milestone_owner as owner',
'    from eba_proj_status_ms',
'    where milestone_owner is not null',
'        and owner_role_id is null',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(u.username) as display_owner, u.username as owner',
'    from eba_proj_user_ref rf,',
'        eba_proj_status_users u,',
'        eba_proj_roles r,',
'        eba_proj_status_ms m',
'    where m.owner_role_id is not null',
'        and rf.role_id = m.owner_role_id',
'        and rf.project_id = m.project_id',
'        and u.id = rf.user_id',
'        and r.id = rf.role_id',
')',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Owners -'
,p_cHeight=>1
,p_tag_attributes=>'style="width: 170px;"'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Identifies milestone owner.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8151682439164722432)
,p_name=>'P35_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9066101543990762428)
,p_prompt=>'Search'
,p_placeholder=>'Search Milestones'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9066101936519762440)
,p_name=>'P35_CATEGORY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9066101543990762428)
,p_item_default=>'0'
,p_prompt=>'&CAT_TITLE.'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CATEGORY display_value, ID return_value ',
'from EBA_PROJ_STATUS_CATS',
'where is_active_yn = ''Y''',
'order by display_sequence nulls last, 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All &CAT_TITLE_PL. -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_tag_attributes=>'style="width: 170px;"'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Restrict this report to this &CAT_TITLE_LC..'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9066107228995675757)
,p_name=>'P35_SHOW'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9066101543990762428)
,p_item_default=>'Open'
,p_prompt=>'Status'
,p_source=>'Open'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:All;All,Open;Open'
,p_cHeight=>1
,p_tag_attributes=>'style="width: 170px;"'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15411667187415263930)
,p_name=>'P35_CURRENT_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9066101543990762428)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20236938774150084361)
,p_name=>'P35_PROJECT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9066101543990762428)
,p_prompt=>'Project'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project d, id r',
'from eba_proj_status',
'order by upper(project)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Projects -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(15411667240762263931)
,p_computation_sequence=>10
,p_computation_item=>'P35_CURRENT_USER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'lower(:APP_USER)'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(9066107934554828769)
,p_computation_sequence=>20
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'35'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15358584293920489769)
,p_name=>'Set Current User as Owner'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#myMSs'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15358584393769489770)
,p_event_id=>wwv_flow_api.id(15358584293920489769)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_MILESTONE_OWNER'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'lower(:APP_USER)'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15411668012053263938)
,p_event_id=>wwv_flow_api.id(15358584293920489769)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9521812655385658333)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15321842731970843243)
,p_name=>'Search Milestones on Enter'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.keyCode == 13'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'change, keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15411669430768263953)
,p_event_id=>wwv_flow_api.id(15321842731970843243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P35_MILESTONE_OWNER,P35_QUARTER,P35_CATEGORY,P35_SHOW,P35_IS_MAJOR,P35_SEARCH'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15321843004463843245)
,p_event_id=>wwv_flow_api.id(15321842731970843243)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent.preventDefault();'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15321842818020843244)
,p_event_id=>wwv_flow_api.id(15321842731970843243)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9521812655385658333)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17441534554424514258)
,p_name=>'Refresh Report'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_MILESTONE_OWNER,P35_QUARTER,P35_CATEGORY,P35_SHOW,P35_IS_MAJOR,P35_PROJECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17441534689483514259)
,p_event_id=>wwv_flow_api.id(17441534554424514258)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Need to do this for plugin',
'null;',
''))
,p_attribute_02=>'P35_MILESTONE_OWNER,P35_QUARTER,P35_CATEGORY,P35_SHOW,P35_IS_MAJOR,P35_PROJECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17441534742552514260)
,p_event_id=>wwv_flow_api.id(17441534554424514258)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9521812655385658333)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17441534901070514261)
,p_name=>'Reset Page'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8151653042798635300)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17441534985761514262)
,p_event_id=>wwv_flow_api.id(17441534901070514261)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_MILESTONE_OWNER,P35_QUARTER,P35_CATEGORY,P35_SHOW,P35_IS_MAJOR,P35_SEARCH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20398323681833735538)
,p_name=>'Refresh region on close after edit'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(9521812655385658333)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20398323792320735539)
,p_event_id=>wwv_flow_api.id(20398323681833735538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(9521812655385658333)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8151666528186501594)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(8151653042798635300)
);
wwv_flow_api.component_end;
end;
/
