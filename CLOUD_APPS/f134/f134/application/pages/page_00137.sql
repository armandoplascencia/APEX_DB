prompt --application/pages/page_00137
begin
--   Manifest
--     PAGE: 00137
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
 p_id=>137
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'User Profile Page'
,p_step_title=>'&P137_DISPLAY_NAME.''s Profile'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.timeline-edit-links .t-StatusList-editLink { position: absolute; right: 8px; top: 8px; font-size: 12px; line-height: 16px; float: right; padding: 4px 8px }',
'.timeline-edit-links .t-StatusList-itemBody { position: relative }',
'.timeline-edit-links .t-StatusList-item { border-bottom: 1px solid rgba(0, 0, 0, .05) }',
'.timeline-edit-links .t-StatusList-item:last-child { border-bottom: none }',
'.profile-block {',
'  padding: 12px;',
'}',
'.profile-photo-wrap {margin-bottom: 12px; border-bottom: 1px solid rgba(0,0,0,.1); padding-bottom: 12px;}',
'.profile-photo {',
'    border-radius: 2px;',
'    background-size: cover;',
'    background-position: 50%;',
'    width: 100%;',
'    padding-bottom: 100%;',
'    display: block;',
'}',
'.profile-intro {',
'    font-size: 14px;',
'    display: block;',
'    margin-bottom: 12px;',
'    line-height: 1.5;',
'}',
'span.profile-name {',
'    font-weight: bold;',
'    display: block;',
'    margin-bottom: 8px;',
'    font-size: 16px;',
'    line-height: 20px;',
'}',
'.floating-rds.is-stuck {',
'    background: white;',
'    box-shadow: 0 2px 2px 0px rgba(0,0,0,.25);',
'}',
'.region-filters {',
'    border-bottom: 1px solid rgba(0,0,0,.05);',
'}',
'',
'.t-Body-contentInner .col {min-height: 0;}',
'',
'.involvement-user-role {display: block;}',
'.involvement-project-name,',
'.involvement-user-role {',
'    font-weight: bold;',
'}',
'.involvement-pct {white-space: nowrap;}',
'.small-profile-photo { display: block; width: 32px; height: 32px; background-size: cover; background-repeat: no-repeat; border-radius: 100%; box-shadow: 0 0 0 1px rgba(0, 0, 0, .1) inset; }',
'.t-Comments-userIcon.comment-user-has-photo {',
'    border-width: 0;',
'}',
'#PROJECT a {',
'    margin-left: 12px;',
'    font-weight:bold;',
'}'))
,p_step_template=>wwv_flow_api.id(6781077225859890733)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'The User Profile Page allows you to see all relevant information about a given user in one easy to use screen. '
,p_last_upd_yyyymmddhh24miss=>'20190913125809'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(4145553109463246202)
,p_name=>'Issues'
,p_region_name=>'issues_region'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'timeline-edit-links'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--horizontalBorders'
,p_region_attributes=>'style="display: none;"'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    project_id,',
'    issue,',
'    case when owner_role_id is null then',
'        issue_owner',
'    else',
'        nvl((select r.name||'': ''||listagg(lower(u.username),'', '')',
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
'    issue_level,',
'    case when is_open = ''N'' then',
'            ''Black''',
'        else',
'            ''Green''',
'    end as color,',
'    decode(is_open,''Y'',''<span class="t-Badge t-Badge--basic t-Badge--xsmall is-success">Open</span>'',''N'',''<span class="t-Badge t-Badge--basic t-Badge--xsmall is-complete">Closed</span>'',is_open) open,',
'    link_01 link,',
'    lower(created_by) created_by,',
'    updated,',
'    (   select project',
'        from eba_proj_status x',
'        where x.id = i.project_id) project,',
'    case when eba_proj_fw.is_edit_authorized(',
'            p_username   => upper(:APP_USER),',
'            p_project_id => i.project_id ) = ''Y'' then',
'        ''<a href="''',
'          ||apex_util.prepare_url(',
'              p_url => ''f?p=''||:APP_ID||'':24:''||:APP_SESSION||'':::24:P24_ID:''||i.id,',
'          p_triggering_element => ''$(''''#issues_region'''')'')||''"',
'         >Edit</a>''',
'    else',
'        null',
'    end as description3,',
'    issue_detail',
'from eba_proj_status_issues i',
'where (( i.owner_role_id is null and lower(i.issue_owner) = lower(:P137_USERNAME))',
'        or ( i.owner_role_id is not null',
'            and exists (select null',
'                        from eba_proj_user_ref rf,',
'                            eba_proj_status_users u',
'                        where rf.role_id = i.owner_role_id',
'                            and rf.project_id = i.project_id',
'                            and u.id = rf.user_id',
'                            and lower(u.username) = lower(:P137_USERNAME)) ))',
'    and ( ( :P137_SHOW_CLOSED_ISSUES = ''OPEN''',
'                and is_open = ''Y'' )',
'            or ( :P137_SHOW_CLOSED_ISSUES = ''ALL''',
'               and is_open in (''Y'',''N'') )',
'        )',
'    and ( ( nvl(:P137_SHOW_L1_ISSUES,''ALL'') = ''1''',
'                and issue_level = ''1'' )',
'            or ( nvl(:P137_SHOW_L2_ISSUES,''ALL'') = ''2''',
'                and issue_level = ''2'' )',
'            or ( nvl(:P137_SHOW_L3_ISSUES,''ALL'') = ''3''',
'                and issue_level = ''3'' )',
'            or ( nvl(:P137_SHOW_L4_ISSUES,''ALL'') = ''4''',
'                and issue_level = ''4'' )',
'            or ( nvl(:P137_SHOW_L1_ISSUES,''ALL'') = ''ALL''',
'                and nvl(:P137_SHOW_L2_ISSUES,''ALL'') = ''ALL''',
'                and nvl(:P137_SHOW_L3_ISSUES,''ALL'') = ''ALL''',
'                and nvl(:P137_SHOW_L4_ISSUES,''ALL'') = ''ALL''',
'                and issue_level in (''1'',''2'',''3'',''4'') )',
'        )',
'    --and nvl(:P137_SHOW_REGION,''X'') = ''ISSUES''',
'order by project asc, i.is_open desc, issue_level, upper(issue)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P137_SHOW_CLOSED_ISSUES,P137_SHOW_L1_ISSUES,P137_SHOW_REGION'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>200
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_break_cols=>'1'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'REPEAT_HEADINGS_ON_BREAK_1'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_api.id(7672710716776835218)
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_PROJ_STATUS_ISSUES l',
'where ( l.project_id = :P200_ID ',
'        or (nvl(:P200_INC_CHILD,''N'') = ''Y'' and ',
'            l.project_id in (select s.id ',
'                             from EBA_PROJ_STATUS s',
'                             where s.parent_project_id = :P200_ID))',
'    )'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4187294960244846469)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4187295043113846470)
,p_query_column_id=>2
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>3
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4187295172520846471)
,p_query_column_id=>3
,p_column_alias=>'ISSUE'
,p_column_display_sequence=>4
,p_column_heading=>'Issue'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4187295242556846472)
,p_query_column_id=>4
,p_column_alias=>'ISSUE_OWNER'
,p_column_display_sequence=>6
,p_column_heading=>'Issue Owner'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4187295380247846473)
,p_query_column_id=>5
,p_column_alias=>'ISSUE_LEVEL'
,p_column_display_sequence=>7
,p_column_heading=>'Issue Level'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4187295432444846474)
,p_query_column_id=>6
,p_column_alias=>'COLOR'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4187295555576846475)
,p_query_column_id=>7
,p_column_alias=>'OPEN'
,p_column_display_sequence=>9
,p_column_heading=>'Open'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4187295695219846476)
,p_query_column_id=>8
,p_column_alias=>'LINK'
,p_column_display_sequence=>10
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_column_link=>'&LINK.'
,p_column_linktext=>'#LINK#'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status_issues i',
'where (( i.owner_role_id is null and lower(i.issue_owner) = lower(:P137_USERNAME))',
'        or ( i.owner_role_id is not null',
'            and exists (select null',
'                        from eba_proj_user_ref rf,',
'                            eba_proj_status_users u',
'                        where rf.role_id = i.owner_role_id',
'                            and rf.project_id = i.project_id',
'                            and u.id = rf.user_id',
'                            and lower(u.username) = lower(:P137_USERNAME)) ))',
'    and ( ( :P137_SHOW_CLOSED_ISSUES_1 = ''OPEN''',
'                and is_open = ''Y'' )',
'            or ( :P137_SHOW_CLOSED_ISSUES_1 = ''ALL''',
'               and is_open in (''Y'',''N'') )',
'        )',
'    and ( ( :P137_SHOW_CRITICAL_ISSUES_1 = ''12''',
'                and issue_level in (''1'',''2'') )',
'            or ( :P137_SHOW_CRITICAL_ISSUES_1 = ''ALL'' ',
'                and nvl(issue_level,''4'') in (''1'',''2'',''3'',''4'') )',
'        )',
'    --and nvl(:P137_SHOW_REGION,''X'') = ''ISSUES''',
'    and i.link_01 is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4187295790243846477)
,p_query_column_id=>9
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>11
,p_column_heading=>'Created By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4187295853182846478)
,p_query_column_id=>10
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>12
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4187296054653846480)
,p_query_column_id=>11
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP:P200_ID:#PROJECT_ID##projectIssues'
,p_column_linktext=>'#PROJECT#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4187296193759846481)
,p_query_column_id=>12
,p_column_alias=>'DESCRIPTION3'
,p_column_display_sequence=>13
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4187296276685846482)
,p_query_column_id=>13
,p_column_alias=>'ISSUE_DETAIL'
,p_column_display_sequence=>5
,p_column_heading=>'Issue detail'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status_issues i',
'where (( i.owner_role_id is null and lower(i.issue_owner) = lower(:P137_USERNAME))',
'        or ( i.owner_role_id is not null',
'            and exists (select null',
'                        from eba_proj_user_ref rf,',
'                            eba_proj_status_users u',
'                        where rf.role_id = i.owner_role_id',
'                            and rf.project_id = i.project_id',
'                            and u.id = rf.user_id',
'                            and lower(u.username) = lower(:P137_USERNAME)) ))',
'    and ( ( :P137_SHOW_CLOSED_ISSUES_1 = ''OPEN''',
'                and is_open = ''Y'' )',
'            or ( :P137_SHOW_CLOSED_ISSUES_1 = ''ALL''',
'               and is_open in (''Y'',''N'') )',
'        )',
'    and ( ( :P137_SHOW_CRITICAL_ISSUES_1 = ''12''',
'                and issue_level in (''1'',''2'') )',
'            or ( :P137_SHOW_CRITICAL_ISSUES_1 = ''ALL'' ',
'                and nvl(issue_level,''4'') in (''1'',''2'',''3'',''4'') )',
'        )',
'    --and nvl(:P137_SHOW_REGION,''X'') = ''ISSUES''',
'    and i.issue_detail is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6838282874526141186)
,p_plug_name=>'Hidden Items'
,p_plug_display_sequence=>110
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6838283325316156648)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6838505578045797693)
,p_name=>'Projects'
,p_region_name=>'projects_region'
,p_template=>wwv_flow_api.id(6781104626075890777)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--desc-4ln:u-colors:t-Cards--displayInitials:t-Cards--3cols:t-Cards--basic:t-Cards--animColorFill'
,p_region_attributes=>'style="display: none;"'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'      s.PROJECT  card_title, ',
'      apex_util.prepare_url(''f?p=''||:APP_ID||'':200:''||:APP_SESSION||'':::200:P200_ID:''||s.id) card_link,',
'      null card_icon,',
'      null card_modifiers,',
'      --',
'      rtrim(decode(s.parent_project_id,null,null,',
'      (select ''Parent (''||project ||'') '' x from eba_proj_status p where p.id = s.parent_project_id))||',
'     nvl(eba_proj_fw.get_project_rowkey(p_project_id => s.id), s.row_key) ||'', ''||',
'     c.status_short_desc||'', ''||',
'     nvl(s.description ,s.goal), '' ,'')',
'     card_text,',
'     --',
'    decode(eba_proj_stat_ui.is_project_open(s.id), 0, ''Closed'', 1, ''Open'') ||'', ''',
'        ||( select listagg(lower(u.username),'', '') within group',
'                (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.project_id = s.id',
'                and rf.user_id = u.id',
'                and rf.role_id = r.id',
'                and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as card_subtext,',
'       upper(',
'          decode(instr(s.PROJECT,'' ''),',
'                 0, ',
'                 substr(s.PROJECT,1,2),',
'                 substr(s.PROJECT,1,1)||substr(s.PROJECT,instr(s.PROJECT,'' '')+1,1)',
'           ))  card_initials,',
'    s.CREATED,',
'    s.CREATED_BY,',
'    nvl(s.UPDATED,s.created) updated,',
'    s.UPDATED_BY,',
'    tags',
'from EBA_PROJ_STATUS s,',
'     eba_proj_status_codes c',
'where c.id(+) = s.PROJECT_STATUS and ',
'      s.project is not null',
'    --',
'    and exists (select null',
'                from eba_proj_user_ref rf,',
'                    eba_proj_status_users u,',
'                    eba_proj_roles r',
'                where rf.project_id = s.id',
'                    and rf.user_id = u.id',
'                    and lower(u.username) = lower(:P137_USERNAME)',
'                    and rf.role_id = r.id',
'                    and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' )',
'    --and nvl(:P137_SHOW_REGION,''X'') = ''PROJECTS''',
'order by  to_char(greatest(s.updated,s.created),''YYYYMMDDHH24MISS'') desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P137_SHOW_REGION'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6834801944438429013)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Projects found.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6838506863182797697)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6838506140613797697)
,p_query_column_id=>2
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>2
,p_column_heading=>'Card link'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6838506264593797697)
,p_query_column_id=>3
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>3
,p_column_heading=>'Card icon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6838506353218797697)
,p_query_column_id=>4
,p_column_alias=>'CARD_MODIFIERS'
,p_column_display_sequence=>4
,p_column_heading=>'Card modifiers'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6838506422407797697)
,p_query_column_id=>5
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>5
,p_column_heading=>'Card text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6838506557092797697)
,p_query_column_id=>6
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>6
,p_column_heading=>'Card subtext'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6838506633947797697)
,p_query_column_id=>7
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>7
,p_column_heading=>'Card initials'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6838506724437797697)
,p_query_column_id=>8
,p_column_alias=>'CREATED'
,p_column_display_sequence=>8
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6838505735938797697)
,p_query_column_id=>9
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Created by'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6838505848554797697)
,p_query_column_id=>10
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>10
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6838505881990797697)
,p_query_column_id=>11
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>11
,p_column_heading=>'Updated by'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6838506075431797697)
,p_query_column_id=>12
,p_column_alias=>'TAGS'
,p_column_display_sequence=>12
,p_column_heading=>'Tags'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6838507318278807154)
,p_plug_name=>'Region Display Selector'
,p_region_name=>'profile_rds'
,p_region_css_classes=>'floating-rds'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6838568609065106360)
,p_plug_name=>'Summary'
,p_region_name=>'summary_region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Open Projects'' Label,',
'    to_char(count(*),''999G999G990'') projects,',
'    ''#projects'' link',
'from eba_proj_status p,',
'    eba_proj_user_ref rf,',
'    eba_proj_status_users u,',
'    eba_proj_roles r,',
'    eba_proj_status_codes sc',
'where rf.project_id = p.id',
'    and rf.user_id = u.id',
'    and rf.role_id = r.id',
'    and u.id = :P137_ID',
'    and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
'    and sc.id = p.project_status',
'    and sc.is_closed_status = ''N''',
'union all',
'select ''Open Action Items'' label,',
'    to_char(count(*),''999G999G990'') action_items,',
'    ''#action_items'' link',
'from eba_proj_status_ais a,',
'    eba_proj_status p,',
'    eba_proj_status_codes sc',
'where ( (   a.owner_role_id is null',
'            and ( lower(a.action_owner_01) = lower(:P137_USERNAME)',
'                or lower(a.action_owner_02) = lower(:P137_USERNAME)',
'                or lower(a.action_owner_03) = lower(:P137_USERNAME)',
'                or lower(a.action_owner_04) = lower(:P137_USERNAME) ))',
'        or exists ( select null',
'                    from eba_proj_user_ref rf,',
'                        eba_proj_status_users u',
'                    where rf.role_id = a.owner_role_id',
'                        and rf.project_id = a.project_id',
'                        and u.id = rf.user_id',
'                        and lower(u.username) = lower(:P137_USERNAME) ))',
'    and apex_util.get_build_option_status(',
'        p_application_id => :APP_ID,',
'        p_build_option_name => ''Project Action Items''',
'    ) = ''INCLUDE''',
'    and a.action_status = ''Open''',
'    and p.id = a.project_id',
'    and sc.id = p.project_status',
'    and sc.is_closed_status = ''N''',
'union all',
'select ''Open Milestones'' label,',
'    to_char(count(*),''999G999G990'') milestones,',
'    ''#milestones'' link',
'from eba_proj_status_ms m,',
'    eba_proj_status p,',
'    eba_proj_status_codes sc',
'where (( m.owner_role_id is null',
'            and lower(m.milestone_owner) = lower(:P137_USERNAME) )',
'        or exists ( select null',
'                    from eba_proj_user_ref rf,',
'                        eba_proj_status_users u',
'                    where rf.role_id = m.owner_role_id',
'                        and rf.project_id = m.project_id',
'                        and u.id = rf.user_id',
'                        and lower(u.username) = lower(:P137_USERNAME) ))',
'    and apex_util.get_build_option_status(',
'        p_application_id => :APP_ID,',
'        p_build_option_name => ''Project Milestones''',
'    ) = ''INCLUDE''',
'    and m.milestone_status = ''Open''',
'    and p.id = m.project_id',
'    and sc.id = p.project_status',
'    and sc.is_closed_status = ''N''',
'union all',
'select ''Involvement Level'' label,',
'    to_char(sum(nvl(percentage,0)),''999G999G990'')||'' %'' involvement,',
'    ''#involvement'' link',
'from eba_proj_user_ref rf,',
'    eba_proj_roles r,',
'    eba_proj_status_users u,',
'    eba_proj_status p,',
'    eba_proj_status_codes sc,',
'    eba_proj_involvement_levels il',
'where u.id = :P137_ID',
'    and rf.project_id = p.id',
'    and rf.user_id = u.id',
'    and rf.role_id = r.id',
'    and il.id = rf.involvement_level_id',
'    and apex_util.get_build_option_status(',
'        p_application_id => :APP_ID,',
'        p_build_option_name => ''Project User Involvement''',
'    ) = ''INCLUDE''',
'    and sc.id = p.project_status',
'    and sc.is_closed_status = ''N''',
'union all',
'select ''Open Issues'' label,',
'    to_char(count(*),''999G999G990'') issues,',
'    ''#issues'' link',
'from eba_proj_status_issues i,',
'    eba_proj_status p,',
'    eba_proj_status_codes sc',
'where nvl(i.is_open,''Y'') = ''Y''',
'    and (( i.owner_role_id is null and lower(i.issue_owner) = lower(:P137_USERNAME))',
'        or ( i.owner_role_id is not null',
'            and exists (select null',
'                        from eba_proj_user_ref rf,',
'                            eba_proj_status_users u',
'                        where rf.role_id = i.owner_role_id',
'                            and rf.project_id = i.project_id',
'                            and u.id = rf.user_id',
'                            and lower(u.username) = lower(:P137_USERNAME)) ))',
'    and apex_util.get_build_option_status(',
'        p_application_id => :APP_ID,',
'        p_build_option_name => ''Project Issues''',
'    ) = ''INCLUDE''',
'    and p.id = i.project_id',
'    and sc.id = p.project_status',
'    and sc.is_closed_status = ''N''',
'union all',
'select ''Status Reports'' label,',
'    to_char(count(*),''999G999G990'') reports,',
'    ''#status_reports'' link',
'from eba_proj_status_rpts u,',
'     eba_proj_status p',
'where u.project_id = p.id',
'    and u.update_owner = lower(:P137_USERNAME)',
'    and (( u.viewable_by = ''Submitter and Project Members''',
'               and exists ( select null',
'                            from eba_proj_user_ref rf,',
'                                eba_proj_status_users usr',
'                            where rf.project_id = p.id',
'                                and rf.user_id = usr.id',
'                                and lower(usr.username) = lower(:APP_USER)',
'                                and eba_proj_fw.is_edit_authorized( usr.username, rf.project_id ) = ''Y'' ))',
'        or',
'            u.viewable_by = ''All''',
'        )',
'    and apex_util.get_build_option_status(',
'        p_application_id => :APP_ID,',
'        p_build_option_name => ''Project Status Reports''',
'    ) = ''INCLUDE''',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'PROJECTS'
,p_attribute_04=>'&LINK.'
,p_attribute_05=>'3'
,p_attribute_07=>'BOX'
,p_attribute_08=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6876861663185531975)
,p_plug_name=>'Action Items'
,p_region_name=>'action_items_region'
,p_region_css_classes=>'timeline-edit-links'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_region_attributes=>'style="display: none;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    a.id,',
'    a.action title,',
'    case when a.action_status = ''Closed'' then ''Black''',
'        when trunc(a.due_date) < trunc(sysdate) then ''Red''',
'        when trunc(a.due_date) = trunc(sysdate) then ''Yellow''',
'        else ''Green''',
'    end as color,',
'    case when a.ACTION_STATUS = ''Closed'' then',
'            ''Closed''',
'        when trunc(a.due_date) < trunc(sysdate) then',
'            ''Past Due''',
'        when trunc(a.due_date) = trunc(sysdate) then',
'            ''Due Today''',
'        else',
'            ''Due In The Future''',
'    end as color_label,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':78:''||:APP_SESSION',
'        ||'':::78:P78_ACTION_ITEM_ID,P200_ID:''',
'        ||a.id||'',''||s.id) link,',
'    decode(parent_project_id,null,null,',
'        ''Parent Project: ''||(   select project d',
'                                from eba_proj_status',
'                                where id = s.parent_project_id)) parent_project,',
'    s.project,',
'    a.action_description,',
'    a.action_status status,',
'    a.due_date due_date,',
'    case when a.owner_role_id is null then',
'        a.action_owner_01',
'            ||decode(a.action_owner_02,null,null,'', ''||a.action_owner_02)',
'            ||decode(a.action_owner_03,null,null,'', ''||a.action_owner_03)',
'            ||decode(a.action_owner_04,null,null,'', ''||a.action_owner_04)',
'    else',
'        nvl((select r.name||'': ''||listagg(lower(u.username),'', '')',
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
'              p_triggering_element => ''$(''''#action_items_region'''')'')',
'          ||''" class="t-StatusList-editLink">Edit</a>''',
'    else',
'        null',
'    end as edit_link',
'from eba_proj_status_ais a,',
'    eba_proj_status s,',
'    eba_proj_status_codes c',
'where ( (   a.owner_role_id is null',
'            and ( lower(a.action_owner_01) = lower(:P137_USERNAME)',
'                or lower(a.action_owner_02) = lower(:P137_USERNAME)',
'                or lower(a.action_owner_03) = lower(:P137_USERNAME)',
'                or lower(a.action_owner_04) = lower(:P137_USERNAME) ))',
'        or exists ( select null',
'                    from eba_proj_user_ref rf,',
'                        eba_proj_status_users u',
'                    where rf.role_id = a.owner_role_id',
'                        and rf.project_id = a.project_id',
'                        and u.id = rf.user_id',
'                        and lower(u.username) = lower(:P137_USERNAME) ))',
'    and apex_util.get_build_option_status(',
'        p_application_id => :APP_ID,',
'        p_build_option_name => ''Project Action Items''',
'    ) = ''INCLUDE''',
'    and a.action_status = ''Open''',
'    and s.id = a.project_id',
'    and c.id = s.project_status',
'    and c.is_closed_status = ''N''',
'order by case when nvl(:P137_SHOW_CLOSED_AIS,''OPEN'') = ''OPEN'' then a.due_date end asc, ',
'    case when :P137_SHOW_CLOSED_AIS = ''ALL'' then to_char(a.due_date,''YYYYMMDDHH24MI'') end desc nulls last'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_ajax_items_to_submit=>'P137_SHOW_CLOSED_AIS'
,p_plug_query_num_rows=>5000
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No Action Items found.'
,p_attribute_01=>'DUE_DATE'
,p_attribute_02=>'COLOR'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'LINK'
,p_attribute_05=>'PROJECT'
,p_attribute_06=>'OWNER'
,p_attribute_09=>'ACTION_DESCRIPTION'
,p_attribute_11=>'EDIT_LINK'
,p_attribute_12=>'D'
,p_attribute_13=>'STATUS'
,p_attribute_14=>'COLOR_LABEL'
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
 p_id=>wwv_flow_api.id(6876861758424531976)
,p_name=>'ID'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876861791394531977)
,p_name=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Title'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876861957950531978)
,p_name=>'COLOR'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color'
,p_display_sequence=>30
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876861981594531979)
,p_name=>'LINK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link'
,p_display_sequence=>40
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876862118320531980)
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
 p_id=>wwv_flow_api.id(6876862242401531981)
,p_name=>'PROJECT'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Project'
,p_display_sequence=>60
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876862489204531984)
,p_name=>'ACTION_DESCRIPTION'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_heading=>'Action description'
,p_display_sequence=>90
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876862740385531986)
,p_name=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Status'
,p_display_sequence=>110
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876862898503531988)
,p_name=>'DUE_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_visible=>true
,p_heading=>'Due date'
,p_display_sequence=>130
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876863118134531990)
,p_name=>'OWNER'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Owner(s)'
,p_display_sequence=>150
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876863273247531991)
,p_name=>'ROW_KEY'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Row key'
,p_display_sequence=>160
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15119501337724788969)
,p_name=>'EDIT_LINK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Edit link'
,p_display_sequence=>180
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15466902320477804738)
,p_name=>'COLOR_LABEL'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color label'
,p_display_sequence=>170
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6877679384616153378)
,p_plug_name=>'Milestones'
,p_region_name=>'milestones_region'
,p_region_css_classes=>'timeline-edit-links'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_region_attributes=>'style="display: none;"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.id,',
'    m.milestone_name title,',
'    case when m.milestone_status = ''Completed'' then',
'            ''Black''',
'        when trunc(m.milestone_date) < trunc(current_date) then',
'            ''Red''',
'        when trunc(m.milestone_date) = trunc(current_date) then',
'            ''Yellow''',
'        else',
'            ''Green''',
'    end as color,',
'    case when trunc(m.milestone_date) < trunc(sysdate) and nvl(m.milestone_status,''Completed'') = ''Completed'' then',
'            ''Closed''',
'        when trunc(m.milestone_date) < trunc(sysdate) and nvl(m.milestone_status,''Completed'') != ''Completed'' then',
'            ''Past Due''',
'        when trunc(m.milestone_date) = trunc(sysdate) and nvl(m.milestone_status,''Completed'') != ''Completed'' then',
'            ''Due Today''',
'        when trunc(m.milestone_date) > trunc(sysdate) and nvl(m.milestone_status,''Completed'') != ''Completed'' then',
'            ''Due In The Future''',
'    end as color_label,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':107:''||:APP_SESSION',
'        ||'':::107:P107_ID,P107_PROJECT_ID,P200_ID:''',
'        ||m.id||'',''||m.project_id||'',''||m.project_id) link,',
'    p.project,',
'    case when eba_proj_fw.is_edit_authorized(',
'        p_username   => upper(:APP_USER),',
'        p_project_id => m.project_id ) = ''Y'' then',
'        decode(nvl(is_major_yn,''N''),''Y'',''<b>MAJOR MILESTONE</b>'',null) || ',
'        ''<a href="''',
'          ||apex_util.prepare_url(',
'              p_url => ''f?p=''||:APP_ID||'':48:''||:APP_SESSION||'':::48:P48_ID:''||m.id,',
'              p_triggering_element => ''$(''''#milestones_region'''')'')',
'          ||''" class="t-StatusList-editLink">Edit</a>''',
'    else',
'        decode(nvl(is_major_yn,''N''),''Y'',''<b>MAJOR MILESTONE</b>'',null)',
'    end as description3,',
'    milestone_description,',
'    milestone_date,',
'    milestone_status,',
'    to_char(milestone_start_date,''Month fmDD, fmYYYY'') milestone_start_date,',
'    case when owner_role_id is null then',
'        milestone_owner',
'    else',
'        nvl((select r.name||'': ''||listagg(lower(u.username),'', '')',
'                within group (order by lower(u.username)) owner',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.role_id = m.owner_role_id',
'                and rf.project_id = m.project_id',
'                and u.id = rf.user_id',
'                and r.id = rf.role_id',
'            group by r.name',
'        ), (select ''No ''||r.name||'' defined''',
'            from eba_proj_roles r',
'            where r.id = m.owner_role_id)',
'        )',
'    end as milestone_owner,',
'    nvl((select count(*) from eba_proj_status_ais a where a.milestone_id = m.id and a.action_status = ''Open''),0)',
'        ||'' Open Action Items'' ai_open',
'from eba_proj_status_ms m,',
'    eba_proj_status p,',
'    eba_proj_status_codes s',
'where p.id = m.project_id',
'    and p.project_status = s.id(+)',
'    and ( ( nvl(:P137_SHOW_CLOSED_MS,''OPEN'') = ''OPEN''',
'                and upper(m.milestone_status) = ''OPEN'' )',
'            or ( :P137_SHOW_CLOSED_MS = ''ALL''',
'               and upper(m.milestone_status) in (''OPEN'',''COMPLETED'') )',
'      )',
'    and (( m.owner_role_id is null',
'            and lower(m.milestone_owner) = lower(:P137_USERNAME) )',
'        or exists ( select null',
'                    from eba_proj_user_ref rf,',
'                        eba_proj_status_users u',
'                    where rf.role_id = m.owner_role_id',
'                        and rf.project_id = m.project_id',
'                        and u.id = rf.user_id',
'                        and lower(u.username) = lower(:P137_USERNAME) )',
'    )',
'    --and nvl(:P137_SHOW_REGION,''X'') = ''MILESTONES''',
'order by case when nvl(:P137_SHOW_CLOSED_MS,''OPEN'') = ''OPEN'' then m.milestone_date end asc, ',
'         case when :P137_SHOW_CLOSED_MS = ''ALL'' then to_char(m.milestone_date,''YYYYMMDD'') end desc',
''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_ajax_items_to_submit=>'P137_SHOW_CLOSED_MS,P137_SHOW_REGION'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No Milestones found.'
,p_attribute_01=>'MILESTONE_DATE'
,p_attribute_02=>'COLOR'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'LINK'
,p_attribute_05=>'PROJECT'
,p_attribute_06=>'MILESTONE_OWNER'
,p_attribute_07=>'MILESTONE_START_DATE'
,p_attribute_09=>'MILESTONE_DESCRIPTION'
,p_attribute_11=>'DESCRIPTION3'
,p_attribute_12=>'D'
,p_attribute_13=>'MILESTONE_STATUS'
,p_attribute_14=>'COLOR_LABEL'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877679539652153379)
,p_name=>'ID'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877679599086153380)
,p_name=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Title'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877679730511153381)
,p_name=>'COLOR'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color'
,p_display_sequence=>30
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877679849272153382)
,p_name=>'LINK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link'
,p_display_sequence=>40
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877679892170153383)
,p_name=>'PROJECT'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Project'
,p_display_sequence=>50
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877680165430153385)
,p_name=>'DESCRIPTION3'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Description3'
,p_display_sequence=>70
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877680225683153386)
,p_name=>'MILESTONE_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Milestone description'
,p_display_sequence=>80
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877680354457153387)
,p_name=>'MILESTONE_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_visible=>true
,p_heading=>'Milestone date'
,p_display_sequence=>90
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877680535494153389)
,p_name=>'MILESTONE_STATUS'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Status'
,p_display_sequence=>110
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877680753557153391)
,p_name=>'MILESTONE_START_DATE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Start'
,p_display_sequence=>130
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877680970446153393)
,p_name=>'MILESTONE_OWNER'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Owner(s)'
,p_display_sequence=>150
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877681135715153395)
,p_name=>'AI_OPEN'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Open Action Items'
,p_display_sequence=>170
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15466902434516804739)
,p_name=>'COLOR_LABEL'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color label'
,p_display_sequence=>180
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7577519465012437352)
,p_plug_name=>'Project Views'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_region_attributes=>'style="display: none;"'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6838514028548982455)
,p_plug_name=>'Project Views'
,p_parent_plug_id=>wwv_flow_api.id(7577519465012437352)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>80
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    NVL((select project from eba_proj_status p where p.id = c.project_id),''UNKNOWN'') project,',
'    PROJECT_ID,',
'    max(VIEW_TIMESTAMP) view_timestamp,',
'    count(*) total_views',
'from EBA_PROJ_STATUS_CLICKS c',
'where upper(:P137_USERNAME) = app_username',
'group by project_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(6838514094030982455)
,p_name=>'Project Views'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_icon_view_columns_per_row=>1
,p_owner=>'MIKE'
,p_internal_uid=>1533529714497844782
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6838514400543982470)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6838514618556982470)
,p_db_column_name=>'VIEW_TIMESTAMP'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Last View'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6838516094992002905)
,p_db_column_name=>'PROJECT'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:#PROJECT_ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(6838516408568016721)
,p_db_column_name=>'TOTAL_VIEWS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Total Views'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(6838514912562982676)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'15335306'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT:VIEW_TIMESTAMP:TOTAL_VIEWS'
,p_sort_column_1=>'TOTAL_VIEWS'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'VIEW_TIMESTAMP'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15321841415052843230)
,p_plug_name=>'Profile'
,p_region_css_classes=>'profile-block'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_country eba_proj_countries.country_name%type;',
'    l_region  eba_proj_regions.region_name%type;',
'begin',
'    sys.htp.p(''<div class="profile-photo-wrap">'');',
'    sys.htp.p(''<span class="profile-photo" style="background-image: url(''''''',
'        ||apex_util.prepare_url(''f?p=''||:APP_ID||''.:IMAGE:''||:APP_SESSION||''::::GET_ID:''',
'              ||apex_escape.html(:P137_USERNAME))',
'        ||'''''');"></span>'');',
'    sys.htp.p(''</div>'');',
'',
'    for c1 in (',
'      select id, ',
'             first_name ||'' ''||last_name full_name,',
'             email_address,',
'             NOTE,',
'             ACCESS_LEVEL_ID,',
'             PHONE_01,',
'             PHONE_02,',
'             title,',
'             address,',
'             home_timezone,',
'             country_id,',
'             region_id,',
'             team_groups,',
'             skillsets,',
'             hippa_cert_date,',
'             bg_checks,',
'             assistant_name,',
'             assistant_phone',
'        from eba_proj_status_users',
'       where username = upper(:P137_USERNAME)',
'    )',
'    loop',
'        sys.htp.p(''<span class="profile-intro">'');',
'',
'        if c1.title is not null then',
'            sys.htp.p(''<span class="profile-name">''||apex_escape.html(c1.full_name)||''<br><small>''||apex_escape.html(c1.title)||''</small></span>'');',
'        else',
'            sys.htp.p(''<span class="profile-name">''||apex_escape.html(c1.full_name)||''</span>'');',
'        end if;',
'',
'        sys.htp.p(''<span class="profile-text">''||apex_escape.html(c1.note)||''</span>'');',
'        sys.htp.p(''</span>'');',
'',
'        if c1.email_address is not null then',
'            sys.htp.p(''<span class="profile-attr"><span class="t-Icon fa fa-envelope-o"></span> <a href="mailto:''',
'                ||apex_escape.html(c1.email_address)||''">''||apex_escape.html(c1.email_address)||''</a></span>'');',
'        end if;',
'',
'        if c1.phone_01 is not null then',
'            sys.htp.p(''<br><span class="profile-attr"><span class="t-Icon fa fa-phone"></span> ''||apex_escape.html(c1.phone_01)||''</span>'');',
'        end if;',
'',
'        if c1.phone_02 is not null then',
'            sys.htp.p(''<br><span class="profile-attr"><span class="t-Icon fa fa-phone"></span> ''||apex_escape.html(c1.phone_02)||''</span>'');',
'        end if;',
'',
'        if c1.address is not null then',
'            sys.htp.p(''<br><span class="profile-attr"><span class="t-Icon fa fa-home"></span> ''||apex_escape.html(c1.address)||''</span>'');',
'        end if;',
'',
'        if c1.country_id is not null and c1.region_id is not null then',
'            select country_name into l_country from eba_proj_countries where id = c1.country_id;',
'            select region_name into l_region from eba_proj_regions where id = c1.region_id;',
'            sys.htp.p(''<br><span class="profile-attr"><span class="t-Icon fa fa-globe"></span> ''||apex_escape.html(l_country)||'' (''||apex_escape.html(l_region)||'')</span>'');',
'        elsif c1.country_id is not null and c1.region_id is null then',
'            select country_name into l_country from eba_proj_countries where id = c1.country_id;',
'            sys.htp.p(''<br><span class="profile-attr"><span class="t-Icon fa fa-globe"></span> ''||apex_escape.html(l_country)||''</span>'');',
'        elsif c1.country_id is null and c1.region_id is not null then',
'            select region_name into l_region from eba_proj_regions where id = c1.region_id;',
'            sys.htp.p(''<br><span class="profile-attr"><span class="t-Icon fa fa-globe"></span> ''||apex_escape.html(l_region)||''</span>'');',
'        end if;',
'        ',
'        if c1.home_timezone is not null then',
'            sys.htp.p(''<br><span class="profile-attr"><span class="t-Icon fa fa-clock-o"></span> ''||apex_escape.html(c1.home_timezone)||'' Timezone</span><br>'');',
'        end if;',
'        ',
'        if c1.assistant_name is not null and apex_util.get_build_option_status(p_application_id => :APP_ID, p_build_option_name => ''Assistant'') = ''INCLUDE'' then',
'            sys.htp.p(''<br><span class="profile-attr"><strong>Assistant:</strong><br>''||apex_escape.html(c1.assistant_name)||''</span>'');',
'        end if;',
'',
'        if c1.assistant_phone is not null and apex_util.get_build_option_status(p_application_id => :APP_ID, p_build_option_name => ''Assistant'') = ''INCLUDE'' then',
'            sys.htp.p(''<br><span class="profile-attr"><span class="t-Icon fa fa-phone"></span> ''||apex_escape.html(c1.assistant_phone)||''</span>'');',
'        end if;',
'',
'        if c1.team_groups is not null and apex_util.get_build_option_status(p_application_id => :APP_ID, p_build_option_name => ''Team Groups'') = ''INCLUDE'' then',
'            sys.htp.p(''<br><span class="profile-attr"><strong>Team Groups:</strong><br>''||apex_escape.html(c1.team_groups)||''</span>'');',
'        end if;',
'',
'        if c1.bg_checks is not null and apex_util.get_build_option_status(p_application_id => :APP_ID, p_build_option_name => ''Background Checks'') = ''INCLUDE'' then',
'            sys.htp.p(''<br><span class="profile-attr"><strong>Background Checks:</strong><br>''||apex_escape.html(c1.bg_checks)||''</span>'');',
'        end if;',
'',
'        if c1.hippa_cert_date is not null and apex_util.get_build_option_status(p_application_id => :APP_ID, p_build_option_name => ''HIPPA Certification Date'') = ''INCLUDE'' then',
'            sys.htp.p(''<br><span class="profile-attr"><strong>HIPPA Certified On:</strong><br>''||apex_escape.html(to_char(c1.hippa_cert_date,''Month fmddfm, YYYY''))||''</span>'');',
'        end if;',
'    end loop;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15338160786125893536)
,p_plug_name=>'Involvement'
,p_region_name=>'involvement_region'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_region_attributes=>'style="display: none;"'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    p.id,',
'    p.project,',
'    r.name role,',
'    case when eba_proj_fw.is_edit_authorized(p_username => upper(:APP_USER), p_project_id => p.id, p_min_auth => 3 ) = ''Y'' then',
'        ''<a href="''',
'            ||apex_util.prepare_url(''f?p=''||:APP_ID||'':150:''||:APP_SESSION||'':::150:P150_ID:''||rf.id)',
'            ||''"><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil"''',
'            ||''alt="Edit User''''s Involvement Level" title="Edit User''''s Involvement Level"></a>''',
'    else',
'        null',
'    end as edit_link,',
'    case',
'        when 1 = (select acl_status_level from eba_proj_status p where p.id = :P137_ID) then',
'            -- Open; show P-Track access level',
'            (   select access_level',
'                from eba_proj_status_access_levels pal',
'                where pal.id = u.access_level_id )',
'        else',
'            -- Restricted. Show project access level',
'            case nvl(rf.acl_status_level,r.default_acl_status_level)',
'                when 1 then ''Read Only''',
'                when 2 then ''Edit''',
'                when 3 then ''Full Access''',
'            end',
'    end as access_level,',
'    (   select involvement_level||decode(PERCENTAGE ,null,null,'' - ''||PERCENTAGE ||''%'') x',
'        from eba_proj_involvement_levels il',
'        where il.id = rf.involvement_level_id',
'    ) involvement,',
'    (   select PERCENTAGE x',
'        from eba_proj_involvement_levels il',
'        where il.id = rf.involvement_level_id',
'    ) involvement_pct,',
'    substr(notes,1,500)||decode(greatest( NVL(length(notes),0), 500),500,'''',''...'') notes,',
'    (select category from EBA_PROJ_STATUS_CATS  cat where cat.id = p.cat_id) category,',
'     p.updated,',
'     p.id project_id,',
'     eba_proj_stat_get_con_comp(p.id) complete_status, ',
'     (  select status_short_desc',
'                            from eba_proj_status_codes c',
'                            where c.id = p.project_status) project_status,',
'     (select decode(IS_CLOSED_STATUS ,''Y'',''No'',''Yes'') x from eba_proj_status_codes c',
'                            where c.id = p.project_status ) is_open,',
'     (select decode(IS_CLOSED_STATUS ,''Y'',''Closed'',''Open'') x from eba_proj_status_codes c',
'                            where c.id = p.project_status ) open_label,',
'     (select decode(IS_CLOSED_STATUS ,''Y'',''is-complete'',''is-info'') x from eba_proj_status_codes c',
'                            where c.id = p.project_status ) open_class,',
'    rf.id rf_id',
'from eba_proj_user_ref rf,',
'    eba_proj_roles r,',
'    eba_proj_status_users u,',
'    eba_proj_status p,',
'    eba_proj_status_codes sc,',
'    eba_proj_involvement_levels il',
'where u.id = :P137_ID',
'    and rf.project_id = p.id',
'    and rf.user_id = u.id',
'    and rf.role_id = r.id',
'    and il.id = rf.involvement_level_id',
'    and apex_util.get_build_option_status(',
'        p_application_id => :APP_ID,',
'        p_build_option_name => ''Project User Involvement''',
'    ) = ''INCLUDE''',
'    and sc.id = p.project_status',
'    and sc.is_closed_status = ''N'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_required_patch=>wwv_flow_api.id(12233039446649971820)
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(15338160841697893536)
,p_name=>'Involvement'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'MIKE'
,p_internal_uid=>14109684229003390408
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15338161195148893545)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15338161585737893547)
,p_db_column_name=>'PROJECT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP:P200_ID:#ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_link_attr=>'class="involvement-project-name"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15338161943454893548)
,p_db_column_name=>'ROLE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Role'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="involvement-user-role">#ROLE#</span>',
'<span class="involvement-user-notes">#NOTES#</span>'))
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15338162621807893549)
,p_db_column_name=>'INVOLVEMENT'
,p_display_order=>4
,p_column_identifier=>'E'
,p_column_label=>'Involvement'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.get_build_option_status(',
'    p_application_id => :APP_ID,',
'    p_build_option_name => ''Project User Involvement''',
') = ''INCLUDE'''))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15321854094663843256)
,p_db_column_name=>'INVOLVEMENT_PCT'
,p_display_order=>14
,p_column_identifier=>'O'
,p_column_label=>'Involvement'
,p_column_html_expression=>'<span class="involvement-pct">#INVOLVEMENT#</span>'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15338163082002893549)
,p_db_column_name=>'NOTES'
,p_display_order=>24
,p_column_identifier=>'F'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15338162263045893548)
,p_db_column_name=>'ACCESS_LEVEL'
,p_display_order=>34
,p_column_identifier=>'D'
,p_column_label=>'Access'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15338163439866893550)
,p_db_column_name=>'CATEGORY'
,p_display_order=>44
,p_column_identifier=>'G'
,p_column_label=>'&CAT_TITLE.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15338183862396893551)
,p_db_column_name=>'UPDATED'
,p_display_order=>54
,p_column_identifier=>'H'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15338184290237893552)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>64
,p_column_identifier=>'I'
,p_column_label=>'Project ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15338184712641893552)
,p_db_column_name=>'PROJECT_STATUS'
,p_display_order=>74
,p_column_identifier=>'J'
,p_column_label=>'Project Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15338559586409981061)
,p_db_column_name=>'COMPLETE_STATUS'
,p_display_order=>84
,p_column_identifier=>'K'
,p_column_label=>'Completeness'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15338560289970981069)
,p_db_column_name=>'IS_OPEN'
,p_display_order=>94
,p_column_identifier=>'L'
,p_column_label=>'Project Open'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15341526163981156754)
,p_db_column_name=>'RF_ID'
,p_display_order=>104
,p_column_identifier=>'M'
,p_column_label=>'Edit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15358580472623489731)
,p_db_column_name=>'EDIT_LINK'
,p_display_order=>114
,p_column_identifier=>'N'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17040873510867774045)
,p_db_column_name=>'OPEN_LABEL'
,p_display_order=>124
,p_column_identifier=>'P'
,p_column_label=>'Open Label'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17040873564123774046)
,p_db_column_name=>'OPEN_CLASS'
,p_display_order=>134
,p_column_identifier=>'Q'
,p_column_label=>'Open Class'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15338190752801900551)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'141097142'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT_LINK:PROJECT:ROLE:INVOLVEMENT_PCT:COMPLETE_STATUS:'
,p_sort_column_1=>'INVOLVEMENT_PCT'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'INVOLVEMENT'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'PROJECT'
,p_sort_direction_3=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(17098620684359728145)
,p_report_id=>wwv_flow_api.id(15338190752801900551)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'IS_OPEN'
,p_operator=>'='
,p_expr=>'Yes'
,p_condition_sql=>'"IS_OPEN" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Yes''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15447690105767361915)
,p_name=>'Status Reports'
,p_region_name=>'status_reports_region'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--noBorders:t-Report--rowHighlight'
,p_region_attributes=>'style="display: none;"'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    u.status_title,',
'    eba_proj_fw.format_status_report( dbms_lob.substr(u.status_update,450,1), ''Y'',:APP_ID,:APP_SESSION,u.project_id, ''N'', 400, u.id ) note_text,',
'    lower(u.update_owner) created_by,',
'    u.update_date created_on,',
'    u.id,',
'    u.update_date',
'from eba_proj_status_rpts u,',
'     eba_proj_status p',
'where u.project_id = p.id',
'    and u.update_owner = lower(:P137_USERNAME)',
'    and (( u.viewable_by = ''Submitter and Project Members''',
'               and exists ( select null',
'                            from eba_proj_user_ref rf,',
'                                eba_proj_status_users usr',
'                            where rf.project_id = p.id',
'                                and rf.user_id = usr.id',
'                                and lower(usr.username) = lower(:APP_USER)',
'                                and eba_proj_fw.is_edit_authorized( usr.username, rf.project_id ) = ''Y'' ))',
'        OR',
'         u.viewable_by = ''All''',
'        )',
'    --and nvl(:P137_SHOW_REGION,''X'') = ''STATUS_REPORTS''',
'order by u.update_date desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P137_SHOW_REGION'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>1500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No status reports'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(6195737494730111919)
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15447690335389361920)
,p_query_column_id=>1
,p_column_alias=>'STATUS_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Status Title'
,p_column_link=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:120:P120_STATUS_REPORT_ID:#ID#'
,p_column_linktext=>'#STATUS_TITLE#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15447690749296361922)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Status Report'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15447691190037361922)
,p_query_column_id=>3
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>3
,p_column_heading=>'Submitted By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15447691559618361922)
,p_query_column_id=>4
,p_column_alias=>'CREATED_ON'
,p_column_display_sequence=>4
,p_column_heading=>'Submitted'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15447691923625361923)
,p_query_column_id=>5
,p_column_alias=>'ID'
,p_column_display_sequence=>6
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15447692394905361923)
,p_query_column_id=>6
,p_column_alias=>'UPDATE_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Update Date'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18120638032132266572)
,p_plug_name=>'User Email Preferences'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>120
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_required_role=>wwv_flow_api.id(7306165779537991444)
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(19312141603299354461)
,p_name=>'Updates'
,p_region_name=>'updates_region'
,p_template=>wwv_flow_api.id(6781104626075890777)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_region_attributes=>'style="display: none;"'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select comment_modifiers,',
'    note_type,',
'    comment_text,',
'    attribute_1,',
'    attribute_2,',
'    attribute_3,',
'    attribute_4,',
'    user_name,',
'    comment_date,',
'    icon_modifier,',
'    user_icon,',
'    actions,',
'    gold_label,',
'    gold_class,',
'    update_id,',
'    update_date,',
'    apex_util.prepare_url(''f?p='' || :APP_ID || '':137:'' || :APP_SESSION || '':::137:P137_ID:'' || x.user_id) as profile_url,',
'    project,',
'    project_id',
'from (  ',
'    select * from (',
'    select '''' comment_modifiers, --use is-systemMessage for gray look',
'            t.status_update_type||decode(t.is_active_yn,''Y'','''','' (inactive)'') note_type,',
'            regexp_replace(nvl(u.formatted_update,u.status_update),',
'                           ''##BREAK##.*'',''<br />...<a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':129:''||:APP_SESSION',
'                                                        ||''::NO:129:P200_ID,P129_ID,P129_PROJECT_ID:''',
'                                                        ||u.project_id||'',''||u.id||'',''||u.project_id)||''">View More</a>'',',
'                          1,0,''n'') comment_text,',
'            '''' attribute_1,',
'            '''' attribute_2,',
'            '''' attribute_3,',
'            '''' attribute_4,',
'            decode(u.gold_yn, null, '' '', ''N'', null, ''Y'', ''Gold'') as gold_label,',
'            decode(u.gold_yn, null, '' '', ''N'', ''is-hidden'', ''Y'', ''is-warning'') as gold_class,',
'            decode(us.first_name,null,lower(us.username),decode(us.last_name, null, lower(us.username), initcap(us.first_name || '' '' || us.last_name))) user_name,',
'            u.update_date comment_date,',
'            case',
'               when dbms_lob.getlength(us.photo_blob) > 0 then',
'                   ''comment-user-has-photo''',
'               else',
'                   ''u-color-''||(ora_hash(u.created_by,44) + 1)',
'            end icon_modifier,',
'',
'            -- get user photo or initials',
'            case',
'                when dbms_lob.getlength(us.photo_blob) > 0 then',
'                    ''<span class="small-profile-photo" style="background-image: url(''''''',
'                      ||apex_util.prepare_url(''f?p=''||:APP_ID||'':IMAGE:''||:APP_SESSION||''::::GET_ID:''||apex_escape.html(us.username))',
'                      ||'''''');"></span>''',
'                else',
'                    upper(decode(instr(replace(u.created_by,''.'','' ''),'' ''),',
'                                 0, ',
'                                 substr(u.created_by,1,2),',
'                                 substr(u.created_by,1,1)||substr(u.created_by,instr(replace(u.created_by,''.'','' ''),'' '')+1,1)',
'                          ))',
'            end user_icon,',
'            --',
'            case when eba_proj_fw.is_edit_authorized( p_username => upper(:APP_USER),',
'                                                      p_project_id => u.project_id ) = ''Y''',
'                    then ''Edit''',
'                else ''''',
'            end as actions,',
'            u.id update_id,',
'            u.update_date,',
'            us.id as user_id,',
'            (select project from EBA_PROJ_STATUS p where p.id = u.project_id) project,',
'            u.project_id project_id',
'        from eba_proj_status_updates u,',
'             eba_proj_status_update_types t,',
'             eba_proj_status_users us',
'        where upper(u.update_owner) = us.username',
'          and u.update_type = t.id(+)',
'          and ( u.update_owner = lower(:P137_USERNAME) )',
'         -- and nvl(:P137_SHOW_REGION,''X'') = ''UPDATES''',
'        -- eba_proj_status_users.username is forced to upper via trigger',
'        -- eba_proj_status_updates.owner is forced to lower via trigger',
'      order by u.update_date desc',
'      ) where rownum < 20',
') x'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P137_SHOW_REGION'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781121834246890819)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Updates'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(6195737494730111919)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312158031561357717)
,p_query_column_id=>1
,p_column_alias=>'COMMENT_MODIFIERS'
,p_column_display_sequence=>2
,p_column_heading=>'Comment Modifiers'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312158454996357718)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Note Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312158852416357720)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Comment Text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312159254221357722)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>5
,p_column_heading=>'Attribute 1'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312159644753357724)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>6
,p_column_heading=>'Attribute 2'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312160102915357726)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>7
,p_column_heading=>'Attribute 3'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312160466527357727)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>8
,p_column_heading=>'Attribute 4'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312160890492357730)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>9
,p_column_heading=>'User Name'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:#PROJECT_ID#'
,p_column_linktext=>'#PROJECT#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312161244962357733)
,p_query_column_id=>9
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Comment Date'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312161685104357735)
,p_query_column_id=>10
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>11
,p_column_heading=>'Icon Modifier'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312161967151357737)
,p_query_column_id=>11
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>12
,p_column_heading=>'User Icon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312162329743357738)
,p_query_column_id=>12
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>13
,p_column_heading=>'Actions'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12:P12_ID:#UPDATE_ID#'
,p_column_linktext=>'#ACTIONS#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312162753529357738)
,p_query_column_id=>13
,p_column_alias=>'GOLD_LABEL'
,p_column_display_sequence=>14
,p_column_heading=>'Gold Label'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312163129298357739)
,p_query_column_id=>14
,p_column_alias=>'GOLD_CLASS'
,p_column_display_sequence=>15
,p_column_heading=>'Gold Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312173591899357741)
,p_query_column_id=>15
,p_column_alias=>'UPDATE_ID'
,p_column_display_sequence=>16
,p_column_heading=>'Update Id'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312153827159354468)
,p_query_column_id=>16
,p_column_alias=>'UPDATE_DATE'
,p_column_display_sequence=>1
,p_column_heading=>'Update Date'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(19312173929020357745)
,p_query_column_id=>17
,p_column_alias=>'PROFILE_URL'
,p_column_display_sequence=>17
,p_column_heading=>'Profile Url'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18937125730216941833)
,p_query_column_id=>18
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>18
,p_column_heading=>'Project'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18377069601727074944)
,p_query_column_id=>19
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>19
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17382364495956814359)
,p_button_sequence=>3
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'REFRESH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Refresh'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15330500059596547232)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'UPDATE_MY_PROFILE'
,p_button_static_id=>'update_my_profile'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update My Profile'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:195:&SESSION.::&DEBUG.:RP:P195_ID:&P137_ID.'
,p_button_condition=>'upper(:P137_USERNAME) = upper(:APP_USER)'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15466903128916804746)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'UPDATE_USER_PROFILE'
,p_button_static_id=>'update_user_profile'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update &P137_DISPLAY_NAME.''s Profile'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:195:&SESSION.::&DEBUG.:RP,195:P195_ID:&P137_ID.'
,p_button_condition=>'upper(:P137_USERNAME) != upper(:APP_USER)'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15168145210433469067)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15338160786125893536)
,p_button_name=>'RESET_INVOLVEMENT_IRR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR:P137_ID,P137_USERNAME:&P137_ID.,&P137_USERNAME.'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7577519591846437353)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6838514028548982455)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15572838676889687273)
,p_branch_name=>'Redirect back to home'
,p_branch_action=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>'select id from eba_proj_status_users where id = :P137_ID'
,p_branch_comment=>'Redirect user back to homepage when P137_ID is not valid. This prevents tampering with the URL.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4145553206134246203)
,p_name=>'P137_SHOW_CLOSED_ISSUES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4145553109463246202)
,p_item_default=>'OPEN'
,p_prompt=>'Show All Issues'
,p_source=>'OPEN'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Include Closed;ALL'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_css_classes=>'region-filters'
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4145553374466246204)
,p_name=>'P137_SHOW_L1_ISSUES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4145553109463246202)
,p_item_default=>'ALL'
,p_prompt=>'Show Only Level 1 Issues'
,p_source=>'ALL'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Level 1;1'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_css_classes=>'region-filters'
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4187298609583846506)
,p_name=>'P137_SHOW_L2_ISSUES'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(4145553109463246202)
,p_item_default=>'ALL'
,p_prompt=>'Show Level 2 Issues'
,p_source=>'ALL'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Level 2;2'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_css_classes=>'region-filters'
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4200107037131826260)
,p_name=>'P137_SHOW_L3_ISSUES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(4145553109463246202)
,p_item_default=>'ALL'
,p_prompt=>'Show Level 3 Issues'
,p_source=>'ALL'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Level 3;3'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_css_classes=>'region-filters'
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4200107662751826266)
,p_name=>'P137_SHOW_L4_ISSUES'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(4145553109463246202)
,p_item_default=>'ALL'
,p_prompt=>'Show Level 4 Issues'
,p_source=>'ALL'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Level 4;4'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_css_classes=>'region-filters'
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6838283089063147130)
,p_name=>'P137_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6838282874526141186)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15168145307357469068)
,p_name=>'P137_DISPLAY_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6838282874526141186)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15168145528908469071)
,p_name=>'P137_SHOW_CLOSED_AIS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6876861663185531975)
,p_prompt=>'Show All Action Items'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Include Closed;ALL'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_css_classes=>'region-filters'
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15168146187879469077)
,p_name=>'P137_SHOW_CLOSED_MS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6877679384616153378)
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Include Completed;ALL'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_css_classes=>'region-filters'
,p_item_template_options=>'#DEFAULT#:margin-left-none'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15321842055507843236)
,p_name=>'P137_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6838282874526141186)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15572835064504687237)
,p_name=>'P137_SHOW_REGION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6838282874526141186)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18120638145762266573)
,p_name=>'P137_PAST_DUE_EMAIL_PREF'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18120638032132266572)
,p_prompt=>'Past Due Milestones and Action Items Emails'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(11985127837396710533)
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18120638299086266574)
,p_name=>'P137_UPCOMING_EMAIL_PREF'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18120638032132266572)
,p_prompt=>'Upcoming Milestones and Action Items Emails'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(11997357717598129643)
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18120638329875266575)
,p_name=>'P137_PROJECT_SUMMARY_EMAIL_PREF'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18120638032132266572)
,p_prompt=>'Project Details Emails'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(15873378907956721107)
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20728278758359320248)
,p_name=>'P137_PROJECT_STATUS_EMAIL_PREF'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18120638032132266572)
,p_prompt=>'Project Status Emails'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(18632926167418630398)
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18120638506504266576)
,p_computation_sequence=>10
,p_computation_item=>'P137_PAST_DUE_EMAIL_PREF'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select initcap(PAST_DUE_REMINDERS_FREQ) from EBA_PROJ_STATUS_USERS where id = :P137_ID;'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(11985127837396710533)
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18120638560106266577)
,p_computation_sequence=>20
,p_computation_item=>'P137_UPCOMING_EMAIL_PREF'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select initcap(UPCOMING_REMINDERS_FREQ) from EBA_PROJ_STATUS_USERS where id = :P137_ID;'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(11997357717598129643)
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18120638615075266578)
,p_computation_sequence=>30
,p_computation_item=>'P137_PROJECT_SUMMARY_EMAIL_PREF'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select initcap(PROJECT_SUMMARY_FAV_FREQ) from EBA_PROJ_STATUS_USERS where id = :P137_ID;'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(15873378907956721107)
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(20728278884170320249)
,p_computation_sequence=>40
,p_computation_item=>'P137_PROJECT_STATUS_EMAIL_PREF'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select initcap(PROJECT_STATUS_FAV_FREQ) from EBA_PROJ_STATUS_USERS where id = :P137_ID;'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(18632926167418630398)
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13414313734559285737)
,p_computation_sequence=>20
,p_computation_item=>'PROJECT_CAME_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(15335833703915648129)
,p_computation_sequence=>30
,p_computation_item=>'P137_USERNAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select username',
'from EBA_PROJ_STATUS_USERS',
'where id = :P137_ID'))
,p_computation_error_message=>'unable to set username, unexpected error'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(15168145409253469069)
,p_computation_sequence=>40
,p_computation_item=>'P137_DISPLAY_NAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select eba_proj_fw.get_name_from_email_address(u.username)',
'from EBA_PROJ_STATUS_USERS u',
'where id = :P137_ID'))
,p_computation_error_message=>'unable to set username, unexpected error'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(15572837985519687266)
,p_computation_sequence=>60
,p_computation_item=>'P137_SHOW_CLOSED_AIS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'OPEN'
,p_compute_when=>'P137_SHOW_CLOSED_AIS'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(15572838066707687267)
,p_computation_sequence=>70
,p_computation_item=>'P137_SHOW_CLOSED_MS'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'OPEN'
,p_compute_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15168145697108469072)
,p_name=>'Refresh AI Timeline'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P137_SHOW_CLOSED_AIS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15168145765379469073)
,p_event_id=>wwv_flow_api.id(15168145697108469072)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876861663185531975)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15168146244587469078)
,p_name=>'Refresh Issues Report Closed'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P137_SHOW_CLOSED_ISSUES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15358580359757489730)
,p_event_id=>wwv_flow_api.id(15168146244587469078)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P137_SHOW_CLOSED_ISSUES := nvl(:P137_SHOW_CLOSED_ISSUES,''OPEN'');'
,p_attribute_02=>'P137_SHOW_CLOSED_ISSUES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4187296662514846486)
,p_event_id=>wwv_flow_api.id(15168146244587469078)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4145553109463246202)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4187298220761846502)
,p_name=>'Refresh Issues Report L1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P137_SHOW_L1_ISSUES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4187298302265846503)
,p_event_id=>wwv_flow_api.id(4187298220761846502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P137_SHOW_L1_ISSUES := nvl(:P137_SHOW_L1_ISSUES,''ALL'');'
,p_attribute_02=>'P137_SHOW_L1_ISSUES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4187298473809846504)
,p_event_id=>wwv_flow_api.id(4187298220761846502)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4145553109463246202)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4200106764171826257)
,p_name=>'Refresh Issues Report L2'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P137_SHOW_L2_ISSUES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4200106864407826258)
,p_event_id=>wwv_flow_api.id(4200106764171826257)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P137_SHOW_L2_ISSUES := nvl(:P137_SHOW_L2_ISSUES,''ALL'');'
,p_attribute_02=>'P137_SHOW_L2_ISSUES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4200106918287826259)
,p_event_id=>wwv_flow_api.id(4200106764171826257)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4145553109463246202)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4200107141523826261)
,p_name=>'Refresh Issues Report L3'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P137_SHOW_L3_ISSUES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4200107205381826262)
,p_event_id=>wwv_flow_api.id(4200107141523826261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P137_SHOW_L3_ISSUES := nvl(:P137_SHOW_L3_ISSUES,''ALL'');'
,p_attribute_02=>'P137_SHOW_L3_ISSUES'
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
 p_id=>wwv_flow_api.id(4200107380889826263)
,p_event_id=>wwv_flow_api.id(4200107141523826261)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4145553109463246202)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4200107718884826267)
,p_name=>'Refresh Issues Report L4'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P137_SHOW_L4_ISSUES'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4200107842824826268)
,p_event_id=>wwv_flow_api.id(4200107718884826267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P137_SHOW_L4_ISSUES := nvl(:P137_SHOW_L4_ISSUES,''ALL'');'
,p_attribute_02=>'P137_SHOW_L4_ISSUES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4200107969172826269)
,p_event_id=>wwv_flow_api.id(4200107718884826267)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4145553109463246202)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15321842396025843239)
,p_name=>'Stick Region Display Selector'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15321842474349843240)
,p_event_id=>wwv_flow_api.id(15321842396025843239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6838507318278807154)
,p_attribute_01=>'$(this.affectedElements).stickyWidget({toggleWidth: true});'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15119501457024788970)
,p_name=>'Update Action Items'
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(6876861663185531975)
,p_bind_type=>'live'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15119501583557788971)
,p_event_id=>wwv_flow_api.id(15119501457024788970)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876861663185531975)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15119501619338788972)
,p_name=>'Update Milestones'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(6877679384616153378)
,p_bind_type=>'live'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15119501723560788973)
,p_event_id=>wwv_flow_api.id(15119501619338788972)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6877679384616153378)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15466902971878804744)
,p_name=>'Refresh Profile on Dialog Close'
,p_event_sequence=>110
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#update_my_profile, #update_user_profile'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15466903066864804745)
,p_event_id=>wwv_flow_api.id(15466902971878804744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15572834622587687233)
,p_name=>'Badgelist Navigation'
,p_event_sequence=>120
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.t-BadgeList-wrap'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#summary_region'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15572834765965687234)
,p_event_id=>wwv_flow_api.id(15572834622587687233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var activeTab = $(this.triggeringElement).attr(''href'').substr(1);',
'$("li.apex-rds-item[aria-controls=''"+activeTab+"_region''] a").click();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15466915006983804764)
,p_name=>'Refresh MS Timeline'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P137_SHOW_CLOSED_MS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15466915139517804766)
,p_event_id=>wwv_flow_api.id(15466915006983804764)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6877679384616153378)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15572834839629687235)
,p_name=>'Show Projects on Tab Active'
,p_event_sequence=>140
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'li.apex-rds-item[aria-controls=''projects_region''] a'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P137_SHOW_REGION'') !== ''PROJECTS'''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15572835003005687236)
,p_event_id=>wwv_flow_api.id(15572834839629687235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_SHOW_REGION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'PROJECTS'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15572835135119687238)
,p_event_id=>wwv_flow_api.id(15572834839629687235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6838505578045797693)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15572835283429687239)
,p_name=>'Show Involvement on Tab Active'
,p_event_sequence=>150
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'li.apex-rds-item[aria-controls=''involvement_region''] a'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P137_SHOW_REGION'') !== ''INVOLVEMENT'''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15572835348326687240)
,p_event_id=>wwv_flow_api.id(15572835283429687239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_SHOW_REGION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'INVOLVEMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15572835447438687241)
,p_event_id=>wwv_flow_api.id(15572835283429687239)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15338160786125893536)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15572835617951687243)
,p_name=>'Show Status Reports on Tab Active'
,p_event_sequence=>160
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'li.apex-rds-item[aria-controls=''status_reports_region''] a'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P137_SHOW_REGION'') !== ''STATUS_REPORTS'''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15572835780954687244)
,p_event_id=>wwv_flow_api.id(15572835617951687243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_SHOW_REGION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'STATUS_REPORTS'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15572835846400687245)
,p_event_id=>wwv_flow_api.id(15572835617951687243)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15447690105767361915)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15572835975013687246)
,p_name=>'Show Action Items on Tab Active'
,p_event_sequence=>170
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'li.apex-rds-item[aria-controls=''action_items_region''] a'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P137_SHOW_REGION'') !== ''ACTION_ITEMS'''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15572837281230687259)
,p_event_id=>wwv_flow_api.id(15572835975013687246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_SHOW_REGION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'ACTION_ITEMS'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15572836193331687248)
,p_event_id=>wwv_flow_api.id(15572835975013687246)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876861663185531975)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15572836507250687251)
,p_name=>'Show Milestones on Tab Active'
,p_event_sequence=>180
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'li.apex-rds-item[aria-controls=''milestones_region''] a'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P137_SHOW_REGION'') !== ''MILESTONES'''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15572836549188687252)
,p_event_id=>wwv_flow_api.id(15572836507250687251)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_SHOW_REGION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'MILESTONES'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15572836711234687253)
,p_event_id=>wwv_flow_api.id(15572836507250687251)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6877679384616153378)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15572836912129687255)
,p_name=>'Show Issues on Tab Active'
,p_event_sequence=>190
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'li.apex-rds-item[aria-controls=''issues_region''] a'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P137_SHOW_REGION'') !== ''ISSUES'''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15572836981986687256)
,p_event_id=>wwv_flow_api.id(15572836912129687255)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_SHOW_REGION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'ISSUES'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4187298596070846505)
,p_event_id=>wwv_flow_api.id(15572836912129687255)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4145553109463246202)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18377069618203074945)
,p_name=>'Show Updates on Tab Active'
,p_event_sequence=>200
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'li.apex-rds-item[aria-controls=''updates_region''] a'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P137_SHOW_REGION'') !== ''UPDATES'''
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18377069745124074946)
,p_event_id=>wwv_flow_api.id(18377069618203074945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P137_SHOW_REGION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'UPDATES'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18377069846873074947)
,p_event_id=>wwv_flow_api.id(18377069618203074945)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(19312141603299354461)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17040873258233774043)
,p_name=>'Refresh Involvement'
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(15338160786125893536)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17040873369684774044)
,p_event_id=>wwv_flow_api.id(17040873258233774043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15338160786125893536)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18377070073267074949)
,p_name=>'Refresh Updates'
,p_event_sequence=>220
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(19312141603299354461)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18377070179268074950)
,p_event_id=>wwv_flow_api.id(18377070073267074949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(19312141603299354461)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4200107473936826264)
,p_name=>'Refresh Issues after edit'
,p_event_sequence=>230
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(4145553109463246202)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4200107520073826265)
,p_event_id=>wwv_flow_api.id(4200107473936826264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4145553109463246202)
);
wwv_flow_api.component_end;
end;
/
