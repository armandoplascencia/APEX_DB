prompt --application/pages/page_00141
begin
--   Manifest
--     PAGE: 00141
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
 p_id=>141
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Flex Column'
,p_step_title=>'Flex Column'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_step_template=>wwv_flow_api.id(6781087329086890751)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_protection_level=>'C'
,p_help_text=>'The flex column details page shows all of the details about the flex column assignment as well as the page list of affected forms and reports. The flex column assigned on date is displayed in a mini-calendar region on the right-hand side of the page.'
||' Click the <strong>Edit Flex Column</strong> button to edit the attributes of this flex column assignment.'
,p_last_upd_yyyymmddhh24miss=>'20180223140941'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6252345310342562687)
,p_plug_name=>'Hidden Items'
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6252346305740562696)
,p_name=>'Page References'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.region_name,',
'    m.page_id,',
'    p.page_name page_title,',
'    case',
'        when m.region_type = ''CR'' then',
'            ''Classic Report''',
'        when m.region_type = ''IR'' then',
'            ''Interactive Report''',
'        when m.region_type = ''FORM'' then',
'            initcap(m.region_type)',
'    end as region_type,',
'    nvl(initcap(replace(p.authorization_scheme,''_'','' '')),''No Role Required'') authorization_scheme,',
'    p.page_requires_authentication requires_auth',
'from apex_application_page_regions r,',
'    apex_application_pages p,',
'    eba_proj_flex_page_map m',
'where r.application_id = :APP_ID',
'    and r.application_id = p.application_id',
'    and r.page_id = p.page_id',
'    and m.page_id = p.page_id',
'    and m.flex_table = (select flexible_table',
'                        from eba_proj_flex_registry',
'                        where id = :P141_ID)',
'    and r.source_type_code in (''DYNAMIC_QUERY'',''SQL_QUERY'',''STATIC_TEXT'')',
'    and upper(r.region_css_classes) like ''%FLEX%''',
'order by 2,4;'))
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No application forms affected by this flex column assignment'
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
 p_id=>wwv_flow_api.id(6252346479725562699)
,p_query_column_id=>1
,p_column_alias=>'REGION_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Region Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252346602289562701)
,p_query_column_id=>2
,p_column_alias=>'PAGE_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Page'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252346708454562701)
,p_query_column_id=>3
,p_column_alias=>'PAGE_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Page Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252346793714562701)
,p_query_column_id=>4
,p_column_alias=>'REGION_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Region Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252346881194562701)
,p_query_column_id=>5
,p_column_alias=>'AUTHORIZATION_SCHEME'
,p_column_display_sequence=>5
,p_column_heading=>'Authorization'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252346987012562701)
,p_query_column_id=>6
,p_column_alias=>'REQUIRES_AUTH'
,p_column_display_sequence=>6
,p_column_heading=>'Authentication'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6252347291927562701)
,p_name=>'Flex Column'
,p_region_name=>'FLEX_COLUMN'
,p_display_sequence=>40
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select r.id,',
'    r.row_version_number,',
'    r.flexible_table,',
'    r.flexible_column,',
'    decode(r.active_yn,''Y'',''Yes'',''N'',''No'') active_yn,',
'    r.form_label_text,',
'    nvl(r.report_label_text,r.form_label_text) report_label_text,',
'    (select l.template_name from apex_application_temp_label l where l.application_id = :APP_ID and l.label_template_id = r.label_template_id) as label_template,',
'    decode(r.is_required_yn,''Y'',''Yes'',''N'',''No'') is_required_yn,',
'    case',
'        when r.display_as = ''NUMBER'' then',
'            ''Number Field''',
'        when r.display_as = ''TEXT'' then',
'            ''Text Field''',
'        when r.display_as = ''DATE'' then',
'            ''Date Picker''',
'        when r.display_as = ''TEXTAREA'' then',
'            ''Text Area''',
'        when r.display_as = ''SELECT_LIST'' then',
'            ''Select List''',
'    end display_as,',
'    r.lov_type select_list_type,',
'    r.lov_sql_query,',
'    r.width,',
'    r.max_width,',
'    r.height,',
'    r.format_mask,',
'    initcap(r.label_alignment) label_alignment,',
'--    r.help_text,',
'    decode(r.is_displayed_on_ir,''Y'',''Yes'',''N'',''No'') is_displayed_on_ir,',
'    initcap(nvl(r.updated_by,r.created_by)) last_updated_by,',
'    nvl(r.updated,r.created) last_updated    ',
'from eba_proj_flex_registry r',
'where r.id = :P141_ID',
'order by 1',
''))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781124130846890827)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252347497032562701)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252347598167562701)
,p_query_column_id=>2
,p_column_alias=>'ROW_VERSION_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Row Version Number'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252347788336562701)
,p_query_column_id=>3
,p_column_alias=>'FLEXIBLE_TABLE'
,p_column_display_sequence=>4
,p_column_heading=>'Flexible Table'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252347891984562701)
,p_query_column_id=>4
,p_column_alias=>'FLEXIBLE_COLUMN'
,p_column_display_sequence=>3
,p_column_heading=>'Flexible Column'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252347994440562701)
,p_query_column_id=>5
,p_column_alias=>'ACTIVE_YN'
,p_column_display_sequence=>5
,p_column_heading=>'Active'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252348101131562701)
,p_query_column_id=>6
,p_column_alias=>'FORM_LABEL_TEXT'
,p_column_display_sequence=>12
,p_column_heading=>'Form Label Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252348205652562701)
,p_query_column_id=>7
,p_column_alias=>'REPORT_LABEL_TEXT'
,p_column_display_sequence=>15
,p_column_heading=>'Report Label Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252348303243562701)
,p_query_column_id=>8
,p_column_alias=>'LABEL_TEMPLATE'
,p_column_display_sequence=>11
,p_column_heading=>'Form Label Template'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252348394712562701)
,p_query_column_id=>9
,p_column_alias=>'IS_REQUIRED_YN'
,p_column_display_sequence=>10
,p_column_heading=>'Is Required'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252348511788562701)
,p_query_column_id=>10
,p_column_alias=>'DISPLAY_AS'
,p_column_display_sequence=>6
,p_column_heading=>'Display As'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252348611895562702)
,p_query_column_id=>11
,p_column_alias=>'SELECT_LIST_TYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Select List Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252348697620562702)
,p_query_column_id=>12
,p_column_alias=>'LOV_SQL_QUERY'
,p_column_display_sequence=>9
,p_column_heading=>'Select List  SQL Query'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where id = :P41_ID',
'    and lov_type = ''DYNAMIC'''))
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252348804525562702)
,p_query_column_id=>13
,p_column_alias=>'WIDTH'
,p_column_display_sequence=>16
,p_column_heading=>'Width'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252348890375562702)
,p_query_column_id=>14
,p_column_alias=>'MAX_WIDTH'
,p_column_display_sequence=>17
,p_column_heading=>'Max Width'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252348991802562702)
,p_query_column_id=>15
,p_column_alias=>'HEIGHT'
,p_column_display_sequence=>19
,p_column_heading=>'Height'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252349083177562702)
,p_query_column_id=>16
,p_column_alias=>'FORMAT_MASK'
,p_column_display_sequence=>7
,p_column_heading=>'Format Mask'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_flex_registry',
'where id = :P41_ID',
'    and display_as in (''DATE'',''NUMBER'')'))
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252349197783562703)
,p_query_column_id=>17
,p_column_alias=>'LABEL_ALIGNMENT'
,p_column_display_sequence=>13
,p_column_heading=>'Form Label Alignment'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252349384338562703)
,p_query_column_id=>18
,p_column_alias=>'IS_DISPLAYED_ON_IR'
,p_column_display_sequence=>14
,p_column_heading=>'Displayed in Interactive Reports'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252349507868562703)
,p_query_column_id=>19
,p_column_alias=>'LAST_UPDATED_BY'
,p_column_display_sequence=>18
,p_column_heading=>'Last Updated By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6252349602156562703)
,p_query_column_id=>20
,p_column_alias=>'LAST_UPDATED'
,p_column_display_sequence=>20
,p_column_heading=>'Last Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'since'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6252349690955562703)
,p_plug_name=>'Flex Column Assigned'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select created, ''Flex Column Assigned'' lbl',
'from eba_proj_flex_registry',
'where id = :P141_ID'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.MINICALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'CREATED'
,p_attribute_02=>'LBL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6252350082926562703)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6252345088723562687)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'EDIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Flex Column'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:142:&SESSION.::&DEBUG.:RP,142:P142_ID:&P141_ID.'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6252350691531562705)
,p_branch_action=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.::P141_ID:&P141_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 11-JAN-2012 16:02 by MIKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6252345485826562687)
,p_name=>'P141_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6252345310342562687)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(6252350501915562704)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.component_end;
end;
/
