prompt --application/shared_components/user_interface/lovs/flex_label_alignment
begin
--   Manifest
--     FLEX_LABEL_ALIGNMENT
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
 p_id=>wwv_flow_api.id(6252376799883580687)
,p_lov_name=>'FLEX_LABEL_ALIGNMENT'
,p_lov_query=>'.'||wwv_flow_api.id(6252376799883580687)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6252377105419580690)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Right'
,p_lov_return_value=>'RIGHT'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6252377407939580691)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Right-Top'
,p_lov_return_value=>'RIGHT-TOP'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6252377683704580691)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Right-Center'
,p_lov_return_value=>'RIGHT-CENTER'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6252377981113580691)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Right-Bottom'
,p_lov_return_value=>'RIGHT-BOTTOM'
);
wwv_flow_api.component_end;
end;
/
