prompt --application/shared_components/logic/application_computations/cat_title_pl
begin
--   Manifest
--     APPLICATION COMPUTATION: CAT_TITLE_PL
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
 p_id=>wwv_flow_api.id(2796389311273557545)
,p_computation_sequence=>10
,p_computation_item=>'CAT_TITLE_PL'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'FUNCTION_BODY'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'return replace(eba_proj_fw.get_preference_value(''CAT_TITLE_PL''),''Preference does not exist'',''Categories'');'
);
wwv_flow_api.component_end;
end;
/
