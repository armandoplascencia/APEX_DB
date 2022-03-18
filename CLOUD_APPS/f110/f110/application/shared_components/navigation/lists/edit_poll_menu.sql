prompt --application/shared_components/navigation/lists/edit_poll_menu
begin
--   Manifest
--     LIST: Edit Poll Menu
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(355945181425779339)
,p_name=>'Edit Poll Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(804588270989179879)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'View Poll Details'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-grid-3x'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(355945335761779343)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Edit Poll Details'
,p_list_item_link_target=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.::P48_ID:&POLL_ID.:'
,p_list_item_icon=>'fa-edit'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(356238508568265136)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'Add Question'
,p_list_item_link_target=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:88:P88_POLL_ID:&POLL_ID.:'
,p_list_item_icon=>'fa-question-square-o'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select status_id ',
'     from eba_qpoll_polls',
'    where id = :POLL_ID',
'',
') loop',
'   -- if closed, cannot add new',
'   if c1.status_id = 4 then',
'      return FALSE;',
'   -- if using sections, must have one to create a question',
'   elsif :P100_USE_SECTIONS_YN = ''Y'' then',
'      for c1 in (',
'         select count(*) c',
'           from EBA_QPOLL_SECTIONS',
'          where POLL_ID = :POLL_ID',
'      ) loop',
'         if c1.c = 0 then',
'            return FALSE;',
'         end if;',
'      end loop;',
'   end if;',
'',
'   return TRUE;',
'',
'end loop;',
'',
'return FALSE;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(356239341885280929)
,p_list_item_display_sequence=>17
,p_list_item_link_text=>'Add Section'
,p_list_item_link_target=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:38:::'
,p_list_item_icon=>'fa-layout-3row'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for c1 in (',
'   select status_id ',
'     from eba_qpoll_polls',
'    where id = :POLL_ID',
'',
') loop',
'   -- if closed, cannot add new',
'   if c1.status_id = 4 then',
'      return FALSE;',
'   else',
'      return TRUE;',
'   end if;',
'end loop;',
'',
'return FALSE;'))
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(355945741427779350)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Preview'
,p_list_item_link_target=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-eye'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_QPOLL_POLLS p,',
'       eba_qpoll_questions q',
' where p.id = :POLL_ID',
'   and p.id = q.poll_id',
'   and p.status_id in (1,2,3)'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(355946184718779350)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Publish'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-box-arrow-out-east'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from EBA_QPOLL_POLLS p,',
'       eba_qpoll_questions q',
' where p.id = :POLL_ID',
'   and p.id = q.poll_id',
'   and p.status_id in (1,2)'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(355946597469779351)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Delete'
,p_list_item_link_target=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-trash'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(355946970700779354)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Close'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-check-square-o'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_QPOLL_POLLS p',
'where id = :POLL_ID',
'and status_id = 3'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(804558441047112164)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'History'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-history'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'  from eba_qpoll_history',
' where table_name = ''QUESTIONS''',
'   and poll_id = :POLL_ID',
'   and column_name = ''QUESTION'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.component_end;
end;
/
