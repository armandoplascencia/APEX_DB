prompt --application/shared_components/navigation/lists/activity_reports
begin
--   Manifest
--     LIST: Activity Reports
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(9028017725561683466)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6205727902669136184)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Page Views by Day'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Monthly calendar of application activity reporting distinct users and total page views by day.'
,p_list_text_02=>'calendarIcon'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9028017933664683466)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Interactive report of each page view.  View user, elapsed time, and page.'
,p_list_text_02=>'reportIcon'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'38'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9028020721236720007)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Report of page views aggregated by user.'
,p_list_text_02=>'reportIcon'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'38'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7977072404340820885)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Activity Calendar by User by Day'
,p_list_item_link_target=>'f?p=&APP_ID.:94:&SESSION.::&DEBUG.:RP,94:::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Page views by user summarized by day in a monthly calendar.'
,p_list_text_02=>'calendarIcon'
,p_security_scheme=>wwv_flow_api.id(7306166303644991446)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6184061212140296802)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Application Activity by Page'
,p_list_item_link_target=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Use this report to review application page performance and popularity.  A weighted page performance column multiplies page views by median rendering time.  Use this report to validate application performance.'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6806721182515524788)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Email Log'
,p_list_item_link_target=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-envelope-o'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Show emails sent from this system.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6806722603626545992)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Search Results'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'View Log of who searched for what.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362425797720288047)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-alert'
,p_list_text_01=>'Report of unexpected errors logged by this application'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
