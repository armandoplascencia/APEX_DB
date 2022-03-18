prompt --application/shared_components/user_interface/lovs/upd_request_afo
begin
--   Manifest
--     UPD_REQUEST_AFO
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(9247822197086274680)
,p_lov_name=>'UPD_REQUEST_AFO'
,p_lov_query=>'.'||wwv_flow_api.id(9247822197086274680)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9247822503495274688)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'All Events'
,p_lov_return_value=>'A'
,p_lov_disp_cond_type=>'EXPRESSION'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(:APP_PAGE_ID =  11 and (instr( :P11_REQUEST_TYPE,''A'') > 0 or  :P11_REQUEST_TYPE = ''D''))',
'or',
'(:APP_PAGE_ID = 411 and (instr(nvl(:P411_REQUEST_TYPE,''AFO''),''A'') > 0 or :P411_REQUEST_TYPE = ''D''))'))
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9247822711114274695)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Future Events'
,p_lov_return_value=>'F'
,p_lov_disp_cond_type=>'EXPRESSION'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(:APP_PAGE_ID =  11 and (instr( :P11_REQUEST_TYPE,''F'') > 0 or  :P11_REQUEST_TYPE = ''D''))',
'or',
'(:APP_PAGE_ID = 411 and (instr(nvl(:P411_REQUEST_TYPE,''AFO''),''F'') > 0 or :P411_REQUEST_TYPE = ''D''))'))
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9247822914372274695)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Only this Event'
,p_lov_return_value=>'O'
,p_lov_disp_cond_type=>'EXPRESSION'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(:APP_PAGE_ID =  11 and (instr( :P11_REQUEST_TYPE,''O'') > 0 or  :P11_REQUEST_TYPE = ''D''))',
'or',
'(:APP_PAGE_ID = 411 and (instr(nvl(:P411_REQUEST_TYPE,''AFO''),''O'') > 0 or :P411_REQUEST_TYPE = ''D''))'))
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
