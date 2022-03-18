prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>111
,p_default_id_offset=>77418401682728923
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(88335304271078742)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Home'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#js/progressbar.min.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var valuePCT ='''', valueRows='''', valueTime='''', valuePaused='''';',
'function now()',
'    {',
'        return typeof window.performance !== ''undefined''',
'                ? window.performance.now()',
'                : 0;',
'    }',
'var bar = new ProgressBar.SemiCircle(progress_container, {',
'  strokeWidth: 6,',
'  color: ''#FFEA82'',',
'  trailColor: ''#eee'',',
'  trailWidth: 1,',
'  easing: ''easeInOut'',',
'  duration: 1400,',
'  svgStyle: null,',
'  text: {',
'    value:'''',',
'    alignToBottom: true',
'  },',
'  from: {color: ''#e4e575''},',
'  to: {color: ''##6aad42''},',
'  // Set default step function for all animate calls',
'  step: (state, bar) => {',
'    bar.path.setAttribute(''stroke'', state.color);',
'    valuePCT = Math.round(bar.value() * 100);',
'    if (valuePCT === 0) {',
'      bar.setText('''');',
'    } else {',
'        valuePCT = ''<span class="progressBarPCT u-color-35-text">''+ valuePCT + ''%'' + ''</span>'';',
'        if ( csv2table.status().insertedRowCount() > 0 ) {',
'            valueRows =  ''<span class=" progressBarPCT u-color-33-text">'' + csv2table.status().insertedRowCount()  + '' rows </span> '';',
'            ',
'        }',
'',
'        //if ( csv2table.status().endTime() > csv2table.status().startTime() ) {',
'          if ( csv2table.status().startTime()) {   ',
'            let totalTime = 0;',
'            //totalTime = Math.round(csv2table.status().endTime() - csv2table.status().startTime()) || '' unknown'';',
'            totalTime = Math.round(now() - csv2table.status().startTime()) || '' unknown'';',
'            valueTime =  ''<span class=" progressBarPCT u-color-31-text">'' + totalTime + '' ms'' + ''</span> '';',
'',
'        }',
'',
'        bar.setText(valuePCT + ''<br>'' + valueRows +''<br>'' + valueTime);',
'    }',
'',
'    bar.text.style.color = state.color;',
'',
'  }',
'});',
'bar.text.style.fontFamily = ''"Raleway", Helvetica, sans-serif'';',
'bar.text.style.fontSize = ''1.0rem'';',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#progress_container {',
'  margin: 70px;',
'  width: 200px;',
'  height: 100px;',
'}',
'',
'',
'.a-IRR-header {',
'    background-color: #fbf9f8;',
'}    ',
'',
'span.t-Button.t-Button--icon.t-Button--noUI.t-Button--header.t-Button--navBar.t-Button--headerUser{',
'    visibility: hidden;',
'}',
'',
'.upload-paused {',
'  animation: blinker 1s linear infinite;',
'}',
'',
'@keyframes blinker {',
'  70% {',
'    opacity: 0;',
'  }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GOPALMALLYA'
,p_last_upd_yyyymmddhh24miss=>'20210209215105'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94752777570338968)
,p_plug_name=>'FAQ'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(88250109972078651)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'    <html>',
'    <head>',
'        <meta charset="UTF-8">',
'        <title></title>',
'        <style>',
'</style>',
'        ',
'        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/Microsoft/vscode/extensions/markdown-language-features/media/markdown.css">',
'<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/Microsoft/vscode/extensions/markdown-language-features/media/highlight.css">',
'<style>',
'            body {',
'                font-family: -apple-system, BlinkMacSystemFont, ''Segoe WPC'', ''Segoe UI'', system-ui, ''Ubuntu'', ''Droid Sans'', sans-serif;',
'                font-size: 14px;',
'                line-height: 1.6;',
'            }',
'        </style>',
'        <style>',
'.task-list-item { list-style-type: none; } .task-list-item-checkbox { margin-left: -20px; vertical-align: middle; }',
'</style>',
'        ',
'        ',
'        ',
'    </head>',
'    <body class="vscode-body vscode-light">',
'        <p><strong>Why use csv2table?</strong></p>',
'<p>Uploading large csv datasets (100mb-1gb+) from APEX application can take hours to upload, parse and insert into table, csv2table plugin solves this problem, makes it a lot (10x) faster.</p>',
'<p>Note - I have uploaded 1.5GB of csv file without exhausting browser memory under 11 minutes in free oracle cloud VM environment, which comes to ~ 2mb/sec. I believe in production environment, once can upload 1GB csv file under 1 minute by tuning c'
||'hunkSize and Threads. Please read FAQ for more information.</p>',
'<p><strong>can I use csv2table with oracle 11g and APEX 5.x ?</strong></p>',
'<p>Yes, the plugin can be configured to use any plsql data parser like json_table, APEX_DATA_PARSER, xmltable and custom insert implementation, making it possible to be used in any database and APEX version.</p>',
'<p>Version 1.0 was developed on 11.2.0.0/APEX 5.1.4 and tested on database 19.0 and APEX version 20.2.</p>',
'<p><strong>can I insert records into other schema than APEX parsing schema?</strong></p>',
'<p>Yes, plugin code will execute insert against csv2table (table) using dynamic sql. You will have to create table synonym and give insert grants to APEX parsing schema.',
'You can also choose custom insert implementation to insert in any schema or table per your environment and requirements</p>',
'<p><strong>Why is csv2table plugin fast?</strong></p>',
'<p>csv2table parses records from local files in Javascript memory in chunks (JSON) using fast csv parser (PapaParse), keeping memory usage low and inserting parsed chunks using json_table function, which is very also very fast.</p>',
'<p><strong>How do I know, when the file is fully uploaded and all records are inserted into csv2table?</strong></p>',
'<p>Complete callback function is only called, when csv2table is done processing the files. You can the check the result object for &quot;complete&quot; status, and take further actions</p>',
'<pre><code class="language-js"><div><span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">completeFn</span>(<span class="hljs-params">results</span>)</span>{',
'    <span class="hljs-built_in">console</span>.log(<span class="hljs-string">&quot;I am error complete callback function&quot;</span>, results);',
'',
'    <span class="hljs-keyword">if</span> ( results.status.state == <span class="hljs-string">&quot;complete&quot;</span> ) {',
'        <span class="hljs-built_in">console</span>.log(<span class="hljs-string">&#x27;Upload completed&#x27;</span>);',
'    }',
'   ',
'}',
'',
'</div></code></pre>',
'<p><strong>How do I catch any exceptions?</strong></p>',
'<p>Error callback function will be called for any parsing and insert errors. You can check the result object for &quot;error&quot; status and take further actions.</p>',
'<pre><code class="language-js"><div><span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">errorFn</span>(<span class="hljs-params">results</span>)</span>{',
'    <span class="hljs-built_in">console</span>.log(<span class="hljs-string">&quot;I am error callback function&quot;</span>, results);',
'',
'    <span class="hljs-keyword">if</span> ( results.status.state == <span class="hljs-string">&quot;error&quot;</span> ) {',
'        <span class="hljs-built_in">console</span>.log(<span class="hljs-string">&#x27;error message&#x27;</span>, results.error.message);',
'    }',
'   ',
'}',
'',
'</div></code></pre>',
'<p><strong>How can I track upload progress?</strong></p>',
'<p>After every chunk is inserted, chunk insert callback function is called. The result argument contains the progress value between 0..1</p>',
'<pre><code class="language-js"><div><span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">chunkInsertedFn</span>(<span class="hljs-params">results</span>)</span>{',
'    <span class="hljs-built_in">console</span>.log(<span class="hljs-string">&quot;I am chunk Inserted callback function&quot;</span>, results);',
'',
'    <span class="hljs-built_in">console</span>.log(results.progressSoFar());',
'   ',
'}',
'',
'</div></code></pre>',
'<p><strong>Does the plugin support multiple files?</strong></p>',
'<p>No. Multiple file feature is work under progress for future version.</p>',
'<p><strong>can I uplooad tab delimited or color delimited file?</strong></p>',
'<p>Yes, delimiters are auto detected by PapaParse csv parser.</p>',
'<p>you can also set the delimiter in the Javascript Initiliazation option.</p>',
'<p>Below Javascript initialization function, sets the plugin options during run time</p>',
'<pre><code class="language-js"><div><span class="hljs-function"><span class="hljs-keyword">function</span> (<span class="hljs-params">options</span>) </span>{',
'    options.delimiter = <span class="hljs-string">&quot;:&quot;</span> ;<span class="hljs-comment">//colon delimiter</span>',
'    options.newline = <span class="hljs-string">&quot;\n&quot;</span>  ; <span class="hljs-comment">//newline separating records</span>',
'    options.quoteChar = <span class="hljs-string">&quot;&#x27;&quot;</span>;  <span class="hljs-comment">//char used for quoting columns</span>',
'    options.escapeChar = <span class="hljs-string">&quot;\\&quot;</span>;  <span class="hljs-comment">//char used for escaping quoteChar</span>',
'    options.chunkSize = <span class="hljs-string">&quot;1000000&quot;</span>;',
'    options.threads = <span class="hljs-number">2</span>;',
'    options.fileType = <span class="hljs-string">&quot;remote&quot;</span>;',
'    options.skipFirstNRows = <span class="hljs-string">&quot;1&quot;</span>',
'}',
'',
'</div></code></pre>',
'<p>For more details please refer to PapaPare documentation on csv parser <a href="https://www.papaparse.com/docs#config"> configuration </a></p>',
'<p><strong>How can I map file columns to csv2table columns?</strong></p>',
'<p>Column n is mapped to <a href="http://csvtable.cn">csvtable.cn</a> , for e.g 1st column of records will be inserted into csvtable.c1</p>',
'<p><strong>How do I validate column format (e.g. Date) and any business validation on columns or set of rows?</strong></p>',
'<p>After upload is completed, all records are available in csv2table, having same upload Identifier in csv2table.upload_ID, which can be used to query records and perform any column or row based validations.</p>',
'<pre><code class="language-js"><div><span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">completeFn</span>(<span class="hljs-params">results</span>)</span>{',
'    <span class="hljs-built_in">console</span>.log(<span class="hljs-string">&quot;I am error complete callback function&quot;</span>, results);',
'',
'    <span class="hljs-keyword">if</span> ( results.status.state == <span class="hljs-string">&quot;complete&quot;</span> ) {',
'        <span class="hljs-built_in">console</span>.log(<span class="hljs-string">&#x27;Upload completed upload_ID: &#x27;</span>, results.uploadID());',
'',
'        <span class="hljs-comment">//use results.uploadID() to get the upload_ID</span>',
'        <span class="hljs-comment">//perform call ajax or submit page to execute</span>',
'        <span class="hljs-comment">// validations using upload_ID</span>',
'    }',
'   ',
'}',
'',
'</div></code></pre>',
'<p>Note : Upload_ID is also available in error and chunk inserted callback function</p>',
'<p><strong>can I pause the file parsing during upload?</strong></p>',
'<p>Yes, you can only pause the parser for stream based upload, i.e when stream option is set to ''Y''</p>',
'<p>In chunk inserted callback, you can set the pause and resume.</p>',
'<pre><code class="language-js"><div>',
'<span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">chunkInsertedFn</span>(<span class="hljs-params">results</span>)</span>{',
'    <span class="hljs-built_in">console</span>.log(<span class="hljs-string">&quot;I am chunk Inserted callback function&quot;</span>, results);',
'',
'    <span class="hljs-keyword">if</span> ( csv2table ) { <span class="hljs-comment">//csv2table is global object available during upload process and can be access in callbacks</span>',
'        csv2table.pause();',
'    }',
'',
'    <span class="hljs-comment">//do something like column format validation or some backend processing when upload is paused</span>',
'',
'    <span class="hljs-keyword">if</span> ( csv2table ) {',
'        csv2table.resume()',
'    }',
'   ',
'}',
'',
'</div></code></pre>',
'<p><strong>How can I identify the row containing column header in csv2table after upload is completed?</strong></p>',
'<p>If inserts are done parallelly, by setting threads options &gt; 1, then so rows are not inserted in order and you will have to query the csv2table with name of header column to identify the header record</p>',
'<pre><code class="language-sql"><div><span class="hljs-keyword">select</span> * <span class="hljs-keyword">from</span> csv2table <span class="hljs-keyword">where</span> c1=<span class="hljs-string">&#x27;name of first column header&#x27;</span>',
'',
'</div></code></pre>',
'<p><strong>are blank lines skipped?</strong></p>',
'<p>Yes</p>',
'<p><strong>can my file contain record where some columns are quoted and some are not?</strong></p>',
'<p>Yes and No.</p>',
'<p>for e.g below is csv file</p>',
'<p>&quot;Hello&quot;,World</p>',
'<p>Welcome,&quot;Back&quot;</p>',
'<p>&quot;Thank&quot;,&quot;You&quot;</p>',
'<p>No, Problem</p>',
'<p>?**</p>',
'<p>No, but I have found that, PapaParse has bug in parsing mixed quoted and unquoted columns in a record, when stream is set to Y.</p>',
'<p>Yes, You can use it without issues, by setting chunksize greater than filesize.',
'for e.g if your file size is within 5mb, then set the chunkSize to 10mb for files , which may have mixed quoted and unquoted columns.</p>',
'<p><strong>does csv2table clean itself by deleting old records periodically?</strong></p>',
'<p>No, you can write a archiver and schedule it for cleanups.</p>',
'<p><strong>How do I validate upload file has expected number of columns?</strong></p>',
'<p>In chunk Inserted callback function, you can get the number of columns, using the result object. Below example checks , prints number of column for first chunk.</p>',
'<pre><code class="language-js"><div><span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">chunkInsertedFn</span>(<span class="hljs-params">results</span>)</span>{',
'    <span class="hljs-built_in">console</span>.log(<span class="hljs-string">&quot;I am chunk Inserted callback function&quot;</span>, results);',
'',
'    <span class="hljs-comment">//check the number of columns in first chunk</span>',
'    <span class="hljs-keyword">if</span> ( results.chunked == <span class="hljs-number">1</span> ) {',
'        <span class="hljs-built_in">console</span>.log(results.parseResults.data[<span class="hljs-number">0</span>].length);',
'',
'        <span class="hljs-comment">//here you can also check if the column header (if any) passes expected name and position.</span>',
'    }',
'    ',
'}',
'',
'</div></code></pre>',
'<p>parseResults object can also be used to validate column format and notify the user.</p>',
'<p><strong>Why write custom insert implemetation and why bind out variable containing number of inserted records?</strong></p>',
'<ul>',
'<li>You may want to perform business validations before the chunk is inserted</li>',
'<li>Or insert chunks into custom table</li>',
'<li>or insert into external table to query, save, process and archive the file</li>',
'<li>or you found a faster way to parse the chunk in plsql</li>',
'<li>The out bind variable containing record inserted count, is used to track the progress by updating the result object (insertedRowCount())</li>',
'</ul>',
'<p><strong>can I transform the record before inserting into csv2table?</strong></p>',
'<p>You can use the transform option, by setting the options in Javascript Initialization code. Please check PapaParse documentation for more csv parser configuration.</p>',
'<p><strong>can I map the csv file column header name with csv2table columns?</strong></p>',
'<p>No. csv2table will parse and insert into table using position of column in the uploaded file. 1st column goes into csv2table.c1, 2nd into csvtable.c2',
'If csv file contains header it will also be inserted. You can configure skip option and set to 1, to skip the first header record.</p>',
'<p>Other main reason, csv2table is position based, than header-column map based, is because, the size of parsed record in JSON increases with header-column mapping. Every column (value) is mapped to header (key) for every record. This results in size'
||' increase and slower performance, than sending just array of column value, which is second fastest way. First is binary.</p>',
'<p>I will add header-column mapping in future release, to support this usecase. For now the workaround will be to insert the column header (skip=0) and write a mapper in dynamic plsql using the header name and csv2table.c1...cn</p>',
'',
'    </body>',
'    </html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94752836635338969)
,p_plug_name=>'Region Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(88221787270078627)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(103567241517922730)
,p_plug_name=>'Demo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(88221787270078627)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94753023377338971)
,p_plug_name=>'Inserted Records'
,p_region_name=>'results'
,p_parent_plug_id=>wwv_flow_api.id(103567241517922730)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:margin-top-lg'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(88250109972078651)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from csv2table where upload_id = :P9_UPLOAD_ID;'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Inserted Records'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_plug_header=>'<span class="u-italics" style="font-size:0.9em">Few columns are shown for demo. Actions->Columns- to add more columns.</span>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(94753128991338972)
,p_max_row_count=>'10000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'GOPALMALLYA'
,p_internal_uid=>17334727308610049
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94753220627338973)
,p_db_column_name=>'UPLOAD_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Upload ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_help_text=>'<p>This identifier can be used to identify, all records inserted after uploading a file.<p>'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103556665492922624)
,p_db_column_name=>'APEX_SESSION_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Apex Session Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103556711934922625)
,p_db_column_name=>'APEX_USER'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Apex User'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103556881399922626)
,p_db_column_name=>'INSERT_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Upload Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103556949534922627)
,p_db_column_name=>'FILENAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103557005455922628)
,p_db_column_name=>'C1'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'C1'
,p_column_type=>'STRING'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>csv2table contains 100 columns c1,c2,c3...c100 of datatype varchar2(255)</p>',
'<p>csv2table also contains audit columns filename,username, user session ID and insert date</p>'))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103557181605922629)
,p_db_column_name=>'C2'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C2'
,p_column_type=>'STRING'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>csv2table contains 100 columns c1,c2,c3...c100 of datatype varchar2(255)</p>',
'<p>csv2table also contains audit columns filename,username, user session ID and insert date</p>'))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103557216029922630)
,p_db_column_name=>'C3'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'C3'
,p_column_type=>'STRING'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>csv2table contains 100 columns c1,c2,c3...c100 of datatype varchar2(255)</p>',
'<p>csv2table also contains audit columns filename,username, user session ID and insert date</p>'))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103557397410922631)
,p_db_column_name=>'C4'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'C4'
,p_column_type=>'STRING'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>csv2table contains 100 columns c1,c2,c3...c100 of datatype varchar2(255)</p>',
'<p>csv2table also contains audit columns filename,username, user session ID and insert date</p>'))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103557473979922632)
,p_db_column_name=>'C5'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'C5'
,p_column_type=>'STRING'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>csv2table contains 100 columns c1,c2,c3...c100 of datatype varchar2(255)</p>',
'<p>csv2table also contains audit columns filename,username, user session ID and insert date</p>'))
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103557556259922633)
,p_db_column_name=>'C6'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'C6'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103557611863922634)
,p_db_column_name=>'C7'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'C7'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103557763352922635)
,p_db_column_name=>'C8'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'C8'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103557866740922636)
,p_db_column_name=>'C9'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'C9'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103557974421922637)
,p_db_column_name=>'C10'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'C10'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103558019511922638)
,p_db_column_name=>'C11'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'C11'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103558187830922639)
,p_db_column_name=>'C12'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'C12'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103558227942922640)
,p_db_column_name=>'C13'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'C13'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103558323255922641)
,p_db_column_name=>'C14'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'C14'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103558437208922642)
,p_db_column_name=>'C15'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'C15'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103558566441922643)
,p_db_column_name=>'C16'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'C16'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103558679264922644)
,p_db_column_name=>'C17'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'C17'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103558789190922645)
,p_db_column_name=>'C18'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'C18'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103558832715922646)
,p_db_column_name=>'C19'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'C19'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103558996153922647)
,p_db_column_name=>'C20'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'C20'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103559083733922648)
,p_db_column_name=>'C21'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'C21'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103559126684922649)
,p_db_column_name=>'C22'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'C22'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103559289900922650)
,p_db_column_name=>'C23'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'C23'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103559329329922651)
,p_db_column_name=>'C24'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'C24'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103559418307922652)
,p_db_column_name=>'C25'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'C25'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103559545311922653)
,p_db_column_name=>'C26'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'C26'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103559620164922654)
,p_db_column_name=>'C27'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'C27'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103559735136922655)
,p_db_column_name=>'C28'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'C28'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103559899911922656)
,p_db_column_name=>'C29'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'C29'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103559961524922657)
,p_db_column_name=>'C30'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'C30'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103560091018922658)
,p_db_column_name=>'C31'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'C31'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103560155103922659)
,p_db_column_name=>'C32'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'C32'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103560257917922660)
,p_db_column_name=>'C33'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'C33'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103560337159922661)
,p_db_column_name=>'C34'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'C34'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103560496473922662)
,p_db_column_name=>'C35'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'C35'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103560526021922663)
,p_db_column_name=>'C36'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'C36'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103560665927922664)
,p_db_column_name=>'C37'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'C37'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103560706692922665)
,p_db_column_name=>'C38'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'C38'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103560867245922666)
,p_db_column_name=>'C39'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'C39'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103560988231922667)
,p_db_column_name=>'C40'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'C40'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103561042608922668)
,p_db_column_name=>'C41'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'C41'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103561168653922669)
,p_db_column_name=>'C42'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'C42'
,p_column_type=>'STRING'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>111
,p_default_id_offset=>77418401682728923
,p_default_owner=>'MISO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103561228688922670)
,p_db_column_name=>'C43'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'C43'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103561393405922671)
,p_db_column_name=>'C44'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'C44'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103561487515922672)
,p_db_column_name=>'C45'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'C45'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103561501821922673)
,p_db_column_name=>'C46'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'C46'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103561614590922724)
,p_db_column_name=>'C47'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'C47'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103561763335922725)
,p_db_column_name=>'C48'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'C48'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103561889293922726)
,p_db_column_name=>'C49'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'C49'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103561963000922727)
,p_db_column_name=>'C50'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'C50'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103562101642922728)
,p_db_column_name=>'C51'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'C51'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103562105310922729)
,p_db_column_name=>'C52'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'C52'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103562294166922730)
,p_db_column_name=>'C53'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'C53'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103562349331922731)
,p_db_column_name=>'C54'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'C54'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103562491672922732)
,p_db_column_name=>'C55'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'C55'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103562594290922733)
,p_db_column_name=>'C56'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'C56'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103562620667922734)
,p_db_column_name=>'C57'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'C57'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103562786615922735)
,p_db_column_name=>'C58'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'C58'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103562850394922736)
,p_db_column_name=>'C59'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'C59'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103562997521922737)
,p_db_column_name=>'C60'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'C60'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103563009676922738)
,p_db_column_name=>'C61'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'C61'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103563102240922739)
,p_db_column_name=>'C62'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'C62'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103563240246922740)
,p_db_column_name=>'C63'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'C63'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103563311230922741)
,p_db_column_name=>'C64'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'C64'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103563455200922742)
,p_db_column_name=>'C65'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'C65'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103563535756922743)
,p_db_column_name=>'C66'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'C66'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103563660890922744)
,p_db_column_name=>'C67'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'C67'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103563763197922745)
,p_db_column_name=>'C68'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'C68'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103563879562922746)
,p_db_column_name=>'C69'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'C69'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103563969660922747)
,p_db_column_name=>'C70'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'C70'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103564062154922748)
,p_db_column_name=>'C71'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'C71'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103564152611922749)
,p_db_column_name=>'C72'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'C72'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103564217738922750)
,p_db_column_name=>'C73'
,p_display_order=>780
,p_column_identifier=>'BZ'
,p_column_label=>'C73'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103564362291922751)
,p_db_column_name=>'C74'
,p_display_order=>790
,p_column_identifier=>'CA'
,p_column_label=>'C74'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103564477099922752)
,p_db_column_name=>'C75'
,p_display_order=>800
,p_column_identifier=>'CB'
,p_column_label=>'C75'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103564523379922753)
,p_db_column_name=>'C76'
,p_display_order=>810
,p_column_identifier=>'CC'
,p_column_label=>'C76'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103564616853922754)
,p_db_column_name=>'C77'
,p_display_order=>820
,p_column_identifier=>'CD'
,p_column_label=>'C77'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103564722384922755)
,p_db_column_name=>'C78'
,p_display_order=>830
,p_column_identifier=>'CE'
,p_column_label=>'C78'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103564859430922756)
,p_db_column_name=>'C79'
,p_display_order=>840
,p_column_identifier=>'CF'
,p_column_label=>'C79'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103564996222922757)
,p_db_column_name=>'C80'
,p_display_order=>850
,p_column_identifier=>'CG'
,p_column_label=>'C80'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103565014251922758)
,p_db_column_name=>'C81'
,p_display_order=>860
,p_column_identifier=>'CH'
,p_column_label=>'C81'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103565201085922759)
,p_db_column_name=>'C82'
,p_display_order=>870
,p_column_identifier=>'CI'
,p_column_label=>'C82'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103565293461922760)
,p_db_column_name=>'C83'
,p_display_order=>880
,p_column_identifier=>'CJ'
,p_column_label=>'C83'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103565373592922761)
,p_db_column_name=>'C84'
,p_display_order=>890
,p_column_identifier=>'CK'
,p_column_label=>'C84'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103565493015922762)
,p_db_column_name=>'C85'
,p_display_order=>900
,p_column_identifier=>'CL'
,p_column_label=>'C85'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103565595990922763)
,p_db_column_name=>'C86'
,p_display_order=>910
,p_column_identifier=>'CM'
,p_column_label=>'C86'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103565645902922764)
,p_db_column_name=>'C87'
,p_display_order=>920
,p_column_identifier=>'CN'
,p_column_label=>'C87'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103565736764922765)
,p_db_column_name=>'C88'
,p_display_order=>930
,p_column_identifier=>'CO'
,p_column_label=>'C88'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103565814332922766)
,p_db_column_name=>'C89'
,p_display_order=>940
,p_column_identifier=>'CP'
,p_column_label=>'C89'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103565931051922767)
,p_db_column_name=>'C90'
,p_display_order=>950
,p_column_identifier=>'CQ'
,p_column_label=>'C90'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103566053314922768)
,p_db_column_name=>'C91'
,p_display_order=>960
,p_column_identifier=>'CR'
,p_column_label=>'C91'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103566136108922769)
,p_db_column_name=>'C92'
,p_display_order=>970
,p_column_identifier=>'CS'
,p_column_label=>'C92'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103566232680922770)
,p_db_column_name=>'C93'
,p_display_order=>980
,p_column_identifier=>'CT'
,p_column_label=>'C93'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103566380936922771)
,p_db_column_name=>'C94'
,p_display_order=>990
,p_column_identifier=>'CU'
,p_column_label=>'C94'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103566485621922772)
,p_db_column_name=>'C95'
,p_display_order=>1000
,p_column_identifier=>'CV'
,p_column_label=>'C95'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103566580542922773)
,p_db_column_name=>'C96'
,p_display_order=>1010
,p_column_identifier=>'CW'
,p_column_label=>'C96'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103566635936922724)
,p_db_column_name=>'C97'
,p_display_order=>1020
,p_column_identifier=>'CX'
,p_column_label=>'C97'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103566796229922725)
,p_db_column_name=>'C98'
,p_display_order=>1030
,p_column_identifier=>'CY'
,p_column_label=>'C98'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103566845927922726)
,p_db_column_name=>'C99'
,p_display_order=>1040
,p_column_identifier=>'CZ'
,p_column_label=>'C99'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103566947875922727)
,p_db_column_name=>'C100'
,p_display_order=>1050
,p_column_identifier=>'DA'
,p_column_label=>'C100'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(103604262811925203)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'261859'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_view_mode=>'REPORT'
,p_report_columns=>'UPLOAD_ID:C1:C2:C3:C4:C5:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(120259077623767332)
,p_plug_name=>'Upload'
,p_region_name=>'upload'
,p_parent_plug_id=>wwv_flow_api.id(103567241517922730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(88221787270078627)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>9
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(120259682648767338)
,p_plug_name=>'Progress'
,p_parent_plug_id=>wwv_flow_api.id(103567241517922730)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(88224912263078629)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id=progress_container><div id=current_status></div></div>',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(103568309274922741)
,p_plug_name=>'Docs'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(88250109972078651)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'    <html>',
'    <head>',
'        <meta charset="UTF-8">',
'        <title>csv2table</title>',
'        <style>',
'</style>',
'        ',
'        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/Microsoft/vscode/extensions/markdown-language-features/media/markdown.css">',
'<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/Microsoft/vscode/extensions/markdown-language-features/media/highlight.css">',
'<style>',
'            body {',
'                font-family: -apple-system, BlinkMacSystemFont, ''Segoe WPC'', ''Segoe UI'', system-ui, ''Ubuntu'', ''Droid Sans'', sans-serif;',
'                font-size: 14px;',
'                line-height: 1.6;',
'            }',
'        </style>',
'        <style>',
'.task-list-item { list-style-type: none; } .task-list-item-checkbox { margin-left: -20px; vertical-align: middle; }',
'</style>',
'        ',
'        ',
'        ',
'    </head>',
'    <body class="vscode-body vscode-light">',
'        <h1 id="csv2table">csv2table</h1>',
'<p>csv2table is Oracle APEX, dynamic action plugin, built to upload large csv datasets (100mb-1gb+) into table, by streaming the local or remote csv file, keeping the browser memory low and using parallel sessions for fast and efficient uploads.</p>',
'<p><strong>Why use csv2table?</strong></p>',
'<p>Uploading large csv datasets (100mb-1gb+) from APEX application can take hours to upload, parse and insert into table, csv2table plugin solves this problem, makes it a lot (10x) faster.</p>',
'<p>Note - I have uploaded 1.5GB of csv file without exhausting browser memory under 11 minutes in free oracle cloud VM environment, which comes to ~ 2mb/sec. I believe in production environment, one can upload 1GB csv file under 1 minute by tuning ch'
||'unkSize and Threads. Please read FAQ for more information.</p>',
'<h1 id="demo">Demo</h1>',
'<ul>',
'<li>Users can upload local csv file and remote csv using url, monitor the progress and review the inserted records</li>',
'<li>Options such as streaming, chunkSize, Threads and PLSQL data parsers, realtime progress monitoring, highlight plugin features</li>',
'<li><a href="https://gopalmallya.com/ords/r/gopalmallya/csv2table"> demo </a></li>',
'</ul>',
'<h1 id="environment">Environment</h1>',
'<ul>',
'<li>Tested using Nightwatch/Firefox/Chrome/Oracle DB 19c/APEX 20.2 and Oracle DB 11.2.0.0/APEX 5.1.4</li>',
'<li>The plugin PLSQL code, uses dynamic sql and no version dependent features, to support this functionality on oracle database 11.x and later and APEX 5.x and later</li>',
'</ul>',
'<h1 id="install">Install</h1>',
'<ul>',
'<li>',
'<p>Download create_csv2table_seq.sql and csv2table_plugin.sql from <a href="https://github.com/gopalmallya/csv2table/tree/main/install"> install directory </a></p>',
'</li>',
'<li>',
unistr('<p>Execute <strong>create_csv2table_seq.sql</strong> to create \201Ccsv2table\201D table and sequence \201Ccsv2table_seq\201D, in APEX parsing schema.</p>'),
'<pre><code class="language-s"><code><div>    @create_csv2table_seq.sql',
'</div></code></code></pre>',
'<p>Note - You can execute this script in another schema of your choice, but please create synonyms for table and sequence.</p>',
'</li>',
'<li>',
'<p>Import <strong>csv2table_plugin.sql</strong>, to install the plugin</p>',
'<blockquote>',
unistr('<p>Login to your APEX workspace \2192 App Builder \2192 Import \2192 Choose \201Ccsvtable_plugin.sql\201D \2192 File type \2192 Plug-in \2192 Next \2192 Install Plugin</p>'),
'</blockquote>',
'</li>',
'</ul>',
'<h1 id="configure">Configure</h1>',
'<p>Below is an example plugin configuration to upload local file selected in file browse page item P1_FILE, when user clicks upload button</p>',
'<ul>',
'<li>',
'<p>Create a FILE Browse page item say P1_FILE, on page 1.</p>',
'</li>',
'<li>',
'<p>Create Button say P1_UPLOAD_BTN</p>',
'</li>',
'<li>',
'<p>Create dynamic action on P1_UPLOAD_BTN</p>',
'<ul>',
unistr('<li>Right click on button \2192 <em>Create Dynamic Action</em> \2192 <em>True Action</em> \2192 Identification Section , select <strong>csv2table [Plug-in]</strong> in <em>Action</em> Drop down</li>'),
unistr('<li><em>File Type</em> \2192 Local File</li>'),
unistr('<li><em>File ID</em> \2192 P1_FILE</li>'),
'<li><em>Insert Type</em>',
'<ul>',
'<li>JSON_TABLE (database version 12c or later)</li>',
'<li>APEX_DATA_PARSER ( APEX version 19.1 or later)</li>',
'<li>XMLTABLE ( for database version &lt; 12c and APEX version &lt; 19.1 )</li>',
'</ul>',
'</li>',
'</ul>',
'</li>',
'<li>',
unistr('<p>For more information on configuration options, select the Option \2192 click Help</p>'),
'</li>',
'</ul>',
'<h2 id="testing">Testing</h2>',
'<ul>',
'<li>Run the page 1</li>',
'<li>Choose any csv text file in File browse item</li>',
'<li>Click Upload button</li>',
'<li>Open browser console log, to view the logs, find and copy upload_id</li>',
unistr('<li>SQL Workshp \2192 SQL Commands<pre><code><code><div>select * from csv2table where upload_id = :upload_id;'),
'</div></code></code></pre>',
'</li>',
'</ul>',
'<h1 id="options">Options</h1>',
'<p>You can change the behaviour of csv2table plugin by configuring options, in dynamic action properties, or  in Advanced -&gt; Javascript initialization Code</p>',
'<table>',
'<thead>',
'<tr>',
'<th></th>',
'<th></th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td><strong>File Type</strong></td>',
'<td><pre>Select <strong>Local File</strong>, for  uploading csv file using File Browse page item. <br>Select <strong>Remote URL</strong> , for uploading csv file using csv download url.</pre></td>',
'</tr>',
'<tr>',
'<td><strong>File ID</strong></td>',
'<td><pre>To upload local file(s) using File browse page item or html input type=file, enter the <strong>ID</strong> of the input type=file. <br> for e.g. PX_FILE <br>To upload remote file, select the ID of the page item where user can select or type '
||'url <br> for e.g. PX_URL <br> <strong>Note</strong> - For remote file the plugin, gets the file content using xmlHTTPRequest and requires Access-Control-Allow-Origin header to be enabled by the source server hosting the csv file. If not enabled,  you'
||' will get CORS error thrown by the browser.<pre></td>',
'</tr>',
'<tr>',
'<td><strong>Skip First N Rows</strong></td>',
'<td><pre>Enter the number of rows you want to be skipped from the beginning of the csv file.<br>If you enter 1, then 1st record of csv file will be skipped and will not be inserted into table.<pre></td>',
'</tr>',
'<tr>',
'<td><strong>Stream</strong></td>',
'<td><pre>When stream is set to <strong>Yes</strong>, the file will be read and parsed in chunks, per byte size set in <strong>chunkSize</strong> option, keeping client side javascript memory usage low and also speeding up the inserts into table <br>W'
||'hen set to <strong>No</strong> , entire file will be read in javascript memory<br>When FileType is Remote URL, stream = <strong>Yes</strong>, will result in CORS error thrown by browser, unless CORS Access-Control-Allow-Origin header is enabled at th'
||'e source hosting the csv file.</pre></td>',
'</tr>',
'<tr>',
'<td><strong>chunkSize</strong></td>',
'<td><pre>chunkSize is the number of bytes used by javascript parser (Papaparse) to parse file in chunks at a time, when <strong>Stream</strong> option is set to <strong>Yes</strong>.<br>Ajax thread inserts a single chunk into the csv2table.<br>Please'
||' configure the <strong>chunkSize</strong> and <strong>threads</strong> as a combination to tune memory and insert performance.<br>for e.g When chunkSize is set to 1000000 (~1mb), input file will be read and parsed 1mb at a time, a ajax thread will th'
||'en insert 1mb chunk into csv2table</pre></td>',
'</tr>',
'<tr>',
'<td><strong>Threads</strong></td>',
'<td><pre>Number of parallel ajax sessions to create for inserting the parsed records. Each thread will insert 1 chunk by calling a on demand ajax plsql. When <strong>Stream</strong> is set to <strong>No</strong> , entire file will be read and parsed '
||'in javascript object, then it will be chunked and fed to threads to insert into csv2table.</pre></td>',
'</tr>',
'<tr>',
'<td><strong>Insert Type</strong></td>',
'<td><pre>Select <strong>JSON_TABLE</strong>, if your database version is 12c or later<br>Select <strong>APEX_DATA_PARSER</strong> for APEX version is 19.1 or later<br>Select <strong>XMLTABLE</strong>, for database version less than 12c or APEX versio'
||'n less than 19.1<br>select <strong>CUSTOM INSERT</strong>, to write your own implementation using clob containing chunked records in format configured in chunk format option.</pre></td>',
'</tr>',
'<tr>',
'<td><strong>Chunk Inserted Callback Function</strong></td>',
'<td><pre>You can write a javascript function which will be called after, a chunk is inserted. This function contains 1 arguments containing result object. You can use this function and result object to check or display the progress, pause and resume '
||'the reading and parsing of the input file.</pre></td>',
'</tr>',
'</tbody>',
'</table>',
'<pre><code class="language-javascript"><div><span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">afterChunkInsertFn</span>(<span class="hljs-params">result</span>) </span>{',
'    <span class="hljs-built_in">console</span>.log(results.options()); <span class="hljs-comment">//returns plugin options object</span>',
'    <span class="hljs-built_in">console</span>.log(results.uploadID()); <span class="hljs-comment">//returns upload Identifier for records inserted</span>',
'    <span class="hljs-built_in">console</span>.log(results.files()); <span class="hljs-comment">//array containing upload file information</span>',
'    <span class="hljs-built_in">console</span>.log(results.fileCount()); ',
'    <span class="hljs-built_in">console</span>.log(results.totalChunks()); <span class="hljs-comment">//total number of chunks to be inserted</span>',
'    <span class="hljs-built_in">console</span>.log(results.chunked()); <span class="hljs-comment">// total number of chunks inserted so far</span>',
'    <span class="hljs-built_in">console</span>.log(results.parsedRowCount()); <span class="hljs-comment">//total number of rows parsed</span>',
'    <span class="hljs-built_in">console</span>.log(results.insertedRowCount()); <span class="hljs-comment">//total number of rows inserted</span>',
'    <span class="hljs-built_in">console</span>.log(results.parsedErrorCount()); <span class="hljs-comment">//total number of parsing errors</span>',
'    <span class="hljs-built_in">console</span>.log(results.insertedErrorCount()); <span class="hljs-comment">//total number of insert errors</span>',
'    <span class="hljs-built_in">console</span>.log(results.startTime()); <span class="hljs-comment">//time when parsing file started</span>',
'    <span class="hljs-built_in">console</span>.log(results.endTime()); <span class="hljs-comment">//time when all chunks were inserted</span>',
'    <span class="hljs-built_in">console</span>.log(results.progressSoFar()); <span class="hljs-comment">// value betwee 0 and 1, 1 is 100% completed</span>',
'    <span class="hljs-built_in">console</span>.log(results.error()); <span class="hljs-comment">// error information</span>',
'    <span class="hljs-built_in">console</span>.log(results.status()); <span class="hljs-comment">// status information</span>',
'    <span class="hljs-built_in">console</span>.log(results.parseResults()); <span class="hljs-comment">//parsed data in the chunk</span>',
'    <span class="hljs-built_in">console</span>.log(results.halted()); <span class="hljs-comment">//true when parser is halted</span>',
'    <span class="hljs-built_in">console</span>.log(results.completed()); <span class="hljs-comment">//true when all chunks are inserted</span>',
'    <span class="hljs-comment">//you can pause parser and further chunking..   </span>',
'    <span class="hljs-keyword">if</span> (chunkingNeedsToBePause() || csv2table) { <span class="hljs-comment">//where chunkingNeedsToBePause() is your function returns true when you want parser to pause</span>',
'        csv2table.pause();',
'    }',
'     ',
'    <span class="hljs-comment">// do something here.. </span>',
'',
'    <span class="hljs-comment">//you can resume parser and further chunking and inserting</span>',
'     <span class="hljs-keyword">if</span> (!chunkingNeedsToBePause() || csv2table) { <span class="hljs-comment">//where chunkingNeedsToBePause() is your function returns true when you want parser to pause</span>',
'        csv2table.resume();',
'    }',
'}',
'</div></code></pre>',
'<table>',
'<thead>',
'<tr>',
'<th></th>',
'<th></th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td><strong>Error Callback Function</strong></td>',
'<td><pre>You can write a javascript function which will be called if an error is thrown either during parsing the file or inserting into the table. This function contains 1 arguments containing result object. You can use the result object to perform '
||'further error processing.</pre></td>',
'</tr>',
'</tbody>',
'</table>',
'<pre><code class="language-javascript"><div><span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">afterErrorFn</span>(<span class="hljs-params">result</span>) </span>{',
'    <span class="hljs-built_in">console</span>.log(results.options()); <span class="hljs-comment">//returns plugin options object</span>',
'    <span class="hljs-built_in">console</span>.log(results.uploadID()); <span class="hljs-comment">//returns upload Identifier for records inserted</span>',
'    <span class="hljs-built_in">console</span>.log(results.files()); <span class="hljs-comment">//array containing upload file information</span>',
'    <span class="hljs-built_in">console</span>.log(results.fileCount()); ',
'    <span class="hljs-built_in">console</span>.log(results.totalChunks()); <span class="hljs-comment">//total number of chunks to be inserted</span>',
'    <span class="hljs-built_in">console</span>.log(results.chunked()); <span class="hljs-comment">// total number of chunks inserted so far</span>',
'    <span class="hljs-built_in">console</span>.log(results.parsedRowCount()); <span class="hljs-comment">//total number of rows parsed</span>',
'    <span class="hljs-built_in">console</span>.log(results.insertedRowCount()); <span class="hljs-comment">//total number of rows inserted</span>',
'    <span class="hljs-built_in">console</span>.log(results.parsedErrorCount()); <span class="hljs-comment">//total number of parsing errors</span>',
'    <span class="hljs-built_in">console</span>.log(results.insertedErrorCount()); <span class="hljs-comment">//total number of insert errors</span>',
'    <span class="hljs-built_in">console</span>.log(results.startTime()); <span class="hljs-comment">//time when parsing file started</span>',
'    <span class="hljs-built_in">console</span>.log(results.endTime()); <span class="hljs-comment">//time when all chunks were inserted</span>',
'    <span class="hljs-built_in">console</span>.log(results.progressSoFar()); <span class="hljs-comment">// value betwee 0 and 1, 1 is 100% completed</span>',
'    <span class="hljs-built_in">console</span>.log(results.error()); <span class="hljs-comment">// error information</span>',
'    <span class="hljs-built_in">console</span>.log(results.status()); <span class="hljs-comment">// status information</span>',
'    <span class="hljs-built_in">console</span>.log(results.parseResults()); <span class="hljs-comment">//parsed data in the chunk</span>',
'    <span class="hljs-built_in">console</span>.log(results.halted()); <span class="hljs-comment">//true when parser is halted</span>',
'    <span class="hljs-built_in">console</span>.log(results.completed()); <span class="hljs-comment">//true when all chunks are inserted</span>',
'}',
'</div></code></pre>',
'<table>',
'<thead>',
'<tr>',
'<th></th>',
'<th></th>',
'</tr>',
'</thead>',
'<tbody>',
'<tr>',
'<td><strong>Complete Callback Function</strong></td>',
'<td><pre>You can write a javascript function which will be called after file is successfully inserted into table, to continue further processing like refreshing reports, scheduling backend validations, transformation. This function has 1 input argume'
||'nt containing result object</pre></td>',
'</tr>',
'</tbody>',
'</table>',
'<pre><code class="language-javascript"><div><span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">afterCompleteFn</span>(<span class="hljs-params">result</span>) </span>{',
'    <span class="hljs-built_in">console</span>.log(results.options()); <span class="hljs-comment">//returns plugin options object</span>',
'    <span class="hljs-built_in">console</span>.log(results.uploadID()); <span class="hljs-comment">//returns upload Identifier for records inserted</span>',
'    <span class="hljs-built_in">console</span>.log(results.files()); <span class="hljs-comment">//array containing upload file information</span>',
'    <span class="hljs-built_in">console</span>.log(results.fileCount()); ',
'    <span class="hljs-built_in">console</span>.log(results.totalChunks()); <span class="hljs-comment">//total number of chunks to be inserted</span>',
'    <span class="hljs-built_in">console</span>.log(results.chunked()); <span class="hljs-comment">// total number of chunks inserted so far</span>',
'    <span class="hljs-built_in">console</span>.log(results.parsedRowCount()); <span class="hljs-comment">//total number of rows parsed</span>',
'    <span class="hljs-built_in">console</span>.log(results.insertedRowCount()); <span class="hljs-comment">//total number of rows inserted</span>',
'    <span class="hljs-built_in">console</span>.log(results.parsedErrorCount()); <span class="hljs-comment">//total number of parsing errors</span>',
'    <span class="hljs-built_in">console</span>.log(results.insertedErrorCount()); <span class="hljs-comment">//total number of insert errors</span>',
'    <span class="hljs-built_in">console</span>.log(results.startTime()); <span class="hljs-comment">//time when parsing file started</span>',
'    <span class="hljs-built_in">console</span>.log(results.endTime()); <span class="hljs-comment">//time when all chunks were inserted</span>',
'    <span class="hljs-built_in">console</span>.log(results.progressSoFar()); <span class="hljs-comment">// value betwee 0 and 1, 1 is 100% completed</span>',
'    <span class="hljs-built_in">console</span>.log(results.error()); <span class="hljs-comment">// error information</span>',
'    <span class="hljs-built_in">console</span>.log(results.status()); <span class="hljs-comment">// status information</span>',
'    <span class="hljs-built_in">console</span>.log(results.parseResults()); <span class="hljs-comment">//parsed data in the chunk</span>',
'    <span class="hljs-built_in">console</span>.log(results.halted()); <span class="hljs-comment">//true when parser is halted</span>',
'    <span class="hljs-built_in">console</span>.log(results.completed()); <span class="hljs-comment">//true when all chunks are inserted</span>',
'}',
'</div></code></pre>',
'<h2 id="configuration-using-javascript-initialization-code">Configuration using Javascript Initialization Code</h2>',
'<p>Example below, plugin options are set using page item values</p>',
'<pre><code class="language-Javascript"><div><span class="hljs-function"><span class="hljs-keyword">function</span> (<span class="hljs-params">options</span>) </span>{',
'    <span class="hljs-keyword">var</span> chunkSize = apex.item(<span class="hljs-string">&quot;P1_CHUNKSIZE&quot;</span>).getValue();',
'    <span class="hljs-keyword">var</span> threads = apex.item(<span class="hljs-string">&quot;P1_THREADS&quot;</span>).getValue();',
'    <span class="hljs-keyword">var</span> fileType = apex.item(<span class="hljs-string">&quot;P1_FILETYPE&quot;</span>).getValue();',
'    <span class="hljs-keyword">var</span> fileID;',
'    <span class="hljs-keyword">if</span> ( fileType == <span class="hljs-string">&#x27;local&#x27;</span> ) {',
'        fileID = <span class="hljs-string">&quot;P1_FILE&quot;</span>;',
'    }',
'    <span class="hljs-keyword">if</span> ( fileType == <span class="hljs-string">&#x27;remote&#x27;</span> ) {',
'        fileID = <span class="hljs-string">&quot;P1_URL&quot;</span>;',
'    }',
'    options.chunkSize = chunkSize;',
'    options.threads = threads;',
'    options.fileType = fileType;',
'    options.fileID = fileID;',
'}',
'</div></code></pre>',
'',
'    </body>',
'    </html>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>111
,p_default_id_offset=>77418401682728923
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93467775477675951)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(120259077623767332)
,p_button_name=>'upload'
,p_button_static_id=>'submit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconRight:t-Button--pillStart'
,p_button_template_id=>wwv_flow_api.id(88312723271078712)
,p_button_image_alt=>'Upload'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-upload'
,p_grid_new_row=>'Y'
,p_grid_column=>5
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94748914985338930)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(120259077623767332)
,p_button_name=>'Pause'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(88312723271078712)
,p_button_image_alt=>'Pause'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-pause'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94749340915338934)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(120259077623767332)
,p_button_name=>'Resume'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(88312723271078712)
,p_button_image_alt=>'Resume'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-play'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(94750026041338941)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(120259077623767332)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(88312723271078712)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-ban'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88187319121814552)
,p_name=>'P9_URL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(120259077623767332)
,p_prompt=>'URL'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select url||''  ''||''(''||case when filesize > 1000000000 then ceil(filesize/1000000000) || '' gb)''',
'                       when filesize > 1000000 then ceil(filesize/1000000) || '' mb)''',
'                       when filesize > 1000 then ceil(filesize/1000) || '' kb)''',
'                       else filesize || '' bytes)''',
'                  end  d, url||'',''||filesize r',
'from CSV2TABLE_DEMO_REMOTE_URL',
'order by filesize',
'                     '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(88311549130078708)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_inline_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="u-italics " stype="font-size:0.9em">Streaming, cross-origin requests requires, Access-Control-Allow-Origin header to be enabled. For demo, when',
'Stream = Yes, select from LOV, Stream=No, enter URL or select from LOV</spam>'))
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93468177857675952)
,p_name=>'P9_FILE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(120259077623767332)
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(88311549130078708)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'Y'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94748588106338926)
,p_name=>'P9_URL_LIST'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(120259077623767332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94749606362338937)
,p_name=>'P9_CHUNKSIZE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(120259077623767332)
,p_item_default=>'select 1024*1000 from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'  Chunksize'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r from',
'(',
'    select case when rn = 1 then ''1kb''',
'                when rn = 2 then ''10kb''',
'                when rn =3 then ''100kb''',
'                when rn=4 then ''1mb''',
'                when rn=5 then ''5mb''',
'                when rn=6 then ''10mb''',
'            end d,',
'            case when rn = 1 then 1024',
'                when rn = 2 then 1024*10',
'                when rn =3 then 1024*100',
'                when rn=4 then 1024*1000',
'                when rn=5 then 1024*5000',
'                when rn=6 then 1024*10000',
'            end r',
'    from            ',
'        (select rownum rn',
'        from dual',
'        connect by rownum < 7',
'        )',
')'))
,p_cHeight=>1
,p_tag_attributes=>'style="min-width:100px"'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(88311813665078709)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When Streaming ( <span class="u-bold">Stream=Yes</span>), the local file or URL is read in chunks, reducing the browser javascript memory usage.</p>',
'<p>ChunkSize, also, limits maximum number of bytes sent by ajax call to backend (web server/ords/database). </p>'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94749796159338938)
,p_name=>'P9_THREADS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(120259077623767332)
,p_item_default=>'1'
,p_prompt=>'Threads'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum d, rownum r',
'from dual',
'connect by rownum < 6'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(88311813665078709)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Threads, limits number of parallel ajax sessions created to insert, parsed records.</p>',
'<p> Data size sent by ajax to backend is ~ chunkSize.</p> ',
'<p>Threads and chunkSize , can be tuned to achieve balance between browser javascript memory usage and insert performance.</p>'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94750115846338942)
,p_name=>'P9_FILETYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(120259077623767332)
,p_item_default=>'local'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Local;local,Remote;remote'
,p_field_template=>wwv_flow_api.id(88311549130078708)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>'<span class="u-italics" style="font-size:0.9em">choose local csv file in your computer or remote csv URL</span>'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(94752967973338970)
,p_name=>'P9_SKIPFIRSTNROWS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(120259077623767332)
,p_item_default=>'0'
,p_prompt=>'Skip  rows'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1;1,2;2,3;3'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(88311813665078709)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Number of rows , to be skipped.</p>',
'<p> If you do not want the header column row to be inserted, select 1. </p>'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103567014256922728)
,p_name=>'P9_UPLOAD_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(120259077623767332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103567600171922733)
,p_name=>'P9_STREAM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(120259077623767332)
,p_item_default=>'Y'
,p_prompt=>'Stream'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(88311813665078709)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><span class="u-bold">Stream = Yes</span>, Read records from file or url in chunks in browser javascript memory.<p> <p>Size of chunk to read is set by chunkSize. Useful for large datasets 10mb - 1GB+ </<p>',
'<p><span class="u-bold">Stream = No </span>, Read all records from file or url in javascript memory. Small to medium csv file (10mb)'))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103568444823922742)
,p_name=>'P9_PARSED_ROWCOUNT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(120259077623767332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103568508979922743)
,p_name=>'P9_INSERTED_ROWCOUNT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(120259077623767332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103568670948922744)
,p_name=>'P9_ERROR_ROWCOUNT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(120259077623767332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103568743558922745)
,p_name=>'P9_STATUS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(120259077623767332)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103568894955922746)
,p_name=>'P9_INSERT_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(120259077623767332)
,p_item_default=>'json'
,p_prompt=>'PLSQL Parser'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:JSON_TABLE;json,APEX_DATA_PARSER;apex_data_parser,XMLTABLE;xml'
,p_cHeight=>1
,p_tag_attributes=>'style="min-width:225px"'
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_api.id(88311813665078709)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p> This option enables, the plugin to be used across all database and apex versions </p>',
'<ul>',
'<li>JSON_TABLE - Supported in 12c database and later. </li>',
'<li>APEX_DATA_PARSER- Supported in 19.1 apex version and later</li>',
'<li>XMLTABLE - Supported in 10g and later.</li>',
'</ul>',
'',
'<p><span class="u-italics">Note - You can also write custom implementation of data parsing and inserts into csv2table or table of your choice, by setting this option to "Custom Insert". This option not shown in demo.</span></p> '))
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(93469172289675979)
,p_name=>'submit'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(93467775477675951)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(88187156311814550)
,p_event_id=>wwv_flow_api.id(93469172289675979)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'bar.animate(0.03);',
'$(''#submit'').prop(''disabled'', true);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(93469695995675980)
,p_event_id=>wwv_flow_api.id(93469172289675979)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.GM.CSV2TABLE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function (options) {',
'    var chunkSize = apex.item("P9_CHUNKSIZE").getValue();',
'    var threads = apex.item("P9_THREADS").getValue();',
'    var fileType = apex.item("P9_FILETYPE").getValue();',
'    var fileID;',
'    if ( fileType == ''local'' ) {',
'        fileID = "P9_FILE";',
'    }',
'    if ( fileType == ''remote'' ) {',
'        fileID = "P9_URL";',
'    }',
'    options.chunkSize = chunkSize;',
'    options.threads = threads;',
'    options.fileType = fileType;',
'    options.fileID = fileID;',
'    options.skipFirstNRows = apex.item("P9_SKIPFIRSTNROWS").getValue();',
'    options.stream = apex.item("P9_STREAM").getValue();',
'    options.insertType = apex.item("P9_INSERT_TYPE").getValue();',
'}'))
,p_attribute_01=>'1000000'
,p_attribute_02=>'1'
,p_attribute_03=>'P9_URL'
,p_attribute_05=>wwv_flow_string.join(wwv_flow_t_varchar2(
'async function completeFn(results){',
'    console.log("I am complete callback function", results);',
'    bar.animate(results.progressSoFar());',
'    var l_uploadID = results.uploadID();',
'    apex.item("P9_UPLOAD_ID").setValue(l_uploadID);',
'    var setSessionStatePromise = apex.server.process(''MY_PROCESS'',{',
'            pageItems: ''#P9_UPLOAD_ID''',
'        },{dataType: "text"});',
'    try{',
'        var result = await setSessionStatePromise.done( function() {',
'',
'            console.log(''Upload ID: '', apex.item("P9_UPLOAD_ID").getValue());',
'            });',
'    }catch (err) {',
'        console.log(''Error getting upload ID'', err)',
'    }',
'    apex.region("results").refresh();',
'    apex.region( "upload" ).focus();',
'    $(''#submit'').prop(''disabled'', false);',
'    apex.item("P9_PARSED_ROWCOUNT").setValue(results.parsedRowCount());',
'    apex.item("P9_INSERTED_ROWCOUNT").setValue(results.insertedRowCount());',
'    apex.item("P9_STATUS").setValue(results.status.state); ',
'    ',
'    ',
'    ',
'}'))
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function chunkFn(data){',
'',
'    console.log("I am chunk callback function" , data);',
'    bar.animate(data.progressSoFar());',
'}'))
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function errorFn(data){',
'    console.log("I am error callback function", data);',
'     $(''#submit'').prop(''disabled'', false);',
'    if ( data.status.state == "error" ) {',
'        bar.setText(data.error.message);',
'        bar.text.style.color = "#d2423b";',
'',
'    }',
'    apex.message.showErrors([',
'    {',
'        type: "error",',
'        location: "page",',
'        message: data.error.message + "<br> check console log for more details",',
'        unsafe: false',
'    }',
'    ]);    ',
'}'))
,p_attribute_08=>'json'
,p_attribute_10=>'remote'
,p_attribute_13=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(94748387579338924)
,p_name=>'getRemoteCSVURL'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(94748454369338925)
,p_event_id=>wwv_flow_api.id(94748387579338924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = ''https://gopalmallya.com/csv/list.csv'';',
'var xhr;',
'function bindFunction(f, self)',
'	{',
'		return function() { f.apply(self, arguments); };',
'	}',
'function load(url) {',
'  xhr = new XMLHttpRequest();',
'  xhr.onreadystatechange  = bindFunction(loadFn, this);',
'  xhr.onerror = bindFunction(errorFn, this);',
'  xhr.open("GET", url, true);',
'  xhr.send();',
'  ',
'}',
'',
'function loadFn ()  {',
'    if (xhr.readyState === 4 && xhr.status === 200) {',
'        console.log(xhr.responseText);',
'        results = Papa.parse(xhr.responseText);',
'        var urlList = JSON.stringify(results.data);',
'        apex.item("P9_URL_LIST").setValue(urlList);',
'        apex.server.process(''MY_PROCESS'',{',
'            pageItems: ''#P9_URL_LIST''',
'        },{dataType: "text"});',
'',
'    };',
'  }  ',
'',
'function errorFn ()  {',
'   console.log(''xhr error'')',
'  }  ',
'',
'if ( apex.item("P9_URL_LIST").getValue().length === 0 ) {',
'    load(url);',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(94749156857338932)
,p_name=>'pause'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(94748914985338930)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(94749248284338933)
,p_event_id=>wwv_flow_api.id(94749156857338932)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(''user clicked pause'');',
'if ( csv2table ) {',
'    csv2table.pause();',
'    apex.jQuery(''#current_status'').html(''<span class=" upload-paused u-color-9">Paused</span>'');',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(94749435838338935)
,p_name=>'Resume'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(94749340915338934)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(94749540921338936)
,p_event_id=>wwv_flow_api.id(94749435838338935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( csv2table ) {',
'    csv2table.resume();',
'    apex.jQuery(''#current_status'').text('''');',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(94750249776338943)
,p_name=>'show local  hide remote file browser'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_FILETYPE'
,p_condition_element=>'P9_FILETYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'local'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(94750382950338944)
,p_event_id=>wwv_flow_api.id(94750249776338943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_FILE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(94751181007338952)
,p_event_id=>wwv_flow_api.id(94750249776338943)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_URL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(94750818379338949)
,p_name=>'show remote hide local browser_1'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_FILETYPE'
,p_condition_element=>'P9_FILETYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'remote'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(94750979470338950)
,p_event_id=>wwv_flow_api.id(94750818379338949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_URL'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(94751233152338953)
,p_event_id=>wwv_flow_api.id(94750818379338949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9_FILE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(94752020262338961)
,p_name=>'browser reload'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(94750026041338941)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(94752135138338962)
,p_event_id=>wwv_flow_api.id(94752020262338961)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(''cancel pressed'');',
'location.reload();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(103568960197922747)
,p_name=>'showPauseResume'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_STREAM'
,p_condition_element=>'P9_STREAM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103569096787922748)
,p_event_id=>wwv_flow_api.id(103568960197922747)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(94748914985338930)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103569104411922749)
,p_event_id=>wwv_flow_api.id(103568960197922747)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(94749340915338934)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(103569259879922750)
,p_name=>'HidePauseResume'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_STREAM'
,p_condition_element=>'P9_STREAM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103569369843922751)
,p_event_id=>wwv_flow_api.id(103569259879922750)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(94748914985338930)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103569418565922752)
,p_event_id=>wwv_flow_api.id(103569259879922750)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(94749340915338934)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(103569599009922753)
,p_name=>'disable URL manual edit'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_STREAM,P9_FILETYPE'
,p_condition_element=>'P9_STREAM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103569609840922754)
,p_event_id=>wwv_flow_api.id(103569599009922753)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("#P9_URL").prop(''disabled'', true);',
'apex.item("P9_URL").setValue('''');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(103569788274922755)
,p_name=>'enable URL manual edit'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9_STREAM,P9_FILETYPE'
,p_condition_element=>'P9_STREAM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103569876794922756)
,p_event_id=>wwv_flow_api.id(103569788274922755)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P9_URL").prop(''disabled'', false);'
);
wwv_flow_api.component_end;
end;
/
