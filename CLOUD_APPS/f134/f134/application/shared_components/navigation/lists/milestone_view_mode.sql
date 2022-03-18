prompt --application/shared_components/navigation/lists/milestone_view_mode
begin
--   Manifest
--     LIST: Milestone View Mode
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
 p_id=>wwv_flow_api.id(9066093438056732313)
,p_name=>'Milestone View Mode'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9066093914138732313)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'By Date'
,p_list_item_link_target=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'35'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9066093622996732313)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Monthly Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9066950937365309476)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Interactive Report'
,p_list_item_link_target=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:RP,63,RIR:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'63'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9068454620998183531)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Gantt'
,p_list_item_link_target=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:68:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'68'
);
wwv_flow_api.component_end;
end;
/
