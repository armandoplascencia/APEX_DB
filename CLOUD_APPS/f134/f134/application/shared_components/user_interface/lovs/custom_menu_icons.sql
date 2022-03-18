prompt --application/shared_components/user_interface/lovs/custom_menu_icons
begin
--   Manifest
--     CUSTOM_MENU_ICONS
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
 p_id=>wwv_flow_api.id(4137162278319318826)
,p_lov_name=>'CUSTOM_MENU_ICONS'
,p_lov_query=>'.'||wwv_flow_api.id(4137162278319318826)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4137162444580318830)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Cloud'
,p_lov_return_value=>'fa-cloud'
,p_lov_template=>'<span class="fa fa-cloud" aria-hidden="true" title="#DISPLAY_VALUE#"></span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4137162822968318833)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Exchange'
,p_lov_return_value=>'fa-exchange'
,p_lov_template=>'<span class="fa fa-exchange" aria-hidden="true" title="#DISPLAY_VALUE#"></span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4137163218279318833)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Home'
,p_lov_return_value=>'fa-home'
,p_lov_template=>'<span class="fa fa-home" aria-hidden="true" title="#DISPLAY_VALUE#"></span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4137163643903318833)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Inbox'
,p_lov_return_value=>'fa-inbox'
,p_lov_template=>'<span class="fa fa-inbox" aria-hidden="true" title="#DISPLAY_VALUE#"></span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4137164027509318834)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'Play Icon'
,p_lov_return_value=>'fa-play'
,p_lov_template=>'<span class="fa fa-play" aria-hidden="true" title="#DISPLAY_VALUE#"></span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4137164498851318834)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'Reply Icon'
,p_lov_return_value=>'fa-reply'
,p_lov_template=>'<span class="fa fa-reply" aria-hidden="true" title="#DISPLAY_VALUE#"></span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4137164870218318834)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'Right Arrow in Circle'
,p_lov_return_value=>'fa-chevron-circle-right'
,p_lov_template=>'<span class="fa fa-chevron-circle-right" aria-hidden="true" title="#DISPLAY_VALUE#"></span>'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(4137165265963318835)
,p_lov_disp_sequence=>80
,p_lov_disp_value=>'Up and to the Right'
,p_lov_return_value=>'fa-arrow-up-right-alt'
,p_lov_template=>'<span class="fa fa-arrow-up-right-alt" aria-hidden="true" title="#DISPLAY_VALUE#"></span>'
);
wwv_flow_api.component_end;
end;
/
