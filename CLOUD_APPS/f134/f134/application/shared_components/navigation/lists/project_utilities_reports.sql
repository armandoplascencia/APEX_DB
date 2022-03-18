prompt --application/shared_components/navigation/lists/project_utilities_reports
begin
--   Manifest
--     LIST: project utilities reports
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
 p_id=>wwv_flow_api.id(6181491110912386987)
,p_name=>'project utilities reports'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362432956941368984)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Tree'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-align-left'
,p_list_text_01=>'View projects as a tree'
,p_required_patch=>wwv_flow_api.id(19890960485833316269)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6181492486481386996)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Project Creation Date Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:98:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'View a monthly calendar of projects displayed by date created'
,p_list_text_02=>'calendarIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6181493091399386996)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Interactive Report of Projects'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,1,RIR:::'
,p_list_item_icon=>'fa-table'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Use the interactive report view to create complex filters, choose arbitrary column combinations and download project data to a spreadsheet.'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(6181548889269034958)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Milestone Summary by Project'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_text_01=>'Interactive report of projects milestone summarized by project'
,p_list_text_02=>'reportIcon'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(20151175965177102564)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'User Involvement Report'
,p_list_item_link_target=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:RP,95,RIR:::'
,p_list_item_icon=>'fa-users'
,p_list_text_01=>'Interactive report of all user involvement'
,p_required_patch=>wwv_flow_api.id(12233039446649971820)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(7802180860984025839)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Project Followers Report'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP,14,RIR:::'
,p_list_item_icon=>'fa-user'
,p_list_text_01=>'Reports of project followers and projects'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362563958873984178)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Search Requests Report'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:RP,13,RIR:::'
,p_list_item_icon=>'fa-eye'
,p_list_text_01=>'View popular search terms'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12238854610612501953)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Project Resources Report'
,p_list_item_link_target=>'f?p=&APP_ID.:158:&SESSION.::&DEBUG.:RP,158,RIR:::'
,p_list_item_icon=>'fa-archive'
,p_list_text_01=>'Report of projects which utilize specific resources'
,p_required_patch=>wwv_flow_api.id(12130127162343753660)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24070355763232532667)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Project Validations Report'
,p_list_item_link_target=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.:RP,114,RIR:::'
,p_list_item_icon=>'fa-check'
,p_list_text_01=>'View and search all project validations'
,p_security_scheme=>wwv_flow_api.id(7306165779537991444)
,p_required_patch=>wwv_flow_api.id(6173574406893658297)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24070494530245236037)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Tags'
,p_list_item_link_target=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tag'
,p_list_text_01=>'View tags in a tag cloud'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
