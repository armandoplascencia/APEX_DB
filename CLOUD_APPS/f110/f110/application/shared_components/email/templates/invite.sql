prompt --application/shared_components/email/templates/invite
begin
--   Manifest
--     REPORT LAYOUT: Poll Invitation or Reminder
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
 p_id=>wwv_flow_api.id(657612783734005891)
,p_name=>'Poll Invitation or Reminder'
,p_static_id=>'INVITE'
,p_subject=>'#SUBJECT#'
,p_html_body=>'#BODY!RAW#'
,p_html_header=>'#APPLICATION_TITLE#'
,p_html_footer=>'<div style="color: #707070;font-family: Arial;font-size: 12px;line-height: 125%;text-align:center;"> This is a system generated email. Please do not reply to this message. #OPT_OUT_TEXT!RAW#</div>'
,p_text_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#BODY#',
'',
'This is a system generated email. Please do not reply to this message. #OPT_OUT_TEXT#'))
);
wwv_flow_api.component_end;
end;
/
