prompt --application/shared_components/security/app_access_control/contributer
begin
--   Manifest
--     ACL ROLE: Contributer
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_acl_role(
 p_id=>wwv_flow_api.id(682866225956757697)
,p_static_id=>'CONTRIBUTER'
,p_name=>'Contributer'
);
wwv_flow_api.component_end;
end;
/
