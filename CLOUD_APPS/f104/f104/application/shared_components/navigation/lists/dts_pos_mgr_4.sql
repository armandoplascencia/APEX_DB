prompt --application/shared_components/navigation/lists/dts_pos_mgr_4
begin
--   Manifest
--     LIST: DTS_POS_MGR_4
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>104
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(44163511965146929)
,p_name=>'DTS_POS_MGR_4'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44172171916146933)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Interface Auth'
,p_list_item_link_target=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44172543911146933)
,p_list_item_display_sequence=>41
,p_list_item_link_text=>'Interface Actions'
,p_list_item_link_target=>'f?p=&APP_ID.:46:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44172995232146934)
,p_list_item_display_sequence=>42
,p_list_item_link_text=>'Auth Actions Asc'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44173362799146934)
,p_list_item_display_sequence=>43
,p_list_item_link_text=>'Catalog Actions Asc'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(44173736738146934)
,p_list_item_display_sequence=>44
,p_list_item_link_text=>'Web Service Catalog'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
