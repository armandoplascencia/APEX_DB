prompt --application/shared_components/user_interface/lovs/flex_hdr_alignments
begin
--   Manifest
--     FLEX_HDR_ALIGNMENTS
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
 p_id=>wwv_flow_api.id(6252381284189580695)
,p_lov_name=>'FLEX_HDR_ALIGNMENTS'
,p_lov_query=>'.'||wwv_flow_api.id(6252381284189580695)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6252381611966580695)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Left'
,p_lov_return_value=>'LEFT'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6252381890545580695)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Center'
,p_lov_return_value=>'CENTER'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(6252382192208580695)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Right'
,p_lov_return_value=>'RIGHT'
);
wwv_flow_api.component_end;
end;
/
