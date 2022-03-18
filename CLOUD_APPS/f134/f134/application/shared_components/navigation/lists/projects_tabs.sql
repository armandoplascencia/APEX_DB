prompt --application/shared_components/navigation/lists/projects_tabs
begin
--   Manifest
--     LIST: Projects Tabs
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
 p_id=>wwv_flow_api.id(9066182917164985236)
,p_name=>'Projects Tabs'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9068046222522021078)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'By Project'
,p_list_item_link_target=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'64'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9068165224981424826)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'By Owner'
,p_list_item_link_target=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'65'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9068156817278091471)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'By &CAT_TITLE.'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:RP:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'61'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6336862611808721400)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'As a Tree'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(9066183125477985248)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'51'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6255816393185955892)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Interactive Report'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,RIR,1:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
