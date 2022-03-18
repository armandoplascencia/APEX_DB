prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(88335304271078742)
,p_name=>'Ajax Batch Processing'
,p_alias=>'AJAX-BATCH-PROCESSING'
,p_step_title=>'Ajax Batch Processing'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GOPALMALLYA'
,p_last_upd_yyyymmddhh24miss=>'20201229021932'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88185607341814535)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(88250109972078651)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88185747885814536)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(88185607341814535)
,p_button_name=>'New'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(88312652773078712)
,p_button_image_alt=>'New'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(88185802164814537)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(88185747885814536)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(88185947158814538)
,p_event_id=>wwv_flow_api.id(88185802164814537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ajaxPromise;',
'var ajaxCallCounter = 0;',
'var threads = 5;',
'var batchSize = 10; ',
'var totalSize = 100;',
'var processedSize = 0;',
'var displayError = function(error) {',
'    console.error("Promise is rejected:", error);',
'}',
'',
'function process() {',
'    ',
'        ajaxCallCounter++;',
'        var promiseArray = [];',
'        for (j = 0; j < threads; j++) {',
'            ',
'            ajaxPromise = apex.server.process(',
'                                "ping", ',
'                                {x01: "trip " + ajaxCallCounter + " thread " + j },',
'                                {dataType:"text"}',
'                            );',
'                            ',
'            promiseArray.push(ajaxPromise);            ',
'            ',
'        }',
'        Promise.all(promiseArray)',
'        .then(function(data) {',
'            processedSize = processedSize + batchSize * threads;',
'            console.log("All Promises are resolved:", data);',
'            if (processedSize < totalSize) {',
'                process();',
'            }    ',
'',
'        }).catch(function(error){ ',
'                    processedSize = totalSize + 1; ',
'                    displayError;',
'            });',
'    }',
'',
'',
'process();',
'',
''))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(88185565376814534)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ping'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_sid number;',
'begin',
'select sys_context(''userenv'',''sid'') into l_sid from dual;',
'htp.p(APEX_APPLICATION.G_X01||'' *sid* ''|| l_sid);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
