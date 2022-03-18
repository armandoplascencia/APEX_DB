prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(19575663121781818)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19575851770781819)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19782681491782114)
,p_short_name=>'Brand'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19801929952782519)
,p_short_name=>'Account'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19822520145782908)
,p_short_name=>'Opportunity Role'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19841412425783306)
,p_short_name=>'Opportunity Quote'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19862579854783706)
,p_short_name=>'Opportunity Type'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19885826680784118)
,p_short_name=>'Opportunity Order'
,p_link=>'f?p=&APP_ID.:12:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19912725553784533)
,p_short_name=>'Opportunity'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19940235599784939)
,p_short_name=>'Account Opportunity'
,p_link=>'f?p=&APP_ID.:16:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19959055198785330)
,p_short_name=>'Usertype'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(19979333859785711)
,p_short_name=>'Username'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20001031205786108)
,p_short_name=>'Cuisine Type'
,p_link=>'f?p=&APP_ID.:22:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>22
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20019144285786502)
,p_short_name=>'Restaurant Type'
,p_link=>'f?p=&APP_ID.:24:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>24
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20036827352786885)
,p_short_name=>'Order Source'
,p_link=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20054124575787262)
,p_short_name=>'Event Type'
,p_link=>'f?p=&APP_ID.:28:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>28
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20074225550787653)
,p_short_name=>'Equipment Type'
,p_link=>'f?p=&APP_ID.:30:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>30
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20098407458788045)
,p_short_name=>'Maintenance Type'
,p_link=>'f?p=&APP_ID.:32:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>32
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20124069559788447)
,p_short_name=>'Operating Calendar'
,p_link=>'f?p=&APP_ID.:34:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>34
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20149224122788856)
,p_short_name=>'Promotion'
,p_link=>'f?p=&APP_ID.:36:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>36
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20169463248789271)
,p_short_name=>'Maint Equip'
,p_link=>'f?p=&APP_ID.:38:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>38
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20191888945789682)
,p_short_name=>'Restaurant'
,p_link=>'f?p=&APP_ID.:40:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>40
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20217008855790093)
,p_short_name=>'Restaurant Hours'
,p_link=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>42
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20237485349790509)
,p_short_name=>'Rest Opt Hrs'
,p_link=>'f?p=&APP_ID.:44:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>44
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20256364663790906)
,p_short_name=>'Vendor Food Category'
,p_link=>'f?p=&APP_ID.:46:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>46
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20277848332791292)
,p_short_name=>'Vendor Product'
,p_link=>'f?p=&APP_ID.:48:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>48
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20301010521791682)
,p_short_name=>'Order Inventory'
,p_link=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>50
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20319723360792069)
,p_short_name=>'Order Status'
,p_link=>'f?p=&APP_ID.:52:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>52
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20340244088792449)
,p_short_name=>'Order Item'
,p_link=>'f?p=&APP_ID.:54:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>54
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20360432812792831)
,p_short_name=>'Restaurant Staff'
,p_link=>'f?p=&APP_ID.:56:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>56
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20380044209793218)
,p_short_name=>'Register'
,p_link=>'f?p=&APP_ID.:58:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>58
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20404435027793590)
,p_short_name=>'The Order'
,p_link=>'f?p=&APP_ID.:60:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>60
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20427187247793966)
,p_short_name=>'Region'
,p_link=>'f?p=&APP_ID.:62:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>62
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20445150195794345)
,p_short_name=>'State'
,p_link=>'f?p=&APP_ID.:64:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>64
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20465070507794724)
,p_short_name=>'City'
,p_link=>'f?p=&APP_ID.:66:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>66
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20487337362795137)
,p_short_name=>'Zipcode'
,p_link=>'f?p=&APP_ID.:68:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>68
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20508424360795555)
,p_short_name=>'City Zip'
,p_link=>'f?p=&APP_ID.:70:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>70
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20527062127795960)
,p_short_name=>'City State'
,p_link=>'f?p=&APP_ID.:72:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>72
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20545093418796358)
,p_short_name=>'Address Type'
,p_link=>'f?p=&APP_ID.:74:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>74
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20564497242796756)
,p_short_name=>'Address'
,p_link=>'f?p=&APP_ID.:76:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>76
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20583144812797154)
,p_short_name=>'Ingredients'
,p_link=>'f?p=&APP_ID.:78:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>78
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20601201873797544)
,p_short_name=>'Meal Prep Ingredients'
,p_link=>'f?p=&APP_ID.:80:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>80
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(20619341587797928)
,p_short_name=>'Meal Prep Instructions'
,p_link=>'f?p=&APP_ID.:82:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>82
);
wwv_flow_api.component_end;
end;
/
