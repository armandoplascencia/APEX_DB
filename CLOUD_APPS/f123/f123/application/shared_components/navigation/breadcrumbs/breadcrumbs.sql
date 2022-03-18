prompt --application/shared_components/navigation/breadcrumbs/breadcrumbs
begin
--   Manifest
--     MENU: breadcrumbs
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>123
,p_default_id_offset=>111717178695017138
,p_default_owner=>'MISO'
);
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(3246092891286859286)
,p_name=>'breadcrumbs'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(163366704731796891)
,p_parent_id=>wwv_flow_api.id(1936461875479460033)
,p_short_name=>'Web Sources and PL/SQL'
,p_link=>'f?p=&APP_ID.:223:&SESSION.::&DEBUG.:::'
,p_page_id=>223
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(171281466920384137)
,p_parent_id=>wwv_flow_api.id(1936461875479460033)
,p_short_name=>'Github Repositories'
,p_link=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.:::'
,p_page_id=>221
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(172111524878900863)
,p_parent_id=>wwv_flow_api.id(3246099263165894064)
,p_short_name=>'REST Endpoints Status'
,p_link=>'f?p=&FLOW_ID.:301:&SESSION.'
,p_page_id=>301
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(185847214064526300)
,p_parent_id=>wwv_flow_api.id(1936461875479460033)
,p_short_name=>'Join Local Data'
,p_link=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.:::'
,p_page_id=>224
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1936461720052457994)
,p_parent_id=>wwv_flow_api.id(1936461875479460033)
,p_short_name=>'Local REST Data'
,p_link=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_page_id=>11
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1936461875479460033)
,p_parent_id=>0
,p_short_name=>'Sample REST Services'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1936462172700462072)
,p_parent_id=>wwv_flow_api.id(1936461875479460033)
,p_short_name=>'Simple Report'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1936462708708463452)
,p_parent_id=>wwv_flow_api.id(1936461875479460033)
,p_short_name=>'Report with Pagination'
,p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(1936463175577467923)
,p_parent_id=>wwv_flow_api.id(1936461875479460033)
,p_short_name=>'Report with Query'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(3246098568695890726)
,p_parent_id=>wwv_flow_api.id(3246099263165894064)
,p_short_name=>'Reset Data'
,p_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::'
,p_page_id=>39
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(3246099263165894064)
,p_parent_id=>wwv_flow_api.id(1936461875479460033)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:::'
,p_page_id=>35
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(4054570313492739900)
,p_parent_id=>wwv_flow_api.id(3246099263165894064)
,p_short_name=>'Application Theme Style'
,p_link=>'f?p=&APP_ID.:5:&SESSION.'
,p_page_id=>5
);
wwv_flow_api.component_end;
end;
/
