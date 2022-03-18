prompt --application/deployment/install/upgrade_remove_text_search
begin
--   Manifest
--     INSTALL: UPGRADE-Remove Text Search
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
 p_id=>wwv_flow_api.id(1098490670658851839)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Remove Text Search'
,p_sequence=>1390
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    procedure drop_text_preference( p_pref_name in varchar2 ) is',
'    begin',
'        execute immediate ''begin ctx_ddl.drop_preference('''''' || p_pref_name || ''''''); end;'';',
'    exception when others then',
'        null;',
'    end drop_text_preference;',
'',
'begin',
'    -- Drop any old text indexes',
'    for c1 in ( select index_name',
'                from user_indexes',
'                where index_name in (',
'                    ''EBA_PROJ_STATUS_TXT1_IDX'',',
'                    ''EBA_PROJ_STATUS_TXT2_IDX'',',
'                    ''EBA_PROJ_AI_TXT_IDX'',',
'                    ''EBA_PROJ_FILES_TXT_IDX'',',
'                    ''EBA_PROJ_LINKS_TXT_IDX'',',
'                    ''EBA_PROJ_MS_TXT_IDX'',',
'                    ''EBA_PROJ_RPTS_TXT_IDX'',',
'                    ''EBA_PROJ_UPDATES_TXT_IDX'',',
'                    ''EBA_PROJ_USERS_TXT_IDX'',',
'                    ''EBA_PROJ_TAGS_TXT_IDX'',',
'                    ''EBA_PROJ_ISSUES_TXT_IDX'',',
'                    ''EBA_PROJ_RES_TXT_IDX''',
'                    )) loop',
'        execute immediate ''drop index ''||c1.index_name;',
'    end loop;',
'',
'    drop_text_preference( ''eba_proj_status_multi'' );',
'    drop_text_preference( ''eba_proj_files_multi'' );',
'    drop_text_preference( ''eba_proj_links_multi'' );',
'    drop_text_preference( ''eba_proj_status_ms_multi'' );',
'    drop_text_preference( ''eba_proj_status_ais_multi'' );',
'    drop_text_preference( ''eba_proj_status_rpts_multi'' );',
'    drop_text_preference( ''eba_proj_status_iss_multi'' );',
'    drop_text_preference( ''eba_proj_status_res_multi'' );',
'    ',
'    -- drop the old package',
'    for c1 in (select ''x'' ',
'               from user_objects',
'               where object_type = ''PACKAGE''',
'               and   object_name = ''EBA_PROJ_TEXT''',
'              ) loop',
'        execute immediate ''drop package EBA_PROJ_TEXT'';',
'    end loop;',
'end;',
'/'))
);
wwv_flow_api.component_end;
end;
/
