prompt --application/shared_components/user_interface/lovs/home_page_icon_toggles
begin
--   Manifest
--     HOME_PAGE_ICON_TOGGLES
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(2814635315314748135)
,p_lov_name=>'HOME_PAGE_ICON_TOGGLES'
,p_lov_query=>'.'||wwv_flow_api.id(2814635315314748135)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2814654662880921601)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Home Page'
,p_lov_return_value=>'HOME'
,p_lov_template=>'<a href="f?p=&APP_ID.:HOME:&APP_SESSION.:"><span class="t-Icon fa fa-home" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span></a>'
,p_lov_disp_cond_type=>'EXPRESSION'
,p_lov_disp_cond=>':APP_PAGE_ID != 64'
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2814635644235748137)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Projects Dashboard'
,p_lov_return_value=>'DASHBD'
,p_lov_template=>'<a href="f?p=&APP_ID.:DASHBD:&APP_SESSION.:"><span class="t-Icon fa fa-dial-gauge-chart" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span></a>'
,p_lov_disp_cond_type=>'EXPRESSION'
,p_lov_disp_cond=>':APP_PAGE_ID != 51'
,p_lov_disp_cond2=>'PLSQL'
,p_required_patch=>wwv_flow_api.id(11916093816142635755)
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2814636097906748137)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Projects Interactive Report'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<a href="f?p=&APP_ID.:1:&APP_SESSION.::::::"><span class="t-Icon fa fa-table" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span></a>'
,p_lov_disp_cond_type=>'EXPRESSION'
,p_lov_disp_cond=>':APP_PAGE_ID != 1'
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
