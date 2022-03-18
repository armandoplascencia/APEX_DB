prompt --application/shared_components/user_interface/lovs/r_validation
begin
--   Manifest
--     R_VALIDATION
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>115
,p_default_id_offset=>358200981570066140
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(196439243312450645)
,p_lov_name=>'R_VALIDATION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select val_id as r, val_text as d ',
'  from r_validation'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
