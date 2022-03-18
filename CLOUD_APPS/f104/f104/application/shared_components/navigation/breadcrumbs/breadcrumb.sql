prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>104
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(41673262749533053)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(41673471038533054)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(41871692173533451)
,p_short_name=>'Author'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(41892118979533590)
,p_short_name=>'Document Status'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(41911306672533686)
,p_short_name=>'Document Type'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(41930982871533784)
,p_short_name=>'Document Key Words'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(41954415694533886)
,p_short_name=>'Document'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(41980194849533986)
,p_short_name=>'Document Word Asc'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42000642586534077)
,p_short_name=>'Author Document Asc'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42020960820534173)
,p_short_name=>'System Name'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42042299517534267)
,p_short_name=>'Business Process'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42064164884534363)
,p_short_name=>'System Business Process Asc'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42084040133534459)
,p_short_name=>'Event Type'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42105727295534554)
,p_short_name=>'Event'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42128447884534651)
,p_short_name=>'Bus Process Event Possible'
,p_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42149005257534743)
,p_short_name=>'Transaction Type'
,p_link=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42168830139534837)
,p_short_name=>'Transaction'
,p_link=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42189277340534935)
,p_short_name=>'Act Bus Process Event'
,p_link=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42211454882535036)
,p_short_name=>'Resources'
,p_link=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>34
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42238343563535134)
,p_short_name=>'Interface File'
,p_link=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>36
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42267399722535234)
,p_short_name=>'Interface Source'
,p_link=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>38
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42292369104535331)
,p_short_name=>'Interface Contrib'
,p_link=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>40
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42316767069535438)
,p_short_name=>'Resource Contrib File Asc'
,p_link=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>42
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42338585988535541)
,p_short_name=>'Interface Auth'
,p_link=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>44
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42360773097535631)
,p_short_name=>'Interface Actions'
,p_link=>'f?p=&APP_ID.:46:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>46
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42383751889535729)
,p_short_name=>'Web Service Catalog'
,p_link=>'f?p=&APP_ID.:48:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>48
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42404967700535821)
,p_short_name=>'Auth Actions Asc'
,p_link=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42426597963535917)
,p_short_name=>'Catalog Actions Asc'
,p_link=>'f?p=&APP_ID.:52:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42446878115536009)
,p_short_name=>'Tags'
,p_link=>'f?p=&APP_ID.:54:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>54
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42464059416536098)
,p_short_name=>'Tags Tsum'
,p_link=>'f?p=&APP_ID.:56:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>56
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(42476510642536184)
,p_short_name=>'Tags Sum'
,p_link=>'f?p=&APP_ID.:58:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>58
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(43202556729537837)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_api.component_end;
end;
/
