prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(3048806881237990347)
,p_name=>'Report with Query'
,p_alias=>'REPORT-WITH-QUERY'
,p_step_title=>'Report with Query'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'section.infoRegion {',
'    border: 1px solid #9AAEC8;',
'    background-color: #DDE7F5;',
'}',
'section.infoRegion > div.uRegionHeading {',
'    background: none transparent;',
'}',
'.infoRegionIcon {',
'    position: absolute;',
'    left: 0;',
'    margin: 16px;',
'    top: 0;',
'}',
'section.infoRegion.uRegion > div.uRegionContent {',
'    position: relative;',
'    min-height: 32px;',
'    padding: 16px 16px 16px 64px;',
'}',
'.infoRegion h1 {',
'    font-weight: bold;',
'    font-size: 14px;',
'    color: #202020;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.65);',
'}',
'.infoRegion p {',
'    font-size: 12px;',
'    line-height: 20px;',
'    padding: 8px 0 0 0;',
'    text-shadow: 0 1px 0 rgba(255,255,255,.25);',
'    color: #303030;',
'}',
'.infoRegion p:last-child {',
'    margin-bottom: 0 !important;',
'}',
'',
'',
'',
'div.featuredBlock{',
'	-webkit-border-radius:3px;',
'	-moz-border-radius:3px;',
'	border-radius:3px;',
'	-webkit-box-shadow:0 1px 2px rgba(0,0,0,0.05);',
'	-moz-box-shadow:0 1px 2px rgba(0,0,0,0.05);',
'	box-shadow:0 1px 2px rgba(0,0,0,0.05);',
'	border:1px solid #E1E6EB;',
'	margin-bottom:18px',
'}',
'div.featuredBlock div.featuredIcon{',
'	background-image:url(''data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4gPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PGxpbmVhckdyYWRpZW50IGlkPSJncmFkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPb'
||'lVzZSIgeDE9IjUwJSIgeTE9IjAlIiB4Mj0iNTAlIiB5Mj0iMTAwJSI+PHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iI2ZmZmZmZiIvPjxzdG9wIG9mZnNldD0iNDAlIiBzdG9wLWNvbG9yPSIjZmZmZmZmIi8+PHN0b3Agb2Zmc2V0PSI2MCUiIHN0b3AtY29sb3I9IiNmNGY0ZjgiLz48c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3A'
||'tY29sb3I9IiNmZmZmZmYiLz48L2xpbmVhckdyYWRpZW50PjwvZGVmcz48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMTAwJSIgaGVpZ2h0PSIxMDAlIiBmaWxsPSJ1cmwoI2dyYWQpIiAvPjwvc3ZnPiA='');',
'	background-size:100%;',
'	background-image:-webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #ffffff), color-stop(40%, #ffffff), color-stop(60%, #f4f4f8), color-stop(100%, #ffffff));',
'	background-image:-webkit-linear-gradient(top, #ffffff 0%,#ffffff 40%,#f4f4f8 60%,#ffffff 100%);',
'	background-image:-moz-linear-gradient(top, #ffffff 0%,#ffffff 40%,#f4f4f8 60%,#ffffff 100%);',
'	background-image:linear-gradient(top, #ffffff 0%,#ffffff 40%,#f4f4f8 60%,#ffffff 100%);',
'	-webkit-border-radius:3px 3px 0 0;',
'	-moz-border-radius:3px 3px 0 0;',
'	border-radius:3px 3px 0 0;',
'	padding:8px 0;',
'	min-height: 90px;',
'	text-align:center;',
'}',
'div.featuredBlock div.featuredIcon img{',
'	display:block;',
'	margin:0 auto 0 auto;',
'	-webkit-box-reflect:below -20px -webkit-gradient(linear, left top, left bottom, from(transparent), color-stop(65%, transparent), to(rgba(255,255,255,0.2)));',
'}',
'div.featuredBlock div.featuredIcon h1{',
'	font-size:12px;',
'	line-height:12px;',
'	color:#404040;',
'	margin:0 8px;',
'	padding:0;',
'	text-align:center;',
'}',
'a.blockLink,a.blockLink:hover{',
'	text-decoration:none',
'}',
'a.blockLink:hover div.featuredBlock{',
'	border:1px solid #b1bbcb',
'}',
'a.blockLink:hover div.featuredBlock div.featuredIcon{',
'	background: none #e5effb;',
'	-webkit-box-shadow: 0 0 10px rgba(50,117,199,0.25);',
'	-moz-box-shadow: 0 0 10px rgba(50,117,199,0.25);',
'	box-shadow: 0 0 10px rgba(50,117,199,0.25);',
'}',
'.regionDivider {',
'	border-top: 2px solid #F0F0F0 !important;',
'	padding-top: 8px;;',
'}'))
,p_step_template=>wwv_flow_api.id(3702261336968415439)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HILARY'
,p_last_upd_yyyymmddhh24miss=>'20210309053857'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1870946432603328481)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3702279440792415478)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(3246092891286859286)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(3702300309632415563)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9175794067021512017)
,p_plug_name=>'REST Service Endpoint'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(3702276865524415473)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'htp.p(''REST Service Endpoint: <b>'' || sys.utl_url.unescape( :P4_THIS_URL ) || ''</b>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10397767351653603398)
,p_plug_name=>'About this page'
,p_plug_template=>wwv_flow_api.id(3702266226375415449)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows how to create a report to display larger REST service responses including query capability. Unline a report on a normal page, a new REST request must be executed when end users type in a query. Downloading all data to the database '
||'and doing local filtering is not feasible since the amount of data might be too large. </p>',
'<p>This example uses REST pagination support provided by Oracle REST Data Services (ORDS). ORDS allows to append a query parameter (<strong>q=</strong>) containing filters to the REST endpoint URL. On the REST server side that parameter is being eval'
||'uated leading ORDS returning only the requested row set.</p>'))
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
 p_id=>wwv_flow_api.id(10586797477678425619)
,p_plug_name=>'Footer'
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.SAMPLEAPPFOOTER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(17603901320238935257)
,p_name=>'Data from RESTful Service'
,p_region_name=>'report'
,p_template=>wwv_flow_api.id(3702276865524415473)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--horizontalBorders'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    x.EMPNO, ',
'    x.ENAME, ',
'    x.JOB, ',
'    x.MGR, ',
'    to_date( x.HIREDATE, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ) as HIREDATE, ',
'    x.SAL, ',
'    x.COMM,',
'    x.DEPTNO, ',
'    x.RN',
'from apex_collections c, xmltable(',
'    ''/json/items/row''',
'    passing apex_json.to_xmltype( c.clob001 )',
'    columns',
'        EMPNO      NUMBER          path ''empno'',',
'        ENAME      VARCHAR2(4000)  path ''ename'',',
'        JOB        VARCHAR2(4000)  path ''job'',',
'        MGR        NUMBER          path ''mgr'',',
'        HIREDATE   VARCHAR2(4000)   path ''hiredate'',',
'        SAL        NUMBER          path ''sal'', ',
'        COMM       NUMBER          path ''comm'',',
'        DEPTNO     NUMBER          path ''deptno'',',
'        RN         NUMBER          path ''rn''',
') x',
'where c.collection_name = ''REST_COLLECTION'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(3702286570673415507)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No data returned.'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1934829293922617730)
,p_query_column_id=>1
,p_column_alias=>'EMPNO'
,p_column_display_sequence=>3
,p_column_heading=>'Empno'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1934829650074617731)
,p_query_column_id=>2
,p_column_alias=>'ENAME'
,p_column_display_sequence=>4
,p_column_heading=>'Ename'
,p_use_as_row_header=>'N'
,p_column_hit_highlight=>'&P4_ENAME_CONTAINS.'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1934830084342617731)
,p_query_column_id=>3
,p_column_alias=>'JOB'
,p_column_display_sequence=>5
,p_column_heading=>'Job'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1934830439678617731)
,p_query_column_id=>4
,p_column_alias=>'MGR'
,p_column_display_sequence=>6
,p_column_heading=>'Mgr'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1934830881394617732)
,p_query_column_id=>5
,p_column_alias=>'HIREDATE'
,p_column_display_sequence=>7
,p_column_heading=>'Hiredate'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1934831327686617732)
,p_query_column_id=>6
,p_column_alias=>'SAL'
,p_column_display_sequence=>8
,p_column_heading=>'Sal'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1934831680745617733)
,p_query_column_id=>7
,p_column_alias=>'COMM'
,p_column_display_sequence=>9
,p_column_heading=>'Comm'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1934832040538617733)
,p_query_column_id=>8
,p_column_alias=>'DEPTNO'
,p_column_display_sequence=>10
,p_column_heading=>'Deptno'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1934832520377617734)
,p_query_column_id=>9
,p_column_alias=>'RN'
,p_column_display_sequence=>2
,p_column_heading=>'Row #'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>100
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1936473707403532751)
,p_query_column_id=>10
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>1
,p_column_heading=>'&nbsp;'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP:P12_EMPNO,P12_BACK_TO_PAGE:#EMPNO#,4'
,p_column_linktext=>'<center><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit Employee"></center>'
,p_report_column_width=>75
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1934833291245617734)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17603901320238935257)
,p_button_name=>'PREV'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(3702299722035415558)
,p_button_image_alt=>'Previous Page'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP:P4_SHOW_PAGE:prev'
,p_button_condition=>'P4_URL_PREV_PAGE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1934832861663617734)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17603901320238935257)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(3702299722035415558)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next Page'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP:P4_SHOW_PAGE:next'
,p_button_condition=>'P4_URL_NEXT_PAGE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1934837095169617744)
,p_branch_name=>'Go To Page'
,p_branch_action=>'f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1923274500324689027)
,p_name=>'P4_CASE_SENSITIVE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17603901320238935257)
,p_item_default=>'N'
,p_prompt=>'Case Sensitive'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(386113664577365650)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1934833708305617735)
,p_name=>'P4_ENAME_CONTAINS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17603901320238935257)
,p_prompt=>'ENAME contains'
,p_placeholder=>'e.g. KING'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(386113664577365650)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1934834108390617735)
,p_name=>'P4_URL_PREV_PAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(17603901320238935257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1934834442465617735)
,p_name=>'P4_URL_NEXT_PAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17603901320238935257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1934834893243617736)
,p_name=>'P4_SHOW_PAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(17603901320238935257)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1934835903668617742)
,p_name=>'P4_THIS_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9175794067021512017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1934836600974617743)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch data into Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- INSTRUCTIONS ',
'-- ',
'-- 1. create 3 items on your Application Express page: ',
'--    - {APEX_ITEM_URL_NEXT_PAGE}: holds the REST data URL for the next page',
'--    - {APEX_ITEM_URL_PREV_PAGE}: holds the REST data URL for the previous page',
'--    - {APEX_ITEM_SHOW_PAGE}:     determines whether to move forward or backwards ',
'-- ',
'-- 2. create two page buttons:',
'--    - "PREV": redirect to the same page and set :{APEX_ITEM_SHOW_PAGE} to "prev"',
'--    -         conditional; show only when {APEX_ITEM_URL_PREV_PAGE} is NOT NULL',
'--    - "NEXT": redirect to the same page and set :{APEX_ITEM_SHOW_PAGE} to "next"',
'--    -         conditional; show only when {APEX_ITEM_URL_NEXT_PAGE} is NOT NULL',
'--',
'-- 3. replace the on Page Load code with the following. Replace all occurrences of',
'--    :{APEX_ITEM_...} with your page item names.',
'--',
'',
'declare',
'    l_response clob;',
'begin',
'    :P4_THIS_URL := case ',
'                           -- TODO: replace with your page item names here',
'                           when :P4_SHOW_PAGE = ''next'' and :P4_URL_NEXT_PAGE is not null then :P4_URL_NEXT_PAGE',
'                           when :P4_SHOW_PAGE = ''prev'' and :P4_URL_PREV_PAGE is not null then :P4_URL_PREV_PAGE',
'                           else ',
'                               case when :P4_ENAME_CONTAINS is not null then ',
'                                   case when :P4_CASE_SENSITIVE = ''Y'' then ',
'                                       :SAMPLE_ENDPOINT_URL || ''?q='' || sys.utl_url.escape(''{"ename":{"$like": "%'' || :P4_ENAME_CONTAINS || ''%"}}'')',
'                                   else ',
'                                       :SAMPLE_ENDPOINT_URL || ''?q='' || sys.utl_url.escape(''{"ename":{"$instr": "'' || :P4_ENAME_CONTAINS || ''"}}'')',
'                                   end',
'                               else',
'                                   nvl(  :P4_THIS_URL, :SAMPLE_ENDPOINT_URL )',
'                               end',
'                           end;',
'',
'    :P4_SHOW_PAGE := null;',
'',
'    -- load REST response into a collection',
'    l_response := apex_web_service.make_rest_request(',
'        p_url              => :P4_THIS_URL,',
'        p_http_method      => ''GET'');',
'',
'    apex_collection.create_or_truncate_collection( ''REST_COLLECTION'' );',
'    apex_collection.add_member(',
'        p_collection_name => ''REST_COLLECTION'',',
'        p_clob001 =>         l_response );',
'',
'    select',
'        x.next_page, ',
'        coalesce( x.prev_page, x.previous_page ) ',
'      -- TODO: replace with your page item names here',
'      into :P4_URL_NEXT_PAGE, :P4_URL_PREV_PAGE',
'    from apex_collections c, xmltable( ',
'        ''/json''',
'        passing apex_json.to_xmltype( c.clob001 )',
'        columns',
'            next_page     varchar2(500) path ''next/_ref'',',
'            prev_page     varchar2(500) path ''prev/_ref'',',
'            previous_page varchar2(500) path ''previous/_ref''',
'    ) x',
'    where c.collection_name = ''REST_COLLECTION'';',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
