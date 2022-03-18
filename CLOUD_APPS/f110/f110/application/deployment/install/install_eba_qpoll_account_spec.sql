prompt --application/deployment/install/install_eba_qpoll_account_spec
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll_account spec
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(14004461680637130337)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll_account spec'
,p_sequence=>37
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE OR REPLACE PACKAGE "EBA_QPOLL_ACCOUNT" as',
'    procedure add_application_log (',
'       p_activity  in  varchar2,',
'       p_details   in  varchar2  default null );',
'    procedure add_user_log (',
'       p_username       in  varchar2,',
'       p_email_address  in  varchar2,',
'       p_activity       in  varchar2,',
'       p_details        in  varchar2  default null );',
'    procedure add_user (',
'       p_email_address     in  varchar2,',
'       p_email_user_yn     in  varchar2,',
'       p_username          in  varchar2,',
'       p_app_id            in  number    default null,',
'       p_app_title         in  varchar2  default null,',
'       p_app_link          in  varchar2  default null,',
'       p_apex_password     out varchar2 );',
'    procedure approve_access_request (',
'       p_app_id           in  number,',
'       p_app_title        in  varchar2,',
'       p_app_link         in  varchar2,',
'       p_request_id       in  number,',
'       p_actioned_reason  in  varchar2  default null );',
'    procedure decline_access_request (',
'       p_app_id           in  number,',
'       p_app_title        in  varchar2,',
'       p_request_id       in  number,',
'       p_actioned_reason  in  varchar2 );',
'end eba_qpoll_account;',
'/'))
);
wwv_flow_api.component_end;
end;
/
