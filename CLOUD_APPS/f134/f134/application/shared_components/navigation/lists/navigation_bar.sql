prompt --application/shared_components/navigation/lists/navigation_bar
begin
--   Manifest
--     LIST: Navigation Bar
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
 p_id=>wwv_flow_api.id(6806655072211262856)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5352734203580502901)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'a-Icon icon-home'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_02=>'icon-only'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15440670726361760449)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Search'
,p_list_item_link_target=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.:RP,138:::'
,p_list_item_icon=>'fa-search'
,p_list_item_icon_attributes=>'title="#LIST_LABEL#"'
,p_list_item_icon_alt_attribute=>'alt="#LIST_LABEL#"'
,p_list_text_02=>'icon-only'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17000841929336896388)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Feedback'
,p_list_item_link_target=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:102:P102_APPLICATION_ID,P102_PAGE_ID:&APP_ID.,&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-comment-o'
,p_list_item_icon_attributes=>'title="#LIST_LABEL#"'
,p_list_item_icon_alt_attribute=>'alt="#LIST_LABEL#"'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_PAGE_ID != 102'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_text_02=>'icon-only'
,p_required_patch=>wwv_flow_api.id(17003750519035551380)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5352735539234524575)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Administration'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-wrench'
,p_list_text_02=>'icon-only'
,p_list_text_10=>'a-Icon icon-gears-alt'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19890465531778158732)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Following'
,p_list_item_link_target=>'f?p=&APP_ID.:888:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bookmark-o'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 ',
'from EBA_PROJ_STATUS_FAVORITES f ',
'where f.user_name = upper(:APP_USER)'))
,p_list_text_02=>'icon-only'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6806655538928262857)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Help'
,p_list_item_link_target=>'f?p=&APP_ID.:1001:&SESSION.::&DEBUG.:1001:P1001_PAGE_ID:&APP_PAGE_ID.:'
,p_list_item_icon=>'fa-question-circle-o'
,p_list_text_02=>'icon-only'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6806655858002262858)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'&NICE_USERNAME.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16948378838669425777)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'View My Profile'
,p_list_item_link_target=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.:RP:P137_ID:&CURRENT_USER_ID.:'
,p_list_item_icon=>'fa-user'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_proj_status_users',
'where upper(username) = upper(:APP_USER)'))
,p_parent_list_item_id=>wwv_flow_api.id(6806655858002262858)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15322173673777853760)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'My Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:194:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dashboard'
,p_parent_list_item_id=>wwv_flow_api.id(6806655858002262858)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6806656127453262858)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Preferences'
,p_list_item_link_target=>'f?p=&APP_ID.:130:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-heart-o'
,p_parent_list_item_id=>wwv_flow_api.id(6806655858002262858)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1531300763236479140)
,p_list_item_display_sequence=>105
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(6806655858002262858)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6806656406641262858)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(6806655858002262858)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
