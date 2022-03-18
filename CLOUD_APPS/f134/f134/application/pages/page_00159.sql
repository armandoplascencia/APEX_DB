prompt --application/pages/page_00159
begin
--   Manifest
--     PAGE: 00159
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
 p_id=>159
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Manage Project People'
,p_step_title=>'Manage Project People'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This interactive report shows all of the people assigned to this project. Click the <strong>Add Person</strong> button to add a new project member. Click the pencil icon next to an existing project member to edit that member''s attributes. Click the <'
||'strong>Return to Project</strong> button go back to the project details page. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, filter, '
||'format, download, and/or save the interactive report.'
,p_last_upd_yyyymmddhh24miss=>'20190905170532'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11678715318478117523)
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
 p_id=>wwv_flow_api.id(11678715967160117526)
,p_plug_name=>'People'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rf.id,',
'    rf.user_id,',
'    decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))) as pretty_username,',
'    u.username,',
'    rf.project_id,',
'    p.project,',
'    rf.role_id,',
'    nvl(rf.acl_status_level,r.default_acl_status_level) acl_status_level,',
'    rf.notes,',
'    rf.created,',
'    eba_proj_fw.get_name_from_email_address(rf.created_by) created_by,',
'    rf.updated,',
'    eba_proj_fw.get_name_from_email_address(rf.updated_by) updated_by,',
'    (   select involvement_level',
'        from eba_proj_involvement_levels il',
'        where il.id = rf.involvement_level_id',
'    ) involvement,',
'    --',
'    (   select count(*)',
'        from eba_proj_status_AIS a',
'        where a.action_status = ''Open''',
'            and a.project_id = p.id',
'            and (',
'              ( a.owner_role_id is null and  ( lower(a.action_owner_01) = lower(u.username)',
'                        or lower(a.action_owner_02) = lower(u.username)',
'                        or lower(a.action_owner_03) = lower(u.username)',
'                        or lower(a.action_owner_04) = lower(u.username) ) )',
'                or ',
'              ( a.owner_role_id is not null and a.owner_role_id = rf.role_id )',
'            )',
'            ) open_action_items,',
'    --',
'    (   select count(*)',
'        from eba_proj_status_ms m',
'        where m.milestone_status = ''Open''',
'            and m.project_id = p.id',
'            and (',
'              ( m.owner_role_id is null and lower(m.milestone_owner) = lower(u.username) )',
'                or ',
'              ( m.owner_role_id is not null and m.owner_role_id = rf.role_id )',
'            )',
'            ) open_milestones,',
'    --',
'    (   select count(*)',
'        from eba_proj_status_issues i',
'        where i.is_open = ''Y''',
'            and i.project_id = p.id',
'            and (',
'              ( i.owner_role_id is null and lower(i.issue_owner) = lower(u.username) )',
'                or ',
'              ( i.owner_role_id is not null and i.owner_role_id = rf.role_id )',
'            )',
'            ) open_issues',
'from ',
'    eba_proj_status_users u,',
'    eba_proj_user_ref rf,',
'    eba_proj_roles r,',
'    eba_proj_status p',
'where rf.project_id = nvl(:P159_PROJECT_ID,rf.project_id)',
'    and u.id = rf.user_id',
'    and rf.project_id = p.id',
'    and r.id = rf.role_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11678716072754117526)
,p_name=>'People'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:RP,150:P150_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit Person" title="Edit Person">'
,p_detail_link_condition_type=>'EXISTS'
,p_detail_link_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status',
'where id = :P159_PROJECT_ID',
'    and acl_status_level = 1',
'union all',
'select null',
'from eba_proj_status_users u,',
'    eba_proj_user_ref rf,',
'    eba_proj_roles r,',
'    eba_proj_status p',
'where rf.project_id = :P159_PROJECT_ID',
'    and rf.project_id = p.id',
'    and u.id = rf.user_id',
'    and upper(u.username) = upper(:APP_USER)',
'    and r.id = rf.role_id',
'    and eba_proj_fw.is_edit_authorized( u.username, rf.project_id, 3 ) = ''Y'''))
,p_detail_link_auth_scheme=>wwv_flow_api.id(7306166303644991446)
,p_owner=>'DAVID'
,p_internal_uid=>10450239460059614398
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11678716488715117538)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20152066323933308257)
,p_db_column_name=>'USER_ID'
,p_display_order=>11
,p_column_identifier=>'S'
,p_column_label=>'User'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20152066504858308258)
,p_db_column_name=>'USERNAME'
,p_display_order=>21
,p_column_identifier=>'T'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20152066591889308259)
,p_db_column_name=>'PRETTY_USERNAME'
,p_display_order=>31
,p_column_identifier=>'U'
,p_column_label=>'User'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11678717225183117541)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>41
,p_column_identifier=>'C'
,p_column_label=>'Project'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(11677310552046892880)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11678717684552117542)
,p_db_column_name=>'ROLE_ID'
,p_display_order=>51
,p_column_identifier=>'D'
,p_column_label=>'Project Role'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(11680306848309652742)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11678718076875117542)
,p_db_column_name=>'ACL_STATUS_LEVEL'
,p_display_order=>61
,p_column_identifier=>'E'
,p_column_label=>'Access Level'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(11727021805039159216)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'NOT_EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status',
'where id = :P159_PROJECT_ID',
'    and acl_status_level = 1'))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11678718511493117542)
,p_db_column_name=>'NOTES'
,p_display_order=>71
,p_column_identifier=>'F'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11678718906118117543)
,p_db_column_name=>'CREATED'
,p_display_order=>81
,p_column_identifier=>'G'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11678719230574117543)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>91
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11678719700602117543)
,p_db_column_name=>'UPDATED'
,p_display_order=>101
,p_column_identifier=>'I'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11678720083868117544)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>111
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12093253725373299454)
,p_db_column_name=>'INVOLVEMENT'
,p_display_order=>121
,p_column_identifier=>'K'
,p_column_label=>'Involvement'
,p_column_type=>'STRING'
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
 p_id=>wwv_flow_api.id(20152066750112308261)
,p_db_column_name=>'PROJECT'
,p_display_order=>131
,p_column_identifier=>'V'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17102301316407361480)
,p_db_column_name=>'OPEN_MILESTONES'
,p_display_order=>141
,p_column_identifier=>'O'
,p_column_label=>'Open Milestones'
,p_column_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP,63,CIR:IRC_MILESTONE_OWNER,IR_MILESTONE_STATUS,IR_PROJECT:#PRETTY_USERNAME#,Open,\#PROJECT#\'
,p_column_linktext=>'#OPEN_MILESTONES#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17102355827881334306)
,p_db_column_name=>'OPEN_ACTION_ITEMS'
,p_display_order=>151
,p_column_identifier=>'P'
,p_column_label=>'Open Action Items'
,p_column_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,CIR:IRC_OWNER,IR_ACTION_STATUS,IR_PROJECT:#PRETTY_USERNAME#,Open,\#PROJECT#\'
,p_column_linktext=>'#OPEN_ACTION_ITEMS#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17102396669903406848)
,p_db_column_name=>'OPEN_ISSUES'
,p_display_order=>161
,p_column_identifier=>'Q'
,p_column_label=>'Open Issues'
,p_column_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP,22,CIR:IRC_ISSUE_OWNER,IR_IS_OPEN,IR_PROJECT_ID:#PRETTY_USERNAME#,Yes,#PROJECT_ID#'
,p_column_linktext=>'#OPEN_ISSUES#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11679809825002484836)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'104513333'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRETTY_USERNAME:ROLE_ID:INVOLVEMENT:NOTES:UPDATED:UPDATED_BY:OPEN_MILESTONES:OPEN_ACTION_ITEMS:OPEN_ISSUES::PROJECT'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11916212775686762878)
,p_plug_name=>'Project Status (Open)'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status',
'where id = :P159_PROJECT_ID',
'    and acl_status_level = 1;'))
,p_attribute_01=>'PROJECT_ACL_OPEN'
,p_attribute_12=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12093211332612299430)
,p_plug_name=>'Project Status (Locked)'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status',
'where id = :P159_PROJECT_ID',
'    and acl_status_level = 3;'))
,p_attribute_01=>'PROJECT_ACL_LOCKED'
,p_attribute_12=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12093211434673299431)
,p_plug_name=>'Project Status (Closed)'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TRANSLATED_MESSAGE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status',
'where id = :P159_PROJECT_ID',
'    and acl_status_level = 2;'))
,p_attribute_01=>'PROJECT_ACL_CLOSED'
,p_attribute_12=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12155443464766752812)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'RETURN_TO_PROJECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Return to Project'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::P200_ID:&P159_PROJECT_ID.#projectPeople'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11575122486499865352)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'ADD_PERSON'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Person'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:RP,150:P150_PROJECT_ID:&P159_PROJECT_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P159_PROJECT_ID,',
'    p_min_auth   => 3 ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11575121439493865342)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11678715967160117526)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,RIR,&APP_PAGE_ID.:P159_PROJECT_ID:&P159_PROJECT_ID.'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11575121570685865343)
,p_name=>'P159_PROJECT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11678715967160117526)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11575122605241865353)
,p_name=>'Handle Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(11678715967160117526)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11575122690686865354)
,p_event_id=>wwv_flow_api.id(11575122605241865353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11678715967160117526)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12720327579371531856)
,p_name=>'Refresh region upon close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(11575122486499865352)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12720327682454531857)
,p_event_id=>wwv_flow_api.id(12720327579371531856)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11678715967160117526)
);
wwv_flow_api.component_end;
end;
/
