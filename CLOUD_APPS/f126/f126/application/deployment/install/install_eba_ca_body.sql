prompt --application/deployment/install/install_eba_ca_body
begin
--   Manifest
--     INSTALL: INSTALL-eba_ca body
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>126
,p_default_id_offset=>101651461840938715
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(3336059254065034906)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'eba_ca body'
,p_sequence=>380
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package body eba_ca as ',
'',
'    -------------------------------------------------------------------------',
'    -- Generates a unique Identifier',
'    -------------------------------------------------------------------------',
'    function gen_id',
'        return number',
'    is',
'        l_id  number;',
'    begin        ',
'        select to_number(sys_guid(), ''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'')',
'          into l_id',
'          from dual;',
'    ',
'        return l_id;',
'    end gen_id;',
'',
'    -------------------------------------------------------------------------',
'    -- Gets the current user''s authorization level. Depends on the following:',
'    --  * If access control is currently disabled, returns highest level of 3.',
'    --  * If access control is enabled, but user is not in list, returns 0',
'    --  * If access control is enabled and user is in list, returns their',
'    --    access level.',
'    -------------------------------------------------------------------------',
'    function get_authorization_level (',
'        p_username             varchar2)',
'        return number',
'    is',
'        l_access_level_id       eba_ca_users.access_level_id%type := 0;  -- default to lowest privilege.',
'        l_account_locked        eba_ca_users.account_locked%type;',
'    begin',
'        -- If access control is disabled, default to highest privilege',
'        if eba_ca_fw.get_preference_value(''ACCESS_CONTROL_ENABLED'') = ''N'' then',
'            return 3;',
'        else',
'            -- Query for user''s access level, throws no_data_found if no user',
'            select access_level_id,',
'                   account_locked',
'              into l_access_level_id,',
'                   l_account_locked',
'              from eba_ca_users',
'             where username = p_username;',
'            -- Check if user''s account is locked, return 0 (no privilege), otherwise stick',
'            -- with their level.',
'            if l_account_locked = ''Y'' then',
'                return 0;',
'            end if;',
'            -- Overwrite user access level 1 with access level 2 if access control scope is PUBLIC_CONTRIBUTE',
'            if l_access_level_id = 1 and eba_ca_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'') = ''PUBLIC_CONTRIBUTE'' then',
'                return 2;',
'            end if;            ',
'        end if;',
'        return l_access_level_id;',
'    exception',
'        when no_data_found then',
'            -- If no user exists with passed username, do a final check if reader access is set to any authenticated user',
'            if eba_ca_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'') = ''PUBLIC_CONTRIBUTE'' then',
'                return 2;',
'            elsif eba_ca_fw.get_preference_value(''ACCESS_CONTROL_SCOPE'') = ''PUBLIC_READONLY'' then',
'                return 1;',
'            else',
'                return 0;',
'            end if;           ',
'    end get_authorization_level;',
'    -------------------------------------------------------------------------',
'    -- Returns all of the restricted calendars for the given user          --',
'    -------------------------------------------------------------------------',
'    function decode_restrictions (',
'        p_user_id             number)',
'        return varchar2 is',
'      l_restricted_to varchar2(4000);',
'      l_calendar_id   number;',
'      l_calendar_name varchar2(4000);',
'      l_return        varchar2(4000);',
'    begin',
'null;',
'/*',
'      select restricted_to',
'      into l_restricted_to',
'      from eba_ca_users',
'      where id = p_user_id;',
'',
'      if l_restricted_to is null then',
'        return null;',
'      end if;',
'      ',
'      while l_restricted_to is not null loop',
'        l_calendar_id := decode(instr(l_restricted_to, '':''), 0, l_restricted_to, substr(l_restricted_to, 1, instr(l_restricted_to, '':'') - 1));',
'        begin',
'          select short_name || '' ('' || decode(public_view_yn, ''Y'', null, ''Private'') || '')''',
'          into l_calendar_name',
'          from eba_ca_calendars',
'          where calendar_id = l_calendar_id;',
'        exception',
'          when no_data_found then',
'            l_calendar_name := l_calendar_id;',
'        end;',
'        ',
'        if l_return is null then',
'          l_return := l_calendar_name;',
'        elsif length(l_return) + length(l_calendar_name) + 2 > 3900 then',
'          l_return := l_return || ''; ...'';',
'          exit;',
'        else',
'          l_return := l_return || ''; '' || l_calendar_name;',
'        end if;',
'        ',
'        l_restricted_to := substr(l_restricted_to, instr(l_restricted_to, '':'') + 1);',
'      end loop;',
'      ',
'      return l_return;',
'    exception',
'      when no_data_found then',
'        return null;',
'*/',
'    end decode_restrictions;',
'end eba_ca;',
'/'))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(1764009902312604625)
,p_script_id=>wwv_flow_api.id(3336059254065034906)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE BODY'
,p_object_name=>'EBA_CA'
,p_last_updated_on=>to_date('20141219062058','YYYYMMDDHH24MISS')
,p_created_on=>to_date('20141219062058','YYYYMMDDHH24MISS')
);
wwv_flow_api.component_end;
end;
/
