prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>104
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(41820330279533220)
,p_name=>'Document'
,p_alias=>'DOCUMENT'
,p_step_title=>'Document'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_comment=>'https://fuzziebrain.com/content/id/1722/'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211029075728'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21435149452197741)
,p_plug_name=>'File Dropzone'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(41730750648533116)
,p_plug_display_sequence=>-100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'PLUGIN_DE.DANIELH.DROPZONE2'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'TABLE'
,p_attribute_02=>'WB_DOCUMENT'
,p_attribute_03=>'FILE_UPLOADED_FILENAME'
,p_attribute_04=>'FILE_UPLOADED_MIMETYPE'
,p_attribute_05=>'FILE_UPLOADED'
,p_attribute_06=>'FILE_UPLOADED_LASTUPD'
,p_attribute_07=>'STYLE1'
,p_attribute_08=>'700px'
,p_attribute_09=>'400px'
,p_attribute_10=>'50'
,p_attribute_11=>'10'
,p_attribute_15=>'CHUNKED'
,p_attribute_16=>'true'
,p_attribute_17=>'true'
,p_attribute_18=>'true'
,p_attribute_19=>'true'
,p_attribute_20=>'false'
,p_attribute_21=>'DOCUMENT_TYPE_ID'
,p_attribute_22=>'false'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41945950356533872)
,p_plug_name=>'Document'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41728811817533115)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'WB_DOCUMENT'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Document'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(41946030383533872)
,p_name=>'Document'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:11:&APP_SESSION.:::11:P11_DOCUMENT_ID:\#DOCUMENT_ID#\'
,p_detail_link_text=>'<span class="fa fa-edit" aria-hidden="true"></span>'
,p_owner=>'MISO'
,p_internal_uid=>41946030383533872
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41946408207533874)
,p_db_column_name=>'DOCUMENT_TYPE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Document Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(41952637742533884)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41946811628533875)
,p_db_column_name=>'DOCUMENT_STATUS_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Document Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_named_lov=>wwv_flow_api.id(41952024130533882)
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41947281291533875)
,p_db_column_name=>'ROW_VERSION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Row Version'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41947637060533875)
,p_db_column_name=>'DOCUMENT_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Document ID'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41948083089533875)
,p_db_column_name=>'DOCUMENT_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Document Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41948426694533876)
,p_db_column_name=>'DOCUEMNT_DESC'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Docuemnt Desc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41948858024533876)
,p_db_column_name=>'FILE_UPLOADED_FILENAME'
,p_display_order=>8
,p_column_identifier=>'G'
,p_column_label=>'File Uploaded Filename'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41949240911533876)
,p_db_column_name=>'FILE_UPLOADED_MIMETYPE'
,p_display_order=>9
,p_column_identifier=>'H'
,p_column_label=>'File Uploaded Mimetype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41949678135533877)
,p_db_column_name=>'FILE_UPLOADED_CHARSET'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'File Uploaded Charset'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41950061585533877)
,p_db_column_name=>'FILE_UPLOADED_LASTUPD'
,p_display_order=>11
,p_column_identifier=>'J'
,p_column_label=>'File Uploaded Lastupd'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41950457053533877)
,p_db_column_name=>'CREATED'
,p_display_order=>12
,p_column_identifier=>'K'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41950843366533878)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>13
,p_column_identifier=>'L'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41951283378533878)
,p_db_column_name=>'UPDATED'
,p_display_order=>14
,p_column_identifier=>'M'
,p_column_label=>'Updated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'SINCE'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41951697448533878)
,p_db_column_name=>'UPDATED_BY'
,p_display_order=>15
,p_column_identifier=>'N'
,p_column_label=>'Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(42565228012536393)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'425653'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCUMENT_TYPE_ID:DOCUMENT_STATUS_ID:DOCUMENT_NAME:DOCUEMNT_DESC'
,p_sort_column_1=>'DOCUMENT_TYPE_ID'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41954024529533886)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41740182461533121)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(41673262749533053)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(41797207542533180)
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(44730662798212409)
,p_name=>'PDF VIEWER'
,p_template=>wwv_flow_api.id(41730750648533116)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id',
'    , filename',
'    , null Click_to_view_pdf',
'from apex_application_temp_files',
'where application_id = :APP_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(41754480133533134)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44730751307212410)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44730837354212411)
,p_query_column_id=>2
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>20
,p_column_heading=>'Filename'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(44731059933212413)
,p_query_column_id=>3
,p_column_alias=>'CLICK_TO_VIEW_PDF'
,p_column_display_sequence=>30
,p_column_heading=>'Click To View Pdf'
,p_use_as_row_header=>'N'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button type="button" class="btn-preview-pdf" data-id="#ID#">Preview</button>',
''))
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44731148781212414)
,p_plug_name=>'Preview'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(41730750648533116)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'<canvas id="preview-pane"></canvas>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44730923833212412)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(21435149452197741)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(41795109968533175)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41953266904533885)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(41945950356533872)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(41795929600533178)
,p_button_image_alt=>'Reset'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RR::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41955836047533887)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(41945950356533872)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(41795848395533178)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21435271772197742)
,p_name=>'P10_NEW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21435149452197741)
,p_prompt=>'New'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(41793314368533173)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41954935569533887)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(41945950356533872)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41955439673533887)
,p_event_id=>wwv_flow_api.id(41954935569533887)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(41945950356533872)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(44731242701212415)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.btn-preview-pdf'
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(44731313224212416)
,p_event_id=>wwv_flow_api.id(44731242701212415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#preview-pane'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var fileId = $(this.triggeringElement).data(''id'');',
'var docUrl = ''f?p=&APP_ID.:0:&APP_SESSION.:APPLICATION_PROCESS=DOWNLOADPDF:::FILE_ID:'' + fileId;',
'var previewPane = this.affectedElements[0];',
'',
'// from PDF.js examples',
'pdfjsLib.getDocument(docUrl).then(function(pdf) {',
'    var pageNumber = 1;',
'    pdf.getPage(pageNumber).then(function(page) {',
'        console.log(''Page loaded'');',
'',
'        var scale = 1.5;',
'        var viewport = page.getViewport(scale);',
'',
'        // Prepare canvas using PDF page dimensions',
'        var canvas = previewPane;',
'        var context = canvas.getContext(''2d'');',
'        canvas.height = viewport.height;',
'        canvas.width = viewport.width;',
'',
'        // Render PDF page into canvas context',
'        var renderContext = {',
'            canvasContext: context,',
'            viewport: viewport',
'        };',
'        var renderTask = page.render(renderContext);',
'        renderTask.then(function () {',
'            console.log(''Page rendered'');',
'        });',
'    })',
'}, function(reason) {',
'    console.error(reason);',
'});'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44731473253212417)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DOWNLOADPDF'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for file in (select *',
'                from apex_application_temp_files',
'                where id = :FILE_ID) loop',
'        --',
'        sys.htp.init;',
'        sys.owa_util.mime_header( file.mime_type, FALSE );',
'        sys.htp.p(''Content-length: '' || sys.dbms_lob.getlength( file.blob_content));',
'        sys.htp.p(''Content-Disposition: attachment; filename="'' || file.filename || ''"'' );',
'        sys.htp.p(''Cache-Control: max-age=3600'');',
'        sys.owa_util.http_header_close;',
'        sys.wpg_docload.download_file( file.blob_content );',
'',
'        apex_application.stop_apex_engine;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
