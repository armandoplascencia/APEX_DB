prompt --application/shared_components/email/templates/access_request_approved_without_password
begin
--   Manifest
--     REPORT LAYOUT: Access Request Approved without password
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_email_template(
 p_id=>wwv_flow_api.id(31352812186896317421)
,p_name=>'Access Request Approved without password'
,p_static_id=>'ACCESS_REQUEST_APPROVED_WITHOUT_PASSWORD'
,p_subject=>'#APPLICATION_TITLE# Access'
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h1>You have been granted access to #APPLICATION_TITLE#.</h1> ',
'<p>You may now log in to #APP_LINK#.</p> ',
'<p>Your application login credentials are provided below.</p> ',
'<p> ',
'  Username: #USERNAME# ',
'</p>'))
,p_html_header=>'#APPLICATION_TITLE#'
,p_html_footer=>'<div style="color: #707070;font-family: Arial;font-size: 12px;line-height: 125%;text-align:center;"> This is a system generated email. Please do not reply to this message.</div>'
,p_text_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'You have been granted access to #APPLICATION_TITLE#.',
'You may now log in to #APP_LINK#.',
'Your application login credentials are provided below. ',
' ',
'  Username: #USERNAME# ',
''))
);
wwv_flow_api.component_end;
end;
/
