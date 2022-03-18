prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(3048806881237990347)
,p_name=>'DML Form'
,p_alias=>'DML-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'DML Form'
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
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301103321'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1936472651719532741)
,p_plug_name=>'EMP Form'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(3702276865524415473)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1936473745682532752)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3702266406099415451)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(10991405036010632782)
,p_plug_name=>'REST Service Endpoint'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>wwv_flow_api.id(3702276865524415473)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'htp.p(''REST Service Endpoint: <b>'' || :SAMPLE_ENDPOINT_URL || ''/'' || :P12_EMPNO || ''</b>'');',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12213378320642724163)
,p_plug_name=>'About this page'
,p_plug_template=>wwv_flow_api.id(3702266226375415449)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This page shows a data manipulation form for a REST service. On page load, the individual row is being fetched from the REST service. Using the form, the data might be changed and saved back to the REST service using a <b>PUT</b> request.</p>',
''))
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1936473867035532753)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1936473745682532752)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3702300197334415561)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1936474087487532755)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1936473745682532752)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3702300197334415561)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1936474491424532759)
,p_branch_action=>'f?p=&APP_ID.:&P12_BACK_TO_PAGE.:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1936472769190532742)
,p_name=>'P12_EMPNO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1936472651719532741)
,p_prompt=>'Empno'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(3702299208889415548)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1936472879152532743)
,p_name=>'P12_MGR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1936472651719532741)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1936472931203532744)
,p_name=>'P12_JOB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1936472651719532741)
,p_prompt=>'Job'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(3702299208889415548)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1936473033970532745)
,p_name=>'P12_COMM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1936472651719532741)
,p_prompt=>'Commission'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(3702299208889415548)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1936473142892532746)
,p_name=>'P12_ENAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1936472651719532741)
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(3702299208889415548)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1936473236224532747)
,p_name=>'P12_HIREDATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1936472651719532741)
,p_prompt=>'Hire Date'
,p_format_mask=>'YYYY/MM/DD'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(3702299208889415548)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1936473424290532748)
,p_name=>'P12_SAL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1936472651719532741)
,p_prompt=>'Salary'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(3702299208889415548)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1936473451467532749)
,p_name=>'P12_DEPTNO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1936472651719532741)
,p_prompt=>'Department #'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(3702299208889415548)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1936474411298532758)
,p_name=>'P12_BACK_TO_PAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1936472651719532741)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1936474191732532756)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1936474087487532755)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1936474250300532757)
,p_event_id=>wwv_flow_api.id(1936474191732532756)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1936526704592349100)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch data into Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_response clob;',
'begin',
'    -- load REST response into a collection',
'    l_response := apex_web_service.make_rest_request(',
'        p_url              => :SAMPLE_ENDPOINT_URL || ''/'' || :P12_EMPNO,',
'        p_http_method      => ''GET'');',
'',
'    apex_collection.create_or_truncate_collection( ''REST_COLLECTION'' );',
'    apex_collection.add_member(',
'        p_collection_name => ''REST_COLLECTION'',',
'        p_clob001 =>         l_response );       ',
'       ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1936473600526532750)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Parse JSON data to items'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'-- fetch data into items',
'    select ',
'        x.ENAME, ',
'        x.JOB, ',
'        x.MGR, ',
'        to_date( x.HIREDATE, ''YYYY-MM-DD"T"HH24:MI:SS"Z"'' ) as HIREDATE, ',
'        x.SAL, ',
'        x.comm,',
'        x.DEPTNO ',
'    into',
'        :P12_ENAME,',
'        :P12_JOB,',
'        :P12_MGR,',
'        :P12_HIREDATE,',
'        :P12_SAL,',
'        :P12_COMM,',
'        :P12_DEPTNO',
'    from apex_collections c, xmltable(',
'        ''/json''',
'        passing apex_json.to_xmltype( c.clob001 )',
'        columns',
'            ENAME      VARCHAR2(4000)  path ''ename'',',
'            JOB        VARCHAR2(4000)  path ''job'',',
'            MGR        NUMBER          path ''mgr'',',
'            HIREDATE   VARCHAR2(4000)   path ''hiredate'',',
'            SAL        NUMBER          path ''sal'',',
'            COMM       NUMBER          path ''comm'',',
'            DEPTNO     NUMBER          path ''deptno''',
'    ) x',
'    where c.collection_name = ''REST_COLLECTION'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1936473976727532754)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Changes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- PL/SQL code to perform DML on REST service',
'declare',
'    l_request  clob;',
'    l_response clob;',
'begin',
'    -- Set HTTP Request Headers',
'    apex_web_service.g_request_headers.delete;',
'',
'    apex_web_service.g_request_headers(1).name  := q''#Content-Type#'';',
'    apex_web_service.g_request_headers(1).value := q''#application/json#'';',
'    ',
'    apex_json.initialize_clob_output(DBMS_LOB.CALL, true, 2);',
'    apex_json.open_object();',
'    apex_json.write(''ename'',    :P12_ENAME);',
'    apex_json.write(''job'',      :P12_JOB);',
'    apex_json.write(''hiredate'', to_date( :P12_HIREDATE, ''YYYY/MM/DD'' ));',
'    apex_json.write(''sal'',      to_number( :P12_SAL) );',
'    apex_json.write(''comm'',     to_number( :P12_COMM) );',
'    apex_json.write(''mgr'',      to_number( :P12_MGR) );',
'    apex_json.write(''deptno'',   to_number( :P12_DEPTNO) );',
'    apex_json.close_object; ',
'',
'    l_response := apex_web_service.make_rest_request(',
'        p_url         => :SAMPLE_ENDPOINT_URL || ''/'' || :P12_EMPNO,',
'        p_http_method => ''PUT'',',
'        p_body        => apex_json.get_clob_output );',
'        ',
'    -- test whether request was successful - HTTP Status code is 2xx, then',
'    if apex_web_service.g_status_code not between 200 and 299 then',
'        raise_application_error(-20000, ''HTTP-''|| apex_web_service.g_status_code);',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'REST PUT request failed with server response: #SQLERRM_TEXT#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1936473867035532753)
,p_process_success_message=>'REST PUT request sent - changes applied.'
);
wwv_flow_api.component_end;
end;
/
