prompt --application/deployment/install/upgrade_make_preference_name_unique
begin
--   Manifest
--     INSTALL: UPGRADE-Make Preference_Name Unique
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(6114553893632863785)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Make Preference_Name Unique'
,p_sequence=>300
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>'select * from user_indexes where lower(index_name) = ''eba_proj_preferences_name_idx'' and uniqueness = ''UNIQUE'';'
,p_script_clob=>'create unique index eba_proj_preferences_name_idx on eba_proj_preferences(preference_name);'
);
wwv_flow_api.component_end;
end;
/
