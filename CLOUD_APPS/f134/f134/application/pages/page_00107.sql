prompt --application/pages/page_00107
begin
--   Manifest
--     PAGE: 00107
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
 p_id=>107
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Project Milestone'
,p_step_title=>'Project Milestone'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956244298529599071)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.timeline-edit-links .t-StatusList-editLink { position: absolute; right: 8px; top: 8px; font-size: 12px; line-height: 16px; float: right; padding: 4px 8px }',
'.timeline-edit-links .t-StatusList-itemBody { position: relative }',
'.timeline-edit-links .t-StatusList-item { border-bottom: 1px solid rgba(0, 0, 0, .05) }',
'.timeline-edit-links .t-StatusList-item:last-child { border-bottom: none }',
''))
,p_step_template=>wwv_flow_api.id(6781087329086890751)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This page displays all of a milestone''s details. It also shows a list of the milestone''s associated action items. Two mini calendar regions on the right of the page display when the milestone is due and when it was created.'
,p_last_upd_yyyymmddhh24miss=>'20190905135846'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5404081007795339677)
,p_plug_name=>'Milestone Action Items'
,p_region_css_classes=>'timeline-edit-links'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    a.action title,',
'    case when a.ACTION_STATUS = ''Closed'' then',
'            ''Black''',
'        when trunc(a.due_date) < trunc(sysdate) then',
'            ''Red''',
'        when trunc(a.due_date) = trunc(sysdate) then',
'            ''Yellow''',
'        else',
'            ''Green''',
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
'                ||'':::78:LAST_VIEW,P78_ACTION_ITEM_ID,P55_ID,P107_ID:107,''',
'                ||a.id||'',''||:P107_PROJECT_ID||'',''||:P107_ID) link,',
'    decode(PARENT_PROJECT_ID,null,null,''Parent Project: ''||(select PROJECT d from eba_proj_status where id = s.PARENT_PROJECT_ID)) parent_project,',
'    s.project,',
'    a.action_description,',
'    a.ACTION_STATUS status,',
'    a.due_date due_date,',
'    case when owner_role_id is null then',
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
'    ''Project'' project_label,',
'    ''Status'' status_label,',
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
'    and a.milestone_id = :P107_ID',
'order by a.due_date, a.action'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_plug_query_num_rows=>5000
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'DUE_DATE'
,p_attribute_02=>'COLOR'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'LINK'
,p_attribute_05=>'PROJECT'
,p_attribute_06=>'DUE_DATE'
,p_attribute_07=>'OWNER'
,p_attribute_11=>'EDIT_LINK'
,p_attribute_12=>'D'
,p_attribute_13=>'STATUS'
,p_attribute_14=>'COLOR_LABEL'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5390800179349692688)
,p_name=>'PROJECT_LABEL'
,p_data_type=>'PROJECT_LABEL'
,p_is_visible=>true
,p_heading=>'Project label'
,p_display_sequence=>120
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5390800271406692689)
,p_name=>'STATUS_LABEL'
,p_data_type=>'STATUS_LABEL'
,p_is_visible=>true
,p_heading=>'Status label'
,p_display_sequence=>130
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5404081413412339682)
,p_name=>'ID'
,p_data_type=>'ID'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5404081947658339683)
,p_name=>'TITLE'
,p_data_type=>'TITLE'
,p_is_visible=>true
,p_heading=>'Title'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5404082436943339683)
,p_name=>'COLOR'
,p_data_type=>'COLOR'
,p_is_visible=>true
,p_heading=>'Color'
,p_display_sequence=>30
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5404082924110339683)
,p_name=>'LINK'
,p_data_type=>'LINK'
,p_is_visible=>true
,p_heading=>'Link'
,p_display_sequence=>40
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5404083445147339684)
,p_name=>'PARENT_PROJECT'
,p_data_type=>'PARENT_PROJECT'
,p_is_visible=>true
,p_heading=>'Parent project'
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
 p_id=>wwv_flow_api.id(5404083894228339684)
,p_name=>'PROJECT'
,p_data_type=>'PROJECT'
,p_is_visible=>true
,p_heading=>'Project'
,p_display_sequence=>60
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5404084408026339685)
,p_name=>'ACTION_DESCRIPTION'
,p_data_type=>'ACTION_DESCRIPTION'
,p_is_visible=>true
,p_heading=>'Action description'
,p_display_sequence=>70
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5404084950299339685)
,p_name=>'STATUS'
,p_data_type=>'STATUS'
,p_is_visible=>true
,p_heading=>'Status'
,p_display_sequence=>80
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5404085399867339685)
,p_name=>'DUE_DATE'
,p_data_type=>'DUE_DATE'
,p_is_visible=>true
,p_heading=>'Due date'
,p_display_sequence=>90
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5404085929716339686)
,p_name=>'OWNER'
,p_data_type=>'OWNER'
,p_is_visible=>true
,p_heading=>'Owner'
,p_display_sequence=>100
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5404086419158339686)
,p_name=>'ROW_KEY'
,p_data_type=>'ROW_KEY'
,p_is_visible=>true
,p_heading=>'Row key'
,p_display_sequence=>110
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15119499948633788955)
,p_name=>'EDIT_LINK'
,p_data_type=>'EDIT_LINK'
,p_is_visible=>true
,p_heading=>'Edit link'
,p_display_sequence=>140
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15466901989515804734)
,p_name=>'COLOR_LABEL'
,p_data_type=>'COLOR_LABEL'
,p_is_visible=>true
,p_heading=>'Color label'
,p_display_sequence=>150
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6079360295912588372)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6079363603658766416)
,p_plug_name=>'Hidden'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6079367305651785874)
,p_name=>'Milestone'
,p_template=>wwv_flow_api.id(6781104626075890777)
,p_display_sequence=>20
,p_region_css_classes=>'flex_milestones'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select p.project || '' (''|| nvl(eba_proj_fw.get_project_rowkey(p_project_id => p.id), p.row_key) ||'')'' project',
'        from eba_proj_status p',
'        where p.id = m.project_id) project,',
'    m.milestone_name       milestone,',
'    m.milestone_start_date start_date,',
'    m.milestone_date       due_date,',
'    m.milestone_status     status,',
'    m.completed_date,',
'    m.tags,',
'    case when m.owner_role_id is null then',
'        m.milestone_owner',
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
'    end as owner,',
'    decode(m.is_major_yn,''Y'',''Yes'',''N'',''No'',null,''No'') major_milestone,',
'    m.milestone_description description,',
'    m.row_key,',
'    m.milestone_flex_01,',
'    m.milestone_flex_02,',
'    m.milestone_flex_03,',
'    m.milestone_flex_04,',
'    m.milestone_flex_05,',
'    m.milestone_flex_06,',
'    m.milestone_flex_07,',
'    m.milestone_flex_08,',
'    m.milestone_flex_n01,',
'    m.milestone_flex_n02,',
'    m.milestone_flex_n03,',
'    m.milestone_flex_n04,',
'    m.milestone_flex_d01,',
'    m.milestone_flex_d02,',
'    m.milestone_flex_d03,',
'    m.milestone_flex_d04,',
'    m.milestone_flex_clob,',
'    m.created,',
'    lower(m.created_by) as created_by,',
'    m.updated,',
'    lower(m.updated_by) as updated_by',
'from eba_proj_status_ms m',
'where m.id = :P107_id',
'order by m.id'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781124130846890827)
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6079367597783785876)
,p_query_column_id=>1
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_column_heading=>'Project'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6079367690161785878)
,p_query_column_id=>2
,p_column_alias=>'MILESTONE'
,p_column_display_sequence=>2
,p_column_heading=>'Milestone'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6079367808347785878)
,p_query_column_id=>3
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Start Date'
,p_use_as_row_header=>'N'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6079367903663785878)
,p_query_column_id=>4
,p_column_alias=>'DUE_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Due Date'
,p_use_as_row_header=>'N'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6079367988210785878)
,p_query_column_id=>5
,p_column_alias=>'STATUS'
,p_column_display_sequence=>5
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21157149655242596443)
,p_query_column_id=>6
,p_column_alias=>'COMPLETED_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'Completed'
,p_use_as_row_header=>'N'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status_ms',
'where id = :P107_ID',
'and completed_date is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(795212166647825686)
,p_query_column_id=>7
,p_column_alias=>'TAGS'
,p_column_display_sequence=>6
,p_column_heading=>'Tags'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status_ms',
'where id = :P107_ID',
'and tags is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6079368099669785878)
,p_query_column_id=>8
,p_column_alias=>'OWNER'
,p_column_display_sequence=>8
,p_column_heading=>'Owner'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6079368188349785878)
,p_query_column_id=>9
,p_column_alias=>'MAJOR_MILESTONE'
,p_column_display_sequence=>9
,p_column_heading=>'Major Milestone'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6079368280416785878)
,p_query_column_id=>10
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>10
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6180720884031154028)
,p_query_column_id=>11
,p_column_alias=>'ROW_KEY'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263863392414150257)
,p_query_column_id=>12
,p_column_alias=>'MILESTONE_FLEX_01'
,p_column_display_sequence=>12
,p_column_heading=>'Milestone Flex'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263863504005150261)
,p_query_column_id=>13
,p_column_alias=>'MILESTONE_FLEX_02'
,p_column_display_sequence=>13
,p_column_heading=>'Milestone Flex 02'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263863600478150261)
,p_query_column_id=>14
,p_column_alias=>'MILESTONE_FLEX_03'
,p_column_display_sequence=>14
,p_column_heading=>'Arg'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263863700737150262)
,p_query_column_id=>15
,p_column_alias=>'MILESTONE_FLEX_04'
,p_column_display_sequence=>15
,p_column_heading=>'F1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263863809427150262)
,p_query_column_id=>16
,p_column_alias=>'MILESTONE_FLEX_05'
,p_column_display_sequence=>16
,p_column_heading=>'F1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263863884897150262)
,p_query_column_id=>17
,p_column_alias=>'MILESTONE_FLEX_06'
,p_column_display_sequence=>17
,p_column_heading=>'F1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_06'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263864007714150262)
,p_query_column_id=>18
,p_column_alias=>'MILESTONE_FLEX_07'
,p_column_display_sequence=>18
,p_column_heading=>'F1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263864084435150262)
,p_query_column_id=>19
,p_column_alias=>'MILESTONE_FLEX_08'
,p_column_display_sequence=>19
,p_column_heading=>'F1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263864191387150262)
,p_query_column_id=>20
,p_column_alias=>'MILESTONE_FLEX_N01'
,p_column_display_sequence=>20
,p_column_heading=>'Estimated Cost (in Man Hours)'
,p_use_as_row_header=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_N01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263864286830150262)
,p_query_column_id=>21
,p_column_alias=>'MILESTONE_FLEX_N02'
,p_column_display_sequence=>21
,p_column_heading=>'F1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_N02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263864384957150262)
,p_query_column_id=>22
,p_column_alias=>'MILESTONE_FLEX_N03'
,p_column_display_sequence=>22
,p_column_heading=>'F1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_N03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263864511043150262)
,p_query_column_id=>23
,p_column_alias=>'MILESTONE_FLEX_N04'
,p_column_display_sequence=>23
,p_column_heading=>'F1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_N04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263864584783150263)
,p_query_column_id=>24
,p_column_alias=>'MILESTONE_FLEX_D01'
,p_column_display_sequence=>24
,p_column_heading=>'F1'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_D01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263864705739150263)
,p_query_column_id=>25
,p_column_alias=>'MILESTONE_FLEX_D02'
,p_column_display_sequence=>25
,p_column_heading=>'Milestone Flex D02'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_D02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263864782855150263)
,p_query_column_id=>26
,p_column_alias=>'MILESTONE_FLEX_D03'
,p_column_display_sequence=>26
,p_column_heading=>'Milestone Flex D03'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_D03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263864900931150263)
,p_query_column_id=>27
,p_column_alias=>'MILESTONE_FLEX_D04'
,p_column_display_sequence=>27
,p_column_heading=>'Milestone Flex D04'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_D04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6263865008046150263)
,p_query_column_id=>28
,p_column_alias=>'MILESTONE_FLEX_CLOB'
,p_column_display_sequence=>28
,p_column_heading=>'LT Test'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_CLOB'' and active_yn = ''Y'' and assigned_yn = ''Y'''
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18175885571135760642)
,p_query_column_id=>29
,p_column_alias=>'CREATED'
,p_column_display_sequence=>29
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_column_format=>'since'
,p_column_html_expression=>'#CREATED# by #CREATED_BY#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18175885646915760643)
,p_query_column_id=>30
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18175885722564760644)
,p_query_column_id=>31
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>31
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'since'
,p_column_html_expression=>'#UPDATED# by #UPDATED_BY#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18175885824428760645)
,p_query_column_id=>32
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6079376381634845164)
,p_name=>'History'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select '''' COMMENT_MODIFIERS,',
'    ''Automatic Update'' note_type,',
'    replace(initcap(replace(replace(f.column_name,''_ID'',null),''_'','' '')), chr(10),''<br>'') COMMENT_TEXT,',
'    case',
'        when substr(f.old_value, 3, 1) = ''-'' and substr(f.old_value, 7, 1) = ''-'' and length(f.old_value) > 11 then',
'            '' changed from "'' || substr(f.old_value, 1, 11) || ''"''',
'        else',
'            '' changed from "'' || f.old_value || ''"''',
'    end as attribute_1,',
'    case',
'        when substr(f.new_value, 3, 1) = ''-'' and substr(f.new_value, 7, 1) = ''-'' and length(f.new_value) > 11 then',
'            '' to "'' || substr(f.new_value, 1, 11) || ''"''',
'        else',
'            '' to "'' || f.new_value || ''"''',
'    end as attribute_2,',
'    '' '' attribute_3,',
'    '' '' attribute_4,',
'    lower(f.changed_by) user_name,',
'    apex_util.get_since(f.change_date) created_on,',
'    '' '' link,',
'    null update_id,',
'    f.change_date comment_date,',
'    '''' actions,',
'    upper(',
'          decode(instr(replace(f.changed_by,''.'','' ''),'' ''),',
'                 0, ',
'                 substr(f.changed_by,1,2),',
'                 substr(f.changed_by,1,1)||substr(f.changed_by,instr(replace(f.changed_by,''.'','' ''),'' '')+1,1)',
'           )) user_icon',
'from eba_proj_history f',
'where component_id = :P107_ID ',
'order by f.change_date desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781121834246890819)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No updates'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6839043240276322615)
,p_query_column_id=>1
,p_column_alias=>'COMMENT_MODIFIERS'
,p_column_display_sequence=>9
,p_column_heading=>'Comment Modifiers'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6079376796996845165)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Note Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6839043325802322618)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>10
,p_column_heading=>'Comment Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6079376991160845165)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>3
,p_column_heading=>'Attribute 1'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6079377110239845165)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_column_heading=>'Attribute 2'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6079377206354845165)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>1
,p_column_heading=>'Attribute 3'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6079377287983845165)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>5
,p_column_heading=>'Attribute 4'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6839044626106329435)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>12
,p_column_heading=>'User Name'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6079377402161845165)
,p_query_column_id=>9
,p_column_alias=>'CREATED_ON'
,p_column_display_sequence=>6
,p_column_heading=>'Created On'
,p_heading_alignment=>'LEFT'
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
 p_id=>wwv_flow_api.id(6079376580371845165)
,p_query_column_id=>10
,p_column_alias=>'LINK'
,p_column_display_sequence=>8
,p_column_heading=>'Link'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12:P12_ID:#UPDATE_ID#'
,p_column_linktext=>'#LINK#'
,p_heading_alignment=>'LEFT'
,p_report_column_required_role=>wwv_flow_api.id(7306166303644991446)
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6079377509169845166)
,p_query_column_id=>11
,p_column_alias=>'UPDATE_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Update Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6839044736117329435)
,p_query_column_id=>12
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>13
,p_column_heading=>'Comment Date'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6839044838827329435)
,p_query_column_id=>13
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>14
,p_column_heading=>'Actions'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6839043405488322618)
,p_query_column_id=>14
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>11
,p_column_heading=>'User Icon'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6097592805377028070)
,p_plug_name=>'Milestone Created'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--noBorder'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>109
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select created, ''Milestone Created'' label',
'from EBA_PROJ_STATUS_MS',
'where id = :P107_ID'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.MINICALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'CREATED'
,p_attribute_02=>'LABEL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6235004894974602672)
,p_plug_name=>'Due Date'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--noBorder'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>99
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MILESTONE_DATE, ''Milestone Due Date'' label',
'from EBA_PROJ_STATUS_MS',
'where id = :P107_ID'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.MINICALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'MILESTONE_DATE'
,p_attribute_02=>'LABEL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6818613702334841671)
,p_plug_name=>'Region Display Selector'
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6869448616443390118)
,p_plug_name=>'Peer Open Milestones'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>60
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
'                ||'':::107:LAST_VIEW,P107_ID,P107_PROJECT_ID,P200_ID:''||:LAST_VIEW||'',''',
'                ||m.id||'',''||:P107_PROJECT_ID||'',''||:P107__PROJECT_ID) link,',
'    (select project from eba_proj_status x where x.id = m.project_id) project,',
'    decode(nvl(is_major_yn,''N''),''Y'',''<b>MAJOR MILESTONE</b>'',null) description3,',
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
'from eba_proj_status_ms m',
'where m.milestone_status = ''Open''',
'    and m.project_id = :P107_PROJECT_ID',
'    and m.id != :P107_ID',
'order by milestone_date'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_plug_footer=>'<span class="nodatafound" style="border-top: 1px solid #EEE">Completed milestones show when completed within the last 90 days.</span>'
,p_attribute_01=>'MILESTONE_DATE'
,p_attribute_02=>'COLOR'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'LINK'
,p_attribute_05=>'PROJECT'
,p_attribute_06=>'MILESTONE_START_DATE'
,p_attribute_07=>'MILESTONE_OWNER'
,p_attribute_09=>'MILESTONE_DESCRIPTION'
,p_attribute_10=>'AI_OPEN'
,p_attribute_11=>'DESCRIPTION3'
,p_attribute_12=>'D'
,p_attribute_13=>'MILESTONE_STATUS'
,p_attribute_14=>'COLOR_LABEL'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869448712476390119)
,p_name=>'ID'
,p_data_type=>'ID'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869448794850390120)
,p_name=>'TITLE'
,p_data_type=>'TITLE'
,p_is_visible=>true
,p_heading=>'Title'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869448922182390121)
,p_name=>'COLOR'
,p_data_type=>'COLOR'
,p_is_visible=>true
,p_heading=>'Color'
,p_display_sequence=>30
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869449047138390122)
,p_name=>'LINK'
,p_data_type=>'LINK'
,p_is_visible=>true
,p_heading=>'Link'
,p_display_sequence=>40
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869449155918390123)
,p_name=>'PROJECT'
,p_data_type=>'PROJECT'
,p_is_visible=>true
,p_heading=>'Project'
,p_display_sequence=>50
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869528846337731875)
,p_name=>'DESCRIPTION3'
,p_data_type=>'DESCRIPTION3'
,p_is_visible=>true
,p_heading=>'Description3'
,p_display_sequence=>70
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869528963784731876)
,p_name=>'MILESTONE_DESCRIPTION'
,p_data_type=>'MILESTONE_DESCRIPTION'
,p_is_visible=>true
,p_heading=>'Description'
,p_display_sequence=>80
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869529000499731877)
,p_name=>'MILESTONE_DATE'
,p_data_type=>'MILESTONE_DATE'
,p_is_visible=>true
,p_heading=>'Milestone Date'
,p_display_sequence=>90
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869529183556731879)
,p_name=>'MILESTONE_STATUS'
,p_data_type=>'MILESTONE_STATUS'
,p_is_visible=>true
,p_heading=>'Status'
,p_display_sequence=>110
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869529462242731881)
,p_name=>'MILESTONE_START_DATE'
,p_data_type=>'MILESTONE_START_DATE'
,p_is_visible=>true
,p_heading=>'Start'
,p_display_sequence=>130
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869529593081731883)
,p_name=>'MILESTONE_OWNER'
,p_data_type=>'MILESTONE_OWNER'
,p_is_visible=>true
,p_heading=>'Owner(s)'
,p_display_sequence=>150
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6869529790697731885)
,p_name=>'AI_OPEN'
,p_data_type=>'AI_OPEN'
,p_is_visible=>true
,p_heading=>'Open Action Items'
,p_display_sequence=>170
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15466902103650804735)
,p_name=>'COLOR_LABEL'
,p_data_type=>'COLOR_LABEL'
,p_is_visible=>true
,p_heading=>'Color label'
,p_display_sequence=>180
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12288020476117109829)
,p_plug_name=>'Description'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    function format_milestone (',
'        p_string      in clob,',
'        p_shorten_url in varchar2,',
'        p_max_length  in number default 2500',
'    ) return varchar2',
'    is',
'        l_string      varchar2(32767);',
'        l_endofUrl    varchar2(4000) default chr(10) || chr(13) || chr(9) || '' )<>'';',
'        l_url         varchar2(4000);',
'        l_current_pos number := 1;',
'        n             number := 1;',
'        m             number := 1;',
'        p             number := 1;',
'    begin',
'        l_string := apex_escape.html(dbms_lob.substr(p_string,p_max_length,1)) || '' '';',
'        for i in 1 .. 1000 loop',
'            n := instr( lower(l_string), ''http:&#x2f;&#x2f;'', l_current_pos );',
'            m := instr( lower(l_string), ''https:&#x2f;&#x2f;'', l_current_pos );',
'            p := instr( lower(l_string), ''ftp:&#x2f;&#x2f;'', l_current_pos   );',
'            -- set n to position of first link',
'            if m > 0 and (n = 0 or m < n) and (p = 0 or m < p) then',
'               n := m;',
'            elsif p > 0 and (n = 0 or p < n) then',
'               n := p;',
'            end if;',
'            exit when n = 0 or length(l_string) > 32000;',
'            for j in 0 .. length( l_string ) - n loop',
'                if ( instr( l_endofUrl, substr( l_string, n+j, 1 ) ) > 0 ) then',
'                   l_url := rtrim( substr( l_string, n, j ), ''.''||chr(32)||chr(10) );',
'                   if p_shorten_url = ''Y'' and length(l_url) > 100 then',
'                       l_url := ''<a href="'' || l_url || ''" target="_blank">''',
'                           || substr(l_url,0,60)||''...''||substr(l_url,-30,30) || ''</a>'';',
'                   else',
'                       l_url := ''<a href="'' || l_url || ''" target="_blank">'' || l_url || ''</a>'';',
'                   end if;',
'                   l_string := substr( l_string, 1, n-1 ) || l_url || substr( l_string, n+j );',
'                   l_current_pos := n + length(l_url);',
'                   exit;',
'                end if;',
'            end loop;',
'        end loop;',
'        return replace(l_string,chr(10),''<br>'');',
'    end format_milestone;',
'begin',
'    for c1 in ( select milestone_description',
'                from eba_proj_status_ms',
'                where id = :P107_ID ) loop',
'        sys.htp.p(format_milestone( p_string => c1.milestone_description,',
'                                    p_shorten_url => ''Y'',',
'                                    p_max_length => 4000 ));',
'    end loop;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null ',
'  from eba_proj_status_ms s',
' where id = :P107_ID',
'   and milestone_description is not null'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6079373381372826140)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'EDIT_MILESTONE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Milestone'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:48:P48_ID,P48_PROJECT_ID,P200_ID:&P107_ID.,&P107_PROJECT_ID.,&P107_PROJECT_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P107_PROJECT_ID ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6079376085127838274)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'view_project'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'View Project'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_ID:&P107_PROJECT_ID.#projectMilestones'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5404087183293339688)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(5404081007795339677)
,p_button_name=>'ADDACTIONITEM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Add Action Item'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:RP,73:P73_PROJECT_ID,LAST_VIEW,P73_MILESTONE_ID:&P107_PROJECT_ID.,107,&P107_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P107_PROJECT_ID ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5404087642939339689)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(5404081007795339677)
,p_button_name=>'VIEWACTIONITEMS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'View Action Items'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:55:P55_ID,LAST_VIEW:&P107_PROJECT_ID.,107'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6079364004586768525)
,p_name=>'P107_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6079363603658766416)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6079369811234811017)
,p_name=>'P107_PROJECT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6079363603658766416)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12720329187674531872)
,p_name=>'Refresh Report'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(5404087183293339688)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12720329305957531873)
,p_event_id=>wwv_flow_api.id(12720329187674531872)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5404081007795339677)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13193035053893755058)
,p_name=>'Handle Dialog Close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6079373381372826140)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13193035202736755059)
,p_event_id=>wwv_flow_api.id(13193035053893755058)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6079367305651785874)
,p_attribute_01=>'location.reload();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15119500058320788956)
,p_name=>'Update Action Items'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(5404081007795339677)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15119500117133788957)
,p_event_id=>wwv_flow_api.id(15119500058320788956)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5404081007795339677)
);
wwv_flow_api.component_end;
end;
/
