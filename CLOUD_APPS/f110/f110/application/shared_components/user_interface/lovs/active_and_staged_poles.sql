prompt --application/shared_components/user_interface/lovs/active_and_staged_poles
begin
--   Manifest
--     ACTIVE AND STAGED POLES
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14087230110392529910)
,p_lov_name=>'ACTIVE AND STAGED POLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    poll_name dv, ',
'    id        rv',
'from',
'    eba_qpoll_polls p',
'where',
'    status_id > 1',
'order by',
'    1'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
