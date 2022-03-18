prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Search Results'
,p_step_title=>'Search Results'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(5956248486633661863)
,p_step_template=>wwv_flow_api.id(6781077225859890733)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'This page displays the results of your search. Use the filters on the left to vary the search results on the right.'
,p_last_upd_yyyymmddhh24miss=>'20190904134742'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6175200296938561133)
,p_plug_name=>'hidden items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781104626075890777)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_translate_title=>'N'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6803973202332339920)
,p_name=>'Search Results Report'
,p_template=>wwv_flow_api.id(6781115417665890803)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody:t-Region--hideHeader'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.thelink search_link,',
'    substr(x.text,1,200) search_title,',
'    x.project SEARCH_DESC,',
'    ''Source'' label_01,',
'    x.attribute value_01,',
'    ''Last Modified'' label_02,',
'    apex_util.get_since(x.updated) value_02,',
'    ''Project'' label_03,',
'    x.project_name value_03,',
'    x.thelink2 secondary_link,',
'    apex_util.prepare_url(''f?p=''||:app_id||'':200:''||:app_session||'':::2,200:P2_ID,P200_ID:''||x.project_id||'',''||x.project_id) as project_link,',
'    decode(attribute,''Action Item'',''icon_project'',',
'        ''icon_''||replace(replace(lower(x.attribute),''(s)'',null),'' '',''_'')) icon_class',
'from (',
'    select ''Project'' attribute,',
'        1 sort_order,',
'        project text,',
'        updated,',
'        project project,',
'        apex_util.prepare_url(''f?p=''||:app_id||'':200:''||:app_session||'':::2,200:P2_ID,P200_ID:''||id||'',''||id) thelink,',
'        '''' thelink2,',
'        id project_id,',
'        nvl(eba_proj_fw.get_project_rowkey(p_project_id => s.id), s.row_key) as row_key,',
'        s.project as project_name',
'    from eba_proj_status s',
'    where instr(:P8_INCLUDE,''P'') > 0 and',
'        ( :P8_PROJECT is null or s.id = :P8_PROJECT ) and',
'        (instr(lower(project)||''/''||lower(row_key),trim(lower(:P8_SEARCH))) > 0',
'            or exists ( select null',
'                        from eba_proj_tags pt',
'                        where lower(pt.tag) = trim(lower(:P8_SEARCH))',
'                            and pt.content_type = ''STATUS''',
'                            and pt.content_id = s.id )',
'        )',
'    union all',
'    select ''Action Item'' attribute,',
'        2 sort_order,',
'        ACTION text,',
'        updated,',
'        (select max(project) from eba_proj_status p where p.id = a.project_id) project,',
'        case',
'            when eba_proj_fw.is_edit_authorized( p_username => :APP_USER, p_project_id => a.project_id ) = ''Y'' then',
'                apex_util.prepare_url(''f?p=''||:app_id||'':73:''||:app_session||'':::73:P73_ID:''||id)',
'            else',
'                apex_util.prepare_url(''f?p=''||:app_id||'':200:''||:app_session||'':::2,200:P2_ID,P200_ID:''||a.project_id||'',''||a.project_id)',
'        end thelink,',
'        apex_util.prepare_url(''f?p=''||:app_id||'':28:''||:app_session||'':::2,200:P2_ID,P200_ID,P28_SEARCH:''||project_id||'',''||project_id||'',''||a.row_key) thelink2,',
'        project_id project_id,',
'        row_key,',
'        (select project from eba_proj_status where id = a.project_id) as project_name',
'    from eba_proj_status_ais a',
'    where instr(:P8_INCLUDE,''I'') > 0 and',
'        ( :P8_PROJECT is null or a.project_id = :P8_PROJECT ) and',
'        exists (select null',
'                from apex_application_build_options',
'                where application_id = :APP_ID',
'                    and build_option_name = ''Project Action Items''',
'                    and build_option_status = ''Include''',
'             ) and',
'        (instr(lower(ACTION),trim(lower(:P8_SEARCH))) > 0',
'            or exists ( select null',
'                        from eba_proj_tags pt',
'                        where lower(pt.tag) = trim(lower(:P8_SEARCH))',
'                            and pt.content_type = ''AI''',
'                            and pt.content_id = a.id )',
'        )',
'    union all',
'    select ''Customer'' attribute,',
'        2 sort_order,',
'        PROJECT_CUSTOMER text,',
'        updated,',
'        project project,',
'        case',
'            when eba_proj_fw.is_edit_authorized( p_username => :APP_USER, p_project_id => s.id ) = ''Y'' then',
'                apex_util.prepare_url(''f?p=''||:app_id||'':2:''||:app_session||'':::2,200:P2_ID,P200_ID:''||s.id||'',''||s.id)',
'            else',
'                apex_util.prepare_url(''f?p=''||:app_id||'':200:''||:app_session||'':::2,200:P2_ID,P200_ID:''||s.id||'',''||s.id)',
'        end thelink,',
'        '''' thelink2,',
'        id project_id,',
'        nvl(eba_proj_fw.get_project_rowkey(p_project_id => s.id), s.row_key) as row_key,',
'        s.project as project_name',
'    from eba_proj_status s',
'    where instr(:P8_INCLUDE,''C'') > 0 and',
'        ( :P8_PROJECT is null or s.id = :P8_PROJECT ) and',
'        instr(lower(PROJECT_CUSTOMER),lower(:P8_SEARCH)) > 0',
'    union all',
'    select ''Owner(s)'' attribute,',
'        2 sort_order,',
'        (   select listagg(lower(u.username),'', '') within group',
'                (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username)) as owners',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.project_id = s.id',
'                and rf.user_id = u.id',
'                and rf.role_id = r.id',
'                and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as text,',
'        updated,',
'        project project,',
'        case',
'            when eba_proj_fw.is_edit_authorized( p_username => :APP_USER, p_project_id => s.id ) = ''Y'' then',
'                apex_util.prepare_url(''f?p=''||:app_id||'':137:''||:app_session||'':::RP,137:P137_ID:''||(   select listagg(lower(u.id),'','') within group',
'                (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.id)) as owners',
'            from eba_proj_user_ref rf,',
'                eba_proj_status_users u,',
'                eba_proj_roles r',
'            where rf.project_id = s.id',
'                and rf.user_id = u.id',
'                and rf.role_id = r.id',
'                and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ))',
'            else',
'                apex_util.prepare_url(''f?p=''||:app_id||'':200:''||:app_session||'':::2,200:P2_ID,P200_ID:''||s.id||'',''||s.id)',
'        end thelink,',
'        '''' thelink2,',
'        id project_id,',
'        nvl(eba_proj_fw.get_project_rowkey(p_project_id => s.id), s.row_key) as row_key,',
'        s.project as project_name',
'    from eba_proj_status s',
'    where instr(:P8_INCLUDE,''O'') > 0 and',
'        ( :P8_PROJECT is null or s.id = :P8_PROJECT ) and',
'        exists (select null',
'                from eba_proj_user_ref rf,',
'                    eba_proj_status_users u,',
'                    eba_proj_roles r',
'                where rf.project_id = s.id',
'                    and rf.user_id = u.id',
'                    and rf.role_id = r.id',
'                    and nvl(rf.acl_status_level,r.default_acl_status_level) >= 2',
'                    and instr(lower(u.username),lower(:P8_SEARCH)) > 0',
'        )',
'    union all',
'    select ''Milestone'' attribute,',
'        2 sort_order,',
'        m.MILESTONE_NAME||''  (''||m.row_key||'') -  ''||to_char(m.milestone_date,''Day dd-Month-yyyy'') text,',
'        m.updated,',
'        s.project project,',
'        case',
'            when eba_proj_fw.is_edit_authorized( p_username => :APP_USER, p_project_id => s.id ) = ''Y'' then',
'                apex_util.prepare_url(''f?p=''||:app_id||'':48:''||:app_session||'':::48:P48_ID,P200_ID:''||m.id||'',''||s.id)',
'            else',
'                apex_util.prepare_url(''f?p=''||:app_id||'':200:''||:app_session||'':::2,200:P2_ID,P200_ID:''||s.id||'',''||s.id)',
'        end thelink,',
'        apex_util.prepare_url(''f?p=''||:app_id||'':35:''||:app_session||'':::2,35,200:P2_ID,P200_ID,P35_SEARCH:''||s.id||'',''||s.id||'',''||m.row_key) thelink2,',
'        s.id project_id,',
'        nvl(eba_proj_fw.get_project_rowkey(p_project_id => s.id), s.row_key) as row_key,',
'        s.project as project_name',
'    from eba_proj_status s,',
'        eba_proj_status_ms m',
'    where',
'        m.project_id = s.id and',
'        ( :P8_PROJECT is null or s.id = :P8_PROJECT ) and',
'        exists (select null',
'                from apex_application_build_options',
'                where application_id = :APP_ID',
'                    and build_option_name = ''Project Milestones''',
'                    and build_option_status = ''Include''',
'             ) and',
'        instr(:P8_INCLUDE,''M'') > 0 and',
'        m.MILESTONE_NAME is not null and',
'        (instr(lower(m.MILESTONE_NAME),lower(:P8_SEARCH)) > 0',
'            or instr(lower(m.row_key),lower(:P8_SEARCH)) > 0',
'            or exists ( select null',
'                        from eba_proj_tags pt',
'                        where lower(pt.tag) = trim(lower(:P8_SEARCH))',
'                            and pt.content_type = ''MILESTONE''',
'                            and pt.content_id = m.id )',
'        )',
'    union all',
'    select ''Project Update'' attribute,',
'        2 sort_order,',
'        dbms_lob.substr(STATUS_UPDATE,3000,1) text,',
'        updated,',
'        (select project from eba_proj_status p where p.id = u.project_id) project,',
'        case',
'            when eba_proj_fw.is_edit_authorized( p_username => :APP_USER, p_project_id => u.project_id ) = ''Y'' then',
'                apex_util.prepare_url(''f?p=''||:app_id||'':129:''||:app_session||'':::129:P200_ID,P129_PROJECT_ID,P129_ID:''||u.project_id||'',''||project_id||'',''||u.id)',
'            else',
'                apex_util.prepare_url(''f?p=''||:app_id||'':200:''||:app_session||'':::2,200:P2_ID,P200_ID:''||u.project_id||'',''||u.project_id)',
'        end thelink,',
'        apex_util.prepare_url(''f?p=''||:app_id||'':200:''||:app_session||'':::200:P200_ID:''||project_id) thelink2,',
'        project_id project_id,',
'        (select nvl(eba_proj_fw.get_project_rowkey(p_project_id => s.id), s.row_key) from eba_proj_status s where u.project_id = s.id) row_key,',
'        (select project from eba_proj_status where id = u.project_id) as project_name',
'    from eba_proj_status_updates u',
'    where instr(:P8_INCLUDE,''U'') > 0 and',
'        ( :P8_PROJECT is null or u.project_id = :P8_PROJECT ) and',
'        exists (select null',
'                from apex_application_build_options',
'                where application_id = :APP_ID',
'                    and build_option_name = ''Project Updates''',
'                    and build_option_status = ''Include''',
'             ) and',
'        (',
'            instr(lower(dbms_lob.substr(STATUS_UPDATE,2000,1)),lower(:P8_SEARCH)) > 0',
'            or',
'            instr(lower(dbms_lob.substr(STATUS_UPDATE,2000,1901)),lower(:P8_SEARCH)) > 0',
'            or',
'            instr(lower(dbms_lob.substr(STATUS_UPDATE,2000,3901)),lower(:P8_SEARCH)) > 0',
'            or exists ( select null',
'                        from eba_proj_tags pt',
'                        where lower(pt.tag) = trim(lower(:P8_SEARCH))',
'                            and pt.content_type = ''UPDATES''',
'                            and pt.content_id = u.id )',
'        )',
'    union all',
'    select ''Status Report'' attribute,',
'        2 sort_order,',
'        dbms_lob.substr(u.status_update,500,1) text,',
'        u.updated,',
'        p.project project,',
'        case',
'            when eba_proj_fw.is_edit_authorized( p_username => :APP_USER, p_project_id => p.id ) = ''Y'' then',
'                apex_util.prepare_url(''f?p=''||:app_id||'':120:''||:app_session||'':::120:P200_ID,P120_STATUS_REPORT_ID:''||p.id||'',''||u.id)',
'            else',
'                apex_util.prepare_url(''f?p=''||:app_id||'':200:''||:app_session||'':::2,200:P2_ID,P200_ID:''||p.id||'',''||p.id)',
'        end thelink,',
'        apex_util.prepare_url(''f?p=''||:app_id||'':200:''||:app_session||'':::200:P200_ID:''||project_id) thelink2,',
'        p.id project_id,',
'        u.row_key row_key,',
'        p.project as project_name',
'    from EBA_PROJ_STATUS_RPTS u,',
'         EBA_PROJ_STATUS p,',
'         EBA_PROJ_STATUS_CODES s,',
'         EBA_PROJ_COLOR_CODES col',
'    where instr(:P8_INCLUDE,''R'') > 0 and',
'        ( :P8_PROJECT is null or p.id = :P8_PROJECT ) and',
'        exists (select null',
'                from apex_application_build_options',
'                where application_id = :APP_ID',
'                    and build_option_name = ''Project Status Reports''',
'                    and build_option_status = ''Include''',
'            ) and',
'        p.id = u.project_id and',
'        ( u.update_owner = lower(:APP_USER)',
'            OR',
'            (u.viewable_by = ''Submitter and Project Members'' and',
'                exists (select null',
'                        from eba_proj_status_users usr,',
'                            eba_proj_user_ref rf,',
'                            eba_proj_roles r',
'                        where lower(usr.username) = lower(:APP_USER)',
'                            and rf.user_id = usr.id',
'                            and rf.project_id = u.project_id',
'                            and eba_proj_fw.is_edit_authorized( usr.username, rf.project_id ) = ''Y'' ))',
'            OR',
'            u.viewable_by = ''All'' ) and',
'        p.PROJECT_STATUS = s.id(+) and',
'        col.id(+) = s.color_code_id and',
'        (',
'            instr(lower(u.row_key),lower(:P8_SEARCH)) > 0 or',
'            instr(lower(u.status_title),lower(:P8_SEARCH)) > 0 or',
'            instr(lower(dbms_lob.substr(u."STATUS_UPDATE",2000,1)),lower(:P8_SEARCH)) > 0 or',
'            instr(lower(dbms_lob.substr(u."STATUS_UPDATE",2000,1990)),lower(:P8_SEARCH)) > 0 or',
'            instr(lower(dbms_lob.substr(u."STATUS_UPDATE",2000,3990)),lower(:P8_SEARCH)) > 0 or',
'            instr(lower(u.update_owner),lower(:P8_SEARCH)) > 0',
'        )',
'    union all',
'    select ''Links'' attribute,',
'        2 sort_order,',
'        nvl(l.LINK_TEXT,l.link_target) text,',
'        l.updated,',
'        (select project from eba_proj_status p where p.id = l.project_id) project,',
'        case',
'            when eba_proj_fw.is_edit_authorized( p_username => :APP_USER, p_project_id => l.project_id ) = ''Y'' then',
'                apex_util.prepare_url(''f?p=''||:app_id||'':3:''||:app_session||'':::3,200:P200_ID,P3_ID:''||l.project_id||'',''||l.id)',
'            else',
'                apex_util.prepare_url(''f?p=''||:app_id||'':200:''||:app_session||'':::2,200:P2_ID,P200_ID:''||l.project_id||'',''||l.project_id)',
'        end thelink,',
'        '''' thelink2,',
'        project_id project_id,',
'        (select nvl(eba_proj_fw.get_project_rowkey(p_project_id => s.id), s.row_key) from eba_proj_status s where l.project_id = s.id) row_key,',
'        (select project from eba_proj_status where id = l.project_id) as project_name',
'    from eba_proj_status_links l',
'    where instr(:P8_INCLUDE,''L'') > 0 and',
'        ( :P8_PROJECT is null or l.project_id = :P8_PROJECT ) and',
'        exists (select null',
'                from apex_application_build_options',
'                where application_id = :APP_ID',
'                    and build_option_name = ''Project Links''',
'                    and build_option_status = ''Include''',
'             ) and',
'        (instr(lower(nvl(l.LINK_TEXT,l.link_target)),lower(:P8_SEARCH)) > 0',
'            or exists ( select null',
'                        from eba_proj_tags pt',
'                        where lower(pt.tag) = trim(lower(:P8_SEARCH))',
'                            and pt.content_type = ''LINK''',
'                            and pt.content_id = l.id )',
'        )',
'    union all',
'    select ''File(s)'' attribute,',
'        2 sort_order,',
'        f.filename||nvl2(f.file_comments,'' - ''||f.file_comments,'''') text,',
'        f.updated,',
'        (select project from eba_proj_status p where p.id = f.project_id) project,',
'        case',
'            when eba_proj_fw.is_edit_authorized( p_username => :APP_USER, p_project_id => f.project_id ) = ''Y'' then',
'                apex_util.prepare_url(''f?p=''||:app_id||'':43:''||:app_session||'':::43,200:P200_ID,P43_ID:''||f.project_id||'',''||f.id)',
'            else',
'                apex_util.prepare_url(''f?p=''||:app_id||'':200:''||:app_session||'':::2,200:P2_ID,P200_ID:''||f.project_id||'',''||f.project_id)',
'        end thelink,',
'        '''' thelink2,',
'        f.project_id project_id,',
'        (select nvl(eba_proj_fw.get_project_rowkey(p_project_id => s.id), s.row_key) from eba_proj_status s where f.project_id = s.id) row_key,',
'        (select project from eba_proj_status where id = f.project_id) as project_name',
'    from eba_proj_status_files f',
'    where instr(:P8_INCLUDE,''F'') > 0',
'        and ( :P8_PROJECT is null or f.project_id = :P8_PROJECT )',
'        and exists (select null',
'                    from apex_application_build_options',
'                    where application_id = :APP_ID',
'                        and build_option_name = ''Project Attachments''',
'                        and build_option_status = ''Include''',
'        )',
'        and (instr(lower(f.filename),lower(:P8_SEARCH)) > 0',
'            or instr(lower(f.file_comments),lower(:P8_SEARCH)) > 0',
'            or exists ( select null',
'                        from eba_proj_tags pt',
'                        where lower(pt.tag) = trim(lower(:P8_SEARCH))',
'                            and pt.content_type = ''FILE''',
'                            and pt.content_id = f.id )',
'        )',
'    union all',
'    select ''Resource(s)'' attribute,',
'        2 sort_order,',
'        r.resource_name||nvl2(r.notes,'' - ''||r.notes,'''') text,',
'        r.updated,',
'        (select project from eba_proj_status p where p.id = r.project_id) project,',
'        case',
'            when eba_proj_fw.is_edit_authorized( p_username => :APP_USER, p_project_id => r.project_id ) = ''Y'' then',
'                apex_util.prepare_url(''f?p=''||:app_id||'':170:''||:app_session||'':::170:P170_ID,P170_PROJECT_ID:''||r.id||'',''||r.project_id)',
'            else',
'                apex_util.prepare_url(''f?p=''||:app_id||'':200:''||:app_session||'':::2,200:P2_ID,P200_ID:''||r.project_id||'',''||r.project_id)',
'        end thelink,',
'        '''' thelink2,',
'        r.project_id project_id,',
'        (select nvl(eba_proj_fw.get_project_rowkey(p_project_id => s.id), s.row_key) from eba_proj_status s where s.id = r.project_id) row_key,',
'        (select project from eba_proj_status where id = r.project_id) as project_name',
'    from eba_proj_resources r',
'    where instr(:P8_INCLUDE,''S'') > 0',
'        and ( :P8_PROJECT is null or r.project_id = :P8_PROJECT )',
'        and exists (select null',
'                    from apex_application_build_options',
'                    where application_id = :APP_ID',
'                        and build_option_name = ''Project Resources''',
'                        and build_option_status = ''Include''',
'             )',
'        and ( instr(lower(r.resource_name),lower(:P8_SEARCH)) > 0',
'            or instr(lower(r.notes),lower(:P8_SEARCH)) > 0 )',
'    union all',
'    select ''Issue(s)'' attribute,',
'        2 sort_order,',
'        i.issue||nvl2(i.issue_detail,',
'                        '' - ''||dbms_lob.substr(i.issue_detail,100)||''...'',',
'                        '''') text,',
'        i.updated,',
'        (select project from eba_proj_status p where p.id = i.project_id) project,',
'        case',
'            when eba_proj_fw.is_edit_authorized( p_username => :APP_USER, p_project_id => i.project_id ) = ''Y'' then',
'                apex_util.prepare_url(''f?p=''||:app_id||'':24:''||:app_session||'':::24,200:P24_ID,P2_ID:''||i.id||'',''||i.project_id)',
'            else',
'                apex_util.prepare_url(''f?p=''||:app_id||'':200:''||:app_session||'':::2,200:P2_ID,P200_ID:''||i.project_id||'',''||i.project_id)',
'        end thelink,',
'        '''' thelink2,',
'        i.project_id project_id,',
'        (select nvl(eba_proj_fw.get_project_rowkey(p_project_id => s.id), s.row_key) from eba_proj_status s where s.id = i.project_id) row_key,',
'        (select project from eba_proj_status where id = i.project_id) as project_name',
'    from eba_proj_status_issues i',
'    where instr(:P8_INCLUDE,''X'') > 0',
'        and ( :P8_PROJECT is null or i.project_id = :P8_PROJECT )',
'        and exists (select null',
'                    from apex_application_build_options',
'                    where application_id = :APP_ID',
'                        and build_option_name = ''Project Issues''',
'                        and build_option_status = ''Include''',
'             )',
'        and ( instr(lower(i.issue),lower(:P8_SEARCH)) > 0',
'            or instr(lower(dbms_lob.substr(i.issue_detail,2000,1)),lower(:P8_SEARCH)) > 0',
'            or instr(lower(dbms_lob.substr(i.issue_detail,2000,1990)),lower(:P8_SEARCH)) > 0',
'            or instr(lower(dbms_lob.substr(i.issue_detail,2000,3990)),lower(:P8_SEARCH)) > 0',
'        )',
'    ) x',
'order by sort_order, updated desc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P8_INCLUDE,P8_PROJECT'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(6781122029841890820)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6830313815608968757)
,p_query_column_id=>1
,p_column_alias=>'SEARCH_LINK'
,p_column_display_sequence=>9
,p_column_heading=>'Search Link'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6830311616481932297)
,p_query_column_id=>2
,p_column_alias=>'SEARCH_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Search Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6830312423889946296)
,p_query_column_id=>3
,p_column_alias=>'SEARCH_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Search Desc'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6830312626880951111)
,p_query_column_id=>4
,p_column_alias=>'LABEL_01'
,p_column_display_sequence=>5
,p_column_heading=>'Label 01'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6830312752736951111)
,p_query_column_id=>5
,p_column_alias=>'VALUE_01'
,p_column_display_sequence=>6
,p_column_heading=>'Value 01'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6830313473653963937)
,p_query_column_id=>6
,p_column_alias=>'LABEL_02'
,p_column_display_sequence=>7
,p_column_heading=>'Label 02'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6830313576468963937)
,p_query_column_id=>7
,p_column_alias=>'VALUE_02'
,p_column_display_sequence=>8
,p_column_heading=>'Value 02'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6830366131100989723)
,p_query_column_id=>8
,p_column_alias=>'LABEL_03'
,p_column_display_sequence=>10
,p_column_heading=>'Label 03'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6830366225560989723)
,p_query_column_id=>9
,p_column_alias=>'VALUE_03'
,p_column_display_sequence=>11
,p_column_heading=>'Value 03'
,p_column_link=>'#PROJECT_LINK#'
,p_column_linktext=>'#VALUE_03#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6803974160774339938)
,p_query_column_id=>10
,p_column_alias=>'SECONDARY_LINK'
,p_column_display_sequence=>1
,p_column_heading=>'SECONDARY_LINK'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(4245854398290312996)
,p_query_column_id=>11
,p_column_alias=>'PROJECT_LINK'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6803974224912339938)
,p_query_column_id=>12
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'ICON_CLASS'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9012951838668437314)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9013139126772930633)
,p_plug_name=>'Include Components'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--stretchInputs:t-Form--labelsAbove:t-Region--hideHeader'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6887067427718161133)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(9013139126772930633)
,p_button_name=>'P8_UNCHECK_ALL'
,p_button_static_id=>'P8_UNCHECK_ALL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Uncheck All'
,p_button_position=>'BODY'
,p_button_execute_validations=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7972868196318799776)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9013139126772930633)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7972867510039794333)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(9013139126772930633)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(6781134954745890861)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP,8::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(9013141120212963191)
,p_branch_action=>'f?p=&FLOW_ID.:8:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6175200197946558816)
,p_branch_name=>'Branch when project search exactly matches one project'
,p_branch_action=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::P200_ID:&P8_ID.'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   c integer := 0;',
'   i number := 0;',
'begin',
'   for c1 in (',
'   select  max(id) i, count(*) c',
'   from eba_proj_status s',
'   where PROJECT = replace(:P8_SEARCH,''[comma]'','','') and',
'         instr(nvl(:P8_INCLUDE,''P''),''P'') > 0 )',
'         loop',
'         c := c1.c;',
'         i := c1.i;',
'   end loop;',
'   if c = 1 then',
'       :P8_ID := i;',
'       return true;',
'   else',
'       return false;',
'   end if;',
'end;'))
,p_branch_condition_text=>'PLSQL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6175201401995617709)
,p_name=>'P8_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6175200296938561133)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9013055121111878150)
,p_name=>'P8_SEARCH'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9013139126772930633)
,p_prompt=>'Search'
,p_placeholder=>'Search'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>64
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9013139939716943889)
,p_name=>'P8_INCLUDE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9013139126772930633)
,p_item_default=>'P:U:O:I:F:M:L:C:A'
,p_prompt=>'Include'
,p_source=>'P:U:O:I:F:M:L:C:R:S:X'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'SEARCH ATTRIBUTE LOV'
,p_lov=>'.'||wwv_flow_api.id(9013141544265973565)||'.'
,p_field_template=>wwv_flow_api.id(6781134578441890854)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9025704044562414112)
,p_name=>'P8_SHOW_COMPLETED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9013139126772930633)
,p_item_default=>'N'
,p_prompt=>'Show Completed Projects'
,p_source=>'N'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'YES NO RETURNS Y N'
,p_lov=>'.'||wwv_flow_api.id(9019252630556871632)||'.'
,p_field_template=>wwv_flow_api.id(6781134673650890856)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(19239061217989424134)
,p_name=>'P8_PROJECT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9013139126772930633)
,p_prompt=>'Filter by Project'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PROJECTS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select project d, id r',
'from eba_proj_status',
'order by upper(project)'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'- All Projects -'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(6899231875758612224)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(13193037073840755078)
,p_computation_sequence=>10
,p_computation_item=>'PROJECT_CAME_FROM'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'&APP_PAGE_ID.'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6874456096242390998)
,p_name=>'Uncheck All'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(6887067427718161133)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6874456250745390999)
,p_event_id=>wwv_flow_api.id(6874456096242390998)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P8_INCLUDE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6874456391242391001)
,p_name=>'Refresh Results'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_INCLUDE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6874456520159391002)
,p_event_id=>wwv_flow_api.id(6874456391242391001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6803973202332339920)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4245854453966312997)
,p_name=>'Refresh after Edit'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(6803973202332339920)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4245854598139312998)
,p_event_id=>wwv_flow_api.id(4245854453966312997)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6803973202332339920)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9015692644623524724)
,p_process_sequence=>10
,p_process_point=>'AFTER_FOOTER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'save search'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into eba_proj_status_searches (',
'   search_string,',
'   search_user,',
'   hits,',
'   parms)',
'values (',
'   upper(:p8_search),',
'   lower(:app_user),',
'   wwv_flow.g_flow_current_rows_fetched,',
'   :P8_INCLUDE);',
'commit;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6175212380344133556)
,p_process_sequence=>0
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'replace commas'
,p_process_sql_clob=>':P8_SEARCH := replace(:P8_SEARCH,''[comma]'','','');'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
