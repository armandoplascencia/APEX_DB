prompt --application/shared_components/user_interface/lovs/status_rpts_editable_by
begin
--   Manifest
--     STATUS RPTS EDITABLE BY
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(6170165187793694750)
,p_lov_name=>'STATUS RPTS EDITABLE BY'
,p_lov_query=>'.'||wwv_flow_api.id(6170165187793694750)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6170165497054694752)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Submitter'
,p_lov_return_value=>'Submitter'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6170165805867694752)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Submitter and Project Members'
,p_lov_return_value=>'Submitter and Project Members'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6170166105712694752)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'All Contributors'
,p_lov_return_value=>'All Contributors'
);
wwv_flow_api.component_end;
end;
/
