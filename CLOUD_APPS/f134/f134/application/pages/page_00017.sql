prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Milestones By Owner Timeline'
,p_step_title=>'Milestones By Owner Timeline'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956244298529599071)
,p_step_template=>wwv_flow_api.id(6781077225859890733)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This page shows all project Milestones sorted by their owner. Use the filter controls on the left to change the results displayed on the right.'
,p_last_upd_yyyymmddhh24miss=>'20190906085931'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5462811375741492556)
,p_plug_name=>'Milestones by Owner'
,p_region_css_classes=>'timeline-edit-links'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Region--hideHeader'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>20
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
'    case when m.milestone_status = ''Completed'' then',
'            m.completed_date',
'        else',
'            m.milestone_date',
'    end as calendar_icon_date,',
'    apex_util.get_since(m.completed_date) as completed,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':107:''||:APP_SESSION',
'        ||'':::107:P107_ID,P107_PROJECT_ID,P200_ID:''',
'        ||m.id||'',''||m.project_id||'',''||m.project_id) link,',
'    p.project,',
'    milestone_description,',
'    milestone_date,',
'    milestone_status,',
'    to_char(milestone_start_date,''Month fmDD, fmYYYY'') milestone_start_date,',
'    ow.milestone_owner,',
'    nvl((select count(*) from eba_proj_status_ais a where a.milestone_id = m.id and a.action_status = ''Open''),0)',
'        ||'' Open Action Items'' ai_open,',
'    case when eba_proj_fw.is_edit_authorized(',
'        p_username   => upper(:APP_USER),',
'        p_project_id => m.project_id ) = ''Y'' then',
'        decode(nvl(is_major_yn,''N''),''Y'',''<b>MAJOR MILESTONE</b>'',null) || ',
'        '' <a href="''',
'          ||apex_util.prepare_url(',
'              p_url => ''f?p=''||:APP_ID||'':48:''||:APP_SESSION||'':::48:P48_ID:''||m.id)',
'          ||''" class="t-StatusList-editLink">Edit</a>''',
'    else',
'        decode(nvl(is_major_yn,''N''),''Y'',''<b>MAJOR MILESTONE</b>'',null)',
'    end as description3',
'from eba_proj_status_ms m,',
'    eba_proj_status p,',
'    eba_proj_status_codes s,',
'    (   select x.id milestone_id, lower(x.milestone_owner) milestone_owner',
'        from eba_proj_status_ms x',
'        where x.owner_role_id is null',
'        union all',
'        select x.id milestone_id, lower(u.username) milestone_owner',
'        from eba_proj_status_ms x,',
'            eba_proj_user_ref rf,',
'            eba_proj_status_users u',
'        where rf.role_id = x.owner_role_id',
'            and rf.project_id = x.project_id',
'            and u.id = rf.user_id',
'    ) ow',
'where p.id = m.project_id',
'    and p.project_status = s.id(+)',
'    and m.id = ow.milestone_id',
'    and ( :P17_MILESTONE_OWNER is null',
'        or ow.milestone_owner = lower(:P17_MILESTONE_OWNER)',
'    )',
'    and ( nvl(:P17_SHOW,''Open'') = ''All''',
'        or (m.milestone_status = ''Open''',
'            and nvl(:P17_SHOW,''Open'') = ''Open'' ))',
'    and (nvl(:P17_IS_MAJOR,''ALL'') = ''ALL''',
'        or (nvl(is_major_yn,''N'') = ''Y''',
'            and nvl(:P17_IS_MAJOR,''ALL'') = ''MAJOR'' ))',
'    and ( :P17_QUARTER is null',
'        or to_char(milestone_date,''"Q"QYYYY'') = :P17_QUARTER )',
'    and ( :P17_SEARCH is null',
'        or upper(:P17_SEARCH) = m.row_key',
'        or instr(upper(m.milestone_name), upper(:P17_SEARCH)) > 0',
'        or instr(upper(m.milestone_description), upper(:P17_SEARCH)) > 0)',
'    and ( nvl(:P17_CATEGORY,0) = 0',
'        or p.cat_id = :P17_CATEGORY)',
'order by 11,',
'    -- First sort',
'    decode( :P17_SORT, ''DATE'', to_char(m.milestone_date,''YYYYMMDD''),null) desc,',
'    decode( :P17_SORT, ''DATE'', p.project, null),',
'    -- Second sort',
'    decode( :P17_SORT, ''DATE2'', to_char(m.milestone_date,''YYYYMMDD''),null),',
'    decode( :P17_SORT, ''DATE2'', p.project, null)'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_ajax_items_to_submit=>'P17_SEARCH,P17_MILESTONE_OWNER,P17_QUARTER,P17_CATEGORY,P17_SHOW,P17_IS_MAJOR,P17_SORT,P17_ROWS'
,p_plug_query_num_rows_item=>'P17_ROWS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_footer=>'<span class="nodatafound" style="border-top: 1px solid #EEE">Completed milestones show when completed within the last 90 days.</span>'
,p_attribute_01=>'CALENDAR_ICON_DATE'
,p_attribute_02=>'COLOR'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'LINK'
,p_attribute_05=>'MILESTONE_OWNER'
,p_attribute_06=>'PROJECT'
,p_attribute_07=>'AI_OPEN'
,p_attribute_08=>'COMPLETED'
,p_attribute_09=>'MILESTONE_DESCRIPTION'
,p_attribute_11=>'DESCRIPTION3'
,p_attribute_12=>'D'
,p_attribute_13=>'MILESTONE_STATUS'
,p_attribute_14=>'COLOR_LABEL'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5462811839115492559)
,p_name=>'ID'
,p_data_type=>'ID'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5462812197384492561)
,p_name=>'TITLE'
,p_data_type=>'TITLE'
,p_is_visible=>true
,p_heading=>'Title'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5462812738778492562)
,p_name=>'COLOR'
,p_data_type=>'COLOR'
,p_is_visible=>true
,p_heading=>'Color'
,p_display_sequence=>30
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5462813239081492562)
,p_name=>'LINK'
,p_data_type=>'LINK'
,p_is_visible=>true
,p_heading=>'Link'
,p_display_sequence=>40
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5462813716688492563)
,p_name=>'PROJECT'
,p_data_type=>'PROJECT'
,p_is_visible=>true
,p_heading=>'Project'
,p_display_sequence=>50
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5462814210232492563)
,p_name=>'DESCRIPTION3'
,p_data_type=>'DESCRIPTION3'
,p_is_visible=>true
,p_heading=>'Description3'
,p_display_sequence=>70
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5462814762533492564)
,p_name=>'MILESTONE_DESCRIPTION'
,p_data_type=>'MILESTONE_DESCRIPTION'
,p_is_visible=>true
,p_heading=>'Milestone description'
,p_display_sequence=>80
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5462815250208492566)
,p_name=>'MILESTONE_DATE'
,p_data_type=>'MILESTONE_DATE'
,p_is_visible=>true
,p_heading=>'Milestone date'
,p_display_sequence=>90
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5462815766965492568)
,p_name=>'MILESTONE_STATUS'
,p_data_type=>'MILESTONE_STATUS'
,p_is_visible=>true
,p_heading=>'Status'
,p_display_sequence=>110
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5462816193118492568)
,p_name=>'MILESTONE_START_DATE'
,p_data_type=>'MILESTONE_START_DATE'
,p_is_visible=>true
,p_heading=>'Milestone start date'
,p_display_sequence=>130
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5462816730196492568)
,p_name=>'MILESTONE_OWNER'
,p_data_type=>'MILESTONE_OWNER'
,p_is_visible=>true
,p_heading=>'Owner(s)'
,p_display_sequence=>150
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(5462817271846492569)
,p_name=>'AI_OPEN'
,p_data_type=>'AI_OPEN'
,p_is_visible=>true
,p_heading=>'Open Action Items'
,p_display_sequence=>170
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15466901528706804730)
,p_name=>'COLOR_LABEL'
,p_data_type=>'COLOR_LABEL'
,p_is_visible=>true
,p_heading=>'Color label'
,p_display_sequence=>180
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(19313142435130735070)
,p_name=>'CALENDAR_ICON_DATE'
,p_data_type=>'CALENDAR_ICON_DATE'
,p_is_visible=>true
,p_heading=>'Calendar icon date'
,p_display_sequence=>190
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(19313142599562735071)
,p_name=>'COMPLETED'
,p_data_type=>'COMPLETED'
,p_is_visible=>true
,p_heading=>'Completed'
,p_display_sequence=>200
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5462817659162492577)
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
 p_id=>wwv_flow_api.id(5462818070192492577)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5462824123758492615)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5462818070192492577)
,p_button_name=>'P17_RESET_REPORT'
,p_button_static_id=>'P35_RESET_REPORT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'fa-undo-alt'
,p_request_source=>'Reset Report'
,p_request_source_type=>'STATIC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5462823730155492614)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CREATE_MILESTONE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Milestone'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:48::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-chevron-right'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(5462827220655492628)
,p_branch_action=>'f?p=&FLOW_ID.:17:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5462818429662492578)
,p_name=>'P17_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5462818070192492577)
,p_prompt=>'Search'
,p_placeholder=>'Search'
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
 p_id=>wwv_flow_api.id(5462818789934492582)
,p_name=>'P17_MILESTONE_OWNER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(5462818070192492577)
,p_prompt=>'Milestone Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MILESTONE OWNERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct owner d, owner r',
'from (',
'    select lower(x.milestone_owner) owner',
'    from eba_proj_status_ms x',
'    where x.owner_role_id is null',
'    union all',
'    select lower(u.username) owner',
'    from eba_proj_status_ms x,',
'        eba_proj_user_ref rf,',
'        eba_proj_status_users u',
'    where rf.role_id = x.owner_role_id',
'        and rf.project_id = x.project_id',
'        and u.id = rf.user_id',
')',
'where owner is not null',
'order by owner'))
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
 p_id=>wwv_flow_api.id(5462819729139492598)
,p_name=>'P17_QUARTER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(5462818070192492577)
,p_prompt=>'Quarter'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(add_months(sysdate-90,(x.lvl-1)*3), ''"Q"Q" - "YYYY'') dt , to_char(add_months(sysdate-90,(x.lvl-1)*3), ''"Q"QYYYY'') r',
'from (  select level lvl ',
'        from dual ',
'        connect by level < 10 ',
'    ) x ',
'order by x.lvl'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Quarters -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5462820172066492602)
,p_name=>'P17_CATEGORY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(5462818070192492577)
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
 p_id=>wwv_flow_api.id(5462821013372492603)
,p_name=>'P17_SHOW'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(5462818070192492577)
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
 p_id=>wwv_flow_api.id(5462821434806492603)
,p_name=>'P17_IS_MAJOR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(5462818070192492577)
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
 p_id=>wwv_flow_api.id(5462821872153492603)
,p_name=>'P17_SORT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(5462818070192492577)
,p_item_default=>'DATE'
,p_prompt=>'Sort'
,p_source=>'DATE'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'MILESTONES SORT ORDER'
,p_lov=>'.'||wwv_flow_api.id(6919541399337823465)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5462822194358492604)
,p_name=>'P17_ROWS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(5462818070192492577)
,p_item_default=>'100'
,p_prompt=>'Rows'
,p_source=>'100'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NUMBER OF ROWS'
,p_lov=>'.'||wwv_flow_api.id(6946138101745024023)||'.'
,p_cHeight=>1
,p_tag_attributes=>'style="width: 170px;"'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(5462824675465492620)
,p_computation_sequence=>10
,p_computation_item=>'P17_SORT'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'DATE'
,p_compute_when=>'P17_SORT'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(5462825046009492621)
,p_computation_sequence=>20
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5462825695115492624)
,p_name=>'show child selector'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_PROJECT'
,p_condition_element=>'P17_PROJECT'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5462826247036492627)
,p_event_id=>wwv_flow_api.id(5462825695115492624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_SHOW_CHILD_PROJ'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5462826721715492627)
,p_event_id=>wwv_flow_api.id(5462825695115492624)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_SHOW_CHILD_PROJ'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13698173214303786942)
,p_name=>'Reload page on dialog close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(5462823730155492614)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13698173316916786943)
,p_event_id=>wwv_flow_api.id(13698173214303786942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5462811375741492556)
,p_attribute_01=>'location.reload();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15440629120031744446)
,p_name=>'Apply Filters'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_MILESTONE_OWNER,P17_QUARTER,P17_CATEGORY,P17_SHOW,P17_IS_MAJOR,P17_SORT,P17_ROWS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440629345039744448)
,p_event_id=>wwv_flow_api.id(15440629120031744446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5462811375741492556)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15446730750566120410)
,p_name=>'Search Status Reports on Enter'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.keyCode == 13'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'change, keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15446732118071120415)
,p_event_id=>wwv_flow_api.id(15446730750566120410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent.preventDefault();'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15446731689494120414)
,p_event_id=>wwv_flow_api.id(15446730750566120410)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5462811375741492556)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15119499798117788953)
,p_name=>'Update Milestones'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(5462811375741492556)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15119499845864788954)
,p_event_id=>wwv_flow_api.id(15119499798117788953)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5462811375741492556)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5462825359014492622)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(5462824123758492615)
);
wwv_flow_api.component_end;
end;
/
