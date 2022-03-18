prompt --application/shared_components/user_interface/lovs/community_actions
begin
--   Manifest
--     COMMUNITY ACTIONS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14022974091536808740)
,p_lov_name=>'COMMUNITY ACTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(14022974091536808740)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14022974410497808743)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Create New Community'
,p_lov_return_value=>'-2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14026769583508408930)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Add new member(s) to an existing community'
,p_lov_return_value=>'-4'
,p_lov_disp_cond_type=>'EXISTS'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_QPOLL_RESP_COMMUNITIES',
'  where id in (select community_id from EBA_QPOLL_RESP_COMM_REF where respondent_id is not null)'))
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14026749986582330250)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Add existing member'
,p_lov_return_value=>'-3'
,p_lov_disp_cond_type=>'EXISTS'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from EBA_QPOLL_RESPONDENTS',
'  where id not in (select respondent_id from EBA_QPOLL_RESP_COMM_REF where community_id = nvl(:P70_COMMUNITY_ID_TO,0))',
'and (select count(*) from EBA_QPOLL_RESPONDENTS) > 1'))
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14022974702522808748)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Copy members from one Community to another'
,p_lov_return_value=>'-1'
,p_lov_disp_cond_type=>'FUNCTION_BODY'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_c_cnt  number;',
'begin',
'    select count(*)',
'      into l_c_cnt',
'      from EBA_QPOLL_RESP_COMMUNITIES',
'      where id in (select community_id from EBA_QPOLL_RESP_COMM_REF where respondent_id is not null);',
'    if l_c_cnt >= 2 then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14022974998747808748)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Copy members from one Community to a new Community'
,p_lov_return_value=>'0'
,p_lov_disp_cond_type=>'FUNCTION_BODY'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_c_cnt  number;',
'begin',
'    select count(*)',
'      into l_c_cnt',
'      from EBA_QPOLL_RESP_COMMUNITIES',
'      where id in (select community_id from EBA_QPOLL_RESP_COMM_REF where respondent_id is not null);',
'    if l_c_cnt >= 2 then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
