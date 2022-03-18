prompt --application/shared_components/user_interface/lovs/ms_delete_options
begin
--   Manifest
--     MS_DELETE_OPTIONS
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
 p_id=>wwv_flow_api.id(856154823834398411)
,p_lov_name=>'MS_DELETE_OPTIONS'
,p_lov_query=>'.'||wwv_flow_api.id(856154823834398411)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(856155190488398412)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Delete the Milestone and all associated action items'
,p_lov_return_value=>'DELETE_ALL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(856155558061398414)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Delete the Milestone and un-associate all associated action items'
,p_lov_return_value=>'DELETE_UNASSOCIATE'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(856155981208398414)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Delete the Milestone and re-assign the associated action items to a different open milestone'
,p_lov_return_value=>'DELETE_REASSIGN'
,p_lov_disp_cond_type=>'EXISTS'
,p_lov_disp_cond=>'select null from eba_proj_status_ms where project_id = :P221_PRJ_ID and upper(milestone_status) = ''OPEN'' and id != :P221_MS_ID'
);
wwv_flow_api.component_end;
end;
/
