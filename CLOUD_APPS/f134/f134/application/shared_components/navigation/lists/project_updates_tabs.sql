prompt --application/shared_components/navigation/lists/project_updates_tabs
begin
--   Manifest
--     LIST: Project Updates Tabs
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
 p_id=>wwv_flow_api.id(9066215841584030175)
,p_name=>'Project Updates Tabs'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9066216026951030175)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'By Date'
,p_list_item_link_target=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:59:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'59'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6195381596638372912)
,p_list_item_display_sequence=>27
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:RP:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
