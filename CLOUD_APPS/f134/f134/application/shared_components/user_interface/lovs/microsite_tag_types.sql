prompt --application/shared_components/user_interface/lovs/microsite_tag_types
begin
--   Manifest
--     MICROSITE TAG TYPES
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
 p_id=>wwv_flow_api.id(6241111494877490242)
,p_lov_name=>'MICROSITE TAG TYPES'
,p_lov_query=>'.'||wwv_flow_api.id(6241111494877490242)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6241111684297490242)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'paragraph'
,p_lov_return_value=>'paragraph'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6241111982856490243)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'list'
,p_lov_return_value=>'list'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6241112292656490243)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'table'
,p_lov_return_value=>'table'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6241112585990490243)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'link'
,p_lov_return_value=>'link'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6241112888136490243)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'code format'
,p_lov_return_value=>'code format'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6241113184089490243)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'other'
,p_lov_return_value=>'other'
);
wwv_flow_api.component_end;
end;
/
