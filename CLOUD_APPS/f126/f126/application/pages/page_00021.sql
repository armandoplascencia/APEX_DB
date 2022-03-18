prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Add Multiple Members'
,p_alias=>'ADD-MULTIPLE-MEMBERS'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Multiple Members'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(9022053313788358351)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3336588977096114584)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    Enter or copy and paste email addresses separated by commas, semicolons, or new lines. Extraneous information and duplicates will be filtered out. Click the <strong>Next</strong> button to continue and the <strong>Cancel</strong> button to leave '
||'the Add Multiple Members wizard.',
'</p>'))
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301102340'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(128524529131697060)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797842835406014310)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8114854922473125805)
,p_plug_name=>'Add Multiple Members'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(1797853323124014327)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8114920047957411682)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797855891776014330)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9022023598749333527)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1797876791493014394)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8114855751340125818)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(128524529131697060)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8114856050587125818)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(128524529131697060)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(1797876154044014392)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Next'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7490699724751235463)
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.:21,22::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(8114855751340125818)
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 14-OCT-2010 11:46 by SBKENNED'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8114856421400125826)
,p_branch_action=>'f?p=&APP_ID.:22:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(8114856050587125818)
,p_branch_sequence=>20
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8114855445419125813)
,p_name=>'P21_MBRS'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(8114854922473125805)
,p_prompt=>'List of Email Addresses'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>75
,p_cMaxlength=>32767
,p_cHeight=>14
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter or copy and paste email addresses separated by commas, semicolons, or new lines. Note that if you copy and paste email addresses from email messages, extraneous text will be filtered out.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8114855641689125818)
,p_name=>'P21_GROUP_ID'
,p_is_required=>true
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(8114854922473125805)
,p_prompt=>'Group'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMAIL GROUPS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select group_name d, group_id r',
'  from EBA_ca_email_groups',
' order by 1'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_protection_level=>'S'
,p_help_text=>'Select the Group that these Members will be assigned to.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(8114914622415385419)
,p_name=>'P21_LB'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(8114854922473125805)
,p_display_as=>'NATIVE_STOP_AND_START_HTML_TABLE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(128524608306697061)
,p_name=>'CNX'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(8114855751340125818)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(128524723045697062)
,p_event_id=>wwv_flow_api.id(128524608306697061)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8114885946292240870)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'EBA_ca_api.create_mbrs_collection (',
'    p_users    => :P21_MBRS,',
'    p_group_id => :P21_GROUP_ID );'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(8114856050587125818)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7490698313669232275)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Collections on Cancel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_collection.delete_collection (',
'   p_collection_name => ''BULK_MBRS_CREATE'' );',
'apex_collection.delete_collection (',
'   p_collection_name => ''BULK_MBRS_INVALID'' );'))
,p_process_clob_language=>'PLSQL'
,p_process_when_button_id=>wwv_flow_api.id(8114855751340125818)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8114864132992151895)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'init collections'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wwv_flow_collection.CREATE_OR_TRUNCATE_COLLECTION (''BULK_MBRS_INVALID'');',
'wwv_flow_collection.CREATE_OR_TRUNCATE_COLLECTION (''BULK_MBRS_CREATE'');'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
