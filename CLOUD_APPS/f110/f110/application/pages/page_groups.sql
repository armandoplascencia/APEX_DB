prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 110
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(14607213734554163055)
,p_group_name=>'ACL'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(16485731932639691338)
,p_group_name=>'Administration'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(14033558290501184673)
,p_group_name=>'Communities'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(14607213431091162015)
,p_group_name=>'Help'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(14607213532130162358)
,p_group_name=>'Home'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(14031786804687606758)
,p_group_name=>'Invite'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(14607213633515162745)
,p_group_name=>'Login'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(14058317091707435618)
,p_group_name=>'Opt Out'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(14008957981820441125)
,p_group_name=>'Polls'
);
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(14008949493801359421)
,p_group_name=>'Request Access'
);
wwv_flow_api.component_end;
end;
/
