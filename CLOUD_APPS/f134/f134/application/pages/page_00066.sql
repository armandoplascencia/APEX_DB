prompt --application/pages/page_00066
begin
--   Manifest
--     PAGE: 00066
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
 p_id=>66
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Manage Project Attachments'
,p_step_title=>'Manage Project Attachments'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This interactive report shows the attachments that have been uploaded to this project. Click the pencil icon to edit attributes of the attachment. Click the <strong>Add Attachment</strong> button to add a new attachment. Click the <strong>< Return To'
||' Project</strong> button to return to the project details page. Click the name of the file to download the file. Click the "View Details" link to see all of the file''s details. Click the <strong>Reset</strong> button to reset the interactive report. '
||'Click the <strong>Actions</strong> button to define the number of rows displayed per page, filter, format, download, and/or save the interactive report.'
,p_last_upd_yyyymmddhh24miss=>'20190905102942'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9068186845106568876)
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
 p_id=>wwv_flow_api.id(9068190536657821764)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12371335114710321944)
,p_plug_name=>'Attachments'
,p_region_name=>'projectAttachments'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781113968619890797)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.id,',
'    ''<img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="''',
'        ||decode(substr(upper(f.filename),-4),',
'            ''.PPT'', ''uFileIcon powerpoint'',',
'            ''.XLS'', ''uFileIcon excel'',',
'            ''.DOC'', ''uFileIcon word'',',
'            ''.PDF'', ''uFileIcon pdf'',',
'            ''.GIF'', ''uFileIcon image'',',
'            ''.PNG'', ''uFileIcon image'',',
'            ''.JPG'', ''uFileIcon image'',',
'            decode(substr(upper(f.filename),-5),',
'                ''.PPTX'', ''uFileIcon powerpoint'',',
'                ''.XLSX'', ''uFileIcon excel'',',
'                ''.DOCX'', ''uFileIcon word'',',
'                ''.TIFF'', ''uFileIcon image'',',
'                    ''uFileIcon generic''))',
'        ||''" />'' as image,',
'    f.filename,',
'    apex_util.get_blob_file_src(''P43_FILE_BLOB'',f.id) as file_link,',
'    f.file_mimetype,',
'    f.file_charset,',
'    apex_util.filesize_mask(dbms_lob.getlength(file_blob)) f_len,',
'    decode(sign(length(f.file_comments)-100),',
'                1, substr(f.file_comments,1,100)||''...'',',
'                f.file_comments) file_comments,',
'    nvl(f.gold_yn, ''N'') as gold,',
'    f.created,',
'    f.updated,',
'    eba_proj_fw.get_name_from_email_address(f.created_by) created_by,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':106:''||:APP_SESSION||'':::106:P106_ID,P106_PROJECT_ID:''||f.id||'',''||f.project_id) doc_link,',
'    '''' delete_button,',
'    FILE_COMMENTS description',
'from EBA_PROJ_STATUS_FILES f',
'where f.project_id = :P66_ID',
'order by f.created desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_PROJ_STATUS_FILES f',
'where ( f.project_id = :P66_ID ',
'        or ( nvl(:P66_INC_CHILD,''N'') = ''Y''',
'            and  f.project_id in (select s.id ',
'                                  from EBA_PROJ_STATUS s',
'                                  where s.parent_project_id = :P66_ID))',
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
 p_id=>wwv_flow_api.id(12371336553539321958)
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
,p_internal_uid=>11142859940844818830
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371336706049321959)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:RP:P43_ID,P43_PROJECT_ID,LAST_VIEW:#ID#,&P66_ID.,&APP_PAGE_ID.'
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
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P66_ID ) = ''Y'''))
,p_display_condition2=>'PLSQL'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371336715038321960)
,p_db_column_name=>'IMAGE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Image'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371336911218321961)
,p_db_column_name=>'FILENAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_link=>'#FILE_LINK#'
,p_column_linktext=>'#FILENAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371336985831321962)
,p_db_column_name=>'FILE_LINK'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'File link'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371337027783321963)
,p_db_column_name=>'FILE_MIMETYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'File mimetype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371337128808321964)
,p_db_column_name=>'FILE_CHARSET'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'File charset'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371337302181321965)
,p_db_column_name=>'F_LEN'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Size'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371337391606321966)
,p_db_column_name=>'FILE_COMMENTS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'File comments'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371337415964321967)
,p_db_column_name=>'CREATED'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Date Added'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371337594906321968)
,p_db_column_name=>'UPDATED'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371337624337321969)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Created by'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371337738046321970)
,p_db_column_name=>'DOC_LINK'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'View'
,p_column_link=>'#DOC_LINK#'
,p_column_linktext=>'View Details'
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
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12371337887080321971)
,p_db_column_name=>'DELETE_BUTTON'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Delete'
,p_column_link=>'javascript: apex.confirm(''Are you sure you want to permanently delete this file?'',''DELETE#ID#'');'
,p_column_linktext=>'<span class="t-Icon fa fa-trash-o" aria-hidden="true"></span>'
,p_column_link_attr=>'class="t-Button t-Button--danger t-Button--simple t-Button--small" title="Delete File: #FILENAME#"'
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
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P66_ID ) = ''Y'''))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17957891129894970148)
,p_db_column_name=>'GOLD'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Gold'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9019252630556871632)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(19574317225681918179)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>141
,p_column_identifier=>'O'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12371839114629618390)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111433626'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:FILENAME:F_LEN:GOLD:CREATED:UPDATED:DESCRIPTION:DOC_LINK:DELETE_BUTTON:'
,p_sort_column_1=>'GOLD'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'CREATED'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6835024930224046970)
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
 p_id=>wwv_flow_api.id(6835025702176065858)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'ADD_ATTACHMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:RP,43:P43_PROJECT_ID:&P66_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P66_ID ) = ''Y'''))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12371337916624321972)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12371335114710321944)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP,&APP_PAGE_ID.,RIR:P66_ID:&P66_ID.'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12371333643630321929)
,p_branch_action=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:RP:P66_ID:&P66_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'EXPRESSION'
,p_branch_condition=>':REQUEST like ''DELETE%'''
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9068191416834835007)
,p_name=>'P66_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9068190536657821764)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12201960173227961253)
,p_name=>'Refresh Regions on Dialog Close'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>':root'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12201960513421961257)
,p_event_id=>wwv_flow_api.id(12201960173227961253)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_attribute_01=>'location.reload();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12189617155832421378)
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
'        delete from EBA_PROJ_STATUS_FILES where project_id = :P66_ID and id = x;',
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
