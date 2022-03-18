prompt --application/shared_components/user_interface/lovs/dynamic_answer_type
begin
--   Manifest
--     DYNAMIC ANSWER TYPE
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
 p_id=>wwv_flow_api.id(13960087689766310327)
,p_lov_name=>'DYNAMIC ANSWER TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r',
'from',
'(',
'select ''Pick one'' d, ''RADIO_GROUP'' r, 1 sort_order',
'from dual',
'union all',
'select ''Pick many'' d, ''CHECKBOX'' r, 3 sort_order',
'from dual',
'union all',
'select ''Stack Rank'' d, ''STACK'' r, 4 sort_order',
'from dual',
'union all',
'select ''Allocate $100'' d, ''ALLOCATION'' r, 5 sort_order',
'from dual',
'union all',
'select name d, code r, sort_order',
'from   EBA_QPOLL_CANNED_ANSWERS',
')',
'order by sort_order, d'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
