prompt --application/shared_components/navigation/lists/status_reports_tabs
begin
--   Manifest
--     LIST: Status Reports Tabs
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
 p_id=>wwv_flow_api.id(6170277083765521359)
,p_name=>'Status Reports Tabs'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6170277293716521365)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'By Date'
,p_list_item_link_target=>'f?p=&APP_ID.:117:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'117'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6181263484957645092)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'By Submitter'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
