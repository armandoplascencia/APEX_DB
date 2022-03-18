prompt --application/deployment/definition
begin
--   Manifest
--     INSTALL: 134
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(9012014618759672631)
,p_welcome_message=>'This application installer will guide you through the process of creating your database objects and seed data.'
,p_configuration_message=>'You can configure the following attributes of your application.'
,p_build_options_message=>'You can choose to include the following build options.'
,p_validation_message=>'The following validations will be performed to ensure your system is compatible with this application.'
,p_install_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_install_success_message=>'Your application''s supporting objects have been installed.'
,p_install_failure_message=>'Installation of database objects and seed data has failed.'
,p_upgrade_message=>'The application installer has detected that this application''s supporting objects were previously installed.  This wizard will guide you through the process of upgrading these supporting objects.'
,p_upgrade_confirm_message=>'Please confirm that you would like to install this application''s supporting objects.'
,p_upgrade_success_message=>'Your application''s supporting objects have been installed.'
,p_upgrade_failure_message=>'Installation of database objects and seed data has failed.'
,p_get_version_sql_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select table_name',
'from user_tables',
'where table_name like ''EBA_PROJ_%'''))
,p_deinstall_success_message=>'Deinstallation complete.'
,p_deinstall_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'drop procedure eba_proj_status_show_detail;',
'drop function  eba_proj_stat_blend_colors;',
'',
'drop sequence eba_proj_seq;',
'',
'drop view eba_proj_nav_menu;',
'drop view eba_proj_status_available_v;',
'',
'drop view eba_proj_history;',
'drop view eba_proj_status;',
'drop view eba_proj_status_updates;',
'drop view eba_proj_status_links;',
'drop view eba_proj_status_reports;',
'drop view eba_proj_status_rpt_proj_upd;',
'drop view eba_proj_status_rpts;',
'drop view eba_proj_tags;',
'drop view eba_proj_tags_type_sum;',
'drop view eba_proj_tags_sum;',
'drop view eba_proj_status_ai_cmnts;',
'drop view eba_proj_status_ais;',
'drop view eba_proj_status_files;',
'drop view eba_proj_status_ms;',
'drop view eba_proj_microsites;',
'drop view eba_proj_microsite_content;',
'drop view eba_proj_microsite_images;',
'drop view eba_proj_status_issues;',
'drop view eba_proj_status_clicks;',
'drop view eba_proj_resources;',
'drop view eba_proj_history_7day_v;',
'drop view eba_proj_history_90day_v;',
'drop view eba_proj_status_country_ref;',
'drop view eba_proj_status_ms_no;',
'drop view eba_proj_status_ms_no_v;',
'',
'begin',
'    for c1 in ( select mview_name',
'                from user_mviews',
'                where mview_name in (''EBA_PROJ_STATUS_MS_NO_MV'',''EBA_PROJ_STATUS_AI_NO'',''EBA_PROJ_STATUS_AI_NO_MV'') ) loop',
'        execute immediate ''drop materialized view ''||c1.mview_name;',
'    end loop;',
'    for c1 in ( select view_name',
'                from user_views',
'                where view_name in (''EBA_PROJ_STATUS_MS_NO'',''EBA_PROJ_STATUS_AI_NO'') ) loop',
'        execute immediate ''drop view ''||c1.view_name;',
'    end loop;',
'end;',
'/',
'',
'drop table eba_proj_status_ms_no_mv_tbl   cascade constraints;',
'drop table eba_proj_status_ai_no_mv_tbl   cascade constraints;',
'drop table eba_proj_status_country_ref$   cascade constraints;',
'drop table eba_proj_countries             cascade constraints;',
'drop table eba_proj_deal_types            cascade constraints;',
'drop table eba_proj_regions               cascade constraints;',
'drop table eba_proj_resource_types        cascade constraints;',
'drop table eba_proj_resources$            cascade constraints;',
'drop table eba_proj_involvement_levels    cascade constraints;',
'drop table eba_proj_status_sizes          cascade constraints;',
'drop table eba_proj_roles                 cascade constraints;',
'drop table eba_proj_user_ref              cascade constraints;',
'drop table eba_proj_user_preferences      cascade constraints;',
'drop table eba_proj_status_favorites      cascade constraints;',
'drop table eba_proj_status_access_levels  cascade constraints;',
'drop table eba_proj_status_users          cascade constraints;',
'drop table eba_proj_help_page             cascade constraints;',
'drop table eba_proj_history$              cascade constraints;',
'drop table eba_proj_status_codes          cascade constraints;',
'drop table eba_proj_status$               cascade constraints;',
'drop table eba_proj_status_updates$       cascade constraints;',
'drop table eba_proj_status_cats           cascade constraints;',
'drop table eba_proj_status_links$         cascade constraints;',
'drop table eba_proj_status_reports$       cascade constraints;',
'drop table eba_proj_status_rpt_proj_upd$  cascade constraints;',
'drop table eba_proj_status_rpts$          cascade constraints;',
'drop table eba_proj_preferences           cascade constraints;',
'drop table eba_proj_status_searches       cascade constraints;',
'drop table eba_proj_status_upd_classes    cascade constraints;',
'drop table eba_proj_tags$                 cascade constraints;',
'drop table eba_proj_error_lookup          cascade constraints;',
'drop table eba_proj_errors                cascade constraints;',
'drop table eba_proj_tz_pref               cascade constraints;',
'drop table eba_proj_status_ai_cmnts$      cascade constraints;',
'drop table eba_proj_status_ais$           cascade constraints;',
'drop table eba_proj_status_ais_types      cascade constraints;',
'drop table eba_proj_status_email_log      cascade constraints;',
'drop table eba_proj_status_files$         cascade constraints;',
'drop table eba_proj_status_ingest_log     cascade constraints;',
'drop table eba_proj_status_ms$            cascade constraints;',
'drop table eba_proj_status_notifications  cascade constraints;',
'drop table eba_proj_color_codes           cascade constraints;',
'drop table eba_proj_status_update_types   cascade constraints;',
'drop table eba_proj_status_clicks$        cascade constraints;',
'drop table eba_proj_status_verifications  cascade constraints;',
'drop table eba_proj_status_issues$        cascade constraints;',
'drop table eba_proj_feedback_types        cascade constraints;',
'drop table eba_proj_feedback              cascade constraints;',
'drop table eba_proj_fy_periods            cascade constraints;',
'',
'drop table eba_proj_microsites_valid_html cascade constraints;',
'drop table eba_proj_microsites$           cascade constraints;',
'drop table eba_proj_microsite_content$    cascade constraints;',
'drop table eba_proj_microsite_images$     cascade constraints;',
'drop package eba_proj_microsite;',
'',
'drop package eba_proj_flex_fw;',
'drop table eba_proj_flex_static_lovs      cascade constraints;',
'drop table eba_proj_flex_page_map         cascade constraints;',
'drop table eba_proj_flex_registry         cascade constraints;',
'drop table eba_proj_templates             cascade constraints;',
'drop table eba_proj_template_ms           cascade constraints;',
'drop table eba_proj_template_ai           cascade constraints;',
'drop table eba_proj_stg_tmp_ms            cascade constraints;',
'drop table eba_proj_status_ms_no_tbl      cascade constraints;',
'drop table eba_proj_status_ai_no_tbl      cascade constraints;',
'drop table EBA_PROJ_ISSUE_CATS            cascade constraints;',
'drop table EBA_PROJ_ISSUE_LEVELS          cascade constraints;',
'drop table eba_proj_required_items        cascade constraints;',
'',
'drop function eba_proj_stat_get_con_comp;',
'',
'drop package eba_proj_help;',
'drop package eba_proj_template_fw;',
'drop package eba_proj_dates;',
'drop package eba_proj_status_data_api;',
'drop package eba_proj_stat_email;',
'drop package eba_proj_status_api;',
'drop package eba_proj_stat_ui;',
'drop package eba_proj_status_pref_api;',
'drop package eba_proj_fw;',
'',
'-- Drop text search preferences',
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
'/',
'',
'declare',
'    l_scheduler varchar2(10)   := ''dbms'';',
'    l_pd_prg    varchar2(30)   := ''EBA_PROJ_EMAIL_PAST_DUE_PRG'';',
'    l_pd_job    varchar2(30)   := ''EBA_PROJ_EMAIL_PAST_DUE_JOB'';',
'    l_up_prg    varchar2(30)   := ''EBA_PROJ_EMAIL_UPCOMING_PRG'';',
'    l_up_job    varchar2(30)   := ''EBA_PROJ_EMAIL_UPCOMING_JOB'';',
'    l_sm_prg    varchar2(30)   := ''EBA_PROJ_EMAIL_SUMMARY_PRG'';',
'    l_sm_job    varchar2(30)   := ''EBA_PROJ_EMAIL_SUMMARY_JOB'';',
'    l_st_prg    varchar2(30)   := ''EBA_PROJ_EMAIL_STATUS_PRG'';',
'    l_st_job    varchar2(30)   := ''EBA_PROJ_EMAIL_STATUS_JOB'';',
'    l_sql_stmt  varchar2(3000);',
'begin',
'    for c1 in ( select null',
'                from all_objects',
'                where object_type = ''PACKAGE''',
'                    and object_name = ''CLOUD_SCHEDULER'' ) loop',
'        l_scheduler := ''cloud'';',
'    end loop;',
'',
'    l_sql_stmt := ''begin ''||l_scheduler||''_scheduler.drop_job (job_name => :1); end;'';',
'    execute immediate l_sql_stmt using l_pd_job;',
'    ',
'    l_sql_stmt := ''begin ''||l_scheduler||''_scheduler.drop_program (program_name => :1,force => true); end;'';',
'    execute immediate l_sql_stmt using l_pd_prg;',
'',
'    l_sql_stmt := ''begin ''||l_scheduler||''_scheduler.drop_job (job_name => :1); end;'';',
'    execute immediate l_sql_stmt using l_up_job;',
'',
'    l_sql_stmt := ''begin ''||l_scheduler||''_scheduler.drop_program (program_name => :1, force=> true); end;'';',
'    execute immediate l_sql_stmt using l_up_prg;',
'',
'    l_sql_stmt := ''begin ''||l_scheduler||''_scheduler.drop_job(job_name => :1); end;'';',
'    execute immediate l_sql_stmt using l_sm_job;',
'',
'    l_sql_stmt := ''begin ''||l_scheduler||''_scheduler.drop_program (program_name => :1,force => true); end;'';',
'    execute immediate l_sql_stmt using l_sm_prg;',
'',
'    l_sql_stmt := ''begin ''||l_scheduler||''_scheduler.drop_job(job_name => :1); end;'';',
'    execute immediate l_sql_stmt using l_st_job;',
'',
'    l_sql_stmt := ''begin ''||l_scheduler||''_scheduler.drop_program (program_name => :1,force => true); end;'';',
'    execute immediate l_sql_stmt using l_st_prg;',
'',
'end;',
'/',
'',
'commit;'))
,p_required_free_kb=>150
,p_required_sys_privs=>'CREATE PROCEDURE:CREATE SEQUENCE:CREATE TABLE:CREATE TRIGGER:CREATE VIEW'
,p_required_names_available=>'EBA_PROJ_STATUS_ACCESS_LEVELS:EBA_PROJ_STATUS_USERS:EBA_PROJ_HELP_PAGE:EBA_PROJ_HISTORY:EBA_PROJ_STATUS_CODES:EBA_PROJ_STATUS:EBA_PROJ_STATUS_UPDATES:EBA_PROJ_STATUS_CATS:EBA_PROJ_STATUS_LINKS:EBA_PROJ_STATUS_REPORTS:EBA_PROJ_STATUS_RPT_PROJ_UPD:EBA_'
||'PROJ_STATUS_SEARCHES:EBA_PROJ_STATUS_UPD_CLASSES:EBA_PROJ_STATUS_AI_CMNTS:EBA_PROJ_STATUS_AIS:EBA_PROJ_STATUS_AIS_TYPES:EBA_PROJ_STATUS_FILES:EBA_PROJ_STATUS_INGEST_LOG:EBA_PROJ_STATUS_MS:EBA_PROJ_STATUS_NOTIFICATIONS:EBA_PROJ_COLOR_CODES:EBA_PROJ_ST'
||'ATUS_UPDATE_TYPES:EBA_PROJ_STAT_BLEND_COLORS:EBA_PROJ_STAT_EMAIL:EBA_PROJ_STATUS_API:EBA_PROJ_STAT_UI:EBA_PROJ_STATUS_PREF_API:EBA_PROJ_SEQ:EBA_PROJ_STATUS_SHOW_DETAIL:EBA_PROJ_STATUS_DATA_API:EBA_PROJ_PREFERENCES:EBA_PROJ_FW:EBA_PROJ_TAGS:EBA_PROJ_T'
||'AGS_TYPE_SUM:EBA_PROJ_TAGS_SUM:EBA_PROJ_STATUS_FAVORITES:EBA_PROJ_FILTER_FW:EBA_PROJ_TZ_PREF:EBA_PROJ_FLEX_REGISTRY:EBA_PROJ_FLEX_PAGE_MAP:EBA_PROJ_FLEX_STATIC_LOVS:EBA_PROJ_FLEX_FW:EBA_PROJ_STATUS_EMAIL_LOG:EBA_PROJ_FEEDBACK_TYPES:EBA_PROJ_FEEDBACK:'
||'EBA_PROJ_STATUS_ISSUES$:EBA_PROJ_RESOURCES$:EBA_PROJ_HISTORY$:EBA_PROJ_STATUS$:EBA_PROJ_STATUS_UPDATES$:EBA_PROJ_STATUS_LINKS$:EBA_PROJ_STATUS_REPORTS$:EBA_PROJ_STATUS_RPT_PROJ_UPD$:EBA_PROJ_STATUS_RPTS$:EBA_PROJ_TAGS$:EBA_PROJ_STATUS_AI_CMNTS$:EBA_P'
||'ROJ_STATUS_AIS$:EBA_PROJ_STATUS_FILES$:EBA_PROJ_STATUS_MS$:EBA_PROJ_STATUS_CLICKS$:EBA_PROJ_HISTORY_7DAY_V:EBA_PROJ_HISTORY_90DAY_V:EBA_PROJ_REGIONS:EBA_PROJ_COUNTRIES:EBA_PROJ_STATUS_COUNTRY_REF:EBA_PROJ_STATUS_COUNTRY_REF$:EBA_PROJ_STG_TMP_MS:EBA_P'
||'ROJ_STATUS_MS_NO:EBA_PROJ_STATUS_AI_NO:EBA_PROJ_STATUS_AI_NO_TBL:EBA_PROJ_STATUS_MS_NO_TBL:EBA_PROJ_ISSUE_CATS'
,p_deinstall_message=>'This operation will completely remove this application from your workspace.'
);
wwv_flow_api.component_end;
end;
/
