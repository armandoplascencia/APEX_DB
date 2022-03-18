prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(1218849447906494434)
,p_name=>'File'
,p_alias=>'FILE'
,p_step_title=>'File'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301103407'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3338676851785229165)
,p_plug_name=>'File'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Region--hideHeader'
,p_plug_template=>wwv_flow_api.id(2006234073473932720)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3338680924319229204)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006238623050932729)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(14891877536180482574)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(2006262221594932810)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3339072234152209816)
,p_plug_name=>'Application features demonstrated on this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006223170705932693)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="infoTextRegion">',
'<p>',
'This page shows how to:',
'<ol style="margin: 8px 24px;">',
'  <li>Upload a file to an application table''s BLOB column</li>',
'  <li>Download from a PL/SQL Generated Link</li>',
'</ol>',
'<a name="upload_file"></a><br />',
'<p><strong>Upload a file to an application table''s BLOB column</strong></p>',
'<ul style="margin: 8px 24px;">',
'  <li>Add an unconditional page rendering page process</li>',
'  <li>Choose "Data Manipulation" and click "Next"</li>',
'  <li>Select the default, "Automated Row Fetch", then click "Next"</li>',
'  <li>Give the process a name, "Fetch Row from EBA_DEMO_FILES" (for example), change the processing point to "On load - After Header" and click "Next"</li>',
'  <li>Enter the table name of the application''s "files" table, the APEX page item id of the page item that references the file being uploaded, and the column name of the blob column in the afore assigned application "files" table and click "Next"</li'
||'>',
'  <li>Optionally add a success and/or error message, click "Create Process"</li>',
'  <li>Create an "HTML" region (for holding your file upload form element)</li>',
'  <li>Create a hidden page item that will hold the primary key id value of the row that holds the file (e.g, P12_ID)<span style="font-weight:bold;font-size:13px;color:red;">*</span></li>',
'  <li>Now create a "File Browse" page item in the same region as the above page items, ensure the "Storage Type" value is set to "BLOB column specified in Item Source attribute"</li>',
'  <li>Define the application tables'' column names for holding, MIME Type, Filename, Character Set, and BLOB Last Updated, and then click, "Next"</li>',
'  <li>Then click, "Create Item"<span style="font-weight:bold;font-size:13px;color:red;">*</span></li>',
'  <li>Create the other hidden page items that will store the filename, mimetype, and character set meta data<span style="font-weight:bold;font-size:13px;color:red;">*</span></li>',
'  <li>If your application''s files table has a description (or comments) column, add a textarea page item for capturing this information<span style="font-weight:bold;font-size:13px;color:red;">*</span></li>',
'  <li>Now create an unconditional page processing process</li>',
'  <li>Choose "Data Manipulation" and click "Next"</li>',
'  <li>Give the process a name, "Process Row from EBA_DEMO_FILES" (for example), change the processing point to "On Submit - After Computations and Validations" and click "Next"</li>',
'  <li>Enter the table name of the application''s "files" table, the APEX page item id of the page item that references the file being uploaded, and the column name of the blob column in the application''s "files" table and then click "Create Item"</li>',
'  <li>Create the Cancel, Delete, Apply Changes, and Create buttons (see implementation of buttons on this page)</li>',
'  <li>Now create a conditional page processing process</li>',
'  <li>Choose "Session State" and click "Next"</li>',
'  <li>Select "Clear Cache for all Items on Pages (PageID,PageID,PageID)" and click "Next"</li>',
'  <li>Give it a name of "reset page", leave the other defaulted values, click "Next"</li>',
'  <li>Enter the current page id and then click "Next"</li>',
'  <li>Optionally add Success and/or Error Messages and then click "Next"</li>',
'  <li>Change the "When Button Pressed" condition to use the "Delete" button, leave all other options set to their default values and click "Create Process"</li>',
'</ul>',
'<span style="font-weight:bold;font-size:13px;color:red;">*</span> Be sure to set the identified page item''s "Source Type" as "Database Column" and assign their "Source value or expression" as the corresponding column name in the application''s "files"'
||' table.',
'<br /><a name="download_link"></a><br />',
'<p><strong>Download from a PL/SQL Generated Link</strong></p>',
'<ul style="margin: 8px 24px;">',
'  <li>If you are editing an existing file, you will see a link to download the file you are editing. This is generated from P12_DOWNLOAD_LINK (Display-Only) page item.</li>',
'  <li>This item uses PL/SQL and the apex_util.get_blob_file_src() function to generate the link for the end-user to download the file</li>',
'</ul>',
'</p>',
'</span>'))
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
 p_id=>wwv_flow_api.id(3338677148515229167)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3338680924319229204)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2006262149464932808)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P12_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338677430108229167)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3338680924319229204)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2006262149464932808)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338677044332229167)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(3338680924319229204)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(2006262149464932808)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add File'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P12_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338677240770229167)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3338680924319229204)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--danger'
,p_button_template_id=>wwv_flow_api.id(2006262149464932808)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P12_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3338678033398229169)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338678235611229174)
,p_name=>'P12_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3338676851785229165)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338678429165229191)
,p_name=>'P12_PROJECT_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3338676851785229165)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Project'
,p_source=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select project||'' ''||task_name d, id from eba_demo_file_projects order by 1'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select Project -'
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
 p_id=>wwv_flow_api.id(3338678645487229193)
,p_name=>'P12_FILENAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3338676851785229165)
,p_use_cache_before_default=>'NO'
,p_source=>'FILENAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338678825590229193)
,p_name=>'P12_FILE_MIMETYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3338676851785229165)
,p_use_cache_before_default=>'NO'
,p_source=>'FILE_MIMETYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338679030634229193)
,p_name=>'P12_FILE_CHARSET'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3338676851785229165)
,p_use_cache_before_default=>'NO'
,p_source=>'FILE_CHARSET'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338679246999229197)
,p_name=>'P12_FILE_BLOB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(3338676851785229165)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Blob'
,p_post_element_text=>'<p><em>Files must be under 15M in size.</em></p>'
,p_source=>'FILE_BLOB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>64
,p_cMaxlength=>255
,p_display_when=>'P12_ID'
,p_display_when_type=>'ITEM_IS_NULL'
,p_field_template=>wwv_flow_api.id(2006261386784932798)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'FILE_MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_04=>'FILE_CHARSET'
,p_attribute_05=>'UPDATED'
,p_attribute_06=>'Y'
,p_attribute_07=>'Download'
,p_attribute_08=>'attachment'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3338679442929229197)
,p_name=>'P12_FILE_COMMENTS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(3338676851785229165)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Comments'
,p_source=>'FILE_COMMENTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
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
 p_id=>wwv_flow_api.id(3339045047489901439)
,p_name=>'P12_DOWNLOAD_LINK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(3338676851785229165)
,p_prompt=>'Download'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P12_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_api.id(2006261131433932794)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'PLSQL'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  sys.htp.p(''<a href="'' || apex_util.get_blob_file_src(''P12_FILE_BLOB'',:P12_ID,:P12_PROJECT_ID) || ''">''||apex_escape.html(:P12_FILENAME)||''</a>'');',
'end;'))
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3339037042716805480)
,p_validation_name=>'P12_FILE_BLOB'
,p_validation_sequence=>10
,p_validation=>'P12_FILE_BLOB'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please select a file to upload.'
,p_validation_condition=>'P12_ID'
,p_validation_condition_type=>'ITEM_IS_NULL'
,p_when_button_pressed=>wwv_flow_api.id(3338677044332229167)
,p_associated_item=>wwv_flow_api.id(3338679246999229197)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3338680421124229199)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_DEMO_FILES'
,p_attribute_02=>'EBA_DEMO_FILES'
,p_attribute_03=>'P12_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3338680643580229200)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_DEMO_FILES'
,p_attribute_02=>'EBA_DEMO_FILES'
,p_attribute_03=>'P12_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3338680850876229200)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3338677240770229167)
);
wwv_flow_api.component_end;
end;
/
