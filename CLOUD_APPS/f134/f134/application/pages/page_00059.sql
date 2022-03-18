prompt --application/pages/page_00059
begin
--   Manifest
--     PAGE: 00059
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
 p_id=>59
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Project Updates Timeline'
,p_step_title=>'Project Updates Timeline'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956244094027597768)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<link rel="stylesheet" href="#IMAGE_PREFIX#eba/css/eba_timeline.css" type="text/css" media="all" charset="utf-8">',
''))
,p_step_template=>wwv_flow_api.id(6781077225859890733)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This page renders a timeline report of all project updates. Use the filter controls on the left of the report to change the timeline results. Click an update''s name to display the update. Click the <strong>Updates Dashboard ></strong> button to navig'
||'ate to the updates dashboard page. Click the <strong>Reset</strong> button to reset the page to default.'
,p_last_upd_yyyymmddhh24miss=>'20190918081200'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6876986209251771717)
,p_plug_name=>'Timeline'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.id,',
'    p.id project_id,',
'    t.status_update_type update_type,',
'    eba_proj_fw.conv_txt_html(',
'        regexp_replace(nvl(u.formatted_update,u.status_update),',
'                       ''##BREAK##.*'',''<br />...<a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':129:''||:APP_SESSION',
'                                                        ||''::NO:129:P200_ID,P129_ID,P129_PROJECT_ID:''',
'                                                        ||u.project_id||'',''||u.id||'',''||u.project_id)||''">View More</a>'',',
'                      1,0,''n'')',
'    ) || ',
'    decode(u.gold_yn, null, '' '', ''N'', '' '', ''Y'', ''<br><span class="t-Badge t-Badge--orb t-Badge--small is-warning">Gold</span>'') as status_update,',
'    ''f?p=''||:APP_ID||'':129:''||:app_session',
'        ||'':::129:P200_ID,P129_ID,P129_PROJECT_ID:''',
'        ||p.id||'',''||u.id||'',''||p.id link,',
'    lower(u.update_owner) status_owner,',
'    u.updated update_date,',
'    eba_proj_fw.get_name_from_email_address(u.update_owner) as update_owner,',
'    (   select listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '') within group',
'            (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'        from eba_proj_user_ref rf,',
'            eba_proj_status_users u,',
'            eba_proj_roles r',
'        where rf.project_id = p.id',
'            and rf.user_id = u.id',
'            and rf.role_id = r.id',
'            and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as owner,',
'    p.project,',
'    s.status_short_desc status,',
'    decode(s.is_closed_status,''Y'',''black'',col.color_name) color_code,',
'    apex_util.get_since(u.updated) as updated,',
'    u.created,',
'    u.created_by,',
'    nvl(eba_proj_fw.get_project_rowkey(p_project_id => p.id), p.row_key) as row_key,',
'    u.row_key update_key',
'from eba_proj_status_updates u,',
'    eba_proj_status_update_types t,',
'    eba_proj_status p,',
'    eba_proj_status_codes s,',
'    eba_proj_color_codes col',
'where p.id = u.project_id',
'    and p.PROJECT_STATUS = s.id(+)',
'    and col.id(+) = s.color_code_id',
'    and u.update_type = t.id',
'    and ( nvl(:P59_UPDATE_TYPE,0) = 0',
'        or u.update_type = nvl(:P59_UPDATE_TYPE,0))',
'    and ( :P59_SEARCH is null',
'        or instr(upper(p.row_key),upper(:P59_SEARCH)) > 0',
'        or instr(upper(p.code_name),upper(:P59_SEARCH)) > 0',
'        or instr(upper(u.row_key),upper(:P59_SEARCH)) > 0',
'        or instr(upper(dbms_lob.substr(u.STATUS_UPDATE,2000,1)),upper(:P59_SEARCH)) > 0',
'        or instr(upper(dbms_lob.substr(u.STATUS_UPDATE,2000,1990)),upper(:P59_SEARCH)) > 0',
'        or instr(upper(dbms_lob.substr(u.STATUS_UPDATE,2000,3990)),upper(:P59_SEARCH)) > 0',
'        or instr(upper(u.update_owner),upper(:P59_SEARCH)) > 0)',
'    and ( lower(u.update_owner) = lower(:P59_OWNER)',
'        or :P59_OWNER is null',
'        or :P59_OWNER = ''All Owners'')',
'    and (',
'          :P59_GOLD is null',
'          or',
'          (',
'              :P59_GOLD is not null',
'              and',
'              :P59_GOLD = u.gold_yn',
'          )',
'      )',
'    and ( nvl(:P59_CATEGORY,0) = 0',
'        or p.cat_id = :P59_CATEGORY )',
'    and ( nvl(:P59_PROJECT,0) = 0',
'        or p.id = :P59_PROJECT',
'        or (nvl(:P59_SHOW_CHILD_PROJ,''N'') = ''Y''',
'            and p.parent_project_id = :P59_PROJECT) )',
'    and (nvl(:P59_TIMEFRAME,0) = 0 or (u.created > sysdate - nvl(:P59_TIMEFRAME,0)))',
'order by',
'    u.created desc, p.project'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TIMELINESTATUSLIST'
,p_ajax_items_to_submit=>'P59_GOLD,P59_PROJECT,P59_SHOW_CHILD_PROJ,P59_OWNER,P59_CATEGORY,P59_TIMEFRAME,P59_UPDATE_TYPE,P59_ROWS,P59_SEARCH'
,p_plug_query_num_rows_item=>'P59_ROWS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No project updates found'
,p_attribute_01=>'UPDATE_DATE'
,p_attribute_02=>'COLOR_CODE'
,p_attribute_03=>'PROJECT'
,p_attribute_04=>'LINK'
,p_attribute_05=>'UPDATE_OWNER'
,p_attribute_06=>'UPDATE_TYPE'
,p_attribute_07=>'UPDATED'
,p_attribute_11=>'STATUS_UPDATE'
,p_attribute_12=>'D'
,p_attribute_13=>'STATUS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876986331845771718)
,p_name=>'ID'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Id'
,p_display_sequence=>10
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876986388920771719)
,p_name=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_is_visible=>true
,p_heading=>'Project id'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876986651129771721)
,p_name=>'UPDATE_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Update Type'
,p_display_sequence=>40
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876986738570771722)
,p_name=>'STATUS_UPDATE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Status update'
,p_display_sequence=>50
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6876986800872771723)
,p_name=>'LINK'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Link'
,p_display_sequence=>60
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877664465796083474)
,p_name=>'STATUS_OWNER'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Contributor'
,p_display_sequence=>70
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877664494026083475)
,p_name=>'UPDATE_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_visible=>true
,p_heading=>'Update date'
,p_display_sequence=>80
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877664719534083477)
,p_name=>'UPDATE_OWNER'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Contributor'
,p_display_sequence=>100
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877664855538083478)
,p_name=>'OWNER'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Owner'
,p_display_sequence=>110
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877664912974083479)
,p_name=>'PROJECT'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Project'
,p_display_sequence=>120
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877665083502083481)
,p_name=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Status'
,p_display_sequence=>140
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877665244468083482)
,p_name=>'COLOR_CODE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Color code'
,p_display_sequence=>150
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877665348480083483)
,p_name=>'UPDATED'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Updated'
,p_display_sequence=>160
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877665412257083484)
,p_name=>'CREATED'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_visible=>true
,p_heading=>'Created'
,p_display_sequence=>170
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877665545334083485)
,p_name=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Created by'
,p_display_sequence=>180
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877665721777083487)
,p_name=>'ROW_KEY'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Row key'
,p_display_sequence=>200
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(6877665889327083489)
,p_name=>'UPDATE_KEY'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Update key'
,p_display_sequence=>220
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9066110836978156724)
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
 p_id=>wwv_flow_api.id(9066112736483368592)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>40
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
 p_id=>wwv_flow_api.id(8148443724606179036)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9066112736483368592)
,p_button_name=>'P59_RESET'
,p_button_static_id=>'P59_RESET'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-undo-alt'
,p_request_source=>'reset'
,p_request_source_type=>'STATIC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20728279366177320254)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'UPDATES_DASHBOARD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Updates Dashboard'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8148444236727182562)
,p_branch_action=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:RP,59::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(8148443724606179036)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 01-JUL-2011 07:39 by SBKENNED'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7972959605631199905)
,p_branch_action=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_comment=>'Created 30-JUL-2012 09:04 by SHAKEEB'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6181279107909786390)
,p_name=>'P59_TIMEFRAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9066112736483368592)
,p_item_default=>'90'
,p_prompt=>'Timeframe'
,p_source=>'90'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEFRAME - LONGER'
,p_lov=>'.'||wwv_flow_api.id(6181237391042603740)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6855145884252948351)
,p_name=>'P59_SHOW_CHILD_PROJ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9066112736483368592)
,p_item_default=>'Y'
,p_prompt=>'Show Child Projects'
,p_source=>'Y'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO RETURNS Y N'
,p_lov=>'.'||wwv_flow_api.id(9019252630556871632)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_required_patch=>wwv_flow_api.id(19890960485833316269)
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6946190201530033481)
,p_name=>'P59_ROWS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(9066112736483368592)
,p_item_default=>'100'
,p_prompt=>'Rows'
,p_source=>'50'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NUMBER OF ROWS'
,p_lov=>'.'||wwv_flow_api.id(6946138101745024023)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8139032132917252137)
,p_name=>'P59_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9066112736483368592)
,p_prompt=>'Search'
,p_placeholder=>'Search Updates'
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
 p_id=>wwv_flow_api.id(8139033037269442712)
,p_name=>'P59_UPDATE_TYPE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9066112736483368592)
,p_item_default=>'0'
,p_prompt=>'Type'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'UPDATE TYPES (ALL)'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status_update_type||decode(is_active_yn,''Y'','''','' (Inactive)'') d, id r',
'from   EBA_PROJ_STATUS_UPDATE_TYPES',
'order by is_active_yn desc, display_sequence'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9066112932661368597)
,p_name=>'P59_OWNER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9066112736483368592)
,p_prompt=>'Contributor'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNT OF PROJECT UPDATES OWNERS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select eba_proj_fw.get_name_from_email_address(u.update_owner) || '' (''||count(*)||'')'' d,',
'       lower(u.update_owner) r',
'from eba_proj_status_updates u',
'where u.update_owner is not null ',
'group by eba_proj_fw.get_name_from_email_address(u.update_owner), lower(u.update_owner)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Owners -'
,p_lov_null_value=>'All Owners'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9066113135252368598)
,p_name=>'P59_CATEGORY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9066112736483368592)
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
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Restrict this report to this &CAT_TITLE_LC..'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9066311927578082589)
,p_name=>'P59_PROJECT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9066112736483368592)
,p_item_default=>'0'
,p_prompt=>'Project'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
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
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18151043213830139606)
,p_name=>'P59_GOLD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(9066112736483368592)
,p_prompt=>'Gold Rated'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO RETURNS Y N'
,p_lov=>'.'||wwv_flow_api.id(9019252630556871632)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'<p>Filter updates by their "Gold" rating.</p>'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(9066112517782363134)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13414303241409285732)
,p_computation_sequence=>20
,p_computation_item=>'PROJECT_CAME_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6855161091525950392)
,p_name=>'show child selector'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_PROJECT'
,p_condition_element=>'P59_PROJECT'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6855161397739950394)
,p_event_id=>wwv_flow_api.id(6855161091525950392)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_SHOW_CHILD_PROJ'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6855161592326950394)
,p_event_id=>wwv_flow_api.id(6855161091525950392)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P59_SHOW_CHILD_PROJ'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15440627565909744430)
,p_name=>'Refresh results on filter change'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_GOLD,P59_PROJECT,P59_OWNER,P59_SHOW_CHILD_PROJ,P59_TIMEFRAME,P59_CATEGORY,P59_ROWS,P59_UPDATE_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440627736649744432)
,p_event_id=>wwv_flow_api.id(15440627565909744430)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876986209251771717)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15440887391788848503)
,p_name=>'Search Updates on Enter'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P59_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.keyCode == 13'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'change, keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440888306674848510)
,p_event_id=>wwv_flow_api.id(15440887391788848503)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent.preventDefault();'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440887808372848509)
,p_event_id=>wwv_flow_api.id(15440887391788848503)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6876986209251771717)
);
wwv_flow_api.component_end;
end;
/
