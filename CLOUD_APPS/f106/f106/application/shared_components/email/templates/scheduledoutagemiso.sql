prompt --application/shared_components/email/templates/scheduledoutagemiso
begin
--   Manifest
--     REPORT LAYOUT: Scheduledoutagemiso
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>106
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_email_template(
 p_id=>wwv_flow_api.id(76825401991203171)
,p_name=>'Scheduledoutagemiso'
,p_static_id=>'SCHEDULEDOUTAGEMISO'
,p_subject=>'EMAIL.TEMPLATE.SUBJECT_EXAMPLE.SO'
,p_html_body=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Hello #SERVICE_USER#,<br>',
'<br>',
'Please be aware that your service #SERVICE_NAME# has an upcoming scheduled outage.<br>',
'The outage is scheduled to begin at #OUTAGE_START# and is planned to be unavailable for #OUTAGE_DURATION# #OUTAGE_TIMEFRAME#.<br>',
'<br>',
'The following will be performed during this scheduled outage:<br>',
'#OUTAGE_REASON#<br>',
'<br>',
'<br>',
'For any issues relating to this outage please contact #OUTAGE_CONTACT#.<br>',
'<br>',
'Thank you for your understanding,<br>',
'#SERVICE_TEAM#'))
,p_html_header=>'<b style="font-size: 24px;">My Application</b>'
,p_html_footer=>'<a href="#MY_APPLICATION_LINK#">Visit My Application and manage your email preferences</a>.'
,p_text_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Hello #SERVICE_USER#,',
'',
'Please be aware that your service #SERVICE_NAME# has an upcoming scheduled outage.',
'The outage is scheduled to begin at #OUTAGE_START# and is planned to be unavailable for #OUTAGE_DURATION# #OUTAGE_TIMEFRAME#.',
'',
'The following will be performed during this scheduled outage:',
'#OUTAGE_REASON#',
'',
'For any issues relating to this outage please contact #OUTAGE_CONTACT#.',
'',
'Thank you for your understanding,',
'#SERVICE_TEAM#',
''))
);
wwv_flow_api.component_end;
end;
/
