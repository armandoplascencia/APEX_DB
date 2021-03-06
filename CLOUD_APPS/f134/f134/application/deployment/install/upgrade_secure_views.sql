prompt --application/deployment/install/upgrade_secure_views
begin
--   Manifest
--     INSTALL: UPGRADE-Secure Views
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
 p_id=>wwv_flow_api.id(12759391437978883528)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Secure Views'
,p_sequence=>810
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace force view eba_proj_status as',
'    select prj.id,',
'        prj.is_deleted_yn,',
'        prj.template_id,',
'        prj.row_version_number,',
'        prj.cat_id,',
'        prj.parent_project_id,',
'        prj.row_key,',
'        prj.project,',
'        prj.description,',
'        prj.project_customer,',
'        prj.acl_status_level,',
'        prj.logo_blob,',
'        prj.logo_name,',
'        prj.logo_mimetype,',
'        prj.logo_charset,',
'        prj.logo_lastupd,',
'        prj.project_flex_01,',
'        prj.project_flex_02,',
'        prj.project_flex_03,',
'        prj.project_flex_04,',
'        prj.project_flex_05,',
'        prj.project_flex_06,',
'        prj.project_flex_07,',
'        prj.project_flex_08,',
'        prj.project_flex_n01,',
'        prj.project_flex_n02,',
'        prj.project_flex_n03,',
'        prj.project_flex_n04,',
'        prj.project_flex_d01,',
'        prj.project_flex_d02,',
'        prj.project_flex_d03,',
'        prj.project_flex_d04,',
'        prj.project_flex_d05,',
'        prj.project_flex_d06,',
'        prj.project_flex_d07,',
'        prj.project_flex_d08,',
'        prj.project_flex_d09,',
'        prj.project_flex_d10,',
'        prj.project_flex_d11,',
'        prj.project_flex_d12,',
'        prj.project_flex_clob,',
'        prj.project_status,',
'        prj.restrict_ms_ai_management,',
'        prj.tags,',
'        prj.next_milestone_name,',
'        prj.next_milestone_date,',
'        prj.goal,',
'        prj.what_is_success,',
'        prj.url,',
'        prj.include_by_default_yn,',
'        prj.size_id,',
'        prj.code_name,',
'        prj.deal_type_id,',
'        prj.project_start_date,',
'        prj.created,',
'        prj.created_by,',
'        prj.updated,',
'        prj.updated_by,',
'        prj.headline,',
'        prj.headline_last_updated,',
'        prj.requesting_team,',
'        prj.impacted_environment',
'    from eba_proj_status$ prj',
'    where prj.is_deleted_yn = ''N''',
'        and ( eba_proj_stat_ui.get_authorization_level( p_username => (select sys_context(''APEX$SESSION'',''APP_USER'') from dual) ) >= 4',
'            or prj.acl_status_level in (1,2)',
'            or ( prj.acl_status_level = 3',
'                and exists (select null',
'                            from eba_proj_status_users u,',
'                                eba_proj_user_ref rf,',
'                                ( select sys_context(''APEX$SESSION'',''APP_USER'') nm from dual ) usr',
'                            where upper(u.username) = upper(usr.nm)',
'                                and rf.user_id = u.id',
'                                and rf.project_id = prj.id',
'                            )',
'            )',
'        )',
'/',
'',
'CREATE OR REPLACE FORCE VIEW "EBA_PROJ_STATUS_UPDATES" ("ID", "ROW_VERSION_NUMBER", "ROW_KEY", "PROJECT_ID", "STATUS_UPDATE", "FORMATTED_UPDATE", "UPDATE_DATE", "UPDATE_OWNER", "UPPER_UPDATE_OWNER", "INCLUDE_ON_STATUS_RPT", "CLASSIFICATION_ID", "UPDA'
||'TE_TYPE", "TAGS", "GOLD_YN", "CREATED", "CREATED_BY", "UPDATED", "UPDATED_BY") AS ',
'  select ',
'        u.id, ',
'        u.row_version_number, ',
'        u.row_key, ',
'        u.project_id, ',
'        u.status_update,',
'        u.formatted_update,',
'        u.update_date, ',
'        u.update_owner,',
'        u.upper_update_owner,',
'        u.include_on_status_rpt, ',
'        u.classification_id, ',
'        u.update_type, ',
'        u.tags,',
'        u.gold_yn,',
'        u.created, ',
'        u.created_by, ',
'        u.updated, ',
'        u.updated_by',
'    from eba_proj_status_updates$ u,',
'         eba_proj_status          ps',
'    where u.project_id = ps.id;',
'',
'create or replace view eba_proj_status_links as',
'    select id, ',
'        row_version_number, ',
'        project_id, ',
'        link_target, ',
'        link_text, ',
'        link_comments,',
'        gold_yn,',
'        include_by_default_yn, ',
'        tags, ',
'        created, ',
'        created_by, ',
'        updated, ',
'        updated_by ',
'    from eba_proj_status_links$ l',
'    where exists ( select null from eba_proj_status ps where ps.id = l.project_id );',
'',
'create or replace view eba_proj_status_ais as',
'select id,',
'    template_id,',
'    row_version_number,',
'    row_key, ',
'    project_id, ',
'    milestone_id,',
'    owner_role_id,',
'    action_owner_01, ',
'    action_owner_02, ',
'    action_owner_03, ',
'    action_owner_04, ',
'    action, ',
'    action_description, ',
'    original_due_date,',
'    due_date,',
'    completed_date,',
'    completed_by,',
'    action_status, ',
'    is_deliverable_yn,',
'    is_deleted_yn,',
'    type_id, ',
'    tags,',
'    resolution,',
'    inc_in_status_eml_yn,',
'    link_url,',
'    link_text,',
'    action_flex_01, ',
'    action_flex_02, ',
'    action_flex_03, ',
'    action_flex_04, ',
'    action_flex_05, ',
'    action_flex_06, ',
'    action_flex_07, ',
'    action_flex_08, ',
'    action_flex_n01, ',
'    action_flex_n02, ',
'    action_flex_n03, ',
'    action_flex_n04, ',
'    action_flex_d01, ',
'    action_flex_d02, ',
'    action_flex_d03, ',
'    action_flex_d04, ',
'    action_flex_clob, ',
'    created, ',
'    created_by, ',
'    updated, ',
'    updated_by ',
'from eba_proj_status_ais$ a',
'where exists ( select null from eba_proj_status ps where ps.id = a.project_id )',
'    and is_deleted_yn = ''N'';',
'',
'create or replace view eba_proj_status_ms as',
'select id,',
'    template_id,',
'    row_version_number, ',
'    row_key, ',
'    project_id, ',
'    milestone_name, ',
'    milestone_description, ',
'    milestone_date, ',
'    milestone_start_date,',
'    original_due_date,',
'    completed_date,',
'    completed_by,',
'    milestone_status,',
'    owner_role_id,',
'    milestone_owner, ',
'    is_major_yn,',
'    is_deleted_yn,',
'    tags, ',
'    milestone_flex_01,',
'    milestone_flex_02, ',
'    milestone_flex_03, ',
'    milestone_flex_04, ',
'    milestone_flex_05, ',
'    milestone_flex_06, ',
'    milestone_flex_07, ',
'    milestone_flex_08, ',
'    milestone_flex_n01, ',
'    milestone_flex_n02, ',
'    milestone_flex_n03, ',
'    milestone_flex_n04, ',
'    milestone_flex_d01, ',
'    milestone_flex_d02, ',
'    milestone_flex_d03, ',
'    milestone_flex_d04, ',
'    milestone_flex_clob, ',
'    created, ',
'    created_by, ',
'    updated, ',
'    updated_by ',
'from eba_proj_status_ms$ m',
'where exists ( select null from eba_proj_status ps where ps.id = m.project_id )',
'    and is_deleted_yn = ''N'';',
'',
'create or replace view eba_proj_status_files as',
'    select id, ',
'        row_version_number, ',
'        project_id, ',
'        filename, ',
'        file_mimetype, ',
'        file_charset, ',
'        file_blob, ',
'        file_comments, ',
'        tags,',
'        gold_yn,',
'        associated_milestone, ',
'        associated_action_item, ',
'        created, ',
'        created_by, ',
'        updated, ',
'        updated_by ',
'    from eba_proj_status_files$ f',
'    where exists ( select null from eba_proj_status ps where ps.id = f.project_id );',
'',
'create or replace view eba_proj_status_reports as',
'    select id,',
'        row_version_number,',
'        report_name,',
'        report_description,',
'        row_key,',
'        created,',
'        created_by,',
'        updated,',
'        updated_by',
'    from eba_proj_status_reports$;',
'',
'create or replace view eba_proj_status_rpt_proj_upd as',
'    select id, ',
'        row_version_number, ',
'        update_id, ',
'        report_id, ',
'        project_id, ',
'        created, ',
'        created_by, ',
'        updated, ',
'        updated_by ',
'    from eba_proj_status_rpt_proj_upd$ u',
'    where exists ( select null from eba_proj_status ps where ps.id = u.project_id );',
'',
'create or replace view eba_proj_status_ai_cmnts as',
'    select id, ',
'        row_version_number, ',
'        action_item_id, ',
'        comment_text, ',
'        created, ',
'        created_by, ',
'        updated, ',
'        updated_by ',
'    from eba_proj_status_ai_cmnts$ ac',
'    where exists (select null from eba_proj_status_ais ai where ai.id = ac.action_item_id );',
'',
'create or replace view eba_proj_history as',
'    select id,',
'        row_version_number,',
'        component_id,',
'        component_rowkey,',
'        table_name,',
'        column_name,',
'        old_value,',
'        new_value,',
'        change_date,',
'        changed_by',
'    from eba_proj_history$;',
'',
'create or replace view eba_proj_status_rpts as',
'    select id, ',
'        row_version_number, ',
'        row_key, ',
'        project_id, ',
'        status_title, ',
'        status_update, ',
'        update_date, ',
'        update_owner, ',
'        viewable_by, ',
'        editable_by, ',
'        created, ',
'        created_by, ',
'        updated, ',
'        updated_by ',
'    from eba_proj_status_rpts$ r',
'    where exists ( select null from eba_proj_status ps where ps.id = r.project_id );',
'',
'create or replace view eba_proj_resources as',
'    select id,',
'        row_version_number,',
'        project_id,',
'        resource_name,',
'        notes,',
'        resource_type_id,',
'        --',
'        created,',
'        created_by,',
'        updated,',
'        updated_by',
'    from eba_proj_resources$ r',
'    where exists ( select null',
'                   from eba_proj_status p',
'                   where p.id = r.project_id );',
'',
'create or replace view eba_proj_tags as',
'    select id, ',
'        row_version_number, ',
'        tag, ',
'        content_id, ',
'        content_type, ',
'        created, ',
'        created_by, ',
'        updated, ',
'        updated_by ',
'    from eba_proj_tags$ t',
'    where ( t.content_type = ''AI''',
'            and exists ( select null from eba_proj_status_ais a where t.content_id = a.id ))',
'        or ( t.content_type = ''MILESTONE''',
'            and exists ( select null from eba_proj_status_ms m where t.content_id = m.id ))',
'        or ( t.content_type = ''FILE''',
'            and exists ( select null from eba_proj_status_files f where t.content_id = f.id ))',
'        or ( t.content_type = ''STATUS''',
'            and exists ( select null from eba_proj_status p where t.content_id = p.id ))',
'        or ( t.content_type = ''LINK''',
'            and exists ( select null from eba_proj_status_links l where t.content_id = l.id ))',
'        or ( t.content_type = ''UPDATES''',
'            and exists ( select null from eba_proj_status_updates u where t.content_id = u.id ));',
'',
'create or replace view eba_proj_tags_type_sum as',
'    select tag, ',
'        content_type, ',
'        count(*) tag_count ',
'    from eba_proj_tags',
'    group by tag, content_type;',
'',
'create or replace view eba_proj_tags_sum as',
'    select tag, ',
'        count(*) tag_count ',
'    from eba_proj_tags',
'    group by tag;',
'',
'create or replace view eba_proj_status_issues as',
'select id,',
'    row_version_number,',
'    row_key,',
'    cat_id,',
'    ref_num,',
'    resolution,',
'    project_id,',
'    issue,',
'    issue_detail,',
'    owner_role_id,',
'    issue_owner,',
'    issue_level,',
'    link_01,',
'    link_02,',
'    link_03,',
'    link_04,',
'    link_05,',
'    link_06,',
'    link_07,',
'    link_08,',
'    link_name_01,',
'    link_name_02,',
'    link_name_03,',
'    link_name_04,',
'    link_name_05,',
'    link_name_06,',
'    link_name_07,',
'    link_name_08,',
'    is_open,',
'    resolved_on,',
'    created,',
'    created_by,',
'    updated,',
'    updated_by',
'from eba_proj_status_issues$ i',
'where exists ( select null from eba_proj_status ps where ps.id = i.project_id );',
'',
'create or replace view eba_proj_status_country_ref as',
'select rf.id,',
'    rf.project_id,',
'    rf.country_id,',
'    rf.created,',
'    rf.created_by,',
'    rf.updated,',
'    rf.updated_by',
'from eba_proj_status_country_ref$ rf',
'where exists ( select null from eba_proj_status p where p.id = rf.project_id );',
'/'))
);
wwv_flow_api.component_end;
end;
/
