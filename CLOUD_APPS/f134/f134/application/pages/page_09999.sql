prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
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
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(5783577205373975152)
,p_name=>'Profile Photo Download'
,p_alias=>'IMAGE'
,p_step_title=>'Profile Photo Download'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(5956243887448595899)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'This page is not accessible directly through the UI. It is used to facilitate profile photo downloading.'
,p_last_upd_yyyymmddhh24miss=>'20190918111011'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(19313138888832735034)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch Image'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c1 in ( select photo_blob,',
'                    photo_name,',
'                    photo_mimetype,',
'                    dbms_lob.getlength(photo_blob) photo_length',
'               from eba_proj_status_users',
'               where upper(username) = upper(:GET_ID)',
'            ) loop',
'        if c1.photo_length > 0 then',
'            sys.htp.init();',
'            sys.owa_util.mime_header(',
'                nvl(c1.photo_mimetype, ''application/octet''),',
'                false',
'            );',
'            sys.htp.p(''Cache-Control: max-age=36000'');',
'            sys.htp.p(''Content-Length: '' || c1.photo_length);',
'            sys.htp.p(''Content-Disposition: inline; filename="''',
'                ||apex_escape.html(c1.photo_name)||''"; filename*=UTF-8''''''''''||apex_escape.html(c1.photo_name));',
'            sys.owa_util.http_header_close();',
'            sys.wpg_docload.download_file(c1.photo_blob);',
'            apex_application.stop_apex_engine;',
'        else',
'            apex_util.redirect_url(''#APP_IMAGES#no-photo.png'');',
'        end if;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
