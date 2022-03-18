prompt --application/deployment/install/upgrade_users_trigger
begin
--   Manifest
--     INSTALL: UPGRADE-Users Trigger
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
 p_id=>wwv_flow_api.id(5993267004776789962)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'Users Trigger'
,p_sequence=>860
,p_script_type=>'UPGRADE'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- First, clean up any bad data.',
'delete from eba_proj_status_users psu',
'where exists (  select null',
'                from eba_proj_status_users ps2',
'                where upper(ps2.username) = upper(psu.username)',
'                    and ( ps2.access_level_id < psu.access_level_id',
'                        or ( ps2.access_level_id = psu.access_level_id',
'                            and ps2.id > psu.id )));',
'/',
'update eba_proj_status_users',
'    set username = upper(username)',
'    where username != upper(username);',
'/',
'',
'commit;',
'/',
'',
'-- Now, we can safely replace the trigger.',
'CREATE OR REPLACE TRIGGER EBA_PROJ_STATUS_USERS_BIU ',
'   before insert or update on eba_proj_status_users',
'   for each row',
'begin',
'   if :new.ID is null then',
'     select to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'') into :new.id from dual;',
'   end if;',
'   if inserting then',
'       :new.created := localtimestamp;',
'       :new.created_by := nvl(apex_application.g_user,user);',
'       :new.row_version_number := 1;',
'   elsif updating then',
'       :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'   end if;',
'   if inserting or updating then',
'       :new.updated := localtimestamp;',
'       :new.updated_by := nvl(apex_application.g_user,user);',
'   end if;',
'   :new.username := upper(:new.username);',
'   :new.email_address := lower(:new.email_address);',
'end;',
'/',
'ALTER TRIGGER EBA_PROJ_STATUS_USERS_BIU ENABLE',
'/',
''))
);
wwv_flow_api.component_end;
end;
/
