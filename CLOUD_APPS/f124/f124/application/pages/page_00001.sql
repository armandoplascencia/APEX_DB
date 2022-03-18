prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(1218849447906494434)
,p_tab_set=>'TS1'
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Sample File Upload and Download'
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
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'U'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'HILARY'
,p_last_upd_yyyymmddhh24miss=>'20210309053857'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1384825823161744051)
,p_plug_name=>'&APP_NAME.'
,p_icon_css_classes=>'app-sample-file-upload-download'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006229268119932705)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1395009151581618909)
,p_plug_name=>'About this application'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006223170705932693)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>This application demonstrates how to upload and download files within applications written using Oracle Application Express (APEX).  The files are stored  within Oracle database tables in BLOB column types.</p>'
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
 p_id=>wwv_flow_api.id(1415773544260150550)
,p_plug_name=>'Additional Oracle APEX Communities and Resources'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_api.id(2006236615484932725)
,p_plug_display_sequence=>60
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'	<div class="apex_cols apex_span_2 alpha">',
'		<a href="https://forums.oracle.com/forums/forum.jspa?forumID=137" class="blockLink" target="_blank">',
'		<div class="featuredBlock">',
'			<div class="featuredIcon">',
'				<img src="#IMAGE_PREFIX#eba/icons/forums.png" alt="" />',
'				<h1>Oracle OTN Forums</h1>',
'			</div>',
'		</div>',
'		</a>',
'	</div>',
'	<div class="apex_cols apex_span_2">',
'		<a href="http://www.linkedin.com/skills/skill/Oracle_Application_Express" class="blockLink" target="_blank">',
'		<div class="featuredBlock">',
'			<div class="featuredIcon">',
'				<img src="#IMAGE_PREFIX#eba/icons/linkedin.png" alt="" />',
'				<h1>Connect on LinkedIn</h1>',
'			</div>',
'		</div>',
'		</a>',
'	</div>',
'	<div class="apex_cols apex_span_2">',
'		<a href="http://twitter.com/oracleapexnews" class="blockLink" target="_blank">',
'		<div class="featuredBlock">',
'			<div class="featuredIcon">',
'				<img src="#IMAGE_PREFIX#eba/icons/twitter.png" alt="" />',
'				<h1>Follow us on Twitter</h1>',
'			</div>',
'		</div>',
'		</a>',
'	</div>',
'	<div class="apex_cols apex_span_2">',
'		<a href="https://cloud.oracle.com/" class="blockLink" target="_blank">',
'		<div class="featuredBlock">',
'			<div class="featuredIcon">',
'				<img src="#IMAGE_PREFIX#eba/icons/cloud.png" alt="" />',
'				<h1>Oracle Database Cloud Service</h1>',
'			</div>',
'		</div>',
'		</a>',
'	</div>',
'	<div class="apex_cols apex_span_2">',
'		<a href="http://apex.oracle.com/" class="blockLink" target="_blank">',
'		<div class="featuredBlock">',
'			<div class="featuredIcon">',
'				<img src="#IMAGE_PREFIX#eba/icons/apexoracle.png" alt="" />',
'				<h1>apex.oracle.com</h1>',
'			</div>',
'		</div>',
'		</a>',
'	</div>',
'	<div class="apex_cols apex_span_2 omega">',
'		<a href="http://www.oracle.com/technetwork/developer-tools/apex/overview/index.html" class="blockLink" target="_blank">',
'		<div class="featuredBlock">',
'			<div class="featuredIcon">',
'				<img src="#IMAGE_PREFIX#eba/icons/otn.png" alt="" />',
'				<h1>APEX on OTN</h1>',
'			</div>',
'		</div>',
'		</a>',
'	</div>',
'</div>'))
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1419483523984915742)
,p_plug_name=>'Project Summary SQL Source'
,p_region_template_options=>'#DEFAULT#:is-collapsed:i-h320:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(2006229809342932708)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'ONE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1419483742687917132)
,p_plug_name=>'Recent Files SQL Source'
,p_region_template_options=>'#DEFAULT#:is-collapsed:i-h320:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(2006229809342932708)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'TWO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1510975748774638024)
,p_plug_name=>'Footer'
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.SAMPLEAPPFOOTER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3338702130785883856)
,p_name=>'Recent Files'
,p_region_name=>'TWO'
,p_template=>wwv_flow_api.id(2006234073473932720)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ID,',
'    ROW_VERSION_NUMBER,',
'    PROJECT_ID,',
'    FILENAME,',
'    FILE_MIMETYPE,',
'    FILE_CHARSET,',
'    FILE_BLOB,',
'    FILE_COMMENTS,',
'    TAGS,',
'    CREATED,',
'    CREATED_BY,',
'    UPDATED,',
'    UPDATED_BY,',
'    sys.dbms_lob.getlength(file_blob) as file_size,',
'    sys.dbms_lob.getlength(file_blob) as download',
'from EBA_DEMO_FILES',
'order by created desc'))
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(2006245944217932757)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>10
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338702426115883935)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338702525207883937)
,p_query_column_id=>2
,p_column_alias=>'ROW_VERSION_NUMBER'
,p_column_display_sequence=>2
,p_column_heading=>'Row Version Number'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338702632565883937)
,p_query_column_id=>3
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>3
,p_column_heading=>'Project ID'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338702749593883937)
,p_query_column_id=>4
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>4
,p_column_heading=>'Filename'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338702844197883937)
,p_query_column_id=>5
,p_column_alias=>'FILE_MIMETYPE'
,p_column_display_sequence=>5
,p_column_heading=>'File Mimetype'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338702945739883940)
,p_query_column_id=>6
,p_column_alias=>'FILE_CHARSET'
,p_column_display_sequence=>6
,p_column_heading=>'File Charset'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338703040150883940)
,p_query_column_id=>7
,p_column_alias=>'FILE_BLOB'
,p_column_display_sequence=>7
,p_column_heading=>'File Blob'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338703147196883940)
,p_query_column_id=>8
,p_column_alias=>'FILE_COMMENTS'
,p_column_display_sequence=>8
,p_column_heading=>'File Comments'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338703224788883940)
,p_query_column_id=>9
,p_column_alias=>'TAGS'
,p_column_display_sequence=>9
,p_column_heading=>'Tags'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338703348678883940)
,p_query_column_id=>10
,p_column_alias=>'CREATED'
,p_column_display_sequence=>10
,p_column_heading=>'Created'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338703449694883940)
,p_query_column_id=>11
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>11
,p_column_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338703521768883940)
,p_query_column_id=>12
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>12
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338703639986883942)
,p_query_column_id=>13
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>13
,p_column_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338703723548883942)
,p_query_column_id=>14
,p_column_alias=>'FILE_SIZE'
,p_column_display_sequence=>14
,p_column_heading=>'File Size'
,p_use_as_row_header=>'N'
,p_column_format=>'FILESIZE'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338703825615883942)
,p_query_column_id=>15
,p_column_alias=>'DOWNLOAD'
,p_column_display_sequence=>15
,p_column_heading=>'Download'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:EBA_DEMO_FILES:FILE_BLOB:ID::FILE_MIMETYPE:FILENAME:UPDATED:FILE_CHARSET:attachment:Download:'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3338704624992938977)
,p_name=>'Project Summary'
,p_region_name=>'ONE'
,p_template=>wwv_flow_api.id(2006234073473932720)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:i-h320:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_region_attributes=>' '
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    count(distinct PROJECT) projects,',
'    count(distinct project||''.''||TASK_NAME) tasks,',
'    count(distinct STATUS) status_codes,',
'    count(distinct ASSIGNED_TO) assignees,',
'    sum(COST) total_cost,',
'    sum(BUDGET) total_budget,',
'    max(file_count.c) files,',
'    max(file_size.s) file_size',
'from EBA_DEMO_FILE_PROJECTS p,',
'    (select count(*) c from eba_demo_files) file_count,',
'    (select nvl(sum(dbms_lob.getlength(file_blob)),0) s ',
'     from eba_demo_files) file_size'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(2006247660806932762)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338704938358938979)
,p_query_column_id=>1
,p_column_alias=>'PROJECTS'
,p_column_display_sequence=>1
,p_column_heading=>'Projects'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338705040813938979)
,p_query_column_id=>2
,p_column_alias=>'TASKS'
,p_column_display_sequence=>2
,p_column_heading=>'Tasks'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338705121695938979)
,p_query_column_id=>3
,p_column_alias=>'STATUS_CODES'
,p_column_display_sequence=>3
,p_column_heading=>'Status Codes'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338705238647938979)
,p_query_column_id=>4
,p_column_alias=>'ASSIGNEES'
,p_column_display_sequence=>4
,p_column_heading=>'Assignees'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338705333549938979)
,p_query_column_id=>5
,p_column_alias=>'TOTAL_COST'
,p_column_display_sequence=>5
,p_column_heading=>'Total Cost'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338705451915938979)
,p_query_column_id=>6
,p_column_alias=>'TOTAL_BUDGET'
,p_column_display_sequence=>6
,p_column_heading=>'Total Budget'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338705540228938979)
,p_query_column_id=>7
,p_column_alias=>'FILES'
,p_column_display_sequence=>7
,p_column_heading=>'Files'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3338705647605938979)
,p_query_column_id=>8
,p_column_alias=>'FILE_SIZE'
,p_column_display_sequence=>8
,p_column_heading=>'File Size'
,p_use_as_row_header=>'N'
,p_column_format=>'FILESIZE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14891878042654482578)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006238623050932729)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(14891877536180482574)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(2006262221594932810)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338686023618314107)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3338702130785883856)
,p_button_name=>'ADD_FILE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(2006261589251932802)
,p_button_image_alt=>'Add File'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338695123280389668)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3338704624992938977)
,p_button_name=>'ADD_PROJECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(2006261589251932802)
,p_button_image_alt=>'Add Project'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338667328616126261)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3338702130785883856)
,p_button_name=>'VIEW_FILES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(2006261589251932802)
,p_button_image_alt=>'View Files'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338667746277131395)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3338704624992938977)
,p_button_name=>'VIEW_PROJECTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(2006261589251932802)
,p_button_image_alt=>'View Projects'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.component_end;
end;
/
