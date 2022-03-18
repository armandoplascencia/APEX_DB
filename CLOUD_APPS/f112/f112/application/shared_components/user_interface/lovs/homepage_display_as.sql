prompt --application/shared_components/user_interface/lovs/homepage_display_as
begin
--   Manifest
--     HOMEPAGE_DISPLAY_AS
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1250301436662674421)
,p_lov_name=>'HOMEPAGE_DISPLAY_AS'
,p_lov_query=>'.'||wwv_flow_api.id(1250301436662674421)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(1250301622398674422)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Cards View'
,p_lov_return_value=>'CARDS'
,p_lov_template=>'<span class="t-Icon fa fa-cards" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(1250302418606674423)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Logo View'
,p_lov_return_value=>'LOGOS'
,p_lov_template=>'<span class="t-Icon fa fa-tiles-2x2" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
,p_lov_disp_cond_type=>'EXPRESSION'
,p_lov_disp_cond=>'APEX_AUTHORIZATION.IS_AUTHORIZED(p_authorization_name => ''CONTRIBUTION RIGHTS'')'
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(1250302075503674423)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Report View'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="t-Icon fa fa-table" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_api.component_end;
end;
/
