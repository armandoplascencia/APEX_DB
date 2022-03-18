prompt --application/shared_components/navigation/lists/admin_code_tables
begin
--   Manifest
--     LIST: Admin Code Tables
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
 p_id=>wwv_flow_api.id(5362414377815217862)
,p_name=>'Admin Code Tables'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(3478894147623712767)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Quarters'
,p_list_item_link_target=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Manage the quarters (fiscal or calendar) maintained in this application'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362414924006217863)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Status Codes'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pencil'
,p_list_text_01=>'Manage domain of status codes'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(18986355767441619143)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Regions and Countries'
,p_list_item_link_target=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.:RP,RIR,135:::'
,p_list_item_icon=>'fa-globe'
,p_list_text_01=>'Manage which regions and countries are available for projects'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(18990974587291614877)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(4036493874756188712)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Issue &CAT_TITLE_PL.'
,p_list_item_link_target=>'f?p=&APP_ID.:153:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bug'
,p_list_text_01=>'Manage the categories available for issues to be assigned to.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(4036491964090119980)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(228696739321407376)
,p_list_item_display_sequence=>75
,p_list_item_link_text=>'Issue Levels'
,p_list_item_link_target=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-crosshairs'
,p_list_text_01=>'Manage the levels available for issues to be assigned to.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362417355416217865)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'&CAT_TITLE_PL.'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-pencil-square-o'
,p_list_text_01=>'Manage domain of &CAT_TITLE_PL_LC. used to group projects.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362422558379239129)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Status Update Types'
,p_list_item_link_target=>'f?p=&APP_ID.:81:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pencil'
,p_list_text_01=>'Status updates are classified as a "type of update".  Use this interface to manage the list of available status update types.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362422822845241991)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Action Item Types'
,p_list_item_link_target=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-pencil'
,p_list_text_01=>'Each action item can be of a particular type.  Use this to manage the list of available types.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11727828628292318316)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Project Roles'
,p_list_item_link_target=>'f?p=&APP_ID.:160:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-lock'
,p_list_text_01=>'Manage project  role definitions.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12210332357668801422)
,p_list_item_display_sequence=>115
,p_list_item_link_text=>'Project Sizes'
,p_list_item_link_target=>'f?p=&APP_ID.:156:&SESSION.::&DEBUG.:RP,RIR,156:::'
,p_list_item_icon=>'fa-signal'
,p_list_text_01=>'Manage the list of sizes available for projects'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(12240751934287757551)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(11861858215833534686)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Involvement Levels'
,p_list_item_link_target=>'f?p=&APP_ID.:165:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-male'
,p_list_text_01=>'Define domain of classifications that are used to define the level of engagement for each person for each project.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(12233039446649971820)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12139614777818539259)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Resource Types'
,p_list_item_link_target=>'f?p=&APP_ID.:172:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-building'
,p_list_text_01=>'When using resources, define the domain of resources that can be associated with any project.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(12130127162343753660)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(19266576503475222347)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Deal Types'
,p_list_item_link_target=>'f?p=&APP_ID.:206:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-certificate'
,p_list_text_01=>'Define the Deal Types that are to be used in this application.'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(19245446063791282124)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
