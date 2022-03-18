prompt --application/shared_components/user_interface/lovs/checkbox
begin
--   Manifest
--     CHECKBOX
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(9240797696184016672)
,p_lov_name=>'CHECKBOX'
,p_lov_query=>'.'||wwv_flow_api.id(9240797696184016672)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(9240797995266016673)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>' '
,p_lov_return_value=>'Y'
);
wwv_flow_api.component_end;
end;
/
