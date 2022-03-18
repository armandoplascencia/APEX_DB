prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(1222136671983413726)
,p_name=>'0'
,p_alias=>'0'
,p_step_title=>'0'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_upd_yyyymmddhh24miss=>'20200127101224'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1298510349384542975)
,p_plug_name=>'Navigation'
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_06'
,p_list_id=>wwv_flow_api.id(1298508964837537977)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(1797874227546014372)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1713299514544763972)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1713280284433763827)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
,p_plug_comment=>'Footer'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1713298966415763971)
,p_button_sequence=>20
,p_button_name=>'LOGOUT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1713291666966763854)
,p_button_image_alt=>'Log Out'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:location.href="&LOGOUT_URL.";'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1713298564013763971)
,p_button_sequence=>10
,p_button_name=>'MENU'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(1713291666966763854)
,p_button_image_alt=>'Menu'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_cattributes=>'data-icon="bars" data-iconpos="notext" data-direction="reverse"'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1713299791926763972)
,p_name=>'open panel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1713298966415763971)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.component_end;
end;
/
