prompt --application/deployment/install/install_eba_ca_specs
begin
--   Manifest
--     INSTALL: INSTALL-eba_ca specs
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
 p_id=>wwv_flow_api.id(3336057371895002195)
,p_install_id=>wwv_flow_api.id(7488934904666529534)
,p_name=>'eba_ca specs'
,p_sequence=>340
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace package eba_ca is ',
'    -------------------------------------------------------------------------',
'    -- Generates a unique Identifier',
'    -------------------------------------------------------------------------',
'    function gen_id return number;',
'',
'    -------------------------------------------------------------------------',
'    -- Gets the current user''s authorization level. Can depend on the following:',
'    --  * If access control is currently disabled, returns highest level of 3.',
'    --  * If access control is enabled, but user is not in list, returns 0',
'    --  * If access control is enabled and user is in list, returns their',
'    --    access level.',
'    -------------------------------------------------------------------------',
'    function get_authorization_level (',
'        p_username             varchar2)',
'        return number;',
'    -------------------------------------------------------------------------',
'    -- Returns all of the restricted calendars for the given user          --',
'    -------------------------------------------------------------------------',
'    function decode_restrictions (',
'        p_user_id             number)',
'        return varchar2;',
'end eba_ca ;',
'/'))
);
wwv_flow_api.create_install_object(
 p_id=>wwv_flow_api.id(1764009624481604605)
,p_script_id=>wwv_flow_api.id(3336057371895002195)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'EBA_CA'
,p_last_updated_on=>to_date('20141219062058','YYYYMMDDHH24MISS')
,p_created_on=>to_date('20141219062058','YYYYMMDDHH24MISS')
);
wwv_flow_api.component_end;
end;
/
