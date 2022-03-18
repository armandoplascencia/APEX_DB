prompt --application/pages/page_00219
begin
--   Manifest
--     PAGE: 00219
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
 p_id=>219
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Tag Details'
,p_step_title=>'Tag Details'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956244196798598610)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'<p>Click a tag to view the projects that referenced that tag.</p>'
,p_last_upd_yyyymmddhh24miss=>'20190910133220'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(820205053284460395)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(2102163296972548821)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(820205452864460399)
,p_plug_name=>'Attachments'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1228827961558575087)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.id,',
'       f.tags,',
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
'  and instr(f.tags,nvl(:P219_TAG,'' '')) > 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(820205518318460400)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No tagged Attachments found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'ALLAN'
,p_internal_uid=>645200816229816944
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(820205617579460401)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(820205746546460402)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Project id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847243680543918366)
,p_db_column_name=>'PROJECT'
,p_display_order=>30
,p_column_identifier=>'P'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:#PROJECT_ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(820205834148460403)
,p_db_column_name=>'ICON'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Icon'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(820205904912460404)
,p_db_column_name=>'FILENAME'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Filename'
,p_column_link=>'#DOC_LINK#'
,p_column_linktext=>'#FILENAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(820206064517460405)
,p_db_column_name=>'PROFILE_URL'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Profile url'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(820206141237460406)
,p_db_column_name=>'FILE_LINK'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'File link'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847242745827918357)
,p_db_column_name=>'FILE_MIMETYPE'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847242885948918358)
,p_db_column_name=>'FILE_CHARSET'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Character Set'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847242937868918359)
,p_db_column_name=>'FILE_SIZE'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Size'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847243050818918360)
,p_db_column_name=>'F_LEN'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'F len'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847243118062918361)
,p_db_column_name=>'FILE_COMMENTS'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847243273979918362)
,p_db_column_name=>'CREATED'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847243352026918363)
,p_db_column_name=>'UPDATED'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847243484149918364)
,p_db_column_name=>'GOLD_YN'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Gold?'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847243518808918365)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Created by'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847243707591918367)
,p_db_column_name=>'DOC_LINK'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Doc link'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847243872880918368)
,p_db_column_name=>'EDIT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Edit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847243921068918369)
,p_db_column_name=>'DOWNLOAD_BUTTON'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Download button'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847244055222918370)
,p_db_column_name=>'TAGS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(847254853992944398)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6722502'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT:ICON:FILENAME:FILE_MIMETYPE:FILE_CHARSET:FILE_SIZE:FILE_COMMENTS:TAGS:CREATED:UPDATED:CREATED_BY:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(847244382033918373)
,p_plug_name=>'Updates'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1228827961558575087)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.id,',
'    p.id project_id,',
'    t.status_update_type update_type,',
'    apex_escape.html(eba_proj_fw.conv_txt_html(',
'        regexp_replace(nvl(u.formatted_update,u.status_update),',
'                       ''##BREAK##.*'',''<br />...<a href="''||apex_util.prepare_url(''f?p=''||:APP_ID||'':129:''||:APP_SESSION',
'                                                        ||''::NO:129:P200_ID,P129_ID,P129_PROJECT_ID:''',
'                                                        ||u.project_id||'',''||u.id||'',''||u.project_id)||''">View More</a>'',',
'                      1,0,''n'')',
'    ) || ',
'    decode(u.gold_yn, null, '' '', ''N'', '' '', ''Y'', ''<br><span class="t-Badge t-Badge--orb t-Badge--small is-warning">Gold</span>'')) as status_update,',
'    apex_util.prepare_url(''f?p=''||:APP_ID||'':129:''||:app_session',
'        ||'':::129:P200_ID,P129_ID,P129_PROJECT_ID:''',
'        ||p.id||'',''||u.id||'',''||p.id) link,',
'    lower(u.update_owner) status_owner,',
'    u.updated update_date,',
'    eba_proj_fw.get_name_from_email_address(u.update_owner) as update_owner,',
'    (   select listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '') within group',
'            (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'        from eba_proj_user_ref rf,',
'            eba_proj_status_users u,',
'            eba_proj_roles r',
'        where rf.project_id = p.id',
'            and rf.user_id = u.id',
'            and rf.role_id = r.id',
'            and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as owner,',
'    p.project,',
'    s.status_short_desc status,',
'    decode(s.is_closed_status,''Y'',''black'',col.color_name) color_code,',
'    apex_util.get_since(u.updated) as updated,',
'    u.tags,',
'    u.created,',
'    u.created_by,',
'    nvl(eba_proj_fw.get_project_rowkey(p_project_id => p.id), p.row_key) as row_key,',
'    u.row_key update_key',
'from eba_proj_status_updates u,',
'    eba_proj_status_update_types t,',
'    eba_proj_status p,',
'    eba_proj_status_codes s,',
'    eba_proj_color_codes col',
'where p.id = u.project_id',
'    and p.PROJECT_STATUS = s.id(+)',
'    and col.id(+) = s.color_code_id',
'    and u.update_type = t.id',
'    and instr(u.tags,nvl(:P219_TAG,'' '')) > 0',
'order by',
'    u.created desc, p.project'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(847244448343918374)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No tagged Updates found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'ALLAN'
,p_internal_uid=>672239746255274918
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847244518601918375)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847244654917918376)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Project id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847244781585918377)
,p_db_column_name=>'UPDATE_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Update Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847244828021918378)
,p_db_column_name=>'STATUS_UPDATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Status Update'
,p_column_link=>'#LINK#'
,p_column_linktext=>'#STATUS_UPDATE#'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847244974045918379)
,p_db_column_name=>'LINK'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Link'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847245024488918380)
,p_db_column_name=>'STATUS_OWNER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847245156751918381)
,p_db_column_name=>'UPDATE_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Update Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847245291755918382)
,p_db_column_name=>'UPDATE_OWNER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Update Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847245316464918383)
,p_db_column_name=>'OWNER'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847245484232918384)
,p_db_column_name=>'PROJECT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:#PROJECT_ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847245526304918385)
,p_db_column_name=>'STATUS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847245652450918386)
,p_db_column_name=>'COLOR_CODE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Color Code'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847245719154918387)
,p_db_column_name=>'UPDATED'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Updated'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847245832730918388)
,p_db_column_name=>'CREATED'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847245954279918389)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847246098273918390)
,p_db_column_name=>'ROW_KEY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Row key'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847246169481918391)
,p_db_column_name=>'UPDATE_KEY'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Update key'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847246293383918392)
,p_db_column_name=>'TAGS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(851981022642196387)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6769764'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'STATUS_UPDATE:UPDATE_TYPE:STATUS_OWNER:PROJECT:OWNER:STATUS:TAGS:CREATED:CREATED_BY:UPDATE_OWNER:UPDATED:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(847246381043918393)
,p_plug_name=>'RDS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9644376200817117061)
,p_plug_name=>'Projects'
,p_region_name=>'IR'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1228827961558575087)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    s.ID,',
'    sysdate as curr_date,',
'    s.PROJECT  project,',
'    s.code_name,',
'    s.headline,',
'    s.headline_last_updated,',
'    s.requesting_team,',
'    s.impacted_environment,',
'    s.deal_type_id as deal_type,',
'    decode(s.parent_project_id,null,null,',
'    (select project from eba_proj_status p where p.id = s.parent_project_id)) parent_project,',
'    s.row_key,',
'    (select ''background-color:'' || cc.color_code || '';'' from eba_proj_color_codes cc where cc.id = c.COLOR_CODE_ID) as status_color,',
'    s.project_customer as customer,',
'    decode((select count(*) from EBA_PROJ_STATUS_FAVORITES f where f.content_id = s.id and f.user_name = upper(:APP_USER)),0,''No'',''Yes'') following,',
'    (   select listagg(lower(u.username),'', '') within group',
'                (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username)) as owners',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.project_id = s.id',
'                and rf.user_id = u.id',
'                and rf.role_id = r.id',
'                and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as users,',
'    (   select listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '') within group',
'                (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username)) as owners',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.project_id = s.id',
'                and rf.user_id = u.id',
'                and rf.role_id = r.id',
'                and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as owner,',
'    (select category from EBA_PROJ_STATUS_CATS pc where s.cat_id = pc.id) category,',
'    s.project_status as status,',
'    (select count(*) from EBA_PROJ_STATUS_UPDATES u where u.project_id = s.id) updates,',
'    (select count(*) from EBA_PROJ_STATUS_UPDATES u where u.project_id = s.id and created > current_date- 7) updates_1w,',
'    (select count(*) from EBA_PROJ_STATUS_AIS a where a.project_id = s.id) action_items,',
'    (select count(*) from EBA_PROJ_STATUS_AIS a where a.project_id = s.id and a.action_status = ''Open'') open_action_items,',
'    (select count(*) from EBA_PROJ_STATUS_AIS a where a.project_id = s.id and a.action_status = ''Open'' and a.due_date < trunc(current_date)) past_due_action_items,',
'    (select count(*) from eba_proj_status_ms m where m.project_id = s.id) milestones,',
'    (select count(*) from eba_proj_status_ms m where m.project_id = s.id and m.milestone_status = ''Open'') open_milestones,',
'    (select count(*) from eba_proj_status_ms m where m.project_id = s.id and m.milestone_status = ''Open'' and m.milestone_date < trunc(current_date)) past_due_milestones,',
'    next_milestones.MILESTONE_NAME as next_milestone,',
'    next_milestones.MILESTONE_DATE as milestone_date,',
'    s.goal,',
'    decode(s.url,null,null,''<a href="''||apex_escape.html(url)||''" target="TOP" alt="open URL">''||',
'         ''<img src="#IMAGE_PREFIX#menu/go_button_16x16.gif"></a>'') url,',
'    s.CREATED,',
'    s.CREATED_BY,',
'    nvl(s.UPDATED,s.created) updated,',
'    s.UPDATED_BY,',
'    decode(eba_proj_stat_ui.is_project_open(s.id), 0, ''Closed'', 1, ''Open'') as open_closed,',
'    apex_util.prepare_url(''f?p=''||:app_id||'':20:''||:app_session||'':::20:P20_ID:''||apex_escape.html(s.id)) email_link,',
'    decode(INCLUDE_BY_DEFAULT_YN,''Y'',''Yes'',''N'',''No'',''No'') inc,',
'    tags,',
'    (select max(CREATED) from EBA_PROJ_STATUS_VERIFICATIONS v ',
'     where v.project_id = s.id) last_verification,',
'    (   select case when dbms_lob.getlength(status_update) > 3950',
'            then dbms_lob.substr(apex_escape.html(status_update),3950)||''...''',
'            else cast(apex_escape.html(status_update) as varchar2(4000))',
'        end as status_update',
'        from eba_proj_status_updates',
'        where update_date=(select max(update_date)',
'                           from EBA_PROJ_STATUS_UPDATES u',
'                           where u.project_id = s.id)) latest_status_update,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_01'',s.project_flex_01) project_flex_01,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_02'',s.project_flex_02) project_flex_02,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_03'',s.project_flex_03) project_flex_03,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_04'',s.project_flex_04) project_flex_04,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_05'',s.project_flex_05) project_flex_05,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_06'',s.project_flex_06) project_flex_06,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_07'',s.project_flex_07) project_flex_07,',
'    eba_proj_flex_fw.fetch_v(''PROJECT_FLEX_08'',s.project_flex_08) project_flex_08,',
'    eba_proj_flex_fw.fetch_n(''PROJECT_FLEX_N01'',s.project_flex_n01) project_flex_n01,',
'    eba_proj_flex_fw.fetch_n(''PROJECT_FLEX_N02'',s.project_flex_n02) project_flex_n02,',
'    eba_proj_flex_fw.fetch_n(''PROJECT_FLEX_N03'',s.project_flex_n03) project_flex_n03,',
'    eba_proj_flex_fw.fetch_n(''PROJECT_FLEX_N04'',s.project_flex_n04) project_flex_n04,',
'    s.project_flex_d01,',
'    s.project_flex_d02,',
'    s.project_flex_d03,',
'    s.project_flex_d04,',
'    s.project_flex_d05,',
'    s.project_flex_d06,',
'    s.project_flex_d07,',
'    s.project_flex_d08,',
'    s.project_flex_d09,',
'    s.project_flex_d10,',
'    s.project_flex_d11,',
'    s.project_flex_d12,',
'    s.project_flex_clob',
'from EBA_PROJ_STATUS s,',
'     eba_proj_status_codes c,',
'    (   select ms.project_id, ms.milestone_date, ms.milestone_name,',
'            row_number() over (partition by ms.project_id',
'            order by ms.milestone_date) rownumber',
'        from eba_proj_status_ms ms',
'        where ms.milestone_status = ''Open'' ) next_milestones',
'where c.id = s.PROJECT_STATUS(+) and s.project is not null',
'    and instr(s.tags,nvl(:P219_TAG,'' '')) > 0',
'    and s.id = next_milestones.project_id(+)',
'    and next_milestones.rownumber(+) = 1',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(9644376429525117061)
,p_name=>'Projects'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No tagged Projects found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>' '
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_description=>'Projects Report'
,p_owner=>'MIKE'
,p_internal_uid=>9469371727436473605
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847001082323709844)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847001490261709845)
,p_db_column_name=>'PROJECT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_ID:#ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847001837494709846)
,p_db_column_name=>'OWNER'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'People'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847002227431709848)
,p_db_column_name=>'NEXT_MILESTONE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Next Milestone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847002681811709851)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847003067148709852)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847003416814709853)
,p_db_column_name=>'CUSTOMER'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847003837687709853)
,p_db_column_name=>'ROW_KEY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Key'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847004295108709853)
,p_db_column_name=>'GOAL'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Goal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847004619267709854)
,p_db_column_name=>'CATEGORY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'&CAT_TITLE.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847005025386709855)
,p_db_column_name=>'URL'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'URL'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
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
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847005439241709856)
,p_db_column_name=>'UPDATES'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Updates'
,p_column_link=>'f?p=&APP_ID.:75:&SESSION.::&DEBUG.:RP,75:P75_PROJECT:#ID#'
,p_column_linktext=>'#UPDATES#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847005872771709857)
,p_db_column_name=>'EMAIL_LINK'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Email'
,p_column_link=>'#EMAIL_LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#htmldb/icons/mail_20x.gif" alt="Email project people for status update">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847006236355709859)
,p_db_column_name=>'TAGS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_rpt_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tag',
'  from eba_proj_tags_type_sum',
' where tag_count > 0',
'   and content_type = ''STATUS'''))
,p_rpt_show_filter_lov=>'C'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847006603550709860)
,p_db_column_name=>'OPEN_ACTION_ITEMS'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Open Action Items'
,p_column_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,CIR:IREQ_PROJECT,IREQ_ACTION_STATUS:\#PROJECT#\,Open'
,p_column_linktext=>'#OPEN_ACTION_ITEMS#'
,p_column_link_attr=>'title="#OPEN_ACTION_ITEMS# open action items"'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847007062744709860)
,p_db_column_name=>'PARENT_PROJECT'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Parent Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID',
'   and build_option_name = ''Allow Parent Projects''',
'   and build_option_status = ''Include'''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847007469276709861)
,p_db_column_name=>'UPDATES_1W'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Updates 1w'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847000620908709844)
,p_db_column_name=>'OPEN_CLOSED'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Project Open Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846990359533709826)
,p_db_column_name=>'PAST_DUE_ACTION_ITEMS'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Past Due Action Items'
,p_column_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,CIR:P49_PAST_DUE_YN,IR_PROJECT,IR_ACTION_STATUS,IRLT_DUE_DATE:Y,\#PROJECT#\,Open,#CURR_DATE#'
,p_column_linktext=>'#PAST_DUE_ACTION_ITEMS#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846990719079709826)
,p_db_column_name=>'OPEN_MILESTONES'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Open Milestones'
,p_column_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP,63,CIR:IR_MILESTONE_STATUS,IR_PROJECT:Open,\#PROJECT#\'
,p_column_linktext=>'#OPEN_MILESTONES#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846991106126709826)
,p_db_column_name=>'PAST_DUE_MILESTONES'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Past Due Milestones'
,p_column_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP,63,CIR:IR_MILESTONE_STATUS,IR_PROJECT,IRLT_MILESTONE_DATE:Open,\#PROJECT#\,#CURR_DATE#'
,p_column_linktext=>'#PAST_DUE_MILESTONES#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846991564302709827)
,p_db_column_name=>'MILESTONE_DATE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Milestone Due Date'
,p_column_html_expression=>'<span style="white-space: pre;">#MILESTONE_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846991948867709827)
,p_db_column_name=>'CREATED'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Project Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846992361966709831)
,p_db_column_name=>'UPDATED'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Project Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846992773165709832)
,p_db_column_name=>'LAST_VERIFICATION'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Last Verification'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846993179812709833)
,p_db_column_name=>'FOLLOWING'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Following'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846993525673709834)
,p_db_column_name=>'PROJECT_FLEX_D01'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'PROJECT_FLEX_D01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846993927678709835)
,p_db_column_name=>'PROJECT_FLEX_D02'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'PROJECT_FLEX_D02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846994303096709836)
,p_db_column_name=>'PROJECT_FLEX_D03'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'PROJECT_FLEX_D03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846994641770709837)
,p_db_column_name=>'PROJECT_FLEX_D04'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'PROJECT_FLEX_D04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846987194603709819)
,p_db_column_name=>'PROJECT_FLEX_D05'
,p_display_order=>60
,p_column_identifier=>'BZ'
,p_column_label=>'Project flex d05'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846987547191709820)
,p_db_column_name=>'PROJECT_FLEX_D06'
,p_display_order=>70
,p_column_identifier=>'CA'
,p_column_label=>'Project flex d06'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D06'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846987958790709821)
,p_db_column_name=>'PROJECT_FLEX_D07'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Project flex d07'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846988343239709821)
,p_db_column_name=>'PROJECT_FLEX_D08'
,p_display_order=>90
,p_column_identifier=>'CC'
,p_column_label=>'Project flex d08'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846988773323709821)
,p_db_column_name=>'PROJECT_FLEX_D09'
,p_display_order=>100
,p_column_identifier=>'CD'
,p_column_label=>'Project flex d09'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D09'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846989177328709823)
,p_db_column_name=>'PROJECT_FLEX_D10'
,p_display_order=>110
,p_column_identifier=>'CE'
,p_column_label=>'Project flex d10'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D10'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846989558039709824)
,p_db_column_name=>'PROJECT_FLEX_D11'
,p_display_order=>120
,p_column_identifier=>'CF'
,p_column_label=>'Project flex d11'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D11'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846989906274709825)
,p_db_column_name=>'PROJECT_FLEX_D12'
,p_display_order=>130
,p_column_identifier=>'CG'
,p_column_label=>'Project flex d12'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_D12'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846995073122709837)
,p_db_column_name=>'PROJECT_FLEX_CLOB'
,p_display_order=>140
,p_column_identifier=>'AY'
,p_column_label=>'PROJECT_FLEX_CLOB'
,p_display_in_default_rpt=>'N'
,p_column_type=>'CLOB'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_CLOB'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846995480438709838)
,p_db_column_name=>'LATEST_STATUS_UPDATE'
,p_display_order=>150
,p_column_identifier=>'AZ'
,p_column_label=>'Latest Status Update'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846995803278709838)
,p_db_column_name=>'PROJECT_FLEX_01'
,p_display_order=>160
,p_column_identifier=>'BA'
,p_column_label=>'PROJECT_FLEX_01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846996271630709839)
,p_db_column_name=>'PROJECT_FLEX_02'
,p_display_order=>170
,p_column_identifier=>'BB'
,p_column_label=>'PROJECT_FLEX_02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846996615501709839)
,p_db_column_name=>'PROJECT_FLEX_03'
,p_display_order=>180
,p_column_identifier=>'BC'
,p_column_label=>'PROJECT_FLEX_03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846997046934709840)
,p_db_column_name=>'PROJECT_FLEX_04'
,p_display_order=>190
,p_column_identifier=>'BD'
,p_column_label=>'PROJECT_FLEX_04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846997413495709840)
,p_db_column_name=>'PROJECT_FLEX_05'
,p_display_order=>200
,p_column_identifier=>'BE'
,p_column_label=>'PROJECT_FLEX_05'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846997834753709840)
,p_db_column_name=>'PROJECT_FLEX_06'
,p_display_order=>210
,p_column_identifier=>'BF'
,p_column_label=>'PROJECT_FLEX_06'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_06'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846998217608709841)
,p_db_column_name=>'PROJECT_FLEX_07'
,p_display_order=>220
,p_column_identifier=>'BG'
,p_column_label=>'PROJECT_FLEX_07'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846998640953709841)
,p_db_column_name=>'PROJECT_FLEX_08'
,p_display_order=>230
,p_column_identifier=>'BH'
,p_column_label=>'PROJECT_FLEX_08'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846999022198709841)
,p_db_column_name=>'PROJECT_FLEX_N01'
,p_display_order=>240
,p_column_identifier=>'BI'
,p_column_label=>'PROJECT_FLEX_N01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_N01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846999419897709842)
,p_db_column_name=>'PROJECT_FLEX_N02'
,p_display_order=>250
,p_column_identifier=>'BJ'
,p_column_label=>'PROJECT_FLEX_N02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_N02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846999900640709842)
,p_db_column_name=>'PROJECT_FLEX_N03'
,p_display_order=>260
,p_column_identifier=>'BK'
,p_column_label=>'PROJECT_FLEX_N03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_N03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847000253346709843)
,p_db_column_name=>'PROJECT_FLEX_N04'
,p_display_order=>270
,p_column_identifier=>'BL'
,p_column_label=>'PROJECT_FLEX_N04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS'' and flexible_column = ''PROJECT_FLEX_N04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847007851989709861)
,p_db_column_name=>'INC'
,p_display_order=>280
,p_column_identifier=>'BM'
,p_column_label=>'Inc'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847009042321709862)
,p_db_column_name=>'CURR_DATE'
,p_display_order=>290
,p_column_identifier=>'BN'
,p_column_label=>'Curr date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847008239236709861)
,p_db_column_name=>'CODE_NAME'
,p_display_order=>300
,p_column_identifier=>'BO'
,p_column_label=>'Code Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID',
'   and build_option_name = ''Project Code Names''',
'   and build_option_status = ''Include'''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847008655823709862)
,p_db_column_name=>'DEAL_TYPE'
,p_display_order=>310
,p_column_identifier=>'BP'
,p_column_label=>'Deal Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(19267269827873371215)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_status',
' where deal_type_id is not null',
'   and exists (select null ',
'                 from eba_proj_deal_types',
'                where is_active_yn = ''Y'')',
'   and exists (select null',
'                 from apex_application_build_options',
'                where application_id = :APP_ID',
'                  and build_option_name = ''Project Deal Types''',
'                  and build_option_status = ''Include'')'))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847009445649709862)
,p_db_column_name=>'ACTION_ITEMS'
,p_display_order=>320
,p_column_identifier=>'BQ'
,p_column_label=>'Action Items'
,p_column_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:RP,49,CIR:IR_PROJECT:\#PROJECT#\'
,p_column_linktext=>'#ACTION_ITEMS#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847009837329709863)
,p_db_column_name=>'MILESTONES'
,p_display_order=>330
,p_column_identifier=>'BR'
,p_column_label=>'Milestones'
,p_column_link=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP,63,CIR:IR_PROJECT:\#PROJECT#\'
,p_column_linktext=>'#MILESTONES#'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847010225249709863)
,p_db_column_name=>'STATUS'
,p_display_order=>340
,p_column_identifier=>'BS'
,p_column_label=>'Project Status'
,p_column_html_expression=>'<span style="#STATUS_COLOR#"> &nbsp;   &nbsp;  </span> &nbsp;  #STATUS#'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9025721939150772116)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847010685854709864)
,p_db_column_name=>'USERS'
,p_display_order=>350
,p_column_identifier=>'BT'
,p_column_label=>'People (Usernames)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846985190998709812)
,p_db_column_name=>'STATUS_COLOR'
,p_display_order=>360
,p_column_identifier=>'BU'
,p_column_label=>'Status color'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846985558496709815)
,p_db_column_name=>'HEADLINE'
,p_display_order=>370
,p_column_identifier=>'BV'
,p_column_label=>'Headline'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_required_patch=>wwv_flow_api.id(2770584289789526386)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846985996684709815)
,p_db_column_name=>'REQUESTING_TEAM'
,p_display_order=>380
,p_column_identifier=>'BW'
,p_column_label=>'Requesting Team(s)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_required_patch=>wwv_flow_api.id(2770586391043537687)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846986320864709816)
,p_db_column_name=>'IMPACTED_ENVIRONMENT'
,p_display_order=>390
,p_column_identifier=>'BX'
,p_column_label=>'Impacted Environment(s)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_required_patch=>wwv_flow_api.id(2770586993360548656)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(846986800971709817)
,p_db_column_name=>'HEADLINE_LAST_UPDATED'
,p_display_order=>400
,p_column_identifier=>'BY'
,p_column_label=>'Headline Last Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
,p_required_patch=>wwv_flow_api.id(2770584289789526386)
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(4521132302482410026)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Category Projects'
,p_report_seq=>10
,p_report_alias=>'6720063'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT:OPEN_CLOSED:CATEGORY:ACTION_ITEMS:MILESTONES:USERS:HEADLINE:REQUESTING_TEAM:IMPACTED_ENVIRONMENT:HEADLINE_LAST_UPDATED::PROJECT_FLEX_N01'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PROJECT'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'UPDATES_1W'
,p_sort_direction_3=>'DESC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(847011455592709867)
,p_report_id=>wwv_flow_api.id(4521132302482410026)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OPEN_CLOSED'
,p_operator=>'='
,p_expr=>'Open'
,p_condition_sql=>'"OPEN_CLOSED" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Open''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(9644389715516141183)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6720071'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT:STATUS:TAGS:MILESTONES:OPEN_MILESTONES:PAST_DUE_MILESTONES:ACTION_ITEMS:OPEN_ACTION_ITEMS:PAST_DUE_ACTION_ITEMS:UPDATED:'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PROJECT'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'UPDATES_1W'
,p_sort_direction_3=>'DESC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19706903971164253211)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Open Projects'
,p_report_seq=>10
,p_report_alias=>'6720075'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROJECT:OPEN_CLOSED:OPEN_PAST_DUE_OPEN_PAST_DUE_UPDATED::ACTION_ITEMS:MILESTONES:USERS:STATUS_COLOR:HEADLINE:REQUESTING_TEAM:IMPACTED_ENVIRONMENT:HEADLINE_LAST_UPDATED:PROJECT_FLEX_N01'
,p_sort_column_1=>'UPDATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'PROJECT'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'UPDATES_1W'
,p_sort_direction_3=>'DESC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(847012674359709872)
,p_report_id=>wwv_flow_api.id(19706903971164253211)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'OPEN_CLOSED'
,p_operator=>'='
,p_expr=>'Open'
,p_condition_sql=>'"OPEN_CLOSED" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Open''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9698229826141408795)
,p_plug_name=>'Links'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1228827961558575087)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case',
'           when eba_proj_fw.is_edit_authorized(p_username   => upper(:APP_USER), p_project_id => p.id ) = ''Y'' then',
'               ''<a href="'' || apex_util.prepare_url(''f?p=''||:APP_ID||'':3:''||:APP_SESSION||'':::3:P3_ID,P3_PROJECT_ID:''||l.id||'',''||p.id||'':'') || ''"><img src="#IMAGE_PREFIX#menu/pencil2_16x16.gif" alt="Edit Link" title="Edit Link"></a>''',
'       else',
'           null',
'       end as edit_link,',
'       l.LINK_TARGET,',
'       nvl(l.LINK_TEXT,l.link_target) link_text,',
'       l.updated,',
'       l.link_comments,',
'       nvl(l.gold_yn, ''N'') as gold_yn,',
'       c.CATEGORY,',
'       p.project,',
'       l.tags,',
'       eba_proj_fw.get_name_from_email_address(l.created_by) as created_by,',
'       l.created,',
'       p.id project_id,',
'       l.id link_id,',
'       p.project_status as project_status,',
'       decode(eba_proj_stat_ui.is_project_open(p.id), 0, ''Closed'', 1, ''Open'') as project_open',
'  from eba_proj_status_links l,',
'       eba_proj_status p,',
'       eba_proj_status_cats c',
' where l.project_id = p.id',
'   and p.cat_id = c.id(+)',
'   and instr(l.tags,nvl(:P219_TAG,'' '')) > 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(9698229926433408795)
,p_name=>'Links'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No tagged Links found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'MIKE'
,p_internal_uid=>9523225224344765339
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(851962461035145938)
,p_db_column_name=>'EDIT_LINK'
,p_display_order=>10
,p_column_identifier=>'L'
,p_column_label=>'Edit'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(851958592581145935)
,p_db_column_name=>'LINK_TARGET'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Link Target'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(851958983107145935)
,p_db_column_name=>'LINK_TEXT'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Link Text'
,p_column_link=>'#LINK_TARGET#'
,p_column_linktext=>'#LINK_TEXT#'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(851959343763145936)
,p_db_column_name=>'UPDATED'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(851959740038145936)
,p_db_column_name=>'LINK_COMMENTS'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Comments'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(851960171036145936)
,p_db_column_name=>'CATEGORY'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'&CAT_TITLE.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
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
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(851960562575145937)
,p_db_column_name=>'PROJECT'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:#PROJECT_ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(851960881539145937)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(851961285365145937)
,p_db_column_name=>'CREATED'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(851961615527145938)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Project ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(851962008567145938)
,p_db_column_name=>'LINK_ID'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Selected Link'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(851962891192145938)
,p_db_column_name=>'GOLD_YN'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Gold'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_api.id(9019252630556871632)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(851963211661145939)
,p_db_column_name=>'PROJECT_STATUS'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Project Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(6172832987382026683)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(851963648286145939)
,p_db_column_name=>'PROJECT_OPEN'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Project Open Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(851958126485145935)
,p_db_column_name=>'TAGS'
,p_display_order=>150
,p_column_identifier=>'P'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(9698230712556408988)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6769593'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EDIT_LINK:LINK_TEXT:CATEGORY:GOLD_YN:PROJECT:PROJECT_STATUS:CREATED_BY:CREATED:'
,p_sort_column_1=>'CREATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'LINK_TEXT'
,p_sort_direction_2=>'ASC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19711871943456686271)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Open Projects'
,p_report_seq=>10
,p_report_alias=>'6769597'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EDIT_LINK:LINK_TEXT:CATEGORY:GOLD_YN:PROJECT:PROJECT_OPEN:PROJECT_STATUS:CREATED_BY:CREATED:'
,p_sort_column_1=>'CREATED'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'LINK_TEXT'
,p_sort_direction_2=>'ASC'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(851964874724145943)
,p_report_id=>wwv_flow_api.id(19711871943456686271)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'PROJECT_OPEN'
,p_operator=>'='
,p_expr=>'Open'
,p_condition_sql=>'"PROJECT_OPEN" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Open''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9701771547426448615)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9738967232579405849)
,p_plug_name=>'Milestones'
,p_region_name=>'msIRR'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1228827961558575087)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'    case when eba_proj_fw.is_edit_authorized( p_username   => upper(:APP_USER), p_project_id => m.project_id ) = ''Y'' then',
'        ''<a href="'' || apex_util.prepare_url(''f?p='' || :APP_ID || '':48:'' || :APP_SESSION || '':::48:P48_ID,P48_PROJECT_ID:'' || m.id || '','' || m.project_id || '':'') || ''"><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pe'
||'ncil" alt="Edit Milestone"></a>''',
'    else',
'        null',
'    end as edit_link,',
'    row_key,',
'    (   select y.project',
'        from eba_proj_status x,',
'            eba_proj_status y',
'        where x.id = m.project_id',
'            and x.parent_project_id = y.id) parent_project,',
'    project_id,',
'    (   select project',
'        from eba_proj_status x',
'        where x.id = m.project_id ) project,',
'    milestone_name,',
'    milestone_name milestone_name_nolink,',
'    milestone_description,',
'    milestone_date,',
'    tags,',
'    milestone_start_date,',
'    case when m.milestone_status = ''Completed'' then',
'        nvl(completed_date, milestone_date)',
'    else',
'        null',
'    end as completed_date,',
'    nvl(original_due_date, milestone_date) as original_due_date,',
'    decode(eba_proj_stat_ui.is_project_open(m.project_id), 0, ''Closed'', 1, ''Open'') as open_closed,',
'    case when milestone_date = nvl(original_due_date, milestone_date) then ''No'' else ''Yes'' end as due_date_changed,',
'    (   select status_short_desc',
'        from eba_proj_status_codes',
'        where id = (select project_status',
'                    from eba_proj_status',
'                    where id = m.project_id)) as status_level,',
'    (   select category',
'        from eba_proj_status_cats',
'        where id = (select cat_id',
'                    from eba_proj_status',
'                    where id = m.project_id)) as category,',
'    milestone_status,',
'    decode(nvl(is_major_yn,''N''),''N'',''No'',''Yes'') major,',
'    created,',
'    created_by,',
'    updated,',
'    updated_by,',
'    case',
'        when (select count(*) from eba_proj_status_ais where project_id = m.project_id and milestone_id = m.id) > 0 then',
'            round(((select count(*) from eba_proj_status_ais where project_id = m.project_id and milestone_id = m.id and action_status = ''Closed'')/(select count(*) from eba_proj_status_ais where project_id = m.project_id and milestone_id = m.id)) * 1'
||'00) || ''%''',
'        else',
'            ''0%''',
'    end as percent_complete,',
'    case',
'        when milestone_status != ''Completed'' and m.milestone_date < current_timestamp then',
'            ''Y''',
'        else',
'            ''N''',
'    end past_due_yn,',
'    nvl(trunc(original_due_date), trunc(milestone_date)) - trunc(completed_date) as original_day_delta,',
'    nvl(trunc(original_due_date), trunc(milestone_date)) - trunc(milestone_date) as original_due_delta,',
'    trunc(milestone_date) - trunc(nvl(completed_date, milestone_date)) as day_delta,',
'    (select listagg(to_char(to_date(substr(new_value,1,11),''DD-MON-YYYY''),''fmDD-MON-YYYY'')||'' ''||',
'        eba_proj_fw.get_name_from_email_address(changed_by),'', '')  within group (order by change_date)',
'     from eba_proj_history',
'     where table_name = ''STATUS_MS''',
'       and column_name = ''MILESTONE_DATE''',
'       and component_id = m.id) as change_history,',
'    (   select code_name',
'        from eba_proj_status x',
'        where x.id = m.project_id ) project_code_name,',
'    (   select deal_type_id',
'        from eba_proj_status x',
'        where x.id = m.project_id ) deal_type,',
'    case when milestone_status = ''Completed'' then',
'        (select nvl(max(change_date), m.milestone_date) from eba_proj_history where table_name = ''STATUS_MS'' and new_value = ''Completed'' and component_id = m.id)',
'    else',
'        null',
'    end as actual_completion_date,',
'    case when owner_role_id is null then',
'        eba_proj_fw.get_name_from_email_address(milestone_owner)',
'    else',
'        nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '')',
'                within group (order by lower(u.username)) owner',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.role_id = m.owner_role_id',
'                and rf.project_id = m.project_id',
'                and u.id = rf.user_id',
'                and r.id = rf.role_id',
'            group by r.name',
'        ), (select ''No ''||r.name||'' defined''',
'            from eba_proj_roles r',
'            where r.id = m.owner_role_id)',
'        )',
'    end as milestone_owner,',
'    decode(eba_proj_stat_ui.is_project_open(m.project_id), 0, ''Closed'', 1, ''Open'') as project_open,',
'    milestone_flex_01,',
'    milestone_flex_02,',
'    milestone_flex_03,',
'    milestone_flex_04,',
'    milestone_flex_05,',
'    milestone_flex_06,',
'    milestone_flex_07,',
'    milestone_flex_08,',
'    milestone_flex_n01,',
'    milestone_flex_n02,',
'    milestone_flex_n03,',
'    milestone_flex_n04,',
'    milestone_flex_d01,',
'    milestone_flex_d02,',
'    milestone_flex_d03,',
'    milestone_flex_d04,',
'    milestone_flex_clob',
'from eba_proj_status_ms m',
'where instr(m.tags,nvl(:P219_TAG,'' '')) > 0',
'           ',
'           ',
'           '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(9738967334624405849)
,p_name=>'Milestones'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No tagged Milestones found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'MIKE'
,p_internal_uid=>9563962632535762393
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847037838790751081)
,p_db_column_name=>'EDIT_LINK'
,p_display_order=>10
,p_column_identifier=>'AN'
,p_column_label=>'<span class="u-VisuallyHidden">Edit</span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847034288163751076)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847034617396751077)
,p_db_column_name=>'ROW_KEY'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Row Key'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847035061147751077)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Selected Project'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847035498947751078)
,p_db_column_name=>'PROJECT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:RP,200:P200_ID:#PROJECT_ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847035872100751079)
,p_db_column_name=>'MILESTONE_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Milestone'
,p_column_link=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.:107:P107_ID,P107_PROJECT_ID,P200_ID:#ID#,#PROJECT_ID#,#PROJECT_ID#'
,p_column_linktext=>'#MILESTONE_NAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847031840629751070)
,p_db_column_name=>'MILESTONE_NAME_NOLINK'
,p_display_order=>70
,p_column_identifier=>'Q'
,p_column_label=>'Milestone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_security_scheme=>'!'||wwv_flow_api.id(7306166303644991446)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847036291046751079)
,p_db_column_name=>'MILESTONE_DESCRIPTION'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847036619982751080)
,p_db_column_name=>'MILESTONE_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Milestone Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847037054443751080)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847037420689751080)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>110
,p_column_identifier=>'M'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847033090918751073)
,p_db_column_name=>'MILESTONE_OWNER'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Milestone Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847033435492751073)
,p_db_column_name=>'MAJOR'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>'Major'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847033814915751074)
,p_db_column_name=>'PARENT_PROJECT'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'Parent Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID',
'   and build_option_name = ''Allow Parent Projects''',
'   and build_option_status = ''Include'''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847032209492751071)
,p_db_column_name=>'STATUS_LEVEL'
,p_display_order=>150
,p_column_identifier=>'R'
,p_column_label=>'Project Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847032618959751072)
,p_db_column_name=>'CATEGORY'
,p_display_order=>160
,p_column_identifier=>'S'
,p_column_label=>'&CAT_TITLE.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847023842184751052)
,p_db_column_name=>'MILESTONE_DATE'
,p_display_order=>170
,p_column_identifier=>'T'
,p_column_label=>'Due Date'
,p_column_html_expression=>'<span style="white-space: pre;">#MILESTONE_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847038287810751082)
,p_db_column_name=>'ORIGINAL_DUE_DATE'
,p_display_order=>180
,p_column_identifier=>'AO'
,p_column_label=>'Original Due Date'
,p_column_html_expression=>'<span style="white-space: pre;">#ORIGINAL_DUE_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847038628555751082)
,p_db_column_name=>'DUE_DATE_CHANGED'
,p_display_order=>190
,p_column_identifier=>'AP'
,p_column_label=>'Due Date Changed'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847024235840751053)
,p_db_column_name=>'CREATED'
,p_display_order=>200
,p_column_identifier=>'U'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847024634901751054)
,p_db_column_name=>'UPDATED'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847025015633751055)
,p_db_column_name=>'MILESTONE_FLEX_01'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'MILESTONE_FLEX_01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847025431902751056)
,p_db_column_name=>'MILESTONE_FLEX_02'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'MILESTONE_FLEX_02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847025832890751057)
,p_db_column_name=>'MILESTONE_FLEX_03'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'MILESTONE_FLEX_03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847026282467751057)
,p_db_column_name=>'MILESTONE_FLEX_04'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'MILESTONE_FLEX_04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847026643758751059)
,p_db_column_name=>'MILESTONE_FLEX_05'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'MILESTONE_FLEX_05'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847027032342751060)
,p_db_column_name=>'MILESTONE_FLEX_06'
,p_display_order=>270
,p_column_identifier=>'AB'
,p_column_label=>'MILESTONE_FLEX_06'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_06'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847027428879751062)
,p_db_column_name=>'MILESTONE_FLEX_07'
,p_display_order=>280
,p_column_identifier=>'AC'
,p_column_label=>'MILESTONE_FLEX_07'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847027828107751063)
,p_db_column_name=>'MILESTONE_FLEX_08'
,p_display_order=>290
,p_column_identifier=>'AD'
,p_column_label=>'MILESTONE_FLEX_08'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847028244218751063)
,p_db_column_name=>'MILESTONE_FLEX_N01'
,p_display_order=>300
,p_column_identifier=>'AE'
,p_column_label=>'Estimated Cost (in Man Hours)'
,p_column_type=>'NUMBER'
,p_format_mask=>'999G999G999G999G999G999G999'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_N01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847028615137751063)
,p_db_column_name=>'MILESTONE_FLEX_N02'
,p_display_order=>310
,p_column_identifier=>'AF'
,p_column_label=>'MILESTONE_FLEX_N02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_N02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847029021386751064)
,p_db_column_name=>'MILESTONE_FLEX_N03'
,p_display_order=>320
,p_column_identifier=>'AG'
,p_column_label=>'MILESTONE_FLEX_N03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_N03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847029422604751065)
,p_db_column_name=>'MILESTONE_FLEX_N04'
,p_display_order=>330
,p_column_identifier=>'AH'
,p_column_label=>'MILESTONE_FLEX_N04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_N04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847029857017751065)
,p_db_column_name=>'MILESTONE_FLEX_D01'
,p_display_order=>340
,p_column_identifier=>'AI'
,p_column_label=>'MILESTONE_FLEX_D01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_D01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847030299678751066)
,p_db_column_name=>'MILESTONE_FLEX_D02'
,p_display_order=>350
,p_column_identifier=>'AJ'
,p_column_label=>'MILESTONE_FLEX_D02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_D02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847030608955751067)
,p_db_column_name=>'MILESTONE_FLEX_D03'
,p_display_order=>360
,p_column_identifier=>'AK'
,p_column_label=>'MILESTONE_FLEX_D03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_D03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847031065126751068)
,p_db_column_name=>'MILESTONE_FLEX_D04'
,p_display_order=>370
,p_column_identifier=>'AL'
,p_column_label=>'MILESTONE_FLEX_D04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_D04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847031442387751069)
,p_db_column_name=>'MILESTONE_FLEX_CLOB'
,p_display_order=>380
,p_column_identifier=>'AM'
,p_column_label=>'MILESTONE_FLEX_CLOB'
,p_display_in_default_rpt=>'N'
,p_column_type=>'CLOB'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_MS'' and flexible_column = ''MILESTONE_FLEX_CLOB'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847039033911751082)
,p_db_column_name=>'PROJECT_OPEN'
,p_display_order=>390
,p_column_identifier=>'AQ'
,p_column_label=>'Project Open Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847039471417751083)
,p_db_column_name=>'MILESTONE_START_DATE'
,p_display_order=>400
,p_column_identifier=>'AR'
,p_column_label=>'Start Date'
,p_column_html_expression=>'<span style="white-space: pre;">#MILESTONE_START_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847039835275751092)
,p_db_column_name=>'COMPLETED_DATE'
,p_display_order=>410
,p_column_identifier=>'AS'
,p_column_label=>'Completion Date'
,p_column_html_expression=>'<span style="white-space: pre;">#COMPLETED_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847040220898751093)
,p_db_column_name=>'PERCENT_COMPLETE'
,p_display_order=>420
,p_column_identifier=>'AT'
,p_column_label=>'Percent Complete'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847040647086751094)
,p_db_column_name=>'PAST_DUE_YN'
,p_display_order=>430
,p_column_identifier=>'AU'
,p_column_label=>'Past Due'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9019252630556871632)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847041058727751094)
,p_db_column_name=>'DAY_DELTA'
,p_display_order=>440
,p_column_identifier=>'AV'
,p_column_label=>'Due Date to Completion Delta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847041410790751095)
,p_db_column_name=>'ORIGINAL_DAY_DELTA'
,p_display_order=>450
,p_column_identifier=>'AW'
,p_column_label=>'Original Due to Completion Delta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847041881013751095)
,p_db_column_name=>'ORIGINAL_DUE_DELTA'
,p_display_order=>460
,p_column_identifier=>'AX'
,p_column_label=>'Original Due to Due Date Delta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847042254535751096)
,p_db_column_name=>'CHANGE_HISTORY'
,p_display_order=>470
,p_column_identifier=>'AY'
,p_column_label=>'Change History'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847042682881751096)
,p_db_column_name=>'PROJECT_CODE_NAME'
,p_display_order=>480
,p_column_identifier=>'AZ'
,p_column_label=>'Project Code Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID',
'   and build_option_name = ''Project Code Names''',
'   and build_option_status = ''Include'''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847043009860751097)
,p_db_column_name=>'DEAL_TYPE'
,p_display_order=>490
,p_column_identifier=>'BA'
,p_column_label=>'Deal Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(19267269827873371215)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_status',
' where deal_type_id is not null',
'   and exists (select null ',
'                 from eba_proj_deal_types',
'                where is_active_yn = ''Y'')',
'   and exists (select null',
'                 from apex_application_build_options',
'                where application_id = :APP_ID',
'                  and build_option_name = ''Project Deal Types''',
'                  and build_option_status = ''Include'')'))
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
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847043467522751097)
,p_db_column_name=>'ACTUAL_COMPLETION_DATE'
,p_display_order=>500
,p_column_identifier=>'BB'
,p_column_label=>'Marked as Completed On'
,p_column_html_expression=>'<span style="white-space: pre;">#ACTUAL_COMPLETION_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847043884879751098)
,p_db_column_name=>'OPEN_CLOSED'
,p_display_order=>510
,p_column_identifier=>'BC'
,p_column_label=>'Project Open Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847023484732751050)
,p_db_column_name=>'TAGS'
,p_display_order=>520
,p_column_identifier=>'BD'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(9738968843606406209)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6720395'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'PROJECT:MILESTONE_NAME:MILESTONE_STATUS:MAJOR:TAGS:MILESTONE_DATE:COMPLETED_DATE:DAY_DELTA:PAST_DUE_YN:PERCENT_COMPLETE:MILESTONE_OWNER:'
,p_sort_column_1=>'MILESTONE_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'CREATED'
,p_sort_direction_2=>'DESC'
,p_break_on=>'PROJECT:0:0:0:0:0'
,p_break_enabled_on=>'PROJECT:0:0:0:0:0'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(847274220706101000)
,p_report_id=>wwv_flow_api.id(9738968843606406209)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'PROJECT_OPEN'
,p_operator=>'='
,p_expr=>'Open'
,p_condition_sql=>'"PROJECT_OPEN" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Open''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(19712821951907604038)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Open Projects'
,p_report_seq=>10
,p_report_alias=>'6720403'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'EDIT_LINK:MILESTONE_NAME:PROJECT:PROJECT_OPEN:ORIGINAL_DUE_DATE:MILESTONE_DATE:DUE_DATE_CHANGED:MILESTONE_OWNER:MILESTONE_STATUS:MAJOR:STATUS_LEVEL:CATEGORY:UPDATED::PERCENT_COMPLETE:PAST_DUE_YN:DAY_DELTA:ORIGINAL_DAY_DELTA:ORIGINAL_DUE_DELTA:CHANGE_'
||'HISTORY:PROJECT_CODE_NAME:DEAL_TYPE:ACTUAL_COMPLETION_DATE:OPEN_CLOSED'
,p_sort_column_1=>'MILESTONE_DATE'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'CREATED'
,p_sort_direction_2=>'DESC'
,p_break_on=>'PROJECT:0:0:0:0:0'
,p_break_enabled_on=>'PROJECT:0:0:0:0:0'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(847045475341751100)
,p_report_id=>wwv_flow_api.id(19712821951907604038)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'MILESTONE_STATUS'
,p_operator=>'='
,p_expr=>'Open'
,p_condition_sql=>'"MILESTONE_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Open''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(847045841812751100)
,p_report_id=>wwv_flow_api.id(19712821951907604038)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'PROJECT_OPEN'
,p_operator=>'='
,p_expr=>'Open'
,p_condition_sql=>'"PROJECT_OPEN" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Open''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9739144575350450066)
,p_plug_name=>'Action Items'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1228827961558575087)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    case when eba_proj_fw.is_edit_authorized( p_username   => upper(:APP_USER), p_project_id => a.project_id ) = ''Y'' then',
'        ''<a href="'' || apex_util.prepare_url(''f?p='' || :APP_ID || '':73:'' || :APP_SESSION || '':::73:P73_ID,P73_PROJECT_ID:'' || a.id || '','' || a.project_id || '':'') || ''" class="AIEditLink"><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" '
||'class="apex-edit-pencil" alt="Edit Action Item"></a>''',
'    else',
'        null',
'    end as edit_link,',
'    case when a.milestone_id is not null then',
'        (select milestone_name from eba_proj_status_ms where id = a.milestone_id)',
'    else',
'        null',
'    end as milestone,',
'    case when a.link_url is not null and a.link_text is not null and exists (select null',
'                 from apex_application_build_options',
'                where application_id = :APP_ID',
'                  and build_option_name = ''Action Item Links''',
'                  and build_option_status = ''Include'') then',
'        ''<small><a href="'' || apex_escape.html(a.link_url) || ''" target="_blank">''',
'            || apex_escape.html(a.link_text) || ''</a></small>''',
'    end as link_text,',
'    dbms_lob.substr(action,200) action,',
'    id,',
'    milestone_id,',
'    tags,',
'    nvl(type_id,-1) as ai_type,',
'    due_date,',
'    completed_date,',
'    resolution,',
'    nvl(original_due_date, due_date) as original_due_date,',
'    case when due_date = nvl(original_due_date, due_date) then ''No'' else ''Yes'' end as due_date_changed,',
'    (   select y.project',
'        from eba_proj_status x,',
'            eba_proj_status y',
'        where x.id = a.project_id',
'            and x.parent_project_id = y.id) parent_project, ',
'    (   select project',
'        from eba_proj_status x',
'        where x.id = a.project_id ) project,',
'    (   select code_name',
'        from eba_proj_status x',
'        where x.id = a.project_id ) project_code_name,',
'    (   select deal_type_id',
'        from eba_proj_status x',
'        where x.id = a.project_id ) deal_type,',
'    case when a.milestone_id is not null then',
'        (select milestone_start_date from eba_proj_status_ms where id = a.milestone_id)',
'    else',
'        a.created',
'    end as start_date,',
'    case when a.milestone_id is not null then',
'        (select eba_proj_fw.get_name_from_email_address(milestone_owner) from eba_proj_status_ms where id = a.milestone_id and owner_role_id is null)',
'    else',
'        nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '')',
'                within group (order by lower(u.username)) owner',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r,',
'                eba_proj_status_ms m',
'            where m.id = a.milestone_id',
'              and m.owner_role_id is not null',
'              and rf.role_id = m.owner_role_id',
'              and rf.project_id = a.project_id',
'              and u.id = rf.user_id',
'              and r.id = rf.role_id',
'            group by r.name',
'        ), (select ''No ''||r.name||'' defined''',
'            from eba_proj_roles r,',
'                 eba_proj_status_ms ms',
'            where ms.id = a.milestone_id',
'              and r.id = ms.owner_role_id)',
'        )',
'    end as milestone_owner,',
'    decode(eba_proj_stat_ui.is_project_open(a.project_id), 0, ''Closed'', 1, ''Open'') as open_closed,',
'    (select listagg(to_char(to_date(substr(new_value,1,11),''DD-MON-YYYY''),''fmDD-MON-YYYY'')||'' ''||',
'        eba_proj_fw.get_name_from_email_address(changed_by),'', '')  within group (order by change_date)',
'     from eba_proj_history',
'     where table_name = ''STATUS_AIS''',
'       and column_name = ''DUE_DATE''',
'       and component_id = a.id) as change_history,',
'    case when a.milestone_id is not null then',
'        (select milestone_status from eba_proj_status_ms where id = a.milestone_id)',
'    else',
'        null',
'    end as milestone_status,',
'    case when action_status = ''Closed'' then',
'        (select nvl( max(change_date), a.due_date ) from eba_proj_history where table_name = ''STATUS_AI'' and new_value = ''Closed'' and component_id = a.id)',
'    else',
'        null',
'    end as actual_completion_date,',
'    project_id,',
'    nvl(trunc(original_due_date), trunc(due_date)) - trunc(completed_date) as original_day_delta,',
'    nvl(trunc(original_due_date), trunc(due_date)) - trunc(due_date) as original_due_delta,',
'    trunc(due_date) - trunc(completed_date) as day_delta,',
'    (select project_status from eba_proj_status where id = a.project_id) project_status,',
'    (   select category',
'        from eba_proj_status_cats',
'        where id = (select cat_id',
'                    from eba_proj_status',
'                    where id = a.project_id) ) as category,',
'    action_status,',
'    decode(action_status,''Open'',decode(greatest(due_date,systimestamp),due_date,''No'',''Yes''),''No'') past_due,',
'    case when owner_role_id is null then',
'        eba_proj_fw.get_name_from_email_address(a.action_owner_01)',
'        || decode(a.action_owner_02,null,null,'', ''|| eba_proj_fw.get_name_from_email_address(a.action_owner_02))',
'        || decode(a.action_owner_03,null,null,'', ''|| eba_proj_fw.get_name_from_email_address(a.action_owner_03))',
'        || decode(a.action_owner_04,null,null,'', ''|| eba_proj_fw.get_name_from_email_address(a.action_owner_04))',
'    else',
'        nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '')',
'                within group (order by lower(u.username)) owner',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.role_id = a.owner_role_id',
'                and rf.project_id = a.project_id',
'                and u.id = rf.user_id',
'                and r.id = rf.role_id',
'            group by r.name',
'        ), (select ''No ''||r.name||'' defined''',
'            from eba_proj_roles r',
'            where r.id = a.owner_role_id)',
'        )',
'    end as owner,',
'    created,',
'    created_by,',
'    updated as updated_hidden,',
'    updated,',
'    updated_by,',
'    eba_proj_flex_fw.fetch_v(''ACTION_FLEX_01'',a.action_flex_01) action_flex_01,',
'    eba_proj_flex_fw.fetch_v(''ACTION_FLEX_02'',a.action_flex_02) action_flex_02,',
'    eba_proj_flex_fw.fetch_v(''ACTION_FLEX_03'',a.action_flex_03) action_flex_03,',
'    eba_proj_flex_fw.fetch_v(''ACTION_FLEX_04'',a.action_flex_04) action_flex_04,',
'    eba_proj_flex_fw.fetch_v(''ACTION_FLEX_05'',a.action_flex_05) action_flex_05,',
'    eba_proj_flex_fw.fetch_v(''ACTION_FLEX_06'',a.action_flex_06) action_flex_06,',
'    eba_proj_flex_fw.fetch_v(''ACTION_FLEX_07'',a.action_flex_07) action_flex_07,',
'    eba_proj_flex_fw.fetch_v(''ACTION_FLEX_08'',a.action_flex_08) action_flex_08,',
'    eba_proj_flex_fw.fetch_n(''ACTION_FLEX_N01'',a.action_flex_n01) action_flex_n01,',
'    eba_proj_flex_fw.fetch_n(''ACTION_FLEX_N02'',a.action_flex_n02) action_flex_n02,',
'    eba_proj_flex_fw.fetch_n(''ACTION_FLEX_N03'',a.action_flex_n03) action_flex_n03,',
'    eba_proj_flex_fw.fetch_n(''ACTION_FLEX_N04'',a.action_flex_n04) action_flex_n04,',
'    action_flex_d01,',
'    action_flex_d02,',
'    action_flex_d03,',
'    action_flex_d04,',
'    action_flex_clob',
'from eba_proj_status_ais a',
'where instr(tags,nvl(:P219_TAG,'' '')) > 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(9739144686732450066)
,p_name=>'Action Items'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No tagged Action Items found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'MIKE'
,p_internal_uid=>9564139984643806610
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847217147998839350)
,p_db_column_name=>'EDIT_LINK'
,p_display_order=>10
,p_column_identifier=>'AV'
,p_column_label=>'<span class="u-VisuallyHidden">Edit</span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847214321784839344)
,p_db_column_name=>'ACTION'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Action Item'
,p_column_link=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.:78,200:P78_ACTION_ITEM_ID,P200_ID:#ID#,#PROJECT_ID#'
,p_column_linktext=>'#ACTION#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847214794973839345)
,p_db_column_name=>'ID'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847215201045839346)
,p_db_column_name=>'PROJECT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Project'
,p_column_link=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_ID:#PROJECT_ID#'
,p_column_linktext=>'#PROJECT#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847215537645839346)
,p_db_column_name=>'ACTION_STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Action Item Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847215949252839348)
,p_db_column_name=>'OWNER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Action Item Owner(s)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847216378498839348)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847216797256839349)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847213574672839343)
,p_db_column_name=>'PARENT_PROJECT'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'Parent Project'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID',
'   and build_option_name = ''Allow Parent Projects''',
'   and build_option_status = ''Include'''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847213953506839344)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>100
,p_column_identifier=>'L'
,p_column_label=>'Selected Project'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847213183646839343)
,p_db_column_name=>'CATEGORY'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'&CAT_TITLE.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847209920558839340)
,p_db_column_name=>'DUE_DATE'
,p_display_order=>130
,p_column_identifier=>'O'
,p_column_label=>'Due Date'
,p_column_html_expression=>'<span style="white-space: pre;">#DUE_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847217571808839350)
,p_db_column_name=>'ORIGINAL_DUE_DATE'
,p_display_order=>140
,p_column_identifier=>'AW'
,p_column_label=>'Original Due Date'
,p_column_html_expression=>'<span style="white-space: pre;">#ORIGINAL_DUE_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847217986744839352)
,p_db_column_name=>'DUE_DATE_CHANGED'
,p_display_order=>150
,p_column_identifier=>'AX'
,p_column_label=>'Due Date Changed'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847210362789839341)
,p_db_column_name=>'CREATED'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847210727721839341)
,p_db_column_name=>'UPDATED'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'Since'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847211153864839341)
,p_db_column_name=>'ACTION_FLEX_D01'
,p_display_order=>180
,p_column_identifier=>'AD'
,p_column_label=>'ACTION_FLEX_D01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_D01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847211552131839342)
,p_db_column_name=>'ACTION_FLEX_D02'
,p_display_order=>190
,p_column_identifier=>'AE'
,p_column_label=>'ACTION_FLEX_D02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_D02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847211971083839342)
,p_db_column_name=>'ACTION_FLEX_D03'
,p_display_order=>200
,p_column_identifier=>'AF'
,p_column_label=>'ACTION_FLEX_D03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_D03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847212395796839342)
,p_db_column_name=>'ACTION_FLEX_D04'
,p_display_order=>210
,p_column_identifier=>'AG'
,p_column_label=>'ACTION_FLEX_D04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_D04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847212737431839343)
,p_db_column_name=>'ACTION_FLEX_CLOB'
,p_display_order=>220
,p_column_identifier=>'AH'
,p_column_label=>'ACTION_FLEX_CLOB'
,p_display_in_default_rpt=>'N'
,p_column_type=>'CLOB'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_CLOB'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847205235323839335)
,p_db_column_name=>'ACTION_FLEX_01'
,p_display_order=>230
,p_column_identifier=>'AI'
,p_column_label=>'ACTION_FLEX_01'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847205696477839336)
,p_db_column_name=>'ACTION_FLEX_02'
,p_display_order=>240
,p_column_identifier=>'AJ'
,p_column_label=>'ACTION_FLEX_02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847206061713839337)
,p_db_column_name=>'ACTION_FLEX_03'
,p_display_order=>250
,p_column_identifier=>'AK'
,p_column_label=>'ACTION_FLEX_03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847206307320839337)
,p_db_column_name=>'ACTION_FLEX_04'
,p_display_order=>260
,p_column_identifier=>'AL'
,p_column_label=>'ACTION_FLEX_04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847206711403839337)
,p_db_column_name=>'ACTION_FLEX_05'
,p_display_order=>270
,p_column_identifier=>'AM'
,p_column_label=>'ACTION_FLEX_05'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_05'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847207107451839338)
,p_db_column_name=>'ACTION_FLEX_06'
,p_display_order=>280
,p_column_identifier=>'AN'
,p_column_label=>'ACTION_FLEX_06'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_06'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847207579982839338)
,p_db_column_name=>'ACTION_FLEX_07'
,p_display_order=>290
,p_column_identifier=>'AO'
,p_column_label=>'ACTION_FLEX_07'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_07'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847207938700839339)
,p_db_column_name=>'ACTION_FLEX_08'
,p_display_order=>300
,p_column_identifier=>'AP'
,p_column_label=>'ACTION_FLEX_08'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_08'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847208398862839339)
,p_db_column_name=>'ACTION_FLEX_N01'
,p_display_order=>310
,p_column_identifier=>'AQ'
,p_column_label=>'Estimated Cost (in Man Hours)'
,p_column_type=>'STRING'
,p_format_mask=>'999G999G999G999G999G999G999'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_N01'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847208733769839339)
,p_db_column_name=>'ACTION_FLEX_N02'
,p_display_order=>320
,p_column_identifier=>'AR'
,p_column_label=>'ACTION_FLEX_N02'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_N02'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847209181693839340)
,p_db_column_name=>'ACTION_FLEX_N03'
,p_display_order=>330
,p_column_identifier=>'AS'
,p_column_label=>'ACTION_FLEX_N03'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_N03'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847209567549839340)
,p_db_column_name=>'ACTION_FLEX_N04'
,p_display_order=>340
,p_column_identifier=>'AT'
,p_column_label=>'ACTION_FLEX_N04'
,p_display_in_default_rpt=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>'select null from eba_proj_flex_registry where flexible_table = ''EBA_PROJ_STATUS_AIS'' and flexible_column = ''ACTION_FLEX_N04'' and active_yn = ''Y'' and assigned_yn = ''Y'''
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847204870155839335)
,p_db_column_name=>'PAST_DUE'
,p_display_order=>350
,p_column_identifier=>'AU'
,p_column_label=>'Past Due'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847218309605839353)
,p_db_column_name=>'RESOLUTION'
,p_display_order=>360
,p_column_identifier=>'AY'
,p_column_label=>'Resolution'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.get_build_option_status (',
'    p_application_id => :APP_ID,',
'    p_build_option_name => ''Mandatory Action Item Resolution''',
') = ''INCLUDE'''))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847219109188839356)
,p_db_column_name=>'AI_TYPE'
,p_display_order=>370
,p_column_identifier=>'AZ'
,p_column_label=>'Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(19025074438882511826)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847219535676839358)
,p_db_column_name=>'UPDATED_HIDDEN'
,p_display_order=>380
,p_column_identifier=>'BA'
,p_column_label=>'Updated hidden'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847218782693839355)
,p_db_column_name=>'LINK_TEXT'
,p_display_order=>390
,p_column_identifier=>'BB'
,p_column_label=>'Link'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847219992502839359)
,p_db_column_name=>'COMPLETED_DATE'
,p_display_order=>400
,p_column_identifier=>'BC'
,p_column_label=>'Completion Date'
,p_column_html_expression=>'<span style="white-space: pre;">#COMPLETED_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847220352145839360)
,p_db_column_name=>'MILESTONE'
,p_display_order=>410
,p_column_identifier=>'BE'
,p_column_label=>'Milestone'
,p_column_link=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.:RP,107:P107_ID,P107_PROJECT_ID,P200_ID:#MILESTONE_ID#,#PROJECT_ID#,#PROJECT_ID#'
,p_column_linktext=>'#MILESTONE#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847220739385839360)
,p_db_column_name=>'MILESTONE_ID'
,p_display_order=>420
,p_column_identifier=>'BF'
,p_column_label=>'Milestone id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847221184601839361)
,p_db_column_name=>'DAY_DELTA'
,p_display_order=>440
,p_column_identifier=>'BI'
,p_column_label=>'Due Date to Completion Delta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847221974213839363)
,p_db_column_name=>'START_DATE'
,p_display_order=>460
,p_column_identifier=>'BK'
,p_column_label=>'Start Date'
,p_column_html_expression=>'<span style="white-space: pre;">#START_DATE#</span>'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847222391357839363)
,p_db_column_name=>'ACTUAL_COMPLETION_DATE'
,p_display_order=>470
,p_column_identifier=>'BL'
,p_column_label=>'Marked as Completed On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'fmDD-MON-YYYY'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847222761164839364)
,p_db_column_name=>'ORIGINAL_DAY_DELTA'
,p_display_order=>480
,p_column_identifier=>'BM'
,p_column_label=>'Original Due to Completion Delta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
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
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847223155353839365)
,p_db_column_name=>'ORIGINAL_DUE_DELTA'
,p_display_order=>490
,p_column_identifier=>'BN'
,p_column_label=>'Original Due to Due Date Delta'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847223574851839366)
,p_db_column_name=>'MILESTONE_OWNER'
,p_display_order=>500
,p_column_identifier=>'BO'
,p_column_label=>'Milestone Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847223984844839367)
,p_db_column_name=>'CHANGE_HISTORY'
,p_display_order=>510
,p_column_identifier=>'BP'
,p_column_label=>'Change History'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847224310288839367)
,p_db_column_name=>'MILESTONE_STATUS'
,p_display_order=>520
,p_column_identifier=>'BQ'
,p_column_label=>'Milestone Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847221597651839362)
,p_db_column_name=>'PROJECT_CODE_NAME'
,p_display_order=>530
,p_column_identifier=>'BJ'
,p_column_label=>'Project Code Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from apex_application_build_options',
' where application_id = :APP_ID',
'   and build_option_name = ''Project Code Names''',
'   and build_option_status = ''Include'''))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847224797096839368)
,p_db_column_name=>'DEAL_TYPE'
,p_display_order=>540
,p_column_identifier=>'BR'
,p_column_label=>'Deal Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(19267269827873371215)
,p_rpt_show_filter_lov=>'1'
,p_display_condition_type=>'EXISTS'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_proj_status',
' where deal_type_id is not null',
'   and exists (select null ',
'                 from eba_proj_deal_types',
'                where is_active_yn = ''Y'')',
'   and exists (select null',
'                 from apex_application_build_options',
'                where application_id = :APP_ID',
'                  and build_option_name = ''Project Deal Types''',
'                  and build_option_status = ''Include'')'))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847225175946839369)
,p_db_column_name=>'PROJECT_STATUS'
,p_display_order=>550
,p_column_identifier=>'BS'
,p_column_label=>'Project Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9025721939150772116)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847225523713839369)
,p_db_column_name=>'OPEN_CLOSED'
,p_display_order=>560
,p_column_identifier=>'BT'
,p_column_label=>'Project Open Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847204467871839333)
,p_db_column_name=>'TAGS'
,p_display_order=>570
,p_column_identifier=>'BU'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(9739145903614450291)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6722212'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT_LINK:PROJECT:CATEGORY:MILESTONE:ACTION:ACTION_STATUS:AI_TYPE:TAGS:DUE_DATE:COMPLETED_DATE:DAY_DELTA:PAST_DUE:OWNER:'
,p_sort_column_1=>'DUE_DATE'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20773899123016374431)
,p_plug_name=>'Issues'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_api.id(1228827961558575087)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select i.id,',
'       p.cat_id as category,',
'       p.project_status,',
'       case when p.project_status not in (select id from eba_proj_status_codes where is_closed_status = ''Y'') then',
'           ''Open''',
'       else',
'           ''Closed''',
'       end project_open_status,',
'       i.tags,',
'       i.project_id,',
'       i.project_id as prj_id,',
'       i.cat_id as issue_category,',
'       i.issue,',
'       i.resolution,',
'       i.issue_detail,',
'       case when eba_proj_fw.is_edit_authorized(',
'                     p_username   => upper(:APP_USER),',
'                     p_project_id => i.project_id ) = ''Y'' then',
'           ''<a href="'' || apex_util.prepare_url(''f?p='' || :APP_ID || '':24:'' || :APP_SESSION || '':::24:P24_ID,P24_PROJECT_ID:'' || i.id || '','' || i.project_id) || ''"><img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil'
||'" alt="Edit Issue" /></a>''',
'       else',
'           null',
'       end as edit,',
'       case when i.owner_role_id is null then',
'           eba_proj_fw.get_name_from_email_address(i.issue_owner)',
'       else',
'           nvl((select r.name||'': ''||listagg(decode(u.first_name,null,eba_proj_fw.get_name_from_email_address(u.username),decode(u.last_name, null, eba_proj_fw.get_name_from_email_address(u.username), initcap(u.first_name || '' '' || u.last_name))),'', '
||''')',
'                   within group (order by lower(u.username)) owner',
'               from eba_proj_user_ref rf,',
'                    eba_proj_status_users u,',
'                    eba_proj_roles r',
'              where rf.role_id = i.owner_role_id',
'                and rf.project_id = i.project_id',
'                and u.id = rf.user_id',
'                and r.id = rf.role_id',
'              group by r.name',
'            ), (select ''No ''||r.name||'' defined''',
'                  from eba_proj_roles r',
'                 where r.id = i.owner_role_id)',
'            )',
'       end as issue_owner,',
'       i.issue_level,',
'       i.is_open,',
'       i.ref_num,',
'       i.resolved_on,',
'       i.created,',
'       lower(i.created_by) created_by,',
'       i.updated,',
'       lower(i.updated_by) updated_by',
'  from eba_proj_status_issues i, eba_proj_status p',
' where i.project_id = p.id',
'   and instr(i.tags,nvl(:P219_TAG,'' '')) > 0'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P219_TAG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(20773899207414374431)
,p_name=>'Project Issues Report'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No tagged Issues found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'ALLAN'
,p_internal_uid=>20598894505325730975
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758818256779519158)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'L'
,p_column_label=>'Edit'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(847232363149878075)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758817304648519148)
,p_db_column_name=>'CATEGORY'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Category'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9022120840149879876)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758817417508519149)
,p_db_column_name=>'PROJECT_STATUS'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Project Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9025721939150772116)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758817446602519150)
,p_db_column_name=>'PROJECT_OPEN_STATUS'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Project Open Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758817553375519151)
,p_db_column_name=>'TAGS'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Tags'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758817717222519152)
,p_db_column_name=>'PROJECT_ID'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Project'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(11677310552046892880)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758817770440519153)
,p_db_column_name=>'PRJ_ID'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Prj Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758817846629519154)
,p_db_column_name=>'ISSUE_CATEGORY'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Issue Category'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758817949060519155)
,p_db_column_name=>'ISSUE'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>'Issue'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758818125174519156)
,p_db_column_name=>'RESOLUTION'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Resolution'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758818222815519157)
,p_db_column_name=>'ISSUE_DETAIL'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>'Issue Detail'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758818432410519159)
,p_db_column_name=>'ISSUE_OWNER'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Issue Owner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758818503701519160)
,p_db_column_name=>'ISSUE_LEVEL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Issue Level'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(228697740287420773)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758818541205519161)
,p_db_column_name=>'IS_OPEN'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Is Open'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(9019252630556871632)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758818640260519162)
,p_db_column_name=>'REF_NUM'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Ref Num'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758818801822519163)
,p_db_column_name=>'RESOLVED_ON'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Resolved On'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758818853970519164)
,p_db_column_name=>'CREATED'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758818938516519165)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758867497212551516)
,p_db_column_name=>'UPDATED'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(758867628895551517)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(20773827393275177907)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6722328'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:PROJECT_ID:TAGS:CATEGORY:PROJECT_STATUS:PROJECT_OPEN_STATUS:ISSUE:RESOLUTION:ISSUE_DETAIL:ISSUE_OWNER:ISSUE_LEVEL:IS_OPEN:REF_NUM:RESOLVED_ON:CREATED_BY:CREATED:UPDATED_BY:UPDATED:'
,p_sort_column_1=>'ISSUE_LEVEL'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'UPDATED'
,p_sort_direction_2=>'DESC'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(795211991101825684)
,p_name=>'P219_TAG_DISPLAY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(820205053284460395)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(820205134970460396)
,p_name=>'P219_TAG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(820205053284460395)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(795212041222825685)
,p_computation_sequence=>10
,p_computation_item=>'P219_TAG_DISPLAY'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'upper(:P219_TAG)'
);
wwv_flow_api.component_end;
end;
/
