prompt --application/shared_components/logic/webservices/budget
begin
--   Manifest
--     WEB SERVICE: budget
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>100
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_web_service(
 p_id=>wwv_flow_api.id(49724895491421682)
,p_name=>'budget'
,p_url=>'https://api-apiint.brinkpos.net/budgets.svc?WSDL'
,p_soap_version=>'1.2'
,p_soap_envelope=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:bud="http://www.brinksoftware.com/webservices/budgets">',
'   <soapenv:Header/>',
'   <soapenv:Body>',
'      <bud:GetBudgets>',
'         <bud:request>',
'            <bud:EndDate>2001-01-08</bud:EndDate>',
'            <bud:StartDate>2001-01-01</bud:StartDate>',
'         </bud:request>',
'      </bud:GetBudgets>',
'   </soapenv:Body>',
'</soapenv:Envelope>'))
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(49725110335421692)
,p_ws_id=>wwv_flow_api.id(49724895491421682)
,p_name=>'BASIC_AUTH'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(49725407283421693)
,p_ws_opers_id=>wwv_flow_api.id(49725110335421692)
,p_name=>'username'
,p_input_or_output=>'A'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(49725775490421694)
,p_ws_opers_id=>wwv_flow_api.id(49725110335421692)
,p_name=>'password'
,p_input_or_output=>'A'
);
wwv_flow_api.component_end;
end;
/
