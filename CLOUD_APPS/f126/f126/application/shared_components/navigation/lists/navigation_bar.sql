prompt --application/shared_components/navigation/lists/navigation_bar
begin
--   Manifest
--     LIST: Navigation Bar
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
 p_id=>wwv_flow_api.id(1298508964837537977)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1298509771772537981)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.:1001:P1001_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1832948984352308169)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1832949304232311722)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Preferences'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-heart-o'
,p_parent_list_item_id=>wwv_flow_api.id(1832948984352308169)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1144558460280617752)
,p_list_item_display_sequence=>52
,p_list_item_link_text=>'Customize Appearance'
,p_list_item_link_target=>'#CUSTOMIZE_URL#'
,p_list_item_icon=>'fa-wrench'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>'''#CUSTOMIZE_URL#'' is not null'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_api.id(1832948984352308169)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1144558779048619856)
,p_list_item_display_sequence=>54
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(1832948984352308169)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1832949601605315043)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(1832948984352308169)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
