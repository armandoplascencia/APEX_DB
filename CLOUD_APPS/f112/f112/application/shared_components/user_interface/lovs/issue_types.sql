prompt --application/shared_components/user_interface/lovs/issue_types
begin
--   Manifest
--     ISSUE TYPES
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(2666261594619335567)
,p_lov_name=>'ISSUE TYPES'
,p_lov_query=>'.'||wwv_flow_api.id(2666261594619335567)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2666261934848335568)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Bug'
,p_lov_return_value=>'BUG'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2666262339684335570)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Enhancement Request'
,p_lov_return_value=>'ER'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2666262736101335570)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Other'
,p_lov_return_value=>'OTHER'
);
wwv_flow_api.component_end;
end;
/
