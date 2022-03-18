prompt --application/pages/page_00092
begin
--   Manifest
--     PAGE: 00092
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
 p_id=>92
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Manage Project Issues'
,p_step_title=>'Manage Project Issues'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This interactive report shows all issues associated to this project. Click the <strong>Add Issue</strong> button to add a new issue to this project. Click the <strong>< Return to Project</strong> button to return to the project details page. Click th'
||'e pencil icon next to any existing issue to edit that issue. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, filter, format, download,'
||' and/or save the interactive report.'
,p_last_upd_yyyymmddhh24miss=>'20190905114849'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7721758329607673762)
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
 p_id=>wwv_flow_api.id(7721820441019695630)
,p_plug_name=>'Hidden Items'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>200
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7722153016801724727)
,p_plug_name=>'Issues'
,p_region_name=>'projectIssues'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i.id,',
'    i.project_id,',
'    i.tags,',
'    i.cat_id as category,',
'    i.ref_num as reference_identifier,',
'    i.issue,',
'    i.resolution,',
'    i.row_key,',
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
'    decode(i.is_open,''Y'',''Open'',''N'',''Closed'',is_open) open,',
'    case when i.link_01 is not null then ''<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'' else null end as link_text,',
'    --nvl(i.link_name_01, i.link_01) link_text,',
'    nvl(i.link_01,''#'') link_target,',
'    lower(i.created_by) created_by,',
'    i.updated,',
'    lower(i.updated_by) updated_by,',
'    i.created,',
'    i.issue_detail detail,',
'    (   select project',
'        from eba_proj_status x',
'        where x.id = i.project_id) project',
'from EBA_PROJ_STATUS_ISSUES i',
'where ( i.project_id = :P92_ID ',
'        or (nvl(:P92_INC_CHILD,''N'') = ''Y'' and ',
'            i.project_id in (select s.id ',
'                             from EBA_PROJ_STATUS s',
'                             where s.parent_project_id = :P92_ID))',
'    )',
'order by i.issue asc, i.is_open desc, i.issue_level, upper(issue), i.updated desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_PROJ_STATUS_ISSUES l',
'where ( l.project_id = :P92_ID ',
'        or (nvl(:P92_INC_CHILD,''N'') = ''Y'' and ',
'            l.project_id in (select s.id ',
'                             from EBA_PROJ_STATUS s',
'                             where s.parent_project_id = :P92_ID))',
'    )'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(7722153145603724727)
,p_name=>'Issues'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'MIKE'
,p_internal_uid=>6493676532909221599
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722153508135724730)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24:P24_ID,P24_PROJECT_ID:#ID#,#PROJECT_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
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
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_static_id=>'editIssue'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P92_ID ) = ''Y'''))
,p_display_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722157374068724736)
,p_db_column_name=>'PROJECT'
,p_display_order=>2
,p_column_identifier=>'K'
,p_column_label=>'Project'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'P92_INC_CHILD'
,p_display_condition2=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722153909123724731)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>3
,p_column_identifier=>'B'
,p_column_label=>'Project ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722154243447724731)
,p_db_column_name=>'ISSUE'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Issue'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3945327372412585393)
,p_db_column_name=>'CATEGORY'
,p_display_order=>14
,p_column_identifier=>'Q'
,p_column_label=>'Category'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(4036494858285212916)
,p_rpt_show_filter_lov=>'1'
,p_required_patch=>wwv_flow_api.id(4036491964090119980)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3945327435626585394)
,p_db_column_name=>'REFERENCE_IDENTIFIER'
,p_display_order=>24
,p_column_identifier=>'R'
,p_column_label=>'Reference Identifier'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_required_patch=>wwv_flow_api.id(4036492193169131049)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722154677880724732)
,p_db_column_name=>'ISSUE_OWNER'
,p_display_order=>34
,p_column_identifier=>'D'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722155046087724732)
,p_db_column_name=>'ISSUE_LEVEL'
,p_display_order=>44
,p_column_identifier=>'E'
,p_column_label=>'Level'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(228697740287420773)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722155778391724733)
,p_db_column_name=>'LINK_TEXT'
,p_display_order=>54
,p_column_identifier=>'G'
,p_column_label=>'Link'
,p_column_link=>'#LINK_TARGET#'
,p_column_linktext=>'#LINK_TEXT#'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from EBA_PROJ_STATUS_ISSUES i',
'where ( i.project_id = :P92_ID ',
'        or (nvl(:P92_INC_CHILD,''N'') = ''Y'' and ',
'            i.project_id in (select s.id ',
'                             from EBA_PROJ_STATUS s',
'                             where s.parent_project_id = :P92_ID))',
'    )',
'and i.link_01 is not null'))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722155390800724733)
,p_db_column_name=>'OPEN'
,p_display_order=>64
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722156197154724734)
,p_db_column_name=>'LINK_TARGET'
,p_display_order=>74
,p_column_identifier=>'H'
,p_column_label=>'Target'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722156518676724735)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>84
,p_column_identifier=>'I'
,p_column_label=>'Added By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722156984218724735)
,p_db_column_name=>'UPDATED'
,p_display_order=>94
,p_column_identifier=>'J'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722165057169739540)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>104
,p_column_identifier=>'L'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722175746815739541)
,p_db_column_name=>'CREATED'
,p_display_order=>114
,p_column_identifier=>'M'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722180191512751329)
,p_db_column_name=>'DETAIL'
,p_display_order=>124
,p_column_identifier=>'N'
,p_column_label=>'Detail'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17636140577156943237)
,p_db_column_name=>'RESOLUTION'
,p_display_order=>134
,p_column_identifier=>'O'
,p_column_label=>'Resolution'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17636212494032978048)
,p_db_column_name=>'ROW_KEY'
,p_display_order=>144
,p_column_identifier=>'P'
,p_column_label=>'Row Key'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(820204942567460394)
,p_db_column_name=>'TAGS'
,p_display_order=>154
,p_column_identifier=>'S'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(7722158314161725310)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'64936818'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:ISSUE:CATEGORY:ISSUE_OWNER:ISSUE_LEVEL:OPEN:DETAIL:UPDATED_BY:UPDATED:'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12155476093572754205)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'RETURN_TO_PROJECT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Return to Project'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&APP_SESSION.::NO:200:P200_ID:&P92_ID.#projectIssues'
,p_button_condition=>'P92_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7577520249938437360)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'ADD_ISSUE'
,p_button_static_id=>'addIssue'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add issue'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP,24:P24_PROJECT_ID:&P92_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P92_ID ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7577520167905437359)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7722153016801724727)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR:P92_ID:&P92_ID.'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7721942126159772278)
,p_name=>'P92_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7721820441019695630)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(7577520554825437363)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(8407432513076961965)
,p_name=>'Refresh on Dialog Close from Edit Issue'
,p_event_sequence=>5
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#projectIssues, #addIssue'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8407432618469961966)
,p_event_id=>wwv_flow_api.id(8407432513076961965)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7722153016801724727)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3945327614011585396)
,p_name=>'Refresh issues after add'
,p_event_sequence=>15
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(7577520249938437360)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3945327714849585397)
,p_event_id=>wwv_flow_api.id(3945327614011585396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7722153016801724727)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3945327867532585398)
,p_name=>'Refresh issues after edit'
,p_event_sequence=>25
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(7722153016801724727)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3945327944648585399)
,p_event_id=>wwv_flow_api.id(3945327867532585398)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(7722153016801724727)
);
wwv_flow_api.component_end;
end;
/
