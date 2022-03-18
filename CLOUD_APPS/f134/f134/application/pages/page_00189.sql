prompt --application/pages/page_00189
begin
--   Manifest
--     PAGE: 00189
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
 p_id=>189
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Data Load Source'
,p_page_mode=>'MODAL'
,p_step_title=>'Data Load Source'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(13619049542774220759)
,p_dialog_attributes=>'resizable:true'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20190906064328'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13698214146005786951)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13734928601439998673)
,p_plug_name=>'Data Load Process Train'
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(13734926205069998667)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(6781133859764890851)
,p_translate_title=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13734928821055998674)
,p_plug_name=>'Data Load Source'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13734937988704998699)
,p_plug_name=>'Globalization'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(6781111273838890791)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15358582788761489754)
,p_plug_name=>'Sample Data'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781111273838890791)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'"TEMPLATE_ID","OWNER_ROLE_ID","NAME","TYPE_ID","DESCRIPTION","DUE_DATE_OFFSET","LINK_TEXT","LINK_URL","INC_IN_STATUS_EML_YN"',
'<br>',
'"&P189_TEMPLATE_NAME.","&P189_OWNER_ROLE.","Test Action Item Template Upload","&P189_AI_TYPE_ID.","Ensure AI template records load correctly.",1,"Oracle","http://www.oracle.com/","Y"'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_ZERO'
,p_plug_display_when_condition=>'P189_MS_CNT'
,p_plug_header=>'<p class="InfoTextRegion">Copy and paste the text below into the "Copy and Paste Delimited Data" text area (above) or simply click the <strong>Insert Sample Data</strong> button to test uploading template Action Items.</p>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20152063977319308233)
,p_plug_name=>'Sample Data'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(6781111273838890791)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'"TEMPLATE_ID","OWNER_ROLE_ID","NAME","TYPE_ID","MILESTONE_ID","DESCRIPTION","DUE_DATE_OFFSET","LINK_TEXT","LINK_URL","INC_IN_STATUS_EML_YN"',
'<br>',
'"&P189_TEMPLATE_NAME.","&P189_OWNER_ROLE.","Test Action Item Template Upload","&P189_AI_TYPE_ID.","&P189_FIRST_MS_NAME.","Ensure AI template records load correctly.",1,"Oracle","http://www.oracle.com/","Y"'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_ZERO'
,p_plug_display_when_condition=>'P189_MS_CNT'
,p_plug_header=>'<p class="InfoTextRegion">Copy and paste the text below into the "Copy and Paste Delimited Data" text area (above) or simply click the <strong>Insert Sample Data</strong> button to test uploading template Action Items.</p>'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13734929298337998675)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13698214146005786951)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(19974124794978191870)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15358582788761489754)
,p_button_name=>'INSERT_SAMPLE_DATA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Insert Sample Data'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20152064040223308234)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(20152063977319308233)
,p_button_name=>'INSERT_SAMPLE_DATA_MS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Insert Sample Data'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13734930533594998683)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(13698214146005786951)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapRight:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:apex.widget.textareaClob.upload(''P189_COPY_PASTE'', ''NEXT'');'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13734944386728998707)
,p_branch_name=>'Go To Page 190'
,p_branch_action=>'f?p=&APP_ID.:190:&SESSION.::&DEBUG.::P190_ID:&P189_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(13734930533594998683)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13734931041078998685)
,p_name=>'P189_IMPORT_FROM'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(13734928821055998674)
,p_item_default=>'PASTE'
,p_prompt=>'Import From'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATA_LOAD_OPTION'
,p_lov=>'.'||wwv_flow_api.id(13727850657622762780)||'.'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13734931315181998686)
,p_name=>'P189_FILE_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(13734928821055998674)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_FILE'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Name of the file to upload'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'REQUEST'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13734932748340998692)
,p_name=>'P189_SEPARATOR'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(13734928821055998674)
,p_item_default=>','
,p_prompt=>'Separator'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Identify a column separator character. Use <code>\t</code> for tab separators.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13734933664882998693)
,p_name=>'P189_ENCLOSED_BY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(13734928821055998674)
,p_item_default=>'"'
,p_prompt=>'Optionally Enclosed By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Enter a delimiter character. You can use this character to delineate the starting and ending boundary of a data value. If you specify a delimiter character, Data Workshop ignores whitespace occurring before the starting and ending boundary of a data '
||'value. You can also use this option to enclose a data value with the specified delimiter character.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13734934567920998695)
,p_name=>'P189_FIRST_ROW'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(13734928821055998674)
,p_item_default=>'Y'
,p_prompt=>'First Row has Column Names'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'FIRST_ROW_OPTION'
,p_lov=>'.'||wwv_flow_api.id(13727865218162762795)||'.'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Select this box if your data contains column names in the first row.'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13734935448712998696)
,p_name=>'P189_APP_DATE_FORMAT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(13734928821055998674)
,p_item_default=>'Y'
,p_prompt=>'Use Application Date Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'DATE_FORMAT_OPTION'
,p_lov=>'.'||wwv_flow_api.id(13727866893787762797)||'.'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Select this box if you would like to use the application Date/Timestamp formats during your data loading.'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13734936407999998698)
,p_name=>'P189_CHAR_SET'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(13734928821055998674)
,p_item_default=>'UTF-8'
,p_prompt=>'File Character Set'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DATA_LOAD_CHARSET'
,p_lov=>'.'||wwv_flow_api.id(13727868477566762800)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'DATA_LOAD.CHAR_SET_ITEM_HELP'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13734937262076998699)
,p_name=>'P189_STOP_START_TABLE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(13734928821055998674)
,p_display_as=>'NATIVE_STOP_AND_START_HTML_TABLE'
,p_begin_on_new_line=>'N'
,p_escape_on_http_input=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13734937549489998699)
,p_name=>'P189_COPY_PASTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(13734928821055998674)
,p_prompt=>'Copy and Paste Delimited Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>65
,p_cHeight=>10
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13734938497937998700)
,p_name=>'P189_CURRENCY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13734937988704998699)
,p_item_default=>'$'
,p_prompt=>'Currency Symbol'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value',
'  from nls_session_parameters',
' where parameter = ''NLS_CURRENCY'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'If your data contains international currency symbol, enter it here. For example, if your data has "&euro;1,234.56" or "&yen;1,234.56", enter "&euro;" or "&yen;".  Otherwise the data will not load correctly.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13734939386457998701)
,p_name=>'P189_GROUP_SEPARATOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(13734937988704998699)
,p_prompt=>'Group Separator'
,p_source=>'apex_application.get_nls_group_separator'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>A group separator is a character that separates integer groups, for example to show thousands and millions.</p>',
'<p>Any character can be the group separator. The character specified must be single-byte, and the group separator must be different from any other decimal character. The character can be a space, but cannot be a numeric character or any of the follow'
||'ing:</p>',
'<ul class="noIndent">',
'<li>plus (+)</li>',
'<li>hyphen (-)</li> ',
'<li>less than sign (<)</li>',
'<li>greater than sign (>)</li> ',
'</ul>'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13734940233675998702)
,p_name=>'P189_DECIMAL_CHARACTER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(13734937988704998699)
,p_prompt=>'Decimal Character'
,p_source=>'apex_application.get_nls_decimal_separator'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The decimal character separates the integer and decimal parts of a number.</p>',
'<p> Any character can be the decimal character. The character specified must be single-byte, and the decimal character must be different from group separator. The character can be a space, but cannot be any numeric character or any of the following c'
||'haracters:</p>',
'<ul class="noIndent">',
'<li>plus (+)</li>',
'<li>hyphen (-)</li> ',
'<li>less than sign (<)</li>',
'<li>greater than sign (>)</li> ',
'</ul>'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15358583189690489758)
,p_name=>'P189_TEMPLATE_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(13734928821055998674)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18120637983361266571)
,p_name=>'P189_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13734928821055998674)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19850573811681020774)
,p_name=>'P189_AI_TYPE_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(13734928821055998674)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20152063741163308231)
,p_name=>'P189_MS_CNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(13734928821055998674)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20152064209216308235)
,p_name=>'P189_FIRST_MS_NAME'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(13734928821055998674)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20152064909089308242)
,p_name=>'P189_OWNER_ROLE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(13734928821055998674)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(20152064223025308236)
,p_computation_sequence=>10
,p_computation_item=>'P189_FIRST_MS_NAME'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'QUERY'
,p_computation=>'select name from eba_proj_template_ms where template_id = :P189_ID and rownum = 1'
,p_compute_when=>'P189_MS_CNT'
,p_compute_when_type=>'ITEM_IS_NOT_ZERO'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(20152063877982308232)
,p_computation_sequence=>10
,p_computation_item=>'P189_MS_CNT'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select count(*) from eba_proj_template_ms where template_id = :P189_ID'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(19850573841333020775)
,p_computation_sequence=>20
,p_computation_item=>'P189_AI_TYPE_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select ai_type from EBA_PROJ_STATUS_AIS_TYPES where rownum = 1'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(20152064990345308243)
,p_computation_sequence=>20
,p_computation_item=>'P189_OWNER_ROLE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select name from eba_proj_roles where rownum = 1'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13734932389632998690)
,p_validation_name=>'Filename is not null'
,p_validation_sequence=>10
,p_validation=>'P189_FILE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P189_IMPORT_FROM'
,p_validation_condition2=>'UPLOAD'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(13734930533594998683)
,p_associated_item=>wwv_flow_api.id(13734931315181998686)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13734929621341998679)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(13734929298337998675)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13734930198693998681)
,p_event_id=>wwv_flow_api.id(13734929621341998679)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13734941049155998703)
,p_name=>'Import From Copy and Paste'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P189_IMPORT_FROM'
,p_condition_element=>'P189_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PASTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13734941579375998703)
,p_event_id=>wwv_flow_api.id(13734941049155998703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P189_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13734942098663998704)
,p_event_id=>wwv_flow_api.id(13734941049155998703)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P189_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13734942482138998704)
,p_name=>'Import from File'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P189_IMPORT_FROM'
,p_condition_element=>'P189_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'UPLOAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13734942925145998705)
,p_event_id=>wwv_flow_api.id(13734942482138998704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P189_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13734943448293998705)
,p_event_id=>wwv_flow_api.id(13734942482138998704)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P189_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(19974124912314191871)
,p_name=>'Populate Copy and Paste Textarea'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(19974124794978191870)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(19974124944779191872)
,p_event_id=>wwv_flow_api.id(19974124912314191871)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P189_COPY_PASTE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'''"TEMPLATE_ID","OWNER_ROLE_ID","NAME","TYPE_ID","DESCRIPTION","DUE_DATE_OFFSET","LINK_TEXT","LINK_URL","INC_IN_STATUS_EML_YN"'' ||',
'chr(10) ||',
'''"''||:P189_TEMPLATE_NAME||''","''||:P189_OWNER_ROLE||''","Test Action Item Template Upload","''||:P189_AI_TYPE_ID||''","Ensure AI template records load correctly.",1,"Oracle","http://www.oracle.com/","Y"'''))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(20152064386514308237)
,p_name=>'MS Populate Copy and Paste Textarea'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(20152064040223308234)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(20152064453771308238)
,p_event_id=>wwv_flow_api.id(20152064386514308237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P189_COPY_PASTE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'''"TEMPLATE_ID","OWNER_ROLE_ID","NAME","TYPE_ID","MILESTONE_ID","DESCRIPTION","DUE_DATE_OFFSET","LINK_TEXT","LINK_URL","INC_IN_STATUS_EML_YN"'' ||',
'chr(10) ||',
'''"''||:P189_TEMPLATE_NAME||''","''||:P189_OWNER_ROLE||''","Test Action Item Template Upload","''||:P189_AI_TYPE_ID||''","''||:P189_FIRST_MS_NAME||''","Ensure AI template records load correctly.",1,"Oracle","http://www.oracle.com/","Y"'''))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13734943989405998705)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PARSE_UPLOADED_DATA'
,p_process_name=>'Parse Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(13734925987884998663)
,p_attribute_02=>'P189_IMPORT_FROM'
,p_attribute_03=>'P189_SEPARATOR'
,p_attribute_04=>'P189_ENCLOSED_BY'
,p_attribute_05=>'P189_FIRST_ROW'
,p_attribute_06=>'P189_CURRENCY'
,p_attribute_07=>'P189_GROUP_SEPARATOR'
,p_attribute_08=>'P189_DECIMAL_CHARACTER'
,p_attribute_09=>'P189_FILE_NAME'
,p_attribute_10=>'P189_COPY_PASTE'
,p_attribute_11=>'P189_CHAR_SET'
,p_attribute_12=>'P189_APP_DATE_FORMAT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13734930533594998683)
);
wwv_flow_api.component_end;
end;
/
