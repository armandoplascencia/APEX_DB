prompt --application/pages/page_00118
begin
--   Manifest
--     PAGE: 00118
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>118
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Regenerate Quarters'
,p_page_mode=>'MODAL'
,p_step_title=>'Regenerate Quarters'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956243783292594674)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306165779537991444)
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_upd_yyyymmddhh24miss=>'20190905142943'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3464853346750033876)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3464853412064033877)
,p_plug_name=>'Form'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3464853624866033879)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3464853346750033876)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3464853917742033882)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3464853346750033876)
,p_button_name=>'REGEN_QTRS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Regenerate Quarters'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3464853513670033878)
,p_name=>'P118_Q1_MONTH'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3464853412064033877)
,p_item_default=>'06'
,p_prompt=>'Month of First Quarter'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'QUARTER_MONTHS'
,p_lov=>'.'||wwv_flow_api.id(3488856436376334841)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the month your company uses as their first month of their first quarter. When you submit this form, 30 years worth of quarters will be generated.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3464855043314033893)
,p_name=>'P118_TZ'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3464853412064033877)
,p_item_default=>'return apex_util.get_session_time_zone;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Timezone'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select timezone_preference ',
'from eba_proj_tz_pref ',
'where username = :APP_USER'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TIMEZONES'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct tzname d, tzname r',
'  from V$TIMEZONE_NAMES',
' order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- Select -'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select the timezone to use for your quarters first and last day values.'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3464855148305033894)
,p_name=>'P118_NUM_YEARS'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3464853412064033877)
,p_item_default=>'30'
,p_prompt=>'Number of Years'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the number of years worth of quarter data you would like generated.'
,p_attribute_02=>'5000'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3464855408439033897)
,p_name=>'P118_YEAR_FORMAT'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3464853412064033877)
,p_item_default=>'YYYY'
,p_prompt=>'Year Format'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'YEAR_FORMAT'
,p_lov=>'.'||wwv_flow_api.id(3490194900613773514)||'.'
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3464855569692033898)
,p_name=>'P118_DELIMITER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3464853412064033877)
,p_item_default=>' - '
,p_prompt=>'Delimiter'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'QUARTER DELIMITER'
,p_lov=>'.'||wwv_flow_api.id(3490201062286789313)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(748281375605960061)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3464853795797033880)
,p_name=>'Cancel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3464853624866033879)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3464853803860033881)
,p_event_id=>wwv_flow_api.id(3464853795797033880)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3464854197583033884)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Regen Quarters'
,p_process_sql_clob=>'eba_proj_dates.gen_quarters(p_start_month => :P118_Q1_MONTH, p_timezone => :P118_TZ, p_num_years => :P118_NUM_YEARS, p_year_fmt => :P118_YEAR_FORMAT, p_delimiter => :P118_DELIMITER);'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3464853917742033882)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3464854389090033886)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Session Data'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3464853917742033882)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3464854262208033885)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3464853917742033882)
);
wwv_flow_api.component_end;
end;
/
