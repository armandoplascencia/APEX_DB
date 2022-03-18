prompt --application/deployment/install/install_ms_ai_number_mviews
begin
--   Manifest
--     INSTALL: INSTALL-MS/AI Number MViews
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
 p_id=>wwv_flow_api.id(2115006995083850123)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'MS/AI Number MViews'
,p_sequence=>450
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create table eba_proj_status_ms_no_tbl as',
'select ms.project_id,',
'    ms.id milestone_id,',
'    rank() over (partition by ms.project_id',
'                 order by ms.milestone_start_date, lower(ms.milestone_name)) by_start_date,',
'    rank() over (partition by ms.project_id',
'                 order by ms.milestone_date, lower(ms.milestone_name)) by_end_date',
'from eba_proj_status_ms$ ms;',
'',
'create unique index eba_proj_status_ms_no_tbl_idx on',
'    eba_proj_status_ms_no_tbl ( project_id, milestone_id );',
'',
'create or replace view eba_proj_status_ms_no_v as ',
'  select mn.project_id,',
'    mn.milestone_id,',
'    case when ( select nvl(preference_value,''END'')',
'                from eba_proj_preferences',
'                where preference_name = ''MILESTONE_SORT_ORDER'') = ''START'' then',
'            mn.by_start_date',
'        else',
'            mn.by_end_date',
'    end as milestone_number',
'from eba_proj_status_ms_no_tbl mn;',
'',
'create table eba_proj_status_ai_no_tbl as ',
'  select ai.project_id,',
'    ai.milestone_id,',
'    ai.id action_item_id,',
'    rank() over (partition by ai.project_id, ai.milestone_id order by nvl(ai.completed_date,ai.due_date), lower(ai.action)) action_item_number',
'from eba_proj_status_ais$ ai;',
'',
'create unique index eba_proj_status_ai_no_tbl_idx on',
'    eba_proj_status_ai_no_tbl ( project_id, milestone_id, action_item_id );',
'    ',
'create or replace trigger aiud_eba_proj_status_ms_no',
'    after insert or update or delete on eba_proj_status_ms$',
'--    for each row -- Note: this trigger is a STATEMENT trigger, rather than a ROW trigger.',
'begin',
'    delete from  eba_proj_status_ms_no_tbl;',
'',
'    insert into eba_proj_status_ms_no_tbl ( project_id, milestone_id, by_start_date, by_end_date )',
'    select ms.project_id,',
'        ms.id milestone_id,',
'        rank() over (partition by ms.project_id',
'                     order by ms.milestone_start_date, lower(ms.milestone_name)) by_start_date,',
'        rank() over (partition by ms.project_id',
'                     order by ms.milestone_date, lower(ms.milestone_name)) by_end_date',
'    from eba_proj_status_ms$ ms',
'    where ms.is_deleted_yn = ''N'';',
'end;',
'/',
'',
'create or replace trigger aiud_eba_proj_status_ai_no',
'    after insert or update or delete on eba_proj_status_ais$',
'--    for each row -- Note: this trigger is a STATEMENT trigger, rather than a ROW trigger.',
'begin',
'    delete from  eba_proj_status_ai_no_tbl;',
'',
'    insert into eba_proj_status_ai_no_tbl ( project_id, milestone_id, action_item_id, action_item_number )',
'    select ai.project_id,',
'        ai.milestone_id,',
'        ai.id action_item_id,',
'        rank() over (partition by ai.project_id, ai.milestone_id',
'                     order by nvl(ai.completed_date,ai.due_date), lower(ai.action)) action_item_number',
'    from eba_proj_status_ais$ ai',
'    where ai.is_deleted_yn = ''N'';',
'end;',
'/'))
);
wwv_flow_api.component_end;
end;
/
