prompt --application/shared_components/navigation/lists/projects
begin
--   Manifest
--     LIST: Projects
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
 p_id=>wwv_flow_api.id(5362384942636657075)
,p_name=>'Projects'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362385115744657076)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dashboard'
,p_list_text_01=>'View dashboard of key metrics'
,p_required_patch=>wwv_flow_api.id(11916093816142635755)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362564937047993529)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Interactive Report'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:1,RIR:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Interactive reporting includes the ability to download, filter, format, and sort report data as well as saving modified reports as "Saved Reports".'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(2836282744433237409)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Headlines Report'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-newspaper-o'
,p_list_text_01=>'Interactive report of project headlines'
,p_required_patch=>wwv_flow_api.id(2770584289789526386)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(2863968999873674011)
,p_list_item_display_sequence=>27
,p_list_item_link_text=>'Heatmap'
,p_list_item_link_target=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-layout-grid-3x'
,p_list_text_01=>'Interactive report of project headlines'
,p_required_patch=>wwv_flow_api.id(2864779554151523619)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(36891141685940672602)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'History Report'
,p_list_item_link_target=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.:126,RIR:::'
,p_list_item_icon=>'fa-table'
,p_list_text_01=>'Interactive report of all changes made in all projects over the last 90 days.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(20108682002358470336)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Issues Report'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22,RIR:::'
,p_list_item_icon=>'fa-bug'
,p_list_text_01=>'Interactive report of all project issues'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362563609239979551)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Links Report'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:21,RIR:::'
,p_list_item_icon=>'fa-external-link'
,p_list_text_01=>'View all links for all projects'
,p_required_patch=>wwv_flow_api.id(11865509704474723851)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24069574606796756739)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'&CAT_TITLE. Stacked Bar Chart'
,p_list_item_link_target=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_text_01=>'Stacked Bar chart of projects counts with each bar representing a &CAT_TITLE_LC..  Each bar is further delineated by project status.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(24069574871858759193)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Status Stacked Bar Chart'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_text_01=>'Stacked Bar chart of projects counts with each bar representing a project status.  Each bar is further delineated by project &CAT_TITLE_LC..'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362394819568739017)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Updates Timeline'
,p_list_item_link_target=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'View all project updates in a timeline.'
,p_required_patch=>wwv_flow_api.id(11865461959584682542)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362544386180855928)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Attachments Timeline'
,p_list_item_link_target=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:RP:::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'View and search all attachments '
,p_required_patch=>wwv_flow_api.id(11865439785610750633)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(5362396234190747434)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Status Reports Timeline'
,p_list_item_link_target=>'f?p=&APP_ID.:117:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'View and search all project status reports'
,p_required_patch=>wwv_flow_api.id(6195737494730111919)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
