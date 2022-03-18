prompt --application/shared_components/navigation/breadcrumbs/breadcrumb1
begin
--   Manifest
--     MENU: Breadcrumb1
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(17898167465795867229)
,p_name=>'Breadcrumb1'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(15929205302439094318)
,p_parent_id=>wwv_flow_api.id(15790448299628350517)
,p_short_name=>'User Details'
,p_link=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_page_id=>58
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17898377360086903411)
,p_parent_id=>wwv_flow_api.id(17898402069278019622)
,p_short_name=>'Customer Details'
,p_link=>'f?p=&APP_ID.:2:&SESSION.:HOME_CUSTOMER_DETAILS:&DEBUG.:RP,7::'
,p_page_id=>2
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(17898402069278019622)
,p_short_name=>'Customers'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.component_end;
end;
/
