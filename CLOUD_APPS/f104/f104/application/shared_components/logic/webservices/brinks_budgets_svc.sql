prompt --application/shared_components/logic/webservices/brinks_budgets_svc
begin
--   Manifest
--     WEB SERVICE: brinks Budgets.svc
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
 p_id=>wwv_flow_api.id(46773811752046044)
,p_name=>'brinks Budgets.svc'
,p_url=>'http://api-apiint.brinkpos.net/Budgets.svc?wsdl'
,p_action=>'get'
,p_soap_version=>'1.2'
,p_soap_envelope=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:bud="http://www.brinksoftware.com/webservices/budgets">',
'   <soapenv:Header/>',
'   <soapenv:Body>',
'      <bud:GetBudgets>',
'         <bud:request>',
'            <bud:EndDate>2021-10-01</bud:EndDate>',
'            <bud:StartDate>2021-10-31</bud:StartDate>',
'         </bud:request>',
'      </bud:GetBudgets>',
'   </soapenv:Body>',
'</soapenv:Envelope>'))
);
wwv_flow_api.create_ws_operations(
 p_id=>wwv_flow_api.id(46774131161046048)
,p_ws_id=>wwv_flow_api.id(46773811752046044)
,p_name=>'BASIC_AUTH'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(46774485482046049)
,p_ws_opers_id=>wwv_flow_api.id(46774131161046048)
,p_name=>'username'
,p_input_or_output=>'A'
);
wwv_flow_api.create_ws_parameters(
 p_id=>wwv_flow_api.id(46774772453046051)
,p_ws_opers_id=>wwv_flow_api.id(46774131161046048)
,p_name=>'password'
,p_input_or_output=>'A'
);
wwv_flow_api.component_end;
end;
/
