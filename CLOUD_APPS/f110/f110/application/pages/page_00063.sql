prompt --application/pages/page_00063
begin
--   Manifest
--     PAGE: 00063
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
 p_id=>63
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_tab_set=>'TS1'
,p_name=>'Poll Submitted'
,p_alias=>'POLL-SUBMITTED'
,p_step_title=>'Poll Submitted'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'@media only screen and (max-width: 640px) {',
'section.uRegion {',
'  width: auto !important;',
'}',
'}'))
,p_step_template=>wwv_flow_api.id(14690156334092251112)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301100151'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14019780501353025660)
,p_plug_name=>'Poll Submitted!'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--defaultIcons:t-Alert--success'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14690160537466251126)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.p(''<p>Thank you for submitting your poll</p>'');',
'for c1 in (',
'   select thank_you_text',
'     from eba_qpoll_polls',
'    where id = :POLL_ID',
') loop',
'   if c1.thank_you_text is not null then',
'      sys.htp.p(''<p>''||apex_escape.html(c1.thank_you_text)||''</p>'');',
'   end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14093459096826803469)
,p_plug_name=>'hide nobody'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_display_sequence=>10
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
 p_id=>wwv_flow_api.id(14020670493437446738)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14019780501353025660)
,p_button_name=>'RETURN_TO_HOME'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_image_alt=>'Return to application home'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_security_scheme=>wwv_flow_api.id(250464535289234829)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14020670205426440740)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(14019780501353025660)
,p_button_name=>'VIEW_RESPONSES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(14690191414518251222)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Responses'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:::'
,p_security_scheme=>wwv_flow_api.id(14021638908096383157)
);
wwv_flow_api.component_end;
end;
/
