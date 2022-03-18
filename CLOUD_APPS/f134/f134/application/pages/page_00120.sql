prompt --application/pages/page_00120
begin
--   Manifest
--     PAGE: 00120
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
 p_id=>120
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Status Report'
,p_step_title=>'Status Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956284291949947273)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'.permalink { padding: 0 10px 10px 10px; text-align: center;}',
'.permalink a {color: #707070; font: 11px/12px Arial, sans-serif;}',
'</style>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.statusReport {',
'    padding: 8px;',
'}',
'.visibility-region {',
'padding: 8px;',
'font: normal 11px/16px Arial, sans-serif;',
'color: #404040;',
'}'))
,p_step_template=>wwv_flow_api.id(6781098204030890765)
,p_page_template_options=>'#DEFAULT#'
,p_required_patch=>wwv_flow_api.id(6195737494730111919)
,p_protection_level=>'C'
,p_help_text=>'This page previews a status report email. Click the <strong>Edit Status Report</strong> button to edit the status report. Click the <strong>Email</strong> button to email the status report. Click the <strong>View Project</strong> button to return to '
||'the project details page. Other pertinent information about the status report is displayed in the right-hand column on the page. '
,p_last_upd_yyyymmddhh24miss=>'20190905143130'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6170434784009837382)
,p_plug_name=>'Hidden Region'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6170435401181837384)
,p_plug_name=>'Row Key'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uniqueKey">Project Key',
'  <span>&P120_PROJECT_KEY.</span>',
'</div>'))
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
 p_id=>wwv_flow_api.id(6170435793513837390)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6170437784837837397)
,p_plug_name=>'Submitted On'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>90
,p_plug_new_grid_column=>false
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select update_date due_date, ''Due Date'' label',
'from eba_proj_status_rpts',
'where id = :P120_STATUS_REPORT_ID'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.MINICALENDAR'
,p_attribute_01=>'DUE_DATE'
,p_attribute_02=>'LABEL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6170438395901837424)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6172715704268232214)
,p_plug_name=>'Visibility'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'begin',
'sys.htp.p(''<div class="visibility-region">'');',
'for c1 in (',
'select',
'       viewable_by,',
'       editable_by',
'from eba_proj_status_rpts u,',
'     eba_proj_status p',
'where u.project_id = p.id',
'  and u.id = :P120_STATUS_REPORT_ID',
'  and ( ',
'        --(',
'           -- u.viewable_by = ''Submitter''',
'            --and',
'            u.update_owner = lower(:APP_USER)',
'        --)',
'        OR',
'        (u.viewable_by = ''Submitter and Project Members''',
'               and exists ( select null',
'                            from eba_proj_user_ref rf,',
'                                eba_proj_status_users u,',
'                                eba_proj_roles r',
'                            where rf.project_id = p.id',
'                                and rf.user_id = u.id',
'                                and lower(u.username) = lower(:APP_USER)',
'                                and rf.role_id = r.id',
'                                and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' )',
'        )',
'        OR',
'        u.viewable_by = ''All'' ',
'      )',
') ',
'loop',
'   if c1.viewable_by = c1.editable_by then',
'      sys.htp.p(''<strong>Viewable and Editable By:</strong> ''|| apex_escape.html(c1.viewable_by));',
'   else',
'      sys.htp.p(''<strong>Viewable By:</strong> ''|| apex_escape.html(c1.viewable_by) || ''<br/>'');',
'      sys.htp.p(''<strong>Editable By:</strong> ''|| apex_escape.html(c1.editable_by));',
'   end if;',
'end loop;',
'sys.htp.p(''</div>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6172744988066833049)
,p_plug_name=>'Display'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6172832407336023010)
,p_name=>'Recent Reports'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'REGION_POSITION_03'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.id,',
'       to_char(u.update_date,:APP_DATE_FORMAT)||'' by ''||lower(u.created_by) submitted',
'from eba_proj_status_rpts u,',
'     eba_proj_status p',
'where u.project_id = p.id',
'  and p.id = :P120_PROJECT_ID',
'  and u.id != :P120_STATUS_REPORT_ID',
'  and ( ',
'        (',
'            u.viewable_by = ''Submitter''',
'            and',
'            u.update_owner = lower(:APP_USER)',
'        )',
'        OR',
'         (u.viewable_by = ''Submitter and Project Members''',
'               and exists ( select null',
'                            from eba_proj_user_ref rf,',
'                                eba_proj_status_users usr,',
'                                eba_proj_roles r',
'                            where rf.project_id = p.id',
'                                and rf.user_id = usr.id',
'                                and lower(usr.username) = lower(:APP_USER)',
'                                and rf.role_id = r.id',
'                                and eba_proj_fw.is_edit_authorized( usr.username, rf.project_id ) = ''Y'' ))',
'        OR',
'         u.viewable_by = ''All'' )',
'order by nvl(u.update_date,u.created) desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No other reports found.'
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
 p_id=>wwv_flow_api.id(6172832685567023040)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6172832795020023048)
,p_query_column_id=>2
,p_column_alias=>'SUBMITTED'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.::P120_STATUS_REPORT_ID:#ID#'
,p_column_linktext=>'#SUBMITTED#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6173391498527772999)
,p_plug_name=>'Status Report'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    eba_proj_stat_email.print_status_rpt_message (',
'        p_id              => :P120_PROJECT_ID, ',
'        p_status_rpt_id   => :P120_STATUS_REPORT_ID,',
'        p_proj_owners     => :P120_PROJECT_OWNERS,',
'        p_proj_status     => :P120_PROJECT_STATUS,',
'        p_proj_desc       => :P120_PROJECT_DESCRIPTION,',
'        p_proj_goal       => :P120_PROJECT_GOAL,',
'        p_milestones      => :P120_MILESTONES,',
'        p_action_items    => :P120_ACTION_ITEMS,',
'        p_issues          => :P120_ISSUES,',
'        p_resources       => :P120_RESOURCES,',
'        p_app_user        => :APP_USER,',
'        p_app_date_format => :APP_DATE_FORMAT,',
'        p_app_name        => :APPLICATION_TITLE,',
'        p_show_footer     => ''N'',',
'        p_app_id          => :APP_ID, ',
'        p_session         => :APP_SESSION,',
'        p_target          => ''HTP'');',
'exception when others then',
'    sys.htp.p(sqlerrm);',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6170437406527837396)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'Return'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Return'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_cattributes=>'title="Return to last page view"'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6208789993360797048)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'PROJECT_EMAIL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Email'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.:RP,121:P121_STATUS_REPORT_ID,LAST_VIEW,P200_ID:&P120_STATUS_REPORT_ID.,120,&P120_PROJECT_ID.'
,p_button_css_classes=>'uButtonAlt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6170435996383837391)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'EDIT_STATUS_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Status Report'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.:115:P115_ID,LAST_VIEW:&P120_STATUS_REPORT_ID.,&APP_PAGE_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status_rpts u',
'where u.id = :P120_STATUS_REPORT_ID',
'  and (',
'          (',
'              u.editable_by = ''Submitter''',
'              and',
'              lower(u.update_owner) = lower(:APP_USER)',
'          )',
'          or',
'          (',
'              u.editable_by = ''Submitter and Project Members''',
'              and',
'              eba_proj_fw.is_edit_authorized(',
'                  p_username   => upper(:APP_USER),',
'                  p_project_id => u.project_id ) = ''Y''',
'          )',
'          or',
'          u.editable_by = ''All Contributors''',
'      );'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6170436202498837391)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'PROJECT_OVERVIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'View Project'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::P200_ID:&P120_PROJECT_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6172784090077704196)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(6172744988066833049)
,p_button_name=>'P120_GO'
,p_button_static_id=>'P120_GO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Go'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6170434987457837383)
,p_name=>'P120_PROJECT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6170434784009837382)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6170435203365837383)
,p_name=>'P120_STATUS_REPORT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6170434784009837382)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6170435591612837390)
,p_name=>'P120_PROJECT_KEY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(6170435401181837384)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6172717490399282177)
,p_name=>'P120_PROJECT_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6170434784009837382)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6172745506116837086)
,p_name=>'P120_PROJECT_DESCRIPTION'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(6172744988066833049)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6172745709137837086)
,p_name=>'P120_PROJECT_GOAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(6172744988066833049)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6172745891233837087)
,p_name=>'P120_MILESTONES'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(6172744988066833049)
,p_item_default=>'none'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6173345204295100805)
,p_name=>'P120_PROJECT_OWNERS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6172744988066833049)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6173349002531147204)
,p_name=>'P120_PROJECT_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6172744988066833049)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6175774700509833610)
,p_name=>'P120_ACTION_ITEMS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(6172744988066833049)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12189615860823421365)
,p_name=>'P120_ISSUES'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(6172744988066833049)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12189615963515421366)
,p_name=>'P120_RESOURCES'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(6172744988066833049)
,p_item_default=>'N'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13193035487374755062)
,p_computation_sequence=>10
,p_computation_item=>'PROJECT_CAME_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6172933801689639406)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'save settings'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.set_preference_value ( ',
'   p_preference_name => ''STATUS_RPTS_DISPLAY_PRJ_OWNERS'', ',
'   p_preference_value => :P120_PROJECT_OWNERS );',
'',
'eba_proj_fw.set_preference_value ( ',
'   p_preference_name => ''STATUS_RPTS_DISPLAY_PRJ_STATUS'', ',
'   p_preference_value => :P120_PROJECT_STATUS );',
'',
'eba_proj_fw.set_preference_value ( ',
'   p_preference_name => ''STATUS_RPTS_DISPLAY_PRJ_DESC'', ',
'   p_preference_value => :P120_PROJECT_DESCRIPTION );',
'',
'eba_proj_fw.set_preference_value ( ',
'   p_preference_name => ''STATUS_RPTS_DISPLAY_PRJ_GOAL'', ',
'   p_preference_value => :P120_PROJECT_GOAL );',
'',
'eba_proj_fw.set_preference_value ( ',
'   p_preference_name => ''STATUS_RPTS_DISPLAY_PRJ_MILESTONES'', ',
'   p_preference_value => :P120_MILESTONES );',
'',
'eba_proj_fw.set_preference_value ( ',
'   p_preference_name => ''STATUS_RPTS_DISPLAY_ACTION_ITEMS'', ',
'   p_preference_value => :P120_ACTION_ITEMS );',
'',
'eba_proj_fw.set_preference_value ( ',
'   p_preference_name => ''STATUS_RPTS_DISPLAY_ISSUES'', ',
'   p_preference_value => :P120_ISSUES );',
'',
'eba_proj_fw.set_preference_value ( ',
'   p_preference_name => ''STATUS_RPTS_DISPLAY_RESOURCES'', ',
'   p_preference_value => :P120_RESOURCES );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(6172784090077704196)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6172718189732303695)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load project details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'select p.id, p.project, nvl(eba_proj_fw.get_project_rowkey(p_project_id => p.id), p.row_key) as row_key',
'  from eba_proj_status p,',
'       eba_proj_status_rpts s',
' where p.id = s.project_id',
'   and s.id = :P120_STATUS_REPORT_ID',
') loop',
'   :P120_PROJECT_ID   := c1.id;',
'   :P120_PROJECT_NAME := c1.project;',
'   :P120_PROJECT_KEY  := c1.row_key;',
'end loop;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6172934310001641799)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'load prefs'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P120_PROJECT_OWNERS := eba_proj_fw.get_preference_value(''STATUS_RPTS_DISPLAY_PRJ_OWNERS'');',
'',
':P120_PROJECT_STATUS := eba_proj_fw.get_preference_value(''STATUS_RPTS_DISPLAY_PRJ_STATUS'');',
'',
':P120_PROJECT_DESCRIPTION := eba_proj_fw.get_preference_value(''STATUS_RPTS_DISPLAY_PRJ_DESC'');',
'',
':P120_PROJECT_GOAL := eba_proj_fw.get_preference_value(''STATUS_RPTS_DISPLAY_PRJ_GOAL'');',
'',
':P120_MILESTONES := eba_proj_fw.get_preference_value(''STATUS_RPTS_DISPLAY_PRJ_MILESTONES'');',
'',
':P120_ACTION_ITEMS := eba_proj_fw.get_preference_value(''STATUS_RPTS_DISPLAY_ACTION_ITEMS'');',
'',
':P120_ISSUES := eba_proj_fw.get_preference_value(''STATUS_RPTS_DISPLAY_ISSUES'');',
'',
':P120_RESOURCES := eba_proj_fw.get_preference_value(''STATUS_RPTS_DISPLAY_RESOURCES'');'))
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
