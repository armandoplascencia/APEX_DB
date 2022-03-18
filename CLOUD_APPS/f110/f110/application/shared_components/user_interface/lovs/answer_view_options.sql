prompt --application/shared_components/user_interface/lovs/answer_view_options
begin
--   Manifest
--     ANSWER VIEW OPTIONS
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
 p_id=>wwv_flow_api.id(14021573800265473768)
,p_lov_name=>'ANSWER VIEW OPTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(14021573800265473768)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14021573995409473788)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Detailed Answers'
,p_lov_return_value=>'DA'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14021574279549473796)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Summarized Answers'
,p_lov_return_value=>'SA'
);
wwv_flow_api.component_end;
end;
/
