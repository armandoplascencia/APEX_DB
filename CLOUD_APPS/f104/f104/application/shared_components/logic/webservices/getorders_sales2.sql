prompt --application/shared_components/logic/webservices/getorders_sales2
begin
--   Manifest
--     WEB SERVICE: GetOrders__Sales2
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>104
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(89161428485821441)
,p_name=>'GetOrders__Sales2'
,p_url=>'https://api-apiint.brinkpos.net/Sales2.svc'
,p_action=>'http://www.brinksoftware.com/webservices/sales/v2/ISalesWebService2/GetOrders'
,p_soap_version=>'1.1'
,p_soap_envelope=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:v2="http://www.brinksoftware.com/webservices/sales/v2" xmlns:sys="http://schemas.datacontract.org/2004/07/System">',
'   <soapenv:Header/>',
'   <soapenv:Body>',
'      <v2:GetOrders>',
'         <!--Optional:-->',
'         <v2:request>',
'            <!--Optional:-->',
'            <v2:BusinessDate>2022-01-20</v2:BusinessDate>',
'            <!--Optional:-->',
'            <v2:ExcludeOpenOrders>false</v2:ExcludeOpenOrders>',
'            <!--Optional:-->',
'            <!--<v2:ModifiedTime>',
'               <sys:DateTime>?</sys:DateTime>',
'               <sys:OffsetMinutes>?</sys:OffsetMinutes>',
'            </v2:ModifiedTime>-->',
'            <!--Optional:-->',
'            <v2:PriceRollUp>RollupandDetails</v2:PriceRollUp>',
'         </v2:request>',
'      </v2:GetOrders>',
'   </soapenv:Body>',
'</soapenv:Envelope>'))
);
wwv_flow_api.component_end;
end;
/
