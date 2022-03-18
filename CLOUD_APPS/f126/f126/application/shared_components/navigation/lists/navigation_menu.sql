prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1832886675301200108)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1832886795619200115)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1,3,14,31,32,10,33,34,11,28,39'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1832886896940200115)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Timeline'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clock-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1832886978215200115)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'Search'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-search'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,13'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1832887105321200115)
,p_list_item_display_sequence=>4
,p_list_item_link_text=>'Tags'
,p_list_item_link_target=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tags'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1832887176652200115)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gear'
,p_security_scheme=>wwv_flow_api.id(3336588467926114584)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27,28,4,25,26,7,8,23,24,15,16,17,29,40,39,175,9,35,30,37,18,19,38,53,54,41,100,5,6,43,41,40,42,44,6'
);
wwv_flow_api.component_end;
end;
/
