prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>115
,p_default_id_offset=>358200981570066140
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(188228516534147947)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'THERWIX'
,p_last_upd_yyyymmddhh24miss=>'20211021131655'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(188241810988151282)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding:t-Form--stretchInputs:t-Form--leftLabels:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(188117525922147832)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'20,21,22,23,24,27,28,31,32,41,42,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,9999,10000,10010,10011,10013,10014,10020'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(188241936009151283)
,p_name=>'P0_TEMPLATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(188241810988151282)
,p_prompt=>'Template'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'R_TEMPLATES'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Please select -'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(188204740689147894)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(188241563174151280)
,p_name=>'FadeOutSuccessMesage'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(188241677603151281)
,p_event_id=>wwv_flow_api.id(188241563174151280)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(function() {',
'  apex.theme42.util.configAPEXMsgs({',
'    autoDismiss: true,',
'    duration: 3000',
'  });',
'});'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(188242026701151284)
,p_name=>'Change Filter'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_TEMPLATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(188242142314151285)
,p_event_id=>wwv_flow_api.id(188242026701151284)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P0_TEMPLATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
