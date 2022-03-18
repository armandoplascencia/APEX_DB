prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>124
,p_default_id_offset=>97439342994982660
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(1218849447906494434)
,p_name=>'Project'
,p_alias=>'PROJECT'
,p_step_title=>'Project'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'table.uReport,',
'table.uReportContainer {',
'  width: 100%;',
'}',
'table.uReportContainer {',
'  margin-bottom: 8px;',
'}',
'',
'img.projectIcon {',
'max-width: 100%;',
'border-radius: 3px;',
'display: block;',
'margin-bottom: 16px;',
'}',
'</style>'))
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301103407'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1415912022377314490)
,p_plug_name=>'Upload a file to the WWV_FLOW_FILES table'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_api.id(2006236615484932725)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul style="margin: 8px 24px;">',
'  <li>Create a "File Browse" page item with a storage type of "Table APEX_APPLICATION_TEMP_FILES" (e.g. P13_FILE).  When APEX_APPLICATION_TEMP_FILES view used, Oracle Application Express automatically deletes the file at the end of the session or at '
||'the end of the upload request, depending on what you choose for Purge File At.</li>',
'  <li>If your application''s files table has a description (or comments) column, add a textarea page item for capturing this information</li>',
'  <li>To move the file from the APEX_APPLICATION_TEMP_FILES view to your application''s "files" table, create a PL/SQL page process.</li>',
'  <li>The process to move the record should select the necessary row from APEX_APPLICATION_TEMP_FILES view, insert that data into the application''s "files" table (see "Upload file" process).</li>',
'</ul>'))
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
 p_id=>wwv_flow_api.id(1431773839294021485)
,p_plug_name=>'Display an Image File Inline'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_api.id(2006236615484932725)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul style="margin: 8px 24px;">',
'  <li>Create a "Display Image" page item waith a "Based On" value of "BLOB Column specified in Item Source" (e.g. P13_ICON_IMG)</li>',
'  <li>Ensure the page item''s source has it''s "Source Type" set to "Database Column" and it''s "Source value or expression" value is the column name of the blob column in the table the file resides</li>',
'  <li>Ensure the "Settings" section''s "Alternative Text Column" value is column name that holds file comments (e.g. "ICON_COMMENTS")</li>',
'  <li>Ensure the "Settings" section''s "Filename Column" value is the column name that holds filename (e.g. "ICON_NAME")</li>',
'  <li>Ensure the "Settings" section''s "BLOB Last Updated Column" value is the column name that holds the file''s last_updated_on value (e.g. "ICON_LAST_UPDATED")</li>',
'</ul>'))
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
 p_id=>wwv_flow_api.id(1431774142411022358)
,p_plug_name=>'Display a "Download" Link in a "File Browse" Page Item'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_api.id(2006236615484932725)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul style="margin: 8px 24px;">',
'  <li>Create a "File Browse" page item with a storage type of "BLOB column specified in Item Source attribute" (e.g. P13_PROJECT_ICON)</li>',
'  <li>Ensure the page item''s source has it''s "Source Type" set to "Database Column" and it''s "Source value or expression" value is the column name of the blob column in the table the file resides</li>',
'  <li>Ensure the "Settings" section''s "Display Download Link" dropdown value is set to "Yes"</li>',
'  <li>Ensure the "Settings" section''s "Download Link Text" text field is populated with text descriptive of the file that will be downloaded when clicked (e.g. "Download File")</li>',
'  <li>Ensure the "Settings" section''s "Content Disposition" is set to "Attachment"</li>',
'</ul>'))
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
 p_id=>wwv_flow_api.id(3338686647661327588)
,p_plug_name=>'Project'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(2006234073473932720)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3338739928848318647)
,p_name=>'Project Attachments'
,p_parent_plug_id=>wwv_flow_api.id(3338686647661327588)
,p_template=>wwv_flow_api.id(2006229809342932708)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ID,',
'    FILENAME,',
'    FILE_MIMETYPE,',
'    FILE_CHARSET,',
'    FILE_BLOB,',
'    CREATED,',
'    CREATED_BY,',
'    UPDATED,',
'    UPDATED_BY,',
'    dbms_lob.getlength(file_blob) file_size,',
'    dbms_lob.getlength(file_blob) download',
'from EBA_DEMO_FILES',
'where project_id = :P13_ID',
'order by created desc'))
,p_display_when_condition=>'P13_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(2006245944217932757)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No files are attached to this project.'
,p_query_row_count_max=>100
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
 p_id=>wwv_flow_api.id(3338740539291318653)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338740824974318653)
,p_query_column_id=>2
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>2
,p_column_heading=>'Filename'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12:P12_ID:#ID#'
,p_column_linktext=>'#FILENAME#'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338740952164318653)
,p_query_column_id=>3
,p_column_alias=>'FILE_MIMETYPE'
,p_column_display_sequence=>3
,p_column_heading=>'File Mimetype'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338741026564318653)
,p_query_column_id=>4
,p_column_alias=>'FILE_CHARSET'
,p_column_display_sequence=>4
,p_column_heading=>'File Charset'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338741144099318653)
,p_query_column_id=>5
,p_column_alias=>'FILE_BLOB'
,p_column_display_sequence=>5
,p_column_heading=>'File Blob'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338741422604318653)
,p_query_column_id=>6
,p_column_alias=>'CREATED'
,p_column_display_sequence=>6
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338741536357318653)
,p_query_column_id=>7
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338740138912318652)
,p_query_column_id=>8
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>9
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338740245149318652)
,p_query_column_id=>9
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338740324714318652)
,p_query_column_id=>10
,p_column_alias=>'FILE_SIZE'
,p_column_display_sequence=>10
,p_column_heading=>'File Size'
,p_use_as_row_header=>'N'
,p_column_format=>'FILESIZE'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338740438413318653)
,p_query_column_id=>11
,p_column_alias=>'DOWNLOAD'
,p_column_display_sequence=>11
,p_column_heading=>'Download'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:EBA_DEMO_FILES:FILE_BLOB:ID::FILE_MIMETYPE:FILENAME:UPDATED:FILE_CHARSET:attachment:Download:'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3338904333406654900)
,p_plug_name=>'File Upload'
,p_parent_plug_id=>wwv_flow_api.id(3338686647661327588)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
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
 p_id=>wwv_flow_api.id(3338691335788327606)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006238623050932729)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(14891877536180482574)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(2006262221594932810)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3339599038531395434)
,p_plug_name=>'Application features demonstrated on this page'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006223170705932693)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><strong>This page shows how to:</strong>',
'</p>'))
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338686925043327590)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3338691335788327606)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2006262149464932808)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338687251246327590)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3338691335788327606)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2006262149464932808)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338686842939327590)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3338691335788327606)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2006262149464932808)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Project'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338687030795327590)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3338691335788327606)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(2006262149464932808)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P13_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3338687842101327592)
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338688051567327597)
,p_name=>'P13_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3338686647661327588)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338688247731327597)
,p_name=>'P13_PROJECT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3338686647661327588)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_post_element_text=>'&P13_ICON_IMG.'
,p_source=>'PROJECT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(2006261386784932798)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338688435596327598)
,p_name=>'P13_TASK_NAME'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3338686647661327588)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Task'
,p_source=>'TASK_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(2006261386784932798)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338688651506327600)
,p_name=>'P13_START_DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3338686647661327588)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(2006261386784932798)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338688832455327600)
,p_name=>'P13_END_DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(3338686647661327588)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(2006261386784932798)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338689041000327600)
,p_name=>'P13_STATUS'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(3338686647661327588)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select distinct status d, status r from eba_demo_file_projects order by 1'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(2006261386784932798)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338689251127327600)
,p_name=>'P13_ASSIGNED_TO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(3338686647661327588)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Assignee'
,p_source=>'ASSIGNED_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(2006261131433932794)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338689439181327600)
,p_name=>'P13_COST'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(3338686647661327588)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cost'
,p_source=>'COST'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(2006261131433932794)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338689632790327601)
,p_name=>'P13_BUDGET'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(3338686647661327588)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Budget'
,p_source=>'BUDGET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(2006261131433932794)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338904030159644477)
,p_name=>'P13_FILE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(3338904333406654900)
,p_prompt=>'Upload File'
,p_post_element_text=>'<p><em>Attachments must be under 15M in size.</em></p>'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(2006261131433932794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338906343074780619)
,p_name=>'P13_FILE_DESCRIPTION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(3338904333406654900)
,p_prompt=>'File Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(2006261131433932794)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3340101150584850472)
,p_name=>'P13_PROJECT_ICON'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(3338686647661327588)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project Icon'
,p_post_element_text=>'<p><em>Icons must be under 200K and a valid image file.</em></p>'
,p_source=>'ICON_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(2006261131433932794)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'ICON_MIMETYPE'
,p_attribute_03=>'ICON_NAME'
,p_attribute_04=>'ICON_CHARSET'
,p_attribute_05=>'ICON_LAST_UPDATED'
,p_attribute_06=>'Y'
,p_attribute_07=>'Download Icon Image'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3340111537151802221)
,p_name=>'P13_ICON_COMMENTS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(3338686647661327588)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Project Icon'
,p_source=>'ICON_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3340111742608822715)
,p_name=>'P13_ICON_IMG'
,p_item_sequence=>115
,p_item_plug_id=>wwv_flow_api.id(3338686647661327588)
,p_use_cache_before_default=>'NO'
,p_source=>'ICON_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_attributes=>'class="projectIcon"'
,p_protection_level=>'S'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_03=>'ICON_COMMENTS'
,p_attribute_04=>'ICON_NAME'
,p_attribute_05=>'ICON_LAST_UPDATED'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3338690846980327606)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_FILE_PROJECTS'
,p_attribute_02=>'EBA_DEMO_FILE_PROJECTS'
,p_attribute_03=>'P13_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3338691028871327606)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_FILE_PROJECTS'
,p_attribute_02=>'EBA_DEMO_FILE_PROJECTS'
,p_attribute_03=>'P13_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P13_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_return_key_into_item1=>'P13_ID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3338910852171840016)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Upload File'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c1 in (select *',
'               from apex_application_temp_files',
'               where name = :P13_FILE)',
'    loop',
'        insert into eba_demo_files (',
'            project_id,',
'            filename,',
'            file_blob,',
'            file_comments,',
'            file_mimetype)',
'        values (',
'            :P13_ID,',
'            c1.filename,',
'            c1.blob_content,',
'            :P13_FILE_DESCRIPTION,',
'            c1.mime_type);',
'    end loop;',
'',
'    :P13_FILE_DESCRIPTION := null;',
'    :P13_FILE  := null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'There was a problem encountered while uploading the file: #SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3338686925043327590)
,p_process_when=>'P13_FILE'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'File uploaded.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3338691245584327606)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3338687030795327590)
);
wwv_flow_api.component_end;
end;
/
