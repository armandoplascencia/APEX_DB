prompt --application/pages/page_00132
begin
--   Manifest
--     PAGE: 00132
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
 p_id=>132
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Project Attachments Report'
,p_step_title=>'Project Attachments Report'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956244298529599071)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<link rel="stylesheet" href="#IMAGE_PREFIX#eba/css/eba_timeline.css" type="text/css" media="all" charset="utf-8">',
'<style type="text/css" media="all">',
'div.body_inner div.region div.content_block{height:200px;overflow:scroll;overflow-y:scroll;overflow-x:hidden;}',
'',
'table.formlayout label {display: block; line-height:18px; }',
'table.formlayout label a {font: bold 11px/18px Arial, sans-serif; color: #333;}',
'table.formlayout label + br {display: none;}',
'#main-sb-left > div {margin-left: 10px;}',
'',
'#MILESTONES .rc-body-r{height:390px !important;}',
'</style>'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.file-icon.fa-file-powerpoint-o,',
'.file-icon.fa-file-excel-o,',
'.file-icon.fa-file-word-o,',
'.file-icon.fa-file-pdf-o,',
'.file-icon.fa-file-image-o,',
'.file-icon.fa-file-o { padding: 4px 8px; text-align: center; color: #FFF; border-radius: 2px; }',
'.file-icon.fa-file-powerpoint-o { background-color: #D24726; }',
'.file-icon.fa-file-excel-o { background-color: #217345; }',
'.file-icon.fa-file-word-o { background-color: #2A579A; }',
'.file-icon.fa-file-pdf-o { background-color: #F40700; }',
'.file-icon.fa-file-image-o { background-color: #F6BB32; }',
'.file-icon.fa-file-o { Background-color: #A5ADB8; }',
'td[headers=ICON] { padding-right: 0; padding-left: 8px; }'))
,p_step_template=>wwv_flow_api.id(6781077225859890733)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This filterable report shows all attachments for the project listed. Use the search field and any of the select list filters on the left to limit the results displayed on the right. Click the <strong>Reset</strong> button to reset the filter settings'
||'. Click the name of the attachment to go to the attachment details page. Click the name of the project to go to the project details page. Click the name of the person who added the attachment to navigate to their profile page. Click the download butt'
||'on to download the attachment file to your local hard drive.'
,p_last_upd_yyyymmddhh24miss=>'20190905150745'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6835730262326318957)
,p_plug_name=>'Search Filter'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6835733216269318966)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--showBreadcrumb:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(17441617559469602422)
,p_name=>'Attachments'
,p_region_name=>'projectAttachments'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--noBorders:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.id,',
'       p.id project_id,',
'    ''<span class="t-Icon file-icon fa ''',
'        ||decode(substr(upper(f.filename),-4),',
'            ''.PPT'', ''fa-file-powerpoint-o'',',
'            ''.XLS'', ''fa-file-excel-o'',',
'            ''.DOC'', ''fa-file-word-o'',',
'            ''.PDF'', ''fa-file-pdf-o'',',
'            ''.GIF'', ''fa-file-image-o'',',
'            ''.PNG'', ''fa-file-image-o'',',
'            ''.JPG'', ''fa-file-image-o'',',
'            decode(substr(upper(f.filename),-5),',
'                ''.PPTX'', ''fa-file-powerpoint-o'',',
'                ''.XLSX'', ''fa-file-excel-o'',',
'                ''.DOCX'', ''fa-file-word-o'',',
'                ''.TIFF'', ''fa-file-image-o'',',
'                    ''fa-file-o''))',
'        ||''"></span>'' as icon,',
'    f.filename,',
'    apex_util.prepare_url( eba_proj_fw.profile_url(f.created_by) ) as profile_url,',
'    apex_util.get_blob_file_src(''P43_FILE_BLOB'',f.id) as file_link,',
'    f.file_mimetype,',
'    f.file_charset,',
'    apex_util.filesize_mask(dbms_lob.getlength(file_blob)) file_size,',
'    dbms_lob.getlength(file_blob) f_len,',
'    decode(sign(length(f.file_comments)-100),',
'                1, substr(f.file_comments,1,100)||''...'',',
'                f.file_comments) file_comments,',
'    f.created,',
'    f.updated,',
'    decode( nvl(f.gold_yn, ''N''), ''N'', null, ''Y'', ''<span class="gold-marker"><span class="visuallyhidden">Gold</span></span>'') as gold_yn,',
'    eba_proj_fw.get_name_from_email_address(f.created_by) as created_by,',
'    (   select project',
'        from eba_proj_status s',
'        where s.id = f.project_id ) project,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':106:''||:APP_SESSION||'':::106:P200_ID,P106_ID,P106_PROJECT_ID:''||f.project_id||'',''||f.id||'',''||f.project_id) doc_link,',
'    null edit,',
'    null download_button',
'from eba_proj_status p,',
'     EBA_PROJ_STATUS_FILES f',
'where f.project_id = p.id',
'  and (',
'          :P132_GOLD is null',
'          or',
'          (',
'              :P132_GOLD is not null',
'              and',
'              :P132_GOLD = f.gold_yn',
'          )',
'      )',
'  and (nvl(:P132_OWNER,''0'') = ''0''',
'      or lower(f.created_by) = lower(:P132_OWNER))',
'  and ( :P132_SEARCH is null',
'      or instr(upper(f.filename), upper(:P132_SEARCH)) > 0',
'      or instr(upper(f.FILE_COMMENTS), upper(:P132_SEARCH)) > 0',
'      or instr(upper(p.project), upper(:P132_SEARCH)) > 0)',
'  and ( nvl(:P132_CATEGORY,0) = 0',
'      or p.cat_id = :P132_CATEGORY)',
'  and (NVL(:P132_TYPE,''0'')=''0'' or instr(upper(f.filename), ''.'' || upper(:P132_TYPE)) > 0)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P132_SEARCH,P132_TYPE,P132_OWNER,P132_CATEGORY,P132_ROWS'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122235480890822)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No attachments'
,p_query_num_rows_item=>'P132_ROWS'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>1000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(11865439785610750633)
,p_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_PROJ_STATUS_FILES f',
'where ( f.project_id = :P200_ID ',
'        or ( nvl(:P200_INC_CHILD,''N'') = ''Y''',
'            and  f.project_id in (select s.id ',
'                                  from EBA_PROJ_STATUS s',
'                                  where s.parent_project_id = :P200_ID))',
'    )'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441619065626602429)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441534201364514254)
,p_query_column_id=>2
,p_column_alias=>'PROJECT_ID'
,p_column_display_sequence=>19
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441617899865602427)
,p_query_column_id=>3
,p_column_alias=>'ICON'
,p_column_display_sequence=>2
,p_column_heading=>'<span class="u-VisuallyHidden">File Icon</span>'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441619426797602430)
,p_query_column_id=>4
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>4
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="f?p=&APP_ID.:106:&APP_SESSION.::::P200_ID,P106_ID,P106_PROJECT_ID:#PROJECT_ID#,#ID#,#PROJECT_ID#">#FILENAME#</a>',
'<div class="link-comments">#FILE_COMMENTS#</div>'))
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441618279449602428)
,p_query_column_id=>5
,p_column_alias=>'PROFILE_URL'
,p_column_display_sequence=>18
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441619822645602431)
,p_query_column_id=>6
,p_column_alias=>'FILE_LINK'
,p_column_display_sequence=>15
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441620244139602431)
,p_query_column_id=>7
,p_column_alias=>'FILE_MIMETYPE'
,p_column_display_sequence=>6
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441620707004602431)
,p_query_column_id=>8
,p_column_alias=>'FILE_CHARSET'
,p_column_display_sequence=>7
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441534069709514253)
,p_query_column_id=>9
,p_column_alias=>'FILE_SIZE'
,p_column_display_sequence=>9
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441621080203602432)
,p_query_column_id=>10
,p_column_alias=>'F_LEN'
,p_column_display_sequence=>8
,p_column_heading=>'Size'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'#FILE_SIZE#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441621419277602432)
,p_query_column_id=>11
,p_column_alias=>'FILE_COMMENTS'
,p_column_display_sequence=>11
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441621871850602433)
,p_query_column_id=>12
,p_column_alias=>'CREATED'
,p_column_display_sequence=>13
,p_column_heading=>'Added'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_column_html_expression=>'#CREATED# <br /><a href="#PROFILE_URL#">#CREATED_BY#</a>'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_default_sort_column_sequence=>1
,p_default_sort_dir=>'desc'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441622295892602433)
,p_query_column_id=>13
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>14
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(7577521962264437377)
,p_query_column_id=>14
,p_column_alias=>'GOLD_YN'
,p_column_display_sequence=>10
,p_column_heading=>'Gold'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441622667023602434)
,p_query_column_id=>15
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>12
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441623058431602434)
,p_query_column_id=>16
,p_column_alias=>'PROJECT'
,p_column_display_sequence=>5
,p_column_heading=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP:P200_ID:#PROJECT_ID#'
,p_column_linktext=>'#PROJECT#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441623470602602434)
,p_query_column_id=>17
,p_column_alias=>'DOC_LINK'
,p_column_display_sequence=>16
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441643906066602435)
,p_query_column_id=>18
,p_column_alias=>'EDIT'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:RP:P43_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_proj_fw.is_edit_authorized(',
'    p_username   => upper(:APP_USER),',
'    p_project_id => :P132_ID ) = ''Y'''))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17441618706993602429)
,p_query_column_id=>19
,p_column_alias=>'DOWNLOAD_BUTTON'
,p_column_display_sequence=>17
,p_column_heading=>'<span class="u-VisuallyHidden">Download</a>'
,p_column_link=>'#FILE_LINK#'
,p_column_linktext=>'<span class="t-Icon fa fa-download"></span>'
,p_column_link_attr=>'class="t-Button t-Button--icon t-Button--small" title="Download #FILENAME#"'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6835733960300318966)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6835730262326318957)
,p_button_name=>'P132_RESET_REPORT'
,p_button_static_id=>'P35_RESET_REPORT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6835735646627318969)
,p_branch_action=>'f?p=&FLOW_ID.:132:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6835730407175318957)
,p_name=>'P132_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6835730262326318957)
,p_prompt=>'Search'
,p_placeholder=>'Search Attachments'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6835731006664318958)
,p_name=>'P132_OWNER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6835730262326318957)
,p_prompt=>'Added By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct eba_proj_fw.get_name_from_email_address(created_by) as d,',
'                created_by r',
'  from EBA_PROJ_STATUS_FILES',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_tag_attributes=>'style="width: 170px;"'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6835731710339318961)
,p_name=>'P132_CATEGORY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6835730262326318957)
,p_item_default=>'0'
,p_prompt=>'Project &CAT_TITLE.'
,p_source=>'0'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORIES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CATEGORY display_value, ID return_value ',
'from EBA_PROJ_STATUS_CATS',
'where is_active_yn = ''Y''',
'order by display_sequence nulls last, 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_tag_attributes=>'style="width: 170px;"'
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Restrict this report to this &CAT_TITLE_LC..'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6835732819277318963)
,p_name=>'P132_ROWS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(6835730262326318957)
,p_item_default=>'100'
,p_prompt=>'Rows'
,p_source_post_computation=>'100'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'NUMBER OF ROWS'
,p_lov=>'.'||wwv_flow_api.id(6946138101745024023)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6835742380169525847)
,p_name=>'P132_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6835730262326318957)
,p_item_default=>'0'
,p_prompt=>'Attachment Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lower(e) e, e r',
'from (',
'    select distinct lower( case when instr(substr(filename,-4),''.'') = 2 then substr(filename,-2) when instr(substr(filename,-4),''.'') = 1 then substr(filename,-3) else substr(filename,-4) end ) as e',
'      from EBA_PROJ_STATUS_FILES f',
'     where instr(filename,''.'') > 0',
') x',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7577522059918437378)
,p_name=>'P132_GOLD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6835730262326318957)
,p_prompt=>'Gold Rated'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES NO RETURNS Y N'
,p_lov=>'.'||wwv_flow_api.id(9019252630556871632)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'<p>Filter attachments by the "Gold" rating.</p>'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(6835734598410318968)
,p_computation_sequence=>10
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'35'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15440628884450744443)
,p_name=>'refresh results on filter value change'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P132_TYPE,P132_GOLD,P132_OWNER,P132_CATEGORY,P132_ROWS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18016135104060311029)
,p_event_id=>wwv_flow_api.id(15440628884450744443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P132_GOLD'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15440628918768744444)
,p_event_id=>wwv_flow_api.id(15440628884450744443)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17441617559469602422)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15441460897726064741)
,p_name=>'Search Status Reports on Enter'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P132_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.keyCode == 13'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'change, keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15441462259209064744)
,p_event_id=>wwv_flow_api.id(15441460897726064741)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'this.browserEvent.preventDefault();'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17441533955360514252)
,p_event_id=>wwv_flow_api.id(15441460897726064741)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17441617559469602422)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17441534261418514255)
,p_name=>'Reset Search and Filters'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6835733960300318966)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17441534372923514256)
,p_event_id=>wwv_flow_api.id(17441534261418514255)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P132_SEARCH,P132_TYPE,P132_GOLD,P132_OWNER,P132_CATEGORY'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17441534468426514257)
,p_event_id=>wwv_flow_api.id(17441534261418514255)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P132_ROWS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'100'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6835734757467318968)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_process_when_button_id=>wwv_flow_api.id(6835733960300318966)
);
wwv_flow_api.component_end;
end;
/
