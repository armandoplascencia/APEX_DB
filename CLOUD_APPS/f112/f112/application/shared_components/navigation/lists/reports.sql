prompt --application/shared_components/navigation/lists/reports
begin
--   Manifest
--     LIST: Reports
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(17905704871763756409)
,p_name=>'Reports'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15871103886601191571)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Customers by Category'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_text_01=>'Chart of customer counts'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15871108057960227578)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'Customers by Geography'
,p_list_item_link_target=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_text_01=>'Chart of customer counts'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(15872023399538344984)
,p_list_item_display_sequence=>3
,p_list_item_link_text=>'Customers by Reference Type'
,p_list_item_link_target=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_text_01=>'Chart of customer counts '
,p_required_patch=>wwv_flow_api.id(14388443627311190296)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(14974357082845946375)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Customer Detail'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-table'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Customer detail report with options to download and subscribe.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17905913181897256757)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Recent Updates'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP,29:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Recent activity, changes to this customer repository'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(16694001625976069055)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Updates'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'View date of last update to customers in a calendar format.  Use this report to see what customers have been recently updated.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17912515511664507676)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Tags'
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-tag'
,p_list_text_01=>'Display tag clouds'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(2132273862613376427)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Timeline'
,p_list_item_link_target=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clock-o'
,p_list_text_01=>'Recent activity, changes to this customer repository'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
