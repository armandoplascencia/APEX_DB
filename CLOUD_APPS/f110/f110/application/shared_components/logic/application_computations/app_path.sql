prompt --application/shared_components/logic/application_computations/app_path
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_PATH
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(14099924295405360556)
,p_computation_sequence=>10
,p_computation_item=>'APP_PATH'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_friendly_url_yn varchar2(3);',
'    l_app_path        varchar2(4000) := wwv_flow_utilities.get_protocol() || ''://'' || owa_util.get_cgi_env(''HTTP_HOST'');',
'begin',
'    select nvl(FRIENDLY_URL,''Yes'') into l_friendly_url_yn from APEX_APPLICATIONS where APPLICATION_ID = :APP_ID;',
'',
'    if l_friendly_url_yn = ''No'' then',
'        l_app_path := l_app_path || owa_util.get_cgi_env(''SCRIPT_NAME'') || ''/'';',
'    end if;',
'',
'    return l_app_path;',
'end;'))
);
wwv_flow_api.component_end;
end;
/
