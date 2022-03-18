prompt --application/pages/page_00125
begin
--   Manifest
--     PAGE: 00125
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
 p_id=>125
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'&APPLICATION_TITLE. Action Items'
,p_step_title=>'&APPLICATION_TITLE. Action Items'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243988833596300)
,p_javascript_code_onload=>'apex.theme42.sticky(".t-StatusList-blockHeader")'
,p_step_template=>wwv_flow_api.id(6781077225859890733)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'Use the filter controls on the left to change the Action Items displayed in the timeline on the right. This page also contains links to several other Action Item reports and tools.'
,p_last_upd_yyyymmddhh24miss=>'20190905144345'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5310450262565673347)
,p_plug_name=>'Action Item Reports & Tools'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-LinksList--nowrap'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_02'
,p_list_id=>wwv_flow_api.id(9066224321891052815)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(6781129762632890837)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6176140580286661807)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody:t-Form--stretchInputs:t-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_api.id(6176143385537661817)
,p_plug_name=>'Legend'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>10
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ebaStatusListLegend">',
'<ul>',
'<li class="ebaLegendLabel">Action Item Color Coding:</li>',
'<li class="ebaRed">Overdue</li>',
'<li class="ebaYellow">Due Today</li>',
'<li class="ebaGreen">Due In the Future</li>',
'<li class="ebaComplete">Complete</li>',
'</ul>',
'<div class="clear"></div></div>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6176143805727661825)
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
 p_id=>wwv_flow_api.id(6876863421927531993)
,p_plug_name=>'Action Items'
,p_region_css_classes=>'timeline-edit-links'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Region--hideHeader'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'       a.action title,',
'       case when a.action_status = ''Closed'' then',
'               ''Black''',
'           when trunc(a.due_date) < trunc(sysdate) then',
'               ''Red''',
'           when trunc(a.due_date) = trunc(sysdate) then',
'               ''Yellow''',
'           else',
'               ''Green''',
'       end as color,',
'       case when a.link_url is not null and a.link_text is not null and exists (select null',
'                     from apex_application_build_options',
'                    where application_id = :APP_ID',
'                      and build_option_name = ''Action Item Links''',
'                      and build_option_status = ''Include'') then',
'           ''<small><a href="'' || a.link_url || ''" target="_blank">'' || a.link_text || ''</a></small>''',
'       end as link_text,',
'       case when a.ACTION_STATUS = ''Closed'' then',
'               ''Closed''',
'           when trunc(a.due_date) < trunc(sysdate) then',
'               ''Past Due''',
'           when trunc(a.due_date) = trunc(sysdate) then',
'               ''Due Today''',
'           else',
'               ''Due In The Future''',
'       end as color_label,',
'       case when a.action_status = ''Closed'' then',
'            a.completed_date',
'       else',
'            a.due_date',
'       end as calendar_icon_date,',
'       decode(a.milestone_id,null,null,(select milestone_name m from eba_proj_status_ms where id = a.milestone_id)) milestone,',
'       apex_util.get_since(a.completed_date) as completed,',
'       apex_util.prepare_url(''f?p=''||:APP_ID||'':78:''||:APP_SESSION',
'           ||'':::78:P78_ACTION_ITEM_ID,P200_ID:''',
'           ||a.id||'',''||s.id) link,',
'       decode(parent_project_id,null,null,''Parent Project: ''||(select project d from eba_proj_status where id = s.PARENT_PROJECT_ID)) parent_project,',
'       s.project,',
'       a.action_description,',
'       a.action_status status,',
'       a.due_date due_date,',
'       case when owner_role_id is null then',
'           eba_proj_fw.get_name_from_email_address(a.action_owner_01)',
'           ||decode(a.action_owner_02,null,null,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_02))',
'           ||decode(a.action_owner_03,null,null,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_03))',
'           ||decode(a.action_owner_04,null,null,'', ''||eba_proj_fw.get_name_from_email_address(a.action_owner_04))',
'       else',
'           nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '
||''')',
'                   within group (order by lower(u.username)) owner',
'               from eba_proj_user_ref rf,',
'                   eba_proj_status_users u,',
'                   eba_proj_roles r',
'               where rf.role_id = a.owner_role_id',
'                   and rf.project_id = a.project_id',
'                   and u.id = rf.user_id',
'                   and r.id = rf.role_id',
'               group by r.name',
'           ), (select ''No ''||r.name||'' defined''',
'               from eba_proj_roles r',
'               where r.id = a.owner_role_id)',
'           )',
'       end as owner,',
'       a.row_key,',
'       case when eba_proj_fw.is_edit_authorized(',
'           p_username   => upper(:APP_USER),',
'           p_project_id => a.project_id ) = ''Y'' then',
'           ''<a href="''',
'             ||apex_util.prepare_url(',
'                 p_url => ''f?p=''||:APP_ID||'':73:''||:APP_SESSION||'':::73:P73_ID:''||a.id)',
'             ||''" class="t-StatusList-editLink">Edit</a>''',
'       else',
'           null',
'       end as edit_link',
'  from eba_proj_status_ais a,',
'       eba_proj_status s,',
'       eba_proj_status_codes c',
' where a.project_id = s.id',
'   and s.project_status = c.id (+)',
'   and (nvl(:P125_STATUS,''Open'') = ''0'' or a.action_status = :P125_STATUS)',
'   and ( :P125_PROJECT is null or a.project_id = :P125_PROJECT )',
'   and (',
'            nvl(:P125_OWNER,''0'') = ''0''',
'            or ',
'            (',
'                a.owner_role_id is null',
'                and ',
'                (',
'                    lower(a.action_owner_01) = lower(:P125_OWNER)',
'                    or',
'                    lower(a.action_owner_02) = lower(:P125_OWNER)',
'                    or',
'                    lower(a.action_owner_03) = lower(:P125_OWNER)',
'                    or',
'                    lower(a.action_owner_04) = lower(:P125_OWNER)',
'                )',
'            )',
'            or',
'            (',
'                a.owner_role_id is not null',
'                and',
'                exists (select null',
'                          from eba_proj_user_ref rf,',
'                               eba_proj_status_users u',
'                         where rf.role_id = a.owner_role_id',
'                           and rf.project_id = a.project_id',
'                           and u.id = rf.user_id',
'                           and lower(u.username) = lower(:P125_OWNER))',
'            )',
'        )',
'   and ( :P125_SEARCH is null',
'       or a.row_key = :P125_SEARCH',
'       or instr(upper(action),upper(:P125_SEARCH)) > 0',
'       or instr(upper(action_description),upper(:P125_SEARCH)) > 0)',
'   and (:P125_CATEGORY is null or s.cat_id = :P125_CATEGORY)',
'   and ( :P125_QUARTER is null',
'          or exists',
'         (select null from eba_proj_fy_periods p where trunc(a.due_date) between p.first_day and p.last_day and p.period_name = :P125_QUARTER)',
'       )',
' order by ',
'    -- first sort',
'    decode(nvl(:P125_SORT,''DUE_DATE''),',
'        ''DUE_DATE'',to_char(a.due_date,''YYYYMMDD'')||s.project,null) nulls last,',
'    -- second sort',
'    decode(nvl(:P125_SORT,''DUE_DATE''),',
'        ''DUE_DATE2'',to_char(a.due_date,''YYYYMMDD'')||s.project,null) desc nulls last'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_ajax_items_to_submit=>'P125_SEARCH,P125_OWNER,P125_QUARTER,P125_CATEGORY,P125_STATUS,P125_SORT,P125_ROWS'
,p_plug_query_num_rows=>5000
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No Action Items found.'
,p_attribute_01=>'CALENDAR_ICON_DATE'
,p_attribute_02=>'COLOR'
,p_attribute_03=>'TITLE'
,p_attribute_04=>'LINK'
,p_attribute_05=>'PROJECT'
,p_attribute_06=>'OWNER'
,p_attribute_07=>'MILESTONE'
,p_attribute_08=>'COMPLETED'
,p_attribute_09=>'ACTION_DESCRIPTION'
,p_attribute_11=>'EDIT_LINK'
,p_attribute_12=>'D'
,p_attribute_13=>'STATUS'
,p_attribute_14=>'COLOR_LABEL'
,p_attribute_15=>'LINK_TEXT'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876863529004531994)
,p_name=>'ID'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876863668376531995)
,p_name=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Title'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876863730057531996)
,p_name=>'COLOR'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color'
,p_display_sequence=>30
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876863806127531997)
,p_name=>'LINK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link'
,p_display_sequence=>40
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876863891162531998)
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
 p_id=>wwv_flow_api.id(6876864067803531999)
,p_name=>'PROJECT'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Project'
,p_display_sequence=>60
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876864317237532002)
,p_name=>'ACTION_DESCRIPTION'
,p_data_type=>'CLOB'
,p_is_visible=>true
,p_heading=>'Action description'
,p_display_sequence=>90
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876864483514532004)
,p_name=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Status'
,p_display_sequence=>110
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876864779514532006)
,p_name=>'DUE_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_visible=>true
,p_heading=>'Due date'
,p_display_sequence=>130
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876864924898532008)
,p_name=>'OWNER'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Owner(s)'
,p_display_sequence=>150
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876865048609532009)
,p_name=>'ROW_KEY'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Row key'
,p_display_sequence=>160
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15119500867163788964)
,p_name=>'EDIT_LINK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Edit link'
,p_display_sequence=>180
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15466902231800804737)
,p_name=>'COLOR_LABEL'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color label'
,p_display_sequence=>170
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(18405131655782962972)
,p_name=>'LINK_TEXT'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link text'
,p_display_sequence=>190
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(19313142694462735072)
,p_name=>'CALENDAR_ICON_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_visible=>true
,p_heading=>'Calendar icon date'
,p_display_sequence=>200
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(19313142732713735073)
,p_name=>'MILESTONE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Milestone'
,p_display_sequence=>210
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(19313142862448735074)
,p_name=>'COMPLETED'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Completed'
,p_display_sequence=>220
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6176141382186661812)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6176140580286661807)
,p_button_name=>'P125_RESET_ALL'
,p_button_static_id=>'P125_RESET_ALL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.:RP,125::'
,p_icon_css_classes=>'fa-undo-alt'
,p_request_source_type=>'ALWAYS_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6176139992360661804)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CREATE_ACTION_ITEM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Action Item'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:73::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-chevron-right'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5462902477212853097)
,p_name=>'P125_QUARTER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6176140580286661807)
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
 p_id=>wwv_flow_api.id(6176140793785661809)
,p_name=>'P125_CATEGORY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(6176140580286661807)
,p_prompt=>'&CAT_TITLE.'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CATEGORY display_value, ID return_value ',
'from EBA_PROJ_STATUS_CATS',
'where is_active_yn = ''Y''',
'order by display_sequence nulls last, 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All &CAT_TITLE_PL. -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6176141004381661811)
,p_name=>'P125_ROWS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(6176140580286661807)
,p_item_default=>'100'
,p_prompt=>'Rows'
,p_source=>'100'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NUMBER OF ROWS'
,p_lov=>'.'||wwv_flow_api.id(6946138101745024023)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6176141785869661813)
,p_name=>'P125_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6176140580286661807)
,p_prompt=>'Search'
,p_placeholder=>'Search Action Items'
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
 p_id=>wwv_flow_api.id(6176142190115661813)
,p_name=>'P125_OWNER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6176140580286661807)
,p_prompt=>'Action Item Owner'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ACTION ITEM OWNERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct v1.owner d, lower(v1.username) r',
'from (',
'    select eba_proj_fw.get_name_from_email_address(action_owner_01) owner, action_owner_01 username from eba_proj_status_ais',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(action_owner_02) owner, action_owner_02 username from eba_proj_status_ais',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(action_owner_03) owner, action_owner_03 username from eba_proj_status_ais',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(action_owner_04) owner, action_owner_04 username from eba_proj_status_ais',
'    union all',
'    select eba_proj_fw.get_name_from_email_address(u.username) owner, u.username username',
'    from eba_proj_status_users u',
'    where exists (  select null',
'                      from eba_proj_status_ais a,',
'                           eba_proj_user_ref rf',
'                     where rf.role_id = a.owner_role_id',
'                       and rf.project_id = a.project_id',
'                       and rf.user_id = u.id',
'                 )',
'    ) v1',
'where v1.owner is not null',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Owners -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6176142403901661813)
,p_name=>'P125_STATUS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(6176140580286661807)
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
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6176142603066661814)
,p_name=>'P125_SORT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(6176140580286661807)
,p_item_default=>'DUE_DATE'
,p_prompt=>'Sort'
,p_source=>'DUE_DATE'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ACTION ITEMS SORT ORDER'
,p_lov=>'.'||wwv_flow_api.id(9068392934720183774)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15411667445519263933)
,p_name=>'P125_CURRENT_USER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(6176140580286661807)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20236975331510088716)
,p_name=>'P125_PROJECT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6176140580286661807)
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
 p_id=>wwv_flow_api.id(15411667605326263934)
,p_computation_sequence=>10
,p_computation_item=>'P125_CURRENT_USER'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'lower(:APP_USER)'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(6176144206356661831)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15411668888138263947)
,p_name=>'Search Action Items on Enter'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P125_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.keyCode == 13'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'change, keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15411669010248263948)
,p_event_id=>wwv_flow_api.id(15411668888138263947)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent.preventDefault();'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15411669112682263949)
,p_event_id=>wwv_flow_api.id(15411668888138263947)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876863421927531993)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15411669696822263955)
,p_name=>'Search on Item Change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P125_OWNER,P125_QUARTER,P125_CATEGORY,P125_STATUS,P125_SORT,P125_ROWS,P125_PROJECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4379006384416736283)
,p_event_id=>wwv_flow_api.id(15411669696822263955)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P125_OWNER,P125_QUARTER,P125_CATEGORY,P125_STATUS,P125_SORT,P125_ROWS,P125_PROJECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15411669869127263957)
,p_event_id=>wwv_flow_api.id(15411669696822263955)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876863421927531993)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15411669995589263958)
,p_name=>'Refresh IRR on Close after add'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6176139992360661804)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15411670037456263959)
,p_event_id=>wwv_flow_api.id(15411669995589263958)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876863421927531993)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15119500968055788965)
,p_name=>'Update Action Items'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(6876863421927531993)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15119501099786788966)
,p_event_id=>wwv_flow_api.id(15119500968055788965)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876863421927531993)
);
wwv_flow_api.component_end;
end;
/
