prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Opt Out of Email'
,p_alias=>'OPTOUT'
,p_step_title=>'Opt Out of Email'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14058317091707435618)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'@media only screen and (max-width: 640px) {',
'section.uRegion {',
'  width: auto !important;',
'}',
'}'))
,p_step_template=>wwv_flow_api.id(14690156334092251112)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210518153415'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14058273806628523583)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14690161967644251135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14058274209721523587)
,p_plug_name=>'Opt Out'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'<p>Clicking the "Opt Out" button below, will stop all &APPLICATION_TITLE. emails from being delivered to your email address. Click the "Cancel" button if you''d like to keep receiving emails from &APPLICATION_TITLE..</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_qpoll_email_opt_out',
' where respondent_id = :P33_PERSON_ID;'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14058274800883523590)
,p_plug_name=>'Opt In'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690171167000251156)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'<p>You have already opted out from receiving emails from &APPLICATION_TITLE.. If you would like to start receiving emails from &APPLICATION_TITLE. again, click the "Opt Back In" button below. Otherwise, click the "Cancel" button.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_qpoll_email_opt_out',
' where respondent_id = :P33_PERSON_ID;'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14093463192895868637)
,p_plug_name=>'hide nobody'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'<style>.userBlock{display: none !important} .logoBarNav {padding-top: 8px;visibility: hidden;}</style>'
,p_translate_title=>'N'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_authentication.is_authenticated then',
'   return false;',
'else',
'   return true;',
'end if;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14058275192580523591)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(14058274800883523590)
,p_button_name=>'OPT_IN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opt Back In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'select 1 from eba_qpoll_email_opt_out where respondent_id = :P33_PERSON_ID'
,p_button_condition_type=>'EXISTS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14058274390044523588)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(14058274209721523587)
,p_button_name=>'OPT_OUT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Opt Out'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'select 1 from eba_qpoll_email_opt_out where respondent_id = :P33_PERSON_ID'
,p_button_condition_type=>'NOT_EXISTS'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14058317793621443609)
,p_branch_name=>'out out confirmed'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:33::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(14058274390044523588)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14058274000720523585)
,p_name=>'P33_PERSON_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14058273806628523583)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14058275382743523592)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Opt Out'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into eba_qpoll_email_opt_out',
'(respondent_id)',
'values',
'(:P33_PERSON_ID);'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14058274390044523588)
,p_process_when=>'P33_PERSON_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'You''ve successfully opted-out of receiving emails from &APPLICATION_TITLE..'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14058275590776523593)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Opt In'
,p_process_sql_clob=>'delete from eba_qpoll_email_opt_out where respondent_id = :P33_PERSON_ID;'
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'#SQLERRM#'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14058275192580523591)
,p_process_when=>'P33_PERSON_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'You''ve successfully opted back in to receiving emails from &APPLICATION_TITLE..'
);
wwv_flow_api.component_end;
end;
/
