prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'Username Format'
,p_alias=>'USERNAME-FORMAT'
,p_step_title=>'Username Format'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(1398765466955907867)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(3336588467926114584)
,p_protection_level=>'C'
,p_help_text=>'<p>Choose a username format and click the <strong>Apply Changes</strong> button to activate the change. Click the <strong>Cancel</strong> button to leave this page.</p>'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301102339'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1519415763843693419)
,p_plug_name=>'Username Format Preference'
,p_region_css_classes=>'infoTextRegion'
,p_region_template_options=>'#DEFAULT#:t-Alert--warning:t-Alert--horizontal'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(1797840840350014304)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Define whether new users of this application will have an email address username format (e.g. xyz@xyz.com) or a non-email address format (e.g. JOHNDOE)</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1519416755177693466)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1797855891776014330)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(9022023598749333527)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(1797876791493014394)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1519415946171693421)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1519416755177693466)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1519416154638693424)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1519416755177693466)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1797876708820014393)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1519417352618693477)
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1519416154638693424)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1519416373381693425)
,p_name=>'P38_USERNAME_FORMAT'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1519415763843693419)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username Format'
,p_source=>'eba_ca_fw.get_preference_value (''USERNAME_FORMAT'')'
,p_source_type=>'EXPRESSION'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'USERNAME_FORMAT'
,p_lov=>'.'||wwv_flow_api.id(1519417465101693483)||'.'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(1797875884085014387)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
,p_attribute_04=>'VERTICAL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1519417073531693472)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Format Preference'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'eba_ca_fw.set_preference_value (',
'    p_preference_name  => ''USERNAME_FORMAT'',',
'    p_preference_value => :P38_USERNAME_FORMAT);'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1519416154638693424)
,p_process_success_message=>'Username format updated.'
);
wwv_flow_api.component_end;
end;
/
