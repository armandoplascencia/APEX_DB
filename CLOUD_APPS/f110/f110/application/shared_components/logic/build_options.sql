prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 110
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>110
,p_default_id_offset=>101599614921830918
,p_default_owner=>'MISO'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(250463028429234807)
,p_build_option_name=>'Feature: Access Control'
,p_build_option_status=>'INCLUDE'
,p_feature_identifier=>'APPLICATION_ACCESS_CONTROL'
,p_build_option_comment=>'Incorporate role based user authentication within your application and manage username mappings to application roles.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(14004324400869192396)
,p_build_option_name=>'Self Service Requests'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'If included, users can request access to the application.  An administrator would then review and approve/decline the request.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(14022779793193784422)
,p_build_option_name=>'Allow Deletion of Responses'
,p_build_option_status=>'INCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'If included, Contributors and Administrators can delete responses.  Testing responses can always be deleted, this governs responses given when the poll/quiz is published.'
);
wwv_flow_api.create_build_option(
 p_id=>wwv_flow_api.id(14132071685799448031)
,p_build_option_name=>'Enable Scrubbing Respondent Emails'
,p_build_option_status=>'EXCLUDE'
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
,p_build_option_comment=>'If enabled, Administrators will be able to access a page to allow the removal of leading, non-displayed characters from Respondents.'
);
wwv_flow_api.component_end;
end;
/
