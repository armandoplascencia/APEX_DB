prompt --application/deployment/install/install_proj_stat_ui_spec
begin
--   Manifest
--     INSTALL: INSTALL-proj_stat_ui spec
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
 p_id=>wwv_flow_api.id(14250306148751588071)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'proj_stat_ui spec'
,p_sequence=>180
,p_script_type=>'INSTALL'
,p_script_option=>'PACKAGE_SPEC'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE PACKAGE "EBA_PROJ_STAT_UI" ',
'as',
'procedure create_rpt_by_status (',
'    p_app_id            in varchar2,',
'    p_app_session       in varchar2,',
'    p_image_prefix      in varchar2,',
'    p_target_page       in varchar2 default null,',
'    p_target_item       in varchar2 default null,',
'    p_target_page2      in varchar2 default null,',
'    p_target_item2      in varchar2 default null',
'    );',
'procedure top_status_by_code2 (',
'    p_max_rows          in number default 6,',
'    p_app_id            in varchar2,',
'    p_app_session       in varchar2,',
'    p_image_prefix      in varchar2,',
'    p_target_page       in varchar2 default null,',
'    p_target_item       in varchar2 default null,',
'    p_target_item2      in varchar2 default null);',
'function project_report_by_cat ( p_category_id in number ) return varchar2;',
'function project_report_by_owner ( p_owner in varchar2 ) return varchar2;',
'function is_project_open ( p_project_id in number ) return number;',
'function get_authorization_level ( p_username varchar2) return number;',
'function get_project_report_columns',
'(',
'  p_status   in     number   default 0,',
'  p_category in     number   default 0,',
'  p_owner    in     varchar2 default null,',
'  p_search   in     varchar2 default null',
') return varchar2;',
'function get_project_report_values',
'(',
'  p_status   in     number   default 0,',
'  p_category in     number   default 0,',
'  p_owner    in     varchar2 default null,',
'  p_search   in     varchar2 default null',
') return varchar2;',
'end eba_proj_stat_ui;',
'/',
'',
''))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(14250306231566588075)
,p_script_id=>wwv_flow_api.id(14250306148751588071)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'EBA_PROJ_STAT_UI'
,p_last_updated_on=>to_date('20160212221000','YYYYMMDDHH24MISS')
,p_created_by=>'DAVID'
,p_created_on=>to_date('20160212221000','YYYYMMDDHH24MISS')
);
wwv_flow_api.component_end;
end;
/
