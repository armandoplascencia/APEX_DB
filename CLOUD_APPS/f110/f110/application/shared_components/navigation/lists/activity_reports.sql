prompt --application/shared_components/navigation/lists/activity_reports
begin
--   Manifest
--     LIST: Activity Reports
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(17708556057701564219)
,p_name=>'Activity Reports'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(29828422387277979990)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'All Respondents'
,p_list_item_link_target=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table-user'
,p_list_text_01=>'View all respondents across all Polls.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14125273596549990656)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Respondent Details'
,p_list_item_link_target=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:86,RIR:::'
,p_list_item_icon=>'fa-file-o'
,p_list_text_01=>'Displays polls taken and those invited to take but not taken for a selected respondent.'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17709783949201848458)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Application Page Views'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_text_01=>'Report of individual page view, reporting the page, elapsed server generation time, user, date and other information.'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17709791354049849900)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Top Users'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_list_text_01=>'Report of page views summarized by user by day.'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16627796038710488911)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Activity Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Monthly calendar of page view activity summarized by user by day.'
,p_list_text_02=>'calendarIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14054722581411167341)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Application Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-alert'
,p_list_text_01=>'Report of all internal errors encountered within the application.'
,p_list_text_02=>'&P4_APP_ERROR_LOG_CNT.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14054722903827172119)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Application User Log'
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:RIR:::'
,p_list_item_icon=>'fa-file-o'
,p_list_text_01=>'Report of all users created via self-service requests.'
,p_list_text_02=>'&P4_APP_USER_LOG_CNT.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14054723192613177303)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Application Log'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:RP,RIR:::'
,p_list_item_icon=>'fa-file-o'
,p_list_text_01=>'Report of various administrative actions.'
,p_list_text_02=>'&P4_APP_LOG_CNT.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
