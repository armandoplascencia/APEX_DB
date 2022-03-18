prompt --application/pages/page_01001
begin
--   Manifest
--     PAGE: 01001
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
 p_id=>1001
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Page Help Dialog'
,p_page_mode=>'MODAL'
,p_step_title=>'Help'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(6781091254287890756)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_upd_yyyymmddhh24miss=>'20190906113133'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2871197317914750088)
,p_plug_name=>'Buttons No Help Video'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--slimPadding'
,p_plug_template=>wwv_flow_api.id(6781104860657890779)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2871197538048750090)
,p_plug_name=>'About this Page'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in ',
'(',
'    select page_title, help_text ',
'      from apex_application_pages',
'     where page_id = :P1001_PAGE_ID ',
'       and application_id = :APP_ID',
')',
'loop',
'    if c1.help_text is null then',
'        sys.htp.p(apex_lang.message(''NO_PAGE_HELP_AVAILABLE''));',
'    else',
'        if substr(c1.help_text, 1, 3) != ''<p>'' then',
'            sys.htp.p(''<p>'');',
'        end if;',
'',
'        sys.htp.p(apex_application.do_substitutions(c1.help_text));',
'',
'        if substr(trim(c1.help_text), -4) != ''</p>'' then',
'            sys.htp.p(''</p>'');',
'        end if;',
'    end if;',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4379007904104736299)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2871197317914750088)
,p_button_name=>'SECONDARY_HELP_BTN'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--link'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'&P1001_HELP_ALT_LINK_TEXT.'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'javascript:apex.navigation.openInNewWindow(''&P1001_HELP_ALT_URL.'');'
,p_button_condition=>'P1001_HELP_ALT_URL'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1531297596386465508)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(2871197317914750088)
,p_button_name=>'ABOUT_THIS_APP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--link'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Learn More about &APP_TITLE.'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:HELP:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1531298220054465518)
,p_name=>'P1001_PAGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2871197538048750090)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4379006992942736289)
,p_name=>'P1001_HELP_ALT_URL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2871197538048750090)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(4379007738652736297)
,p_name=>'P1001_HELP_ALT_LINK_TEXT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2871197538048750090)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(4379007066955736290)
,p_computation_sequence=>10
,p_computation_item=>'P1001_HELP_ALT_URL'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'replace(eba_proj_fw.get_preference_value( ''HELP_ALT_URL'' ),''Preference does not exist'',null)'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(4379007818392736298)
,p_computation_sequence=>20
,p_computation_item=>'P1001_HELP_ALT_LINK_TEXT'
,p_computation_point=>'BEFORE_BOX_BODY'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation=>'replace(eba_proj_fw.get_preference_value( ''HELP_ALT_LINK_TEXT'' ),''Preference does not exist'',null)'
);
wwv_flow_api.component_end;
end;
/
