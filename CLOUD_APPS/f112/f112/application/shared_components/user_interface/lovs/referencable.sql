prompt --application/shared_components/user_interface/lovs/referencable
begin
--   Manifest
--     REFERENCABLE
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
 p_id=>wwv_flow_api.id(14858922005509087813)
,p_lov_name=>'REFERENCABLE'
,p_lov_query=>'.'||wwv_flow_api.id(14858922005509087813)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14858922212740087817)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Yes'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14858922513475087821)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'No'
,p_lov_return_value=>'No'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(14858922804353087821)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Potentially'
,p_lov_return_value=>'Potentially'
);
wwv_flow_api.component_end;
end;
/
