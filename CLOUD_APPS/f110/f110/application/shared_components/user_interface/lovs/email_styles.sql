prompt --application/shared_components/user_interface/lovs/email_styles
begin
--   Manifest
--     EMAIL STYLES
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
 p_id=>wwv_flow_api.id(14004450194559571738)
,p_lov_name=>'EMAIL STYLES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select style_name d, id r',
'from eba_qpoll_email_styles',
'order by upper(style_name)'))
,p_source_type=>'LEGACY_SQL'
,p_location=>'LOCAL'
);
wwv_flow_api.component_end;
end;
/
