prompt --application/shared_components/navigation/lists/rest_examples
begin
--   Manifest
--     LIST: REST Examples
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>129
,p_default_id_offset=>101668256384016436
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(3236037952643749779)
,p_name=>'REST Examples'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1924835602319796713)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Simple Report'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Display data from external REST service as a tabular report.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1924835866667796713)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Report with Pagination'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:::'
,p_list_item_icon=>'fa-table-play'
,p_list_text_01=>'Browse through a report displaying larger REST service result sets using pagination.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1924836845396802418)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Report with Query'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:4:::'
,p_list_item_icon=>'fa-table-search'
,p_list_text_01=>'Display filtered data from external REST service by typing in a query.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1926416969351501500)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Local REST Data'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:11:::'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_01=>'Synchronize external REST data to a local table to perform reporting and anylysis.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
