prompt --application/pages/page_00162
begin
--   Manifest
--     PAGE: 00162
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
 p_id=>162
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Manage Project Status Reports'
,p_step_title=>'Manage Project Status Reports'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This interactive report shows all of the status reports for this project. Click the <strong>Add Status Report</strong> button to add a new project status report. Click the Status Title link to go to the status report details page. Click the <strong>R'
||'eturn to Project</strong> button to go back to the project details page. Click the <strong>Reset</strong> button to reset the interactive report. Click the <strong>Actions</strong> button to define the number of rows displayed per page, filter, forma'
||'t, download, and/or save the interactive report.'
,p_last_upd_yyyymmddhh24miss=>'20190905170925'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12505783233160332621)
,p_plug_name=>'Status Reports'
,p_region_name=>'projectStatusReports'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    u.status_title,',
'    eba_proj_fw.format_status_report( dbms_lob.substr(u.status_update,450,1), ''Y'',:APP_ID,:APP_SESSION,u.project_id, ''N'', 400, u.id ) note_text,',
'    lower(u.update_owner) created_by,',
'    to_char(u.update_date,:APP_DATE_FORMAT) created_on,',
'    u.id,',
'    u.update_date',
'from eba_proj_status_rpts u,',
'     eba_proj_status p',
'where u.project_id = p.id',
'      AND (  u.update_owner = lower(:APP_USER)',
'        OR',
'         (u.viewable_by = ''Submitter and Project Members''',
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
'        AND (u.project_id = :P162_ID',
'        )',
'order by u.update_date desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from eba_proj_status_rpts f',
'where ( f.project_id = :P162_ID ',
'        or ( nvl(:P162_INC_CHILD,''N'') = ''Y''',
'            and  f.project_id in (select s.id ',
'                                  from EBA_PROJ_STATUS s',
'                                  where s.parent_project_id = :P162_ID))',
'    )'))
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_required_patch=>wwv_flow_api.id(11865439785610750633)
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12505793689272332624)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'ALLAN'
,p_internal_uid=>11277317076577829496
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12505793715429332627)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371338502526321977)
,p_db_column_name=>'STATUS_TITLE'
,p_display_order=>60
,p_column_identifier=>'R'
,p_column_label=>'Status Title'
,p_column_link=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.:RP,120:P120_PROJECT_ID,P120_STATUS_REPORT_ID,LAST_VIEW:&P162_ID.,#ID#,&APP_PAGE_ID.'
,p_column_linktext=>'#STATUS_TITLE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12505843897214353036)
,p_db_column_name=>'NOTE_TEXT'
,p_display_order=>70
,p_column_identifier=>'AA'
,p_column_label=>'Status Report'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12505823244161353030)
,p_db_column_name=>'UPDATE_DATE'
,p_display_order=>80
,p_column_identifier=>'U'
,p_column_label=>'Update date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12505843953290353037)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>90
,p_column_identifier=>'AB'
,p_column_label=>'Submitted By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12505844049110353038)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>100
,p_column_identifier=>'AC'
,p_column_label=>'Submitted'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12505798929473332635)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'112773224'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATUS_TITLE:NOTE_TEXT:CREATED_BY:CREATED_ON:'
,p_sort_column_1=>'CREATED_ON'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12505799902848332643)
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
 p_id=>wwv_flow_api.id(12505800244654332644)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BEFORE_FOOTER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12505801335871332654)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'RETURN_TO_PROJECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Return To Project'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:&P200_ID.#projectAttachments'
,p_button_condition=>'P200_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12505801752832332654)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'ADD_STATUS_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Status Report'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:RP,116:P116_PROJECT_ID,LAST_VIEW:&P162_ID.,&APP_PAGE_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P162_ID ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12505799422643332639)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12505783233160332621)
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
 p_id=>wwv_flow_api.id(12505803521532332662)
,p_branch_action=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.:RP:P162_ID:&P162_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':REQUEST like ''DELETE%'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12505800651296332644)
,p_name=>'P162_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12505800244654332644)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12505802518892332658)
,p_name=>'Refresh Regions on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>':root'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12505803045950332660)
,p_event_id=>wwv_flow_api.id(12505802518892332658)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'location.reload();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12505802209389332656)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete File'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   c varchar2(255);',
'   x number;',
'begin',
'if v(''REQUEST'') like ''DELETE%'' then',
'    c := replace(v(''REQUEST''),''DELETE'',null);',
'    begin',
'        x := c;',
'        delete from EBA_PROJ_STATUS_FILES where project_id = :P162_ID and id = x;',
'        commit;',
'    exception when others then null;',
'    end;',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST like ''DELETE%'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'File removed successfully.'
);
wwv_flow_api.component_end;
end;
/
