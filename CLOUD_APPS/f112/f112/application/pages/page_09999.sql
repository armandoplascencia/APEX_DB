prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(14644135011863537602)
,p_name=>'Image Download'
,p_alias=>'IMAGE'
,p_step_title=>'Image Download'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14820268899628280514)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_comment=>'This page is only used as a placeholder for calling the get image URL on demand process.'
,p_last_upd_yyyymmddhh24miss=>'20190918111405'
);
wwv_flow_api.component_end;
end;
/
