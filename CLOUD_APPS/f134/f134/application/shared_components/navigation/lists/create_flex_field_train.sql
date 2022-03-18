prompt --application/shared_components/navigation/lists/create_flex_field_train
begin
--   Manifest
--     LIST: Create Flex Field Train
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
 p_id=>wwv_flow_api.id(6252391798843590380)
,p_name=>'Create Flex Field Train'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6252392105014590380)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Data Source'
,p_list_item_link_target=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6252392410661590382)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Flex Column'
,p_list_item_link_target=>'f?p=&APP_ID.:144:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6252392704658590382)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Form Element'
,p_list_item_link_target=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7662688211354725734)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Select List Options'
,p_list_item_link_target=>'f?p=&APP_ID.:146:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7616201363538839638)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Confirmation'
,p_list_item_link_target=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(6252446509804687380)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
