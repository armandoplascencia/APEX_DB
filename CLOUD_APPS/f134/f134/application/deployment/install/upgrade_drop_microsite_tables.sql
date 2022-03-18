prompt --application/deployment/install/upgrade_drop_microsite_tables
begin
--   Manifest
--     INSTALL: UPGRADE-Drop Microsite Tables
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
 p_id=>wwv_flow_api.id(17480452508097272874)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Drop Microsite Tables'
,p_sequence=>130
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c1 in ( select object_name name',
'                from user_objects',
'                where upper(object_type) = ''PACKAGE''',
'                    and object_name like ''EBA_PROJ%MICROSITE%''',
'            ) loop',
'        execute immediate ''drop package ''||c1.name;',
'    end loop;',
'    for c1 in ( select view_name name',
'                from user_views',
'                where view_name like ''EBA_PROJ%MICROSITE%''',
'            ) loop',
'        execute immediate ''drop view ''||c1.name;',
'    end loop;',
'    for c1 in ( select table_name name',
'                from user_tables',
'                where table_name like ''EBA_PROJ%MICROSITE%''',
'            ) loop',
'        execute immediate ''drop table ''||c1.name||'' cascade constraints'';',
'    end loop;',
'end;',
'/'))
);
wwv_flow_api.component_end;
end;
/
