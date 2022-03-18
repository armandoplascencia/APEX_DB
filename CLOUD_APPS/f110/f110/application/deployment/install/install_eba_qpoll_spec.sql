prompt --application/deployment/install/install_eba_qpoll_spec
begin
--   Manifest
--     INSTALL: INSTALL-eba_qpoll spec
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
 p_id=>wwv_flow_api.id(16485641410151435819)
,p_install_id=>wwv_flow_api.id(16006903818735772086)
,p_name=>'eba_qpoll spec'
,p_sequence=>20
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package EBA_QPOLL is',
'    -------------------------------------------------------------------------',
'    -- Gets the current user''s authorization level. Depends on the following:',
'    --  * If access control is currently disabled, returns highest role of ADMINISTRATOR.',
'    --  * If access control is enabled, but user is not in list, returns NONE.',
'    --  * If access control is enabled and user is in list, returns their',
'    --    access level.',
'    -------------------------------------------------------------------------',
'    function get_access_role (',
'        p_app_id               number,',
'        p_username             varchar2)',
'        return varchar2;',
'        ',
'    -- returns error text if mandatory questions are not answered',
'    function validate_submission',
'        return varchar2;',
'       ',
'    procedure remove_preactive_results (',
'       p_poll_id   in  number );',
'       ',
'    function poll_take_status (',
'          p_app_id       in  number,',
'          p_poll_id      in  number,',
'          p_app_user     in  varchar2,',
'          p_app_session  in  number )',
'          return varchar2;',
'          ',
'    -- used for emailing results',
'    function prepare_poll_results (',
'        p_poll_id  number )',
'        return clob;',
'        ',
'   procedure eba_qpoll_data_load;',
'   ',
'   procedure eba_qpoll_remove_data;',
'        ',
'end EBA_QPOLL;',
'/'))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(14756825772888683616)
,p_script_id=>wwv_flow_api.id(16485641410151435819)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'EBA_LIVEPOLL'
,p_last_updated_on=>to_date('20141219062055','YYYYMMDDHH24MISS')
,p_created_on=>to_date('20141219062055','YYYYMMDDHH24MISS')
);
wwv_flow_api.component_end;
end;
/
