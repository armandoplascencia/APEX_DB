prompt --application/shared_components/user_interface/lovs/link_types
begin
--   Manifest
--     LINK_TYPES
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
 p_id=>wwv_flow_api.id(17929062485934222926)
,p_lov_name=>'LINK_TYPES'
,p_lov_query=>'.'||wwv_flow_api.id(17929062485934222926)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17929063367366222939)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Excel Worksheet'
,p_lov_return_value=>'EXL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17929063165933222939)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'HTML Page'
,p_lov_return_value=>'HTM'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17929062975982222939)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'PDF Document'
,p_lov_return_value=>'PDF'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17929063582638222939)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Text Document'
,p_lov_return_value=>'TXT'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17929062774303222939)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Word Document'
,p_lov_return_value=>'DOC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(17897908947385757873)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Other'
,p_lov_return_value=>'OTH'
);
wwv_flow_api.component_end;
end;
/
