prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(3048806881237990347)
,p_name=>'Set REST Service Endpoint'
,p_alias=>'SET-REST-SERVICE-ENDPOINT'
,p_page_mode=>'MODAL'
,p_step_title=>'Set REST Service Endpoint'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_upd_yyyymmddhh24miss=>'20200820113959'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1923273442005689016)
,p_plug_name=>'Set REST Service endpoint URL'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(3702266226375415449)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1923273644129689018)
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1923273780208689020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1923273644129689018)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3702300197334415561)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1923273667473689019)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1923273644129689018)
,p_button_name=>'APPLY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(3702300197334415561)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1923274642602689028)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1923273468151689017)
,p_name=>'P6_ENDPOINT_URL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1923273442005689016)
,p_prompt=>'REST Service URL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_api.id(3702299208889415548)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'URL'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(576782331732649375)
,p_validation_name=>'Endpoint URL must start with http'
,p_validation_sequence=>10
,p_validation=>'substr(:P6_ENDPOINT_URL, 1, 4) = ''http'''
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Please provide a URL that begins with, "http".'
,p_validation_condition=>'P6_ENDPOINT_URL'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_associated_item=>wwv_flow_api.id(1923273468151689017)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1923273853286689021)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1923273780208689020)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1923273992714689022)
,p_event_id=>wwv_flow_api.id(1923273853286689021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1923274101329689023)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set URL Endpoint'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_response       clob;',
'    l_workspace_name apex_applications.workspace%type;',
'begin',
'    delete from eba_restdemo_sample_urls where name = ''ORDS EMP'';',
'    if :P6_ENDPOINT_URL is not null then',
'        insert into eba_restdemo_sample_urls ( name, url ) values (''ORDS EMP'', :P6_ENDPOINT_URL);',
'        :SAMPLE_ENDPOINT_URL := :P6_ENDPOINT_URL;',
'    else',
'        select workspace into l_workspace_name',
'          from apex_applications',
'         where application_id = v( ''APP_ID'' );',
'',
'         :SAMPLE_ENDPOINT_URL := apex_util.host_url(''APEX_PATH'') ||',
'             lower( l_workspace_name ) || ''/'' ||',
'            ''hr/employees'';',
'    end if;',
'        ',
'    begin',
'        :SAMPLE_SERVICE_AVAILABLE := ''OK'';',
'',
'        l_response := apex_web_service.make_rest_request( :SAMPLE_ENDPOINT_URL, ''GET'' );',
'',
'        if apex_web_service.g_status_code not between 200 and 299 then',
'            :SAMPLE_SERVICE_AVAILABLE := ''HTTP-''|| apex_web_service.g_status_code;',
'        end if;',
'',
'    exception',
'        when others then',
'          if sqlcode = -29273 then',
'              if instr(sqlerrm, ''24247'') > 0 then ',
'                  :SAMPLE_SERVICE_AVAILABLE := ''NO_ACL'';',
'              elsif instr(sqlerrm, ''29024'') > 0 then',
'                  :SAMPLE_SERVICE_AVAILABLE := ''NO_WALLET'';',
'              else ',
'                  :SAMPLE_SERVICE_AVAILABLE := ''NO_NETWORK'';',
'             end if;',
'         end if;',
'    end;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1923273667473689019)
,p_process_success_message=>'REST Service Endpoint set. '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1923274260018689025)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Endpoint URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    select url ',
'      into :P6_ENDPOINT_URL',
'      from eba_restdemo_sample_urls',
'     where name = ''ORDS EMP'';',
'exception',
'    when NO_DATA_FOUND then',
'        :P6_ENDPOINT_URL := :SAMPLE_ENDPOINT_URL;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
