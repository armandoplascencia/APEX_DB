prompt --application/shared_components/user_interface/lovs/lov_dataload_customers
begin
--   Manifest
--     LOV_DATALOAD_CUSTOMERS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(15899775393494923197)
,p_lov_name=>'LOV_DATALOAD_CUSTOMERS'
,p_lov_query=>'.'||wwv_flow_api.id(15899775393494923197)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899787542057923212)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unique ID'
,p_lov_return_value=>'ID'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899784305525923210)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Customer Name'
,p_lov_return_value=>'CUSTOMER_NAME'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899791096442923216)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Status'
,p_lov_return_value=>'STATUS_ID'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899776263484923204)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Category'
,p_lov_return_value=>'CATEGORY_ID'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899787072123923211)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Geography'
,p_lov_return_value=>'GEOGRAPHY_ID'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899787918203923212)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'Industry'
,p_lov_return_value=>'INDUSTRY_ID'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899792348614923217)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'Tags'
,p_lov_return_value=>'TAGS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899789530640923214)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'Referenceable Y/N'
,p_lov_return_value=>'REFERENCABLE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899788665049923214)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'Marque Customer Y/N'
,p_lov_return_value=>'MARQUEE_CUSTOMER_YN'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899789074234923214)
,p_lov_disp_sequence=>90
,p_lov_disp_value=>'Number of Users'
,p_lov_return_value=>'NUMBER_OF_USERS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899791915041923217)
,p_lov_disp_sequence=>100
,p_lov_disp_value=>'Summary'
,p_lov_return_value=>'SUMMARY'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899791549471923216)
,p_lov_disp_sequence=>200
,p_lov_disp_value=>'Stock Symbol'
,p_lov_return_value=>'STOCK_SYMBOL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899786325447923211)
,p_lov_disp_sequence=>210
,p_lov_disp_value=>'DUNS #'
,p_lov_return_value=>'DUNS'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899790742226923216)
,p_lov_disp_sequence=>220
,p_lov_disp_value=>'SIC'
,p_lov_return_value=>'SIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899793904693923218)
,p_lov_disp_sequence=>230
,p_lov_disp_value=>'Web Site'
,p_lov_return_value=>'WEB_SITE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899788296122923214)
,p_lov_disp_sequence=>240
,p_lov_disp_value=>'LinkedIn'
,p_lov_return_value=>'LINKEDIN'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899785533967923210)
,p_lov_disp_sequence=>250
,p_lov_disp_value=>'Customer Profile'
,p_lov_return_value=>'CUSTOMER_PROFILE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899786687641923211)
,p_lov_disp_sequence=>250
,p_lov_disp_value=>'Facebook'
,p_lov_return_value=>'FACEBOOK'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(15899792702159923217)
,p_lov_disp_sequence=>260
,p_lov_disp_value=>'Twitter'
,p_lov_return_value=>'TWITTER'
);
wwv_flow_api.component_end;
end;
/
