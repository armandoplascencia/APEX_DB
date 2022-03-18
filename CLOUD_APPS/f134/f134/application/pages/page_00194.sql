prompt --application/pages/page_00194
begin
--   Manifest
--     PAGE: 00194
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
 p_id=>194
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'&P194_DISPLAY_USERNAME.''s Dashboard'
,p_step_title=>'&P194_DISPLAY_USERNAME.''s Dashboard'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.timeline-edit-links .t-StatusList-editLink { position: absolute; right: 8px; top: 8px; font-size: 12px; line-height: 16px; float: right; padding: 4px 8px }',
'.timeline-edit-links .t-StatusList-itemBody { position: relative }',
'.timeline-edit-links .t-StatusList-item { border-bottom: 1px solid rgba(0, 0, 0, .05) }',
'.timeline-edit-links .t-StatusList-item:last-child { border-bottom: none }',
'',
'.t-StatusList-itemTitle {margin-right: 48px;}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'The "My Dashboard" page displays all open Action Items and Milestones assigned to the current user. It also shows a list of Projects the current user is a member of and is following. When someone has several Action Items and/or Milestones assigned to'
||' them, they can click the <strong>Mass Update</strong> tool to update several Action Items and/or Milestones at once. '
,p_last_upd_yyyymmddhh24miss=>'20190906064822'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3476048622230355093)
,p_name=>'My Open Issues'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i.id,',
'    i.project_id,',
'    i.issue,',
'    ''Edit'' as edit,',
'    case when i.owner_role_id is null then',
'        eba_proj_fw.get_name_from_email_address(i.issue_owner)',
'    else',
'        nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '')',
'                within group (order by lower(u.username)) owner',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.role_id = i.owner_role_id',
'                and rf.project_id = i.project_id',
'                and u.id = rf.user_id',
'                and r.id = rf.role_id',
'            group by r.name',
'        ), (select ''No ''||r.name||'' defined''',
'            from eba_proj_roles r',
'            where r.id = i.owner_role_id)',
'        )',
'    end as issue_owner,',
'    i.issue_level,',
'    (select u.id from eba_proj_status_users u where upper(i.created_by) = upper(u.username)) as user_id,',
'    decode(i.is_open,''Y'',''Open'',''N'',''Closed'',i.is_open) status,',
'    decode(i.link_01,null,'' '',',
'           ''<a href="''||apex_escape.html(i.link_01)',
'           ||''" target="_blank" class="t-Button t-Button--icon t-Button--small" title="''',
'           ||apex_escape.html(nvl(i.link_name_01,''Open Issue Link''))||''">''',
'           ||''<span class="t-Icon fa fa-external-link"></span></a>'') link,',
'    i.created,',
'    lower(i.created_by) created_by,',
'    i.updated,',
'    lower(i.updated_by) as updated_by,',
'    (   select project',
'        from eba_proj_status x',
'        where x.id = i.project_id) project',
'from eba_proj_status_issues i',
'where (upper(i.ISSUE_OWNER) = upper(:APP_USER) ',
'       or exists (select null from eba_proj_user_ref r where r.user_id = :CURRENT_USER_ID and i.project_id = r.project_id and i.OWNER_ROLE_ID = r.role_id))',
'  and i.is_open = ''Y''',
'order by issue_level, upper(issue), i.updated desc'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status_issues i',
'where (upper(i.ISSUE_OWNER) = upper(:APP_USER) ',
'       or exists (select null from eba_proj_user_ref r where r.user_id = :CURRENT_USER_ID and i.project_id = r.project_id and i.OWNER_ROLE_ID = r.role_id))',
'  and i.is_open = ''Y'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'ROWS_X_TO_Y'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3476048736915355094)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3476048877717355095)
,p_query_column_id=>2
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3476048924893355096)
,p_query_column_id=>3
,p_column_alias=>'ISSUE'
,p_column_display_sequence=>2
,p_column_heading=>'Issue'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3292886215284857688)
,p_query_column_id=>4
,p_column_alias=>'EDIT'
,p_column_display_sequence=>14
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP,24:P24_ID:#ID#'
,p_column_linktext=>'#EDIT#'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3476049045145355097)
,p_query_column_id=>5
,p_column_alias=>'ISSUE_OWNER'
,p_column_display_sequence=>5
,p_column_heading=>'Issue Owner'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3476049148909355098)
,p_query_column_id=>6
,p_column_alias=>'ISSUE_LEVEL'
,p_column_display_sequence=>6
,p_column_heading=>'Issue Level'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3476049268311355099)
,p_query_column_id=>7
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3476049339167355100)
,p_query_column_id=>8
,p_column_alias=>'STATUS'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3476049425273355101)
,p_query_column_id=>9
,p_column_alias=>'LINK'
,p_column_display_sequence=>9
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591862871486606257)
,p_query_column_id=>10
,p_column_alias=>'CREATED'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3476049588451355102)
,p_query_column_id=>11
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3476049606238355103)
,p_query_column_id=>12
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>13
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3591862971056606258)
,p_query_column_id=>13
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>12
,p_column_heading=>'Last Updated By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3476049788033355104)
,p_query_column_id=>14
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>3
,p_column_heading=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP:P200_ID:#PROJECT_ID#'
,p_column_linktext=>'#PROJECT#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14151124194164761352)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14151124526375761356)
,p_name=>'Projects I''m Following'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--inline'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode(s.parent_project_id,',
'        null, ''<a href="''',
'            ||apex_util.prepare_url(''f?p=''||:APP_ID||'':200:''||:APP_SESSION||'':::200:P200_ID:''||s.id)||''">''',
'            ||apex_escape.html(s.project)||''</a>'',',
'        ''<a href="''',
'            ||apex_util.prepare_url(''f?p=''||:APP_ID||'':200:''||:APP_SESSION||'':::200:P200_ID:''||s.id)',
'            ||''"><span class="child-project-marker">''||apex_escape.html(s.project)||''</span></a>'') project,',
'    c.status_short_desc status,',
'    (   select listagg(lower(u.username),'', '') within group',
'            (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'        from eba_proj_user_ref rf,',
'            eba_proj_status_users u,',
'            eba_proj_roles r',
'        where rf.project_id = s.id',
'            and rf.user_id = u.id',
'            and rf.role_id = r.id',
'            and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as all_owners,',
'    (   select category from eba_proj_status_cats  cat where cat.id = s.cat_id) category,',
'    s.updated,',
'    s.id project_id',
'from eba_proj_status s,',
'    eba_proj_status_codes c',
'where c.id = s.project_status',
'    and c.is_closed_status != ''Y''',
'    and s.project is not null',
'    --',
'    and exists (select null',
'                from eba_proj_status_favorites f',
'                where f.content_id = s.id',
'                    and upper(f.user_name) = upper(:P194_NAME))',
'order by greatest(s.updated,s.created) desc,',
'    s.project'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' '
,p_query_no_data_found=>'No followed projects found'
,p_query_more_data=>'Too many projects to display, please filter'
,p_query_num_rows_item=>'P194_ROWS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14151124959408761360)
,p_query_column_id=>1
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>2
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14151125247679761363)
,p_query_column_id=>2
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14151125394761761364)
,p_query_column_id=>3
,p_column_alias=>'ALL_OWNERS'
,p_column_display_sequence=>5
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14151124770874761358)
,p_query_column_id=>4
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>3
,p_column_heading=>'&CAT_TITLE.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14151124833352761359)
,p_query_column_id=>5
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>6
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14151125035571761361)
,p_query_column_id=>6
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_ID,P200_ID:#PROJECT_ID#,#PROJECT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_report_column_required_role=>wwv_flow_api.id(7306166303644991446)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14247169456607513817)
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
 p_id=>wwv_flow_api.id(14247200987481527201)
,p_plug_name=>'Open Action Items'
,p_region_name=>'actionItems'
,p_region_css_classes=>'timeline-edit-links'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    a.action title,',
'    case when a.action_status = ''Closed'' then',
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
'    case when a.ACTION_STATUS = ''Closed'' then',
'            ''Closed''',
'        when trunc(a.due_date) < trunc(sysdate) then',
'            ''Past Due''',
'        when trunc(a.due_date) = trunc(sysdate) then',
'            ''Due Today''',
'        else',
'            ''Due In The Future''',
'    end as color_label,',
'    decode(a.milestone_id,null,null,(select milestone_name m from eba_proj_status_ms where id = a.milestone_id)) milestone,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':78:''||:APP_SESSION',
'                ||'':::78:P78_ACTION_ITEM_ID,P200_ID:''',
'                ||a.id||'',''||s.id) link,',
'    case when s.parent_project_id is null then',
'            null',
'        else',
'            ''Parent Project: ''||(   select project d',
'                                    from eba_proj_status',
'                                    where id = s.parent_project_id )',
'    end as parent_project,',
'    s.project,',
'    a.action_description,',
'    a.ACTION_STATUS status,',
'    a.due_date due_date,',
'    case when owner_role_id is null then',
'        eba_proj_fw.get_name_from_email_address(a.action_owner_01)',
'        ||decode(a.action_owner_02,null,null,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_02))',
'        ||decode(a.action_owner_03,null,null,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_03))',
'        ||decode(a.action_owner_04,null,null,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_04))',
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
'              p_url => ''f?p=''||:APP_ID||'':73:''||:APP_SESSION||'':::73:P73_ID:''||a.id,',
'              p_triggering_element => ''$(''''#actionItems'''')'')||''"',
'         class="t-StatusList-editLink">Edit</a>''',
'    else',
'        null',
'    end as edit_link',
'from eba_proj_status_ais a,',
'    eba_proj_status s,',
'    eba_proj_status_codes c',
'where a.project_id = s.id',
'    and s.project_status = c.id',
'    and s.project_status not in (select id from eba_proj_status_codes where is_closed_status = ''Y'')',
'    and c.is_closed_status != ''Y''',
'    and a.action_status = ''Open''',
'    and (( a.owner_role_id is null',
'        and (   upper(a.action_owner_01) = upper(:P194_NAME)',
'            or  upper(a.action_owner_02) = upper(:P194_NAME)',
'            or  upper(a.action_owner_03) = upper(:P194_NAME)',
'            or  upper(a.action_owner_04) = upper(:P194_NAME)',
'        )) or ( a.owner_role_id is not null',
'            and exists ( select null',
'                        from eba_proj_user_ref rf,',
'                            eba_proj_status_users u',
'                        where rf.role_id = a.owner_role_id',
'                            and rf.project_id = a.project_id',
'                            and rf.user_id = u.id',
'                            and upper(u.username) = upper(:P194_NAME) )',
'        )',
'    )',
'    and ( :P194_AI_PROJECT is null or s.id = :P194_AI_PROJECT )',
'order by a.due_date,',
'    lower(s.project)'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_plug_query_num_rows=>5000
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No open Action Items found'
,p_required_patch=>wwv_flow_api.id(11865457074067664047)
,p_attribute_01=>'DUE_DATE'
,p_attribute_02=>'COLOR'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'LINK'
,p_attribute_05=>'PROJECT'
,p_attribute_06=>'OWNER'
,p_attribute_07=>'MILESTONE'
,p_attribute_09=>'ACTION_DESCRIPTION'
,p_attribute_11=>'EDIT_LINK'
,p_attribute_12=>'D'
,p_attribute_13=>'STATUS'
,p_attribute_14=>'COLOR_LABEL'
,p_attribute_15=>'LINK_TEXT'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14247201397661527204)
,p_name=>'ID'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14247201751442527205)
,p_name=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Title'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14247202224549527207)
,p_name=>'COLOR'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color'
,p_display_sequence=>30
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14247202798040527207)
,p_name=>'LINK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link'
,p_display_sequence=>40
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14247203309072527208)
,p_name=>'PARENT_PROJECT'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Parent Project'
,p_display_sequence=>50
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID',
'   and build_option_name = ''Allow Parent Projects''',
'   and build_option_status = ''Include'''))
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14247203769186527209)
,p_name=>'PROJECT'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Project'
,p_display_sequence=>60
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14247204234515527210)
,p_name=>'ACTION_DESCRIPTION'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_heading=>'Action description'
,p_display_sequence=>90
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14247204799592527211)
,p_name=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Status'
,p_display_sequence=>110
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14247205275034527212)
,p_name=>'DUE_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_visible=>true
,p_heading=>'Due date'
,p_display_sequence=>130
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14247205758920527213)
,p_name=>'OWNER'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Owner(s)'
,p_display_sequence=>150
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14247206252470527214)
,p_name=>'ROW_KEY'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Row key'
,p_display_sequence=>160
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15119498581755788941)
,p_name=>'EDIT_LINK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Edit link'
,p_display_sequence=>170
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15466902654524804741)
,p_name=>'COLOR_LABEL'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color label'
,p_display_sequence=>180
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18405131767433962973)
,p_name=>'LINK_TEXT'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link text'
,p_display_sequence=>190
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(19313141190292735057)
,p_name=>'MILESTONE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Milestone'
,p_display_sequence=>200
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14248305653366913499)
,p_plug_name=>'Open Milestones'
,p_region_name=>'milestones'
,p_region_css_classes=>'timeline-edit-links'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.id,',
'       m.milestone_name title,',
'       case when m.milestone_status = ''Completed'' then',
'               ''Black''',
'           when trunc(m.milestone_date) < trunc(current_date) then',
'               ''Red''',
'           when trunc(m.milestone_date) = trunc(current_date) then',
'               ''Yellow''',
'           else',
'               ''Green''',
'       end as color,',
'       case when trunc(m.milestone_date) < trunc(sysdate) and nvl(m.milestone_status,''Completed'') = ''Completed'' then',
'               ''Closed''',
'           when trunc(m.milestone_date) < trunc(sysdate) and nvl(m.milestone_status,''Completed'') != ''Completed'' then',
'               ''Past Due''',
'           when trunc(m.milestone_date) = trunc(sysdate) and nvl(m.milestone_status,''Completed'') != ''Completed'' then',
'               ''Due Today''',
'           when trunc(m.milestone_date) > trunc(sysdate) and nvl(m.milestone_status,''Completed'') != ''Completed'' then',
'               ''Due In The Future''',
'       end as color_label,',
'       apex_util.prepare_url(''f?p=''||:APP_ID||'':107:''||:APP_SESSION',
'           ||'':::107:P107_ID,P200_ID,P107_PROJECT_ID:''',
'           ||m.id||'',''||m.project_id||'',''||m.project_id) link,',
'       m.milestone_description,',
'       m.milestone_date,',
'       m.milestone_status,',
'       m.milestone_start_date,',
'       s.project,',
'       case when owner_role_id is null then',
'            eba_proj_fw.get_name_from_email_address(m.milestone_owner)',
'       else',
'           nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '
||''')',
'                   within group (order by lower(u.username)) owner',
'               from eba_proj_user_ref rf,',
'                   eba_proj_status_users u,',
'                   eba_proj_roles r',
'               where rf.role_id = m.owner_role_id',
'                   and rf.project_id = m.project_id',
'                   and u.id = rf.user_id',
'                   and r.id = rf.role_id',
'               group by r.name',
'           ), (select ''No ''||r.name||'' defined''',
'               from eba_proj_roles r',
'               where r.id = m.owner_role_id)',
'           )',
'       end as milestone_owner,',
'       nvl((   select count(*)',
'               from eba_proj_status_ais a',
'               where a.milestone_id = m.id',
'                   and a.action_status = ''Open''),0) ||'' Open Action Items'' ai_open,',
'       case when eba_proj_fw.is_edit_authorized(',
'           p_username   => upper(:APP_USER),',
'           p_project_id => m.project_id ) = ''Y'' then',
'           decode(nvl(m.is_major_yn,''N''),''Y'',''<b>MAJOR MILESTONE</b>'',null) || ',
'           ''<a href="''',
'             ||apex_util.prepare_url(',
'                 p_url => ''f?p=''||:APP_ID||'':48:''||:APP_SESSION||'':::48:P48_ID:''||m.id,',
'                 p_triggering_element => ''$(''''#milestones'''')'')||''"',
'            class="t-StatusList-editLink">Edit</a>''',
'       else',
'           decode(nvl(m.is_major_yn,''N''),''Y'',''<b>MAJOR MILESTONE</b>'',null)',
'       end as description3',
'from eba_proj_status_ms m,',
'    eba_proj_status s,',
'    eba_proj_status_codes c',
'where m.project_id = s.id',
'    and s.project_status = c.id',
'    and s.project_status not in (select id from eba_proj_status_codes where is_closed_status = ''Y'')',
'    and c.is_closed_status != ''Y''',
'    and m.milestone_status = ''Open''',
'    and ( m.owner_role_id is null',
'            and',
'            instr(upper(m.milestone_owner), upper(:P194_NAME)) > 0',
'        or',
'            exists ( select null',
'                    from eba_proj_user_ref rf,',
'                        eba_proj_status_users u',
'                    where rf.role_id = m.owner_role_id',
'                        and rf.project_id = m.project_id',
'                        and rf.user_id = u.id',
'                        and upper(u.username) = upper(:P194_NAME)',
'            )',
'       )',
'    and ( :P194_MS_PROJECT is null or s.id = :P194_MS_PROJECT )',
'order by m.milestone_date, m.milestone_name, m.id'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_plug_query_num_rows=>5000
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No open Milestones found'
,p_required_patch=>wwv_flow_api.id(11865439575942748770)
,p_attribute_01=>'MILESTONE_DATE'
,p_attribute_02=>'COLOR'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'LINK'
,p_attribute_05=>'PROJECT'
,p_attribute_06=>'AI_OPEN'
,p_attribute_07=>'MILESTONE_OWNER'
,p_attribute_09=>'MILESTONE_DESCRIPTION'
,p_attribute_11=>'DESCRIPTION3'
,p_attribute_12=>'D'
,p_attribute_13=>'MILESTONE_STATUS'
,p_attribute_14=>'COLOR_LABEL'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14248306046670913504)
,p_name=>'ID'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14248306433324913506)
,p_name=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Title'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14248306925366913506)
,p_name=>'COLOR'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color'
,p_display_sequence=>30
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14248307469136913507)
,p_name=>'LINK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link'
,p_display_sequence=>40
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14248308436393913507)
,p_name=>'DESCRIPTION3'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Description3'
,p_display_sequence=>70
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14248309006336913508)
,p_name=>'MILESTONE_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Milestone description'
,p_display_sequence=>80
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14248309418017913508)
,p_name=>'MILESTONE_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_visible=>true
,p_heading=>'Milestone date'
,p_display_sequence=>90
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14248309915284913510)
,p_name=>'MILESTONE_STATUS'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Status'
,p_display_sequence=>110
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14248310413885913511)
,p_name=>'MILESTONE_START_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_visible=>true
,p_heading=>'Start'
,p_display_sequence=>130
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14248310951608913511)
,p_name=>'MILESTONE_OWNER'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Owner(s)'
,p_display_sequence=>150
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(14248311470534913512)
,p_name=>'AI_OPEN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Open Action Items'
,p_display_sequence=>170
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15466902570571804740)
,p_name=>'COLOR_LABEL'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color label'
,p_display_sequence=>180
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18094063891922386647)
,p_name=>'PROJECT'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Project'
,p_display_sequence=>190
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14249803753079373872)
,p_name=>'My Open Projects'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode(s.parent_project_id,',
'        null, ''<a href="''',
'            ||apex_util.prepare_url(''f?p=''||:APP_ID||'':200:''||:APP_SESSION||'':::200:P200_ID:''||s.id)||''">''',
'            ||apex_escape.html(s.project)||''</a>'',',
'        ''<a href="''',
'            ||apex_util.prepare_url(''f?p=''||:APP_ID||'':200:''||:APP_SESSION||'':::200:P200_ID:''||s.id)',
'            ||''"><span class="child-project-marker">''||apex_escape.html(s.project)||''</span></a>'') project,',
'    c.status_short_desc status,',
'    (   select listagg(lower(u.username),'', '') within group',
'            (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'        from eba_proj_user_ref rf,',
'            eba_proj_status_users u,',
'            eba_proj_roles r',
'        where rf.project_id = s.id',
'            and rf.user_id = u.id',
'            and rf.role_id = r.id',
'            and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as all_owners,',
'    (   select category from eba_proj_status_cats  cat where cat.id = s.cat_id) category,',
'    s.updated,',
'    s.id project_id',
'from eba_proj_status s,',
'    eba_proj_status_codes c',
'where c.id = s.project_status',
'    and c.is_closed_status != ''Y''',
'    and  s.project is not null',
'    --',
'    and exists (select null',
'                from eba_proj_user_ref rf,',
'                    eba_proj_status_users u',
'                where rf.project_id = s.id',
'                    and rf.user_id = u.id',
'                    and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
'                    and upper(u.username) = upper(:P194_NAME))',
'order by greatest(s.updated,s.created) desc,',
'    s.project'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>25
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' '
,p_query_no_data_found=>'No projects found'
,p_query_more_data=>'Too many projects to display, please filter'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14249805192888373881)
,p_query_column_id=>1
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>2
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14249806394733373884)
,p_query_column_id=>2
,p_column_alias=>'STATUS'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14249806769938373885)
,p_query_column_id=>3
,p_column_alias=>'ALL_OWNERS'
,p_column_display_sequence=>5
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14249804408020373880)
,p_query_column_id=>4
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>3
,p_column_heading=>'&CAT_TITLE.'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14249804800297373880)
,p_query_column_id=>5
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>6
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14249805578030373882)
,p_query_column_id=>6
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_ID,P200_ID:#PROJECT_ID#,#PROJECT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_report_column_required_role=>wwv_flow_api.id(7306166303644991446)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18132641524336772945)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14247200987481527201)
,p_button_name=>'FILTER_AI'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'&P194_AI_FILTER.'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:RP,128:P128_TYPE:AI'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18132641662032772946)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14248305653366913499)
,p_button_name=>'FILTER_MS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'&P194_MS_FILTER.'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:RP,128:P128_TYPE:MS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20398313339539735535)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14247200987481527201)
,p_button_name=>'MASS_UPDATE_AIS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Mass Update'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:212:&SESSION.::&DEBUG.:RP,212:P212_PROJECT_ID:&P194_AI_PROJECT.'
,p_button_condition=>'P194_OPEN_AI_CNT'
,p_button_condition_type=>'ITEM_IS_NOT_ZERO'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20728278651211320247)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14248305653366913499)
,p_button_name=>'MASS_UPDATE_MS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Mass Update'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:215:&SESSION.::&DEBUG.:RP,215:P215_PROJECT_ID:&P194_MS_PROJECT.'
,p_button_condition=>'P194_OPEN_MS_CNT'
,p_button_condition_type=>'ITEM_IS_NOT_ZERO'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14151124267292761353)
,p_name=>'P194_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14151124194164761352)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18132640330207772933)
,p_name=>'P194_AI_PROJECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14247200987481527201)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18132640447378772934)
,p_name=>'P194_MS_PROJECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14248305653366913499)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18132641759765772947)
,p_name=>'P194_AI_FILTER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14247200987481527201)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P194_AI_PROJECT is null then',
'        return ''Filter by Project'';',
'    else',
'        for c1 in ( select project',
'                    from eba_proj_status',
'                    where id = :P194_AI_PROJECT ) loop',
'            if length(c1.project) > 30 then',
'                return ''Filtered: ''||substr(c1.project,1,30)||''...'';',
'            else',
'                return ''Filtered: ''||c1.project;',
'            end if;',
'        end loop;',
'    end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18132641847136772948)
,p_name=>'P194_MS_FILTER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14248305653366913499)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P194_MS_PROJECT is null then',
'        return ''Filter by Project'';',
'    else',
'        for c1 in ( select project',
'                    from eba_proj_status',
'                    where id = :P194_MS_PROJECT ) loop',
'            if length(c1.project) > 30 then',
'                return ''Filtered: ''||substr(c1.project,1,30)||''...'';',
'            else',
'                return ''Filtered: ''||c1.project;',
'            end if;',
'        end loop;',
'    end if;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20152067006324308263)
,p_name=>'P194_DISPLAY_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14151124194164761352)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20398313420551735536)
,p_name=>'P194_OPEN_AI_CNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14151124194164761352)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21157149374453596440)
,p_name=>'P194_OPEN_MS_CNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14151124194164761352)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(20398323538797735537)
,p_computation_sequence=>20
,p_computation_item=>'P194_OPEN_AI_CNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(a.id)',
'from eba_proj_status_ais a,',
'    eba_proj_status s,',
'    eba_proj_status_codes c',
'where a.project_id = s.id',
'    and s.project_status = c.id',
'    and c.is_closed_status != ''Y''',
'    and a.action_status = ''Open''',
'    and (( a.owner_role_id is null',
'        and (   upper(a.action_owner_01) = upper(:P194_NAME)',
'            or  upper(a.action_owner_02) = upper(:P194_NAME)',
'            or  upper(a.action_owner_03) = upper(:P194_NAME)',
'            or  upper(a.action_owner_04) = upper(:P194_NAME)',
'        )) or ( a.owner_role_id is not null',
'            and exists ( select null',
'                        from eba_proj_user_ref rf,',
'                            eba_proj_status_users u',
'                        where rf.role_id = a.owner_role_id',
'                            and rf.project_id = a.project_id',
'                            and rf.user_id = u.id',
'                            and upper(u.username) = upper(:P194_NAME) )',
'        )',
'    )',
'    and ( :P194_AI_PROJECT is null or s.id = :P194_AI_PROJECT )',
'order by a.due_date,',
'    lower(s.project)'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(21157149510151596441)
,p_computation_sequence=>30
,p_computation_item=>'P194_OPEN_MS_CNT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(m.id)',
'from eba_proj_status_ms m,',
'    eba_proj_status s,',
'    eba_proj_status_codes c',
'where m.project_id = s.id',
'    and s.project_status = c.id',
'    and c.is_closed_status != ''Y''',
'    and m.milestone_status = ''Open''',
'    and (( m.owner_role_id is null',
'            and instr(upper(m.milestone_owner), upper(:P194_NAME)) > 0 )',
'        or',
'            exists ( select null',
'                    from eba_proj_user_ref rf,',
'                        eba_proj_status_users u',
'                    where rf.role_id = m.owner_role_id',
'                        and rf.project_id = m.project_id',
'                        and rf.user_id = u.id',
'                        and upper(u.username) = upper(:P194_NAME)',
'            )',
'       )',
'    and ( :P194_MS_PROJECT is null or s.id = :P194_MS_PROJECT )'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14151124419494761355)
,p_computation_sequence=>10
,p_computation_item=>'P194_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'lower(:APP_USER)'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(20152067095476308264)
,p_computation_sequence=>10
,p_computation_item=>'P194_DISPLAY_USERNAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'eba_proj_fw.get_name_from_email_address(:APP_USER)'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18094064080928386649)
,p_computation_sequence=>20
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14151123597407761346)
,p_name=>'Lookup New User'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P194_USER'
,p_condition_element=>'P194_USER'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14151123636448761347)
,p_event_id=>wwv_flow_api.id(14151123597407761346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15119498619108788942)
,p_name=>'Update Action Items'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(14247200987481527201)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15119498763884788943)
,p_event_id=>wwv_flow_api.id(15119498619108788942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14247200987481527201)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15119498855158788944)
,p_name=>'Refresh Milestones'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(14248305653366913499)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15119498956440788945)
,p_event_id=>wwv_flow_api.id(15119498855158788944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14248305653366913499)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3476049842409355105)
,p_name=>'Refresh on Issue Edit'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(3476048622230355093)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3476049913684355106)
,p_event_id=>wwv_flow_api.id(3476049842409355105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3476048622230355093)
);
wwv_flow_api.component_end;
end;
/
