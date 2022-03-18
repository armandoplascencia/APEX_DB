prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Milestones Monthly Calendar'
,p_step_title=>'Milestones Monthly Calendar'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956244298529599071)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'a.milestoneStatus {',
'    border-left-width: 2px;',
'    border-left-style: solid;',
'    padding: 4px;',
'    display: block;',
'    line-height: 12px;',
'    font-size: 11px;',
'    color: #404040;',
'}',
'',
'/* Ensuring that calendar has full height to show all events */',
'.fc-day-grid-container.fc-scroller {',
'    height: auto !important;',
'}'))
,p_step_template=>wwv_flow_api.id(6781077225859890733)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This calendar displays project Milestones due dates. There is a legend at the bottom of the page that explains the color-coding. Use the filters on the left to vary the results on the right. Click the <strong><</strong> button to go to the previous m'
||'onth and the <strong>></strong> button to go forward a month. Switch between the calendar view to the list view by clicking the <strong>list</strong> button.'
,p_last_upd_yyyymmddhh24miss=>'20190913120010'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7406391677137172109)
,p_plug_name=>'Milestones'
,p_region_name=>'milestonesCalendar'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--hiddenOverflow:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select /*decode(eba_proj_stat_ui.is_project_open(m.project_id), 0, ''#CHK# '', 1, null) ||*/ apex_escape.html(m.milestone_name) next_milestone_name, ',
'    m.milestone_date next_milestone_date,',
'    m.milestone_status as milestone_status,',
'    m.id,',
'    p.id as project_id, ',
'    apex_escape.html(p.project) project,',
'    case',
'        when m.milestone_status = ''Completed'' then ''apex-cal-gray''',
'        when m.milestone_status = ''Open'' then ''apex-cal-green''',
'    end as css_class,',
'    s.status_short_desc status_text,',
'    ''apex-cal-''|| lower(c.color_name) css_color,',
'    (   select listagg(lower(u.username),'', '') within group',
'            (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username)) as owners',
'        from eba_proj_user_ref rf,',
'            eba_proj_status_users u,',
'            eba_proj_roles r',
'        where rf.project_id = p.id',
'            and rf.user_id = u.id',
'            and rf.role_id = r.id',
'            and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as owner',
'from eba_proj_status p,',
'    eba_proj_status_codes s,',
'    eba_proj_color_codes c,',
'    eba_proj_status_ms m',
'where p.project_status = s.id(+)',
'    and p.id = m.project_id',
'    and c.id(+) = s.color_code_id',
'    and (nvl(:P5_IS_MAJOR,''ALL'') = ''ALL''',
'        or (nvl(is_major_yn,''N'') = ''Y'' and nvl(:P5_IS_MAJOR,''ALL'') = ''MAJOR'' ) )',
'    and ( nvl(:P5_OWNER,''All Owners'') = ''All Owners''',
'        or exists (select null',
'                   from eba_proj_user_ref rf,',
'                       eba_proj_status_users u',
'                   where rf.project_id = p.id',
'                       and rf.user_id = u.id',
'                       and upper(u.username) = upper(:P5_OWNER)))',
'    and ( nvl(:P5_CATEGORY,0) = 0',
'        or p.cat_id = :P5_CATEGORY',
'    )',
'    and (nvl(:P5_PROJECT,0) = 0',
'        or :P5_PROJECT = p.id',
'        or (nvl(:P5_SHOW_CHILD_PROJ,''N'') = ''Y''',
'            and p.parent_project_id = :P5_PROJECT))',
'    and ( :P5_SEARCH is null',
'        or instr(upper(eba_proj_fw.get_project_rowkey(p_project_id => p.id)||''/''||m.milestone_name||''/''||m.milestone_description),',
'            upper(:P5_search)) > 0',
'        or instr(upper(p.project), upper(:P5_SEARCH)) > 0',
'    )',
'    and ( :P5_MILESTONE_OWNER is null',
'        or (m.owner_role_id is null and lower(m.milestone_owner) = lower(:P5_MILESTONE_OWNER))',
'        or exists ( select null',
'                    from eba_proj_user_ref rf,',
'                        eba_proj_status_users u',
'                    where rf.role_id = m.owner_role_id',
'                        and rf.project_id = m.project_id',
'                        and u.id = rf.user_id',
'                        and lower(u.username) = lower(:P5_MILESTONE_OWNER)',
'        )',
'    )',
'order by 2'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'NEXT_MILESTONE_DATE'
,p_attribute_03=>'NEXT_MILESTONE_NAME'
,p_attribute_04=>'ID'
,p_attribute_05=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.:RP,107,200:P200_ID,P107_ID,P107_PROJECT_ID:&PROJECT_ID.,&ID.,&PROJECT_ID.'
,p_attribute_07=>'N'
,p_attribute_09=>'list:navigation'
,p_attribute_13=>'N'
,p_attribute_14=>'CSS_CLASS'
,p_attribute_16=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Project:</b> &PROJECT.</br>',
'<b>Project Status:</b> &STATUS_TEXT.</br>',
'<b>Milestone Status:</b> &MILESTONE_STATUS.</br>'))
,p_attribute_17=>'Y'
,p_attribute_19=>'Y'
,p_attribute_21=>'10'
,p_attribute_22=>'Y'
,p_attribute_23=>'3'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9021992340876054475)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9021997922480099000)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody:t-Form--stretchInputs:t-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20575536857520710850)
,p_plug_name=>'Legend'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region-body">',
'    <div style="border:1px #000 solid; width:150px; padding:5px; height: 40px; background-color: #2ECC71; float:left; margin: 5px 10px 5px 0px; color:#FFFFFF;">Open</div>',
'    <div style="border:1px #000 solid; width:150px; padding:5px; height: 40px; background-color: #A0A0A0; float:left; margin: 5px 10px 5px 0px; color:#404040;">Complete</div>',
'</div>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8151672532173540551)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9021997922480099000)
,p_button_name=>'P5_RESET_REPORT'
,p_button_static_id=>'P5_RESET_REPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'fa-undo-alt'
,p_request_source=>'Reset Report'
,p_request_source_type=>'STATIC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18175884353322760630)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'GO_TO_PROJECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Go to Project'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP:P200_ID:&P5_PROJECT.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(9022119936082850788)
,p_branch_action=>'f?p=&FLOW_ID.:5:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6853453282635105699)
,p_name=>'P5_SHOW_CHILD_PROJ'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9021997922480099000)
,p_item_default=>'N'
,p_prompt=>'Show Child Projects'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6920849898831936930)
,p_name=>'P5_SEARCH'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9021997922480099000)
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
 p_id=>wwv_flow_api.id(6920865206450939062)
,p_name=>'P5_MILESTONE_OWNER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9021997922480099000)
,p_prompt=>'Milestone Owner'
,p_display_as=>'NATIVE_POPUP_LOV'
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
,p_cSize=>50
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8139015731371997713)
,p_name=>'P5_IS_MAJOR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(9021997922480099000)
,p_item_default=>'ALL'
,p_prompt=>'Type'
,p_source=>'ALL'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MAJOR MILESTONES'
,p_lov=>'.'||wwv_flow_api.id(8139011421273890714)||'.'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8151604931989976249)
,p_name=>'P5_PROJECT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9021997922480099000)
,p_prompt=>'Project'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'SELECT PROJECT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'from ( select ltrim(replace(SYS_CONNECT_BY_PATH(project, '':TREESEP:''), '':TREESEP:'','' / ''), ''/ '') d,',
'           id r',
'       from eba_proj_status',
'       start with parent_project_id is null',
'           connect by prior id = parent_project_id',
'           order siblings by project )',
'union all',
'select ps.project d, ps.id r',
'from eba_proj_status ps',
'where ps.parent_project_id is not null',
'    and not exists ( select null',
'                     from eba_proj_status p2',
'                     where p2.id = ps.parent_project_id );'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9022119030836829815)
,p_name=>'P5_OWNER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9021997922480099000)
,p_prompt=>'Project Person'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'DISTINCT PROJECT OWNERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select eba_proj_fw.get_name_from_email_address(u.username) d, lower(u.username) r',
'from eba_proj_status_users u',
'where exists ( select null',
'               from eba_proj_user_ref rf,',
'                   eba_proj_roles r,',
'                   eba_proj_status p,',
'                   eba_proj_status_codes sc',
'               where rf.user_id = u.id',
'                   and p.id = rf.project_id',
'                   and rf.role_id = r.id',
'                   and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y''',
'                   and p.project_status = sc.id',
'                   and sc.is_closed_status != ''Y'' )',
'order by lower(u.username)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All People -'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9022120634955878386)
,p_name=>'P5_CATEGORY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(9021997922480099000)
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
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Restrict this report to this &CAT_TITLE_LC..'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20575536922043710851)
,p_name=>'P5_CURR_MONTH'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(9021997922480099000)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20575537072725710852)
,p_name=>'P5_CURR_YEAR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(9021997922480099000)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20575537448808710856)
,p_name=>'P5_CURR_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(9021997922480099000)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(9022035827076157083)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'5'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6884042781531738554)
,p_name=>'show child selector'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_PROJECT'
,p_condition_element=>'P5_PROJECT'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6884043100631738555)
,p_event_id=>wwv_flow_api.id(6884042781531738554)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_SHOW_CHILD_PROJ'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6884043309970738556)
,p_event_id=>wwv_flow_api.id(6884042781531738554)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_SHOW_CHILD_PROJ'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15440629424555744449)
,p_name=>'refresh results on filter value change'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_PROJECT,P5_SHOW_CHILD_PROJ,P5_OWNER,P5_MILESTONE_OWNER,P5_CATEGORY,P5_IS_MAJOR'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440629550119744450)
,p_event_id=>wwv_flow_api.id(15440629424555744449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P5_PROJECT,P5_SHOW_CHILD_PROJ,P5_OWNER,P5_MILESTONE_OWNER,P5_CATEGORY,P5_IS_MAJOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440629687923744451)
,p_event_id=>wwv_flow_api.id(15440629424555744449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7406391677137172109)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15446918895724214725)
,p_name=>'Search Status Reports on Enter'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.keyCode == 13'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'change, keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15446919718386214727)
,p_event_id=>wwv_flow_api.id(15446918895724214725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P5_SEARCH,P5_PROJECT,P5_SHOW_CHILD_PROJ,P5_OWNER,P5_MILESTONE_OWNER,P5_CATEGORY,P5_IS_MAJOR'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15446919292752214726)
,p_event_id=>wwv_flow_api.id(15446918895724214725)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent.preventDefault();'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15446920310160214728)
,p_event_id=>wwv_flow_api.id(15446918895724214725)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7406391677137172109)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18175884901487760635)
,p_name=>'Show/Hide Go To Project Button'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_PROJECT'
,p_condition_element=>'P5_PROJECT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18175884996319760636)
,p_event_id=>wwv_flow_api.id(18175884901487760635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(18175884353322760630)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18175885072224760637)
,p_event_id=>wwv_flow_api.id(18175884901487760635)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(18175884353322760630)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8151672640485542983)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(8151672532173540551)
);
wwv_flow_api.component_end;
end;
/
