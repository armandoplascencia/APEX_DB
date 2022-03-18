prompt --application/shared_components/navigation/navigation_bar
begin
--   Manifest
--     ICON BAR ITEMS: 129
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>129
,p_default_id_offset=>101668256384016436
,p_default_owner=>'MISO'
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(3236029445500626988)
,p_icon_sequence=>10
,p_icon_subtext=>'Administration'
,p_icon_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(10710057921040761818)
,p_icon_sequence=>20
,p_icon_subtext=>'Help'
,p_icon_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>'101'
,p_icon_bar_disp_cond_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(10710058635585765932)
,p_icon_sequence=>30
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond=>'101'
,p_icon_bar_disp_cond_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.component_end;
end;
/
