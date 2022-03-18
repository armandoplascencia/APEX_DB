prompt --application/deployment/install/install_procedure_eba_proj_status_show_detail
begin
--   Manifest
--     INSTALL: INSTALL-procedure eba_proj_status_show_detail
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
 p_id=>wwv_flow_api.id(8148487819130152700)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'procedure eba_proj_status_show_detail'
,p_sequence=>560
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace procedure eba_proj_status_show_detail (p_project_id in number, p_app_id in number, p_app_session in number) is',
'    c              pls_integer := 0;',
'    l_last_project varchar2(500) := ''ZZZ'';',
'',
'    function get_milestone_name (p_id in number) return varchar2 is',
'        r varchar2(32767) := null;',
'    begin',
'        for c1 in ( select milestone_name',
'                    from   eba_proj_status_ms',
'                    where  project_id = p_id and milestone_status = ''Open''',
'                    order  by milestone_date desc) loop',
'            r := c1.milestone_name;',
'            exit;',
'        end loop;',
'        return apex_escape.html(r);',
'    end;',
'',
'    function get_next_ai (p_id in number) return varchar2 is',
'        r varchar2(5000) := null;',
'    begin',
'        for c1 in ( select action , due_date',
'                    from   eba_proj_status_ais',
'                    where  project_id = p_id and action_status = ''Open''',
'                    order  by due_date desc) loop',
'            r := apex_escape.html(c1.ACTION)||''<br />Due: ''||to_char(c1.due_date,''Day Month DD, YYYY'')||'' - ''||apex_util.get_since(c1.due_date);',
'            exit;',
'        end loop;',
'        return r;',
'    end;',
'',
'    function get_last_status (p_id in number) return varchar2 is',
'        r varchar2(32767) := null;',
'    begin',
'        for c1 in ( select status_update, created, created_by',
'                    from   eba_proj_status_updates',
'                    where  project_id = p_id',
'                    order  by created desc ) loop',
'            r := apex_escape.html(dbms_lob.substr(c1.status_update,500,1))||''<br />Contributed: ''||to_char(c1.CREATED,''Day Month DD, YYYY'')||'' - ''||apex_util.get_since(c1.CREATED)||'' by ''||apex_escape.html(lower(c1.created_by));',
'            exit;',
'        end loop;',
'        return r;',
'    end;',
'begin',
'    for c1 in ( select (select min(milestone_date)',
'                        from eba_proj_status_ms x',
'                        where x.project_id = p.id',
'                            and x.milestone_status = ''Open'') next_milestone_date,',
'                    p.id project_id,',
'                    p.row_key,',
'                    p.project,',
'                    decode(p.cat_id,null,null,',
'                        (   select category',
'                            from eba_proj_status_cats x',
'                            where x.id = p.cat_id)) proj_cat,',
'                    s.status_short_desc status_text,',
'                    (   select listagg(lower(u.username),'', '') within group',
'                            (order by nvl(rf.acl_status_level,r.default_acl_status_level) desc, lower(u.username))',
'                        from eba_proj_user_ref rf,',
'                            eba_proj_status_users u,',
'                            eba_proj_roles r',
'                        where rf.project_id = s.id',
'                            and rf.user_id = u.id',
'                            and rf.role_id = r.id',
'                            and eba_proj_fw.is_edit_authorized( u.username, rf.project_id ) = ''Y'' ) as owner,',
'                    (   select count(*)',
'                        from eba_proj_status_ais a',
'                        where a.project_id = p.id',
'                            and a.action_status = ''Open'') action_items,',
'                    (   select count(*)',
'                        from eba_proj_status_ms m',
'                        where m.project_id = p.id',
'                            and m.milestone_status = ''Open'') open_milestones,',
'                    decode(parent_project_id,null,null,',
'                        (   select project',
'                            from eba_proj_status x',
'                            where x.id = p.parent_project_id)) parent_project,',
'                    (   select count(*)',
'                        from eba_proj_status_updates x',
'                        where x.project_id = p.id ) status_updates,',
'                    p.parent_project_id,',
'                    (   select count(*)',
'                        from eba_proj_status x',
'                        where x.parent_project_id = p.id ) child_projects,',
'                    p.tags,',
'                    p.goal,',
'                    p.created,',
'                    p.created_by,',
'                    p.updated,',
'                    p.updated_by',
'                from eba_proj_status p,',
'                    eba_proj_status_codes s',
'                where p.project_status = s.id(+)',
'                    and p.id = p_project_id ) loop',
'        c := c + 1;',
'',
'        sys.htp.prn(''<div class="ctPDetails">'');',
'        sys.htp.prn(''<h3><a href="'');',
'        sys.htp.prn(apex_util.prepare_url(''f?p=''||p_app_id||'':200:''||p_app_session||''::NO:200:P200_ID:''||c1.project_id));',
'        sys.htp.prn(''">''||apex_escape.html(c1.project)||''</a></h3><ul>'');',
'',
'        sys.htp.prn(''<li>'');',
'        sys.htp.prn(''<table cellspacing="0" cellpadding="0" summary="">'');',
'',
'        if c1.proj_cat is not null then',
'            sys.htp.prn(''<tr><th>Category</th><td>''||apex_escape.html(c1.proj_cat)||''</td></tr>'');',
'        end if;',
'        if c1.parent_project is not null then',
'            sys.htp.prn(''<tr><th>Parent Project</th><td>''||apex_escape.html(c1.parent_project)||''</td></tr>'');',
'        end if;',
'        if c1.child_projects > 0 then',
'            sys.htp.prn(''<tr><th>Child Projects</th><td>''||to_char(c1.child_projects,''999G990'')||''</td></tr>'');',
'        end if;',
'',
'        sys.htp.prn(''<tr><th>Owner(s)</th><td>''||apex_escape.html(c1.owner)||''</td></tr>'');',
'        sys.htp.prn(''<tr><th>Status</th><td>''||apex_escape.html(c1.status_text)||''</td></tr>'');',
'        sys.htp.prn(''<tr><th>Goal</th><td>''||apex_escape.html(c1.goal)||''</td></tr>'');',
'        if c1.tags is not null then',
'            sys.htp.prn(''<tr><th>Tags</th><td>''||apex_escape.html(c1.tags)||''</td></tr>'');',
'        end if;',
'        if c1.open_milestones = 0 then',
'            sys.htp.prn(''<tr><th>Milestones</th><td>None defined, '');',
'            sys.htp.prn(''<a href="''||apex_util.prepare_url(''f?p=''||p_app_id||'':200:''||p_app_session||''::NO:200:P200_ID:''||c1.project_id)||''">'');',
'            sys.htp.prn(''create milestone</a>'');',
'        else',
'            sys.htp.prn(''<tr><th>''',
'                ||to_char(c1.open_milestones,''999G990'')',
'                ||'' Open Milestones</th><td>'');',
'            sys.htp.prn(''Next Milestone: ''||get_milestone_name(c1.project_id)||''<br />''',
'                ||to_char(c1.NEXT_MILESTONE_DATE,''Day Month DD, YYYY'')||'' - ''',
'                ||apex_util.get_since(c1.NEXT_MILESTONE_DATE));',
'            sys.htp.prn(''.  View <a href="''||apex_util.prepare_url(''f?p=''||p_app_id||'':68:''||p_app_session||'':::68:P68_PROJECT:''',
'                ||c1.project_id)||''">Gantt</a> or '');',
'            sys.htp.prn('' <a href="''||apex_util.prepare_url(''f?p=''||p_app_id||'':34:''||p_app_session||'':::34,200:P200_ID,P34_ID:''',
'                ||c1.project_id||'',''||c1.project_id)||''">timeline</a>.'');',
'            sys.htp.prn(''</td></tr>'');',
'        end if;',
'        if c1.action_items != 0 then',
'            sys.htp.prn(''<tr><th>''',
'                ||to_char(c1.action_items,''999G990'')||'' Open Action Items</th><td>''',
'                ||''Next Action: ''||get_next_ai(c1.project_id)',
'                ||''</td></tr>'');',
'        end if;',
'        if c1.status_updates != 0 then',
'            sys.htp.prn(''<tr><th>''||to_char(c1.status_updates,''999G990'')||'' Status Updates</th>''',
'                ||''<td>Most Recent:<br />''||get_last_status(c1.project_id)',
'                ||''</td></tr>'');',
'        end if;',
'        sys.htp.prn(''<tr><th>Timestamps</th><td>Created ''||apex_util.get_since(c1.created)||'' by ''',
'            ||apex_escape.html(lower(c1.created_by))',
'            ||''<br />Updated ''||apex_util.get_since(c1.updated)||'' by ''',
'            ||apex_escape.html(lower(c1.updated_by))||''</td></tr>'');',
'        sys.htp.prn(''</table>'');',
'        l_last_project := c1.project;',
'    end loop; -- c1',
'    sys.htp.prn(''</ul>'');',
'    sys.htp.prn(''<div class="clear"></div>'');',
'    sys.htp.prn(''</div>'');',
'end eba_proj_status_show_detail;',
'/',
'show errors'))
);
wwv_flow_api.component_end;
end;
/
