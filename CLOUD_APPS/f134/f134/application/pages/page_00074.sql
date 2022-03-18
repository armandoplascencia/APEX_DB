prompt --application/pages/page_00074
begin
--   Manifest
--     PAGE: 00074
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
 p_id=>74
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Merge Projects'
,p_step_title=>'Merge Projects'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'.permalink { padding: 0 10px 10px 10px; text-align: center;}',
'.permalink a {color: #707070; font: 11px/12px Arial, sans-serif;}',
'</style>',
'',
'<style type="text/css" media="all">',
'',
'',
'#MILESTONES .rc-body-r{height:500px !important;}',
'#TO .rc-body-r{height:280px !important;}',
'',
'</style>'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_api.id(7306166303644991446)
,p_protection_level=>'C'
,p_help_text=>'Verify these are the two projects that you want to merge. Remember the project on the bottom will become merged into the project listed on top and then removed. If everything looks good to you, click the <strong>Merge Projects</strong> button to comp'
||'lete the merge process. You can also go back a step by clicking the <strong><</strong> button or click the <strong>Cancel</strong> button to return to the project details page.'
,p_last_upd_yyyymmddhh24miss=>'20190905110020'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8148479717252757075)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781117976757890807)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(8972392840601050532)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(6781135716305890867)
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8148483930754995166)
,p_plug_name=>'Merge'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(6781115417665890803)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8148483115807886829)
,p_plug_name=>'Merge To Project'
,p_parent_plug_id=>wwv_flow_api.id(8148483930754995166)
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.p(''<p>Primary Project - Merge Into this Project</p>'');',
'eba_proj_status_show_detail (',
'  p_project_id => :P54_PRIMARY_PROJECT,',
'  p_app_id => :APP_ID,',
'  p_app_session => :APP_SESSION);'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css" media="all">',
'div.ctPDetails{border-bottom:1px solid #DDD;clear:both;position:relative;padding: 10px 0 5px 0}',
'div.ctPDetails:last-child{border-bottom:none;}',
'div.ctPDetails h3{font:bold 12px/16px Arial,sans-serif;margin:0;padding:7px 10px;width:200px;color:#333;position:absolute;top:0;left:0;}',
'div.ctPDetails h3 a {color: #333; text-decoration: none; border-bottom: 1px solid #CCC}',
'div.ctPDetails h3 + ul{margin:0;list-style:none;padding:0;margin:0 0 0 220px;}',
'div.ctPDetails ul li{display:table;width:100%;}',
'div.ctPDetails ul li a.accountName{font:bold 11px/14px Arial,sans-serif;display:inline-block;padding:7px 0;color:#333;text-decoration:underline;}',
'div.ctPDetails ul li table a{color:#333;text-decoration:underline;}',
'div.ctPDetails ul li table{width:100%;}',
'div.ctPDetails ul li table th,',
'div.ctPDetails ul li table td{padding:0 0 5px 0;font:normal 11px/16px Arial,sans-serif;color:#666;vertical-align: top}',
'div.ctPDetails ul li table th{font-weight:bold;text-align:left;width:120px;vertical-align: top}',
'</style>'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(8148483415938896303)
,p_plug_name=>'Merge From Project'
,p_parent_plug_id=>wwv_flow_api.id(8148483930754995166)
,p_component_template_options=>'#DEFAULT#'
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sys.htp.p(''<p>Project to be merged - this project will no longer exist after the merge</p>'');',
'eba_proj_status_show_detail (',
'  p_project_id => :P54_MERGE_PROJECT,',
'  p_app_id => :APP_ID,',
'  p_app_session => :APP_SESSION);'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css" media="all">',
'div.ctPDetails{border-bottom:1px solid #DDD;clear:both;position:relative;padding: 10px 0 5px 0}',
'div.ctPDetails:last-child{border-bottom:none;}',
'div.ctPDetails h3{font:bold 12px/16px Arial,sans-serif;margin:0;padding:7px 10px;width:200px;color:#333;position:absolute;top:0;left:0;}',
'div.ctPDetails h3 a {color: #333; text-decoration: none; border-bottom: 1px solid #CCC}',
'div.ctPDetails h3 + ul{margin:0;list-style:none;padding:0;margin:0 0 0 220px;}',
'div.ctPDetails ul li{display:table;width:100%;}',
'div.ctPDetails ul li a.accountName{font:bold 11px/14px Arial,sans-serif;display:inline-block;padding:7px 0;color:#333;text-decoration:underline;}',
'div.ctPDetails ul li table a{color:#333;text-decoration:underline;}',
'div.ctPDetails ul li table{width:100%;}',
'div.ctPDetails ul li table th,',
'div.ctPDetails ul li table td{padding:0 0 5px 0;font:normal 11px/16px Arial,sans-serif;color:#666;vertical-align: top}',
'div.ctPDetails ul li table th{font-weight:bold;text-align:left;width:120px;vertical-align: top}',
'</style>'))
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8148486537092129522)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8148486926685129522)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'Merge'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781135529450890864)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Merge Projects'
,p_button_position=>'REGION_TEMPLATE_CREATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(8148486726630129522)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(6212459901559585507)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(6781134785393890859)
,p_button_image_alt=>'Previous'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:54:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(8148487333067137815)
,p_branch_action=>'f?p=&APP_ID.:&LAST_VIEW.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_save_state_before_branch_yn=>'Y'
,p_branch_comment=>'Created 02-JUL-2011 19:38 by MIKE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8148487442071140350)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Merge Projects'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sql_stmt varchar2(500);',
'    cursor act_csr is',
'        -- Two different children can be merged.',
'        select ''MERGE_2C'' action',
'        from eba_proj_status eps_pri,',
'            eba_proj_status eps_sec',
'        where eps_pri.id = :P54_PRIMARY_PROJECT',
'            and eps_sec.id = :P54_MERGE_PROJECT',
'            and eps_pri.parent_project_id is not null',
'            and eps_sec.parent_project_id is not null',
'            and eps_sec.id != eps_pri.id',
'        -- Two different parents can be merged.',
'        union all',
'        select ''MERGE_2P'' action',
'        from eba_proj_status eps_pri,',
'            eba_proj_status eps_sec',
'        where eps_pri.id = :P54_PRIMARY_PROJECT',
'            and eps_sec.id = :P54_MERGE_PROJECT',
'            and eps_pri.parent_project_id is null',
'            and eps_sec.parent_project_id is null',
'            and eps_sec.id != eps_pri.id',
'        -- A child of another project can be reparented into a different parent',
'        union all',
'        select ''REPARENT'' action',
'        from eba_proj_status eps_pri,',
'            eba_proj_status eps_sec',
'        where eps_pri.id = :P54_PRIMARY_PROJECT',
'            and eps_sec.id = :P54_MERGE_PROJECT',
'            and eps_pri.parent_project_id is null',
'            and eps_sec.parent_project_id is not null',
'            and eps_pri.id != eps_sec.parent_project_id',
'        -- A child can be merged into its own parent, perhaps?',
'        union all',
'        select ''MERGE_CP'' action',
'        from eba_proj_status eps_sec',
'        where eps_sec.parent_project_id = :P54_PRIMARY_PROJECT',
'            and eps_sec.id = :P54_MERGE_PROJECT;',
'    act_rec act_csr%ROWTYPE;',
'begin',
'    for act_rec in act_csr loop',
'        -- Reparenting',
'        if act_rec.action in (''REPARENT'') then',
'            update eba_proj_status',
'            set parent_project_id = :P54_PRIMARY_PROJECT',
'            where id = :P54_MERGE_PROJECT;',
'        end if;',
'        -- Action Items',
'        if act_rec.action in (''MERGE_2C'', ''MERGE_2P'', ''MERGE_CP'') then',
'            update eba_proj_status_ais',
'            set project_id = :P54_PRIMARY_PROJECT',
'            where project_id = :P54_MERGE_PROJECT;',
'            commit;',
'        end if;',
'        -- Status Updates',
'        if act_rec.action in (''MERGE_2C'', ''MERGE_2P'', ''MERGE_CP'') then',
'            update eba_proj_status_updates',
'            set project_id = :P54_PRIMARY_PROJECT',
'            where project_id = :P54_MERGE_PROJECT;',
'            commit;',
'        end if;',
'        -- Milestones',
'        if act_rec.action in (''MERGE_2C'', ''MERGE_2P'', ''MERGE_CP'') then',
'            update eba_proj_status_ms',
'            set project_id = :P54_PRIMARY_PROJECT',
'            where project_id = :P54_MERGE_PROJECT;',
'            commit;',
'        end if;',
'        -- Child Projects',
'        if act_rec.action in (''MERGE_2P'') then',
'            update eba_proj_status',
'            set parent_project_id = :P54_PRIMARY_PROJECT',
'            where parent_project_id = :P54_MERGE_PROJECT;',
'            commit;',
'        end if;',
'        -- Files',
'        if act_rec.action in (''MERGE_2C'', ''MERGE_2P'', ''MERGE_CP'') then',
'            update eba_proj_status_files',
'            set project_id = :P54_PRIMARY_PROJECT',
'            where project_id = :P54_MERGE_PROJECT;',
'            commit;',
'        end if;',
'        -- Links',
'        if act_rec.action in (''MERGE_2C'', ''MERGE_2P'', ''MERGE_CP'') then',
'            update eba_proj_status_links',
'            set project_id = :P54_PRIMARY_PROJECT',
'            where project_id = :P54_MERGE_PROJECT;',
'            commit;',
'        end if;',
'        -- Delete old project if appropriate.',
'        if act_rec.action in (''MERGE_2C'', ''MERGE_2P'', ''MERGE_CP'') then',
'            update eba_proj_status$ set is_deleted_yn = ''Y'' where id = :P54_MERGE_PROJECT;',
'            commit;',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_success_message=>'Projects merged.'
);
wwv_flow_api.component_end;
end;
/
