prompt --application/shared_components/logic/application_computations/p200_help_text
begin
--   Manifest
--     APPLICATION COMPUTATION: P200_HELP_TEXT
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_flow_computation(
 p_id=>wwv_flow_api.id(1918806868649994888)
,p_computation_sequence=>10
,p_computation_item=>'P200_HELP_TEXT'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'eba_proj_help.get_project_details_help_text(p_app_id => :APP_ID);'
);
wwv_flow_api.component_end;
end;
/
