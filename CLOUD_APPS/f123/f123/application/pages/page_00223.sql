prompt --application/pages/page_00223
begin
--   Manifest
--     PAGE: 00223
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>123
,p_default_id_offset=>111717178695017138
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>223
,p_user_interface_id=>wwv_flow_api.id(3048806881237990347)
,p_name=>'PL/SQL Access'
,p_alias=>'PL-SQL-ACCESS'
,p_step_title=>'PL/SQL Access'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301103321'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(162326601877188687)
,p_plug_name=>'EBA_RESTDEMO_SAMPLE_GITHUB table'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3702275319155415466)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from eba_restdemo_sample_github'
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(171345260181460912)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(171345439246460913)
,p_name=>'LANGUAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LANGUAGE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Language'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(171345524101460914)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(171345638961460915)
,p_name=>'UPDATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_ON'
,p_data_type=>'TIMESTAMP'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Updated on'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_format_mask=>'mm/dd/yyyy hh24:mi:ss'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(171345707982460916)
,p_name=>'CREATED_ON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_ON'
,p_data_type=>'TIMESTAMP'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Created on'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_format_mask=>'mm/dd/yyyy hh24:mi:ss'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(171345783233460917)
,p_name=>'ISSUES_CNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ISSUES_CNT'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Issues cnt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(171345916483460918)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(171345965458460919)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_enable_hide=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(171346138773460920)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(171345154560460911)
,p_internal_uid=>57117106489764432
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(171630213291628092)
,p_interactive_grid_id=>wwv_flow_api.id(171345154560460911)
,p_static_id=>'14581'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(171630254842628092)
,p_report_id=>wwv_flow_api.id(171630213291628092)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(171630792568628097)
,p_view_id=>wwv_flow_api.id(171630254842628092)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(171345260181460912)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(171631227828628102)
,p_view_id=>wwv_flow_api.id(171630254842628092)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(171345439246460913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(171631727772628104)
,p_view_id=>wwv_flow_api.id(171630254842628092)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(171345524101460914)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(171632170858628105)
,p_view_id=>wwv_flow_api.id(171630254842628092)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(171345638961460915)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(171632688132628106)
,p_view_id=>wwv_flow_api.id(171630254842628092)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(171345707982460916)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(171633179170628108)
,p_view_id=>wwv_flow_api.id(171630254842628092)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(171345783233460917)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(171634250535629798)
,p_view_id=>wwv_flow_api.id(171630254842628092)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(171345916483460918)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(171634815094629800)
,p_view_id=>wwv_flow_api.id(171630254842628092)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(171345965458460919)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(162328777158188709)
,p_plug_name=>'PL/SQL Code'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3702272859393415462)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'<pre>',
'declare',
'    l_context     apex_exec.t_context;',
'    l_filters     apex_exec.t_filters;',
'    l_columns     apex_exec.t_columns;',
'     ',
'    l_name_idx    pls_integer;',
'    l_lang_idx    pls_integer;',
'    l_desc_idx    pls_integer;',
'    l_upd_idx     pls_integer;',
'    l_cr_idx      pls_integer;',
'    l_issues_idx  pls_integer;',
'begin',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''NAME'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''LANGUAGE'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''DESCRIPTION'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''UPDATED_AT'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''CREATED_AT'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''OPEN_ISSUES_COUNT'' );',
'',
'    l_context := apex_exec.open_web_source_query(',
'        p_module_static_id  => ''Sample_Application_Github_Repositories'',',
'        p_columns           => l_columns,',
'        p_max_rows          => 1000 );',
'',
'    l_name_idx   := apex_exec.get_column_position( l_context, ''NAME'' );',
'    l_lang_idx   := apex_exec.get_column_position( l_context, ''LANGUAGE'' );',
'    l_desc_idx   := apex_exec.get_column_position( l_context, ''DESCRIPTION'' );',
'    l_upd_idx    := apex_exec.get_column_position( l_context, ''UPDATED_AT'' );',
'    l_cr_idx     := apex_exec.get_column_position( l_context, ''CREATED_AT'' );',
'    l_issues_idx := apex_exec.get_column_position( l_context, ''OPEN_ISSUES_COUNT'' );',
'',
'    while apex_exec.next_row( l_context ) loop',
'',
'        insert into eba_restdemo_sample_github values (',
'            apex_exec.get_varchar2    ( l_context, l_name_idx ), ',
'            apex_exec.get_varchar2    ( l_context, l_lang_idx ), ',
'            apex_exec.get_varchar2    ( l_context, l_desc_idx ), ',
'            apex_exec.get_timestamp_tz( l_context, l_upd_idx ), ',
'            apex_exec.get_timestamp_tz( l_context, l_cr_idx ), ',
'            apex_exec.get_number      ( l_context, l_issues_idx ));',
'',
'    end loop;',
'    ',
'    apex_exec.close( l_context );',
'exception',
'    when others then',
'    apex_exec.close( l_context );',
'    raise;    ',
'end;',
'</pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(162328868357188710)
,p_plug_name=>'PL/SQL and Web Source Modules'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3702276865524415473)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Github repository count for <strong>Oracle</strong>: &P223_REPO_CNT.',
'</p></p>',
'This page illustrates how to use an existing Web Source Module with PL/SQL and the <strong>APEX_EXEC</strong> package. When the <strong>Download</strong> button is clicked, the <strong>EBA_RESTDEMO_SAMPLE_GITHUB</strong> table is being populated with'
||' data from the Web Source Module. The Interactive Grid below works on that local table, data can thus be edited.</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(163366347255796890)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3702279440792415478)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(3246092891286859286)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(3702300309632415563)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(162329107481188712)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(163366347255796890)
,p_button_name=>'Clear'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3702300197334415561)
,p_button_image_alt=>'Clear'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(162328133643188702)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(163366347255796890)
,p_button_name=>'Download'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3702300197334415561)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(162326440055188685)
,p_name=>'P223_REPO_CNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(162328777158188709)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(162328188443188703)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Download REST Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_context     apex_exec.t_context;',
'    l_filters     apex_exec.t_filters;',
'    l_columns     apex_exec.t_columns;',
'     ',
'    l_name_idx    pls_integer;',
'    l_lang_idx    pls_integer;',
'    l_desc_idx    pls_integer;',
'    l_upd_idx     pls_integer;',
'    l_cr_idx      pls_integer;',
'    l_issues_idx  pls_integer;',
'begin',
'    delete from eba_restdemo_sample_github;',
'',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''NAME'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''LANGUAGE'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''DESCRIPTION'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''UPDATED_AT'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''CREATED_AT'' );',
'    apex_exec.add_column( p_columns => l_columns, p_column_name => ''OPEN_ISSUES_COUNT'' );',
'',
'    l_context := apex_exec.open_web_source_query(',
'        p_module_static_id  => ''Sample_Application_Github_Repositories'',',
'        p_columns           => l_columns,',
'        p_max_rows          => 1000 );',
'',
'    l_name_idx   := apex_exec.get_column_position( l_context, ''NAME'' );',
'    l_lang_idx   := apex_exec.get_column_position( l_context, ''LANGUAGE'' );',
'    l_desc_idx   := apex_exec.get_column_position( l_context, ''DESCRIPTION'' );',
'    l_upd_idx    := apex_exec.get_column_position( l_context, ''UPDATED_AT'' );',
'    l_cr_idx     := apex_exec.get_column_position( l_context, ''CREATED_AT'' );',
'    l_issues_idx := apex_exec.get_column_position( l_context, ''OPEN_ISSUES_COUNT'' );',
'',
'    while apex_exec.next_row( l_context ) loop',
'',
'        insert into eba_restdemo_sample_github values (',
'            apex_exec.get_varchar2    ( l_context, l_name_idx ), ',
'            apex_exec.get_varchar2    ( l_context, l_lang_idx ), ',
'            apex_exec.get_varchar2    ( l_context, l_desc_idx ), ',
'            apex_exec.get_timestamp_tz( l_context, l_upd_idx ), ',
'            apex_exec.get_timestamp_tz( l_context, l_cr_idx ), ',
'            apex_exec.get_number      ( l_context, l_issues_idx ));',
'',
'    end loop;',
'    ',
'    apex_exec.close( l_context );',
'exception',
'    when others then',
'    apex_exec.close( l_context );',
'    raise;    ',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(162328133643188702)
,p_process_success_message=>'Github Repository Information downloaded from REST Service.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(162329246338188713)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear local table'
,p_process_sql_clob=>'delete from eba_restdemo_sample_github;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(162329107481188712)
,p_process_success_message=>'Local data deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(171346166591460921)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(162326601877188687)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'EBA_RESTDEMO_SAMPLE_GITHUB table - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(162326460423188686)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Repo Count'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(*) into :P223_REPO_CNT',
'  from table( eba_restdemo_sample_pkg.get_github_repos );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
