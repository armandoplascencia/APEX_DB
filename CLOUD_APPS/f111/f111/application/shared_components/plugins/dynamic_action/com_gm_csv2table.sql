prompt --application/shared_components/plugins/dynamic_action/com_gm_csv2table
begin
--   Manifest
--     PLUGIN: COM.GM.CSV2TABLE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>111
,p_default_id_offset=>77418401682728923
,p_default_owner=>'MISO'
);
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(107940437892544298)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM.GM.CSV2TABLE'
,p_display_name=>'csv2table'
,p_category=>'EXECUTE'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','COM.GM.CSV2TABLE'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* @license',
'csv2table',
'v1.0.0',
'https://github.com/gopalmallya/apex/tree/main/csv2table',
'License: MIT',
'*/',
'--------------------------------------------------------------------------------',
'-- this render function sets up a javascript function which will be called',
'-- when the dynamic action is executed.',
'-- all relevant configuration settings will be passed to this function as JSON',
'--------------------------------------------------------------------------------',
'function render',
'  ( p_dynamic_action apex_plugin.t_dynamic_action',
'  , p_plugin         apex_plugin.t_plugin',
'  )',
'return apex_plugin.t_dynamic_action_render_result',
'is',
'    -- l_result is necessary for the plugin infrastructure',
'    l_result                   apex_plugin.t_dynamic_action_render_result;',
'    ',
'    l_ajaxID                  varchar2(4000) := apex_plugin.get_ajax_identifier;',
'    ',
'    -- read plugin parameters and store in local variables',
'    l_chunkSize                p_dynamic_action.attribute_01%type := p_dynamic_action.attribute_01;',
'    l_threads                  p_dynamic_action.attribute_02%type := p_dynamic_action.attribute_02;',
'    l_fileID                      p_dynamic_action.attribute_03%type := p_dynamic_action.attribute_03;',
'    l_complete_callback_fn        p_dynamic_action.attribute_05%type := p_dynamic_action.attribute_05;',
'    l_chunk_inserted_callback_fn  p_dynamic_action.attribute_06%type := p_dynamic_action.attribute_06;',
'    l_error_callback_fn           p_dynamic_action.attribute_07%type := p_dynamic_action.attribute_07;',
'    l_chunkFormat                 p_dynamic_action.attribute_11%type := p_dynamic_action.attribute_11; ',
'    l_insertType                  p_dynamic_action.attribute_08%type := p_dynamic_action.attribute_08;',
'    l_fileType                    p_dynamic_action.attribute_10%type := p_dynamic_action.attribute_10;',
'    l_skipFirstNRows              p_dynamic_action.attribute_12%type := p_dynamic_action.attribute_12;',
'    l_stream                      p_dynamic_action.attribute_13%type := p_dynamic_action.attribute_13;',
'',
'    -- Javascript Initialization Code',
'    l_init_js_fn               varchar2(32767) := nvl(apex_plugin_util.replace_substitutions(p_dynamic_action.init_javascript_code), ''undefined'');',
'    ',
'begin',
'    -- standard debugging intro, but only if necessary',
'    if apex_application.g_debug',
'    then',
'        apex_plugin_util.debug_dynamic_action',
'          ( p_plugin         => p_plugin',
'          , p_dynamic_action => p_dynamic_action',
'          );',
'    end if;',
'    ',
'    -- check if we need to add our toastr plugin library files',
'    apex_javascript.add_library ',
'      ( p_name           => apex_plugin_util.replace_substitutions(''csv2table.js'')',
'      , p_directory      => p_plugin.file_prefix || ''js/''',
'      , p_skip_extension => true',
'      );    ',
'',
'    apex_javascript.add_library ',
'      ( p_name           => apex_plugin_util.replace_substitutions(''papaparse.js'')',
'      , p_directory      => p_plugin.file_prefix || ''js/''',
'      , p_skip_extension => true',
'      );    ',
'',
'',
'    -- create a JS function call passing all settings as a JSON object',
'    --',
'    -- csv2Table(this, {',
'    --     "ajaxId": "SDtjkD9_TUyDJZzOzlRKnFkZWTFWkOqJrwNuJyUzooI",',
'    --     "pageItems": {},',
'    -- });',
'    apex_json.initialize_clob_output;',
'    apex_json.open_object;',
'',
'    apex_json.write(''ajaxId''             , l_ajaxID);',
'    ',
'    apex_json.open_object(''pageItems'');',
'    apex_json.write(''chunkSize''      , l_chunkSize);',
'    apex_json.write(''threads''      , l_threads);',
'    apex_json.write(''skipFirstNRows''      , l_skipFirstNRows);',
'    apex_json.write(''fileType''      , l_fileType);',
'    apex_json.write(''fileID''      , l_fileID);',
'    apex_json.write(''chunkFormat''      , l_chunkFormat);',
'    apex_json.write(''insertType''      , l_insertType);',
'    apex_json.write(''stream''      , l_stream);',
'    if l_complete_callback_fn is not null then',
'      apex_json.write_raw',
'            ( p_name  => ''complete_callback_fn''',
'            , p_value => l_complete_callback_fn',
'            );',
'    end if;',
'      ',
'    if l_chunk_inserted_callback_fn is not null then        ',
'      apex_json.write_raw',
'            ( p_name  => ''chunk_inserted_callback_fn''',
'            , p_value => l_chunk_inserted_callback_fn',
'            );          ',
'    end if;',
'',
'    if l_error_callback_fn is not null then',
'      apex_json.write_raw',
'            ( p_name  => ''error_callback_fn''',
'            , p_value => l_error_callback_fn',
'            );',
'    end if;',
'',
'    apex_json.close_object;',
'',
'    apex_json.close_object;',
'',
'    l_result.javascript_function := ''function(){csv2table.upload(this, ''|| apex_json.get_clob_output || '', ''|| l_init_js_fn ||'');}'';',
'',
'    apex_json.free_output;',
'',
'    -- all done, return l_result now containing the javascript function',
'    return l_result;',
'end render;',
'',
'--------------------------------------------------------------------------------',
'-- the ajax function is invoked from the csv2table.js, passing ',
'-- apex_application.g_clob_01 : parsed csv record in configured format (csv, json, xml)',
'-- apex_application.g_x01 : Filename ',
'-- apex_application.g_x02 : Upload ID',
'-- It does ',
'-- 1.generate upload ID ',
'-- 2. Inserts records into csv2table using configured insertType',
'--------------------------------------------------------------------------------',
'function ajax',
'  ( p_dynamic_action apex_plugin.t_dynamic_action',
'  , p_plugin         apex_plugin.t_plugin',
'  )',
'return apex_plugin.t_dynamic_action_ajax_result',
'is',
'    -- error handling',
'    l_apex_error       apex_error.t_error;',
'    l_result           apex_error.t_error_result;',
'    -- return type which is necessary for the plugin infrastructure',
'    l_return           apex_plugin.t_dynamic_action_ajax_result;',
'    ',
'    -- read plugin parameters and store in local variables',
'    l_insertType        p_dynamic_action.attribute_08%type := p_dynamic_action.attribute_08;',
'    l_plsql_statement   p_dynamic_action.attribute_09%type := p_dynamic_action.attribute_09; ',
'    ',
'',
'    l_sid number;',
'    l_fileID number;',
'    l_json clob;',
'    l_message          varchar2(32767);',
'    l_message_title    varchar2(32767);',
'    l_insertRowCount   pls_integer;',
'    l_now varchar2(255);',
'    l_insert_date date := sysdate;',
'    l_sql varchar2(32767);',
'    l_app_session number := :APP_SESSION;',
'    l_app_user varchar2(255) := :APP_USER;',
'    l_filename varchar2(255) := apex_application.g_x01;',
'    l_csv_clob clob;',
'    l_xml clob;',
'    l_getUploadID varchar2(255) := apex_application.g_x03;',
'    l_uploadID number :=  apex_application.g_x02;',
'begin',
'    -- standard debugging intro, but only if necessary',
'    if apex_application.g_debug',
'    then',
'        apex_plugin_util.debug_dynamic_action',
'          ( p_plugin         => p_plugin',
'          , p_dynamic_action => p_dynamic_action',
'          );',
'    end if;',
'    ',
'    select sys_context(''userenv'',''sid'') into l_sid from dual;',
'',
'    if l_getUploadID = ''getUploadID'' then',
'        select csv2table_seq.nextval into l_uploadID from dual;',
'            apex_json.initialize_output;',
'            apex_json.open_object;',
'            apex_json.write(''uploadID'' , l_uploadID);',
'            apex_json.write(''status'' , ''success'');',
'            apex_json.write(''message'' , '''');',
'            apex_json.write(''insertedRowCount'' , 0);',
'            apex_json.write(''fileName'' , '''');',
'            apex_json.write(''sid'' , '''');',
'            apex_json.write(''time'' , '''');',
'            apex_json.write(''messageType'', ''getUploadID'');',
'            apex_json.close_object;',
'            return l_return;',
'    end if;',
'',
'    --override option in js init',
'    if apex_application.g_x04 in (''json'',''apex_data_parser'',''plsql'',''xml'') then',
'       l_insertType := apex_application.g_x04;',
'    end if;',
'',
'    if l_insertType = ''plsql'' then',
'       if instr(l_plsql_statement,'':ROWCOUNT'') > 0 then',
'          execute immediate l_plsql_statement using out l_insertRowCount;',
'      else',
'          execute immediate l_plsql_statement; ',
'      end if;        ',
'    end if;',
'',
'    if l_insertType = ''apex_data_parser'' then',
'        l_csv_clob := apex_application.g_clob_01;',
'',
'        l_sql := ''declare ',
'                    l_sid number;',
'                    l_file_id number;',
'                    l_csv_clob clob;',
'                    l_csv_blob blob;',
'                    l_cnt number;',
'                    FUNCTION clob_to_blob (p_data  IN  CLOB)',
'                      RETURN BLOB',
'',
'                    AS',
'                      l_blob         BLOB;',
'                      l_dest_offset  PLS_INTEGER := 1;',
'                      l_src_offset   PLS_INTEGER := 1;',
'                      l_lang_context PLS_INTEGER := DBMS_LOB.default_lang_ctx;',
'                      l_warning      PLS_INTEGER := DBMS_LOB.warn_inconvertible_char;',
'                    BEGIN',
'',
'                      DBMS_LOB.createtemporary(',
'                        lob_loc => l_blob,',
'                        cache   => TRUE);',
'',
'                      DBMS_LOB.converttoblob(',
'                      dest_lob      => l_blob,',
'                      src_clob      => p_data,',
'                      amount        => DBMS_LOB.lobmaxsize,',
'                      dest_offset   => l_dest_offset,',
'                      src_offset    => l_src_offset, ',
'                      blob_csid     => DBMS_LOB.default_csid,',
'                      lang_context  => l_lang_context,',
'                      warning       => l_warning);',
'',
'                      RETURN l_blob;',
'                    END;',
'',
'                    Begin',
'                    ',
'                    l_csv_blob := clob_to_blob(:l_csv_clob);',
'                    insert into csv2table ( upload_id, apex_session_id, apex_user, insert_date, filename, ',
'                      c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,',
'                      c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,',
'                      c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,',
'                      c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,',
'                      c41,c42,c43,c44,c45,c46,c47,c48,c49,c50,',
'                      c51,c52,c53,c54,c55,c56,c57,c58,c59,c60,',
'                      c61,c62,c63,c64,c65,c66,c67,c68,c69,c70,',
'                      c71,c72,c73,c74,c75,c76,c77,c78,c79,c80,',
'                      c81,c82,c83,c84,c85,c86,c87,c88,c89,c90,',
'                      c91,c92,c93,c94,c95,c96,c97,c98,c99,c100',
'                      )',
'                      select :upload_id, :APP_SESSION, :APP_ID, :l_insert_date, :l_filename,',
'                      col001,col002,col003,col004,col005,col006,col007,col008,col009,col010,',
'                      col011,col012,col013,col014,col015,col016,col017,col018,col019,col020,',
'                      col021,col022,col023,col024,col025,col026,col027,col028,col029,col030,',
'                      col031,col032,col033,col034,col035,col036,col037,col038,col039,col040,',
'                      col041,col042,col043,col044,col045,col046,col047,col048,col049,col050,',
'                      col051,col052,col053,col054,col055,col056,col057,col058,col059,col060,',
'                      col061,col062,col063,col064,col065,col066,col067,col068,col069,col070,',
'                      col071,col072,col073,col074,col075,col076,col077,col078,col079,col080,',
'                      col081,col082,col083,col084,col085,col086,col087,col088,col089,col090,',
'                      col091,col092,col093,col094,col095,col096,col097,col098,col099,col100',
'                      from ',
'                          table( apex_data_parser.parse(',
'                                      p_content                     => l_csv_blob,',
'                                      p_file_name                   => :l_filename2 ) ) p',
'                    ;',
'                    :rowcount := sql%rowcount;',
'                    end;',
'                  '' ;',
'      execute immediate l_sql using l_csv_clob, l_uploadID, l_app_session, l_app_user,',
'                                    l_insert_date, l_filename, l_filename',
'                                    , out l_insertRowCount ;',
'      ',
'',
'    end if;',
'',
'    if l_insertType = ''json'' then',
'      l_json := apex_application.g_clob_01;',
'      l_sql := ',
'      ''',
'      insert into csv2table ( upload_id, apex_session_id, apex_user, insert_date, filename, ',
'      c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,',
'      c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,',
'      c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,',
'      c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,',
'      c41,c42,c43,c44,c45,c46,c47,c48,c49,c50,',
'      c51,c52,c53,c54,c55,c56,c57,c58,c59,c60,',
'      c61,c62,c63,c64,c65,c66,c67,c68,c69,c70,',
'      c71,c72,c73,c74,c75,c76,c77,c78,c79,c80,',
'      c81,c82,c83,c84,c85,c86,c87,c88,c89,c90,',
'      c91,c92,c93,c94,c95,c96,c97,c98,c99,c100',
'      )',
'      select :upload_id, :APP_SESSION, :APP_ID, :l_insert_date, :l_filename,',
'      c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,',
'      c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,',
'      c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,',
'      c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,',
'      c41,c42,c43,c44,c45,c46,c47,c48,c49,c50,',
'      c51,c52,c53,c54,c55,c56,c57,c58,c59,c60,',
'      c61,c62,c63,c64,c65,c66,c67,c68,c69,c70,',
'      c71,c72,c73,c74,c75,c76,c77,c78,c79,c80,',
'      c81,c82,c83,c84,c85,c86,c87,c88,c89,c90,',
'      c91,c92,c93,c94,c95,c96,c97,c98,c99,c100',
'      from json_table (:l_json',
'      , ''''$[*]''''',
'      columns (    ',
'                    c1 varchar2(255) path ''''$[0]'''' ,',
'                    c2 varchar2(255) path ''''$[1]'''' ,',
'                    c3 varchar2(255) path ''''$[2]'''' ,',
'                    c4 varchar2(255) path ''''$[3]'''' ,',
'                    c5 varchar2(255) path ''''$[4]'''' ,',
'                    c6 varchar2(255) path ''''$[5]'''' ,',
'                    c7 varchar2(255) path ''''$[6]'''' ,',
'                    c8 varchar2(255) path ''''$[7]'''' ,',
'                    c9 varchar2(255) path ''''$[8]'''' ,',
'                    c10 varchar2(255) path ''''$[9]'''' ,',
'                    c11 varchar2(255) path ''''$[10]'''' ,',
'                    c12 varchar2(255) path ''''$[11]'''' ,',
'                    c13 varchar2(255) path ''''$[12]'''' ,',
'                    c14 varchar2(255) path ''''$[13]'''' ,',
'                    c15 varchar2(255) path ''''$[14]'''' ,',
'                    c16 varchar2(255) path ''''$[15]'''' ,',
'                    c17 varchar2(255) path ''''$[16]'''' ,',
'                    c18 varchar2(255) path ''''$[17]'''' ,',
'                    c19 varchar2(255) path ''''$[18]'''' ,',
'                    c20 varchar2(255) path ''''$[19]'''' ,',
'                    c21 varchar2(255) path ''''$[20]'''' ,',
'                    c22 varchar2(255) path ''''$[21]'''' ,',
'                    c23 varchar2(255) path ''''$[22]'''' ,',
'                    c24 varchar2(255) path ''''$[23]'''' ,',
'                    c25 varchar2(255) path ''''$[24]'''' ,',
'                    c26 varchar2(255) path ''''$[25]'''' ,',
'                    c27 varchar2(255) path ''''$[26]'''' ,',
'                    c28 varchar2(255) path ''''$[27]'''' ,',
'                    c29 varchar2(255) path ''''$[28]'''' ,',
'                    c30 varchar2(255) path ''''$[29]'''' ,',
'                    c31 varchar2(255) path ''''$[30]'''' ,',
'                    c32 varchar2(255) path ''''$[31]'''' ,',
'                    c33 varchar2(255) path ''''$[32]'''' ,',
'                    c34 varchar2(255) path ''''$[33]'''' ,',
'                    c35 varchar2(255) path ''''$[34]'''' ,',
'                    c36 varchar2(255) path ''''$[35]'''' ,',
'                    c37 varchar2(255) path ''''$[36]'''' ,',
'                    c38 varchar2(255) path ''''$[37]'''' ,',
'                    c39 varchar2(255) path ''''$[38]'''' ,',
'                    c40 varchar2(255) path ''''$[39]'''' ,',
'                    c41 varchar2(255) path ''''$[40]'''' ,',
'                    c42 varchar2(255) path ''''$[41]'''' ,',
'                    c43 varchar2(255) path ''''$[42]'''' ,',
'                    c44 varchar2(255) path ''''$[43]'''' ,',
'                    c45 varchar2(255) path ''''$[44]'''' ,',
'                    c46 varchar2(255) path ''''$[45]'''' ,',
'                    c47 varchar2(255) path ''''$[46]'''' ,',
'                    c48 varchar2(255) path ''''$[47]'''' ,',
'                    c49 varchar2(255) path ''''$[48]'''' ,',
'                    c50 varchar2(255) path ''''$[49]'''' ,',
'                    c51 varchar2(255) path ''''$[50]'''' ,',
'                    c52 varchar2(255) path ''''$[51]'''' ,',
'                    c53 varchar2(255) path ''''$[52]'''' ,',
'                    c54 varchar2(255) path ''''$[53]'''' ,',
'                    c55 varchar2(255) path ''''$[54]'''' ,',
'                    c56 varchar2(255) path ''''$[55]'''' ,',
'                    c57 varchar2(255) path ''''$[56]'''' ,',
'                    c58 varchar2(255) path ''''$[57]'''' ,',
'                    c59 varchar2(255) path ''''$[58]'''' ,',
'                    c60 varchar2(255) path ''''$[59]'''' ,',
'                    c61 varchar2(255) path ''''$[60]'''' ,',
'                    c62 varchar2(255) path ''''$[61]'''' ,',
'                    c63 varchar2(255) path ''''$[62]'''' ,',
'                    c64 varchar2(255) path ''''$[63]'''' ,',
'                    c65 varchar2(255) path ''''$[64]'''' ,',
'                    c66 varchar2(255) path ''''$[65]'''' ,',
'                    c67 varchar2(255) path ''''$[66]'''' ,',
'                    c68 varchar2(255) path ''''$[67]'''' ,',
'                    c69 varchar2(255) path ''''$[68]'''' ,',
'                    c70 varchar2(255) path ''''$[69]'''' ,',
'                    c71 varchar2(255) path ''''$[70]'''' ,',
'                    c72 varchar2(255) path ''''$[71]'''' ,',
'                    c73 varchar2(255) path ''''$[72]'''' ,',
'                    c74 varchar2(255) path ''''$[73]'''' ,',
'                    c75 varchar2(255) path ''''$[74]'''' ,',
'                    c76 varchar2(255) path ''''$[75]'''' ,',
'                    c77 varchar2(255) path ''''$[76]'''' ,',
'                    c78 varchar2(255) path ''''$[77]'''' ,',
'                    c79 varchar2(255) path ''''$[78]'''' ,',
'                    c80 varchar2(255) path ''''$[79]'''' ,',
'                    c81 varchar2(255) path ''''$[80]'''' ,',
'                    c82 varchar2(255) path ''''$[81]'''' ,',
'                    c83 varchar2(255) path ''''$[82]'''' ,',
'                    c84 varchar2(255) path ''''$[83]'''' ,',
'                    c85 varchar2(255) path ''''$[84]'''' ,',
'                    c86 varchar2(255) path ''''$[85]'''' ,',
'                    c87 varchar2(255) path ''''$[86]'''' ,',
'                    c88 varchar2(255) path ''''$[87]'''' ,',
'                    c89 varchar2(255) path ''''$[88]'''' ,',
'                    c90 varchar2(255) path ''''$[89]'''' ,',
'                    c91 varchar2(255) path ''''$[90]'''' ,',
'                    c92 varchar2(255) path ''''$[91]'''' ,',
'                    c93 varchar2(255) path ''''$[92]'''' ,',
'                    c94 varchar2(255) path ''''$[93]'''' ,',
'                    c95 varchar2(255) path ''''$[94]'''' ,',
'                    c96 varchar2(255) path ''''$[95]'''' ,',
'                    c97 varchar2(255) path ''''$[96]'''' ,',
'                    c98 varchar2(255) path ''''$[97]'''' ,',
'                    c99 varchar2(255) path ''''$[98]'''' ,',
'                    c100 varchar2(255) path ''''$[99]'''' ',
'                )',
'      )'';',
'      execute immediate l_sql using l_uploadID, l_app_session, l_app_user,',
'                                    l_insert_date, l_filename, l_json;',
'      l_insertRowCount := sql%rowcount;                              ',
'      ',
'    end if;',
'',
'    if l_insertType = ''xml'' then',
'           l_xml := apex_application.g_clob_01;',
'           l_sql := ''',
'          insert into csv2table ( upload_id, apex_session_id, apex_user, insert_date, filename, ',
'          c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,',
'          c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,',
'          c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,',
'          c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,',
'          c41,c42,c43,c44,c45,c46,c47,c48,c49,c50,',
'          c51,c52,c53,c54,c55,c56,c57,c58,c59,c60,',
'          c61,c62,c63,c64,c65,c66,c67,c68,c69,c70,',
'          c71,c72,c73,c74,c75,c76,c77,c78,c79,c80,',
'          c81,c82,c83,c84,c85,c86,c87,c88,c89,c90,',
'          c91,c92,c93,c94,c95,c96,c97,c98,c99,c100',
'          )',
'          with x as ( select :l_xml as xml_text from dual)',
'          select :upload_id, :APP_SESSION, :APP_ID, :l_insert_date, :l_filename,',
'          c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,',
'          c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,',
'          c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,',
'          c31,c32,c33,c34,c35,c36,c37,c38,c39,c40,',
'          c41,c42,c43,c44,c45,c46,c47,c48,c49,c50,',
'          c51,c52,c53,c54,c55,c56,c57,c58,c59,c60,',
'          c61,c62,c63,c64,c65,c66,c67,c68,c69,c70,',
'          c71,c72,c73,c74,c75,c76,c77,c78,c79,c80,',
'          c81,c82,c83,c84,c85,c86,c87,c88,c89,c90,',
'          c91,c92,c93,c94,c95,c96,c97,c98,c99,c100',
'          from  x, xmltable(',
'          ''''/xd/r''''',
'          passing xmltype(x.xml_text)',
'          columns     ',
'                      c1 varchar2(255) path ''''c0'''' ,',
'                      c2 varchar2(255) path ''''c1'''' ,',
'                      c3 varchar2(255) path ''''c2'''' ,',
'                      c4 varchar2(255) path ''''c3'''' ,',
'                      c5 varchar2(255) path ''''c4'''' ,',
'                      c6 varchar2(255) path ''''c5'''' ,',
'                      c7 varchar2(255) path ''''c6'''' ,',
'                      c8 varchar2(255) path ''''c7'''' ,',
'                      c9 varchar2(255) path ''''c8'''' ,',
'                      c10 varchar2(255) path ''''c9'''' ,',
'                      c11 varchar2(255) path ''''c10'''' ,',
'                      c12 varchar2(255) path ''''c11'''' ,',
'                      c13 varchar2(255) path ''''c12'''' ,',
'                      c14 varchar2(255) path ''''c13'''' ,',
'                      c15 varchar2(255) path ''''c14'''' ,',
'                      c16 varchar2(255) path ''''c15'''' ,',
'                      c17 varchar2(255) path ''''c16'''' ,',
'                      c18 varchar2(255) path ''''c17'''' ,',
'                      c19 varchar2(255) path ''''c18'''' ,',
'                      c20 varchar2(255) path ''''c19'''' ,',
'                      c21 varchar2(255) path ''''c20'''' ,',
'                      c22 varchar2(255) path ''''c21'''' ,',
'                      c23 varchar2(255) path ''''c22'''' ,',
'                      c24 varchar2(255) path ''''c23'''' ,',
'                      c25 varchar2(255) path ''''c24'''' ,',
'                      c26 varchar2(255) path ''''c25'''' ,',
'                      c27 varchar2(255) path ''''c26'''' ,',
'                      c28 varchar2(255) path ''''c27'''' ,',
'                      c29 varchar2(255) path ''''c28'''' ,',
'                      c30 varchar2(255) path ''''c29'''' ,',
'                      c31 varchar2(255) path ''''c30'''' ,',
'                      c32 varchar2(255) path ''''c31'''' ,',
'                      c33 varchar2(255) path ''''c32'''' ,',
'                      c34 varchar2(255) path ''''c33'''' ,',
'                      c35 varchar2(255) path ''''c34'''' ,',
'                      c36 varchar2(255) path ''''c35'''' ,',
'                      c37 varchar2(255) path ''''c36'''' ,',
'                      c38 varchar2(255) path ''''c37'''' ,',
'                      c39 varchar2(255) path ''''c38'''' ,',
'                      c40 varchar2(255) path ''''c39'''' ,',
'                      c41 varchar2(255) path ''''c40'''' ,',
'                      c42 varchar2(255) path ''''c41'''' ,',
'                      c43 varchar2(255) path ''''c42'''' ,',
'                      c44 varchar2(255) path ''''c43'''' ,',
'                      c45 varchar2(255) path ''''c44'''' ,',
'                      c46 varchar2(255) path ''''c45'''' ,',
'                      c47 varchar2(255) path ''''c46'''' ,',
'                      c48 varchar2(255) path ''''c47'''' ,',
'                      c49 varchar2(255) path ''''c48'''' ,',
'                      c50 varchar2(255) path ''''c49'''' ,',
'                      c51 varchar2(255) path ''''c50'''' ,',
'                      c52 varchar2(255) path ''''c51'''' ,',
'                      c53 varchar2(255) path ''''c52'''' ,',
'                      c54 varchar2(255) path ''''c53'''' ,',
'                      c55 varchar2(255) path ''''c54'''' ,',
'                      c56 varchar2(255) path ''''c55'''' ,',
'                      c57 varchar2(255) path ''''c56'''' ,',
'                      c58 varchar2(255) path ''''c57'''' ,',
'                      c59 varchar2(255) path ''''c58'''' ,',
'                      c60 varchar2(255) path ''''c59'''' ,',
'                      c61 varchar2(255) path ''''c60'''' ,',
'                      c62 varchar2(255) path ''''c61'''' ,',
'                      c63 varchar2(255) path ''''c62'''' ,',
'                      c64 varchar2(255) path ''''c63'''' ,',
'                      c65 varchar2(255) path ''''c64'''' ,',
'                      c66 varchar2(255) path ''''c65'''' ,',
'                      c67 varchar2(255) path ''''c66'''' ,',
'                      c68 varchar2(255) path ''''c67'''' ,',
'                      c69 varchar2(255) path ''''c68'''' ,',
'                      c70 varchar2(255) path ''''c69'''' ,',
'                      c71 varchar2(255) path ''''c70'''' ,',
'                      c72 varchar2(255) path ''''c71'''' ,',
'                      c73 varchar2(255) path ''''c72'''' ,',
'                      c74 varchar2(255) path ''''c73'''' ,',
'                      c75 varchar2(255) path ''''c74'''' ,',
'                      c76 varchar2(255) path ''''c75'''' ,',
'                      c77 varchar2(255) path ''''c76'''' ,',
'                      c78 varchar2(255) path ''''c77'''' ,',
'                      c79 varchar2(255) path ''''c78'''' ,',
'                      c80 varchar2(255) path ''''c79'''' ,',
'                      c81 varchar2(255) path ''''c80'''' ,',
'                      c82 varchar2(255) path ''''c81'''' ,',
'                      c83 varchar2(255) path ''''c82'''' ,',
'                      c84 varchar2(255) path ''''c83'''' ,',
'                      c85 varchar2(255) path ''''c84'''' ,',
'                      c86 varchar2(255) path ''''c85'''' ,',
'                      c87 varchar2(255) path ''''c86'''' ,',
'                      c88 varchar2(255) path ''''c87'''' ,',
'                      c89 varchar2(255) path ''''c88'''' ,',
'                      c90 varchar2(255) path ''''c89'''' ,',
'                      c91 varchar2(255) path ''''c90'''' ,',
'                      c92 varchar2(255) path ''''c91'''' ,',
'                      c93 varchar2(255) path ''''c92'''' ,',
'                      c94 varchar2(255) path ''''c93'''' ,',
'                      c95 varchar2(255) path ''''c94'''' ,',
'                      c96 varchar2(255) path ''''c95'''' ,',
'                      c97 varchar2(255) path ''''c96'''' ,',
'                      c98 varchar2(255) path ''''c97'''' ,',
'                      c99 varchar2(255) path ''''c98'''' ,',
'                      c100 varchar2(255) path ''''c99''''                     ',
'',
'          )'';',
'      execute immediate l_sql using l_xml, l_uploadID, l_app_session, l_app_user, l_insert_date, l_filename ;          ',
'      l_insertRowCount := sql%rowcount;',
'    end if;',
'',
'    ',
'    l_now := to_char(sysdate, ''hh24:mi:ss'');',
'    l_message := '' inserted ''||l_insertRowCount||'' csv records: '' || APEX_APPLICATION.G_X01||'' *sid* ''|| l_sid|| '' time: ''|| to_char(sysdate, ''hh24:mi:ss'');',
'    htp.p(l_message);',
'  ',
'    apex_json.initialize_output;',
'    apex_json.open_object;',
'    apex_json.write(''uploadID'' , l_uploadID);',
'    apex_json.write(''status'' , ''success'');',
'    apex_json.write(''message'' , l_message);',
'    apex_json.write(''insertedRowCount'' , l_insertRowCount);',
'    apex_json.write(''fileName'' , APEX_APPLICATION.G_X01);',
'    apex_json.write(''sid'' , l_sid);',
'    apex_json.write(''time'' , l_now);',
'    apex_json.write(''messageType'', ''insert'');',
'    ',
'    apex_json.close_object;',
'',
'    return l_return;',
'exception',
'    when others then',
'        rollback;',
'',
'        l_message := apex_escape.html(sqlerrm);',
'        ',
'        apex_json.initialize_output;',
'        apex_json.open_object;',
'        apex_json.write(''status'' , ''error'');',
'        apex_json.write(''sqlerrm'' , l_message);',
'        apex_json.write(''sqlcode'' , sqlcode);',
'        apex_json.write(''message'', ''Error inserting parsed records into table'');',
'        ',
'        apex_json.close_object;',
'',
'        return l_return;    ',
'end ajax;'))
,p_api_version=>2
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'BUTTON:JQUERY_SELECTOR:JAVASCRIPT_EXPRESSION:TRIGGERING_ELEMENT:EVENT_SOURCE:STOP_EXECUTION_ON_ERROR:WAIT_FOR_RESULT:INIT_JAVASCRIPT_CODE'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'<p>Fast data loader for large(100mb-1GBB) csv datasets, designed to support all oracle database and apex versions </p>'
,p_version_identifier=>'5.1.4'
,p_about_url=>'https://github.com/gopalmallya/csv2table'
,p_files_version=>4
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(108020480744599065)
,p_plugin_id=>wwv_flow_api.id(107940437892544298)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'ChunkSize (Bytes)'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_default_value=>'1000000'
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'100000  ~ 100kb',
'1000000 ~ 1mb'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>chunkSize is the number of bytes used by Javascript parser (Papaparse) to read and parse the file</p>',
'<p>chunkSize is also limits the size of chunks sent per ajax session to backend plsql process</p>',
'<p>chunkSize setting, helps to keep the Javascript memory within these values when processing large csv files. Low values will keep browser memory usage low, but will require more time to complete the inserts. High values will use more browser memory'
||', but will speed up the inserts. </p>',
'<p>Please configure the chunkSize and threads as a combination to tune memory and insert performance. </p>'))
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>111
,p_default_id_offset=>77418401682728923
,p_default_owner=>'MISO'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(108030408947620875)
,p_plugin_id=>wwv_flow_api.id(107940437892544298)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Threads'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_default_value=>'1'
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>1 - One thread or ajax session to insert a chunk. <p>',
'<p>2 - Two threads or ajax sessions to insert chunk parallelly. In this case 2 chunks will be inserted by separate ajax sessions in parallel.</p>',
'<br>',
'<p>Please be mindful in setting this parameter, as ORDS may return "Service Unavailable" if it has exhausted sessions from the pool.</p>'))
,p_help_text=>'<p>Number of parallel ajax sessions to create for inserting the chunked records. Each thread will insert 1 chunk by calling a on demand ajax plsql. <p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(107990500584579116)
,p_plugin_id=>wwv_flow_api.id(107940437892544298)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>3
,p_prompt=>'File ID'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'PX_FILE --> File Browse page item',
'PX_URL --> Text item where user would enter csv download url'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To upload local file(s) using File browse page item or html input type=file, enter the element reference ID of the page item or html input type-file. for e.g. PX_FILE. </p>',
'<p>To upload remote file, select the element reference ID of the page item where user can select or enter url. for e.g PX_URL. </p>',
'<p>For remote file, the plugin, gets the file content using xmlHTTPRequest and requires Access-Control-Allow-Origin header to be enabled by the source server hosting the csv file. If not enabled, you will get CORS error thrown by the browser. </p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(108040462924981902)
,p_plugin_id=>wwv_flow_api.id(107940437892544298)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>80
,p_prompt=>'Complete Callback Function'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre><code>',
'function afterCompleteFn(result) {',
'    console.log(results.options()); //returns plugin options object',
'    console.log(results.uploadID()); //returns upload Identifier for records inserted',
'    console.log(results.files()); //array containing upload file information',
'    console.log(results.fileCount()); ',
'    console.log(results.totalChunks()); //total number of chunks to be inserted',
'    console.log(results.chunked()); // total number of chunks inserted so far',
'    console.log(results.parsedRowCount()); //total number of rows parsed',
'    console.log(results.insertedRowCount()); //total number of rows inserted',
'    console.log(results.parsedErrorCount()); //total number of parsing errors',
'    console.log(results.insertedErrorCount()); //total number of insert errors',
'    console.log(results.startTime()); //time when parsing file started',
'    console.log(results.endTime()); //time when all chunks were inserted',
'    console.log(results.progressSoFar()); // value betwee 0 and 1, 1 is 100% completed',
'    console.log(results.error()); // error information',
'    console.log(results.status()); // status information',
'    console.log(results.parseResults()); //parsed data in the chunk',
'    console.log(results.halted()); //true when parser is halted',
'    console.log(results.completed()); //true when all chunks are inserted',
'}',
'<code>',
'</pre>'))
,p_help_text=>'<p>Javascript function which will be called after file is successfully inserted into table, to continue further processing like refreshing reports, scheduling backend validations, transformation. This function has result object as argument.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(108050469991990548)
,p_plugin_id=>wwv_flow_api.id(107940437892544298)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Chunk Inserted Callback Function'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre><code>',
'function afterChunkInsertFn(result) {',
'    console.log(results.options()); //returns plugin options object',
'    console.log(results.uploadID()); //returns upload Identifier for records inserted',
'    console.log(results.files()); //array containing upload file information',
'    console.log(results.fileCount()); ',
'    console.log(results.totalChunks()); //total number of chunks to be inserted',
'    console.log(results.chunked()); // total number of chunks inserted so far',
'    console.log(results.parsedRowCount()); //total number of rows parsed',
'    console.log(results.insertedRowCount()); //total number of rows inserted',
'    console.log(results.parsedErrorCount()); //total number of parsing errors',
'    console.log(results.insertedErrorCount()); //total number of insert errors',
'    console.log(results.startTime()); //time when parsing file started',
'    console.log(results.endTime()); //time when all chunks were inserted',
'    console.log(results.progressSoFar()); // value betwee 0 and 1, 1 is 100% completed',
'    console.log(results.error()); // error information',
'    console.log(results.status()); // status information',
'    console.log(results.parseResults()); //parsed data in the chunk',
'    console.log(results.halted()); //true when parser is halted',
'    console.log(results.completed()); //true when all chunks are inserted',
'    //you can pause parser and further chunking..   ',
'    if (chunkingNeedsToBePause() || csv2table) { //where chunkingNeedsToBePause() is your function returns true when you want parser to pause',
'        csv2table.pause();',
'    }',
'     ',
'    // do something here.. ',
'',
'    //you can resume parser and further chunking and inserting',
'     if (!chunkingNeedsToBePause() || csv2table) { //where chunkingNeedsToBePause() is your function returns true when you want parser to pause',
'        csv2table.resume();',
'    }',
'}',
'</code> </pre>'))
,p_help_text=>'<p>Javascript function which will be called after, a chunk is inserted. This function contains result object as argument.<p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(108060469438997423)
,p_plugin_id=>wwv_flow_api.id(107940437892544298)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Error Callback Function'
,p_attribute_type=>'JAVASCRIPT'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre><code>',
'function afterErrorFn(result) {',
'    console.log(results.options()); //returns plugin options object',
'    console.log(results.uploadID()); //returns upload Identifier for records inserted',
'    console.log(results.files()); //array containing upload file information',
'    console.log(results.fileCount()); ',
'    console.log(results.totalChunks()); //total number of chunks to be inserted',
'    console.log(results.chunked()); // total number of chunks inserted so far',
'    console.log(results.parsedRowCount()); //total number of rows parsed',
'    console.log(results.insertedRowCount()); //total number of rows inserted',
'    console.log(results.parsedErrorCount()); //total number of parsing errors',
'    console.log(results.insertedErrorCount()); //total number of insert errors',
'    console.log(results.startTime()); //time when parsing file started',
'    console.log(results.endTime()); //time when all chunks were inserted',
'    console.log(results.progressSoFar()); // value betwee 0 and 1, 1 is 100% completed',
'    console.log(results.error()); // error information',
'    console.log(results.status()); // status information',
'    console.log(results.parseResults()); //parsed data in the chunk',
'    console.log(results.halted()); //true when parser is halted',
'    console.log(results.completed()); //true when all chunks are inserted',
'}',
'</code></pre>'))
,p_help_text=>'<p>Javascript function which will be called if an error is thrown either during parsing the file or inserting into the table. This function contains result object as argument.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(108070426156000219)
,p_plugin_id=>wwv_flow_api.id(107940437892544298)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>25
,p_prompt=>'Insert Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'json'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(108080472112005280)
,p_plugin_attribute_id=>wwv_flow_api.id(108070426156000219)
,p_display_sequence=>10
,p_display_value=>'JSON_TABLE (Default)'
,p_return_value=>'json'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(108080851086007379)
,p_plugin_attribute_id=>wwv_flow_api.id(108070426156000219)
,p_display_sequence=>20
,p_display_value=>'XMLTABLE'
,p_return_value=>'xml'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(108090494868009039)
,p_plugin_attribute_id=>wwv_flow_api.id(108070426156000219)
,p_display_sequence=>30
,p_display_value=>'APEX_DATA_PARSER'
,p_return_value=>'apex_data_parser'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(108100486276011682)
,p_plugin_attribute_id=>wwv_flow_api.id(108070426156000219)
,p_display_sequence=>40
,p_display_value=>'Custom PLSQL'
,p_return_value=>'plsql'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(108120498744025936)
,p_plugin_id=>wwv_flow_api.id(107940437892544298)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>35
,p_prompt=>'Custom Insert'
,p_attribute_type=>'PLSQL'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(108070426156000219)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'plsql'
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'Below is any example of custom insert for chunkFormat CSV. First the clob containing csv format is converted into blob, and then apex_data_parser uses this blob to parse and convert into sql rows. finally the sql rows are inserted into mytable which '
||'is your custom table of choice. </p>',
'--chunkFormat selected is CSV in plugin configuration',
'<pre><code>',
'Begin',
' l_csv_blob := clob_to_blob(apex_application.g_clob_01); --convert chunk containing records into blob, as apex_data_parser requires blob as input containing records in csv format.',
'insert into myTable (  upload_id, c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20)',
'select      ''       apex_application.g_x03, --this contains upload_id, which is same for all chunks in a file',
'                    col001, col002, col003, col004, col005, ',
'                    col006, col007, col008, col009, col010,',
'                    col011, col012, col013, col014, col015, ',
'                    col016, col017, col018, col019, col020   ',
'  from ',
'       table( apex_data_parser.parse(',
'                  p_content                     => l_csv_blob, --blob converted from ',
'                  p_file_name                   => apex_application.g_x01 --this contains file name',
'                                    )',
'            );',
'',
':ROWCOUNT :=  SQL%ROWCOUNT; --the bind variable rowcount is used by plugin to update the total records inserted, without this bind the custom insert will FAIL.',
'end;',
'</code></pre>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p> This plsql block option enables, writing custom implementation for data parser and inserting into table. </p> ',
'<p>apex_application.g_clob_01 - Contains chunked records in the format configured in chunkFormat option of the plugin. e.g if chunkFormat is JSON, then apex_application.g_clob_01 contains chunked records in JSON format. </p>',
'<p>apex_application.g_x02 - Contains upload identifier for records inserted. All records in a file have same upload id.  </p>',
'<p>',
'One important requirement for custom insert is, to assign out bind variable containing count of records inserted. This out bind variable is used by plugin to calculate total number of records inserted. ',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(107950451822552231)
,p_plugin_id=>wwv_flow_api.id(107940437892544298)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>1
,p_prompt=>'File Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'local'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(107960497835559023)
,p_plugin_attribute_id=>wwv_flow_api.id(107950451822552231)
,p_display_sequence=>10
,p_display_value=>'Local File'
,p_return_value=>'local'
,p_help_text=>'Select Local File, for uploading csv file using File Browse Item or html input type=File'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(107970460406564750)
,p_plugin_attribute_id=>wwv_flow_api.id(107950451822552231)
,p_display_sequence=>20
,p_display_value=>'Remote URL'
,p_return_value=>'remote'
,p_help_text=>'Select Remote URL when, uploading csv file using http URL'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(108130473244028873)
,p_plugin_id=>wwv_flow_api.id(107940437892544298)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>30
,p_prompt=>'Chunk format'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(108070426156000219)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'plsql'
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p> Select CSV if you want the custom Insert plsql block to receive clob containing records in csv format in apex_application.g_clob_01 </p>',
'<p> Select JSON, if you want the custom Insert plsql block to receive clob containing records in JSON format apex_application.g_clob_01 </p>',
'<p>Select XML, if you want the custom Insert plsql block to receive clob containing records in XML format apex_application.g_clob_01 </p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(108140420351031233)
,p_plugin_attribute_id=>wwv_flow_api.id(108130473244028873)
,p_display_sequence=>10
,p_display_value=>'JSON'
,p_return_value=>'json'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(108140879546032668)
,p_plugin_attribute_id=>wwv_flow_api.id(108130473244028873)
,p_display_sequence=>20
,p_display_value=>'XML'
,p_return_value=>'xml'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(108141257495034649)
,p_plugin_attribute_id=>wwv_flow_api.id(108130473244028873)
,p_display_sequence=>30
,p_display_value=>'CSV'
,p_return_value=>'csv'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(108160498615046297)
,p_plugin_id=>wwv_flow_api.id(107940437892544298)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>5
,p_prompt=>'Skip First N Rows'
,p_attribute_type=>'INTEGER'
,p_is_required=>false
,p_default_value=>'0'
,p_is_translatable=>false
,p_examples=>'Enter 1, if you want to skip the first row in the csv file.'
,p_help_text=>'<p>Enter the number of rows, to be skipped from the beginning of the csv file. </p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(108170408654052446)
,p_plugin_id=>wwv_flow_api.id(107940437892544298)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>7
,p_prompt=>'Stream'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When stream is set to Yes, the file will be chunked per thread with chunkSize and inserted by thread. </p>',
'<p>This is useful for uploading local csv datasets which are large in size (10mb+).</p>',
'<p> For URL based upload, stream option will not work unless CORD Access-Control-Allow-Origin header is enabled at the source hosting the csv.</p>'))
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(107940670346544588)
,p_plugin_id=>wwv_flow_api.id(107940437892544298)
,p_name=>'INIT_JAVASCRIPT_CODE'
,p_is_required=>false
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>111
,p_default_id_offset=>77418401682728923
,p_default_owner=>'MISO'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A20406C6963656E73650D0A637376327461626C650D0A76312E302E300D0A68747470733A2F2F6769746875622E636F6D2F676F70616C6D616C6C79612F617065782F747265652F6D61696E2F637376327461626C650D0A68747470733A2F2F676F70';
wwv_flow_api.g_varchar2_table(2) := '616C6D616C6C79612E636F6D2F6F7264732F722F676F70616C6D616C6C79612F637376327461626C650D0A4C6963656E73653A204D49540D0A2A2F0D0A0D0A2F2F4D6F64756C652072657665616C696E67207061747465726E2C2072657475726E732075';
wwv_flow_api.g_varchar2_table(3) := '706C6F61642C20636F6E6669672C207374617475732C20706175736520616E6420726573756D652066756E6374696F6E0D0A76617220637376327461626C65203D20282066756E6374696F6E2824297B0D0A202020207661722073746570706564203D20';
wwv_flow_api.g_varchar2_table(4) := '302C206368756E6B6564203D20302C20706172736564526F77436F756E74203D20302C2070617273654572726F72436F756E74203D20302C20696E736572744572726F72436F756E74203D20302C20696E736572745265717565737450656E64696E6743';
wwv_flow_api.g_varchar2_table(5) := '6F756E74203D20302C20696E7365727452657175657374436F6D706C65746564436F756E743D20302C2020696E736572746564526F77436F756E74203D20302C206572726F7243616C6C4261636B436F756E74203D20302C2072656D6F74655374726561';
wwv_flow_api.g_varchar2_table(6) := '6D506172736572436F6D706C65746564203D20302C2066697273744572726F723B0D0A202020207661722073746172742C20656E642C20616A6178456E643B0D0A2020202076617220706175736564427955736572203D2066616C73653B0D0A20202020';
wwv_flow_api.g_varchar2_table(7) := '76617220666972737452756E203D20747275653B0D0A202020207661722074687265616473203B202F2F6D6178696D756D206E756D626572206F6620706172736564206368756E6B206F662073747265616D206172726179202C20746F20747269676765';
wwv_flow_api.g_varchar2_table(8) := '7220616A61782063616C6C2070726F63657373696E670D0A2020202076617220746F74616C4368756E6B73203D20303B0D0A20202020766172207375626D6974427574746F6E49443B0D0A2020200D0A202020207661722075706C6F616449443B0D0A20';
wwv_flow_api.g_varchar2_table(9) := '20202076617220736B697046697273744E526F7773203D20303B0D0A202020207661722073747265616D203D202759273B0D0A0D0A2020202076617220696E7365727454797065202C206368756E6B466F726D61743B202F2F6A736F6E5F7461626C6520';
wwv_flow_api.g_varchar2_table(10) := '6F7220786D6C70617273650D0A202020200D0A0D0A202020207661722066696C656E616D652C2066696C6573697A652C2066696C65747970652C2066696C65436F756E743B0D0A202020207661722066696C6573417272203D205B5D3B0D0A2020202076';
wwv_flow_api.g_varchar2_table(11) := '617220737461747573203D207B0D0A202020202020202073746174653A2022222C0D0A202020202020202077686572653A2022220D0A202020207D0D0A0D0A20202020766172206572726F72203D207B0D0A2020202020202020747970653A2022222C20';
wwv_flow_api.g_varchar2_table(12) := '202020202F2F20412067656E6572616C697A6174696F6E206F6620746865206572726F720D0A2020202020202020636F64653A2022222C20202020202F2F205374616E64617264697A6564206572726F7220636F64650D0A20202020202020206D657373';
wwv_flow_api.g_varchar2_table(13) := '6167653A2022222C20202F2F2048756D616E2D7265616461626C652064657461696C730D0A2020202020202020726F773A20302C202020202020202F2F20526F7720696E646578206F66207061727365642064617461207768657265206572726F722069';
wwv_flow_api.g_varchar2_table(14) := '730D0A202020202020202066696C653A2022222C0D0A20202020202020206572723A2022220D0A20202020202020200D0A202020207D0D0A202020200D0A2020202076617220616A61784964656E7469666965723B0D0A2020202076617220636F6D706C';
wwv_flow_api.g_varchar2_table(15) := '6574655F63616C6C6261636B5F666E2C206368756E6B5F696E7365727465645F63616C6C6261636B5F666E2C206572726F725F63616C6C6261636B5F666E3B0D0A2020202076617220636F6E666967203D207B7D3B0D0A202020207661722063616C6C42';
wwv_flow_api.g_varchar2_table(16) := '61636B52657475726E4F626A656374203D207B0D0A2020202020202020202020200D0A202020202020202020202020226F7074696F6E7322203A2066756E6374696F6E2829207B2072657475726E20636F6E6669673B207D2C0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(17) := '2020202275706C6F6164494422203A2066756E6374696F6E202829207B2072657475726E2075706C6F616449443B207D2C0D0A2020202020202020202020202266696C65732220202020203A2066756E6374696F6E2829207B2072657475726E2066696C';
wwv_flow_api.g_varchar2_table(18) := '65734172723B207D2C0D0A2020202020202020202020202266696C65436F756E7422203A2066756E6374696F6E2829207B2072657475726E2066696C65436F756E743B207D2C0D0A20202020202020202020202022746F74616C4368756E6B7322203A20';
wwv_flow_api.g_varchar2_table(19) := '66756E6374696F6E2829207B2072657475726E20746F74616C4368756E6B733B207D2C0D0A202020202020202020202020226368756E6B65642220202020203A2066756E6374696F6E2829207B2072657475726E206368756E6B65643B207D2C0D0A2020';
wwv_flow_api.g_varchar2_table(20) := '2020202020202020202022706172736564526F77436F756E742220202020203A2066756E6374696F6E2829207B2072657475726E20706172736564526F77436F756E743B207D2C0D0A20202020202020202020202022696E736572746564526F77436F75';
wwv_flow_api.g_varchar2_table(21) := '6E7422203A2066756E6374696F6E2829207B2072657475726E20696E736572746564526F77436F756E743B207D2C0D0A202020202020202020202020227061727365644572726F72436F756E7422203A2066756E6374696F6E2829207B2072657475726E';
wwv_flow_api.g_varchar2_table(22) := '2070617273654572726F72436F756E743B207D2C0D0A20202020202020202020202022696E7365727465644572726F72436F756E7422203A2066756E6374696F6E2829207B2072657475726E20696E7365727465644572726F72436F756E743B207D2C0D';
wwv_flow_api.g_varchar2_table(23) := '0A20202020202020202020202022737461727454696D6522203A2066756E6374696F6E2829207B2072657475726E2073746172743B207D2C0D0A20202020202020202020202022656E6454696D6522203A2066756E6374696F6E2829207B207265747572';
wwv_flow_api.g_varchar2_table(24) := '6E20616A6178456E643B207D2C0D0A2020202020202020202020202270726F6772657373536F46617222203A2066756E6374696F6E2829207B0D0A20202020202020202020202020202020202020202020202020202020202020206966202820746F7461';
wwv_flow_api.g_varchar2_table(25) := '6C4368756E6B73203E20302029207B0D0A20202020202020202020202020202020202020202020202020202020202020202020202072657475726E206368756E6B65642F746F74616C4368756E6B733B0D0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(26) := '20202020202020202020202020207D200D0A20202020202020202020202020202020202020202020202020202020202020206966202820746F74616C4368756E6B73203D3D3D20302026262072656D6F746553747265616D506172736572436F6D706C65';
wwv_flow_api.g_varchar2_table(27) := '746564203E2030202029207B0D0A2020202020202020202020202020202020202020202020202020202020202020202020202072657475726E20313B2020200D0A20202020202020202020202020202020202020202020202020202020202020207D2065';
wwv_flow_api.g_varchar2_table(28) := '6C7365207B0D0A2020202020202020202020202020202020202020202020202020202020202020202020206966202820696E736572746564526F77436F756E74203E203029207B0D0A202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(29) := '2020202020202020202020202072657475726E20706172736564526F77436F756E742F696E736572746564526F77436F756E743B0D0A2020202020202020202020202020202020202020202020202020202020202020202020207D0D0A20202020202020';
wwv_flow_api.g_varchar2_table(30) := '202020202020202020202020202020202020202020202020207D2020200D0A2020202020202020202020202020202020202020202020207D202C0D0A202020202020202020202020226572726F7222203A207B7D2C0D0A20202020202020202020202022';
wwv_flow_api.g_varchar2_table(31) := '73746174757322203A207B7D2C0D0A202020202020202020202020227061727365526573756C747322203A207B7D2C0D0A2020202020202020202020202268616C74656422203A2066756E6374696F6E2829207B0D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(32) := '20206966202820747970656F6620706172736572203D3D3D20226F626A6563742220262620747970656F66207061727365722E7061757365203D3D3D202266756E6374696F6E2229207B0D0A202020202020202020202020202020202020202072657475';
wwv_flow_api.g_varchar2_table(33) := '726E207061727365722E70617573656428293B0D0A202020202020202020202020202020207D0D0A2020202020202020202020207D2C0D0A20202020202020202020202022636F6D706C6574656422203A2066756E6374696F6E2829207B0D0A20202020';
wwv_flow_api.g_varchar2_table(34) := '2020202020202020202020202020202069662028206368756E6B6564203D3D20746F74616C4368756E6B7320297B0D0A20202020202020202020202020202020202020202020202072657475726E20747275653B0D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(35) := '2020202020207D20656C7365207B0D0A20202020202020202020202020202020202020202020202072657475726E2066616C73653B0D0A20202020202020202020202020202020202020207D0D0A2020202020202020202020207D0D0A20202020202020';
wwv_flow_api.g_varchar2_table(36) := '202020202020202020202020202020202020202020200D0A202020207D3B0D0A0D0A202020200D0A2020202066756E6374696F6E206275696C64436F6E666967286F7074696F6E73290D0A202020207B0D0A2020202020202020636F6E666967203D207B';
wwv_flow_api.g_varchar2_table(37) := '0D0A20202020202020202020202064656C696D697465723A20272C272C0D0A2020202020202020202020206865616465723A2066616C73652C0D0A2020202020202020202020206368756E6B203A206368756E6B466E2C0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(38) := '20636F6D706C6574653A20636F6D706C657465466E2C0D0A2020202020202020202020206572726F723A206572726F72466E2C200D0A202020202020202020202020736B6970456D7074794C696E65733A20747275652C0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(39) := '200D0A20202020202020207D3B202020200D0A0D0A20202020200D0A202020202020202069662028206F7074696F6E732029207B0D0A202020202020202020202020202020202F2F20636F70792070726F70657274696573206F6620606F7074696F6E73';
wwv_flow_api.g_varchar2_table(40) := '6020746F2060636F6E666967602E2057696C6C206F7665727772697465206578697374696E67206F6E65732E0D0A20202020202020202020202020202020666F72287661722070726F7020696E206F7074696F6E732E706167654974656D7329207B0D0A';
wwv_flow_api.g_varchar2_table(41) := '20202020202020202020202020202020202020206966286F7074696F6E732E706167654974656D732E6861734F776E50726F70657274792870726F7029297B0D0A202020202020202020202020202020202020202020202020636F6E6669675B70726F70';
wwv_flow_api.g_varchar2_table(42) := '5D203D206F7074696F6E732E706167654974656D735B70726F705D3B0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D0D0A20202020202020202020202020202020666F72287661722070726F70';
wwv_flow_api.g_varchar2_table(43) := '20696E206F7074696F6E7329207B0D0A20202020202020202020202020202020202020206966286F7074696F6E732E6861734F776E50726F70657274792870726F7029297B0D0A202020202020202020202020202020202020202020202020636F6E6669';
wwv_flow_api.g_varchar2_table(44) := '675B70726F705D203D206F7074696F6E735B70726F705D3B0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D0D0A202020202020202020202020202020200D0A20202020202020207D0D0A202020';
wwv_flow_api.g_varchar2_table(45) := '20202020206966202820636F6E6669672E66696C6554797065203D3D202772656D6F74652729207B0D0A202020202020202020202020636F6E6669672E646F776E6C6F6164203D20747275653B20200D0A20202020202020207D20200D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(46) := '2020202072657475726E20636F6E6669673B0D0A202020207D0D0A0D0A202020200D0A202020202F2F66696C652070617273657220656E717565756520696E746F20717565756520616A617820706C73716C2063616C6C2064657175657565730D0A2020';
wwv_flow_api.g_varchar2_table(47) := '202066756E6374696F6E2051756575652829207B0D0A2020202020202020746869732E656C656D656E7473203D205B5D3B0D0A20202020207D0D0A20202020200D0A202020202051756575652E70726F746F747970652E656E7175657565203D2066756E';
wwv_flow_api.g_varchar2_table(48) := '6374696F6E20286529207B0D0A2020202020202020746869732E656C656D656E74732E707573682865293B0D0A20202020207D3B0D0A20202020200D0A20202020202F2F2072656D6F766520616E20656C656D656E742066726F6D207468652066726F6E';
wwv_flow_api.g_varchar2_table(49) := '74206F66207468652071756575650D0A202020202051756575652E70726F746F747970652E64657175657565203D2066756E6374696F6E202829207B0D0A20202020202020202072657475726E20746869732E656C656D656E74732E736869667428293B';
wwv_flow_api.g_varchar2_table(50) := '0D0A20202020207D3B0D0A20202020200D0A202020202051756575652E70726F746F747970652E6973456D707479203D2066756E6374696F6E202829207B0D0A20202020202020202072657475726E20746869732E656C656D656E74732E6C656E677468';
wwv_flow_api.g_varchar2_table(51) := '203D3D20303B0D0A20202020207D3B0D0A20202020200D0A20202020202F2F206765742074686520656C656D656E74206174207468652066726F6E74206F66207468652071756575650D0A202020202051756575652E70726F746F747970652E7065656B';
wwv_flow_api.g_varchar2_table(52) := '203D2066756E6374696F6E202829207B0D0A20202020202020202072657475726E2021746869732E6973456D7074792829203F20746869732E656C656D656E74735B305D203A20756E646566696E65643B0D0A20202020207D3B0D0A20202020200D0A20';
wwv_flow_api.g_varchar2_table(53) := '2020202051756575652E70726F746F747970652E6C656E677468203D2066756E6374696F6E2829207B0D0A20202020202020202072657475726E20746869732E656C656D656E74732E6C656E6774683B0D0A20202020207D0D0A20202020205175657565';
wwv_flow_api.g_varchar2_table(54) := '2E70726F746F747970652E73697A65203D2066756E6374696F6E2829207B0D0A202020202020202072657475726E20746869732E656C656D656E74732E6A6F696E282727292E6C656E6774683B0D0A202020207D0D0A20202020202F2F74686520706172';
wwv_flow_api.g_varchar2_table(55) := '736564206368756E6B20697320656E717565756520696E2071756575650D0A20202020206C65742071203D206E657720517565756528293B0D0A20202020200D0A0D0A202020202F2F65766572797468696E672073746172747320686572652C20616674';
wwv_flow_api.g_varchar2_table(56) := '6572207573657220636C69636B73207375626D69742C206275696C6420616E64206F7665727269646520636F6E6669672C2070617273652C20696E736572740D0A202020206173796E632066756E6374696F6E207375626D697420286461436F6E746578';
wwv_flow_api.g_varchar2_table(57) := '742C206F7074696F6E732C20696E6974466E290D0A20202020202020207B0D0A2020202020202020202020200D0A202020202020202020202020636F6E666967203D206275696C64436F6E666967286F7074696F6E73293B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(58) := '20202F2F6F766572726964656E206279207573657220696E206A7320696E69740D0A20202020202020202020202069662028696E6974466E20696E7374616E63656F662046756E6374696F6E29207B0D0A20202020202020202020202020202020696E69';
wwv_flow_api.g_varchar2_table(59) := '74466E2E63616C6C286461436F6E746578742C20636F6E666967293B0D0A2020202020202020202020207D0D0A2020202020202020202020200D0A20202020202020202020202069662028636F6E6669672E73747265616D203D3D20274E2729207B0D0A';
wwv_flow_api.g_varchar2_table(60) := '20202020202020202020202020202020636F6E6669672E6368756E6B203D20756E646566696E65643B0D0A2020202020202020202020207D0D0A2020202020202020202020200D0A2020202020202020202020206966202820636F6E6669672E66696C65';
wwv_flow_api.g_varchar2_table(61) := '54797065203D3D202772656D6F74652729207B0D0A20202020202020202020202020202020636F6E6669672E646F776E6C6F6164203D20747275653B20200D0A2020202020202020202020207D200D0A2020202020202020202020200D0A0D0A20202020';
wwv_flow_api.g_varchar2_table(62) := '2020202020202020616A61784964656E746966696572203D20636F6E6669672E616A617849643B0D0A202020202020202020202020636F6E6669672E627574746F6E4944203D206461436F6E746578742E74726967676572696E67456C656D656E742E69';
wwv_flow_api.g_varchar2_table(63) := '643B0D0A2020202020202020202020207375626D6974427574746F6E4944203D20636F6E6669672E627574746F6E49443B0D0A20202020202020202020202066696C6554797065203D20636F6E6669672E66696C65547970653B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(64) := '2020202066696C654944203D20636F6E6669672E66696C6549443B0D0A20202020202020202020202074687265616473203D2020636F6E6669672E746872656164733B0D0A2020202020202020202020206368756E6B53697A65203D20636F6E6669672E';
wwv_flow_api.g_varchar2_table(65) := '6368756E6B53697A653B0D0A2020202020202020202020206368756E6B466F726D6174203D20636F6E6669672E6368756E6B466F726D61743B0D0A202020202020202020202020696E7365727454797065203D20636F6E6669672E696E73657274547970';
wwv_flow_api.g_varchar2_table(66) := '653B0D0A202020202020202020202020636F6D706C6574655F63616C6C6261636B5F666E203D20636F6E6669672E636F6D706C6574655F63616C6C6261636B5F666E3B0D0A2020202020202020202020206572726F725F63616C6C6261636B5F666E203D';
wwv_flow_api.g_varchar2_table(67) := '20636F6E6669672E6572726F725F63616C6C6261636B5F666E3B0D0A2020202020202020202020206368756E6B5F696E7365727465645F63616C6C6261636B5F666E203D20636F6E6669672E6368756E6B5F696E7365727465645F63616C6C6261636B5F';
wwv_flow_api.g_varchar2_table(68) := '666E3B0D0A202020202020202020202020736B697046697273744E526F7773203D20636F6E6669672E736B697046697273744E526F77733B0D0A20202020202020202020202073747265616D203D20636F6E6669672E73747265616D3B0D0A0D0A202020';
wwv_flow_api.g_varchar2_table(69) := '2020202020202020207661722067657455706C6F6164494450726F6D6973653B0D0A20202020202020202020202067657455706C6F6164494450726F6D697365203D2020202020617065782E7365727665722E706C7567696E280D0A2020202020202020';
wwv_flow_api.g_varchar2_table(70) := '2020202020202020616A61784964656E7469666965722C200D0A202020202020202020202020202020207B7830333A2767657455706C6F6164494427207D2C0D0A202020202020202020202020202020207B64617461547970653A2274657874227D0D0A';
wwv_flow_api.g_varchar2_table(71) := '202020202020202020202020293B0D0A0D0A202020202020202020202020747279207B0D0A202020202020202020202020202020207661722067657455706C6F61644944526573756C74203D2061776169742067657455706C6F6164494450726F6D6973';
wwv_flow_api.g_varchar2_table(72) := '652E646F6E6520282066756E6374696F6E2028726573756C74297B0D0A202020202020202020202020202020202020202064617461203D204A534F4E2E706172736528726573756C74293B0D0A202020202020202020202020202020202020202075706C';
wwv_flow_api.g_varchar2_table(73) := '6F61644944203D20646174612E75706C6F616449443B202020200D0A202020202020202020202020202020207D293B0D0A2020202020202020202020207D2063617463682865727229207B0D0A2020202020202020202020202020202020202020657272';
wwv_flow_api.g_varchar2_table(74) := '6F722E74797065203D202275706C6F6164204944223B0D0A20202020202020202020202020202020202020206572726F722E636F6465203D202267657474696E6755706C6F61644944223B0D0A2020202020202020202020202020202020202020657272';
wwv_flow_api.g_varchar2_table(75) := '6F722E6D657373616765203D20224572726F722067657474696E672075706C6F61642049442066726F6D20637376327461626C652073657175656E6365223B0D0A202020202020202020202020202020202020202063616C6C4261636B52657475726E4F';
wwv_flow_api.g_varchar2_table(76) := '626A6563742E6572726F7220203D206572726F723B0D0A20202020202020202020202020202020202020207374617475732E7374617465203D20226572726F72223B0D0A20202020202020202020202020202020202020207374617475732E7768657265';
wwv_flow_api.g_varchar2_table(77) := '203D202267657474696E6755706C6F61644944223B0D0A202020202020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E737461747573203D207374617475733B0D0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(78) := '20206572726F725F63616C6C6261636B5F666E2863616C6C4261636B52657475726E4F626A656374293B0D0A202020202020202020202020202020202020202072657475726E3B0D0A0D0A2020202020202020202020207D0D0A0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(79) := '20202020636F6E6669672E75706C6F61644944203D2075706C6F616449443B0D0A0D0A20202020202020202020202073746570706564203D20303B0D0A2020202020202020202020206368756E6B6564203D20303B0D0A20202020202020202020202074';
wwv_flow_api.g_varchar2_table(80) := '6F74616C4368756E6B73203D20303B0D0A202020202020202020202020706172736564526F77436F756E74203D20303B0D0A20202020202020202020202070617273654572726F72436F756E74203D20303B0D0A202020202020202020202020696E7365';
wwv_flow_api.g_varchar2_table(81) := '727452657175657374436F6D706C65746564436F756E74203D20303B0D0A202020202020202020202020696E736572744572726F72436F756E74203D20303B0D0A202020202020202020202020696E736572745265717565737450656E64696E67436F75';
wwv_flow_api.g_varchar2_table(82) := '6E74203D20303B200D0A202020202020202020202020696E7365727452657175657374436F6D706C65746564436F756E743D20303B20200D0A202020202020202020202020696E736572746564526F77436F756E74203D20303B200D0A20202020202020';
wwv_flow_api.g_varchar2_table(83) := '20202020206572726F7243616C6C4261636B436F756E74203D20303B0D0A20202020202020202020202066697273744572726F72203D20756E646566696E65643B0D0A0D0A20202020202020202020202076617220696E707574203D202428272327202B';
wwv_flow_api.g_varchar2_table(84) := '2066696C654944292E76616C28293B0D0A20202020202020202020202069662028666972737452756E29207B0D0A20202020202020202020202020202020666972737452756E203D2066616C73653B0D0A2020202020202020202020207D202020200D0A';
wwv_flow_api.g_varchar2_table(85) := '2020202020202020202020202F2F70617273652073747265616D0D0A202020202020202020202020696620282066696C6554797065203D3D20276C6F63616C272029207B0D0A0D0A2020202020202020202020202020202069662028212428272327202B';
wwv_flow_api.g_varchar2_table(86) := '2066696C654944295B305D2E66696C65732E6C656E677468290D0A202020202020202020202020202020207B0D0A20202020202020202020202020202020202020200D0A20202020202020202020202020202020202020206572726F722E74797065203D';
wwv_flow_api.g_varchar2_table(87) := '20226C6F6164223B0D0A20202020202020202020202020202020202020206572726F722E636F6465203D202266696C654C6F6164696E674572726F72223B0D0A20202020202020202020202020202020202020206572726F722E6D657373616765203D20';
wwv_flow_api.g_varchar2_table(88) := '22506C656173652063686F6F7365206174206C65617374206F6E652066696C6520746F207061727365223B0D0A202020202020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E6572726F7220203D206572726F72';
wwv_flow_api.g_varchar2_table(89) := '3B0D0A20202020202020202020202020202020202020207374617475732E7374617465203D20226572726F72223B0D0A20202020202020202020202020202020202020207374617475732E7768657265203D202266696C6552656164223B0D0A20202020';
wwv_flow_api.g_varchar2_table(90) := '2020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E737461747573203D207374617475733B0D0A202020200D0A202020200D0A20202020202020202020202020202020202020206572726F725F63616C6C626163';
wwv_flow_api.g_varchar2_table(91) := '6B5F666E2863616C6C4261636B52657475726E4F626A656374293B0D0A202020202020202020202020202020202020202072657475726E3B0D0A202020202020202020202020202020207D0D0A202020202020202020202020202020200D0A2020202020';
wwv_flow_api.g_varchar2_table(92) := '202020202020202020202066696C65436F756E74203D202428272327202B2066696C654944295B305D2E66696C65732E6C656E6774683B0D0A202020200D0A202020202020202020202020202020202428272327202B2066696C654944292E7061727365';
wwv_flow_api.g_varchar2_table(93) := '287B0D0A2020202020202020202020202020202020202020636F6E6669673A20636F6E6669672C0D0A20202020202020202020202020202020202020206265666F72653A2066756E6374696F6E2866696C652C20696E707574456C656D290D0A20202020';
wwv_flow_api.g_varchar2_table(94) := '202020202020202020202020202020207B0D0A2020202020202020202020202020202020202020202020207374617274203D206E6F7728293B0D0A20202020202020202020202020202020202020202020202066696C656E616D65203D2066696C652E6E';
wwv_flow_api.g_varchar2_table(95) := '616D653B0D0A20202020202020202020202020202020202020202020202066696C6573697A65203D2066696C652E73697A653B0D0A20202020202020202020202020202020202020202020202066696C6574797065203D2066696C652E747970653B0D0A';
wwv_flow_api.g_varchar2_table(96) := '20202020202020202020202020202020202020202020202066696C65734172722E70757368287B202266696C656E616D6522203A2066696C656E616D652C202266696C6573697A6522203A2066696C6573697A652C202266696C657479706522203A6669';
wwv_flow_api.g_varchar2_table(97) := '6C65747970657D293B0D0A202020202020202020202020202020202020202020202020746F74616C4368756E6B73203D20746F74616C4368756E6B73202B204D6174682E6365696C2866696C6573697A652F636F6E6669672E6368756E6B53697A65293B';
wwv_flow_api.g_varchar2_table(98) := '0D0A202020202020202020202020202020202020202020202020616A617843616C6C436F756E746572203D20303B0D0A202020202020202020202020202020202020202020202020202020200D0A20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(99) := '20200D0A0D0A20202020202020202020202020202020202020207D2C0D0A20202020202020202020202020202020202020206572726F723A2066756E6374696F6E286572722C2066696C65290D0A20202020202020202020202020202020202020207B0D';
wwv_flow_api.g_varchar2_table(100) := '0A20202020202020202020202020202020202020202020202066697273744572726F72203D2066697273744572726F72207C7C206572723B0D0A20202020202020202020202020202020202020202020202070617273654572726F72436F756E742B2B3B';
wwv_flow_api.g_varchar2_table(101) := '0D0A2020202020202020202020202020202020202020202020206572726F722E74797065203D20226C6F6164223B0D0A2020202020202020202020202020202020202020202020206572726F722E636F6465203D20226C6F6164696E6746696C65223B0D';
wwv_flow_api.g_varchar2_table(102) := '0A2020202020202020202020202020202020202020202020206572726F722E6D657373616765203D20224572726F72207768656E206C6F6164696E67207468652066696C6520220D0A202020202020202020202020202020202020202020202020657272';
wwv_flow_api.g_varchar2_table(103) := '6F722E66696C65203D2066696C653B0D0A2020202020202020202020202020202020202020202020206572726F722E657272203D206572723B0D0A20202020202020202020202020202020202020202020202063616C6C4261636B52657475726E4F626A';
wwv_flow_api.g_varchar2_table(104) := '6563742E6572726F72203D20206572726F723B0D0A2020202020202020202020202020202020202020202020207374617475732E7374617465203D20226572726F72223B0D0A202020202020202020202020202020202020202020202020737461747573';
wwv_flow_api.g_varchar2_table(105) := '2E7768657265203D20227061727365223B0D0A20202020202020202020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E737461747573203D207374617475733B0D0A20202020202020200D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(106) := '2020202020202020202020202020202020206572726F725F63616C6C6261636B5F666E2863616C6C4261636B52657475726E4F626A656374293B0D0A20202020202020202020202020202020202020207D2C0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(107) := '20202020636F6D706C6574653A2066756E6374696F6E28290D0A20202020202020202020202020202020202020207B0D0A2020202020202020202020202020202020202020202020200D0A20202020202020202020202020202020202020202020202065';
wwv_flow_api.g_varchar2_table(108) := '6E64203D206E6F7728293B0D0A2020202020202020202020202020202020202020202020200D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D293B0D0A2020202020202020202020207D0D0A2020';
wwv_flow_api.g_varchar2_table(109) := '202020202020202020206966202820636F6E6669672E66696C6554797065203D3D202772656D6F7465272029207B0D0A0D0A2020202020202020202020202020202075726C4172726179203D20696E7075742E73706C697428272C27293B0D0A20202020';
wwv_flow_api.g_varchar2_table(110) := '202020202020202020202020696620282075726C41727261792E6C656E677468203D3D20322029207B0D0A2020202020202020202020202020202020202020696E707574203D2075726C41727261795B305D3B0D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(111) := '202020202066696C656E616D65203D2075726C41727261795B305D3B0D0A202020202020202020202020202020202020202066696C6573697A65203D2075726C41727261795B315D3B0D0A202020202020202020202020202020202020202066696C6573';
wwv_flow_api.g_varchar2_table(112) := '4172722E70757368287B202266696C656E616D6522203A2066696C656E616D652C202266696C6573697A6522203A2066696C6573697A652C202266696C657479706522203A66696C65547970657D293B0D0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(113) := '2020746F74616C4368756E6B73203D20746F74616C4368756E6B73202B204D6174682E6365696C2866696C6573697A652F636F6E6669672E6368756E6B53697A65293B0D0A2020202020202020202020202020202020202020616A617843616C6C436F75';
wwv_flow_api.g_varchar2_table(114) := '6E746572203D20303B0D0A2020202020202020202020202020202020202020202020200D0A202020202020202020202020202020207D0D0A20202020202020202020202020202020696620282075726C41727261792E6C656E677468203D3D2031202920';
wwv_flow_api.g_varchar2_table(115) := '7B0D0A2020202020202020202020202020202020202020696E707574203D2075726C41727261795B305D3B0D0A202020202020202020202020202020202020202066696C656E616D65203D2075726C41727261795B305D3B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(116) := '2020202020202020202066696C65734172722E70757368287B202266696C656E616D6522203A2066696C656E616D652C202266696C6573697A6522203A2066696C6573697A652C202266696C657479706522203A66696C65547970657D293B0D0A202020';
wwv_flow_api.g_varchar2_table(117) := '2020202020202020202020202020202020746F74616C4368756E6B73203D20303B0D0A2020202020202020202020202020202020202020616A617843616C6C436F756E746572203D20303B0D0A2020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(118) := '200D0A202020202020202020202020202020207D0D0A0D0A202020202020202020202020202020207374617274203D206E6F7728293B0D0A2020202020202020202020202020202076617220726573756C7473203D20506170612E706172736528696E70';
wwv_flow_api.g_varchar2_table(119) := '75742C20636F6E666967293B0D0A2020202020202020202020207D202020200D0A2020202020202020202020200D0A20202020202020207D0D0A0D0A202020202F2F6E6F7420757365642C2075736566756C20647572696E672074726F75626C6573686F';
wwv_flow_api.g_varchar2_table(120) := '6F74696E67202020200D0A2020202066756E6374696F6E207072696E745374617473286D7367290D0A202020207B0D0A2020202020202020696620286D7367290D0A202020202020202020202020636F6E736F6C652E6C6F67286D7367293B0D0A202020';
wwv_flow_api.g_varchar2_table(121) := '2020202020636F6E736F6C652E6C6F6728222020202020202054696D653A222C2028656E642D7374617274207C7C202228556E6B6E6F776E3B20796F75722062726F7773657220646F6573206E6F7420737570706F72742074686520506572666F726D61';
wwv_flow_api.g_varchar2_table(122) := '6E6365204150492922292C20226D7322293B0D0A20202020202020200D0A2020202020202020636F6E736F6C652E6C6F6728222020526F7720636F756E743A222C20706172736564526F77436F756E74293B0D0A20202020202020206966202873746570';
wwv_flow_api.g_varchar2_table(123) := '706564290D0A202020202020202020202020636F6E736F6C652E6C6F67282220202020537465707065643A222C2073746570706564293B0D0A2020202020202020696620286368756E6B6564290D0A202020202020202020202020636F6E736F6C652E6C';
wwv_flow_api.g_varchar2_table(124) := '6F672822202020204368756E6B65643A222C206368756E6B6564293B202020200D0A2020202020202020636F6E736F6C652E6C6F67282220202020204572726F72733A222C2070617273654572726F72436F756E74293B0D0A2020202020202020696620';
wwv_flow_api.g_varchar2_table(125) := '2870617273654572726F72436F756E74290D0A202020202020202020202020636F6E736F6C652E6C6F6728224669727374206572726F723A222C2066697273744572726F72293B0D0A202020207D0D0A0D0A202020202F2F63616C6C6564206166746572';
wwv_flow_api.g_varchar2_table(126) := '20616C6C20706170612070617273696E6720697320646F6E652C20696E73657274732068617070656E206865726520666F722053747265616D3D4E6F0D0A202020206173796E632066756E6374696F6E20636F6D706C657465466E28726573756C747329';
wwv_flow_api.g_varchar2_table(127) := '0D0A202020207B0D0A2020202020202020656E64203D206E6F7728293B0D0A0D0A202020202020202069662028726573756C747320262620726573756C74732E6572726F7273290D0A20202020202020207B0D0A20202020202020202020202069662028';
wwv_flow_api.g_varchar2_table(128) := '726573756C74732E6572726F7273290D0A2020202020202020202020207B0D0A2020202020202020202020202020202070617273654572726F72436F756E74203D20726573756C74732E6572726F72732E6C656E6774683B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(129) := '20202020202066697273744572726F72203D20726573756C74732E6572726F72735B305D3B0D0A2020202020202020202020207D0D0A20202020202020202020202069662028726573756C74732E6461746120262620726573756C74732E646174612E6C';
wwv_flow_api.g_varchar2_table(130) := '656E677468203E2030290D0A20202020202020202020202020202020706172736564526F77436F756E74203D20726573756C74732E646174612E6C656E6774683B0D0A20202020202020207D0D0A20202020202020206966202873747265616D203D3D20';
wwv_flow_api.g_varchar2_table(131) := '274E2729202F2F6966206E6F742073747265616D696E670D0A20202020202020207B0D0A20202020202020202020202069662028726573756C74732E6572726F72732E6C656E677468203E2030290D0A2020202020202020202020207B0D0A2020202020';
wwv_flow_api.g_varchar2_table(132) := '202020202020202020202070617273654572726F72436F756E74203D2070617273654572726F72436F756E74202B20726573756C74732E6572726F72732E6C656E6774683B0D0A2020202020202020202020202020202066697273744572726F72203D20';
wwv_flow_api.g_varchar2_table(133) := '66697273744572726F72207C7C20726573756C74732E6572726F72735B305D3B0D0A202020202020202020202020202020206572726F722E74797065203D20227061727365223B0D0A202020202020202020202020202020206572726F722E636F646520';
wwv_flow_api.g_varchar2_table(134) := '3D202270617273696E674572726F72223B0D0A202020202020202020202020202020206572726F722E6D657373616765203D20224572726F72207768656E2070617273696E672066696C65223B0D0A2020202020202020202020202020202063616C6C42';
wwv_flow_api.g_varchar2_table(135) := '61636B52657475726E4F626A6563742E7061727365526573756C7473203D20726573756C74733B0D0A2020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E6572726F72203D20206572726F723B0D0A2020202020';
wwv_flow_api.g_varchar2_table(136) := '20202020202020202020207374617475732E7374617465203D20226572726F72223B0D0A202020202020202020202020202020207374617475732E7768657265203D2022706172736553747265616D223B0D0A2020202020202020202020202020202063';
wwv_flow_api.g_varchar2_table(137) := '616C6C4261636B52657475726E4F626A6563742E737461747573203D207374617475733B0D0A2020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E746F74616C4368756E6B73203D20746F74616C4368756E6B73';
wwv_flow_api.g_varchar2_table(138) := '3B0D0A2020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E6368756E6B6564203D206368756E6B65643B0D0A2020202020202020202020202020202069662028206572726F7243616C6C4261636B436F756E7420';
wwv_flow_api.g_varchar2_table(139) := '3D3D3D20302029207B0D0A2020202020202020202020202020202020202020202020206572726F725F63616C6C6261636B5F666E2863616C6C4261636B52657475726E4F626A656374293B0D0A20202020202020202020202020202020202020207D200D';
wwv_flow_api.g_varchar2_table(140) := '0A202020202020202020202020202020206572726F7243616C6C4261636B436F756E742B2B3B2020200D0A2020202020202020202020207D20656C7365207B0D0A2020202020202020202020202020202069662028726573756C74732E64617461202626';
wwv_flow_api.g_varchar2_table(141) := '20726573756C74732E646174612E6C656E677468203E20302029207B0D0A20202020202020202020202020202020202020206966202820736B697046697273744E526F7773203E20302029207B0D0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(142) := '202020726573756C74732E64617461203D20726573756C74732E646174612E73706C69636528736B697046697273744E526F7773293B0D0A20202020202020202020202020202020202020207D202020200D0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(143) := '202020706172736564526F77436F756E74203D2020726573756C74732E646174612E6C656E6774683B0D0A20202020202020202020202020202020202020206368756E6B6564203D20303B0D0A2020202020202020202020202020202020202020746F74';
wwv_flow_api.g_varchar2_table(144) := '616C4368756E6B73203D20303B0D0A20202020202020202020202020202020202020206C6574206368756E6B4172726179203D5B5D3B0D0A20202020202020202020202020202020202020206966202820726573756C74732E646174615B305D2E6A6F69';
wwv_flow_api.g_varchar2_table(145) := '6E282727292E6C656E677468202A20726573756C74732E646174612E6C656E677468203C3D206368756E6B53697A652029207B0D0A202020202020202020202020202020202020202020202020712E656E717565756528726573756C74732E6461746129';
wwv_flow_api.g_varchar2_table(146) := '3B0D0A2020202020202020202020202020202020202020202020206368756E6B65642B2B3B0D0A202020202020202020202020202020202020202020202020746F74616C4368756E6B73203D206368756E6B65643B0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(147) := '2020202020202020202020617761697420696E7365727428726573756C7473293B0D0A0D0A20202020202020202020202020202020202020207D20656C7365207B0D0A202020202020202020202020202020202020202020202020666F722028693D303B';
wwv_flow_api.g_varchar2_table(148) := '2069203C20726573756C74732E646174612E6C656E6774683B692B2B29207B200D0A202020202020202020202020202020202020202020202020202020206368756E6B41727261792E7075736828726573756C74732E646174615B695D293B0D0A202020';
wwv_flow_api.g_varchar2_table(149) := '2020202020202020202020202020202020202020202020202069662028206368756E6B41727261792E6A6F696E282727292E6C656E677468203E206368756E6B53697A652029207B0D0A2020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(150) := '202020202020712E656E7175657565286368756E6B4172726179293B0D0A20202020202020202020202020202020202020202020202020202020202020206368756E6B4172726179203D205B5D3B0D0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(151) := '2020202020202020202020206368756E6B65642B2B3B0D0A2020202020202020202020202020202020202020202020202020202020202020696620282069202B2031203D3D20726573756C74732E646174612E6C656E67746829207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(152) := '202020202020202020202020202020202020202020202020202020202020746F74616C4368756E6B73203D206368756E6B65643B0D0A20202020202020202020202020202020202020202020202020202020202020207D202020202020200D0A20202020';
wwv_flow_api.g_varchar2_table(153) := '20202020202020202020202020202020202020202020202020202020656C7365207B2F2F6B65657020746F74616C206368756E6B73203E206368756E6B6564200D0A20202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(154) := '2020746F74616C4368756E6B73203D206368756E6B6564202B20313B0D0A20202020202020202020202020202020202020202020202020202020202020207D202020200D0A202020202020202020202020202020202020202020202020202020207D200D';
wwv_flow_api.g_varchar2_table(155) := '0A202020202020202020202020202020202020202020202020202020200D0A20202020202020202020202020202020202020202020202020202020696620282069202B2031203D3D20726573756C74732E646174612E6C656E6774682029207B200D0A20';
wwv_flow_api.g_varchar2_table(156) := '20202020202020202020202020202020202020202020202020202020202020712E656E7175657565286368756E6B4172726179293B0D0A20202020202020202020202020202020202020202020202020202020202020206368756E6B65642B2B3B0D0A20';
wwv_flow_api.g_varchar2_table(157) := '20202020202020202020202020202020202020202020202020202020202020746F74616C4368756E6B73203D206368756E6B65643B0D0A202020202020202020202020202020202020202020202020202020207D20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(158) := '2020202020202020202020202020200D0A20202020202020202020202020202020202020202020202020202020696620282020712E6C656E6774682829203E3D2074687265616473207C7C2069202B2031203D3D20726573756C74732E646174612E6C65';
wwv_flow_api.g_varchar2_table(159) := '6E6774682029207B200D0A2020202020202020202020202020202020202020202020202020202020202020617761697420696E7365727428726573756C7473293B0D0A202020202020202020202020202020202020202020202020202020207D0D0A2020';
wwv_flow_api.g_varchar2_table(160) := '202020202020202020202020202020202020202020202020202020202020202020200D0A2020202020202020202020202020202020202020202020207D202020200D0A20202020202020202020202020202020202020207D20202020202020200D0A2020';
wwv_flow_api.g_varchar2_table(161) := '20202020202020202020202020207D202020200D0A2020202020202020202020207D20200D0A0D0A20202020202020207D0D0A202020207D0D0A0D0A202020202F2F616E79206572726F72207468726F776E206279207061706170617273650D0A202020';
wwv_flow_api.g_varchar2_table(162) := '2066756E6374696F6E206572726F72466E286572722C2066696C65290D0A202020207B0D0A2020202020202020656E64203D206E6F7728293B0D0A0D0A20202020202020206572726F722E74797065203D20227061727365223B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(163) := '6572726F722E636F6465203D202270617273696E6746696C65223B0D0A20202020202020206572726F722E6D657373616765203D20224572726F722072616973656420647572696E672066696C6520706172736520220D0A20202020202020206572726F';
wwv_flow_api.g_varchar2_table(164) := '722E66696C65203D2066696C653B0D0A20202020202020206572726F722E657272203D206572723B0D0A202020202020202063616C6C4261636B52657475726E4F626A6563742E6572726F72203D20206572726F723B0D0A202020202020202073746174';
wwv_flow_api.g_varchar2_table(165) := '75732E7374617465203D20226572726F72223B0D0A20202020202020207374617475732E7768657265203D20227061727365223B0D0A202020202020202063616C6C4261636B52657475726E4F626A6563742E737461747573203D207374617475733B0D';
wwv_flow_api.g_varchar2_table(166) := '0A0D0A0D0A20202020202020206572726F725F63616C6C6261636B5F666E2863616C6C4261636B52657475726E4F626A656374293B0D0A0D0A202020207D0D0A0D0A0D0A0D0A2020202066756E6374696F6E206E6F7728290D0A202020207B0D0A202020';
wwv_flow_api.g_varchar2_table(167) := '202020202072657475726E20747970656F662077696E646F772E706572666F726D616E636520213D3D2027756E646566696E6564270D0A202020202020202020202020202020203F2077696E646F772E706572666F726D616E63652E6E6F7728290D0A20';
wwv_flow_api.g_varchar2_table(168) := '2020202020202020202020202020203A20303B0D0A202020207D0D0A0D0A202020202F2F646571756575652C20636F6E7665727420746F20636F6E6669677572656420666F726D61742C20616A61782063616C6C20746F20696E736572742C2077616974';
wwv_flow_api.g_varchar2_table(169) := '2074696C6C20616C6C20616A61782070726F6D697365207265736F6C7665640D0A202020202F2F2C2063616C6C206572726F722C206368756E6B20616E6420636F6D706C6574652063616C6C6261636B2066756E6374696F6E0D0A202020207661722069';
wwv_flow_api.g_varchar2_table(170) := '6E73657274203D206173796E632066756E6374696F6E2028726573756C74732C70617273657229207B0D0A202020202020202076617220696E7365727450726F6D6973653B0D0A202020202020202076617220696E7365727450726F6D69736541727261';
wwv_flow_api.g_varchar2_table(171) := '79203D205B5D3B0D0A202020202020202076617220616A6178496E707574446174613B0D0A0D0A2020202020202020666F7220286A203D20303B206A203C20712E6C656E67746828293B206A2B2B29207B0D0A0D0A202020202020202020202020696620';
wwv_flow_api.g_varchar2_table(172) := '2820696E7365727454797065203D3D20226A736F6E22207C7C206368756E6B466F726D6174203D3D20226A736F6E22207C7C696E7365727454797065203D3D3D20756E646566696E656429207B0D0A20202020202020202020202020202020616A617849';
wwv_flow_api.g_varchar2_table(173) := '6E70757444617461203D204A534F4E2E737472696E6769667928712E646571756575652829293B0D0A2020202020202020202020207D0D0A2020202020202020202020206966202820696E7365727454797065203D3D2022786D6C22207C7C206368756E';
wwv_flow_api.g_varchar2_table(174) := '6B466F726D6174203D3D2022786D6C2229207B0D0A202020202020202020202020202020202F2F3C723E3C63313E2E2E3C2F63313E2E2E2E2E2E3C636E3E2E2E3C2F636E3E3C2F723E0D0A20202020202020202020202020202020766172206A736F6E32';
wwv_flow_api.g_varchar2_table(175) := '786D6C203D20712E6465717565756528292E6D61702866756E6374696F6E28722C69297B200D0A2020202020202020202020202020202020202020202020202020202072657475726E20273C723E27202B20722E6D61702866756E6374696F6E28632C6A';
wwv_flow_api.g_varchar2_table(176) := '290D0A2020202020202020202020202020202020202020202020207B2072657475726E20273C6327202B206A202B20273E27202B20273C215B43444154415B27202B2063202B20275D5D3E27202B20273C2F6327202B206A202B20273E277D292E6A6F69';
wwv_flow_api.g_varchar2_table(177) := '6E28272729202B20273C2F723E2720207D292E6A6F696E282727293B0D0A202020202020202020202020202020206A736F6E32786D6C203D20273C78643E2720202B206A736F6E32786D6C202B20273C2F78643E273B2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(178) := '202020200D0A20202020202020202020202020202020616A6178496E70757444617461203D206A736F6E32786D6C3B0D0A2020202020202020202020207D2020202020202020202020200D0A0D0A2020202020202020202020200D0A2020202020202020';
wwv_flow_api.g_varchar2_table(179) := '202020206966202820696E7365727454797065203D3D2022617065785F646174615F7061727365722220207C7C206368756E6B466F726D6174203D3D2027637376272029207B0D0A20202020202020202020202020202020616A6178496E707574446174';
wwv_flow_api.g_varchar2_table(180) := '61203D20506170612E756E706172736528712E646571756575652829293B200D0A2020202020202020202020207D202020200D0A2020202020202020202020200D0A2020202020202020202020200D0A202020202020202020202020696E736572745072';
wwv_flow_api.g_varchar2_table(181) := '6F6D697365203D2020202020617065782E7365727665722E706C7567696E280D0A20202020202020202020202020202020616A61784964656E7469666965722C200D0A202020202020202020202020202020207B20705F636C6F625F30313A20616A6178';
wwv_flow_api.g_varchar2_table(182) := '496E707574446174612C207830313A66696C656E616D652C207830323A75706C6F616449442C7830343A696E73657274547970657D2C0D0A202020202020202020202020202020207B64617461547970653A2274657874227D0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(183) := '202020293B0D0A0D0A202020202020202020202020696E7365727450726F6D69736541727261792E7075736828696E7365727450726F6D697365293B202020200D0A202020202020202020202020696E736572745265717565737450656E64696E67436F';
wwv_flow_api.g_varchar2_table(184) := '756E742B2B3B202F2F696E6372656D656E74207768656E20726571756573742069732073656E742020202020202020202020202020200D0A20202020202020200D0A20202020202020207D0D0A2020202020202020747279207B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(185) := '2020202076617220696E73657274526573756C74734172726179203D2061776169742050726F6D6973652E616C6C28696E7365727450726F6D6973654172726179293B0D0A2020202020202020202020206966202820747970656F662070617273657220';
wwv_flow_api.g_varchar2_table(186) := '3D3D3D20226F626A6563742220262620747970656F66207061727365722E726573756D65203D3D3D202266756E6374696F6E222029207B200D0A202020202020202020202020202020206C6574207061757365526573756C74203D206177616974207061';
wwv_flow_api.g_varchar2_table(187) := '727365722E726573756D6528293B0D0A2020202020202020202020207D202020200D0A0D0A202020202020202020202020666F7220286C6574206B203D20303B206B3C696E73657274526573756C747341727261792E6C656E6774683B206B2B2B297B0D';
wwv_flow_api.g_varchar2_table(188) := '0A202020202020202020202020202020206C65742064617461203D204A534F4E2E706172736528696E73657274526573756C747341727261795B6B5D293B0D0A20202020202020202020202020202020696E736572745265717565737450656E64696E67';
wwv_flow_api.g_varchar2_table(189) := '436F756E742D2D3B202F2F64656372656D656E74207768656E207265717565737420697320636F6D706C657465642C2030206D65616E73206E6F742070656E64696E670D0A20202020202020202020202020202020696E7365727452657175657374436F';
wwv_flow_api.g_varchar2_table(190) := '6D706C65746564436F756E742B2B3B202F2F746F74616C20636F756E74206F6620636F6D706C6574656420726571756573740D0A0D0A202020202020202020202020202020206966202820646174612E737461747573203D3D20226572726F7222202920';
wwv_flow_api.g_varchar2_table(191) := '7B0D0A202020202020202020202020202020202020202069662028747970656F6620706172736572203D3D3D20226F626A6563742220262620747970656F66207061727365722E7061757365203D3D3D202266756E6374696F6E2229207B0D0A20202020';
wwv_flow_api.g_varchar2_table(192) := '20202020202020202020202020202020202020206C6574207061757365526573756C74203D206177616974207061727365722E706175736528293B0D0A20202020202020202020202020202020202020207D202020200D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(193) := '2020202020202020696E736572744572726F72436F756E742B2B3B0D0A20202020202020202020202020202020202020206572726F722E74797065203D2022696E73657274223B0D0A20202020202020202020202020202020202020206572726F722E63';
wwv_flow_api.g_varchar2_table(194) := '6F6465203D20646174612E73716C636F64653B0D0A20202020202020202020202020202020202020206572726F722E6D657373616765203D20646174612E73716C6572726D3B0D0A202020202020202020202020202020202020202063616C6C4261636B';
wwv_flow_api.g_varchar2_table(195) := '52657475726E4F626A6563742E6572726F72203D20206572726F723B0D0A202020202020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E7061727365526573756C7473203D20726573756C74733B0D0A20202020';
wwv_flow_api.g_varchar2_table(196) := '202020202020202020202020202020207374617475732E7374617465203D20226572726F72223B0D0A20202020202020202020202020202020202020207374617475732E7768657265203D2022696E73657274223B0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(197) := '2020202020202063616C6C4261636B52657475726E4F626A6563742E737461747573203D207374617475733B0D0A202020202020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E746F74616C4368756E6B73203D';
wwv_flow_api.g_varchar2_table(198) := '20746F74616C4368756E6B733B0D0A202020202020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E6368756E6B6564203D206368756E6B65643B0D0A202020202020202020202020202020202020202069662028';
wwv_flow_api.g_varchar2_table(199) := '206572726F7243616C6C4261636B436F756E74203D3D3D20302029207B0D0A2020202020202020202020202020202020202020202020206572726F725F63616C6C6261636B5F666E2863616C6C4261636B52657475726E4F626A656374293B0D0A202020';
wwv_flow_api.g_varchar2_table(200) := '20202020202020202020202020202020207D0D0A20202020202020202020202020202020202020206572726F7243616C6C4261636B436F756E742B2B3B202020200D0A2020202020202020202020202020202020202020627265616B3B0D0A2020202020';
wwv_flow_api.g_varchar2_table(201) := '20202020202020202020207D0D0A20202020202020202020202020202020656C73652069662028646174612E737461747573203D3D202273756363657373222029202020207B0D0A2020202020202020202020202020202020202020696E736572746564';
wwv_flow_api.g_varchar2_table(202) := '526F77436F756E74203D20696E736572746564526F77436F756E74202B20646174612E696E736572746564526F77436F756E743B0D0A202020202020202020202020202020202020202069662028206368756E6B6564203C20746F74616C4368756E6B73';
wwv_flow_api.g_varchar2_table(203) := '2029207B0D0A2020202020202020202020202020202020202020202020207374617475732E7374617465203D20226368756E6B496E736572746564223B0D0A20202020202020202020202020202020202020202020207374617475732E7768657265203D';
wwv_flow_api.g_varchar2_table(204) := '2022696E73657274223B0D0A202020202020202020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E737461747573203D207374617475733B0D0A202020202020202020202020202020202020202020202063616C';
wwv_flow_api.g_varchar2_table(205) := '6C4261636B52657475726E4F626A6563742E746F74616C4368756E6B73203D20746F74616C4368756E6B733B0D0A202020202020202020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E6368756E6B6564203D20';
wwv_flow_api.g_varchar2_table(206) := '6368756E6B65643B0D0A202020202020202020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E7061727365526573756C7473203D20726573756C74733B0D0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(207) := '20206368756E6B5F696E7365727465645F63616C6C6261636B5F666E2863616C6C4261636B52657475726E4F626A656374293B202020200D0A202020202020202020202020202020202020207D0D0A202020202020202020202020202020202020200D0A';
wwv_flow_api.g_varchar2_table(208) := '202020202020202020202020202020202020202F2F72656D6F74652073747265616D20697320636F6D706C657465640D0A20202020202020202020202020202020202020696620282020747970656F6620706172736572203D3D3D20226F626A65637422';
wwv_flow_api.g_varchar2_table(209) := '20202626200D0A202020202020202020202020202020202020202020202020207061727365722E73747265616D65722E5F636F6D706C65746564202626200D0A2020202020202020202020202020202020202020202020202073747265616D203D3D2027';
wwv_flow_api.g_varchar2_table(210) := '59272026260D0A2020202020202020202020202020202020202020202020202066696C6554797065203D3D202272656D6F746522202029207B0D0A0D0A2020202020202020202020202020202020202020202020202020202072656D6F74655374726561';
wwv_flow_api.g_varchar2_table(211) := '6D506172736572436F6D706C657465642B2B3B0D0A202020202020202020202020202020202020202020202020207D0D0A202020202020202020202020202020202020202F2F6E6F206D6F72652070656E64696E6720616A61782063616C6C732C20616E';
wwv_flow_api.g_varchar2_table(212) := '6420616C6C2070617273696E67206F66206368756E6B7320646F6E650D0A202020202020202020202020202020202020202F2F63616C6C20636F6D706C6574652063616C6C6261636B200D0A202020202020202020202020202020202020206966202820';
wwv_flow_api.g_varchar2_table(213) := '6368756E6B6564203D3D20746F74616C4368756E6B73207C7C2072656D6F746553747265616D506172736572436F6D706C65746564203E20302029207B0D0A20202020202020202020202020202020202020202020200D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(214) := '2020202020202020202020616A6178456E64203D206E6F7728293B0D0A20202020202020202020202020202020202020202020207374617475732E7374617465203D2022636F6D706C657465223B0D0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(215) := '2020207374617475732E7768657265203D2022696E73657274223B0D0A202020202020202020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E737461747573203D207374617475733B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(216) := '202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E746F74616C4368756E6B73203D20746F74616C4368756E6B733B0D0A202020202020202020202020202020202020202020202063616C6C4261636B52657475726E';
wwv_flow_api.g_varchar2_table(217) := '4F626A6563742E6368756E6B6564203D206368756E6B65643B0D0A202020202020202020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E7061727365526573756C7473203D20726573756C74733B0D0A20202020';
wwv_flow_api.g_varchar2_table(218) := '20202020202020202020202020202020202020636F6D706C6574655F63616C6C6261636B5F666E2863616C6C4261636B52657475726E4F626A656374293B0D0A20202020202020202020202020202020202020202020200D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(219) := '20202020202020207D0D0A202020202020202020202020202020207D20656C7365207B0D0A20202020202020202020202020202020202020206572726F722E74797065203D2022696E73657274223B0D0A20202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(220) := '206572726F722E636F6465203D202773746174757352657475726E4661696C757265273B0D0A20202020202020202020202020202020202020206572726F722E6D657373616765203D2027496E73657274206661696C656420746F2072657475726E2073';
wwv_flow_api.g_varchar2_table(221) := '756363657373206F72206572726F72273B0D0A202020202020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E6572726F72203D20206572726F723B0D0A202020202020202020202020202020202020202063616C';
wwv_flow_api.g_varchar2_table(222) := '6C4261636B52657475726E4F626A6563742E7061727365526573756C7473203D20726573756C74733B0D0A20202020202020202020202020202020202020207374617475732E7374617465203D20226572726F72223B0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(223) := '20202020202020207374617475732E7768657265203D2022696E73657274223B0D0A202020202020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E737461747573203D207374617475733B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(224) := '2020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E746F74616C4368756E6B73203D20746F74616C4368756E6B733B0D0A202020202020202020202020202020202020202063616C6C4261636B52657475726E4F626A65';
wwv_flow_api.g_varchar2_table(225) := '63742E6368756E6B6564203D206368756E6B65643B0D0A202020202020202020202020202020202020202069662028206572726F7243616C6C4261636B436F756E74203D3D3D20302029207B0D0A20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(226) := '20206572726F725F63616C6C6261636B5F666E2863616C6C4261636B52657475726E4F626A656374293B0D0A20202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020206572726F7243616C6C4261636B';
wwv_flow_api.g_varchar2_table(227) := '436F756E742B2B3B202020200D0A2020202020202020202020202020202020202020627265616B3B0D0A0D0A202020202020202020202020202020207D0D0A0D0A20202020202020202020207D0D0A0D0A20202020202020207D63617463682865727229';
wwv_flow_api.g_varchar2_table(228) := '207B202F2F6F7264732072657475726E73206572726F72206C696B652073657276696365206E6F7420617661696C61626C652C2065786861757374696E672073657373696F6E732E2E0D0A20202020202020202020202069662028747970656F66207061';
wwv_flow_api.g_varchar2_table(229) := '72736572203D3D3D20226F626A6563742220262620747970656F66207061727365722E7061757365203D3D3D202266756E6374696F6E2229207B0D0A202020202020202020202020202020206C6574207061757365526573756C74203D20617761697420';
wwv_flow_api.g_varchar2_table(230) := '7061727365722E706175736528293B0D0A2020202020202020202020207D202020200D0A0D0A20202020202020202020202020202020696E736572744572726F72436F756E742B2B3B0D0A202020202020202020202020202020206572726F722E747970';
wwv_flow_api.g_varchar2_table(231) := '65203D2022696E73657274223B0D0A202020202020202020202020202020206572726F722E636F6465203D20226F726473206572726F72223B0D0A202020202020202020202020202020206572726F722E6D657373616765203D206572723B0D0A202020';
wwv_flow_api.g_varchar2_table(232) := '2020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E6572726F72203D20206572726F723B0D0A2020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E7061727365526573756C7473';
wwv_flow_api.g_varchar2_table(233) := '203D20726573756C74733B202020200D0A202020202020202020202020202020207374617475732E7374617465203D20226572726F72223B0D0A202020202020202020202020202020207374617475732E7768657265203D20226F726473207365727665';
wwv_flow_api.g_varchar2_table(234) := '72223B0D0A2020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E737461747573203D207374617475733B0D0A2020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E746F74';
wwv_flow_api.g_varchar2_table(235) := '616C4368756E6B73203D20746F74616C4368756E6B733B0D0A2020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E6368756E6B6564203D206368756E6B65643B0D0A202020202020202020202020202020206966';
wwv_flow_api.g_varchar2_table(236) := '2028206572726F7243616C6C4261636B436F756E74203D3D3D20302029207B0D0A20202020202020202020202020202020202020206572726F725F63616C6C6261636B5F666E2863616C6C4261636B52657475726E4F626A656374293B0D0A2020202020';
wwv_flow_api.g_varchar2_table(237) := '20202020202020202020207D202020200D0A202020202020202020202020202020206572726F7243616C6C4261636B436F756E742B2B3B0D0A202020202020202020202020202020202020200D0A20202020202020207D0D0A202020207D0D0A0D0A2020';
wwv_flow_api.g_varchar2_table(238) := '20200D0A202020202F2F63616C6C656420616674657220657665727920706170617061727365206368756E6B206973207061727365642C20656E717565756520616E6420696E736572742C207768656E2073747265616D3D5965730D0A20202020617379';
wwv_flow_api.g_varchar2_table(239) := '6E632066756E6374696F6E206368756E6B466E28726573756C74732C20706172736572290D0A202020207B0D0A20202020202020200D0A20202020202020206368756E6B65642B2B3B0D0A2020202020202020757365725061757365203D2066756E6374';
wwv_flow_api.g_varchar2_table(240) := '696F6E2829207B200D0A20202020202020202020202020202020202020206966202820217061757365644279557365722029207B0D0A2020202020202020202020202020202020202020202020207061727365722E726573756D6528293B0D0A20202020';
wwv_flow_api.g_varchar2_table(241) := '202020202020202020202020202020202020202073657454696D656F75742866756E6374696F6E28297B696E7365727428726573756C74732C706172736572293B7D2C313030293B0D0A20202020202020202020202020202020202020207D20656C7365';
wwv_flow_api.g_varchar2_table(242) := '207B0D0A20202020202020202020202020202020202020202020202073657454696D656F75742866756E6374696F6E28297B75736572506175736528293B7D2C2031303030293B0D0A20202020202020202020202020202020202020207D200D0A202020';
wwv_flow_api.g_varchar2_table(243) := '202020202020202020202020207D200D0A0D0A20202020202020200D0A202020202020202069662028726573756C7473290D0A20202020202020207B0D0A0D0A20202020202020202020202069662028726573756C74732E6572726F72732E6C656E6774';
wwv_flow_api.g_varchar2_table(244) := '68203E2030290D0A2020202020202020202020207B0D0A202020202020202020202020202020206966202820747970656F6620706172736572203D3D3D20226F626A6563742220262620747970656F66207061727365722E7061757365203D3D3D202266';
wwv_flow_api.g_varchar2_table(245) := '756E6374696F6E222029207B0D0A20202020202020202020202020202020202020206C6574207061757365526573756C74203D206177616974207061727365722E706175736528293B0D0A202020202020202020202020202020207D202020200D0A0D0A';
wwv_flow_api.g_varchar2_table(246) := '2020202020202020202020202020202070617273654572726F72436F756E74202B3D2020726573756C74732E6572726F72732E6C656E6774683B0D0A2020202020202020202020202020202066697273744572726F72203D2066697273744572726F7220';
wwv_flow_api.g_varchar2_table(247) := '7C7C20726573756C74732E6572726F72735B305D3B0D0A202020202020202020202020202020206572726F722E74797065203D20227061727365223B0D0A202020202020202020202020202020206572726F722E636F6465203D202270617273696E6745';
wwv_flow_api.g_varchar2_table(248) := '72726F72223B0D0A202020202020202020202020202020206572726F722E6D657373616765203D20224572726F72207768656E2070617273696E672066696C65223B0D0A2020202020202020202020202020202063616C6C4261636B52657475726E4F62';
wwv_flow_api.g_varchar2_table(249) := '6A6563742E7061727365526573756C7473203D20726573756C74733B0D0A2020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E6572726F72203D20206572726F723B0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(250) := '7374617475732E7374617465203D20226572726F72223B0D0A202020202020202020202020202020207374617475732E7768657265203D2022706172736553747265616D223B0D0A2020202020202020202020202020202063616C6C4261636B52657475';
wwv_flow_api.g_varchar2_table(251) := '726E4F626A6563742E737461747573203D207374617475733B0D0A2020202020202020202020202020202063616C6C4261636B52657475726E4F626A6563742E746F74616C4368756E6B73203D20746F74616C4368756E6B733B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(252) := '202020202020202063616C6C4261636B52657475726E4F626A6563742E6368756E6B6564203D206368756E6B65643B0D0A2020202020202020202020202020202069662028206572726F7243616C6C4261636B436F756E74203D3D3D20302029207B0D0A';
wwv_flow_api.g_varchar2_table(253) := '2020202020202020202020202020202020202020202020206572726F725F63616C6C6261636B5F666E2863616C6C4261636B52657475726E4F626A656374293B0D0A20202020202020202020202020202020202020207D200D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(254) := '2020202020206572726F7243616C6C4261636B436F756E742B2B3B2020200D0A2020202020202020202020207D20656C7365207B0D0A0D0A2020202020202020202020202020202069662028726573756C74732E646174612029207B0D0A202020202020';
wwv_flow_api.g_varchar2_table(255) := '202020202020202020202020202069662028206368756E6B6564203D3D3D203120262620736B697046697273744E526F7773203E20302029207B0D0A202020202020202020202020202020202020202020202020726573756C74732E64617461203D2072';
wwv_flow_api.g_varchar2_table(256) := '6573756C74732E646174612E73706C69636528736B697046697273744E526F7773293B0D0A20202020202020202020202020202020202020207D202020200D0A2020202020202020202020202020202020202020706172736564526F77436F756E74203D';
wwv_flow_api.g_varchar2_table(257) := '2020706172736564526F77436F756E74202B20726573756C74732E646174612E6C656E6774683B0D0A20202020202020202020202020202020202020206966202820712E6C656E6774682829203C20746872656164732029207B0D0A2020202020202020';
wwv_flow_api.g_varchar2_table(258) := '20202020202020202020202020202020712E656E717565756528726573756C74732E64617461293B0D0A20202020202020202020202020202020202020207D202020200D0A20202020202020202020202020202020202020206966202820712E6C656E67';
wwv_flow_api.g_varchar2_table(259) := '74682829203D3D2074687265616473207C7C20712E6C656E6774682829203E20746872656164732029207B0D0A20202020202020202020202020202020202020202020202069662028207061727365722029207B0D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(260) := '20202020202020202020202020206C6574207061757365526573756C74203D206177616974207061727365722E706175736528293B0D0A2020202020202020202020202020202020202020202020207D202020200D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(261) := '2020202020202020202020202020202020200D0A2020202020202020202020202020202020202020202020206966202820217061757365644279557365722029207B0D0A2020202020202020202020202020202020202020202020202020202073657454';
wwv_flow_api.g_varchar2_table(262) := '696D656F75742866756E6374696F6E2829207B696E7365727428726573756C74732C706172736572293B7D2C313030293B0D0A2020202020202020202020202020202020202020202020207D20656C7365207B0D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(263) := '202020202020202020202020206C6574207061757365526573756C74203D206177616974207061727365722E706175736528293B0D0A2020202020202020202020202020202020202020202020202020202073657454696D656F7574282066756E637469';
wwv_flow_api.g_varchar2_table(264) := '6F6E2829207B75736572506175736528293B7D2C2031303030293B20202020200D0A2020202020202020202020202020202020202020202020202020202020202020200D0A2020202020202020202020202020202020202020202020207D202020200D0A';
wwv_flow_api.g_varchar2_table(265) := '20202020202020202020202020202020202020207D20200D0A20202020202020202020202020202020202020202F2F6C617374206368756E6B730D0A20202020202020202020202020202020202020206966202820712E6C656E6774682829203E203020';
wwv_flow_api.g_varchar2_table(266) := '2626206368756E6B6564203D3D20746F74616C4368756E6B732029207B20200D0A20202020202020202020202020202020202020202020202073657454696D656F75742866756E6374696F6E2829207B696E7365727428726573756C7473293B7D2C3130';
wwv_flow_api.g_varchar2_table(267) := '30293B0D0A20202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020202F2F72656D6F74652073747265616D2070617273696E672066696E69736865642C206C617374206368756E6B0D0A202020202020';
wwv_flow_api.g_varchar2_table(268) := '2020202020202020202020202020696620282020747970656F6620706172736572203D3D3D20226F626A6563742220202626200D0A202020202020202020202020202020202020202020202020202020207061727365722E73747265616D65722E5F6669';
wwv_flow_api.g_varchar2_table(269) := '6E6973686564202626200D0A2020202020202020202020202020202020202020202020202020202073747265616D203D3D20275927202626200D0A2020202020202020202020202020202020202020202020202020202066696C6554797065203D3D2022';
wwv_flow_api.g_varchar2_table(270) := '72656D6F74652220202626200D0A20202020202020202020202020202020202020202020202020202020712E6C656E6774682829203E20302029207B0D0A2020202020202020202020202020202020202020202020202020202072656D6F746553747265';
wwv_flow_api.g_varchar2_table(271) := '616D506172736572436F6D706C657465642B2B20202020202020200D0A2020202020202020202020202020202020202020202020202020202073657454696D656F75742866756E6374696F6E2829207B696E7365727428726573756C7473293B7D2C3130';
wwv_flow_api.g_varchar2_table(272) := '30293B0D0A20202020202020202020202020202020202020207D0D0A2020202020202020202020202020202020202020202020200D0A202020202020202020202020202020207D202020200D0A2020202020202020202020207D20200D0A0D0A20200D0A';
wwv_flow_api.g_varchar2_table(273) := '0D0A20202020202020207D0D0A202020207D0D0A0D0A0D0A202020202F2F75706C6F61642069732063616C6C65642066726F6D20706C7567696E2C20636F6E6669672C207374617475732C2070617573652C20726573756D652063616E20626520757365';
wwv_flow_api.g_varchar2_table(274) := '6420616E79776865726520696E20706167650D0A2020202072657475726E207B0D0A20202020202020202275706C6F616422203A2066756E6374696F6E20286461436F6E746578742C20636F6E6669672C20696E6974466E29207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(275) := '20202020202020202020202020202020207375626D6974286461436F6E746578742C20636F6E6669672C20696E6974466E293B0D0A20202020202020202020202020202020202020207D2C0D0A202020202020202022636F6E66696722203A2066756E63';
wwv_flow_api.g_varchar2_table(276) := '74696F6E286F7074696F6E7329207B0D0A2020202020202020202020202020202020202020202020206275696C64436F6E666967286F7074696F6E73293B0D0A20202020202020202020202020202020202020207D2C0D0A202020202020202022737461';
wwv_flow_api.g_varchar2_table(277) := '74757322203A2066756E6374696F6E2829207B0D0A20202020202020202020202020202020202020202020202072657475726E2063616C6C4261636B52657475726E4F626A6563743B0D0A20202020202020202020202020202020202020207D2C0D0A20';
wwv_flow_api.g_varchar2_table(278) := '2020202020202022706175736522203A2066756E6374696F6E2829207B0D0A2020202020202020202020202020202020202020706175736564427955736572203D20747275653B0D0A2020202020202020202020200D0A20202020202020207D2C0D0A20';
wwv_flow_api.g_varchar2_table(279) := '2020202020202022726573756D6522203A2066756E6374696F6E2829207B0D0A2020202020202020202020202020202020202020706175736564427955736572203D2066616C73653B0D0A20202020202020207D0D0A202020207D202020200D0A0D0A0D';
wwv_flow_api.g_varchar2_table(280) := '0A0D0A7D0D0A0D0A2928617065782E6A5175657279293B0D0A0D0A';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>111
,p_default_id_offset=>77418401682728923
,p_default_owner=>'MISO'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(108870546315722052)
,p_plugin_id=>wwv_flow_api.id(107940437892544298)
,p_file_name=>'js/csv2table.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>111
,p_default_id_offset=>77418401682728923
,p_default_owner=>'MISO'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A20406C6963656E73650A506170612050617273650A76352E302E320A68747470733A2F2F6769746875622E636F6D2F6D686F6C742F5061706150617273650A4C6963656E73653A204D49540A2A2F0A0A2866756E6374696F6E28726F6F742C206661';
wwv_flow_api.g_varchar2_table(2) := '63746F7279290A7B0A092F2A20676C6F62616C7320646566696E65202A2F0A0969662028747970656F6620646566696E65203D3D3D202766756E6374696F6E2720262620646566696E652E616D64290A097B0A09092F2F20414D442E2052656769737465';
wwv_flow_api.g_varchar2_table(3) := '7220617320616E20616E6F6E796D6F7573206D6F64756C652E0A0909646566696E65285B5D2C20666163746F7279293B0A097D0A09656C73652069662028747970656F66206D6F64756C65203D3D3D20276F626A6563742720262620747970656F662065';
wwv_flow_api.g_varchar2_table(4) := '78706F72747320213D3D2027756E646566696E656427290A097B0A09092F2F204E6F64652E20446F6573206E6F7420776F726B20776974682073747269637420436F6D6D6F6E4A532C206275740A09092F2F206F6E6C7920436F6D6D6F6E4A532D6C696B';
wwv_flow_api.g_varchar2_table(5) := '6520656E7669726F6E6D656E7473207468617420737570706F7274206D6F64756C652E6578706F7274732C0A09092F2F206C696B65204E6F64652E0A09096D6F64756C652E6578706F727473203D20666163746F727928293B0A097D0A09656C73650A09';
wwv_flow_api.g_varchar2_table(6) := '7B0A09092F2F2042726F7773657220676C6F62616C732028726F6F742069732077696E646F77290A0909726F6F742E50617061203D20666163746F727928293B0A097D0A092F2F20696E20737472696374206D6F64652077652063616E6E6F7420616363';
wwv_flow_api.g_varchar2_table(7) := '65737320617267756D656E74732E63616C6C65652C20736F207765206E6565642061206E616D6564207265666572656E636520746F0A092F2F20737472696E676966792074686520666163746F7279206D6574686F6420666F722074686520626C6F6220';
wwv_flow_api.g_varchar2_table(8) := '776F726B65720A092F2F2065736C696E742D64697361626C652D6E6578742D6C696E652066756E632D6E616D650A7D28746869732C2066756E6374696F6E206D6F64756C65466163746F727928290A7B0A092775736520737472696374273B0A0A097661';
wwv_flow_api.g_varchar2_table(9) := '7220676C6F62616C203D202866756E6374696F6E2829207B0A09092F2F20616C7465726E6174697665206D6574686F642C2073696D696C617220746F206046756E6374696F6E282772657475726E207468697327292829600A09092F2F20627574207769';
wwv_flow_api.g_varchar2_table(10) := '74686F7574207573696E6720606576616C60202877686963682069732064697361626C6564207768656E0A09092F2F207573696E6720436F6E74656E7420536563757269747920506F6C696379292E0A0A090969662028747970656F662073656C662021';
wwv_flow_api.g_varchar2_table(11) := '3D3D2027756E646566696E65642729207B2072657475726E2073656C663B207D0A090969662028747970656F662077696E646F7720213D3D2027756E646566696E65642729207B2072657475726E2077696E646F773B207D0A090969662028747970656F';
wwv_flow_api.g_varchar2_table(12) := '6620676C6F62616C20213D3D2027756E646566696E65642729207B2072657475726E20676C6F62616C3B207D0A0A09092F2F205768656E2072756E6E696E67207465737473206E6F6E65206F66207468652061626F76652068617665206265656E206465';
wwv_flow_api.g_varchar2_table(13) := '66696E65640A090972657475726E207B7D3B0A097D2928293B0A0A0A0966756E6374696F6E20676574576F726B6572426C6F622829207B0A09097661722055524C203D20676C6F62616C2E55524C207C7C20676C6F62616C2E7765626B697455524C207C';
wwv_flow_api.g_varchar2_table(14) := '7C206E756C6C3B0A090976617220636F6465203D206D6F64756C65466163746F72792E746F537472696E6728293B0A090972657475726E20506170612E424C4F425F55524C207C7C2028506170612E424C4F425F55524C203D2055524C2E637265617465';
wwv_flow_api.g_varchar2_table(15) := '4F626A65637455524C286E657720426C6F62285B2728272C20636F64652C20272928293B275D2C207B747970653A2027746578742F6A617661736372697074277D2929293B0A097D0A0A097661722049535F574F524B4552203D2021676C6F62616C2E64';
wwv_flow_api.g_varchar2_table(16) := '6F63756D656E74202626202121676C6F62616C2E706F73744D6573736167652C0A090949535F504150415F574F524B4552203D2049535F574F524B4552202626202F626C6F623A2F692E746573742828676C6F62616C2E6C6F636174696F6E207C7C207B';
wwv_flow_api.g_varchar2_table(17) := '7D292E70726F746F636F6C293B0A0976617220776F726B657273203D207B7D2C20776F726B65724964436F756E746572203D20303B0A0A097661722050617061203D207B7D3B0A0A09506170612E7061727365203D20437376546F4A736F6E3B0A095061';
wwv_flow_api.g_varchar2_table(18) := '70612E756E7061727365203D204A736F6E546F4373763B0A0A09506170612E5245434F52445F534550203D20537472696E672E66726F6D43686172436F6465283330293B0A09506170612E554E49545F534550203D20537472696E672E66726F6D436861';
wwv_flow_api.g_varchar2_table(19) := '72436F6465283331293B0A09506170612E425954455F4F524445525F4D41524B203D20275C7566656666273B0A09506170612E4241445F44454C494D4954455253203D205B275C72272C20275C6E272C202722272C20506170612E425954455F4F524445';
wwv_flow_api.g_varchar2_table(20) := '525F4D41524B5D3B0A09506170612E574F524B4552535F535550504F52544544203D202149535F574F524B4552202626202121676C6F62616C2E576F726B65723B0A09506170612E4E4F44455F53545245414D5F494E505554203D20313B0A0A092F2F20';
wwv_flow_api.g_varchar2_table(21) := '436F6E666967757261626C65206368756E6B2073697A657320666F72206C6F63616C20616E642072656D6F74652066696C65732C20726573706563746976656C790A09506170612E4C6F63616C4368756E6B53697A65203D2031303234202A2031303234';
wwv_flow_api.g_varchar2_table(22) := '202A2031303B092F2F203130204D420A09506170612E52656D6F74654368756E6B53697A65203D2031303234202A2031303234202A20353B092F2F2035204D420A09506170612E44656661756C7444656C696D69746572203D20272C273B0909092F2F20';
wwv_flow_api.g_varchar2_table(23) := '55736564206966206E6F742073706563696669656420616E6420646574656374696F6E206661696C730A0A092F2F204578706F73656420666F722074657374696E6720616E6420646576656C6F706D656E74206F6E6C790A09506170612E506172736572';
wwv_flow_api.g_varchar2_table(24) := '203D205061727365723B0A09506170612E50617273657248616E646C65203D2050617273657248616E646C653B0A09506170612E4E6574776F726B53747265616D6572203D204E6574776F726B53747265616D65723B0A09506170612E46696C65537472';
wwv_flow_api.g_varchar2_table(25) := '65616D6572203D2046696C6553747265616D65723B0A09506170612E537472696E6753747265616D6572203D20537472696E6753747265616D65723B0A09506170612E5265616461626C6553747265616D53747265616D6572203D205265616461626C65';
wwv_flow_api.g_varchar2_table(26) := '53747265616D53747265616D65723B0A0969662028747970656F6620504150415F42524F575345525F434F4E54455854203D3D3D2027756E646566696E65642729207B0A0909506170612E4475706C657853747265616D53747265616D6572203D204475';
wwv_flow_api.g_varchar2_table(27) := '706C657853747265616D53747265616D65723B0A097D0A0A0969662028676C6F62616C2E6A5175657279290A097B0A09097661722024203D20676C6F62616C2E6A51756572793B0A0909242E666E2E7061727365203D2066756E6374696F6E286F707469';
wwv_flow_api.g_varchar2_table(28) := '6F6E73290A09097B0A09090976617220636F6E666967203D206F7074696F6E732E636F6E666967207C7C207B7D3B0A090909766172207175657565203D205B5D3B0A0A090909746869732E656163682866756E6374696F6E28696478290A0909097B0A09';
wwv_flow_api.g_varchar2_table(29) := '09090976617220737570706F72746564203D20242874686973292E70726F7028277461674E616D6527292E746F5570706572436173652829203D3D3D2027494E505554270A0909090909090909262620242874686973292E617474722827747970652729';
wwv_flow_api.g_varchar2_table(30) := '2E746F4C6F776572436173652829203D3D3D202766696C65270A0909090909090909262620676C6F62616C2E46696C655265616465723B0A0A090909096966202821737570706F72746564207C7C2021746869732E66696C6573207C7C20746869732E66';
wwv_flow_api.g_varchar2_table(31) := '696C65732E6C656E677468203D3D3D2030290A090909090972657475726E20747275653B092F2F20636F6E74696E756520746F206E65787420696E70757420656C656D656E740A0A09090909666F7220287661722069203D20303B2069203C2074686973';
wwv_flow_api.g_varchar2_table(32) := '2E66696C65732E6C656E6774683B20692B2B290A090909097B0A090909090971756575652E70757368287B0A09090909090966696C653A20746869732E66696C65735B695D2C0A090909090909696E707574456C656D3A20746869732C0A090909090909';
wwv_flow_api.g_varchar2_table(33) := '696E7374616E6365436F6E6669673A20242E657874656E64287B7D2C20636F6E666967290A09090909097D293B0A090909097D0A0909097D293B0A0A09090970617273654E65787446696C6528293B092F2F20626567696E2070617273696E670A090909';
wwv_flow_api.g_varchar2_table(34) := '72657475726E20746869733B09092F2F206D61696E7461696E7320636861696E6162696C6974790A0A0A09090966756E6374696F6E2070617273654E65787446696C6528290A0909097B0A090909096966202871756575652E6C656E677468203D3D3D20';
wwv_flow_api.g_varchar2_table(35) := '30290A090909097B0A090909090969662028697346756E6374696F6E286F7074696F6E732E636F6D706C65746529290A0909090909096F7074696F6E732E636F6D706C65746528293B0A090909090972657475726E3B0A090909097D0A0A090909097661';
wwv_flow_api.g_varchar2_table(36) := '722066203D2071756575655B305D3B0A0A0909090969662028697346756E6374696F6E286F7074696F6E732E6265666F726529290A090909097B0A09090909097661722072657475726E6564203D206F7074696F6E732E6265666F726528662E66696C65';
wwv_flow_api.g_varchar2_table(37) := '2C20662E696E707574456C656D293B0A0A090909090969662028747970656F662072657475726E6564203D3D3D20276F626A65637427290A09090909097B0A0909090909096966202872657475726E65642E616374696F6E203D3D3D202761626F727427';
wwv_flow_api.g_varchar2_table(38) := '290A0909090909097B0A090909090909096572726F72282741626F72744572726F72272C20662E66696C652C20662E696E707574456C656D2C2072657475726E65642E726561736F6E293B0A0909090909090972657475726E3B092F2F2041626F727473';
wwv_flow_api.g_varchar2_table(39) := '20616C6C207175657565642066696C657320696D6D6564696174656C790A0909090909097D0A090909090909656C7365206966202872657475726E65642E616374696F6E203D3D3D2027736B697027290A0909090909097B0A0909090909090966696C65';
wwv_flow_api.g_varchar2_table(40) := '436F6D706C65746528293B092F2F20706172736520746865206E6578742066696C6520696E207468652071756575652C20696620616E790A0909090909090972657475726E3B0A0909090909097D0A090909090909656C73652069662028747970656F66';
wwv_flow_api.g_varchar2_table(41) := '2072657475726E65642E636F6E666967203D3D3D20276F626A65637427290A09090909090909662E696E7374616E6365436F6E666967203D20242E657874656E6428662E696E7374616E6365436F6E6669672C2072657475726E65642E636F6E66696729';
wwv_flow_api.g_varchar2_table(42) := '3B0A09090909097D0A0909090909656C7365206966202872657475726E6564203D3D3D2027736B697027290A09090909097B0A09090909090966696C65436F6D706C65746528293B092F2F20706172736520746865206E6578742066696C6520696E2074';
wwv_flow_api.g_varchar2_table(43) := '68652071756575652C20696620616E790A09090909090972657475726E3B0A09090909097D0A090909097D0A0A090909092F2F2057726170207570207468652075736572277320636F6D706C6574652063616C6C6261636B2C20696620616E792C20736F';
wwv_flow_api.g_varchar2_table(44) := '2074686174206F75727320616C736F20676574732065786563757465640A090909097661722075736572436F6D706C65746546756E63203D20662E696E7374616E6365436F6E6669672E636F6D706C6574653B0A09090909662E696E7374616E6365436F';
wwv_flow_api.g_varchar2_table(45) := '6E6669672E636F6D706C657465203D2066756E6374696F6E28726573756C7473290A090909097B0A090909090969662028697346756E6374696F6E2875736572436F6D706C65746546756E6329290A09090909090975736572436F6D706C65746546756E';
wwv_flow_api.g_varchar2_table(46) := '6328726573756C74732C20662E66696C652C20662E696E707574456C656D293B0A090909090966696C65436F6D706C65746528293B0A090909097D3B0A0A09090909506170612E706172736528662E66696C652C20662E696E7374616E6365436F6E6669';
wwv_flow_api.g_varchar2_table(47) := '67293B0A0909097D0A0A09090966756E6374696F6E206572726F72286E616D652C2066696C652C20656C656D2C20726561736F6E290A0909097B0A0909090969662028697346756E6374696F6E286F7074696F6E732E6572726F7229290A09090909096F';
wwv_flow_api.g_varchar2_table(48) := '7074696F6E732E6572726F72287B6E616D653A206E616D657D2C2066696C652C20656C656D2C20726561736F6E293B0A0909097D0A0A09090966756E6374696F6E2066696C65436F6D706C65746528290A0909097B0A0909090971756575652E73706C69';
wwv_flow_api.g_varchar2_table(49) := '636528302C2031293B0A0909090970617273654E65787446696C6528293B0A0909097D0A09097D3B0A097D0A0A0A096966202849535F504150415F574F524B4552290A097B0A0909676C6F62616C2E6F6E6D657373616765203D20776F726B6572546872';
wwv_flow_api.g_varchar2_table(50) := '65616452656365697665644D6573736167653B0A097D0A0A0A0A0A0966756E6374696F6E20437376546F4A736F6E285F696E7075742C205F636F6E666967290A097B0A09095F636F6E666967203D205F636F6E666967207C7C207B7D3B0A090976617220';
wwv_flow_api.g_varchar2_table(51) := '64796E616D6963547970696E67203D205F636F6E6669672E64796E616D6963547970696E67207C7C2066616C73653B0A090969662028697346756E6374696F6E2864796E616D6963547970696E672929207B0A0909095F636F6E6669672E64796E616D69';
wwv_flow_api.g_varchar2_table(52) := '63547970696E6746756E6374696F6E203D2064796E616D6963547970696E673B0A0909092F2F2057696C6C2062652066696C6C6564206F6E20666972737420726F772063616C6C0A09090964796E616D6963547970696E67203D207B7D3B0A09097D0A09';
wwv_flow_api.g_varchar2_table(53) := '095F636F6E6669672E64796E616D6963547970696E67203D2064796E616D6963547970696E673B0A0A09095F636F6E6669672E7472616E73666F726D203D20697346756E6374696F6E285F636F6E6669672E7472616E73666F726D29203F205F636F6E66';
wwv_flow_api.g_varchar2_table(54) := '69672E7472616E73666F726D203A2066616C73653B0A0A0909696620285F636F6E6669672E776F726B657220262620506170612E574F524B4552535F535550504F52544544290A09097B0A0909097661722077203D206E6577576F726B657228293B0A0A';
wwv_flow_api.g_varchar2_table(55) := '090909772E7573657253746570203D205F636F6E6669672E737465703B0A090909772E757365724368756E6B203D205F636F6E6669672E6368756E6B3B0A090909772E75736572436F6D706C657465203D205F636F6E6669672E636F6D706C6574653B0A';
wwv_flow_api.g_varchar2_table(56) := '090909772E757365724572726F72203D205F636F6E6669672E6572726F723B0A0A0909095F636F6E6669672E73746570203D20697346756E6374696F6E285F636F6E6669672E73746570293B0A0909095F636F6E6669672E6368756E6B203D2069734675';
wwv_flow_api.g_varchar2_table(57) := '6E6374696F6E285F636F6E6669672E6368756E6B293B0A0909095F636F6E6669672E636F6D706C657465203D20697346756E6374696F6E285F636F6E6669672E636F6D706C657465293B0A0909095F636F6E6669672E6572726F72203D20697346756E63';
wwv_flow_api.g_varchar2_table(58) := '74696F6E285F636F6E6669672E6572726F72293B0A09090964656C657465205F636F6E6669672E776F726B65723B092F2F2070726576656E7420696E66696E697465206C6F6F700A0A090909772E706F73744D657373616765287B0A09090909696E7075';
wwv_flow_api.g_varchar2_table(59) := '743A205F696E7075742C0A09090909636F6E6669673A205F636F6E6669672C0A09090909776F726B657249643A20772E69640A0909097D293B0A0A09090972657475726E3B0A09097D0A0A09097661722073747265616D6572203D206E756C6C3B0A0909';
wwv_flow_api.g_varchar2_table(60) := '696620285F696E707574203D3D3D20506170612E4E4F44455F53545245414D5F494E50555420262620747970656F6620504150415F42524F575345525F434F4E54455854203D3D3D2027756E646566696E656427290A09097B0A0909092F2F2063726561';
wwv_flow_api.g_varchar2_table(61) := '74652061206E6F6465204475706C65782073747265616D20666F72207573650A0909092F2F2077697468202E706970650A09090973747265616D6572203D206E6577204475706C657853747265616D53747265616D6572285F636F6E666967293B0A0909';
wwv_flow_api.g_varchar2_table(62) := '0972657475726E2073747265616D65722E67657453747265616D28293B0A09097D0A0909656C73652069662028747970656F66205F696E707574203D3D3D2027737472696E6727290A09097B0A090909696620285F636F6E6669672E646F776E6C6F6164';
wwv_flow_api.g_varchar2_table(63) := '290A0909090973747265616D6572203D206E6577204E6574776F726B53747265616D6572285F636F6E666967293B0A090909656C73650A0909090973747265616D6572203D206E657720537472696E6753747265616D6572285F636F6E666967293B0A09';
wwv_flow_api.g_varchar2_table(64) := '097D0A0909656C736520696620285F696E7075742E7265616461626C65203D3D3D207472756520262620697346756E6374696F6E285F696E7075742E726561642920262620697346756E6374696F6E285F696E7075742E6F6E29290A09097B0A09090973';
wwv_flow_api.g_varchar2_table(65) := '747265616D6572203D206E6577205265616461626C6553747265616D53747265616D6572285F636F6E666967293B0A09097D0A0909656C7365206966202828676C6F62616C2E46696C65202626205F696E70757420696E7374616E63656F662046696C65';
wwv_flow_api.g_varchar2_table(66) := '29207C7C205F696E70757420696E7374616E63656F66204F626A65637429092F2F202E2E2E5361666172692E20287365652069737375652023313036290A09090973747265616D6572203D206E65772046696C6553747265616D6572285F636F6E666967';
wwv_flow_api.g_varchar2_table(67) := '293B0A0A090972657475726E2073747265616D65722E73747265616D285F696E707574293B0A097D0A0A0A0A0A0A0A0966756E6374696F6E204A736F6E546F437376285F696E7075742C205F636F6E666967290A097B0A09092F2F2044656661756C7420';
wwv_flow_api.g_varchar2_table(68) := '636F6E66696775726174696F6E0A0A09092F2A2A207768657468657220746F20737572726F756E6420657665727920646174756D20776974682071756F746573202A2F0A0909766172205F71756F746573203D2066616C73653B0A0A09092F2A2A207768';
wwv_flow_api.g_varchar2_table(69) := '657468657220746F2077726974652068656164657273202A2F0A0909766172205F7772697465486561646572203D20747275653B0A0A09092F2A2A2064656C696D6974696E6720636861726163746572287329202A2F0A0909766172205F64656C696D69';
wwv_flow_api.g_varchar2_table(70) := '746572203D20272C273B0A0A09092F2A2A206E65776C696E6520636861726163746572287329202A2F0A0909766172205F6E65776C696E65203D20275C725C6E273B0A0A09092F2A2A2071756F746520636861726163746572202A2F0A0909766172205F';
wwv_flow_api.g_varchar2_table(71) := '71756F746543686172203D202722273B0A0A09092F2A2A20657363617065642071756F7465206368617261637465722C20656974686572202222206F72203C636F6E6669672E657363617065436861723E22202A2F0A0909766172205F65736361706564';
wwv_flow_api.g_varchar2_table(72) := '51756F7465203D205F71756F746543686172202B205F71756F7465436861723B0A0A09092F2A2A207768657468657220746F20736B697020656D707479206C696E6573202A2F0A0909766172205F736B6970456D7074794C696E6573203D2066616C7365';
wwv_flow_api.g_varchar2_table(73) := '3B0A0A09092F2A2A2074686520636F6C756D6E7320286B6579732920776520657870656374207768656E20776520756E7061727365206F626A65637473202A2F0A0909766172205F636F6C756D6E73203D206E756C6C3B0A0A0909756E7061636B436F6E';
wwv_flow_api.g_varchar2_table(74) := '66696728293B0A0A09097661722071756F7465436861725265676578203D206E65772052656745787028657363617065526567457870285F71756F746543686172292C20276727293B0A0A090969662028747970656F66205F696E707574203D3D3D2027';
wwv_flow_api.g_varchar2_table(75) := '737472696E6727290A0909095F696E707574203D204A534F4E2E7061727365285F696E707574293B0A0A09096966202841727261792E69734172726179285F696E70757429290A09097B0A09090969662028215F696E7075742E6C656E677468207C7C20';
wwv_flow_api.g_varchar2_table(76) := '41727261792E69734172726179285F696E7075745B305D29290A0909090972657475726E2073657269616C697A65286E756C6C2C205F696E7075742C205F736B6970456D7074794C696E6573293B0A090909656C73652069662028747970656F66205F69';
wwv_flow_api.g_varchar2_table(77) := '6E7075745B305D203D3D3D20276F626A65637427290A0909090972657475726E2073657269616C697A65285F636F6C756D6E73207C7C206F626A6563744B657973285F696E7075745B305D292C205F696E7075742C205F736B6970456D7074794C696E65';
wwv_flow_api.g_varchar2_table(78) := '73293B0A09097D0A0909656C73652069662028747970656F66205F696E707574203D3D3D20276F626A65637427290A09097B0A09090969662028747970656F66205F696E7075742E64617461203D3D3D2027737472696E6727290A090909095F696E7075';
wwv_flow_api.g_varchar2_table(79) := '742E64617461203D204A534F4E2E7061727365285F696E7075742E64617461293B0A0A0909096966202841727261792E69734172726179285F696E7075742E6461746129290A0909097B0A0909090969662028215F696E7075742E6669656C6473290A09';
wwv_flow_api.g_varchar2_table(80) := '090909095F696E7075742E6669656C6473203D20205F696E7075742E6D657461202626205F696E7075742E6D6574612E6669656C64733B0A0A0909090969662028215F696E7075742E6669656C6473290A09090909095F696E7075742E6669656C647320';
wwv_flow_api.g_varchar2_table(81) := '3D202041727261792E69734172726179285F696E7075742E646174615B305D290A0909090909093F205F696E7075742E6669656C64730A0909090909093A206F626A6563744B657973285F696E7075742E646174615B305D293B0A0A0909090969662028';
wwv_flow_api.g_varchar2_table(82) := '212841727261792E69734172726179285F696E7075742E646174615B305D292920262620747970656F66205F696E7075742E646174615B305D20213D3D20276F626A65637427290A09090909095F696E7075742E64617461203D205B5F696E7075742E64';
wwv_flow_api.g_varchar2_table(83) := '6174615D3B092F2F2068616E646C657320696E707574206C696B65205B312C322C335D206F72205B2761736466275D0A0909097D0A0A09090972657475726E2073657269616C697A65285F696E7075742E6669656C6473207C7C205B5D2C205F696E7075';
wwv_flow_api.g_varchar2_table(84) := '742E64617461207C7C205B5D2C205F736B6970456D7074794C696E6573293B0A09097D0A0A09092F2F2044656661756C742028616E792076616C69642070617468732073686F756C642072657475726E206265666F72652074686973290A09097468726F';
wwv_flow_api.g_varchar2_table(85) := '77206E6577204572726F722827556E61626C6520746F2073657269616C697A6520756E7265636F676E697A656420696E70757427293B0A0A0A090966756E6374696F6E20756E7061636B436F6E66696728290A09097B0A09090969662028747970656F66';
wwv_flow_api.g_varchar2_table(86) := '205F636F6E66696720213D3D20276F626A65637427290A0909090972657475726E3B0A0A09090969662028747970656F66205F636F6E6669672E64656C696D69746572203D3D3D2027737472696E67270A20202020202020202020202020202020262620';
wwv_flow_api.g_varchar2_table(87) := '21506170612E4241445F44454C494D49544552532E66696C7465722866756E6374696F6E2876616C756529207B2072657475726E205F636F6E6669672E64656C696D697465722E696E6465784F662876616C75652920213D3D202D313B207D292E6C656E';
wwv_flow_api.g_varchar2_table(88) := '677468290A0909097B0A090909095F64656C696D69746572203D205F636F6E6669672E64656C696D697465723B0A0909097D0A0A09090969662028747970656F66205F636F6E6669672E71756F746573203D3D3D2027626F6F6C65616E270A090909097C';
wwv_flow_api.g_varchar2_table(89) := '7C2041727261792E69734172726179285F636F6E6669672E71756F74657329290A090909095F71756F746573203D205F636F6E6669672E71756F7465733B0A0A09090969662028747970656F66205F636F6E6669672E736B6970456D7074794C696E6573';
wwv_flow_api.g_varchar2_table(90) := '203D3D3D2027626F6F6C65616E270A090909097C7C20747970656F66205F636F6E6669672E736B6970456D7074794C696E6573203D3D3D2027737472696E6727290A090909095F736B6970456D7074794C696E6573203D205F636F6E6669672E736B6970';
wwv_flow_api.g_varchar2_table(91) := '456D7074794C696E65733B0A0A09090969662028747970656F66205F636F6E6669672E6E65776C696E65203D3D3D2027737472696E6727290A090909095F6E65776C696E65203D205F636F6E6669672E6E65776C696E653B0A0A09090969662028747970';
wwv_flow_api.g_varchar2_table(92) := '656F66205F636F6E6669672E71756F746543686172203D3D3D2027737472696E6727290A090909095F71756F746543686172203D205F636F6E6669672E71756F7465436861723B0A0A09090969662028747970656F66205F636F6E6669672E6865616465';
wwv_flow_api.g_varchar2_table(93) := '72203D3D3D2027626F6F6C65616E27290A090909095F7772697465486561646572203D205F636F6E6669672E6865616465723B0A0A0909096966202841727261792E69734172726179285F636F6E6669672E636F6C756D6E732929207B0A0A0909090969';
wwv_flow_api.g_varchar2_table(94) := '6620285F636F6E6669672E636F6C756D6E732E6C656E677468203D3D3D203029207468726F77206E6577204572726F7228274F7074696F6E20636F6C756D6E7320697320656D70747927293B0A0A090909095F636F6C756D6E73203D205F636F6E666967';
wwv_flow_api.g_varchar2_table(95) := '2E636F6C756D6E733B0A0909097D0A0A090909696620285F636F6E6669672E6573636170654368617220213D3D20756E646566696E656429207B0A090909095F6573636170656451756F7465203D205F636F6E6669672E65736361706543686172202B20';
wwv_flow_api.g_varchar2_table(96) := '5F71756F7465436861723B0A0909097D0A09097D0A0A0A09092F2A2A205475726E7320616E206F626A6563742773206B65797320696E746F20616E206172726179202A2F0A090966756E6374696F6E206F626A6563744B657973286F626A290A09097B0A';
wwv_flow_api.g_varchar2_table(97) := '09090969662028747970656F66206F626A20213D3D20276F626A65637427290A0909090972657475726E205B5D3B0A090909766172206B657973203D205B5D3B0A090909666F722028766172206B657920696E206F626A290A090909096B6579732E7075';
wwv_flow_api.g_varchar2_table(98) := '7368286B6579293B0A09090972657475726E206B6579733B0A09097D0A0A09092F2A2A2054686520646F75626C6520666F72206C6F6F70207468617420697465726174657320746865206461746120616E6420777269746573206F757420612043535620';
wwv_flow_api.g_varchar2_table(99) := '737472696E6720696E636C7564696E672068656164657220726F77202A2F0A090966756E6374696F6E2073657269616C697A65286669656C64732C20646174612C20736B6970456D7074794C696E6573290A09097B0A09090976617220637376203D2027';
wwv_flow_api.g_varchar2_table(100) := '273B0A0A09090969662028747970656F66206669656C6473203D3D3D2027737472696E6727290A090909096669656C6473203D204A534F4E2E7061727365286669656C6473293B0A09090969662028747970656F662064617461203D3D3D202773747269';
wwv_flow_api.g_varchar2_table(101) := '6E6727290A0909090964617461203D204A534F4E2E70617273652864617461293B0A0A09090976617220686173486561646572203D2041727261792E69734172726179286669656C647329202626206669656C64732E6C656E677468203E20303B0A0909';
wwv_flow_api.g_varchar2_table(102) := '0976617220646174614B6579656442794669656C64203D20212841727261792E6973417272617928646174615B305D29293B0A0A0909092F2F20496620746865726520612068656164657220726F772C2077726974652069742066697273740A09090969';
wwv_flow_api.g_varchar2_table(103) := '662028686173486561646572202626205F7772697465486561646572290A0909097B0A09090909666F7220287661722069203D20303B2069203C206669656C64732E6C656E6774683B20692B2B290A090909097B0A09090909096966202869203E203029';
wwv_flow_api.g_varchar2_table(104) := '0A090909090909637376202B3D205F64656C696D697465723B0A0909090909637376202B3D2073616665286669656C64735B695D2C2069293B0A090909097D0A0909090969662028646174612E6C656E677468203E2030290A0909090909637376202B3D';
wwv_flow_api.g_varchar2_table(105) := '205F6E65776C696E653B0A0909097D0A0A0909092F2F205468656E207772697465206F75742074686520646174610A090909666F72202876617220726F77203D20303B20726F77203C20646174612E6C656E6774683B20726F772B2B290A0909097B0A09';
wwv_flow_api.g_varchar2_table(106) := '090909766172206D6178436F6C203D20686173486561646572203F206669656C64732E6C656E677468203A20646174615B726F775D2E6C656E6774683B0A0A0909090976617220656D7074794C696E65203D2066616C73653B0A09090909766172206E75';
wwv_flow_api.g_varchar2_table(107) := '6C6C4C696E65203D20686173486561646572203F204F626A6563742E6B65797328646174615B726F775D292E6C656E677468203D3D3D2030203A20646174615B726F775D2E6C656E677468203D3D3D20303B0A0909090969662028736B6970456D707479';
wwv_flow_api.g_varchar2_table(108) := '4C696E65732026262021686173486561646572290A090909097B0A0909090909656D7074794C696E65203D20736B6970456D7074794C696E6573203D3D3D202767726565647927203F20646174615B726F775D2E6A6F696E282727292E7472696D282920';
wwv_flow_api.g_varchar2_table(109) := '3D3D3D202727203A20646174615B726F775D2E6C656E677468203D3D3D203120262620646174615B726F775D5B305D2E6C656E677468203D3D3D20303B0A090909097D0A0909090969662028736B6970456D7074794C696E6573203D3D3D202767726565';
wwv_flow_api.g_varchar2_table(110) := '6479272026262068617348656164657229207B0A0909090909766172206C696E65203D205B5D3B0A0909090909666F7220287661722063203D20303B2063203C206D6178436F6C3B20632B2B29207B0A090909090909766172206378203D20646174614B';
wwv_flow_api.g_varchar2_table(111) := '6579656442794669656C64203F206669656C64735B635D203A20633B0A0909090909096C696E652E7075736828646174615B726F775D5B63785D293B0A09090909097D0A0909090909656D7074794C696E65203D206C696E652E6A6F696E282727292E74';
wwv_flow_api.g_varchar2_table(112) := '72696D2829203D3D3D2027273B0A090909097D0A090909096966202821656D7074794C696E65290A090909097B0A0909090909666F72202876617220636F6C203D20303B20636F6C203C206D6178436F6C3B20636F6C2B2B290A09090909097B0A090909';
wwv_flow_api.g_varchar2_table(113) := '09090969662028636F6C203E203020262620216E756C6C4C696E65290A09090909090909637376202B3D205F64656C696D697465723B0A09090909090976617220636F6C496478203D2068617348656164657220262620646174614B6579656442794669';
wwv_flow_api.g_varchar2_table(114) := '656C64203F206669656C64735B636F6C5D203A20636F6C3B0A090909090909637376202B3D207361666528646174615B726F775D5B636F6C4964785D2C20636F6C293B0A09090909097D0A090909090969662028726F77203C20646174612E6C656E6774';
wwv_flow_api.g_varchar2_table(115) := '68202D2031202626202821736B6970456D7074794C696E6573207C7C20286D6178436F6C203E203020262620216E756C6C4C696E652929290A09090909097B0A090909090909637376202B3D205F6E65776C696E653B0A09090909097D0A090909097D0A';
wwv_flow_api.g_varchar2_table(116) := '0909097D0A09090972657475726E206373763B0A09097D0A0A09092F2A2A20456E636C6F73657320612076616C75652061726F756E642071756F746573206966206E656564656420286D616B657320612076616C7565207361666520666F722043535620';
wwv_flow_api.g_varchar2_table(117) := '696E73657274696F6E29202A2F0A090966756E6374696F6E2073616665287374722C20636F6C290A09097B0A09090969662028747970656F6620737472203D3D3D2027756E646566696E656427207C7C20737472203D3D3D206E756C6C290A0909090972';
wwv_flow_api.g_varchar2_table(118) := '657475726E2027273B0A0A090909696620287374722E636F6E7374727563746F72203D3D3D2044617465290A0909090972657475726E204A534F4E2E737472696E6769667928737472292E736C69636528312C203235293B0A0A090909737472203D2073';
wwv_flow_api.g_varchar2_table(119) := '74722E746F537472696E6728292E7265706C6163652871756F74654368617252656765782C205F6573636170656451756F7465293B0A0A090909766172206E6565647351756F746573203D2028747970656F66205F71756F746573203D3D3D2027626F6F';
wwv_flow_api.g_varchar2_table(120) := '6C65616E27202626205F71756F746573290A090909090909097C7C202841727261792E69734172726179285F71756F74657329202626205F71756F7465735B636F6C5D290A090909090909097C7C20686173416E79287374722C20506170612E4241445F';
wwv_flow_api.g_varchar2_table(121) := '44454C494D4954455253290A090909090909097C7C207374722E696E6465784F66285F64656C696D6974657229203E202D310A090909090909097C7C207374722E636861724174283029203D3D3D202720270A090909090909097C7C207374722E636861';
wwv_flow_api.g_varchar2_table(122) := '724174287374722E6C656E677468202D203129203D3D3D202720273B0A0A09090972657475726E206E6565647351756F746573203F205F71756F746543686172202B20737472202B205F71756F746543686172203A207374723B0A09097D0A0A09096675';
wwv_flow_api.g_varchar2_table(123) := '6E6374696F6E20686173416E79287374722C20737562737472696E6773290A09097B0A090909666F7220287661722069203D20303B2069203C20737562737472696E67732E6C656E6774683B20692B2B290A09090909696620287374722E696E6465784F';
wwv_flow_api.g_varchar2_table(124) := '6628737562737472696E67735B695D29203E202D31290A090909090972657475726E20747275653B0A09090972657475726E2066616C73653B0A09097D0A097D0A0A092F2A2A204368756E6B53747265616D65722069732074686520626173652070726F';
wwv_flow_api.g_varchar2_table(125) := '746F7479706520666F7220766172696F75732073747265616D657220696D706C656D656E746174696F6E732E202A2F0A0966756E6374696F6E204368756E6B53747265616D657228636F6E666967290A097B0A0909746869732E5F68616E646C65203D20';
wwv_flow_api.g_varchar2_table(126) := '6E756C6C3B0A0909746869732E5F66696E6973686564203D2066616C73653B0A0909746869732E5F636F6D706C65746564203D2066616C73653B0A0909746869732E5F68616C746564203D2066616C73653B0A0909746869732E5F696E707574203D206E';
wwv_flow_api.g_varchar2_table(127) := '756C6C3B0A0909746869732E5F62617365496E646578203D20303B0A0909746869732E5F7061727469616C4C696E65203D2027273B0A0909746869732E5F726F77436F756E74203D20303B0A0909746869732E5F7374617274203D20303B0A0909746869';
wwv_flow_api.g_varchar2_table(128) := '732E5F6E6578744368756E6B203D206E756C6C3B0A0909746869732E697346697273744368756E6B203D20747275653B0A0909746869732E5F636F6D706C657465526573756C7473203D207B0A090909646174613A205B5D2C0A0909096572726F72733A';
wwv_flow_api.g_varchar2_table(129) := '205B5D2C0A0909096D6574613A207B7D0A09097D3B0A09097265706C616365436F6E6669672E63616C6C28746869732C20636F6E666967293B0A0A0909746869732E70617273654368756E6B203D2066756E6374696F6E286368756E6B2C20697346616B';
wwv_flow_api.g_varchar2_table(130) := '654368756E6B290A09097B0A0909092F2F204669727374206368756E6B207072652D70726F63657373696E670A09090969662028746869732E697346697273744368756E6B20262620697346756E6374696F6E28746869732E5F636F6E6669672E626566';
wwv_flow_api.g_varchar2_table(131) := '6F726546697273744368756E6B29290A0909097B0A09090909766172206D6F6469666965644368756E6B203D20746869732E5F636F6E6669672E6265666F726546697273744368756E6B286368756E6B293B0A09090909696620286D6F64696669656443';
wwv_flow_api.g_varchar2_table(132) := '68756E6B20213D3D20756E646566696E6564290A09090909096368756E6B203D206D6F6469666965644368756E6B3B0A0909097D0A090909746869732E697346697273744368756E6B203D2066616C73653B0A090909746869732E5F68616C746564203D';
wwv_flow_api.g_varchar2_table(133) := '2066616C73653B0A0A0909092F2F2052656A6F696E20746865206C696E65207765206C696B656C79206A7573742073706C697420696E2074776F206279206368756E6B696E67207468652066696C650A09090976617220616767726567617465203D2074';
wwv_flow_api.g_varchar2_table(134) := '6869732E5F7061727469616C4C696E65202B206368756E6B3B0A090909746869732E5F7061727469616C4C696E65203D2027273B0A0A09090976617220726573756C7473203D20746869732E5F68616E646C652E7061727365286167677265676174652C';
wwv_flow_api.g_varchar2_table(135) := '20746869732E5F62617365496E6465782C2021746869732E5F66696E6973686564293B0A0A09090969662028746869732E5F68616E646C652E7061757365642829207C7C20746869732E5F68616E646C652E61626F72746564282929207B0A0909090974';
wwv_flow_api.g_varchar2_table(136) := '6869732E5F68616C746564203D20747275653B0A0909090972657475726E3B0A0909097D0A0A090909766172206C617374496E646578203D20726573756C74732E6D6574612E637572736F723B0A0A0909096966202821746869732E5F66696E69736865';
wwv_flow_api.g_varchar2_table(137) := '64290A0909097B0A09090909746869732E5F7061727469616C4C696E65203D206167677265676174652E737562737472696E67286C617374496E646578202D20746869732E5F62617365496E646578293B0A09090909746869732E5F62617365496E6465';
wwv_flow_api.g_varchar2_table(138) := '78203D206C617374496E6465783B0A0909097D0A0A09090969662028726573756C747320262620726573756C74732E64617461290A09090909746869732E5F726F77436F756E74202B3D20726573756C74732E646174612E6C656E6774683B0A0A090909';
wwv_flow_api.g_varchar2_table(139) := '7661722066696E6973686564496E636C7564696E6750726576696577203D20746869732E5F66696E6973686564207C7C2028746869732E5F636F6E6669672E7072657669657720262620746869732E5F726F77436F756E74203E3D20746869732E5F636F';
wwv_flow_api.g_varchar2_table(140) := '6E6669672E70726576696577293B0A0A0909096966202849535F504150415F574F524B4552290A0909097B0A09090909676C6F62616C2E706F73744D657373616765287B0A0909090909726573756C74733A20726573756C74732C0A0909090909776F72';
wwv_flow_api.g_varchar2_table(141) := '6B657249643A20506170612E574F524B45525F49442C0A090909090966696E69736865643A2066696E6973686564496E636C7564696E67507265766965770A090909097D293B0A0909097D0A090909656C73652069662028697346756E6374696F6E2874';
wwv_flow_api.g_varchar2_table(142) := '6869732E5F636F6E6669672E6368756E6B292026262021697346616B654368756E6B290A0909097B0A09090909746869732E5F636F6E6669672E6368756E6B28726573756C74732C20746869732E5F68616E646C65293B0A090909096966202874686973';
wwv_flow_api.g_varchar2_table(143) := '2E5F68616E646C652E7061757365642829207C7C20746869732E5F68616E646C652E61626F72746564282929207B0A0909090909746869732E5F68616C746564203D20747275653B0A090909090972657475726E3B0A090909097D0A0909090972657375';
wwv_flow_api.g_varchar2_table(144) := '6C7473203D20756E646566696E65643B0A09090909746869732E5F636F6D706C657465526573756C7473203D20756E646566696E65643B0A0909097D0A0A0909096966202821746869732E5F636F6E6669672E737465702026262021746869732E5F636F';
wwv_flow_api.g_varchar2_table(145) := '6E6669672E6368756E6B29207B0A09090909746869732E5F636F6D706C657465526573756C74732E64617461203D20746869732E5F636F6D706C657465526573756C74732E646174612E636F6E63617428726573756C74732E64617461293B0A09090909';
wwv_flow_api.g_varchar2_table(146) := '746869732E5F636F6D706C657465526573756C74732E6572726F7273203D20746869732E5F636F6D706C657465526573756C74732E6572726F72732E636F6E63617428726573756C74732E6572726F7273293B0A09090909746869732E5F636F6D706C65';
wwv_flow_api.g_varchar2_table(147) := '7465526573756C74732E6D657461203D20726573756C74732E6D6574613B0A0909097D0A0A0909096966202821746869732E5F636F6D706C657465642026262066696E6973686564496E636C7564696E675072657669657720262620697346756E637469';
wwv_flow_api.g_varchar2_table(148) := '6F6E28746869732E5F636F6E6669672E636F6D706C65746529202626202821726573756C7473207C7C2021726573756C74732E6D6574612E61626F727465642929207B0A09090909746869732E5F636F6E6669672E636F6D706C65746528746869732E5F';
wwv_flow_api.g_varchar2_table(149) := '636F6D706C657465526573756C74732C20746869732E5F696E707574293B0A09090909746869732E5F636F6D706C65746564203D20747275653B0A0909097D0A0A090909696620282166696E6973686564496E636C7564696E6750726576696577202626';
wwv_flow_api.g_varchar2_table(150) := '202821726573756C7473207C7C2021726573756C74732E6D6574612E70617573656429290A09090909746869732E5F6E6578744368756E6B28293B0A0A09090972657475726E20726573756C74733B0A09097D3B0A0A0909746869732E5F73656E644572';
wwv_flow_api.g_varchar2_table(151) := '726F72203D2066756E6374696F6E286572726F72290A09097B0A09090969662028697346756E6374696F6E28746869732E5F636F6E6669672E6572726F7229290A09090909746869732E5F636F6E6669672E6572726F72286572726F72293B0A09090965';
wwv_flow_api.g_varchar2_table(152) := '6C7365206966202849535F504150415F574F524B455220262620746869732E5F636F6E6669672E6572726F72290A0909097B0A09090909676C6F62616C2E706F73744D657373616765287B0A0909090909776F726B657249643A20506170612E574F524B';
wwv_flow_api.g_varchar2_table(153) := '45525F49442C0A09090909096572726F723A206572726F722C0A090909090966696E69736865643A2066616C73650A090909097D293B0A0909097D0A09097D3B0A0A090966756E6374696F6E207265706C616365436F6E66696728636F6E666967290A09';
wwv_flow_api.g_varchar2_table(154) := '097B0A0909092F2F20446565702D636F70792074686520636F6E66696720736F2077652063616E20656469742069740A09090976617220636F6E666967436F7079203D20636F707928636F6E666967293B0A090909636F6E666967436F70792E6368756E';
wwv_flow_api.g_varchar2_table(155) := '6B53697A65203D207061727365496E7428636F6E666967436F70792E6368756E6B53697A65293B092F2F207061727365496E74205645525920696D706F7274616E7420736F20776520646F6E277420636F6E636174656E61746520737472696E6773210A';
wwv_flow_api.g_varchar2_table(156) := '0909096966202821636F6E6669672E737465702026262021636F6E6669672E6368756E6B290A09090909636F6E666967436F70792E6368756E6B53697A65203D206E756C6C3B20202F2F2064697361626C652052616E676520686561646572206966206E';
wwv_flow_api.g_varchar2_table(157) := '6F742073747265616D696E673B206261642076616C75657320627265616B20494953202D2073656520697373756520233139360A090909746869732E5F68616E646C65203D206E65772050617273657248616E646C6528636F6E666967436F7079293B0A';
wwv_flow_api.g_varchar2_table(158) := '090909746869732E5F68616E646C652E73747265616D6572203D20746869733B0A090909746869732E5F636F6E666967203D20636F6E666967436F70793B092F2F20706572736973742074686520636F707920746F207468652063616C6C65720A09097D';
wwv_flow_api.g_varchar2_table(159) := '0A097D0A0A0A0966756E6374696F6E204E6574776F726B53747265616D657228636F6E666967290A097B0A0909636F6E666967203D20636F6E666967207C7C207B7D3B0A09096966202821636F6E6669672E6368756E6B53697A65290A090909636F6E66';
wwv_flow_api.g_varchar2_table(160) := '69672E6368756E6B53697A65203D20506170612E52656D6F74654368756E6B53697A653B0A09094368756E6B53747265616D65722E63616C6C28746869732C20636F6E666967293B0A0A0909766172207868723B0A0A09096966202849535F574F524B45';
wwv_flow_api.g_varchar2_table(161) := '52290A09097B0A090909746869732E5F6E6578744368756E6B203D2066756E6374696F6E28290A0909097B0A09090909746869732E5F726561644368756E6B28293B0A09090909746869732E5F6368756E6B4C6F6164656428293B0A0909097D3B0A0909';
wwv_flow_api.g_varchar2_table(162) := '7D0A0909656C73650A09097B0A090909746869732E5F6E6578744368756E6B203D2066756E6374696F6E28290A0909097B0A09090909746869732E5F726561644368756E6B28293B0A0909097D3B0A09097D0A0A0909746869732E73747265616D203D20';
wwv_flow_api.g_varchar2_table(163) := '66756E6374696F6E2875726C290A09097B0A090909746869732E5F696E707574203D2075726C3B0A090909746869732E5F6E6578744368756E6B28293B092F2F205374617274732073747265616D696E670A09097D3B0A0A0909746869732E5F72656164';
wwv_flow_api.g_varchar2_table(164) := '4368756E6B203D2066756E6374696F6E28290A09097B0A09090969662028746869732E5F66696E6973686564290A0909097B0A09090909746869732E5F6368756E6B4C6F6164656428293B0A0909090972657475726E3B0A0909097D0A0A090909786872';
wwv_flow_api.g_varchar2_table(165) := '203D206E657720584D4C487474705265717565737428293B0A0A09090969662028746869732E5F636F6E6669672E7769746843726564656E7469616C73290A0909097B0A090909097868722E7769746843726564656E7469616C73203D20746869732E5F';
wwv_flow_api.g_varchar2_table(166) := '636F6E6669672E7769746843726564656E7469616C733B0A0909097D0A0A090909696620282149535F574F524B4552290A0909097B0A090909097868722E6F6E6C6F6164203D2062696E6446756E6374696F6E28746869732E5F6368756E6B4C6F616465';
wwv_flow_api.g_varchar2_table(167) := '642C2074686973293B0A090909097868722E6F6E6572726F72203D2062696E6446756E6374696F6E28746869732E5F6368756E6B4572726F722C2074686973293B0A0909097D0A0A0909097868722E6F70656E2827474554272C20746869732E5F696E70';
wwv_flow_api.g_varchar2_table(168) := '75742C202149535F574F524B4552293B0A0909092F2F20486561646572732063616E206F6E6C7920626520736574207768656E206F6E6365207468652072657175657374207374617465206973204F50454E45440A09090969662028746869732E5F636F';
wwv_flow_api.g_varchar2_table(169) := '6E6669672E646F776E6C6F61645265717565737448656164657273290A0909097B0A090909097661722068656164657273203D20746869732E5F636F6E6669672E646F776E6C6F616452657175657374486561646572733B0A0A09090909666F72202876';
wwv_flow_api.g_varchar2_table(170) := '6172206865616465724E616D6520696E2068656164657273290A090909097B0A09090909097868722E73657452657175657374486561646572286865616465724E616D652C20686561646572735B6865616465724E616D655D293B0A090909097D0A0909';
wwv_flow_api.g_varchar2_table(171) := '097D0A0A09090969662028746869732E5F636F6E6669672E6368756E6B53697A65290A0909097B0A0909090976617220656E64203D20746869732E5F7374617274202B20746869732E5F636F6E6669672E6368756E6B53697A65202D20313B092F2F206D';
wwv_flow_api.g_varchar2_table(172) := '696E7573206F6E65206265636175736520627974652072616E676520697320696E636C75736976650A090909097868722E73657452657175657374486561646572282752616E6765272C202762797465733D27202B20746869732E5F7374617274202B20';
wwv_flow_api.g_varchar2_table(173) := '272D27202B20656E64293B0A0909097D0A0A090909747279207B0A090909097868722E73656E6428293B0A0909097D0A0909096361746368202865727229207B0A09090909746869732E5F6368756E6B4572726F72286572722E6D657373616765293B0A';
wwv_flow_api.g_varchar2_table(174) := '0909097D0A0A0909096966202849535F574F524B4552202626207868722E737461747573203D3D3D2030290A09090909746869732E5F6368756E6B4572726F7228293B0A090909656C73650A09090909746869732E5F7374617274202B3D20746869732E';
wwv_flow_api.g_varchar2_table(175) := '5F636F6E6669672E6368756E6B53697A653B0A09097D3B0A0A0909746869732E5F6368756E6B4C6F61646564203D2066756E6374696F6E28290A09097B0A090909696620287868722E7265616479537461746520213D3D2034290A090909097265747572';
wwv_flow_api.g_varchar2_table(176) := '6E3B0A0A090909696620287868722E737461747573203C20323030207C7C207868722E737461747573203E3D20343030290A0909097B0A09090909746869732E5F6368756E6B4572726F7228293B0A0909090972657475726E3B0A0909097D0A0A090909';
wwv_flow_api.g_varchar2_table(177) := '746869732E5F66696E6973686564203D2021746869732E5F636F6E6669672E6368756E6B53697A65207C7C20746869732E5F7374617274203E2067657446696C6553697A6528786872293B0A090909746869732E70617273654368756E6B287868722E72';
wwv_flow_api.g_varchar2_table(178) := '6573706F6E736554657874293B0A09097D3B0A0A0909746869732E5F6368756E6B4572726F72203D2066756E6374696F6E286572726F724D657373616765290A09097B0A090909766172206572726F7254657874203D207868722E737461747573546578';
wwv_flow_api.g_varchar2_table(179) := '74207C7C206572726F724D6573736167653B0A090909746869732E5F73656E644572726F72286E6577204572726F72286572726F725465787429293B0A09097D3B0A0A090966756E6374696F6E2067657446696C6553697A6528786872290A09097B0A09';
wwv_flow_api.g_varchar2_table(180) := '090976617220636F6E74656E7452616E6765203D207868722E676574526573706F6E73654865616465722827436F6E74656E742D52616E676527293B0A09090969662028636F6E74656E7452616E6765203D3D3D206E756C6C29207B202F2F206E6F2063';
wwv_flow_api.g_varchar2_table(181) := '6F6E74656E742072616E67652C207468656E2066696E697368210A0909090972657475726E202D313B0A0909097D0A09090972657475726E207061727365496E7428636F6E74656E7452616E67652E73756273747228636F6E74656E7452616E67652E6C';
wwv_flow_api.g_varchar2_table(182) := '617374496E6465784F6628272F2729202B203129293B0A09097D0A097D0A094E6574776F726B53747265616D65722E70726F746F74797065203D204F626A6563742E637265617465284368756E6B53747265616D65722E70726F746F74797065293B0A09';
wwv_flow_api.g_varchar2_table(183) := '4E6574776F726B53747265616D65722E70726F746F747970652E636F6E7374727563746F72203D204E6574776F726B53747265616D65723B0A0A0A0966756E6374696F6E2046696C6553747265616D657228636F6E666967290A097B0A0909636F6E6669';
wwv_flow_api.g_varchar2_table(184) := '67203D20636F6E666967207C7C207B7D3B0A09096966202821636F6E6669672E6368756E6B53697A65290A090909636F6E6669672E6368756E6B53697A65203D20506170612E4C6F63616C4368756E6B53697A653B0A09094368756E6B53747265616D65';
wwv_flow_api.g_varchar2_table(185) := '722E63616C6C28746869732C20636F6E666967293B0A0A0909766172207265616465722C20736C6963653B0A0A09092F2F2046696C6552656164657220697320626574746572207468616E2046696C6552656164657253796E6320286576656E20696E20';
wwv_flow_api.g_varchar2_table(186) := '776F726B657229202D2073656520687474703A2F2F737461636B6F766572666C6F772E636F6D2F712F32343730383634392F313034383836320A09092F2F204275742046697265666F7820697320612070696C6C2C20746F6F202D207365652069737375';
wwv_flow_api.g_varchar2_table(187) := '65202337363A2068747470733A2F2F6769746875622E636F6D2F6D686F6C742F5061706150617273652F6973737565732F37360A0909766172207573696E674173796E63526561646572203D20747970656F662046696C6552656164657220213D3D2027';
wwv_flow_api.g_varchar2_table(188) := '756E646566696E6564273B092F2F2053616661726920646F65736E277420636F6E736964657220697420612066756E6374696F6E202D2073656520697373756520233130350A0A0909746869732E73747265616D203D2066756E6374696F6E2866696C65';
wwv_flow_api.g_varchar2_table(189) := '290A09097B0A090909746869732E5F696E707574203D2066696C653B0A090909736C696365203D2066696C652E736C696365207C7C2066696C652E7765626B6974536C696365207C7C2066696C652E6D6F7A536C6963653B0A0A09090969662028757369';
wwv_flow_api.g_varchar2_table(190) := '6E674173796E63526561646572290A0909097B0A09090909726561646572203D206E65772046696C6552656164657228293B09092F2F20507265666572726564206D6574686F64206F662072656164696E672066696C65732C206576656E20696E20776F';
wwv_flow_api.g_varchar2_table(191) := '726B6572730A090909097265616465722E6F6E6C6F6164203D2062696E6446756E6374696F6E28746869732E5F6368756E6B4C6F616465642C2074686973293B0A090909097265616465722E6F6E6572726F72203D2062696E6446756E6374696F6E2874';
wwv_flow_api.g_varchar2_table(192) := '6869732E5F6368756E6B4572726F722C2074686973293B0A0909097D0A090909656C73650A09090909726561646572203D206E65772046696C6552656164657253796E6328293B092F2F204861636B20666F722072756E6E696E6720696E206120776562';
wwv_flow_api.g_varchar2_table(193) := '20776F726B657220696E2046697265666F780A0A090909746869732E5F6E6578744368756E6B28293B092F2F205374617274732073747265616D696E670A09097D3B0A0A0909746869732E5F6E6578744368756E6B203D2066756E6374696F6E28290A09';
wwv_flow_api.g_varchar2_table(194) := '097B0A0909096966202821746869732E5F66696E6973686564202626202821746869732E5F636F6E6669672E70726576696577207C7C20746869732E5F726F77436F756E74203C20746869732E5F636F6E6669672E7072657669657729290A0909090974';
wwv_flow_api.g_varchar2_table(195) := '6869732E5F726561644368756E6B28293B0A09097D3B0A0A0909746869732E5F726561644368756E6B203D2066756E6374696F6E28290A09097B0A20202020202020202020202076617220696E707574203D20746869732E5F696E7075743B0A20202020';
wwv_flow_api.g_varchar2_table(196) := '20202020202020200A09090969662028746869732E5F636F6E6669672E6368756E6B53697A65290A0909097B0A0909090976617220656E64203D204D6174682E6D696E28746869732E5F7374617274202B20746869732E5F636F6E6669672E6368756E6B';
wwv_flow_api.g_varchar2_table(197) := '53697A652C20746869732E5F696E7075742E73697A65293B0A20202020202020202020202020202020696E707574203D20736C6963652E63616C6C28696E7075742C20746869732E5F73746172742C20656E64293B0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(198) := '20200A0909097D0A09090976617220747874203D207265616465722E7265616441735465787428696E7075742C20746869732E5F636F6E6669672E656E636F64696E67293B0A09090969662028217573696E674173796E63526561646572290A09090909';
wwv_flow_api.g_varchar2_table(199) := '746869732E5F6368756E6B4C6F61646564287B207461726765743A207B20726573756C743A20747874207D207D293B092F2F206D696D696320746865206173796E63207369676E61747572650A09097D3B0A0A0909746869732E5F6368756E6B4C6F6164';
wwv_flow_api.g_varchar2_table(200) := '6564203D2066756E6374696F6E286576656E74290A09097B0A0909092F2F205665727920696D706F7274616E7420746F20696E6372656D656E7420737461727420656163682074696D65206265666F72652068616E646C696E6720726573756C74730A09';
wwv_flow_api.g_varchar2_table(201) := '0909746869732E5F7374617274202B3D20746869732E5F636F6E6669672E6368756E6B53697A653B0A090909746869732E5F66696E6973686564203D2021746869732E5F636F6E6669672E6368756E6B53697A65207C7C20746869732E5F737461727420';
wwv_flow_api.g_varchar2_table(202) := '3E3D20746869732E5F696E7075742E73697A653B0A090909746869732E70617273654368756E6B286576656E742E7461726765742E726573756C74293B0A09097D3B0A0A0909746869732E5F6368756E6B4572726F72203D2066756E6374696F6E28290A';
wwv_flow_api.g_varchar2_table(203) := '09097B0A090909746869732E5F73656E644572726F72287265616465722E6572726F72293B0A09097D3B0A0A097D0A0946696C6553747265616D65722E70726F746F74797065203D204F626A6563742E637265617465284368756E6B53747265616D6572';
wwv_flow_api.g_varchar2_table(204) := '2E70726F746F74797065293B0A0946696C6553747265616D65722E70726F746F747970652E636F6E7374727563746F72203D2046696C6553747265616D65723B0A0A0A0966756E6374696F6E20537472696E6753747265616D657228636F6E666967290A';
wwv_flow_api.g_varchar2_table(205) := '097B0A0909636F6E666967203D20636F6E666967207C7C207B7D3B0A09094368756E6B53747265616D65722E63616C6C28746869732C20636F6E666967293B0A0A09097661722072656D61696E696E673B0A0909746869732E73747265616D203D206675';
wwv_flow_api.g_varchar2_table(206) := '6E6374696F6E2873290A09097B0A09090972656D61696E696E67203D20733B0A09090972657475726E20746869732E5F6E6578744368756E6B28293B0A09097D3B0A0909746869732E5F6E6578744368756E6B203D2066756E6374696F6E28290A09097B';
wwv_flow_api.g_varchar2_table(207) := '0A09090969662028746869732E5F66696E6973686564292072657475726E3B0A0909097661722073697A65203D20746869732E5F636F6E6669672E6368756E6B53697A653B0A090909766172206368756E6B203D2073697A65203F2072656D61696E696E';
wwv_flow_api.g_varchar2_table(208) := '672E73756273747228302C2073697A6529203A2072656D61696E696E673B0A09090972656D61696E696E67203D2073697A65203F2072656D61696E696E672E7375627374722873697A6529203A2027273B0A090909746869732E5F66696E697368656420';
wwv_flow_api.g_varchar2_table(209) := '3D202172656D61696E696E673B0A09090972657475726E20746869732E70617273654368756E6B286368756E6B293B0A09097D3B0A097D0A09537472696E6753747265616D65722E70726F746F74797065203D204F626A6563742E637265617465285374';
wwv_flow_api.g_varchar2_table(210) := '72696E6753747265616D65722E70726F746F74797065293B0A09537472696E6753747265616D65722E70726F746F747970652E636F6E7374727563746F72203D20537472696E6753747265616D65723B0A0A0A0966756E6374696F6E205265616461626C';
wwv_flow_api.g_varchar2_table(211) := '6553747265616D53747265616D657228636F6E666967290A097B0A0909636F6E666967203D20636F6E666967207C7C207B7D3B0A0A09094368756E6B53747265616D65722E63616C6C28746869732C20636F6E666967293B0A0A09097661722071756575';
wwv_flow_api.g_varchar2_table(212) := '65203D205B5D3B0A09097661722070617273654F6E44617461203D20747275653B0A09097661722073747265616D486173456E646564203D2066616C73653B0A0A0909746869732E7061757365203D2066756E6374696F6E28290A09097B0A0909094368';
wwv_flow_api.g_varchar2_table(213) := '756E6B53747265616D65722E70726F746F747970652E70617573652E6170706C7928746869732C20617267756D656E7473293B0A090909746869732E5F696E7075742E706175736528293B0A09097D3B0A0A0909746869732E726573756D65203D206675';
wwv_flow_api.g_varchar2_table(214) := '6E6374696F6E28290A09097B0A0909094368756E6B53747265616D65722E70726F746F747970652E726573756D652E6170706C7928746869732C20617267756D656E7473293B0A090909746869732E5F696E7075742E726573756D6528293B0A09097D3B';
wwv_flow_api.g_varchar2_table(215) := '0A0A0909746869732E73747265616D203D2066756E6374696F6E2873747265616D290A09097B0A090909746869732E5F696E707574203D2073747265616D3B0A0A090909746869732E5F696E7075742E6F6E282764617461272C20746869732E5F737472';
wwv_flow_api.g_varchar2_table(216) := '65616D44617461293B0A090909746869732E5F696E7075742E6F6E2827656E64272C20746869732E5F73747265616D456E64293B0A090909746869732E5F696E7075742E6F6E28276572726F72272C20746869732E5F73747265616D4572726F72293B0A';
wwv_flow_api.g_varchar2_table(217) := '09097D3B0A0A0909746869732E5F636865636B497346696E6973686564203D2066756E6374696F6E28290A09097B0A0909096966202873747265616D486173456E6465642026262071756575652E6C656E677468203D3D3D203129207B0A090909097468';
wwv_flow_api.g_varchar2_table(218) := '69732E5F66696E6973686564203D20747275653B0A0909097D0A09097D3B0A0A0909746869732E5F6E6578744368756E6B203D2066756E6374696F6E28290A09097B0A090909746869732E5F636865636B497346696E697368656428293B0A0909096966';
wwv_flow_api.g_varchar2_table(219) := '202871756575652E6C656E677468290A0909097B0A09090909746869732E70617273654368756E6B2871756575652E73686966742829293B0A0909097D0A090909656C73650A0909097B0A0909090970617273654F6E44617461203D20747275653B0A09';
wwv_flow_api.g_varchar2_table(220) := '09097D0A09097D3B0A0A0909746869732E5F73747265616D44617461203D2062696E6446756E6374696F6E2866756E6374696F6E286368756E6B290A09097B0A0909097472790A0909097B0A0909090971756575652E7075736828747970656F66206368';
wwv_flow_api.g_varchar2_table(221) := '756E6B203D3D3D2027737472696E6727203F206368756E6B203A206368756E6B2E746F537472696E6728746869732E5F636F6E6669672E656E636F64696E6729293B0A0A090909096966202870617273654F6E44617461290A090909097B0A0909090909';
wwv_flow_api.g_varchar2_table(222) := '70617273654F6E44617461203D2066616C73653B0A0909090909746869732E5F636865636B497346696E697368656428293B0A0909090909746869732E70617273654368756E6B2871756575652E73686966742829293B0A090909097D0A0909097D0A09';
wwv_flow_api.g_varchar2_table(223) := '0909636174636820286572726F72290A0909097B0A09090909746869732E5F73747265616D4572726F72286572726F72293B0A0909097D0A09097D2C2074686973293B0A0A0909746869732E5F73747265616D4572726F72203D2062696E6446756E6374';
wwv_flow_api.g_varchar2_table(224) := '696F6E2866756E6374696F6E286572726F72290A09097B0A090909746869732E5F73747265616D436C65616E557028293B0A090909746869732E5F73656E644572726F72286572726F72293B0A09097D2C2074686973293B0A0A0909746869732E5F7374';
wwv_flow_api.g_varchar2_table(225) := '7265616D456E64203D2062696E6446756E6374696F6E2866756E6374696F6E28290A09097B0A090909746869732E5F73747265616D436C65616E557028293B0A09090973747265616D486173456E646564203D20747275653B0A090909746869732E5F73';
wwv_flow_api.g_varchar2_table(226) := '747265616D44617461282727293B0A09097D2C2074686973293B0A0A0909746869732E5F73747265616D436C65616E5570203D2062696E6446756E6374696F6E2866756E6374696F6E28290A09097B0A090909746869732E5F696E7075742E72656D6F76';
wwv_flow_api.g_varchar2_table(227) := '654C697374656E6572282764617461272C20746869732E5F73747265616D44617461293B0A090909746869732E5F696E7075742E72656D6F76654C697374656E65722827656E64272C20746869732E5F73747265616D456E64293B0A090909746869732E';
wwv_flow_api.g_varchar2_table(228) := '5F696E7075742E72656D6F76654C697374656E657228276572726F72272C20746869732E5F73747265616D4572726F72293B0A09097D2C2074686973293B0A097D0A095265616461626C6553747265616D53747265616D65722E70726F746F7479706520';
wwv_flow_api.g_varchar2_table(229) := '3D204F626A6563742E637265617465284368756E6B53747265616D65722E70726F746F74797065293B0A095265616461626C6553747265616D53747265616D65722E70726F746F747970652E636F6E7374727563746F72203D205265616461626C655374';
wwv_flow_api.g_varchar2_table(230) := '7265616D53747265616D65723B0A0A0A0966756E6374696F6E204475706C657853747265616D53747265616D6572285F636F6E66696729207B0A0909766172204475706C6578203D2072657175697265282773747265616D27292E4475706C65783B0A09';
wwv_flow_api.g_varchar2_table(231) := '0976617220636F6E666967203D20636F7079285F636F6E666967293B0A09097661722070617273654F6E5772697465203D20747275653B0A090976617220777269746553747265616D48617346696E6973686564203D2066616C73653B0A090976617220';
wwv_flow_api.g_varchar2_table(232) := '706172736543616C6C6261636B5175657565203D205B5D3B0A09097661722073747265616D203D206E756C6C3B0A0A0909746869732E5F6F6E43737644617461203D2066756E6374696F6E28726573756C7473290A09097B0A0909097661722064617461';
wwv_flow_api.g_varchar2_table(233) := '203D20726573756C74732E646174613B0A090909696620282173747265616D2E707573682864617461292026262021746869732E5F68616E646C652E706175736564282929207B0A090909092F2F2074686520777269746561626C6520636F6E73756D65';
wwv_flow_api.g_varchar2_table(234) := '7220627566666572206861732066696C6C65642075700A090909092F2F20736F207765206E65656420746F20706175736520756E74696C206D6F7265206974656D730A090909092F2F2063616E2062652070726F6365737365640A09090909746869732E';
wwv_flow_api.g_varchar2_table(235) := '5F68616E646C652E706175736528293B0A0909097D0A09097D3B0A0A0909746869732E5F6F6E437376436F6D706C657465203D2066756E6374696F6E28290A09097B0A0909092F2F206E6F64652077696C6C2066696E6973682074686520726561642073';
wwv_flow_api.g_varchar2_table(236) := '747265616D207768656E0A0909092F2F206E756C6C206973207075736865640A09090973747265616D2E70757368286E756C6C293B0A09097D3B0A0A0909636F6E6669672E73746570203D2062696E6446756E6374696F6E28746869732E5F6F6E437376';
wwv_flow_api.g_varchar2_table(237) := '446174612C2074686973293B0A0909636F6E6669672E636F6D706C657465203D2062696E6446756E6374696F6E28746869732E5F6F6E437376436F6D706C6574652C2074686973293B0A09094368756E6B53747265616D65722E63616C6C28746869732C';
wwv_flow_api.g_varchar2_table(238) := '20636F6E666967293B0A0A0909746869732E5F6E6578744368756E6B203D2066756E6374696F6E28290A09097B0A09090969662028777269746553747265616D48617346696E697368656420262620706172736543616C6C6261636B51756575652E6C65';
wwv_flow_api.g_varchar2_table(239) := '6E677468203D3D3D203129207B0A09090909746869732E5F66696E6973686564203D20747275653B0A0909097D0A09090969662028706172736543616C6C6261636B51756575652E6C656E67746829207B0A09090909706172736543616C6C6261636B51';
wwv_flow_api.g_varchar2_table(240) := '756575652E7368696674282928293B0A0909097D20656C7365207B0A0909090970617273654F6E5772697465203D20747275653B0A0909097D0A09097D3B0A0A0909746869732E5F616464546F50617273655175657565203D2066756E6374696F6E2863';
wwv_flow_api.g_varchar2_table(241) := '68756E6B2C2063616C6C6261636B290A09097B0A0909092F2F2061646420746F20717565756520736F20746861742077652063616E20696E6469636174650A0909092F2F20636F6D706C6574696F6E207669612063616C6C6261636B0A0909092F2F206E';
wwv_flow_api.g_varchar2_table(242) := '6F64652077696C6C206175746F6D61746963616C6C792070617573652074686520696E636F6D696E672073747265616D0A0909092F2F207768656E20746F6F206D616E79206974656D732068617665206265656E20616464656420776974686F75742074';
wwv_flow_api.g_varchar2_table(243) := '686569720A0909092F2F2063616C6C6261636B206265696E6720696E766F6B65640A090909706172736543616C6C6261636B51756575652E707573682862696E6446756E6374696F6E2866756E6374696F6E2829207B0A09090909746869732E70617273';
wwv_flow_api.g_varchar2_table(244) := '654368756E6B28747970656F66206368756E6B203D3D3D2027737472696E6727203F206368756E6B203A206368756E6B2E746F537472696E6728636F6E6669672E656E636F64696E6729293B0A0909090969662028697346756E6374696F6E2863616C6C';
wwv_flow_api.g_varchar2_table(245) := '6261636B2929207B0A090909090972657475726E2063616C6C6261636B28293B0A090909097D0A0909097D2C207468697329293B0A0909096966202870617273654F6E577269746529207B0A0909090970617273654F6E5772697465203D2066616C7365';
wwv_flow_api.g_varchar2_table(246) := '3B0A09090909746869732E5F6E6578744368756E6B28293B0A0909097D0A09097D3B0A0A0909746869732E5F6F6E52656164203D2066756E6374696F6E28290A09097B0A09090969662028746869732E5F68616E646C652E706175736564282929207B0A';
wwv_flow_api.g_varchar2_table(247) := '090909092F2F2074686520777269746561626C6520636F6E73756D65722063616E2068616E646C65206D6F726520646174610A090909092F2F20736F20726573756D6520746865206368756E6B2070617273696E670A09090909746869732E5F68616E64';
wwv_flow_api.g_varchar2_table(248) := '6C652E726573756D6528293B0A0909097D0A09097D3B0A0A0909746869732E5F6F6E5772697465203D2066756E6374696F6E286368756E6B2C20656E636F64696E672C2063616C6C6261636B290A09097B0A090909746869732E5F616464546F50617273';
wwv_flow_api.g_varchar2_table(249) := '655175657565286368756E6B2C2063616C6C6261636B293B0A09097D3B0A0A0909746869732E5F6F6E5772697465436F6D706C657465203D2066756E6374696F6E28290A09097B0A090909777269746553747265616D48617346696E6973686564203D20';
wwv_flow_api.g_varchar2_table(250) := '747275653B0A0909092F2F206861766520746F20777269746520656D70747920737472696E670A0909092F2F20736F20706172736572206B6E6F77732069747320646F6E650A090909746869732E5F616464546F50617273655175657565282727293B0A';
wwv_flow_api.g_varchar2_table(251) := '09097D3B0A0A0909746869732E67657453747265616D203D2066756E6374696F6E28290A09097B0A09090972657475726E2073747265616D3B0A09097D3B0A090973747265616D203D206E6577204475706C6578287B0A0909097265616461626C654F62';
wwv_flow_api.g_varchar2_table(252) := '6A6563744D6F64653A20747275652C0A0909096465636F6465537472696E67733A2066616C73652C0A090909726561643A2062696E6446756E6374696F6E28746869732E5F6F6E526561642C2074686973292C0A09090977726974653A2062696E644675';
wwv_flow_api.g_varchar2_table(253) := '6E6374696F6E28746869732E5F6F6E57726974652C2074686973290A09097D293B0A090973747265616D2E6F6E6365282766696E697368272C2062696E6446756E6374696F6E28746869732E5F6F6E5772697465436F6D706C6574652C20746869732929';
wwv_flow_api.g_varchar2_table(254) := '3B0A097D0A0969662028747970656F6620504150415F42524F575345525F434F4E54455854203D3D3D2027756E646566696E65642729207B0A09094475706C657853747265616D53747265616D65722E70726F746F74797065203D204F626A6563742E63';
wwv_flow_api.g_varchar2_table(255) := '7265617465284368756E6B53747265616D65722E70726F746F74797065293B0A09094475706C657853747265616D53747265616D65722E70726F746F747970652E636F6E7374727563746F72203D204475706C657853747265616D53747265616D65723B';
wwv_flow_api.g_varchar2_table(256) := '0A097D0A0A0A092F2F20557365206F6E652050617273657248616E646C652070657220656E74697265204353562066696C65206F7220737472696E670A0966756E6374696F6E2050617273657248616E646C65285F636F6E666967290A097B0A09092F2F';
wwv_flow_api.g_varchar2_table(257) := '204F6E6520676F616C20697320746F206D696E696D697A652074686520757365206F6620726567756C61722065787072657373696F6E732E2E2E0A0909766172204D41585F464C4F4154203D204D6174682E706F7728322C203533293B0A090976617220';
wwv_flow_api.g_varchar2_table(258) := '4D494E5F464C4F4154203D202D4D41585F464C4F41543B0A090976617220464C4F4154203D202F5E5C732A2D3F285C642A5C2E3F5C642B7C5C642B5C2E3F5C642A2928655B2D2B5D3F5C642B293F5C732A242F693B0A09097661722049534F5F44415445';
wwv_flow_api.g_varchar2_table(259) := '203D202F285C647B347D2D5B30315D5C642D5B302D335D5C64545B302D325D5C643A5B302D355D5C643A5B302D355D5C645C2E5C642B285B2B2D5D5B302D325D5C643A5B302D355D5C647C5A29297C285C647B347D2D5B30315D5C642D5B302D335D5C64';
wwv_flow_api.g_varchar2_table(260) := '545B302D325D5C643A5B302D355D5C643A5B302D355D5C64285B2B2D5D5B302D325D5C643A5B302D355D5C647C5A29297C285C647B347D2D5B30315D5C642D5B302D335D5C64545B302D325D5C643A5B302D355D5C64285B2B2D5D5B302D325D5C643A5B';
wwv_flow_api.g_varchar2_table(261) := '302D355D5C647C5A29292F3B0A09097661722073656C66203D20746869733B0A0909766172205F73746570436F756E746572203D20303B092F2F204E756D626572206F662074696D65732073746570207761732063616C6C656420286E756D626572206F';
wwv_flow_api.g_varchar2_table(262) := '6620726F777320706172736564290A0909766172205F726F77436F756E746572203D20303B092F2F204E756D626572206F6620726F777320746861742068617665206265656E2070617273656420736F206661720A0909766172205F696E7075743B0909';
wwv_flow_api.g_varchar2_table(263) := '09092F2F2054686520696E707574206265696E67207061727365640A0909766172205F7061727365723B0909092F2F2054686520636F726520706172736572206265696E6720757365640A0909766172205F706175736564203D2066616C73653B092F2F';
wwv_flow_api.g_varchar2_table(264) := '20576865746865722077652061726520706175736564206F72206E6F740A0909766172205F61626F72746564203D2066616C73653B092F2F20576865746865722074686520706172736572206861732061626F72746564206F72206E6F740A0909766172';
wwv_flow_api.g_varchar2_table(265) := '205F64656C696D697465724572726F723B092F2F2054656D706F72617279207374617465206265747765656E2064656C696D6974657220646574656374696F6E20616E642070726F63657373696E6720726573756C74730A0909766172205F6669656C64';
wwv_flow_api.g_varchar2_table(266) := '73203D205B5D3B09092F2F204669656C6473206172652066726F6D207468652068656164657220726F77206F662074686520696E7075742C206966207468657265206973206F6E650A0909766172205F726573756C7473203D207B09092F2F2054686520';
wwv_flow_api.g_varchar2_table(267) := '6C61737420726573756C74732072657475726E65642066726F6D20746865207061727365720A090909646174613A205B5D2C0A0909096572726F72733A205B5D2C0A0909096D6574613A207B7D0A09097D3B0A0A090969662028697346756E6374696F6E';
wwv_flow_api.g_varchar2_table(268) := '285F636F6E6669672E7374657029290A09097B0A090909766172207573657253746570203D205F636F6E6669672E737465703B0A0909095F636F6E6669672E73746570203D2066756E6374696F6E28726573756C7473290A0909097B0A090909095F7265';
wwv_flow_api.g_varchar2_table(269) := '73756C7473203D20726573756C74733B0A0A09090909696620286E65656473486561646572526F772829290A090909090970726F63657373526573756C747328293B0A09090909656C7365092F2F206F6E6C792063616C6C207573657227732073746570';
wwv_flow_api.g_varchar2_table(270) := '2066756E6374696F6E2061667465722068656164657220726F770A090909097B0A090909090970726F63657373526573756C747328293B0A0A09090909092F2F204974277320706F737362696C6520746861742074686973206C696E652077617320656D';
wwv_flow_api.g_varchar2_table(271) := '70747920616E642074686572652773206E6F20726F77206865726520616674657220616C6C0A0909090909696620285F726573756C74732E646174612E6C656E677468203D3D3D2030290A09090909090972657475726E3B0A0A09090909095F73746570';
wwv_flow_api.g_varchar2_table(272) := '436F756E746572202B3D20726573756C74732E646174612E6C656E6774683B0A0909090909696620285F636F6E6669672E70726576696577202626205F73746570436F756E746572203E205F636F6E6669672E70726576696577290A0909090909095F70';
wwv_flow_api.g_varchar2_table(273) := '61727365722E61626F727428293B0A0909090909656C73650A0909090909097573657253746570285F726573756C74732C2073656C66293B0A090909097D0A0909097D3B0A09097D0A0A09092F2A2A0A0909202A2050617273657320696E7075742E204D';
wwv_flow_api.g_varchar2_table(274) := '6F737420757365727320776F6E2774206E6565642C20616E642073686F756C646E2774206D65737320776974682C207468652062617365496E6465780A0909202A20616E642069676E6F72654C617374526F7720706172616D65746572732E2054686579';
wwv_flow_api.g_varchar2_table(275) := '2061726520757365642062792073747265616D6572732028777261707065722066756E6374696F6E73290A0909202A207768656E20616E20696E70757420636F6D657320696E206D756C7469706C65206368756E6B732C206C696B652066726F6D206120';
wwv_flow_api.g_varchar2_table(276) := '66696C652E0A0909202A2F0A0909746869732E7061727365203D2066756E6374696F6E28696E7075742C2062617365496E6465782C2069676E6F72654C617374526F77290A09097B0A0909097661722071756F746543686172203D205F636F6E6669672E';
wwv_flow_api.g_varchar2_table(277) := '71756F746543686172207C7C202722273B0A09090969662028215F636F6E6669672E6E65776C696E65290A090909095F636F6E6669672E6E65776C696E65203D2067756573734C696E65456E64696E677328696E7075742C2071756F746543686172293B';
wwv_flow_api.g_varchar2_table(278) := '0A0A0909095F64656C696D697465724572726F72203D2066616C73653B0A09090969662028215F636F6E6669672E64656C696D69746572290A0909097B0A090909097661722064656C696D4775657373203D20677565737344656C696D6974657228696E';
wwv_flow_api.g_varchar2_table(279) := '7075742C205F636F6E6669672E6E65776C696E652C205F636F6E6669672E736B6970456D7074794C696E65732C205F636F6E6669672E636F6D6D656E74732C205F636F6E6669672E64656C696D6974657273546F4775657373293B0A0909090969662028';
wwv_flow_api.g_varchar2_table(280) := '64656C696D47756573732E7375636365737366756C290A09090909095F636F6E6669672E64656C696D69746572203D2064656C696D47756573732E6265737444656C696D697465723B0A09090909656C73650A090909097B0A09090909095F64656C696D';
wwv_flow_api.g_varchar2_table(281) := '697465724572726F72203D20747275653B092F2F20616464206572726F722061667465722070617273696E6720286F746865727769736520697420776F756C64206265206F7665727772697474656E290A09090909095F636F6E6669672E64656C696D69';
wwv_flow_api.g_varchar2_table(282) := '746572203D20506170612E44656661756C7444656C696D697465723B0A090909097D0A090909095F726573756C74732E6D6574612E64656C696D69746572203D205F636F6E6669672E64656C696D697465723B0A0909097D0A090909656C736520696628';
wwv_flow_api.g_varchar2_table(283) := '697346756E6374696F6E285F636F6E6669672E64656C696D6974657229290A0909097B0A090909095F636F6E6669672E64656C696D69746572203D205F636F6E6669672E64656C696D6974657228696E707574293B0A090909095F726573756C74732E6D';
wwv_flow_api.g_varchar2_table(284) := '6574612E64656C696D69746572203D205F636F6E6669672E64656C696D697465723B0A0909097D0A0A09090976617220706172736572436F6E666967203D20636F7079285F636F6E666967293B0A090909696620285F636F6E6669672E70726576696577';
wwv_flow_api.g_varchar2_table(285) := '202626205F636F6E6669672E686561646572290A09090909706172736572436F6E6669672E707265766965772B2B3B092F2F20746F20636F6D70656E7361746520666F722068656164657220726F770A0A0909095F696E707574203D20696E7075743B0A';
wwv_flow_api.g_varchar2_table(286) := '0909095F706172736572203D206E65772050617273657228706172736572436F6E666967293B0A0909095F726573756C7473203D205F7061727365722E7061727365285F696E7075742C2062617365496E6465782C2069676E6F72654C617374526F7729';
wwv_flow_api.g_varchar2_table(287) := '3B0A09090970726F63657373526573756C747328293B0A09090972657475726E205F706175736564203F207B206D6574613A207B207061757365643A2074727565207D207D203A20285F726573756C7473207C7C207B206D6574613A207B207061757365';
wwv_flow_api.g_varchar2_table(288) := '643A2066616C7365207D207D293B0A09097D3B0A0A0909746869732E706175736564203D2066756E6374696F6E28290A09097B0A09090972657475726E205F7061757365643B0A09097D3B0A0A0909746869732E7061757365203D2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(289) := '28290A09097B0A0909095F706175736564203D20747275653B0A0909095F7061727365722E61626F727428293B0A0909095F696E707574203D205F696E7075742E737562737472285F7061727365722E67657443686172496E6465782829293B0A09097D';
wwv_flow_api.g_varchar2_table(290) := '3B0A0A0909746869732E726573756D65203D2066756E6374696F6E28290A09097B0A09090969662873656C662E73747265616D65722E5F68616C74656429207B0A090909095F706175736564203D2066616C73653B0A0909090973656C662E7374726561';
wwv_flow_api.g_varchar2_table(291) := '6D65722E70617273654368756E6B285F696E7075742C2074727565293B0A0909097D20656C7365207B0A090909092F2F204275676669783A202336333620496E2063617365207468652070726F63657373696E67206861736E27742068616C7465642079';
wwv_flow_api.g_varchar2_table(292) := '65740A090909092F2F207761697420666F7220697420746F2068616C7420696E206F7264657220746F20726573756D650A0909090973657454696D656F757428746869732E726573756D652C2033293B0A0909097D0A09097D3B0A0A0909746869732E61';
wwv_flow_api.g_varchar2_table(293) := '626F72746564203D2066756E6374696F6E28290A09097B0A09090972657475726E205F61626F727465643B0A09097D3B0A0A0909746869732E61626F7274203D2066756E6374696F6E28290A09097B0A0909095F61626F72746564203D20747275653B0A';
wwv_flow_api.g_varchar2_table(294) := '0909095F7061727365722E61626F727428293B0A0909095F726573756C74732E6D6574612E61626F72746564203D20747275653B0A09090969662028697346756E6374696F6E285F636F6E6669672E636F6D706C65746529290A090909095F636F6E6669';
wwv_flow_api.g_varchar2_table(295) := '672E636F6D706C657465285F726573756C7473293B0A0909095F696E707574203D2027273B0A09097D3B0A0A090966756E6374696F6E2074657374456D7074794C696E65287329207B0A09090972657475726E205F636F6E6669672E736B6970456D7074';
wwv_flow_api.g_varchar2_table(296) := '794C696E6573203D3D3D202767726565647927203F20732E6A6F696E282727292E7472696D2829203D3D3D202727203A20732E6C656E677468203D3D3D203120262620735B305D2E6C656E677468203D3D3D20303B0A09097D0A0A090966756E6374696F';
wwv_flow_api.g_varchar2_table(297) := '6E2074657374466C6F6174287329207B0A09090969662028464C4F41542E7465737428732929207B0A0909090976617220666C6F617456616C7565203D207061727365466C6F61742873293B0A0909090969662028666C6F617456616C7565203E204D49';
wwv_flow_api.g_varchar2_table(298) := '4E5F464C4F415420262620666C6F617456616C7565203C204D41585F464C4F415429207B0A090909090972657475726E20747275653B0A090909097D0A0909097D0A09090972657475726E2066616C73653B0A09097D0A0A090966756E6374696F6E2070';
wwv_flow_api.g_varchar2_table(299) := '726F63657373526573756C747328290A09097B0A090909696620285F726573756C7473202626205F64656C696D697465724572726F72290A0909097B0A090909096164644572726F72282744656C696D69746572272C2027556E64657465637461626C65';
wwv_flow_api.g_varchar2_table(300) := '44656C696D69746572272C2027556E61626C6520746F206175746F2D6465746563742064656C696D6974696E67206368617261637465723B2064656661756C74656420746F205C2727202B20506170612E44656661756C7444656C696D69746572202B20';
wwv_flow_api.g_varchar2_table(301) := '275C2727293B0A090909095F64656C696D697465724572726F72203D2066616C73653B0A0909097D0A0A090909696620285F636F6E6669672E736B6970456D7074794C696E6573290A0909097B0A09090909666F7220287661722069203D20303B206920';
wwv_flow_api.g_varchar2_table(302) := '3C205F726573756C74732E646174612E6C656E6774683B20692B2B290A09090909096966202874657374456D7074794C696E65285F726573756C74732E646174615B695D29290A0909090909095F726573756C74732E646174612E73706C69636528692D';
wwv_flow_api.g_varchar2_table(303) := '2D2C2031293B0A0909097D0A0A090909696620286E65656473486561646572526F772829290A0909090966696C6C4865616465724669656C647328293B0A0A09090972657475726E206170706C79486561646572416E6444796E616D6963547970696E67';
wwv_flow_api.g_varchar2_table(304) := '416E645472616E73666F726D6174696F6E28293B0A09097D0A0A090966756E6374696F6E206E65656473486561646572526F7728290A09097B0A09090972657475726E205F636F6E6669672E686561646572202626205F6669656C64732E6C656E677468';
wwv_flow_api.g_varchar2_table(305) := '203D3D3D20303B0A09097D0A0A090966756E6374696F6E2066696C6C4865616465724669656C647328290A09097B0A09090969662028215F726573756C7473290A0909090972657475726E3B0A0A09090966756E6374696F6E2061646448656465722868';
wwv_flow_api.g_varchar2_table(306) := '6561646572290A0909097B0A0909090969662028697346756E6374696F6E285F636F6E6669672E7472616E73666F726D48656164657229290A0909090909686561646572203D205F636F6E6669672E7472616E73666F726D486561646572286865616465';
wwv_flow_api.g_varchar2_table(307) := '72293B0A0A090909095F6669656C64732E7075736828686561646572293B0A0909097D0A0A0909096966202841727261792E69734172726179285F726573756C74732E646174615B305D29290A0909097B0A09090909666F7220287661722069203D2030';
wwv_flow_api.g_varchar2_table(308) := '3B206E65656473486561646572526F7728292026262069203C205F726573756C74732E646174612E6C656E6774683B20692B2B290A09090909095F726573756C74732E646174615B695D2E666F7245616368286164644865646572293B0A0A090909095F';
wwv_flow_api.g_varchar2_table(309) := '726573756C74732E646174612E73706C69636528302C2031293B0A0909097D0A0909092F2F206966205F726573756C74732E646174615B305D206973206E6F7420616E2061727261792C2077652061726520696E20612073746570207768657265205F72';
wwv_flow_api.g_varchar2_table(310) := '6573756C74732E646174612069732074686520726F772E0A090909656C73650A090909095F726573756C74732E646174612E666F7245616368286164644865646572293B0A09097D0A0A090966756E6374696F6E2073686F756C644170706C7944796E61';
wwv_flow_api.g_varchar2_table(311) := '6D6963547970696E67286669656C6429207B0A0909092F2F2043616368652066756E6374696F6E2076616C75657320746F2061766F69642063616C6C696E6720697420666F72206561636820726F770A090909696620285F636F6E6669672E64796E616D';
wwv_flow_api.g_varchar2_table(312) := '6963547970696E6746756E6374696F6E202626205F636F6E6669672E64796E616D6963547970696E675B6669656C645D203D3D3D20756E646566696E656429207B0A090909095F636F6E6669672E64796E616D6963547970696E675B6669656C645D203D';
wwv_flow_api.g_varchar2_table(313) := '205F636F6E6669672E64796E616D6963547970696E6746756E6374696F6E286669656C64293B0A0909097D0A09090972657475726E20285F636F6E6669672E64796E616D6963547970696E675B6669656C645D207C7C205F636F6E6669672E64796E616D';
wwv_flow_api.g_varchar2_table(314) := '6963547970696E6729203D3D3D20747275653B0A09097D0A0A090966756E6374696F6E20706172736544796E616D6963286669656C642C2076616C7565290A09097B0A0909096966202873686F756C644170706C7944796E616D6963547970696E672866';
wwv_flow_api.g_varchar2_table(315) := '69656C6429290A0909097B0A090909096966202876616C7565203D3D3D20277472756527207C7C2076616C7565203D3D3D20275452554527290A090909090972657475726E20747275653B0A09090909656C7365206966202876616C7565203D3D3D2027';
wwv_flow_api.g_varchar2_table(316) := '66616C736527207C7C2076616C7565203D3D3D202746414C534527290A090909090972657475726E2066616C73653B0A09090909656C7365206966202874657374466C6F61742876616C756529290A090909090972657475726E207061727365466C6F61';
wwv_flow_api.g_varchar2_table(317) := '742876616C7565293B0A09090909656C7365206966202849534F5F444154452E746573742876616C756529290A090909090972657475726E206E657720446174652876616C7565293B0A09090909656C73650A090909090972657475726E202876616C75';
wwv_flow_api.g_varchar2_table(318) := '65203D3D3D202727203F206E756C6C203A2076616C7565293B0A0909097D0A09090972657475726E2076616C75653B0A09097D0A0A090966756E6374696F6E206170706C79486561646572416E6444796E616D6963547970696E67416E645472616E7366';
wwv_flow_api.g_varchar2_table(319) := '6F726D6174696F6E28290A09097B0A09090969662028215F726573756C7473207C7C2028215F636F6E6669672E68656164657220262620215F636F6E6669672E64796E616D6963547970696E6720262620215F636F6E6669672E7472616E73666F726D29';
wwv_flow_api.g_varchar2_table(320) := '290A0909090972657475726E205F726573756C74733B0A0A09090966756E6374696F6E2070726F63657373526F7728726F77536F757263652C2069290A0909097B0A0909090976617220726F77203D205F636F6E6669672E686561646572203F207B7D20';
wwv_flow_api.g_varchar2_table(321) := '3A205B5D3B0A0A09090909766172206A3B0A09090909666F7220286A203D20303B206A203C20726F77536F757263652E6C656E6774683B206A2B2B290A090909097B0A0909090909766172206669656C64203D206A3B0A09090909097661722076616C75';
wwv_flow_api.g_varchar2_table(322) := '65203D20726F77536F757263655B6A5D3B0A0A0909090909696620285F636F6E6669672E686561646572290A0909090909096669656C64203D206A203E3D205F6669656C64732E6C656E677468203F20275F5F7061727365645F657874726127203A205F';
wwv_flow_api.g_varchar2_table(323) := '6669656C64735B6A5D3B0A0A0909090909696620285F636F6E6669672E7472616E73666F726D290A09090909090976616C7565203D205F636F6E6669672E7472616E73666F726D2876616C75652C6669656C64293B0A0A090909090976616C7565203D20';
wwv_flow_api.g_varchar2_table(324) := '706172736544796E616D6963286669656C642C2076616C7565293B0A0A0909090909696620286669656C64203D3D3D20275F5F7061727365645F657874726127290A09090909097B0A090909090909726F775B6669656C645D203D20726F775B6669656C';
wwv_flow_api.g_varchar2_table(325) := '645D207C7C205B5D3B0A090909090909726F775B6669656C645D2E707573682876616C7565293B0A09090909097D0A0909090909656C73650A090909090909726F775B6669656C645D203D2076616C75653B0A090909097D0A0A0A09090909696620285F';
wwv_flow_api.g_varchar2_table(326) := '636F6E6669672E686561646572290A090909097B0A0909090909696620286A203E205F6669656C64732E6C656E677468290A0909090909096164644572726F7228274669656C644D69736D61746368272C2027546F6F4D616E794669656C6473272C2027';
wwv_flow_api.g_varchar2_table(327) := '546F6F206D616E79206669656C64733A2065787065637465642027202B205F6669656C64732E6C656E677468202B2027206669656C647320627574207061727365642027202B206A2C205F726F77436F756E746572202B2069293B0A0909090909656C73';
wwv_flow_api.g_varchar2_table(328) := '6520696620286A203C205F6669656C64732E6C656E677468290A0909090909096164644572726F7228274669656C644D69736D61746368272C2027546F6F4665774669656C6473272C2027546F6F20666577206669656C64733A20657870656374656420';
wwv_flow_api.g_varchar2_table(329) := '27202B205F6669656C64732E6C656E677468202B2027206669656C647320627574207061727365642027202B206A2C205F726F77436F756E746572202B2069293B0A090909097D0A0A0909090972657475726E20726F773B0A0909097D0A0A0909097661';
wwv_flow_api.g_varchar2_table(330) := '7220696E6372656D656E744279203D20313B0A09090969662028215F726573756C74732E646174615B305D207C7C2041727261792E69734172726179285F726573756C74732E646174615B305D29290A0909097B0A090909095F726573756C74732E6461';
wwv_flow_api.g_varchar2_table(331) := '7461203D205F726573756C74732E646174612E6D61702870726F63657373526F77293B0A09090909696E6372656D656E744279203D205F726573756C74732E646174612E6C656E6774683B0A0909097D0A090909656C73650A090909095F726573756C74';
wwv_flow_api.g_varchar2_table(332) := '732E64617461203D2070726F63657373526F77285F726573756C74732E646174612C2030293B0A0A0A090909696620285F636F6E6669672E686561646572202626205F726573756C74732E6D657461290A090909095F726573756C74732E6D6574612E66';
wwv_flow_api.g_varchar2_table(333) := '69656C6473203D205F6669656C64733B0A0A0909095F726F77436F756E746572202B3D20696E6372656D656E7442793B0A09090972657475726E205F726573756C74733B0A09097D0A0A090966756E6374696F6E20677565737344656C696D6974657228';
wwv_flow_api.g_varchar2_table(334) := '696E7075742C206E65776C696E652C20736B6970456D7074794C696E65732C20636F6D6D656E74732C2064656C696D6974657273546F477565737329207B0A090909766172206265737444656C696D2C206265737444656C74612C206669656C64436F75';
wwv_flow_api.g_varchar2_table(335) := '6E7450726576526F772C206D61784669656C64436F756E743B0A0A09090964656C696D6974657273546F4775657373203D2064656C696D6974657273546F4775657373207C7C205B272C272C20275C74272C20277C272C20273B272C20506170612E5245';
wwv_flow_api.g_varchar2_table(336) := '434F52445F5345502C20506170612E554E49545F5345505D3B0A0A090909666F7220287661722069203D20303B2069203C2064656C696D6974657273546F47756573732E6C656E6774683B20692B2B29207B0A090909097661722064656C696D203D2064';
wwv_flow_api.g_varchar2_table(337) := '656C696D6974657273546F47756573735B695D3B0A090909097661722064656C7461203D20302C206176674669656C64436F756E74203D20302C20656D7074794C696E6573436F756E74203D20303B0A090909096669656C64436F756E7450726576526F';
wwv_flow_api.g_varchar2_table(338) := '77203D20756E646566696E65643B0A0A090909097661722070726576696577203D206E657720506172736572287B0A0909090909636F6D6D656E74733A20636F6D6D656E74732C0A090909090964656C696D697465723A2064656C696D2C0A0909090909';
wwv_flow_api.g_varchar2_table(339) := '6E65776C696E653A206E65776C696E652C0A0909090909707265766965773A2031300A090909097D292E706172736528696E707574293B0A0A09090909666F722028766172206A203D20303B206A203C20707265766965772E646174612E6C656E677468';
wwv_flow_api.g_varchar2_table(340) := '3B206A2B2B29207B0A090909090969662028736B6970456D7074794C696E65732026262074657374456D7074794C696E6528707265766965772E646174615B6A5D2929207B0A090909090909656D7074794C696E6573436F756E742B2B3B0A0909090909';
wwv_flow_api.g_varchar2_table(341) := '09636F6E74696E75653B0A09090909097D0A0909090909766172206669656C64436F756E74203D20707265766965772E646174615B6A5D2E6C656E6774683B0A09090909096176674669656C64436F756E74202B3D206669656C64436F756E743B0A0A09';
wwv_flow_api.g_varchar2_table(342) := '0909090969662028747970656F66206669656C64436F756E7450726576526F77203D3D3D2027756E646566696E65642729207B0A0909090909096669656C64436F756E7450726576526F77203D206669656C64436F756E743B0A090909090909636F6E74';
wwv_flow_api.g_varchar2_table(343) := '696E75653B0A09090909097D0A0909090909656C736520696620286669656C64436F756E74203E203029207B0A09090909090964656C7461202B3D204D6174682E616273286669656C64436F756E74202D206669656C64436F756E7450726576526F7729';
wwv_flow_api.g_varchar2_table(344) := '3B0A0909090909096669656C64436F756E7450726576526F77203D206669656C64436F756E743B0A09090909097D0A090909097D0A0A0909090969662028707265766965772E646174612E6C656E677468203E2030290A09090909096176674669656C64';
wwv_flow_api.g_varchar2_table(345) := '436F756E74202F3D2028707265766965772E646174612E6C656E677468202D20656D7074794C696E6573436F756E74293B0A0A090909096966202828747970656F66206265737444656C7461203D3D3D2027756E646566696E656427207C7C2064656C74';
wwv_flow_api.g_varchar2_table(346) := '61203C3D206265737444656C7461290A090909090926262028747970656F66206D61784669656C64436F756E74203D3D3D2027756E646566696E656427207C7C206176674669656C64436F756E74203E206D61784669656C64436F756E74292026262061';
wwv_flow_api.g_varchar2_table(347) := '76674669656C64436F756E74203E20312E393929207B0A09090909096265737444656C7461203D2064656C74613B0A09090909096265737444656C696D203D2064656C696D3B0A09090909096D61784669656C64436F756E74203D206176674669656C64';
wwv_flow_api.g_varchar2_table(348) := '436F756E743B0A090909097D0A0909097D0A0A0909095F636F6E6669672E64656C696D69746572203D206265737444656C696D3B0A0A09090972657475726E207B0A090909097375636365737366756C3A2021216265737444656C696D2C0A0909090962';
wwv_flow_api.g_varchar2_table(349) := '65737444656C696D697465723A206265737444656C696D0A0909097D3B0A09097D0A0A090966756E6374696F6E2067756573734C696E65456E64696E677328696E7075742C2071756F746543686172290A09097B0A090909696E707574203D20696E7075';
wwv_flow_api.g_varchar2_table(350) := '742E73756273747228302C2031303234202A2031303234293B092F2F206D6178206C656E6774682031204D420A0909092F2F205265706C61636520616C6C20746865207465787420696E736964652071756F7465730A090909766172207265203D206E65';
wwv_flow_api.g_varchar2_table(351) := '7720526567457870286573636170655265674578702871756F74654368617229202B2027285B5E5D2A3F2927202B206573636170655265674578702871756F746543686172292C2027676D27293B0A090909696E707574203D20696E7075742E7265706C';
wwv_flow_api.g_varchar2_table(352) := '6163652872652C202727293B0A0A0909097661722072203D20696E7075742E73706C697428275C7227293B0A0A090909766172206E203D20696E7075742E73706C697428275C6E27293B0A0A090909766172206E417070656172734669727374203D2028';
wwv_flow_api.g_varchar2_table(353) := '6E2E6C656E677468203E2031202626206E5B305D2E6C656E677468203C20725B305D2E6C656E677468293B0A0A09090969662028722E6C656E677468203D3D3D2031207C7C206E417070656172734669727374290A0909090972657475726E20275C6E27';
wwv_flow_api.g_varchar2_table(354) := '3B0A0A090909766172206E756D576974684E203D20303B0A090909666F7220287661722069203D20303B2069203C20722E6C656E6774683B20692B2B290A0909097B0A0909090969662028725B695D5B305D203D3D3D20275C6E27290A09090909096E75';
wwv_flow_api.g_varchar2_table(355) := '6D576974684E2B2B3B0A0909097D0A0A09090972657475726E206E756D576974684E203E3D20722E6C656E677468202F2032203F20275C725C6E27203A20275C72273B0A09097D0A0A090966756E6374696F6E206164644572726F7228747970652C2063';
wwv_flow_api.g_varchar2_table(356) := '6F64652C206D73672C20726F77290A09097B0A0909095F726573756C74732E6572726F72732E70757368287B0A09090909747970653A20747970652C0A09090909636F64653A20636F64652C0A090909096D6573736167653A206D73672C0A0909090972';
wwv_flow_api.g_varchar2_table(357) := '6F773A20726F770A0909097D293B0A09097D0A097D0A0A092F2A2A2068747470733A2F2F646576656C6F7065722E6D6F7A696C6C612E6F72672F656E2D55532F646F63732F5765622F4A6176615363726970742F47756964652F526567756C61725F4578';
wwv_flow_api.g_varchar2_table(358) := '7072657373696F6E73202A2F0A0966756E6374696F6E2065736361706552656745787028737472696E67290A097B0A090972657475726E20737472696E672E7265706C616365282F5B2E2A2B3F5E247B7D28297C5B5C5D5C5C5D2F672C20275C5C242627';
wwv_flow_api.g_varchar2_table(359) := '293B202F2F202426206D65616E73207468652077686F6C65206D61746368656420737472696E670A097D0A0A092F2A2A2054686520636F72652070617273657220696D706C656D656E74732073706565647920616E6420636F7272656374204353562070';
wwv_flow_api.g_varchar2_table(360) := '617273696E67202A2F0A0966756E6374696F6E2050617273657228636F6E666967290A097B0A09092F2F20556E7061636B2074686520636F6E666967206F626A6563740A0909636F6E666967203D20636F6E666967207C7C207B7D3B0A09097661722064';
wwv_flow_api.g_varchar2_table(361) := '656C696D203D20636F6E6669672E64656C696D697465723B0A0909766172206E65776C696E65203D20636F6E6669672E6E65776C696E653B0A090976617220636F6D6D656E7473203D20636F6E6669672E636F6D6D656E74733B0A090976617220737465';
wwv_flow_api.g_varchar2_table(362) := '70203D20636F6E6669672E737465703B0A09097661722070726576696577203D20636F6E6669672E707265766965773B0A090976617220666173744D6F6465203D20636F6E6669672E666173744D6F64653B0A09097661722071756F7465436861723B0A';
wwv_flow_api.g_varchar2_table(363) := '09092F2A2A20416C6C6F777320666F72206E6F2071756F7465436861722062792073657474696E672071756F74654368617220746F20756E646566696E656420696E20636F6E666967202A2F0A090969662028636F6E6669672E71756F74654368617220';
wwv_flow_api.g_varchar2_table(364) := '3D3D3D20756E646566696E656429207B0A09090971756F746543686172203D202722273B0A09097D20656C7365207B0A09090971756F746543686172203D20636F6E6669672E71756F7465436861723B0A09097D0A090976617220657363617065436861';
wwv_flow_api.g_varchar2_table(365) := '72203D2071756F7465436861723B0A090969662028636F6E6669672E6573636170654368617220213D3D20756E646566696E656429207B0A09090965736361706543686172203D20636F6E6669672E657363617065436861723B0A09097D0A0A09092F2F';
wwv_flow_api.g_varchar2_table(366) := '2044656C696D69746572206D7573742062652076616C69640A090969662028747970656F662064656C696D20213D3D2027737472696E67270A0909097C7C20506170612E4241445F44454C494D49544552532E696E6465784F662864656C696D29203E20';
wwv_flow_api.g_varchar2_table(367) := '2D31290A09090964656C696D203D20272C273B0A0A09092F2F20436F6D6D656E7420636861726163746572206D7573742062652076616C69640A090969662028636F6D6D656E7473203D3D3D2064656C696D290A0909097468726F77206E657720457272';
wwv_flow_api.g_varchar2_table(368) := '6F722827436F6D6D656E74206368617261637465722073616D652061732064656C696D6974657227293B0A0909656C73652069662028636F6D6D656E7473203D3D3D2074727565290A090909636F6D6D656E7473203D202723273B0A0909656C73652069';
wwv_flow_api.g_varchar2_table(369) := '662028747970656F6620636F6D6D656E747320213D3D2027737472696E67270A0909097C7C20506170612E4241445F44454C494D49544552532E696E6465784F6628636F6D6D656E747329203E202D31290A090909636F6D6D656E7473203D2066616C73';
wwv_flow_api.g_varchar2_table(370) := '653B0A0A09092F2F204E65776C696E65206D7573742062652076616C69643A205C722C205C6E2C206F72205C725C6E0A0909696620286E65776C696E6520213D3D20275C6E27202626206E65776C696E6520213D3D20275C7227202626206E65776C696E';
wwv_flow_api.g_varchar2_table(371) := '6520213D3D20275C725C6E27290A0909096E65776C696E65203D20275C6E273B0A0A09092F2F20576527726520676F6E6E61206E65656420746865736520617420746865205061727365722073636F70650A090976617220637572736F72203D20303B0A';
wwv_flow_api.g_varchar2_table(372) := '09097661722061626F72746564203D2066616C73653B0A0A0909746869732E7061727365203D2066756E6374696F6E28696E7075742C2062617365496E6465782C2069676E6F72654C617374526F77290A09097B0A0909092F2F20466F7220736F6D6520';
wwv_flow_api.g_varchar2_table(373) := '726561736F6E2C20696E204368726F6D652C207468697320737065656473207468696E67732075702028213F290A09090969662028747970656F6620696E70757420213D3D2027737472696E6727290A090909097468726F77206E6577204572726F7228';
wwv_flow_api.g_varchar2_table(374) := '27496E707574206D757374206265206120737472696E6727293B0A0A202020200A0909092F2F20576520646F6E2774206E65656420746F20636F6D7075746520736F6D65206F662074686573652065766572792074696D65207061727365282920697320';
wwv_flow_api.g_varchar2_table(375) := '63616C6C65642C0A0909092F2F2062757420686176696E67207468656D20696E2061206D6F7265206C6F63616C2073636F7065207365656D7320746F20706572666F726D206265747465720A09090976617220696E7075744C656E203D20696E7075742E';
wwv_flow_api.g_varchar2_table(376) := '6C656E6774682C0A0909090964656C696D4C656E203D2064656C696D2E6C656E6774682C0A090909096E65776C696E654C656E203D206E65776C696E652E6C656E6774682C0A09090909636F6D6D656E74734C656E203D20636F6D6D656E74732E6C656E';
wwv_flow_api.g_varchar2_table(377) := '6774683B0A0909097661722073746570497346756E6374696F6E203D20697346756E6374696F6E2873746570293B0A0A0909092F2F2045737461626C697368207374617274696E672073746174650A090909637572736F72203D20303B0A090909766172';
wwv_flow_api.g_varchar2_table(378) := '2064617461203D205B5D2C206572726F7273203D205B5D2C20726F77203D205B5D2C206C617374437572736F72203D20303B0A0A0909096966202821696E707574290A0909090972657475726E2072657475726E61626C6528293B0A0A09090969662028';
wwv_flow_api.g_varchar2_table(379) := '666173744D6F6465207C7C2028666173744D6F646520213D3D2066616C736520262620696E7075742E696E6465784F662871756F74654368617229203D3D3D202D3129290A0909097B0A0909090976617220726F7773203D20696E7075742E73706C6974';
wwv_flow_api.g_varchar2_table(380) := '286E65776C696E65293B0A09090909666F7220287661722069203D20303B2069203C20726F77732E6C656E6774683B20692B2B290A090909097B0A0909090909726F77203D20726F77735B695D3B0A0909090909637572736F72202B3D20726F772E6C65';
wwv_flow_api.g_varchar2_table(381) := '6E6774683B0A0909090909696620286920213D3D20726F77732E6C656E677468202D2031290A090909090909637572736F72202B3D206E65776C696E652E6C656E6774683B0A0909090909656C7365206966202869676E6F72654C617374526F77290A09';
wwv_flow_api.g_varchar2_table(382) := '090909090972657475726E2072657475726E61626C6528293B0A090909090969662028636F6D6D656E747320262620726F772E73756273747228302C20636F6D6D656E74734C656E29203D3D3D20636F6D6D656E7473290A090909090909636F6E74696E';
wwv_flow_api.g_varchar2_table(383) := '75653B0A09090909096966202873746570497346756E6374696F6E290A09090909097B0A09090909090964617461203D205B5D3B0A09090909090970757368526F7728726F772E73706C69742864656C696D29293B0A090909090909646F537465702829';
wwv_flow_api.g_varchar2_table(384) := '3B0A0909090909096966202861626F72746564290A0909090909090972657475726E2072657475726E61626C6528293B0A09090909097D0A0909090909656C73650A09090909090970757368526F7728726F772E73706C69742864656C696D29293B0A09';
wwv_flow_api.g_varchar2_table(385) := '0909090969662028707265766965772026262069203E3D2070726576696577290A09090909097B0A09090909090964617461203D20646174612E736C69636528302C2070726576696577293B0A09090909090972657475726E2072657475726E61626C65';
wwv_flow_api.g_varchar2_table(386) := '2874727565293B0A09090909097D0A090909097D0A0909090972657475726E2072657475726E61626C6528293B0A0909097D0A0A090909766172206E65787444656C696D203D20696E7075742E696E6465784F662864656C696D2C20637572736F72293B';
wwv_flow_api.g_varchar2_table(387) := '0A090909766172206E6578744E65776C696E65203D20696E7075742E696E6465784F66286E65776C696E652C20637572736F72293B0A0909097661722071756F7465436861725265676578203D206E657720526567457870286573636170655265674578';
wwv_flow_api.g_varchar2_table(388) := '70286573636170654368617229202B206573636170655265674578702871756F746543686172292C20276727293B0A0909097661722071756F7465536561726368203D20696E7075742E696E6465784F662871756F7465436861722C20637572736F7229';
wwv_flow_api.g_varchar2_table(389) := '3B0A0909092F2F20506172736572206C6F6F700A090909666F7220283B3B290A0909097B0A090909092F2F204669656C6420686173206F70656E696E672071756F74650A0909090969662028696E7075745B637572736F725D203D3D3D2071756F746543';
wwv_flow_api.g_varchar2_table(390) := '686172290A090909097B0A09090909092F2F205374617274206F75722073656172636820666F722074686520636C6F73696E672071756F74652077686572652074686520637572736F722069730A090909090971756F7465536561726368203D20637572';
wwv_flow_api.g_varchar2_table(391) := '736F723B0A0A09090909092F2F20536B697020746865206F70656E696E672071756F74650A0909090909637572736F722B2B3B0A0A0909090909666F7220283B3B290A09090909097B0A0909090909092F2F2046696E6420636C6F73696E672071756F74';
wwv_flow_api.g_varchar2_table(392) := '650A09090909090971756F7465536561726368203D20696E7075742E696E6465784F662871756F7465436861722C2071756F7465536561726368202B2031293B0A0A0909090909092F2F4E6F206F746865722071756F7465732061726520666F756E6420';
wwv_flow_api.g_varchar2_table(393) := '2D206E6F206F746865722064656C696D69746572730A0909090909096966202871756F7465536561726368203D3D3D202D31290A0909090909097B0A09090909090909696620282169676E6F72654C617374526F7729207B0A09090909090909092F2F20';
wwv_flow_api.g_varchar2_table(394) := '4E6F20636C6F73696E672071756F74652E2E2E2077686174206120706974790A09090909090909096572726F72732E70757368287B0A090909090909090909747970653A202751756F746573272C0A090909090909090909636F64653A20274D69737369';
wwv_flow_api.g_varchar2_table(395) := '6E6751756F746573272C0A0909090909090909096D6573736167653A202751756F746564206669656C6420756E7465726D696E61746564272C0A090909090909090909726F773A20646174612E6C656E6774682C092F2F20726F77206861732079657420';
wwv_flow_api.g_varchar2_table(396) := '746F20626520696E7365727465640A090909090909090909696E6465783A20637572736F720A09090909090909097D293B0A090909090909097D0A0909090909090972657475726E2066696E69736828293B0A0909090909097D0A0A0909090909092F2F';
wwv_flow_api.g_varchar2_table(397) := '20436C6F73696E672071756F746520617420454F460A0909090909096966202871756F7465536561726368203D3D3D20696E7075744C656E202D2031290A0909090909097B0A090909090909097661722076616C7565203D20696E7075742E7375627374';
wwv_flow_api.g_varchar2_table(398) := '72696E6728637572736F722C2071756F7465536561726368292E7265706C6163652871756F74654368617252656765782C2071756F746543686172293B0A0909090909090972657475726E2066696E6973682876616C7565293B0A0909090909097D0A0A';
wwv_flow_api.g_varchar2_table(399) := '0909090909092F2F20496620746869732071756F746520697320657363617065642C20697427732070617274206F662074686520646174613B20736B69702069740A0909090909092F2F204966207468652071756F746520636861726163746572206973';
wwv_flow_api.g_varchar2_table(400) := '2074686520657363617065206368617261637465722C207468656E20636865636B20696620746865206E657874206368617261637465722069732074686520657363617065206368617261637465720A0909090909096966202871756F74654368617220';
wwv_flow_api.g_varchar2_table(401) := '3D3D3D20657363617065436861722026262020696E7075745B71756F7465536561726368202B20315D203D3D3D2065736361706543686172290A0909090909097B0A0909090909090971756F74655365617263682B2B3B0A09090909090909636F6E7469';
wwv_flow_api.g_varchar2_table(402) := '6E75653B0A0909090909097D0A0A0909090909092F2F204966207468652071756F746520636861726163746572206973206E6F742074686520657363617065206368617261637465722C207468656E20636865636B206966207468652070726576696F75';
wwv_flow_api.g_varchar2_table(403) := '7320636861726163746572207761732074686520657363617065206368617261637465720A0909090909096966202871756F74654368617220213D3D20657363617065436861722026262071756F746553656172636820213D3D203020262620696E7075';
wwv_flow_api.g_varchar2_table(404) := '745B71756F7465536561726368202D20315D203D3D3D2065736361706543686172290A0909090909097B0A09090909090909636F6E74696E75653B0A0909090909097D0A0A0909090909092F2F20436865636B20757020746F206E65787444656C696D20';
wwv_flow_api.g_varchar2_table(405) := '6F72206E6578744E65776C696E652C2077686963686576657220697320636C6F736573740A09090909090976617220636865636B5570546F203D206E6578744E65776C696E65203D3D3D202D31203F206E65787444656C696D203A204D6174682E6D696E';
wwv_flow_api.g_varchar2_table(406) := '286E65787444656C696D2C206E6578744E65776C696E65293B0A090909090909766172207370616365734265747765656E51756F7465416E6444656C696D69746572203D20657874726153706163657328636865636B5570546F293B0A0A090909090909';
wwv_flow_api.g_varchar2_table(407) := '2F2F20436C6F73696E672071756F746520666F6C6C6F7765642062792064656C696D69746572206F722027756E6E656365737361727920737061636573202B2064656C696D69746572270A09090909090969662028696E7075745B71756F746553656172';
wwv_flow_api.g_varchar2_table(408) := '6368202B2031202B207370616365734265747765656E51756F7465416E6444656C696D697465725D203D3D3D2064656C696D290A0909090909097B0A09090909090909726F772E7075736828696E7075742E737562737472696E6728637572736F722C20';
wwv_flow_api.g_varchar2_table(409) := '71756F7465536561726368292E7265706C6163652871756F74654368617252656765782C2071756F74654368617229293B0A09090909090909637572736F72203D2071756F7465536561726368202B2031202B207370616365734265747765656E51756F';
wwv_flow_api.g_varchar2_table(410) := '7465416E6444656C696D69746572202B2064656C696D4C656E3B0A0A090909090909092F2F204966206368617220616674657220666F6C6C6F77696E672064656C696D69746572206973206E6F742071756F7465436861722C2077652066696E64206E65';
wwv_flow_api.g_varchar2_table(411) := '78742071756F7465206368617220706F736974696F6E0A0909090909090969662028696E7075745B71756F7465536561726368202B2031202B207370616365734265747765656E51756F7465416E6444656C696D69746572202B2064656C696D4C656E5D';
wwv_flow_api.g_varchar2_table(412) := '20213D3D2071756F746543686172290A090909090909097B0A090909090909090971756F7465536561726368203D20696E7075742E696E6465784F662871756F7465436861722C20637572736F72293B0A090909090909097D0A090909090909096E6578';
wwv_flow_api.g_varchar2_table(413) := '7444656C696D203D20696E7075742E696E6465784F662864656C696D2C20637572736F72293B0A090909090909096E6578744E65776C696E65203D20696E7075742E696E6465784F66286E65776C696E652C20637572736F72293B0A0909090909090962';
wwv_flow_api.g_varchar2_table(414) := '7265616B3B0A0909090909097D0A0A090909090909766172207370616365734265747765656E51756F7465416E644E65774C696E65203D206578747261537061636573286E6578744E65776C696E65293B0A0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(415) := '202020202020202F2F20436C6F73696E672071756F746520666F6C6C6F776564206279206E65776C696E65206F722027756E6E656365737361727920737061636573202B206E65774C696E65270A20202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(416) := '20200A2020202020202020202020202020202020202020202020206C6574206C61737443686172203D20696E7075742E7375627374722871756F7465536561726368202B2031202B207370616365734265747765656E51756F7465416E644E65774C696E';
wwv_flow_api.g_varchar2_table(417) := '652C206E65776C696E654C656E293B0A2020202020202020202020202020202020202020202020200A20202020202020202020202020202020202020202020202069662028206C61737443686172203D3D3D206E65776C696E65200A2F2A202020202020';
wwv_flow_api.g_varchar2_table(418) := '202020202020202020202020202020202020202020207C7C206C61737443686172203D3D3D20537472696E672E66726F6D43686172436F646528313329200A202020202020202020202020202020202020202020202020202020207C7C206C6173744368';
wwv_flow_api.g_varchar2_table(419) := '6172203D3D3D20537472696E672E66726F6D43686172436F646528313029200A202020202020202020202020202020202020202020202020202020207C7C206C617374436861722E7265706C616365282F5B5E5C7832302D5C7837455D2F672C20272729';
wwv_flow_api.g_varchar2_table(420) := '203D3D2027272A2F0A20202020202020202020202020202020202020202020202020202020290A0909090909097B0A09090909090909726F772E7075736828696E7075742E737562737472696E6728637572736F722C2071756F7465536561726368292E';
wwv_flow_api.g_varchar2_table(421) := '7265706C6163652871756F74654368617252656765782C2071756F74654368617229293B0A0909090909090973617665526F772871756F7465536561726368202B2031202B207370616365734265747765656E51756F7465416E644E65774C696E65202B';
wwv_flow_api.g_varchar2_table(422) := '206E65776C696E654C656E293B0A090909090909096E65787444656C696D203D20696E7075742E696E6465784F662864656C696D2C20637572736F72293B092F2F2062656361757365207765206D6179206861766520736B697070656420746865206E65';
wwv_flow_api.g_varchar2_table(423) := '787444656C696D20696E207468652071756F746564206669656C640A0909090909090971756F7465536561726368203D20696E7075742E696E6465784F662871756F7465436861722C20637572736F72293B092F2F2077652073656172636820666F7220';
wwv_flow_api.g_varchar2_table(424) := '66697273742071756F746520696E206E657874206C696E650A0A090909090909096966202873746570497346756E6374696F6E290A090909090909097B0A0909090909090909646F5374657028293B0A09090909090909096966202861626F7274656429';
wwv_flow_api.g_varchar2_table(425) := '0A09090909090909090972657475726E2072657475726E61626C6528293B0A090909090909097D0A0A09090909090909696620287072657669657720262620646174612E6C656E677468203E3D2070726576696577290A09090909090909097265747572';
wwv_flow_api.g_varchar2_table(426) := '6E2072657475726E61626C652874727565293B0A0A09090909090909627265616B3B0A0909090909097D0A0A0A0909090909092F2F20436865636B7320666F722076616C696420636C6F73696E672071756F7465732061726520636F6D706C6574652028';
wwv_flow_api.g_varchar2_table(427) := '657363617065642071756F746573206F722071756F746520666F6C6C6F77656420627920454F462F64656C696D697465722F6E65776C696E6529202D2D20617373756D652074686573652071756F746573206172652070617274206F6620616E20696E76';
wwv_flow_api.g_varchar2_table(428) := '616C6964207465787420737472696E670A2F2A0909090909096572726F72732E70757368287B0A09090909090909747970653A202751756F746573272C0A09090909090909636F64653A2027496E76616C696451756F746573272C0A090909090909096D';
wwv_flow_api.g_varchar2_table(429) := '6573736167653A2027547261696C696E672071756F7465206F6E2071756F746564206669656C64206973206D616C666F726D6564272C0A09090909090909726F773A20646174612E6C656E6774682C092F2F20726F77206861732079657420746F206265';
wwv_flow_api.g_varchar2_table(430) := '20696E7365727465640A09090909090909696E6465783A20637572736F720A0909090909097D293B0A202A2F20202020202020202020202020202020202020202020200A09090909090971756F74655365617263682B2B3B0A090909090909636F6E7469';
wwv_flow_api.g_varchar2_table(431) := '6E75653B0A0A09090909097D0A0A0909090909636F6E74696E75653B0A090909097D0A0A090909092F2F20436F6D6D656E7420666F756E64206174207374617274206F66206E6577206C696E650A0909090969662028636F6D6D656E747320262620726F';
wwv_flow_api.g_varchar2_table(432) := '772E6C656E677468203D3D3D203020262620696E7075742E73756273747228637572736F722C20636F6D6D656E74734C656E29203D3D3D20636F6D6D656E7473290A090909097B0A0909090909696620286E6578744E65776C696E65203D3D3D202D3129';
wwv_flow_api.g_varchar2_table(433) := '092F2F20436F6D6D656E7420656E647320617420454F460A09090909090972657475726E2072657475726E61626C6528293B0A0909090909637572736F72203D206E6578744E65776C696E65202B206E65776C696E654C656E3B0A09090909096E657874';
wwv_flow_api.g_varchar2_table(434) := '4E65776C696E65203D20696E7075742E696E6465784F66286E65776C696E652C20637572736F72293B0A09090909096E65787444656C696D203D20696E7075742E696E6465784F662864656C696D2C20637572736F72293B0A0909090909636F6E74696E';
wwv_flow_api.g_varchar2_table(435) := '75653B0A090909097D0A0A090909092F2F204E6578742064656C696D6974657220636F6D6573206265666F7265206E657874206E65776C696E652C20736F207765277665207265616368656420656E64206F66206669656C640A09090909696620286E65';
wwv_flow_api.g_varchar2_table(436) := '787444656C696D20213D3D202D3120262620286E65787444656C696D203C206E6578744E65776C696E65207C7C206E6578744E65776C696E65203D3D3D202D3129290A090909097B0A09090909092F2F20776520636865636B2C20696620776520686176';
wwv_flow_api.g_varchar2_table(437) := '652071756F7465732C20626563617573652064656C696D697465722063686172206D61792062652070617274206F66206669656C6420656E636C6F73656420696E2071756F7465730A09090909096966202871756F746553656172636820213D3D202D31';
wwv_flow_api.g_varchar2_table(438) := '29207B0A0909090909092F2F20776520686176652071756F7465732C20736F2077652074727920746F2066696E6420746865206E6578742064656C696D69746572206E6F7420656E636C6F73656420696E2071756F74657320616E6420616C736F206E65';
wwv_flow_api.g_varchar2_table(439) := '7874207374617274696E672071756F746520636861720A090909090909766172206E65787444656C696D4F626A203D206765744E657874556E716F74656444656C696D69746572286E65787444656C696D2C2071756F74655365617263682C206E657874';
wwv_flow_api.g_varchar2_table(440) := '4E65776C696E65293B0A0A0909090909092F2F2069662077652068617665206E6578742064656C696D697465722063686172207768696368206973206E6F7420656E636C6F73656420696E2071756F7465730A090909090909696620286E65787444656C';
wwv_flow_api.g_varchar2_table(441) := '696D4F626A20262620747970656F66206E65787444656C696D4F626A2E6E65787444656C696D20213D3D2027756E646566696E65642729207B0A090909090909096E65787444656C696D203D206E65787444656C696D4F626A2E6E65787444656C696D3B';
wwv_flow_api.g_varchar2_table(442) := '0A0909090909090971756F7465536561726368203D206E65787444656C696D4F626A2E71756F74655365617263683B0A09090909090909726F772E7075736828696E7075742E737562737472696E6728637572736F722C206E65787444656C696D29293B';
wwv_flow_api.g_varchar2_table(443) := '0A09090909090909637572736F72203D206E65787444656C696D202B2064656C696D4C656E3B0A090909090909092F2F207765206C6F6F6B20666F72206E6578742064656C696D6974657220636861720A090909090909096E65787444656C696D203D20';
wwv_flow_api.g_varchar2_table(444) := '696E7075742E696E6465784F662864656C696D2C20637572736F72293B0A09090909090909636F6E74696E75653B0A0909090909097D0A09090909097D20656C7365207B0A090909090909726F772E7075736828696E7075742E737562737472696E6728';
wwv_flow_api.g_varchar2_table(445) := '637572736F722C206E65787444656C696D29293B0A090909090909637572736F72203D206E65787444656C696D202B2064656C696D4C656E3B0A0909090909096E65787444656C696D203D20696E7075742E696E6465784F662864656C696D2C20637572';
wwv_flow_api.g_varchar2_table(446) := '736F72293B0A090909090909636F6E74696E75653B0A09090909097D0A090909097D0A0A090909092F2F20456E64206F6620726F770A09090909696620286E6578744E65776C696E6520213D3D202D31290A090909097B0A0909090909726F772E707573';
wwv_flow_api.g_varchar2_table(447) := '6828696E7075742E737562737472696E6728637572736F722C206E6578744E65776C696E6529293B0A090909090973617665526F77286E6578744E65776C696E65202B206E65776C696E654C656E293B0A0A09090909096966202873746570497346756E';
wwv_flow_api.g_varchar2_table(448) := '6374696F6E290A09090909097B0A090909090909646F5374657028293B0A0909090909096966202861626F72746564290A0909090909090972657475726E2072657475726E61626C6528293B0A09090909097D0A0A090909090969662028707265766965';
wwv_flow_api.g_varchar2_table(449) := '7720262620646174612E6C656E677468203E3D2070726576696577290A09090909090972657475726E2072657475726E61626C652874727565293B0A0A0909090909636F6E74696E75653B0A090909097D0A0A09090909627265616B3B0A0909097D0A0A';
wwv_flow_api.g_varchar2_table(450) := '0A09090972657475726E2066696E69736828293B0A0A0A09090966756E6374696F6E2070757368526F7728726F77290A0909097B0A09090909646174612E7075736828726F77293B0A090909096C617374437572736F72203D20637572736F723B0A0909';
wwv_flow_api.g_varchar2_table(451) := '097D0A0A0909092F2A2A0A202020202020202020202020202A20636865636B73206966207468657265206172652065787472612073706163657320616674657220636C6F73696E672071756F746520616E6420676976656E20696E64657820776974686F';
wwv_flow_api.g_varchar2_table(452) := '757420616E7920746578740A202020202020202020202020202A206966205965732C2072657475726E7320746865206E756D626572206F66207370616365730A202020202020202020202020202A2F0A09090966756E6374696F6E206578747261537061';
wwv_flow_api.g_varchar2_table(453) := '63657328696E64657829207B0A090909097661722073706163654C656E677468203D20303B0A0909090969662028696E64657820213D3D202D3129207B0A090909090976617220746578744265747765656E436C6F73696E6751756F7465416E64496E64';
wwv_flow_api.g_varchar2_table(454) := '6578203D20696E7075742E737562737472696E672871756F7465536561726368202B20312C20696E646578293B0A090909090969662028746578744265747765656E436C6F73696E6751756F7465416E64496E6465782026262074657874426574776565';
wwv_flow_api.g_varchar2_table(455) := '6E436C6F73696E6751756F7465416E64496E6465782E7472696D2829203D3D3D20272729207B0A09090909090973706163654C656E677468203D20746578744265747765656E436C6F73696E6751756F7465416E64496E6465782E6C656E6774683B0A09';
wwv_flow_api.g_varchar2_table(456) := '090909097D0A090909097D0A0909090972657475726E2073706163654C656E6774683B0A0909097D0A0A0909092F2A2A0A090909202A20417070656E6473207468652072656D61696E696E6720696E7075742066726F6D20637572736F7220746F207468';
wwv_flow_api.g_varchar2_table(457) := '6520656E6420696E746F0A090909202A20726F772C2073617665732074686520726F772C2063616C6C7320737465702C20616E642072657475726E732074686520726573756C74732E0A090909202A2F0A09090966756E6374696F6E2066696E69736828';
wwv_flow_api.g_varchar2_table(458) := '76616C7565290A0909097B0A090909096966202869676E6F72654C617374526F77290A090909090972657475726E2072657475726E61626C6528293B0A0909090969662028747970656F662076616C7565203D3D3D2027756E646566696E656427290A09';
wwv_flow_api.g_varchar2_table(459) := '0909090976616C7565203D20696E7075742E73756273747228637572736F72293B0A09090909726F772E707573682876616C7565293B0A09090909637572736F72203D20696E7075744C656E3B092F2F20696D706F7274616E7420696E20636173652070';
wwv_flow_api.g_varchar2_table(460) := '617273696E67206973207061757365640A0909090970757368526F7728726F77293B0A090909096966202873746570497346756E6374696F6E290A0909090909646F5374657028293B0A0909090972657475726E2072657475726E61626C6528293B0A09';
wwv_flow_api.g_varchar2_table(461) := '09097D0A0A0909092F2A2A0A090909202A20417070656E6473207468652063757272656E7420726F7720746F2074686520726573756C74732E20497420736574732074686520637572736F720A090909202A20746F206E6577437572736F7220616E6420';
wwv_flow_api.g_varchar2_table(462) := '66696E647320746865206E6578744E65776C696E652E205468652063616C6C65722073686F756C640A090909202A2074616B65206361726520746F20657865637574652075736572277320737465702066756E6374696F6E20616E6420636865636B2066';
wwv_flow_api.g_varchar2_table(463) := '6F720A090909202A207072657669657720616E6420656E642070617273696E67206966206E65636573736172792E0A090909202A2F0A09090966756E6374696F6E2073617665526F77286E6577437572736F72290A0909097B0A09090909637572736F72';
wwv_flow_api.g_varchar2_table(464) := '203D206E6577437572736F723B0A0909090970757368526F7728726F77293B0A09090909726F77203D205B5D3B0A090909096E6578744E65776C696E65203D20696E7075742E696E6465784F66286E65776C696E652C20637572736F72293B0A0909097D';
wwv_flow_api.g_varchar2_table(465) := '0A0A0909092F2A2A2052657475726E7320616E206F626A65637420776974682074686520726573756C74732C206572726F72732C20616E64206D6574612E202A2F0A09090966756E6374696F6E2072657475726E61626C652873746F707065642C207374';
wwv_flow_api.g_varchar2_table(466) := '6570290A0909097B0A0909090976617220697353746570203D2073746570207C7C2066616C73653B0A0909090972657475726E207B0A0909090909646174613A20697353746570203F20646174615B305D20203A20646174612C0A09090909096572726F';
wwv_flow_api.g_varchar2_table(467) := '72733A206572726F72732C0A09090909096D6574613A207B0A09090909090964656C696D697465723A2064656C696D2C0A0909090909096C696E65627265616B3A206E65776C696E652C0A09090909090961626F727465643A2061626F727465642C0A09';
wwv_flow_api.g_varchar2_table(468) := '09090909097472756E63617465643A20212173746F707065642C0A090909090909637572736F723A206C617374437572736F72202B202862617365496E646578207C7C2030290A09090909097D0A090909097D3B0A0909097D0A0A0909092F2A2A204578';
wwv_flow_api.g_varchar2_table(469) := '656375746573207468652075736572277320737465702066756E6374696F6E20616E642072657365747320646174612026206572726F72732E202A2F0A09090966756E6374696F6E20646F5374657028290A0909097B0A09090909737465702872657475';
wwv_flow_api.g_varchar2_table(470) := '726E61626C6528756E646566696E65642C207472756529293B0A0909090964617461203D205B5D3B0A090909096572726F7273203D205B5D3B0A0909097D0A0A0909092F2A2A2047657473207468652064656C696D69746572206368617261637465722C';
wwv_flow_api.g_varchar2_table(471) := '207768696368206973206E6F7420696E73696465207468652071756F746564206669656C64202A2F0A09090966756E6374696F6E206765744E657874556E716F74656444656C696D69746572286E65787444656C696D2C2071756F74655365617263682C';
wwv_flow_api.g_varchar2_table(472) := '206E65774C696E6529207B0A0909090976617220726573756C74203D207B0A09090909096E65787444656C696D3A20756E646566696E65642C0A090909090971756F74655365617263683A20756E646566696E65640A090909097D3B0A090909092F2F20';
wwv_flow_api.g_varchar2_table(473) := '67657420746865206E65787420636C6F73696E672071756F7465206368617261637465720A09090909766172206E65787451756F7465536561726368203D20696E7075742E696E6465784F662871756F7465436861722C2071756F746553656172636820';
wwv_flow_api.g_varchar2_table(474) := '2B2031293B0A0A090909092F2F206966206E6578742064656C696D697465722069732070617274206F662061206669656C6420656E636C6F73656420696E2071756F7465730A09090909696620286E65787444656C696D203E2071756F74655365617263';
wwv_flow_api.g_varchar2_table(475) := '68202626206E65787444656C696D203C206E65787451756F746553656172636820262620286E65787451756F7465536561726368203C206E65774C696E65207C7C206E65774C696E65203D3D3D202D312929207B0A09090909092F2F2067657420746865';
wwv_flow_api.g_varchar2_table(476) := '206E6578742064656C696D69746572206368617261637465722061667465722074686973206F6E650A0909090909766172206E6578744E65787444656C696D203D20696E7075742E696E6465784F662864656C696D2C206E65787451756F746553656172';
wwv_flow_api.g_varchar2_table(477) := '6368293B0A0A09090909092F2F206966207468657265206973206E6F206E6578742064656C696D697465722C2072657475726E2064656661756C7420726573756C740A0909090909696620286E6578744E65787444656C696D203D3D3D202D3129207B0A';
wwv_flow_api.g_varchar2_table(478) := '09090909090972657475726E20726573756C743B0A09090909097D0A09090909092F2F2066696E6420746865206E657874206F70656E696E672071756F7465206368617220706F736974696F6E0A0909090909696620286E6578744E65787444656C696D';
wwv_flow_api.g_varchar2_table(479) := '203E206E65787451756F746553656172636829207B0A0909090909096E65787451756F7465536561726368203D20696E7075742E696E6465784F662871756F7465436861722C206E65787451756F7465536561726368202B2031293B0A09090909097D0A';
wwv_flow_api.g_varchar2_table(480) := '09090909092F2F2074727920746F2067657420746865206E6578742064656C696D6974657220706F736974696F6E0A0909090909726573756C74203D206765744E657874556E716F74656444656C696D69746572286E6578744E65787444656C696D2C20';
wwv_flow_api.g_varchar2_table(481) := '6E65787451756F74655365617263682C206E65774C696E65293B0A090909097D20656C7365207B0A0909090909726573756C74203D207B0A0909090909096E65787444656C696D3A206E65787444656C696D2C0A09090909090971756F74655365617263';
wwv_flow_api.g_varchar2_table(482) := '683A2071756F74655365617263680A09090909097D3B0A090909097D0A0A0909090972657475726E20726573756C743B0A0909097D0A09097D3B0A0A09092F2A2A2053657473207468652061626F727420666C6167202A2F0A0909746869732E61626F72';
wwv_flow_api.g_varchar2_table(483) := '74203D2066756E6374696F6E28290A09097B0A09090961626F72746564203D20747275653B0A09097D3B0A0A09092F2A2A20476574732074686520637572736F7220706F736974696F6E202A2F0A0909746869732E67657443686172496E646578203D20';
wwv_flow_api.g_varchar2_table(484) := '66756E6374696F6E28290A09097B0A09090972657475726E20637572736F723B0A09097D3B0A097D0A0A0A0966756E6374696F6E206E6577576F726B657228290A097B0A09096966202821506170612E574F524B4552535F535550504F52544544290A09';
wwv_flow_api.g_varchar2_table(485) := '090972657475726E2066616C73653B0A0A090976617220776F726B657255726C203D20676574576F726B6572426C6F6228293B0A09097661722077203D206E657720676C6F62616C2E576F726B657228776F726B657255726C293B0A0909772E6F6E6D65';
wwv_flow_api.g_varchar2_table(486) := '7373616765203D206D61696E54687265616452656365697665644D6573736167653B0A0909772E6964203D20776F726B65724964436F756E7465722B2B3B0A0909776F726B6572735B772E69645D203D20773B0A090972657475726E20773B0A097D0A0A';
wwv_flow_api.g_varchar2_table(487) := '092F2A2A2043616C6C6261636B207768656E206D61696E207468726561642072656365697665732061206D657373616765202A2F0A0966756E6374696F6E206D61696E54687265616452656365697665644D6573736167652865290A097B0A0909766172';
wwv_flow_api.g_varchar2_table(488) := '206D7367203D20652E646174613B0A090976617220776F726B6572203D20776F726B6572735B6D73672E776F726B657249645D3B0A09097661722061626F72746564203D2066616C73653B0A0A0909696620286D73672E6572726F72290A090909776F72';
wwv_flow_api.g_varchar2_table(489) := '6B65722E757365724572726F72286D73672E6572726F722C206D73672E66696C65293B0A0909656C736520696620286D73672E726573756C7473202626206D73672E726573756C74732E64617461290A09097B0A0909097661722061626F7274203D2066';
wwv_flow_api.g_varchar2_table(490) := '756E6374696F6E2829207B0A0909090961626F72746564203D20747275653B0A09090909636F6D706C657465576F726B6572286D73672E776F726B657249642C207B20646174613A205B5D2C206572726F72733A205B5D2C206D6574613A207B2061626F';
wwv_flow_api.g_varchar2_table(491) := '727465643A2074727565207D207D293B0A0909097D3B0A0A0909097661722068616E646C65203D207B0A0909090961626F72743A2061626F72742C0A0909090970617573653A206E6F74496D706C656D656E7465642C0A09090909726573756D653A206E';
wwv_flow_api.g_varchar2_table(492) := '6F74496D706C656D656E7465640A0909097D3B0A0A09090969662028697346756E6374696F6E28776F726B65722E757365725374657029290A0909097B0A09090909666F7220287661722069203D20303B2069203C206D73672E726573756C74732E6461';
wwv_flow_api.g_varchar2_table(493) := '74612E6C656E6774683B20692B2B290A090909097B0A0909090909776F726B65722E7573657253746570287B0A090909090909646174613A206D73672E726573756C74732E646174615B695D2C0A0909090909096572726F72733A206D73672E72657375';
wwv_flow_api.g_varchar2_table(494) := '6C74732E6572726F72732C0A0909090909096D6574613A206D73672E726573756C74732E6D6574610A09090909097D2C2068616E646C65293B0A09090909096966202861626F72746564290A090909090909627265616B3B0A090909097D0A0909090964';
wwv_flow_api.g_varchar2_table(495) := '656C657465206D73672E726573756C74733B092F2F2066726565206D656D6F727920415341500A0909097D0A090909656C73652069662028697346756E6374696F6E28776F726B65722E757365724368756E6B29290A0909097B0A09090909776F726B65';
wwv_flow_api.g_varchar2_table(496) := '722E757365724368756E6B286D73672E726573756C74732C2068616E646C652C206D73672E66696C65293B0A0909090964656C657465206D73672E726573756C74733B0A0909097D0A09097D0A0A0909696620286D73672E66696E697368656420262620';
wwv_flow_api.g_varchar2_table(497) := '2161626F72746564290A090909636F6D706C657465576F726B6572286D73672E776F726B657249642C206D73672E726573756C7473293B0A097D0A0A0966756E6374696F6E20636F6D706C657465576F726B657228776F726B657249642C20726573756C';
wwv_flow_api.g_varchar2_table(498) := '747329207B0A090976617220776F726B6572203D20776F726B6572735B776F726B657249645D3B0A090969662028697346756E6374696F6E28776F726B65722E75736572436F6D706C65746529290A090909776F726B65722E75736572436F6D706C6574';
wwv_flow_api.g_varchar2_table(499) := '6528726573756C7473293B0A0909776F726B65722E7465726D696E61746528293B0A090964656C65746520776F726B6572735B776F726B657249645D3B0A097D0A0A0966756E6374696F6E206E6F74496D706C656D656E7465642829207B0A0909746872';
wwv_flow_api.g_varchar2_table(500) := '6F77206E6577204572726F7228274E6F7420696D706C656D656E7465642E27293B0A097D0A0A092F2A2A2043616C6C6261636B207768656E20776F726B6572207468726561642072656365697665732061206D657373616765202A2F0A0966756E637469';
wwv_flow_api.g_varchar2_table(501) := '6F6E20776F726B657254687265616452656365697665644D6573736167652865290A097B0A0909766172206D7367203D20652E646174613B0A0A090969662028747970656F6620506170612E574F524B45525F4944203D3D3D2027756E646566696E6564';
wwv_flow_api.g_varchar2_table(502) := '27202626206D7367290A090909506170612E574F524B45525F4944203D206D73672E776F726B657249643B0A0A090969662028747970656F66206D73672E696E707574203D3D3D2027737472696E6727290A09097B0A090909676C6F62616C2E706F7374';
wwv_flow_api.g_varchar2_table(503) := '4D657373616765287B0A09090909776F726B657249643A20506170612E574F524B45525F49442C0A09090909726573756C74733A20506170612E7061727365286D73672E696E7075742C206D73672E636F6E666967292C0A0909090966696E6973686564';
wwv_flow_api.g_varchar2_table(504) := '3A20747275650A0909097D293B0A09097D0A0909656C7365206966202828676C6F62616C2E46696C65202626206D73672E696E70757420696E7374616E63656F662046696C6529207C7C206D73672E696E70757420696E7374616E63656F66204F626A65';
wwv_flow_api.g_varchar2_table(505) := '637429092F2F207468616E6B20796F752C2053616661726920287365652069737375652023313036290A09097B0A09090976617220726573756C7473203D20506170612E7061727365286D73672E696E7075742C206D73672E636F6E666967293B0A0909';
wwv_flow_api.g_varchar2_table(506) := '0969662028726573756C7473290A09090909676C6F62616C2E706F73744D657373616765287B0A0909090909776F726B657249643A20506170612E574F524B45525F49442C0A0909090909726573756C74733A20726573756C74732C0A09090909096669';
wwv_flow_api.g_varchar2_table(507) := '6E69736865643A20747275650A090909097D293B0A09097D0A097D0A0A092F2A2A204D616B65732061206465657020636F7079206F6620616E206172726179206F72206F626A65637420286D6F73746C7929202A2F0A0966756E6374696F6E20636F7079';
wwv_flow_api.g_varchar2_table(508) := '286F626A290A097B0A090969662028747970656F66206F626A20213D3D20276F626A65637427207C7C206F626A203D3D3D206E756C6C290A09090972657475726E206F626A3B0A090976617220637079203D2041727261792E69734172726179286F626A';
wwv_flow_api.g_varchar2_table(509) := '29203F205B5D203A207B7D3B0A0909666F722028766172206B657920696E206F626A290A0909096370795B6B65795D203D20636F7079286F626A5B6B65795D293B0A090972657475726E206370793B0A097D0A0A0966756E6374696F6E2062696E644675';
wwv_flow_api.g_varchar2_table(510) := '6E6374696F6E28662C2073656C66290A097B0A090972657475726E2066756E6374696F6E2829207B20662E6170706C792873656C662C20617267756D656E7473293B207D3B0A097D0A0A0966756E6374696F6E20697346756E6374696F6E2866756E6329';
wwv_flow_api.g_varchar2_table(511) := '0A097B0A090972657475726E20747970656F662066756E63203D3D3D202766756E6374696F6E273B0A097D0A0A0972657475726E20506170613B0A7D29293B0A';
null;
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>111
,p_default_id_offset=>77418401682728923
,p_default_owner=>'MISO'
);
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(108880582990729579)
,p_plugin_id=>wwv_flow_api.id(107940437892544298)
,p_file_name=>'js/papaparse.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
