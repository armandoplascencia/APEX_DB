prompt --application/shared_components/user_interface/lovs/p1_contrib_reader_view
begin
--   Manifest
--     P1_CONTRIB_READER_VIEW
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
 p_id=>wwv_flow_api.id(655885347244592141)
,p_lov_name=>'P1_CONTRIB_READER_VIEW'
,p_lov_query=>'.'||wwv_flow_api.id(655885347244592141)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(655885626452592142)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Contributor View'
,p_lov_return_value=>'C'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(655886032155592142)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Reader View'
,p_lov_return_value=>'R'
);
wwv_flow_api.component_end;
end;
/
