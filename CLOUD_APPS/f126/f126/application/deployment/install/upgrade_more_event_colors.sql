prompt --application/deployment/install/upgrade_more_event_colors
begin
--   Manifest
--     INSTALL: UPGRADE-More Event Colors
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(2646182207509089154)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'More Event Colors'
,p_sequence=>50
,p_script_type=>'UPGRADE'
,p_condition_type=>'FUNCTION_BODY'
,p_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_cnt    pls_integer;',
'    l_retval boolean := true;',
'begin',
'    select count(*)',
'      into l_cnt',
'      from eba_ca_color_prefs',
'     where color_name in (''Black'', ''Darkblue'', ''Bluesky'', ''Brown'', ''Cyan'', ''Lime'', ''Silver'', ''Yellow'');',
'',
'    if l_cnt > 0 then',
'        l_retval := false;',
'    end if;',
'',
'    return l_retval;',
'end;'))
,p_condition2=>'PLSQL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alter table EBA_CA_COLOR_PREFS add constraint',
'   EBA_CA_COLOR_PREFS_UK unique (COLOR_NAME)',
'/ ',
'',
'insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (6,''Black'',  ''#303030'', ''#303030'');',
'insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (7,''Darkblue'',  ''#1F5F97'', ''#1F5F97'');',
'insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (8,''Bluesky'',  ''#6BB9F0'', ''#6BB9F0'');',
'insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (9,''Brown'',  ''#D88935'', ''#D88935'');',
'insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (10,''Cyan'',  ''#1ABC9C'', ''#1ABC9C'');',
'insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (11,''Lime'',  ''#28A346'', ''#28A346'');',
'insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (12,''Silver'',  ''#BDC3C7'', ''#BDC3C7'');',
'insert into EBA_CA_color_prefs (id, color_name, bg_color, text_color) values (13,''Yellow'',  ''#F1C40F'', ''#F1C40F'');',
'commit;'))
);
wwv_flow_api.component_end;
end;
/
