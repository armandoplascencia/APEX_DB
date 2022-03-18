prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(1218849447906494434)
,p_tab_set=>'TS1'
,p_name=>'SQL Syntax'
,p_alias=>'SQL-SYNTAX'
,p_step_title=>'SQL Syntax'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'U'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301103407'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1415971635448348807)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006238623050932729)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(14891877536180482574)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(2006262221594932810)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1415990724286352919)
,p_plug_name=>'SQL create table syntax used in this sample application'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(2006234073473932720)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'CREATE TABLE EBA_DEMO_FILE_PROJECTS',
'   (',
'    ID                 NUMBER, ',
'    row_version_number NUMBER,',
'    project            VARCHAR2(30) not null, ',
'    task_name          VARCHAR2(255) not null, ',
'    start_date         DATE not null, ',
'    end_date           DATE not null, ',
'    status             VARCHAR2(30) not null, ',
'    assigned_to        VARCHAR2(30), ',
'    cost               NUMBER, ',
'    budget             NUMBER, ',
'    created_on         TIMESTAMP,',
'    created_by         VARCHAR2(255),',
'    browser_env        VARCHAR2(4000),',
'    <strong>icon_name          VARCHAR2(4000)</strong>,',
'    <strong>icon_blob          BLOB</strong>,',
'    <strong>icon_mimetype      VARCHAR2(512)</strong>,',
'    <strong>icon_charset       VARCHAR2(512)</strong>,',
'    <strong>icon_last_updated  TIMESTAMP</strong>,',
'    icon_comments      VARCHAR2(4000),',
'    CONSTRAINT EBA_DEMO_FILE_PROJECTS_PK PRIMARY KEY (ID) ENABLE',
'   ) ;',
'',
'</pre>'))
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
 p_id=>wwv_flow_api.id(1416010229958363985)
,p_plug_name=>'About this page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006223170705932693)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows the recommended SQL syntax to build file upload and download into your Oracle Application Express (APEX) application.  You need more than just a <strong>BLOB</strong> column as the browser will need to know the filename, mime type '
||'and character sets when downloading files.</p>',
'<p>Recommended column details</p>',
'<ul>',
'<li><strong>FILENAME</strong>: ICON_NAME in the example below.  Tracks the actual filename so that downloads of the file are given an appropriate name.  Without this attribute a download link would not know what filename to download a file as.</li>',
'<li><strong>BLOB</strong>: ICON_BLOB in the example below.  The Binary Large Object (BLOB) database column used to store uploaded files into database tables.  The Oracle BLOB datatype is virtually unlimited in size.</li>',
'<li><strong>MIMETYPE</strong>: ICON_MIMETYPE in the example below.  The mimetype is used by the bowser to identify which application should be used to display the content of a downloaded BLOB data.  The BLOB datatype does not maintain this informatio'
||'n so it is important to manage this data in its own column.</li>',
'<li><strong>CHARACTER SET</strong>: ICON_CHARSET in the example below.  Identifies the character set used to download the file.  The character set of a BLOB column is not automatically tracked so it will need to be maintained in a separate column.</l'
||'i>',
'<li><strong>LAST_UPDATED</strong>: ICON_LAST_UPDATED in the example below.  Tracks the timestamp of when the file was last updated and can be used for browser caching.  It is not required but can dramatically improve performance of some applications.'
||'</li>',
'',
'</ul>',
'<p>Reference Oracle Application Express documentation for additional information.</p>'))
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
 p_id=>wwv_flow_api.id(1416055220785399260)
,p_plug_name=>'Example SQL Queries used in this application'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(2006234073473932720)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
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
'    sys.dbms_lob.getlength(file_blob) file_size,',
'    sys.dbms_lob.getlength(file_blob) download',
'from EBA_DEMO_FILES',
'',
'</pre>'))
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
 p_id=>wwv_flow_api.id(1416069745251472547)
,p_plug_name=>'About this page2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006223170705932693)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>'<p>The <strong>sys.dbms_lob.getlength</strong> function is a high performance database package used to get the length of a BLOB column.</p>'
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
wwv_flow_api.component_end;
end;
/
