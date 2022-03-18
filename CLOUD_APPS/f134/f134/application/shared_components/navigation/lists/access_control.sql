prompt --application/shared_components/navigation/lists/access_control
begin
--   Manifest
--     LIST: Access Control
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
 p_id=>wwv_flow_api.id(5362427673123323633)
,p_name=>'Access Control'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362427851656323633)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Access Control List'
,p_list_item_link_target=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Manage application users and role assignments.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
