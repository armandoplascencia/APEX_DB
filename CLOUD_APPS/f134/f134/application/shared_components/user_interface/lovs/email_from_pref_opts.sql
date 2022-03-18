prompt --application/shared_components/user_interface/lovs/email_from_pref_opts
begin
--   Manifest
--     EMAIL_FROM_PREF_OPTS
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
 p_id=>wwv_flow_api.id(4379000415232703118)
,p_lov_name=>'EMAIL_FROM_PREF_OPTS'
,p_lov_query=>'.'||wwv_flow_api.id(4379000415232703118)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4379000783804703124)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'From Requester'
,p_lov_return_value=>'0'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4379001160360703131)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'From Defined Project Role'
,p_lov_return_value=>'-1'
);
wwv_flow_api.component_end;
end;
/
