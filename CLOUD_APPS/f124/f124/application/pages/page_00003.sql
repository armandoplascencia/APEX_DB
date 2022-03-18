prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(1218849447906494434)
,p_name=>'Files'
,p_alias=>'FILE-LIST'
,p_step_title=>'Files'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301103407'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(297572863265139002)
,p_plug_name=>'Container'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(2006234073473932720)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1419486651133933523)
,p_plug_name=>'SQL Source'
,p_parent_plug_id=>wwv_flow_api.id(297572863265139002)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(2006229809342932708)
,p_plug_display_sequence=>41
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.DISPLAY_SOURCE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'files_report'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2008697071009163503)
,p_plug_name=>'About This Page'
,p_parent_plug_id=>wwv_flow_api.id(297572863265139002)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(2006229809342932708)
,p_plug_display_sequence=>21
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1429559326799209963)
,p_plug_name=>'Include file size in a report using the "FILESIZE" format mask'
,p_parent_plug_id=>wwv_flow_api.id(2008697071009163503)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006223170705932693)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'    <li>Create an interactive report, including in your select statement the file size using the sys.dbms_lob.getlength([my blob column]) file_length function (you can provide FILE_SIZE as the column alias)</li>',
'    <li>Edit the Report Attributes</li>',
'    <li>Edit the Column Definition for the FILE_SIZE column</li>',
'    <li>Enter FILESIZE as Number/Date Format value</li>',
'    <li>Click Apply Changes</li>',
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
 p_id=>wwv_flow_api.id(1429559531994211422)
,p_plug_name=>'Display download links in an Interactive Report'
,p_parent_plug_id=>wwv_flow_api.id(2008697071009163503)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006223170705932693)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'    <li>Create an interactive report, including in your select statement the file size using the sys.dbms_lob.getlength([my blob column]) file_length function, you can provide DOWNLOAD as the column alias</li>',
'    <li>Edit the Report Attributes</li>',
'    <li>Edit the Column Definition for the DOWNLOAD column</li>',
'    <li>Select "BLOB Format" as Number/Date Format value (using the popup list of values)</li>',
'    <li>When you select "BLOB Format", the BLOB Column Attributes region will display</li>',
'    <li>Specify appropriate values in BLOB Column Attributes region</li>',
'',
'        <p><br>',
'        <strong>Format Mask</strong>: DOWNLOAD or IMAGE.  If the BLOB you are working with is an image, you can display it in the report using the new report format mask of ''IMAGE''.  For this example, you will select "DOWNLOAD".<br>',
'        <strong>Table</strong>: Case sensitive name of table containing target column of type BLOB.<br>',
'        <strong>Column</strong>: Case sensitive name of column of type BLOB.<br>',
'        <strong>Primary Key Column 1</strong>: Case sensitive name of primary key column 1.<br>',
'        <strong>Primary Key Column 2</strong>: Case sensitive name of primary key column 2.<br>',
'        <strong>Mimetype Column</strong>: Case sensitive column name used to store the MIME type.<br>',
'        <strong>Filename Column</strong>: Case sensitive column name used to store the filename of the BLOB. If NULL, the column name is used as the default when a user downloads the file.<br>',
'        <strong>Last Update Column</strong>: Case sensitive column name used to store the last update date of the BLOB. If used, the HTTP header of the file download indicates the date of last modification and web browsers will be able to cache the B'
||'LOB. If not specified, the browser may not be able to cache files.<br>',
'        <strong>Charaset Column</strong>: Case sensitive column name used to store the character set of the BLOB. Most relevant for Asian languages which may need to maintain the character set encoding.<br>',
'        <strong>Content Disposition</strong>: Select inline or attachment. If a MIME type is provided and the file is a type that can be displayed, the file is displayed. If MIME type is not provided, or the file cannot be displayed inline, the user '
||'is prompted to download.<br>',
'        <strong>Download Text</strong>: String used for the download link. If nothing is provided, "Download" is used. Note that this supports substitutions (useful for translated applications).<br>',
'        </p>',
'    <li>Click Apply Changes</li>',
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
 p_id=>wwv_flow_api.id(3339069334452181557)
,p_plug_name=>'Application features demonstrated on this page'
,p_parent_plug_id=>wwv_flow_api.id(2008697071009163503)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006223170705932693)
,p_plug_display_sequence=>30
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3338669130394155203)
,p_plug_name=>'Files'
,p_region_name=>'files_report'
,p_parent_plug_id=>wwv_flow_api.id(297572863265139002)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--noBorders'
,p_plug_template=>wwv_flow_api.id(2006232218956932711)
,p_plug_display_sequence=>31
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'from EBA_DEMO_FILES'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(3338669224768155250)
,p_name=>'Files'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No files found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'MIKE'
,p_internal_uid=>2598747204470508066
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338669449559155254)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338669524200155255)
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338669628603155256)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Project Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338669724562155256)
,p_db_column_name=>'FILENAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Filename'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12:P12_ID:#ID#'
,p_column_linktext=>'#FILENAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338669842450155256)
,p_db_column_name=>'FILE_MIMETYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338669949232155256)
,p_db_column_name=>'FILE_CHARSET'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Charset'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338670023346155256)
,p_db_column_name=>'FILE_BLOB'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'File'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338670139844155257)
,p_db_column_name=>'FILE_COMMENTS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338670231612155257)
,p_db_column_name=>'TAGS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338670344197155257)
,p_db_column_name=>'CREATED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338670434859155257)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338670545649155257)
,p_db_column_name=>'UPDATED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338670645555155257)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338685821409304025)
,p_db_column_name=>'FILE_SIZE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'File Size'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FILESIZE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3338699127425665254)
,p_db_column_name=>'DOWNLOAD'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Download'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DOWNLOAD:EBA_DEMO_FILES:FILE_BLOB:ID::FILE_MIMETYPE:FILENAME:UPDATED:FILE_CHARSET:attachment:Download:'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3338670731433155492)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'25987488'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'FILENAME:FILE_MIMETYPE:FILE_COMMENTS:CREATED:CREATED_BY:FILE_SIZE:DOWNLOAD:'
,p_sort_column_1=>'CREATED'
,p_sort_direction_1=>'DESC'
,p_sum_columns_on_break=>'FILE_SIZE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2009439362025849599)
,p_plug_name=>'Page Title'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(2006223170705932693)
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows how to implement a download column on an interactive report.  Click the <strong>Add File</strong> to see ',
'an example of adding a file to a database table.</p>'))
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3338648227821969864)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2006238623050932729)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(14891877536180482574)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(2006262221594932810)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338685138116289863)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3338648227821969864)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(2006261655519932805)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,3,RIR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3338685439632299763)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3338648227821969864)
,p_button_name=>'ADD_FILE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(2006261655519932805)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add File'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP,12::'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.component_end;
end;
/
