prompt --application/pages/page_00106
begin
--   Manifest
--     PAGE: 00106
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
 p_id=>106
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Attachment'
,p_step_title=>'Attachment: &P106_FILENAME.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_step_template=>wwv_flow_api.id(6781074610982890727)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'This page displays the attachment file''s size, comments, created on date, and a download button to download the file to your local hard drive.'
,p_last_upd_yyyymmddhh24miss=>'20190906085440'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6086785609687342119)
,p_name=>'&P106_FILENAME.'
,p_template=>wwv_flow_api.id(6781102788551890771)
,p_display_sequence=>10
,p_icon_css_classes=>'fa-download'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--info'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.id,',
'    ''<img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="''',
'        ||decode(substr(upper(f.filename),-4),',
'            ''.PPT'', ''uFileIcon powerpoint'',',
'            ''.XLS'', ''uFileIcon excel'',',
'            ''.DOC'', ''uFileIcon word'',',
'            ''.PDF'', ''uFileIcon pdf'',',
'            ''.GIF'', ''uFileIcon image'',',
'            ''.PNG'', ''uFileIcon image'',',
'            ''.JPG'', ''uFileIcon image'',',
'            decode(substr(upper(f.filename),-5),',
'                ''.PPTX'', ''uFileIcon powerpoint'',',
'                ''.XLSX'', ''uFileIcon excel'',',
'                ''.DOCX'', ''uFileIcon word'',',
'                ''.TIFF'', ''uFileIcon image'',',
'                    ''uFileIcon generic''))',
'        ||''" />'' as image,',
'    f.filename,',
'    apex_util.get_blob_file_src(''P43_FILE_BLOB'',f.id) as file_link,',
'    f.file_mimetype,',
'    f.file_charset,',
'    apex_util.filesize_mask(dbms_lob.getlength(file_blob)) f_len,',
'    file_comments,',
'    f.created,',
'    f.created created_date,',
'    lower(f.created_by) created_by,',
'    (   select project',
'        from eba_proj_status s',
'        where s.id = f.project_id ) project,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':106:''||:APP_SESSION||'':::106:P106_ID,P106_PROJECT_ID:''||f.id||'',''||f.project_id) doc_link',
'from EBA_PROJ_STATUS_FILES f',
'where project_id = :P106_PROJECT_ID and id = :P106_ID',
'order by id'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781124130846890827)
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'0'
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
 p_id=>wwv_flow_api.id(6086785879919342139)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6086787705082360495)
,p_query_column_id=>2
,p_column_alias=>'IMAGE'
,p_column_display_sequence=>10
,p_column_heading=>'Image'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6086786006814342139)
,p_query_column_id=>3
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>3
,p_column_heading=>'File Name'
,p_column_link=>'#FILE_LINK#'
,p_column_linktext=>'#FILENAME#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6086787810951360495)
,p_query_column_id=>4
,p_column_alias=>'FILE_LINK'
,p_column_display_sequence=>11
,p_column_heading=>'Link'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6086786100720342139)
,p_query_column_id=>5
,p_column_alias=>'FILE_MIMETYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Mimetype'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6086786195805342139)
,p_query_column_id=>6
,p_column_alias=>'FILE_CHARSET'
,p_column_display_sequence=>5
,p_column_heading=>'Charset'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6086786311557342139)
,p_query_column_id=>7
,p_column_alias=>'F_LEN'
,p_column_display_sequence=>6
,p_column_heading=>'Size'
,p_use_as_row_header=>'N'
,p_column_format=>'FILESIZE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6086786392961342139)
,p_query_column_id=>8
,p_column_alias=>'FILE_COMMENTS'
,p_column_display_sequence=>7
,p_column_heading=>'Comments'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6086786480939342139)
,p_query_column_id=>9
,p_column_alias=>'CREATED'
,p_column_display_sequence=>9
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6086789997940394139)
,p_query_column_id=>10
,p_column_alias=>'CREATED_DATE'
,p_column_display_sequence=>13
,p_column_heading=>'Created Date'
,p_use_as_row_header=>'N'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6086786593261342139)
,p_query_column_id=>11
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'Created By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6086787904736360495)
,p_query_column_id=>12
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>1
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6086788007044360495)
,p_query_column_id=>13
,p_column_alias=>'DOC_LINK'
,p_column_display_sequence=>12
,p_column_heading=>'Link'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6086797503379434915)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7150380780414293920)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'AFTER_HEADER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6086789611728390016)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'RETURN_TO_PROJECT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'View Project Details'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:&P106_PROJECT_ID.'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6086798000393443585)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6086785609687342119)
,p_button_name=>'DOWNLOAD'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'&P106_DOWNLOAD.'
,p_icon_css_classes=>'fa-download'
,p_button_cattributes=>'style="min-width: 50%"'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6086783590376263723)
,p_name=>'P106_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7150380780414293920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6086784699752286976)
,p_name=>'P106_PROJECT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7150380780414293920)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6086798400263453821)
,p_name=>'P106_DOWNLOAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(7150380780414293920)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select apex_util.get_blob_file_src(''P43_FILE_BLOB'',f.id) as file_link',
'from EBA_PROJ_STATUS_FILES f',
'where project_id = :P106_PROJECT_ID and id = :P106_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12851634078957955458)
,p_name=>'P106_FILENAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6086785609687342119)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(6086797083251431385)
,p_computation_sequence=>10
,p_computation_item=>'P2_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P106_PROJECT_ID.'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(12851634201768955459)
,p_computation_sequence=>10
,p_computation_item=>'P106_FILENAME'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.filename',
'from EBA_PROJ_STATUS_FILES f',
'where id = :P106_ID'))
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(6086797294375432301)
,p_computation_sequence=>20
,p_computation_item=>'P200_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&P106_PROJECT_ID.'
);
wwv_flow_api.component_end;
end;
/
