prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>121
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(95153343667962421)
,p_name=>'Home'
,p_alias=>'HOME1'
,p_step_title=>'Home'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220205080915'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(89462152375669802)
,p_plug_name=>'incremental/tickets/cursor.json?start_time=1640995200'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(95051951925962343)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'curl https://misorobotics.zendesk.com/api/v2/incremental/tickets/cursor.json?start_time=1640995200 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" > 1640995200__01012022_000000_gmt.js'
||'on',
'',
'C:\brink\Pos>curl https://misorobotics.zendesk.com/api/v2/incremental/tickets/cursor.json?start_time=1640995200 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" > 1640995200__01012022_'
||'000000_gmt.json',
'  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current',
'                                 Dload  Upload   Total   Spent    Left  Speed',
'  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0*   Trying 104.16.51.111:443...',
'* Connected to misorobotics.zendesk.com (104.16.51.111) port 443 (#0)',
'* schannel: disabled automatic use of client certificate',
'* schannel: ALPN, offering http/1.1',
'* schannel: ALPN, server accepted to use http/1.1',
'* Server auth using Basic with user ''sscudder@misorobotics.com/token''',
'> GET /api/v2/incremental/tickets/cursor.json?start_time=1640995200 HTTP/1.1',
'> Host: misorobotics.zendesk.com',
'> Authorization: Basic c3NjdWRkZXJAbWlzb3JvYm90aWNzLmNvbS90b2tlbjozT2R5ZXdxTEpCWFRhMndBRFNkQkhITHNPOHQ2bnZ0eUZkRDNtMzht',
'> User-Agent: curl/7.79.1',
'> Accept: */*',
'> Content-Type: application/json',
'>',
'  0     0    0     0    0     0      0      0 --:--:--  0:00:03 --:--:--     0* schannel: failed to decrypt data, need more data',
'* Mark bundle as not supporting multiuse',
'< HTTP/1.1 200 OK',
'< Date: Tue, 01 Feb 2022 22:26:16 GMT',
'< Content-Type: application/json; charset=UTF-8',
'< Transfer-Encoding: chunked',
'< Connection: keep-alive',
'< Zendesk-Api-Version: 2022-01-01',
'< X-Zendesk-API-Version: v2',
'< X-Zendesk-Application-Version: v10980',
'< X-Frame-Options: SAMEORIGIN',
'< X-Rate-Limit: 400',
'< X-Rate-Limit-Remaining: 399',
'< Strict-Transport-Security: max-age=31536000;',
'< ETag: W/"c783576c1e9b2ef13f6d50bf2e55b42f"',
'< Cache-Control: max-age=0, private, must-revalidate',
'< X-Zendesk-Origin-Server: classic-app-server-5d7f6757cc-x9wqb',
'< X-Request-Id: 6d6e999f4ecb31fd-LAX',
'< X-Runtime: 3.489204',
'< X-Zendesk-Zorg: yes',
'< X-Request-ID: 6d6e999f4ecb31fd-LAX',
'< X-Content-Type-Options: nosniff',
'< CF-Cache-Status: DYNAMIC',
'< Expect-CT: max-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"',
'< Report-To: {"endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report\/v3?s=fysb0n8%2BkETnPIuB3cAAbo7hlhTREz0ZvPHqLS1%2FxyvgcDT9nd%2Bqi%2FdGQuaPyfLVxCHTb7fV3vwKWkU390qswZbHP2XovkHs0JBTBhxEhFmIh%2FOL1fCukvoUUglUZfp7GmdHTnpWjKPBXw%3D%3D"}],"group":'
||'"cf-nel","max_age":604800}',
'< NEL: {"success_fraction":0.01,"report_to":"cf-nel","max_age":604800}',
'< Set-Cookie: __cfruid=0a544ed7bbb5840b1882eccc13cb6900a192032f-1643754376; path=/; domain=.misorobotics.zendesk.com; HttpOnly; Secure; SameSite=None',
'< Server: cloudflare',
'< CF-RAY: 6d6e999f4ecb31fd-LAX',
'',
'',
'',
'</pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(89462297051669803)
,p_plug_name=>'incremental/tickets.json?start_time=0 '
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(95051951925962343)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'C:\brink\Pos>curl https://misorobotics.zendesk.com/api/v2/incremental/tickets.json?start_time=0 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" >  sam_0_gmt.json',
'  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current',
'                                 Dload  Upload   Total   Spent    Left  Speed',
'  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0*   Trying 104.16.53.111:443...',
'* Connected to misorobotics.zendesk.com (104.16.53.111) port 443 (#0)',
'* schannel: disabled automatic use of client certificate',
'* schannel: ALPN, offering http/1.1',
'* schannel: ALPN, server accepted to use http/1.1',
'* Server auth using Basic with user ''sscudder@misorobotics.com/token''',
'> GET /api/v2/incremental/tickets.json?start_time=0 HTTP/1.1',
'> Host: misorobotics.zendesk.com',
'> Authorization: Basic c3NjdWRkZXJAbWlzb3JvYm90aWNzLmNvbS90b2tlbjozT2R5ZXdxTEpCWFRhMndBRFNkQkhITHNPOHQ2bnZ0eUZkRDNtMzht',
'> User-Agent: curl/7.79.1',
'> Accept: */*',
'> Content-Type: application/json',
'>',
'  0     0    0     0    0     0      0      0 --:--:--  0:00:06 --:--:--     0* Mark bundle as not supporting multiuse',
'< HTTP/1.1 200 OK',
'< Date: Tue, 01 Feb 2022 23:04:00 GMT',
'< Content-Type: application/json; charset=UTF-8',
'< Transfer-Encoding: chunked',
'< Connection: keep-alive',
'< Zendesk-Api-Version: 2022-01-01',
'< X-Zendesk-API-Version: v2',
'< X-Zendesk-Application-Version: v10980',
'< X-Frame-Options: SAMEORIGIN',
'< X-Rate-Limit: 400',
'< X-Rate-Limit-Remaining: 400',
'< Strict-Transport-Security: max-age=31536000;',
'< ETag: W/"c720bb8e0063cea297ce0af75e9ad723"',
'< Cache-Control: max-age=0, private, must-revalidate',
'< X-Zendesk-Origin-Server: classic-app-server-5d7f6757cc-nnzqz',
'< X-Request-Id: 6d6ed0d5c9527c85-LAX',
'< X-Runtime: 6.035105',
'< X-Zendesk-Zorg: yes',
'< X-Request-ID: 6d6ed0d5c9527c85-LAX',
'< X-Content-Type-Options: nosniff',
'< CF-Cache-Status: DYNAMIC',
'< Expect-CT: max-age=604800, report-uri="https://report-uri.cloudflare.com/cdn-cgi/beacon/expect-ct"',
'< Report-To: {"endpoints":[{"url":"https:\/\/a.nel.cloudflare.com\/report\/v3?s=7yHOZu0yQXlPwshlubbQQbp9Z%2FP1XYDFikgZbA%2BrFovO%2FWlaOXCR9AAYSGbkGeeAnthgqYlloKoBRB0SHZ%2BN20%2Bd%2F8K25m6W52Sf3T7OpVcilYfAbW%2BuUl%2FT1V1n4bauB8JYu%2BFd5vxSuQ%3D%3D"}],'
||'"group":"cf-nel","max_age":604800}',
'< NEL: {"success_fraction":0.01,"report_to":"cf-nel","max_age":604800}',
'< Set-Cookie: __cfruid=73cb46f26db1f8f5231452cc5ee8852d19d36420-1643756640; path=/; domain=.misorobotics.zendesk.com; HttpOnly; Secure; SameSite=None',
'< Server: cloudflare',
'< CF-RAY: 6d6ed0d5c9527c85-LAX',
'<',
'{ [1377 bytes data]',
'100  1371    0  1371    0     0    209      0 --:--:--  0:00:06 --:--:--   318* schannel: failed to decrypt data, need more data',
'{ [99735 bytes data]',
'* schannel: failed to decrypt data, need more data',
'100 4288k    0 4288k    0     0   583k      0 --:--:--  0:00:07 --:--:-- 1047k',
'* Connection #0 to host misorobotics.zendesk.com left intact',
'',
'C:\brink\Pos>curl https://misorobotics.zendesk.com/api/v2/incremental/tickets.json?start_time=0 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" >  sam_0_gmt.json',
'',
'',
'</pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(89462396178669804)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(95063787534962349)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'============== PER MONITOR',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/dd_monitor_kfc_62373289/',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/dd_monitor_shoreline_62372755/',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/dd_monitor_wc42_62374516/',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/dd_monitor_westlake_62372859/',
'=========================',
'public restapi''s ',
'',
'curl https://misorobotics.zendesk.com/api/v2/incremental/tickets/cursor.json?start_time=1640995200 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" > 1640995200__01012022_000000_gmt.js'
||'on',
'',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/zendesk_01012022_000000/',
'',
'====================',
'',
'C:\brink\Pos>curl https://misorobotics.zendesk.com/api/v2/incremental/tickets.json?start_time=0 -v -u sscudder@misorobotics.com/token:3OdyewqLJBXTa2wADSdBHHLsO8t6nvtyFdD3m38m -H "Content-Type: application/json" >  sam_0_gmt.json',
'',
'https://gd49ef7d5e3cd2d-db202110212330.adb.us-phoenix-1.oraclecloudapps.com/ords/miso/zendesk_epoch_0/',
'',
'========================',
'If we implement DATA as a SERVICE and use the restapi capabilities as a conduit / GLUE then we can database manager from a single site all rest api metadata.  Plus building UI on json is cool.  I believe if we use apex as a translation layer and use '
||'its free cost . we can query this database for all know restapi''s. Like a service broker, light weight and intelligent but otherwise just a metadata layer.',
'',
'</pre>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95227604012962936)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(95073177747962355)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(95006144045962302)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(95130284495962397)
);
wwv_flow_api.component_end;
end;
/
