prompt --application/shared_components/user_interface/lovs/poll_statuses
begin
--   Manifest
--     POLL STATUSES
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
 p_id=>wwv_flow_api.id(315066277989730098)
,p_lov_name=>'POLL STATUSES'
,p_lov_query=>'.'||wwv_flow_api.id(315066277989730098)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(315066598379730098)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Being Authored'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(315066981738730099)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Testing, Contributors only'
,p_lov_return_value=>'2'
,p_lov_disp_cond_type=>'EXISTS'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_questions',
' where poll_id = :POLL_ID'))
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(315067365520730099)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Published'
,p_lov_return_value=>'3'
,p_lov_disp_cond_type=>'EXISTS'
,p_lov_disp_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_questions',
' where poll_id = :POLL_ID'))
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(315067766274730099)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Closed'
,p_lov_return_value=>'4'
);
wwv_flow_api.component_end;
end;
/
