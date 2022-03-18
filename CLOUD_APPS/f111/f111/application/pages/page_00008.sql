prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(88335304271078742)
,p_name=>'upload_using_da_simplified'
,p_alias=>'UPLOAD-USING-DA-SIMPLIFIED'
,p_step_title=>'upload_using_da_simplified'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#js/papaparse.min.js',
'#APP_IMAGES#js/progressbar.min.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var csv2table = ( function($){',
'                    //papaparse streams chunk i.e array of arrays in queue, once queue fills up, parsing is paused',
'                    // and it processes ',
'                    //these arrays by spawing ajax threads to persist in db till queue is isEmpty',
'                    //when again the parsing resumes to repeat till the end of parsing',
'                    var stepped = 0, chunked = 0, rowCount = 0, errorCount = 0, insertRequestCount = 0, firstError;',
'                    var start, end, ajaxEnd;',
'                    var firstRun = true;',
'                    var queueSize = 30; //maximum number of parsed chunk of stream array , to trigger ajax call processing',
'                    var totalChunks;',
'                    var submitButtonID;',
'                    var filename, filesize, filetype;',
'                    var bar = new ProgressBar.SemiCircle(progress_container, {',
'                                strokeWidth: 6,',
'                                color: ''#FFEA82'',',
'                                trailColor: ''#eee'',',
'                                trailWidth: 1,',
'                                easing: ''easeInOut'',',
'                                duration: 1400,',
'                                svgStyle: null,',
'                                text: {',
'                                    value: '''',',
'                                    alignToBottom: false',
'                                },',
'                                from: {color: ''#FFEA82''},',
'                                to: {color: ''#ED6A5A''},',
'                                // Set default step function for all animate calls',
'                                step: (state, bar) => {',
'                                    bar.path.setAttribute(''stroke'', state.color);',
'                                    var value = Math.round(bar.value() * 100);',
'                                    if (value === 0) {',
'                                    bar.setText('''');',
'                                    } else {',
'                                    bar.setText(value);',
'                                    }',
'',
'                                    bar.text.style.color = state.color;',
'                                }',
'                                });',
'                    bar.text.style.fontFamily = ''"Raleway", Helvetica, sans-serif'';',
'                    bar.text.style.fontSize = ''2rem'';',
'',
'                    ',
'',
'                    function buildConfig(config)',
'                    {',
'                        if (!config) {',
'                            return {',
'                                delimiter: '','',',
'                                header: false,',
'                                chunk: chunkFn,',
'                                chunkSize: 1000000,',
'                                complete: completeFn,',
'                                error: errorFn',
'',
'',
'                            };',
'                        } else {',
'                            return config;',
'                        }    ',
'                    }',
'',
'                    function submit(button_id, file_id)',
'                        {',
'                            submitButtonID = button_id;',
'                            if ($(''#'' + submitButtonID).prop(''disabled'') == "true")',
'                                return;',
'                            ',
'                            bar.animate(0);',
'',
'                            stepped = 0;',
'                            chunked = 0;',
'                            rowCount = 0;',
'                            errorCount = 0;',
'                            firstError = undefined;',
'',
'                            var config = buildConfig();',
'                            ',
'                            var input = $(''#'' + file_id).val();',
'',
'                            // Allow only one parse at a time',
'                            $(''#''+submitButtonID).prop(''disabled'', true);',
'',
'                            if (!firstRun)',
'                                console.log("--------------------------------------------------");',
'                            else',
'                                firstRun = false;',
'                            ',
'                            if (!$(''#'' + file_id)[0].files.length)',
'                            {',
'                                alert("Please choose at least one file to parse.");',
'                                return enableButton();',
'                            }',
'                            ',
'                        ',
'                            //parse stream',
'                            $(''#'' + file_id).parse({',
'                                config: config,',
'                                before: function(file, inputElem)',
'                                {',
'                                    start = now();',
'                                    console.log("Parsing file...", file);',
'                                    filename = file.name;',
'                                    filesize = file.size;',
'                                    filetype = file.type;',
'                                    totalChunks = Math.ceil(filesize/buildConfig().chunkSize);',
'                                    ajaxCallCounter = 0;',
'',
'                                    ',
'',
'                                },',
'                                error: function(err, file)',
'                                {',
'                                    console.log("ERROR:", err, file);',
'                                    firstError = firstError || err;',
'                                    errorCount++;',
'                                },',
'                                complete: function()',
'                                {',
'                                    ',
'                                    end = now();',
'                                    printStats("Done with all files");',
'                                    enableButton();',
'                                }',
'                            });',
'                            ',
'                        }',
'',
'',
'                    function printStats(msg)',
'                    {',
'                        if (msg)',
'                            console.log(msg);',
'                        console.log("       Time:", (end-start || "(Unknown; your browser does not support the Performance API)"), "ms");',
'                        ',
'                        console.log("  Row count:", rowCount);',
'                        if (stepped)',
'                            console.log("    Stepped:", stepped);',
'                        if (chunked)',
'                            console.log("    Chunked:", chunked);    ',
'                        console.log("     Errors:", errorCount);',
'                        if (errorCount)',
'                            console.log("First error:", firstError);',
'                    }',
'',
'                    function completeFn(results)',
'                    {',
'                        end = now();',
'',
'                        if (results && results.errors)',
'                        {',
'                            if (results.errors)',
'                            {',
'                                errorCount = results.errors.length;',
'                                firstError = results.errors[0];',
'                            }',
'                            if (results.data && results.data.length > 0)',
'                                rowCount = results.data.length;',
'                        }',
'',
'                        printStats("Parse complete");',
'                        console.log("    Results:", results);',
'',
'                        // icky hack',
'                        setTimeout(enableButton, 100);',
'                    }',
'',
'                    function errorFn(err, file)',
'                    {',
'                        end = now();',
'                        console.log("ERROR:", err, file);',
'                        enableButton();',
'                    }',
'',
'                    function enableButton()',
'                    {',
'                        $(''#'' + submitButtonID).prop(''disabled'', false);',
'                    }',
'',
'                    function now()',
'                    {',
'                        return typeof window.performance !== ''undefined''',
'                                ? window.performance.now()',
'                                : 0;',
'                    }',
'',
'',
'',
'',
'                    //papaparse calls chunkFn after parsing stream into results ',
'                    function chunkFn(results, parser)',
'                    {',
'                        ',
'                        chunked++;',
'                        insert = function () {',
'                            apex.server.process(',
'                                "ping", ',
'                                { p_clob_01: JSON.stringify(results.data), x01:filename},',
'                                {dataType:"text"}',
'                            ).then(     function(data){',
'                                                            console.log(''insertRequest Completed..'' + data);',
'                                                            insertRequestCount--;',
'                                                            if ( insertRequestCount < queueSize ) {',
'                                                                bar.animate( chunked/totalChunks);',
'                                                                parser.resume();',
'                                                                if ( chunked == totalChunks ){',
'                                                                    console.log(''this is end of ajax calls'');',
'                                                                    ajaxEnd = now();',
'                                                                    console.log("Total parse and insert Time:", (ajaxEnd-start || "(Unknown; your browser does not support the Performance API)"), "ms");',
'',
'                                                                }',
'                                                            }',
'                                                }',
'                                        ,function(e){ console.log(''InsertRequest Error'');}',
'                                    );',
'                                                ',
'',
'                        }',
'',
'                        ',
'                        if (results)',
'                        {',
'                            if (results.data) {',
'                                rowCount =  results.data.length;',
'                                insert();',
'                                insertRequestCount++;',
'                                if ( insertRequestCount >= queueSize ) {',
'                                    parser.pause();',
'                                }',
'',
'                            }    ',
'',
'                            if (results.errors)',
'                            {',
'                                errorCount += results.errors.length;',
'                                firstError = firstError || results.errors[0];',
'                            }',
'                        }',
'                    }',
'',
'                    return {',
'                        "upload" : function (submitButtonID,fileID) {',
'                                        submit(submitButtonID,fileID);',
'                                    },',
'                        "config" : function(config) {',
'                                        buildConfig(config);',
'                                    }            ',
'',
'                                    ',
'                                     ',
'                    }    ',
'',
'',
'',
'}',
'',
')(apex.jQuery);',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'#progress_container {',
'  margin: 20px;',
'  width: 200px;',
'  height: 100px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GOPALMALLYA'
,p_last_upd_yyyymmddhh24miss=>'20210116211229'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(104210955428820338)
,p_plug_name=>'Upload'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(88250109972078651)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(104211560453820344)
,p_plug_name=>'Progress'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(88221926619078627)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>'<div id=progress_container></div>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(118631807994375143)
,p_plug_name=>'Upload'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(88250109972078651)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'	<head>',
'		<title>Demo - Papa Parse</title>',
'',
'	</head>',
'	<body>',
'',
'		<main>',
'			<header>',
'				<div class="grid-container">',
'					<div class="grid-40 mobile-grid-50">',
'						<div class="links">',
'							<a href="/demo">',
'								<i class="fa fa-magic fa-lg"></i> Demo',
'							</a>',
'							<a href="/docs">',
'								<i class="fa fa-book fa-lg"></i> Docs',
'							</a>',
'							<a href="/faq">',
'								<i class="fa fa-question fa-lg"></i> FAQ',
'							</a>',
'						</div>',
'					</div>',
'					<div class="grid-20 hide-on-mobile text-center">',
'						<a href="/" class="text-logo">Papa Parse 5</a>',
'					</div>',
'					<div class="grid-40 mobile-grid-50 text-right">',
'						<div class="links">',
'							<a href="https://github.com/mholt/PapaParse">',
'								<i class="fa fa-github fa-lg"></i> GitHub',
'							</a>',
'							<a href="http://stackoverflow.com/questions/tagged/papaparse">',
'								<i class="fa fa-stack-overflow fa-lg"></i> Help',
'							</a>',
'						</div>',
'					</div>',
'				</div>',
'			</header>',
'',
'',
'			<h1>Choose a Demo</h1>',
'',
'			<div class="tabs">',
'				<div class="tab active" id="tab-string">String</div>',
'				<div class="tab" id="tab-local">Local File(s)</div>',
'				<div class="tab" id="tab-remote">Remote File</div>',
'				<div class="tab" id="tab-unparse">JSON to CSV</div>',
'			</div>',
'',
'			<div class="grid-container">',
'',
'				<div class="grid-25">',
'					<label>',
'						<input type="checkbox" id="stream"> Stream',
'						<dfn>Results are delivered row by row to a step function. Use with large inputs that would crash the browser.</dfn>',
'					</label>',
'',
'					<label>',
'						<input type="checkbox" id="chunk"> Chunk Stream',
'						<dfn>Results are delivered chunk by chunk to a chunk function. Use with large inputs that would crash the browser.</dfn>',
'					</label>',
'',
'					<label>',
'						<input type="checkbox" id="worker"> Worker thread',
'						<dfn>Uses a separate thread so the web page doesn''t lock up.</dfn>',
'					</label>',
'',
'					<label>',
'						<input type="checkbox" id="header"> Header row',
'						<dfn>Keys data by field name rather than an array.</dfn>',
'					</label>',
'',
'					<label>',
'						<input type="checkbox" id="dynamicTyping"> Dynamic typing',
'						<dfn>Turns numeric data into numbers and true/false into booleans.</dfn>',
'					</label>',
'',
'					<label>',
'						<input type="checkbox" id="skipEmptyLines"> Skip empty lines',
'						<dfn>By default, empty lines are parsed; check to skip.</dfn>',
'					</label>',
'',
'				</div>',
'',
'				<div class="grid-75 grid-parent">',
'',
'					<div class="grid-33 push-66">',
'						<label>',
'							Delimiter:<input type="text" size="4" maxlength="1" placeholder="auto" id="delimiter"><a href="javascript:" id="insert-tab">tab</a>',
'							<dfn>The delimiting character. Usually comma or tab. Default is comma.</dfn>',
'						</label>',
'',
'						<label>',
'							Preview:<input type="number" min="0" max="1000" placeholder="0" id="preview">',
'							<dfn>If &gt; 0, stops parsing after this many rows.</dfn>',
'						</label>',
'',
'						<label>',
'							Encoding:<input type="text" id="encoding" placeholder="default" size="7">',
'							<dfn>Only applies when reading local files. Default is specified by the browser (usually UTF-8).</dfn>',
'						</label>',
'',
'						<label>',
'							Comment char:<input type="text" size="7" maxlength="10" placeholder="default" id="comments">',
'							<dfn>If specified, skips lines starting with this string.</dfn>',
'						</label>',
'					</div>',
'',
'					<div class="grid-66 pull-33">',
'						<div class="input-area" id="input-string">',
'							<textarea id="input" placeholder="String input">Column 1,Column 2,Column 3,Column 4',
'1-1,1-2,1-3,1-4',
'2-1,2-2,2-3,2-4',
'3-1,3-2,3-3,3-4',
'4,5,6,7</textarea>',
'						</div>',
'						<div class="input-area" id="input-local">',
'							',
'							<div class="text-center">',
'								Choose one or more delimited text files for Papa to parse.',
'							</div>',
'',
'							<input type="file" id="files" multiple> <div id="progress_container"></div>',
'							',
'							Sample files:',
'',
'							<ul>',
'								<li>',
'									<a href="/resources/files/normal.csv" id="local-normal-file">Normal file</a>',
'								</li>',
'								<li>',
'									<a href="/resources/files/big.csv" id="local-large-file">Large file</a>',
'								</li>',
'								<li>',
'									<a href="/resources/files/malformed.tsv" id="local-malformed-file">Malformed file</a>',
'								</li>',
'							</ul>',
'						</div>',
'						<div class="input-area" id="input-remote">',
'							',
'							<div class="text-center">',
'								Type the URL of the file to be downloaded and parsed.',
'								<br>',
'								<small>(cross-origin requests require Access-Control-Allow-Origin header)</small>',
'							</div>',
'',
'							<input type="text" id="url" placeholder="URL">',
'',
'							Sample files:',
'',
'							<ul>',
'								<li>',
'									<a href="javascript:" id="remote-normal-file">Normal file</a>',
'								</li>',
'								<li>',
'									<a href="javascript:" id="remote-large-file">Large file</a>',
'								</li>',
'								<li>',
'									<a href="javascript:" id="remote-malformed-file">Malformed file</a>',
'								</li>',
'							</ul>',
'						</div>',
'						<div class="input-area" id="input-unparse">',
'							<textarea id="json" placeholder="JSON string">[',
'	{',
'	    "Column 1": "1-1",',
'	    "Column 2": "1-2",',
'	    "Column 3": "1-3",',
'	    "Column 4": "1-4"',
'	},',
'	{',
'	    "Column 1": "2-1",',
'	    "Column 2": "2-2",',
'	    "Column 3": "2-3",',
'	    "Column 4": "2-4"',
'	},',
'	{',
'	    "Column 1": "3-1",',
'	    "Column 2": "3-2",',
'	    "Column 3": "3-3",',
'	    "Column 4": "3-4"',
'	},',
'	{',
'	    "Column 1": 4,',
'	    "Column 2": 5,',
'	    "Column 3": 6,',
'	    "Column 4": 7',
'	}',
']</textarea>',
'						</div>',
'						<div class="text-center">',
'							<div class="see-results">',
'								Results will appear in the console of your browser''s inspector tools',
'							</div>',
'							<button id="submit" class="green">Parse</button>',
'						</div>',
'					</div>',
'				</div>',
'			</div>',
'',
'		</main>',
'',
'',
'',
'		<footer>',
'			<!--<div class="footer-top">',
'				<h3>Make Your Papa Proud</h3>',
'				<h4><a href="https://github.com/mholt/PapaParse">Star</a> and <a href="https://github.com/mholt/PapaParse/blob/gh-pages/resources/js/lovers.js">shout</a> if you love #PapaParse</h4>',
'			</div>-->',
'			<div class="footer-main">',
'				<div class="grid-container">',
'					<div class="grid-40 text-center">',
'						<div class="logo">P</div>',
'						<br><br>',
'						Papa Parse by <a href="https://twitter.com/mholt6">Matt Holt</a>',
'						<br>',
'						&copy; 2013-2019',
'					</div>',
'					<div class="grid-15 mobile-grid-50 links">',
'						<h5>Learn</h5>',
'						<a href="/demo">Demo</a>',
'						<a href="/docs">Documentation</a>',
'						<a href="/faq">FAQ</a>',
'					</div>',
'					<div class="grid-15 mobile-grid-50 links">',
'						<h5>Project</h5>',
'						<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=S6VTL9FQ6L8EN&item_name=PapaParse&currency_code=EUR&source=url">Donate</a>',
'						<a href="https://github.com/mholt/PapaParse">GitHub</a>',
'						<a href="https://twitter.com/search?q=%23PapaParse">Share</a>',
'					</div>',
'					<div class="clear hide-on-desktop"></div>',
'					<div class="grid-15 mobile-grid-50 links">',
'						<h5>Download</h5>',
'						<a href="https://github.com/mholt/PapaParse/archive/master.zip">Latest (master)</a>',
'						<hr>',
'						<a href="https://github.com/mholt/PapaParse/blob/master/papaparse.min.js">Lil'' Papa</a>',
'						<a href="https://github.com/mholt/PapaParse/blob/master/papaparse.js">Fat Papa</a>',
'					</div>',
'					<div class="grid-15 mobile-grid-50 links">',
'						<h5>Community</h5>',
'						<a href="https://twitter.com/search?q=%23PapaParse">Twitter</a>',
'						<a href="http://stackoverflow.com/questions/tagged/papaparse">Stack Overflow</a>',
'					</div>',
'				</div>',
'			</div>',
'		</footer>',
'	</body>',
'</html>',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(118792934451639418)
,p_plug_name=>'Fastest CSV Upload'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(88240533873078644)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93444435368734763)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(104210955428820338)
,p_button_name=>'upload'
,p_button_static_id=>'submit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(88312723271078712)
,p_button_image_alt=>'Upload'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93444896931734765)
,p_name=>'P8_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(104210955428820338)
,p_prompt=>'File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(88311549130078708)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'Y'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(93445921726734802)
,p_name=>'submitA'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(93444435368734763)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(93446441339734804)
,p_event_id=>wwv_flow_api.id(93445921726734802)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var upload_button_id = this.triggeringElement.id;',
'var file_id = ''P8_FILE'';',
'csv2table.upload(upload_button_id,file_id); //button and file id'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(93445523995734800)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ping'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'l_sid number;',
'l_file_id number;',
'l_json clob;',
'begin',
'select sys_context(''userenv'',''sid'') into l_sid from dual;',
'--htp.p(APEX_APPLICATION.G_X01||'' *sid* ''|| l_sid);',
'--htp.p('' csv records: '' || apex_application.g_clob_01);',
'',
'l_json := apex_application.g_clob_01;',
'insert into csv_staging2 ( filename, c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)',
'select apex_application.g_x01,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20',
'from json_table (l_json',
', ''$[*]''',
'   columns ( c1 varchar2(50) path ''$[0]''',
'            ,c2 varchar2(50) path ''$[1]''',
'            ,c3 varchar2(50) path ''$[2]''',
'            ,c4 varchar2(50) path ''$[3]''',
'            ,c5 varchar2(50) path ''$[4]''',
'            ,c6 varchar2(50) path ''$[5]''',
'            ,c7 varchar2(50) path ''$[6]''',
'            ,c8 varchar2(50) path ''$[7]''',
'            ,c9 varchar2(50) path ''$[8]''',
'            ,c10 varchar2(50) path ''$[9]''',
'            ,c11 varchar2(50) path ''$[10]''',
'            ,c12 varchar2(50) path ''$[11]''',
'            ,c13 varchar2(50) path ''$[12]''',
'            ,c14 varchar2(50) path ''$[13]''',
'            ,c15 varchar2(50) path ''$[14]''',
'            ,c16 varchar2(50) path ''$[15]''',
'            ,c17 varchar2(50) path ''$[16]''',
'            ,c18 varchar2(50) path ''$[17]''',
'            ,c19 varchar2(50) path ''$[18]''',
'            ,c20 varchar2(50) path ''$[19]''',
'',
'            )',
');',
'htp.p('' inserted ''||sql%rowcount||'' csv records: '' || APEX_APPLICATION.G_X01||'' *sid* ''|| l_sid|| '' time: ''|| to_char(sysdate, ''hh24:mi:ss''));',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
