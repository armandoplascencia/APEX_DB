prompt --application/pages/page_00142
begin
--   Manifest
--     PAGE: 00142
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
 p_id=>142
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Edit Flex Column'
,p_step_title=>'Edit Flex Column'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_protection_level=>'C'
,p_help_text=>'Edit the flex column assignment''s attributes on this page. Be sure to provide data for all required fields. Click the <strong>Apply Changes</strong> button to save your changes. Click the <strong>Unassign</strong> button to remove this assignment. Cl'
||'ick the <strong>Cancel</strong> button to return to the flex column details page.'
,p_last_upd_yyyymmddhh24miss=>'20190913150842'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6252354404302580637)
,p_plug_name=>'Flex Column Attributes'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6252366394345580662)
,p_name=>'Static Select List Options'
,p_parent_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_template=>wwv_flow_api.id(6781111273838890791)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    display_sequence,',
'    display_value,',
'    return_value,',
'    ''Edit'' as edit',
'from eba_proj_flex_static_lovs',
'where flex_table = :P142_FLEXIBLE_TABLE',
'    and flex_column = :P142_FLEXIBLE_COLUMN',
'order by display_sequence'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
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
 p_id=>wwv_flow_api.id(6252366591984580663)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252366708859580663)
,p_query_column_id=>2
,p_column_alias=>'DISPLAY_SEQUENCE'
,p_column_display_sequence=>3
,p_column_heading=>'DISPLAY_SEQUENCE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252366803608580663)
,p_query_column_id=>3
,p_column_alias=>'DISPLAY_VALUE'
,p_column_display_sequence=>4
,p_column_heading=>'DISPLAY_VALUE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252366912197580663)
,p_query_column_id=>4
,p_column_alias=>'RETURN_VALUE'
,p_column_display_sequence=>5
,p_column_heading=>'RETURN_VALUE'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252366986636580663)
,p_query_column_id=>5
,p_column_alias=>'EDIT'
,p_column_display_sequence=>2
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.:224:P224_ID,P224_EDIT_OPTION_ID:&P142_ID.,#ID#'
,p_column_linktext=>'#EDIT#'
,p_column_link_attr=>'class="t-Button t-Button--primary" title="#EDIT#"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6252369298967580671)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6252367098156580663)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(6252366394345580662)
,p_button_name=>'ADD_LIST_OPTION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Add a List Option'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.:RP,224:P224_ID:&P142_ID.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6252354787936580641)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6252354990953580644)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Unassign'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P142_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6252354596498580640)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P142_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6252375879842580682)
,p_branch_name=>'Static List Option Action'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:&APP_PAGE_ID.:P142_ID:&P142_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_NOT_IN_CONDITION'
,p_branch_condition=>'SAVE:DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6252375707991580682)
,p_branch_action=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252355182619580645)
,p_name=>'P142_LABEL_TEMPLATE_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Label Template'
,p_source=>'LABEL_TEMPLATE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LABEL_TEMPLATES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select template_name || '' ('' || decode(theme_number, 50, ''Mobile Theme'', 42, ''Desktop Theme'') || '')''  dv,',
'    label_template_id rv',
'from apex_application_temp_label',
'where application_id = :APP_ID',
'and theme_number in (select u.theme_number',
'                     from apex_application_themes t, apex_appl_user_interfaces u',
'                     where t.ui_type_id = u.ui_type_id',
'                     and t.application_id = u.application_id',
'                     and t.application_id = :APP_ID',
'                     and u.ui_type_name = ''DESKTOP'')',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the label template that the label text for this flex column should use. This value is unassigned by default.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252355711366580648)
,p_name=>'P142_HELP_TEXT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Help Text'
,p_source=>'HELP_TEXT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'This field should be filled-in with text that will help the end-user better understand what data is being stored in the flex column. It should only be filled-in if you''ve selected a label template that includes help text.'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252356192837580649)
,p_name=>'P142_FORMAT_MASK'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Format Mask'
,p_source=>'FORMAT_MASK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'This field allows you to supply a format mask to a Date Picker and/or a Number Field form element.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252356684497580649)
,p_name=>'P142_LABEL_ALIGNMENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_item_default=>'RIGHT'
,p_source=>'LABEL_ALIGNMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_help_text=>'Select the label alignment that this flex column''s label text will use in application forms. Currently only Right, Right-Top, Right-Center, and Right-Bottom are offered. This value is set to ''Right'' by default.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252357204918580649)
,p_name=>'P142_RPT_LABEL_TEXT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Report Label Text'
,p_source=>'REPORT_LABEL_TEXT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Enter the label text that will appear as the report''s column heading for this flex column. If this field is left blank, reports will use the form label text by default.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252357686438580651)
,p_name=>'P142_FLEXIBLE_COLUMN'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flexible Column'
,p_source=>'FLEXIBLE_COLUMN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FLEX_COLUMNS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c.column_name|| '' - ''||c.data_type||',
'    decode(c.data_type,''VARCHAR2'',''(''||c.data_length||'')'',null) as dv,',
'    c.column_name as rv',
'from sys.all_tab_columns c,',
'    eba_proj_flex_registry f',
'where c.table_name = :P142_FLEXIBLE_TABLE',
'    and c.column_name = f.flexible_column (+)',
'    and nvl(f.active_yn,''N'') = ''N''',
'    and lower(c.column_name) like ''%flex%''',
'    and instr(c.table_name,''FLEX'') = 0',
'order by 1',
''))
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'The options in this select list consist of all unassigned flex columns in the data source that was selected above.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252358192349580651)
,p_name=>'P142_ACTIVE_YN'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Is Active'
,p_source=>'ACTIVE_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO RETURNS Y N'
,p_lov=>'.'||wwv_flow_api.id(9019252630556871632)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Choose whether or not this flex column should be displayed and used in this application. Selecting, ''No'' will prevent this flex field from displaying in forms and reports that are based on this flex field''s data source. This value is set to ''Yes'' by '
||'default.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252358695782580651)
,p_name=>'P142_ATTRIBUTE_LABEL'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Form Label Text'
,p_source=>'FORM_LABEL_TEXT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'Enter the label text that will be displayed on forms that capture the data that is stored in this flex column.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252359202797580652)
,p_name=>'P142_IS_REQUIRED_YN'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Is Required'
,p_source=>'IS_REQUIRED_YN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO RETURNS Y N'
,p_lov=>'.'||wwv_flow_api.id(9019252630556871632)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Choose whether this flex column can be left null or not. Selecting, ''No'' will allow forms that update this flex column''s value to accept null. Selecting, ''Yes'' will force the end-user to provide data for this flex column. This value is unassigned by '
||'default.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252359679774580652)
,p_name=>'P142_DISPLAY_AS'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Display As'
,p_source=>'DISPLAY_AS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'P142_FLEX_DATA_TYPES'
,p_lov=>'.'||wwv_flow_api.id(6252378586826580692)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'This field identifies the type of form element that will be used in application forms to capture the data that will be stored in your flex column. If you chose a date flex column on the previous page, then the form element will be a Date Picker. If y'
||'ou chose a number flex column on the previous page, then your form element will be either a select list or a number field. etc...'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252360181101580653)
,p_name=>'P142_LOV_SQL_QUERY'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'List of Values SQL Query'
,p_source=>'LOV_SQL_QUERY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The select list query for a flex column must select a display and a return value and resemble this construct:',
'<br><br>',
'<pre>',
'select ename d, empno r',
'from   emp',
'order by 1',
'</pre>'))
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252360706705580653)
,p_name=>'P142_WIDTH'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_item_default=>'30'
,p_prompt=>'Width'
,p_format_mask=>'9999999'
,p_source=>'WIDTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'This field defines the width of the form element for this flex column. This field defaults to 30 for all form elements except text areas. Text areas default to 80.'
,p_attribute_01=>'1'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252361197595580653)
,p_name=>'P142_MAX_WIDTH'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_item_default=>'30'
,p_prompt=>'Max. Width'
,p_format_mask=>'9999999'
,p_source=>'MAX_WIDTH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'This field defines the maximum width of the form element for this flex column. This field defaults to 4000 for all form elements.'
,p_attribute_01=>'1'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252361680777580654)
,p_name=>'P142_HEIGHT'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>'Height'
,p_format_mask=>'9999999'
,p_source=>'HEIGHT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>7
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'This field defines the height of the form element for this flex column. This field defaults to 1 for all form elements except text areas. Text areas default to 5.'
,p_attribute_01=>'1'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252362191458580654)
,p_name=>'P142_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252362389332580655)
,p_name=>'P142_FLEXIBLE_TABLE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Flexible Data Store'
,p_source=>'FLEXIBLE_TABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FLEX_TABLES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.display_name_plrl display_value,',
'    f.flexible_table return_value',
'from eba_proj_flex_registry f',
'where f.assigned_yn = ''N''',
'group by f.display_name_plrl, f.flexible_table',
'order by 1'))
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'The options listed here refer to the tables in the application that contain flex columns. These options typically correlate to tab names in the application.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252362909213580655)
,p_name=>'P142_IS_DISPLAYED_IN_IRR_YN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_item_default=>'Y'
,p_source=>'IS_DISPLAYED_ON_IR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_help_text=>'If you want this flex column to be displayed in interactive reports, select ''Yes'', otherwise select ''No''. Remember that the ''Is Active'' column must also be set to ''Yes''.'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252363409554580655)
,p_name=>'P142_LOV_TYPE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Select List Type'
,p_source=>'LOV_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'FLEX_LOV_TYPE'
,p_lov=>'.'||wwv_flow_api.id(6252380384493580693)||'.'
,p_field_template=>wwv_flow_api.id(6781134744367890857)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Choose whether your "List of Values" (LOV) is defined by a static list or a dynamic SQL query.'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252363882753580655)
,p_name=>'P142_RPT_HDR_ALIGNMENT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_item_default=>'CENTER'
,p_prompt=>'Report Heading Alignment'
,p_source=>'RPT_HDR_ALIGNMENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FLEX_HDR_ALIGNMENTS'
,p_lov=>'.'||wwv_flow_api.id(6252381284189580695)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'This field is used to determine the alignment of the flex column''s heading text in various application reports. It''s options include  "Left", "Center", and "Right" and it is defaulted to "Center".'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252364402663580656)
,p_name=>'P142_DEFAULT_VALUE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Default Form Value'
,p_source=>'DEFAULT_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_restricted_characters=>'WEB_SAFE'
,p_help_text=>'This field holds the flex column''s default value that''s used in application forms that update this flex column''s value. You can enter up to 4,000 characters in this field. For example, this field should be set to ''Y'' or ''N'' for a Yes/No Select List w'
||'ith defined return values of ''Y'' and ''N''.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6305716607987972459)
,p_name=>'P142_LOV_DISPLAY_COL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_source=>'LOV_DISPLAY_COL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6305716803242974645)
,p_name=>'P142_LOV_RETURN_COL'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(6252354404302580637)
,p_use_cache_before_default=>'NO'
,p_source=>'LOV_RETURN_COL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(6252369882802580672)
,p_computation_sequence=>10
,p_computation_item=>'P142_IS_DISPLAYED_IN_IRR_YN'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>':P142_ACTIVE_YN'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(291223181741557119)
,p_computation_sequence=>20
,p_computation_item=>'P142_ATTRIBUTE_LABEL'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'apex_escape.html(:P142_ATTRIBUTE_LABEL)'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6252370106689580672)
,p_validation_name=>'P142_LOV_TYPE Not Null'
,p_validation_sequence=>10
,p_validation=>'P142_LOV_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P142_DISPLAY_AS'
,p_validation_condition2=>'SELECT_LIST'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(6252354596498580640)
,p_associated_item=>wwv_flow_api.id(6252363409554580655)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6302379692042005271)
,p_validation_name=>'P142_LOV_SQL_QUERY is Valid'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_disp_col varchar2(30);',
'    l_ret_col  varchar2(30);',
'    l_error    varchar2(4000);',
'begin',
'    if eba_proj_flex_fw.validate_lov_query( :P142_LOV_SQL_QUERY,',
'                l_disp_col, l_ret_col, l_error ) then',
'        :P142_LOV_DISPLAY_COL := l_disp_col;',
'        :P142_LOV_RETURN_COL  := l_ret_col;',
'        return null;',
'    else',
'        return l_error;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>':P142_DISPLAY_AS = ''SELECT_LIST'' and :P142_LOV_TYPE = ''DYNAMIC'''
,p_validation_condition2=>'PLSQL'
,p_validation_condition_type=>'EXPRESSION'
,p_when_button_pressed=>wwv_flow_api.id(6252354596498580640)
,p_associated_item=>wwv_flow_api.id(6252360181101580653)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6302413210795801878)
,p_validation_name=>'Static select list cannot be NULL'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cnt number := 0;',
'begin',
'    select count(*) into l_cnt',
'    from eba_proj_flex_registry',
'    where id = :P142_ID',
'        and lov_sql_query is not null;',
'    if :P142_DISPLAY_AS = ''SELECT_LIST'' and :P142_LOV_TYPE = ''STATIC'' and l_cnt = 0 then',
'        return false;',
'    else',
'        return true;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You must create a static select list when the "Display As" is set to "Select List". Click the "Add a List Option" button below to create your static list of values now.'
,p_when_button_pressed=>wwv_flow_api.id(6252354596498580640)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6252372604848580675)
,p_name=>'Show/Hide LOV Type'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P142_DISPLAY_AS'
,p_condition_element=>'P142_DISPLAY_AS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'SELECT_LIST'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6252372893584580679)
,p_event_id=>wwv_flow_api.id(6252372604848580675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P142_LOV_TYPE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6252373089264580680)
,p_event_id=>wwv_flow_api.id(6252372604848580675)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P142_LOV_TYPE'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6306610796204351399)
,p_event_id=>wwv_flow_api.id(6252372604848580675)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P142_LOV_SQL_QUERY'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6306610992322353143)
,p_event_id=>wwv_flow_api.id(6252372604848580675)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6252366394345580662)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6306608085922189593)
,p_name=>'Show/Hide Dynamic LOV query'
,p_event_sequence=>15
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P142_DISPLAY_AS,P142_LOV_TYPE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$v(''P142_DISPLAY_AS'') == ''SELECT_LIST''',
'&& $v(''P142_LOV_TYPE'') == ''DYNAMIC'''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6306608390264189594)
,p_event_id=>wwv_flow_api.id(6306608085922189593)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P142_LOV_SQL_QUERY'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6306608581835189594)
,p_event_id=>wwv_flow_api.id(6306608085922189593)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P142_LOV_SQL_QUERY'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6252373806234580681)
,p_name=>'Show/Hide Static LOV region'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P142_DISPLAY_AS,P142_LOV_TYPE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$v(''P142_DISPLAY_AS'') == ''SELECT_LIST''',
'&& $v(''P142_LOV_TYPE'') == ''STATIC'''))
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6302380780181010797)
,p_event_id=>wwv_flow_api.id(6252373806234580681)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6252366394345580662)
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6302381009067012545)
,p_event_id=>wwv_flow_api.id(6252373806234580681)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6252366394345580662)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6252373203485580680)
,p_name=>'Toggle format mask'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P142_DISPLAY_AS'
,p_condition_element=>'P142_DISPLAY_AS'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'NUMBER,DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6252373495828580681)
,p_event_id=>wwv_flow_api.id(6252373203485580680)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P142_FORMAT_MASK'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6252373701708580681)
,p_event_id=>wwv_flow_api.id(6252373203485580680)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P142_FORMAT_MASK'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6252371006737580674)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from EBA_PROJ_FLEX_REGISTRY'
,p_attribute_02=>'EBA_PROJ_FLEX_REGISTRY'
,p_attribute_03=>'P142_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6252371203922580674)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of EBA_PROJ_FLEX_REGISTRY'
,p_attribute_02=>'EBA_PROJ_FLEX_REGISTRY'
,p_attribute_03=>'P142_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_NOT_EQUAL_CONDITION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6252371395785580675)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove Flex Column'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_update_stmt varchar2(10000);',
'    l_display_as  varchar2(128) := ''TEXT'';',
'    l_width       number := 30;',
'    l_max_width   number := 4000;',
'    l_height      number := 1;',
'begin',
'    -- Null the flex column data in the table containing the flex column',
'    execute immediate( ''update '' || sys.dbms_assert.enquote_name(:P142_FLEXIBLE_TABLE)',
'                      ||'' set '' || sys.dbms_assert.enquote_name(:P142_FLEXIBLE_COLUMN) || '' = null''',
'                      ||'' where '' || sys.dbms_assert.enquote_name(:P142_FLEXIBLE_COLUMN) || '' is not null''',
'                     );',
'',
'    -- Reset the form element dimensions and element type for CLOB flex columns',
'    if instr(:P142_FLEXIBLE_COLUMN,''_CLOB'') > 0 then',
'        l_display_as := ''TEXTAREA'';',
'        l_width      := 80;',
'        l_max_width  := 40000;',
'        l_height     := 5;',
'    end if;',
'',
'    -- remove records for Static LOVs',
'    if :P142_LOV_TYPE = ''STATIC'' then',
'        delete from eba_proj_flex_static_lovs',
'         where flex_table = :P142_FLEXIBLE_TABLE',
'           and flex_column = :P142_FLEXIBLE_COLUMN;',
'    end if;',
'',
'    -- Update the column data in the flex registry table',
'    update eba_proj_flex_registry',
'       set assigned_yn = ''N'',',
'           form_label_text =:P142_FLEXIBLE_COLUMN,',
'           active_yn = ''N'',',
'           is_required_yn = ''N'',',
'           label_template_id = 0,',
'           display_as = l_display_as,',
'           width = l_width,',
'           max_width = l_max_width,',
'           height = l_height,',
'           is_displayed_on_ir = ''N''',
'     where flexible_table = :P142_FLEXIBLE_TABLE',
'       and flexible_column = :P142_FLEXIBLE_COLUMN;',
'    commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM# || '' '' || :P142_FLEXIBLE_TABLE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(6252354990953580644)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6252372199278580675)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Configure Report Columns'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Make sure the page registry is up-to-date.',
'eba_proj_flex_fw.populate_page_map_table();',
'',
'-- Update all report columns.',
'for c1 in ( select distinct m.flex_table,',
'                m.page_id,',
'                m.region_id,',
'                m.flex_column_prefix,',
'                m.region_type',
'            from eba_proj_flex_page_map m,',
'                eba_proj_flex_registry r',
'            where m.flex_table = :P142_FLEXIBLE_TABLE',
'                and m.flex_table = r.flexible_table',
'                and m.region_type in (''IR'',''CR'')',
'        ) loop',
'    eba_proj_flex_fw.flex_report_update (',
'        p_flex_table_name    => c1.flex_table,',
'        p_irr_region_id      => c1.region_id,',
'        p_flex_column_prefix => c1.flex_column_prefix,',
'        p_app_id             => :APP_ID,',
'        p_page_id            => c1.page_id,',
'        p_region_type        => c1.region_type',
'    );',
'end loop;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P142_FLEXIBLE_TABLE'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6252370786290580673)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update entire static lov'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cnt       number := 0;',
'    l_lov_query varchar2(32767);',
'    l_updt_stmt varchar2(20000);',
'begin',
'    -- Prepare the lov query from dual that will be used to generate the form element',
'    for c1 in ( select display_value,',
'                    case',
'                        when :P142_FLEXIBLE_COLUMN like ''%FLEX_N%'' then return_value',
'                        else sys.dbms_assert.enquote_literal(replace(return_value, '''''''', ''''''''''''))',
'                    end as ret_val',
'                from eba_proj_flex_static_lovs',
'                where flex_column = :P142_FLEXIBLE_COLUMN',
'                order by display_sequence )',
'    loop',
'        if l_cnt = 0 then',
'            l_lov_query := ''select '' || sys.dbms_assert.enquote_literal(replace(c1.display_value, '''''''', '''''''''''')) || '' dv, ''',
'                || sys.dbms_assert.enquote_literal(replace(c1.ret_val, '''''''', '''''''''''')) || '' rv from dual'';',
'        else',
'            l_lov_query := l_lov_query || chr(10) || ''union all'' || chr(10);',
'            l_lov_query := l_lov_query || ''select '' || sys.dbms_assert.enquote_literal(replace(c1.display_value, '''''''', '''''''''''')) || '' dv, ''',
'                || sys.dbms_assert.enquote_literal(replace(c1.ret_val, '''''''', '''''''''''')) || '' rv from dual'';',
'        end if;',
'        l_cnt := l_cnt + 1;',
'    end loop;',
'',
'    -- Update the lov query column in the flex registry table',
'    update eba_proj_flex_registry',
'       set lov_sql_query = l_lov_query',
'     where id = :P142_ID;',
'',
'    l_updt_stmt := ''update '' || sys.dbms_assert.enquote_name(:P142_FLEXIBLE_TABLE)',
'        || '' set '' || sys.dbms_assert.enquote_name(:P142_FLEXIBLE_COLUMN) || '' = :1 where ''',
'        || sys.dbms_assert.enquote_name(:P142_FLEXIBLE_COLUMN) || '' is null'';',
'    execute immediate l_updt_stmt using :P142_DEFAULT_VALUE;',
'    commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':P142_DISPLAY_AS = ''SELECT_LIST'' and :P142_LOV_TYPE = ''STATIC'' and :REQUEST <> ''DELETE'''
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6306607898557155419)
,p_process_sequence=>85
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Static LOV items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from eba_proj_flex_static_lovs',
'where flex_table = :P142_FLEXIBLE_TABLE',
'    and flex_column = :P142_FLEXIBLE_COLUMN;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'not (:P142_DISPLAY_AS = ''SELECT_LIST'' and :P142_LOV_TYPE = ''STATIC'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6252372401787580675)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'17'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(6252354990953580644)
);
wwv_flow_api.component_end;
end;
/
