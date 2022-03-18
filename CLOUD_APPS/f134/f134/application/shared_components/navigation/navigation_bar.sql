prompt --application/shared_components/navigation/navigation_bar
begin
--   Manifest
--     ICON BAR ITEMS: 134
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(6805062505102453264)
,p_icon_sequence=>10
,p_icon_image=>'fa-question-circle'
,p_icon_subtext=>'Help'
,p_icon_target=>'f?p=&APP_ID.:help:&SESSION.::&DEBUG.:::'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(7857548799986702751)
,p_icon_sequence=>20
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(7910340383319702346)
,p_icon_sequence=>30
,p_icon_subtext=>'Login'
,p_icon_target=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::::'
,p_icon_image_alt=>'Login'
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond_type=>'USER_IS_PUBLIC_USER'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.component_end;
end;
/
