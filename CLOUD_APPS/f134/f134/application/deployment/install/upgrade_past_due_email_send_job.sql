prompt --application/deployment/install/upgrade_past_due_email_send_job
begin
--   Manifest
--     INSTALL: UPGRADE-Past Due Email Send Job
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
 p_id=>wwv_flow_api.id(12092611070238209886)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Past Due Email Send Job'
,p_sequence=>440
,p_script_type=>'UPGRADE'
,p_condition_type=>'NOT_EXISTS'
,p_condition=>'select null from user_scheduler_jobs where job_name = ''EBA_PROJ_EMAIL_PAST_DUE_JOB'';'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_schema          varchar2(30);',
'    l_program         varchar2(30)                   := ''EBA_PROJ_EMAIL_PAST_DUE_PRG'';',
'    l_job             varchar2(30)                   := ''EBA_PROJ_EMAIL_PAST_DUE_JOB'';',
'    l_action          varchar2(50)                   := ''eba_proj_stat_email.send_past_due_emails'';',
'    l_freq            varchar2(255)                  := ''freq=daily; byhour=8; byminute=0; bysecond=0;'';',
'    l_num_params      number                         := 1;',
'    l_prog_type       varchar2(20)                   := ''STORED_PROCEDURE'';',
'    l_param_name      varchar2(10)                   := ''P_APP_ID'';',
'    l_param_type      varchar2(10)                   := ''NUMBER'';',
'    l_start_ts        timestamp with local time zone := systimestamp;',
'    l_job_comments    varchar2(255)                  := ''Sends past due milestones and action items emails.'';',
'    l_scheduler       varchar2(10)                   := ''dbms'';',
'    l_sql_stmt        varchar2(3000);',
'begin',
'    for c1 in ( select null',
'                from all_objects',
'                where object_type = ''PACKAGE''',
'                    and object_name = ''CLOUD_SCHEDULER'' ) loop',
'        l_scheduler := ''cloud'';',
'    end loop;',
'',
'    -- Create program and job',
'    begin',
'        l_sql_stmt := ''begin ''||l_scheduler||''_scheduler.create_program (',
'            program_name        => :1,',
'            program_type        => :2,',
'            program_action      => :3,',
'            number_of_arguments => :4,',
'            enabled             => false); end;'';',
'',
'        execute immediate l_sql_stmt using l_program, l_prog_type, l_action, l_num_params;',
'',
'        l_sql_stmt := ''begin ''||l_scheduler||''_scheduler.define_program_argument (',
'            program_name      => :1,',
'            argument_position => :2,',
'            argument_name     => :3,',
'            argument_type     => :4 ); end;'';',
'',
'        execute immediate l_sql_stmt using l_program, l_num_params, l_param_name, l_param_type;',
'',
'    exception when others then',
'        -- ORA-00955: name is already used by an existing object',
'        if sqlcode not in (-955,-27477) then',
'            raise;',
'        end if;',
'    end;',
'',
'    begin',
'        l_sql_stmt := ''begin ''||l_scheduler||''_scheduler.create_job (',
'            job_name        => :1,',
'            program_name    => :2,',
'            start_date      => :3,',
'            repeat_interval => :4,',
'            -- The job is created disabled by default. Enable only in those environments where this is actually needed.',
'            enabled         => false,',
'            comments        => :5 ); end;'';',
'',
'        execute immediate l_sql_stmt using l_job, l_program, l_start_ts, l_freq, l_job_comments;',
'',
'    exception when others then',
'        -- ORA-00955: name is already used by an existing object',
'        if sqlcode not in (-955,-27477) then',
'            raise;',
'        end if;',
'    end;',
'',
'end;',
'/'))
);
wwv_flow_api.component_end;
end;
/
