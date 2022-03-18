prompt --application/pages/page_00125
begin
--   Manifest
--     PAGE: 00125
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>125
,p_user_interface_id=>wwv_flow_api.id(14644135011863537602)
,p_name=>'Data Load Source'
,p_alias=>'DATA-LOAD-SOURCE2'
,p_step_title=>'Data Load Source'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(14820268321661277386)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function set_item()',
'{',
'$x(''P125_COPY_PASTE'').value= $v(''P125_SAMPLE_DATA'');',
'$x(''P125_SEPARATOR'').value= '','';',
'$s(''P125_FIRST_ROW'', ''Y'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(15775842108167638827)
,p_protection_level=>'C'
,p_help_text=>'<p>This wizard allows the uploading of customer data into this application. Two options are provided to upload data, by uploading a comma separated file (.CSV), or to copy and paste data directly into the page.  The second step maps database column n'
||'ames with the uploaded data.  The third step, shows the data after lookups keys have been detected and validated.  Customer names that match are updated, new customers are added.  Statuses, types, and/or categories that do not match are not inserted '
||'or updated. They are ignored.</p> '
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210128155426'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18235122372722687644)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14959356293935679148)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17940232663340213707)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14959371794034679193)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18235122924274687650)
,p_plug_name=>'Data Load Process Train'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsXSmall'
,p_plug_template=>wwv_flow_api.id(14959356988232679151)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(18235103345427684867)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(14959369797920679184)
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18235123195117687650)
,p_plug_name=>'Data Load Source'
,p_parent_plug_id=>wwv_flow_api.id(18235122924274687650)
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18235131416929687668)
,p_plug_name=>'Globalization'
,p_parent_plug_id=>wwv_flow_api.id(18235122924274687650)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(14959350648552679140)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18235240999621648428)
,p_plug_name=>'Loading Data From Spreadsheets'
,p_parent_plug_id=>wwv_flow_api.id(18235122924274687650)
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14959350648552679140)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To load or update customer data from a spreadsheet follow the following instructions.</p> ',
'',
'',
'<ol>',
'<li>Organize data in a spreadsheet with column headings of "Customer Name", "Summary", "Category", "Status", "Type", and so forth. </li>',
'',
'<li>If you have additional attributes you want to load you can load these into custom attributes.  Simply add these columns as well and you can map them to custom attributes in the next step of the data loading wizard.</li>',
'',
'<li>Ensure the Categories and Status values match the categories defined in this application.  Administrators of this application can define categories and status values.  The current values are displayed on this page for reference.</li>',
'',
'<li>Once you have your data organized in your spreadsheet you can export the data to CSV format (recommended for larger data sets), or simply cut and paste the data (including column headings) into the text field on this page.</li>',
'',
'<li>Follow the wizard and load your data.</li>',
'</ol>',
'',
'',
'<p>Custom attribute data, data that this application does not natively track, can be loaded into custom attribute fields with character, number and date data types.  To have this data show about customers, Application administrators can define these '
||'custom attributes from the administration page.</p>'))
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18235248508291653735)
,p_name=>'Valid Customer Categories'
,p_parent_plug_id=>wwv_flow_api.id(18235122924274687650)
,p_template=>wwv_flow_api.id(14959350648552679140)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select category,',
'    description,',
'    decode(is_active,''Y'',:ACTIVE_MSG,:INACTIVE_MSG) Status',
'from eba_cust_categories',
'order by upper(category)'))
,p_header=>'<p>Customer categories must be one of the valid values from the list below.  Application administrators can extend this list of values from the administrative console.</p>'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959360421115679159)
,p_query_num_rows=>1500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
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
 p_id=>wwv_flow_api.id(18235248803338653737)
,p_query_column_id=>1
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>1
,p_column_heading=>'Category'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18235249208175653739)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18235249600538653740)
,p_query_column_id=>3
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18235250680974700319)
,p_plug_name=>'Loading Sample Data'
,p_parent_plug_id=>wwv_flow_api.id(18235122924274687650)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(14959350648552679140)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Click the <strong>Try Sample Data</strong> button to test data loading functionality.  The sample data has 5 columns, 4 of which match the customer data structures.  The location can be used to demonstrate extensibility via flexible attributes.</p'
||'> ',
'</p>',
'',
'<table summary="sample data" class="uReport uReportStandard">',
'<thead>',
'<tr>',
'<th>Customer Name</th>',
'<th>Summary</th>',
'<th>Category</th>',
'<th>Location</th>',
'<th>Status</th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td>Altiris</td>',
'<td>Software</td>',
'<td>Corporate</td>',
'<td>New York NY</td>',
'<td>Partner</td>',
'</tr>',
'',
'<tr>',
'<td>Cephalon</td>',
'<td>biotechnology</td>',
'<td>Corporate</td>',
'<td>San Francisco</td>',
'<td>Unknown</td>',
'</tr>',
'',
'<tr>',
'<td>Euronet Worldwide</td>',
'<td>banking software</td>',
'<td>Corporate</td>',
'<td>-</td>',
'<td>Unknown</td>',
'</tr>',
'',
'<tr>',
'<td>Illumina</td>',
'<td>biotechnology equipment</td>',
'<td>Corporate</td>',
'<td>-</td>',
'<td>Customer</td>',
'</tr>',
'</tbody>',
'</table>'))
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18235253236806702134)
,p_name=>'Valid Customer Types '
,p_parent_plug_id=>wwv_flow_api.id(18235122924274687650)
,p_template=>wwv_flow_api.id(14959350648552679140)
,p_display_sequence=>60
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select type,',
'    description,',
'    decode(is_active,''Y'',:ACTIVE_MSG,:INACTIVE_MSG) status',
'from eba_cust_type',
'order by upper(type)'))
,p_header=>'<p>Customer status values must be one of the valid status values listed below.  Administrators of this application can extend and modify customer status values from application administration.</p>'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959360421115679159)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>1500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18235254359345702139)
,p_query_column_id=>1
,p_column_alias=>'TYPE'
,p_column_display_sequence=>1
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18235253501162702137)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18235253943440702139)
,p_query_column_id=>3
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18235255681546703298)
,p_name=>'Valid Customer Statuses '
,p_parent_plug_id=>wwv_flow_api.id(18235122924274687650)
,p_template=>wwv_flow_api.id(14959350648552679140)
,p_display_sequence=>70
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select status customer_status,',
'    description,',
'    decode(is_active,''Y'',:ACTIVE_MSG,:INACTIVE_MSG) status',
'from eba_cust_status',
'order by upper(status)'))
,p_header=>'<p>Customer status values must be one of the valid status values listed below.  Administrators of this application can extend and modify customer status values from application administration.</p>'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959360421115679159)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>1500
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
 p_id=>wwv_flow_api.id(18235255935100703300)
,p_query_column_id=>1
,p_column_alias=>'CUSTOMER_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Customer Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18235256308480703300)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18235256693984703301)
,p_query_column_id=>3
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18235319151238725129)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18235122372722687644)
,p_button_name=>'TRY_SAMPLE_DATA'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_api.id(14959371564035679192)
,p_button_image_alt=>'Try Sample Data'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'javascript:set_item();'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18235124069173687653)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18235122924274687650)
,p_button_name=>'NEXT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(14959371034865679191)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18235123643175687651)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18235122924274687650)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(14959371564035679192)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18235137856538687675)
,p_branch_action=>'f?p=&APP_ID.:126:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(18235124069173687653)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18235124504180687654)
,p_name=>'P125_IMPORT_FROM'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18235123195117687650)
,p_item_default=>'PASTE'
,p_prompt=>'Import From'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATA_LOAD_OPTION'
,p_lov=>'.'||wwv_flow_api.id(15786551608585433997)||'.'
,p_field_template=>wwv_flow_api.id(14959370620237679187)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18235124816700687656)
,p_name=>'P125_FILE_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18235123195117687650)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_FILE'
,p_field_template=>wwv_flow_api.id(14959370695612679188)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Name of the file to upload'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'REQUEST'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18235126205123687658)
,p_name=>'P125_SEPARATOR'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(18235123195117687650)
,p_item_default=>'\t'
,p_prompt=>'Separator'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_field_template=>wwv_flow_api.id(14959370695612679188)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Identify a column separator character. Use <code>\t</code> for tab separators.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18235127160803687661)
,p_name=>'P125_ENCLOSED_BY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(18235123195117687650)
,p_item_default=>'"'
,p_prompt=>'Optionally Enclosed By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_field_template=>wwv_flow_api.id(14959370620237679187)
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
 p_id=>wwv_flow_api.id(18235128064463687662)
,p_name=>'P125_FIRST_ROW'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(18235123195117687650)
,p_item_default=>'Y'
,p_prompt=>'First Row has Column Names'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'FIRST_ROW_OPTION'
,p_lov=>'.'||wwv_flow_api.id(15786554109069434003)||'.'
,p_field_template=>wwv_flow_api.id(14959370620237679187)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Select this box if your data contains column names in the first row.'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18235128959657687663)
,p_name=>'P125_APP_DATE_FORMAT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(18235123195117687650)
,p_item_default=>'Y'
,p_prompt=>'Use Application Date Format'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'DATE_FORMAT_OPTION'
,p_lov=>'.'||wwv_flow_api.id(18233598861980459919)||'.'
,p_field_template=>wwv_flow_api.id(14959370620237679187)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Select this box if you would like to use the application Date/Timestamp formats during your data loading.'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18235129799772687665)
,p_name=>'P125_CHAR_SET'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(18235123195117687650)
,p_item_default=>'UTF-8'
,p_prompt=>'File Character Set'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DATA_LOAD_CHARSET'
,p_lov=>'.'||wwv_flow_api.id(18233600471953459927)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(14959370620237679187)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'DATA_LOAD.CHAR_SET_ITEM_HELP'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18235131069727687666)
,p_name=>'P125_COPY_PASTE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(18235123195117687650)
,p_prompt=>'Copy and Paste Delimited Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cHeight=>10
,p_field_template=>wwv_flow_api.id(14959370695612679188)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18235131891196687668)
,p_name=>'P125_CURRENCY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18235131416929687668)
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
,p_field_template=>wwv_flow_api.id(14959370620237679187)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'If your data contains international currency symbol, enter it here. For example, if your data has "&euro;1,234.56" or "&yen;1,234.56", enter "&euro;" or "&yen;".  Otherwise the data will not load correctly.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18235132844211687669)
,p_name=>'P125_GROUP_SEPARATOR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18235131416929687668)
,p_prompt=>'Group Separator'
,p_source=>'apex_application.get_nls_group_separator'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_field_template=>wwv_flow_api.id(14959370620237679187)
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
 p_id=>wwv_flow_api.id(18235133726070687670)
,p_name=>'P125_DECIMAL_CHARACTER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18235131416929687668)
,p_prompt=>'Decimal Character'
,p_source=>'apex_application.get_nls_decimal_separator'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_field_template=>wwv_flow_api.id(14959370620237679187)
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
 p_id=>wwv_flow_api.id(18235250936758700322)
,p_name=>'P125_SAMPLE_DATA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(18235250680974700319)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'"Customer Name","Summary","Category ID","Location","Type ID" ',
'"Customer 1","Software.","Corporate","New York NY","Partner" ',
'"Customer 2","biotechnology.","Corporate","San Francisco","Unknown" ',
'"Euronet Worldwide","banking software.","Corporate","-","Unknown" ',
'"Customer 3","biotechnology equipment","Corporate","-","Customer"'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18245680874159797378)
,p_name=>'P125_ORIG_COPY_PASTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18235123195117687650)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(18245682162092797391)
,p_computation_sequence=>10
,p_computation_item=>'P125_IMPORT_FROM'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'nvl(:P125_LAST_IMPORT_FROM,''PASTE'')'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18235125810783687657)
,p_validation_name=>'Filename is not null'
,p_validation_sequence=>10
,p_validation=>'P125_FILE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P125_IMPORT_FROM'
,p_validation_condition2=>'UPLOAD'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(18235124069173687653)
,p_associated_item=>wwv_flow_api.id(18235124816700687656)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18022743484493269517)
,p_validation_name=>'Paste cannot be Null'
,p_validation_sequence=>20
,p_validation=>'P125_ORIG_COPY_PASTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P125_IMPORT_FROM'
,p_validation_condition2=>'PASTE'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(18235124069173687653)
,p_associated_item=>wwv_flow_api.id(18235131069727687666)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18235134555066687670)
,p_name=>'Import From Copy and Paste'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P125_IMPORT_FROM'
,p_condition_element=>'P125_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PASTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18235135542965687672)
,p_event_id=>wwv_flow_api.id(18235134555066687670)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18235135044613687671)
,p_event_id=>wwv_flow_api.id(18235134555066687670)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_COPY_PASTE'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18235135966375687672)
,p_name=>'Import from File'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P125_IMPORT_FROM'
,p_condition_element=>'P125_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'UPLOAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18235136950372687674)
,p_event_id=>wwv_flow_api.id(18235135966375687672)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18235136393756687673)
,p_event_id=>wwv_flow_api.id(18235135966375687672)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_FILE_NAME'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18245682413411797394)
,p_event_id=>wwv_flow_api.id(18235135966375687672)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18235240999621648428)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18245682378193797393)
,p_event_id=>wwv_flow_api.id(18235135966375687672)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18235240999621648428)
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18245513472056738182)
,p_name=>'Set copy and paste textarea with sample data'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18235319151238725129)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18245515292906738187)
,p_event_id=>wwv_flow_api.id(18245513472056738182)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_IMPORT_FROM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'PASTE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18245513845235738185)
,p_event_id=>wwv_flow_api.id(18245513472056738182)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_COPY_PASTE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'&P125_SAMPLE_DATA.'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18245514798042738187)
,p_event_id=>wwv_flow_api.id(18245513472056738182)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P125_COPY_PASTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18245515820914738187)
,p_event_id=>wwv_flow_api.id(18245513472056738182)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_SEPARATOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>','
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18245514370971738186)
,p_event_id=>wwv_flow_api.id(18245513472056738182)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_FIRST_ROW'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18245680979150797379)
,p_name=>'set orig copy paste value and submit'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18235124069173687653)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18245681045660797380)
,p_event_id=>wwv_flow_api.id(18245680979150797379)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_ORIG_COPY_PASTE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v(''P125_COPY_PASTE'')'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18245681154777797381)
,p_event_id=>wwv_flow_api.id(18245680979150797379)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P125_ORIG_COPY_PASTE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18245681201982797382)
,p_event_id=>wwv_flow_api.id(18245680979150797379)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.widget.textareaClob.upload(''P125_COPY_PASTE'', ''NEXT'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18245682528731797395)
,p_name=>'Set Import From'
,p_event_sequence=>50
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$(''li.htmldbStdErr'').html() && $(''li.htmldbStdErr'').html().substr(0, 30) == ''File Name must have some value'''
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18245682585548797396)
,p_event_id=>wwv_flow_api.id(18245682528731797395)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P125_IMPORT_FROM'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'UPLOAD'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18235137427089687674)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PARSE_UPLOADED_DATA'
,p_process_name=>'Parse Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(18235099579248684858)
,p_attribute_02=>'P125_IMPORT_FROM'
,p_attribute_03=>'P125_SEPARATOR'
,p_attribute_04=>'P125_ENCLOSED_BY'
,p_attribute_05=>'P125_FIRST_ROW'
,p_attribute_06=>'P125_CURRENCY'
,p_attribute_07=>'P125_GROUP_SEPARATOR'
,p_attribute_08=>'P125_DECIMAL_CHARACTER'
,p_attribute_09=>'P125_FILE_NAME'
,p_attribute_10=>'P125_COPY_PASTE'
,p_attribute_11=>'P125_CHAR_SET'
,p_attribute_12=>'P125_APP_DATE_FORMAT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18235124069173687653)
);
wwv_flow_api.component_end;
end;
/
