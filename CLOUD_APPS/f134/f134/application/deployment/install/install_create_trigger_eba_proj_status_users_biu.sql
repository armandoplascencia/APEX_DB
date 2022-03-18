prompt --application/deployment/install/install_create_trigger_eba_proj_status_users_biu
begin
--   Manifest
--     INSTALL: INSTALL-create trigger eba_proj_status_users_biu
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
 p_id=>wwv_flow_api.id(4303433365634986872)
,p_install_id=>wwv_flow_api.id(9012014618759672631)
,p_name=>'create trigger eba_proj_status_users_biu'
,p_sequence=>100
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace trigger eba_proj_status_users_biu ',
'    before insert or update on eba_proj_status_users',
'    for each row',
'begin',
'    if (inserting or updating) and nvl(dbms_lob.getlength(:new.photo_blob),0) > 358400 then',
'        raise_application_error(-20000, ''The size of the uploaded photo was over 350KB. Please upload a smaller file.'');',
'    end if;',
'    if :new.ID is null then',
'        :new.id := to_number(sys_guid(),''XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'');',
'    end if;',
'    if inserting then',
'        :new.created := localtimestamp;',
'        :new.created_by := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user);',
'        :new.row_version_number := 1;',
'    elsif updating then',
'        :new.row_version_number := nvl(:old.row_version_number,1) + 1;',
'    end if;',
'    if inserting or updating then',
'        :new.updated := localtimestamp;',
'        :new.updated_by := nvl(sys_context(''APEX$SESSION'',''APP_USER''),user);',
'    end if;',
'    :new.username := upper(:new.username);',
'end;',
'/'))
);
wwv_flow_api.component_end;
end;
/
