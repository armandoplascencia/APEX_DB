prompt --application/pages/page_00501
begin
--   Manifest
--     PAGE: 00501
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>501
,p_user_interface_id=>wwv_flow_api.id(14434115216807266717)
,p_name=>'Poll Results - redirects to p66 for authentication'
,p_alias=>'POLL-RESULTS-REDIRECTS-TO-P66-FOR-AUTHENTICATION'
,p_step_title=>'Poll Results'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14008957981820441125)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200116130020'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(14134527095150353386)
,p_branch_name=>'branch to page 66'
,p_branch_action=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:66::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.component_end;
end;
/
