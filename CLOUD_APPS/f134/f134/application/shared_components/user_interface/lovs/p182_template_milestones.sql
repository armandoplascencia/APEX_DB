prompt --application/shared_components/user_interface/lovs/p182_template_milestones
begin
--   Manifest
--     P182 TEMPLATE MILESTONES
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
 p_id=>wwv_flow_api.id(13631694897979379896)
,p_lov_name=>'P182 TEMPLATE MILESTONES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select m.name d, m.id r',
'from eba_proj_template_ms m',
'where m.template_id = :P182_TEMPLATE_ID',
'order by m.start_date_offset + m.due_date_offset, lower(m.name)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
