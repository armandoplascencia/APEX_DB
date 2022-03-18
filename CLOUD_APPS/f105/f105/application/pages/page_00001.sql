prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>105
,p_default_id_offset=>69016641819901842
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(74382049182121932)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'&APP_TITLE.'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'APNG'
,p_last_upd_yyyymmddhh24miss=>'20181017175950'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74497619275948047)
,p_plug_name=>'Instructions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74307799116121779)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'USER_IS_PUBLIC_USER'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ol>',
'  <li>Click "Register" below.</li>',
'  <li>After registering successfully, click "My Account" to initiate a login process.</li>',
'  <li>Toggle the switch to enable Two-factor Authentication.</li>',
'  <li>Scan the QR code using a security app like <a href="https://support.google.com/accounts/answer/1066447" target="_blank">Google Authenticator</a> or <a href="https://duo.com/product/trusted-users/two-factor-authentication/duo-mobile" target="_bl'
||'ank">Duo Mobile</a></li>',
'  <li>Enter the code to verify that your security app is in sync with the application.</li>',
'  <li>Logout and re-attempt to access "My Account".</li>',
'</ol>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79281198250419559)
,p_plug_name=>'Introduction'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74307799116121779)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'  This application demonstrates the <a href="https://en.wikipedia.org/wiki/Time-based_One-time_Password_algorithm" target="_blank">Time-based One-Time Password</a> (TOTP) implementation found in OraOpenSource <a href="https://github.com/OraOpenSource'
||'/oos-utils" target="_blank">oos-utils</a> version 1.0.0 or later.',
'</p>',
'<p>',
'  This application uses the <a href="https://github.com/kazuhikoarase/qrcode-generator" target="_blank">QR Code Generator</a> implemented by <a href="https://github.com/kazuhikoarase" target="_blank">Kazuhiko Arase</a>',
'</p>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74497588312948046)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(74497619275948047)
,p_button_name=>'REGISTER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(74360112729121828)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Register'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
