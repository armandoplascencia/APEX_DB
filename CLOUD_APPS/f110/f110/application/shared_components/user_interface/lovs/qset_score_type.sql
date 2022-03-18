prompt --application/shared_components/user_interface/lovs/qset_score_type
begin
--   Manifest
--     QSET_SCORE_TYPE
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
 p_id=>wwv_flow_api.id(14032707904479673080)
,p_lov_name=>'QSET_SCORE_TYPE'
,p_lov_query=>'.'||wwv_flow_api.id(14032707904479673080)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14032708200464673083)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'None'
,p_lov_return_value=>'N'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14032708502322673087)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Average'
,p_lov_return_value=>'A'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14032708794326673087)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Cumulative'
,p_lov_return_value=>'C'
);
wwv_flow_api.component_end;
end;
/
