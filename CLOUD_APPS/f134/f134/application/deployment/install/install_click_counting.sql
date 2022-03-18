prompt --application/deployment/install/install_click_counting
begin
--   Manifest
--     INSTALL: INSTALL-click counting
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
 p_id=>wwv_flow_api.id(6169915086544691104)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'click counting'
,p_sequence=>620
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_status_clicks$ (',
'    id                number primary key,',
'    project_id        number references eba_proj_status$(id) on delete cascade,',
'    app_username      varchar2(255), ',
'    view_timestamp    timestamp(6) with local time zone, ',
'    app_session       varchar2(255)',
')',
'/',
'',
'create or replace trigger  eba_proj_status_clicks_biu',
'    before insert on eba_proj_status_clicks$',
'    for each row',
'begin',
'    if :new.id is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    :new.view_timestamp := localtimestamp;',
'    :new.app_username := nvl(v(''APP_USER''),user);',
'    :new.app_session := v(''APP_SESSION'');',
'end;',
'/',
'',
'alter trigger  eba_proj_status_clicks_biu enable',
'/',
' ',
'create index eba_proj_status_clicks_01 on eba_proj_status_clicks$(project_id);',
'create index eba_proj_status_clicks_02 on eba_proj_status_clicks$(view_timestamp);',
'',
'create or replace view eba_proj_status_clicks as',
'select id, ',
'    project_id, ',
'    app_username, ',
'    view_timestamp, ',
'    app_session ',
'from eba_proj_status_clicks$ c',
'where exists ( select null from eba_proj_status ps where ps.id = c.project_id );'))
);
wwv_flow_api.component_end;
end;
/
