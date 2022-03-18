prompt --application/pages/page_00087
begin
--   Manifest
--     PAGE: 00087
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>103
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>87
,p_user_interface_id=>wwv_flow_api.id(19722833960781940)
,p_name=>'Location_maps'
,p_alias=>'LOCATION-MAPS'
,p_step_title=>'Location_maps'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20211023003736'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21437205659277301)
,p_plug_name=>'Location_maps'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(19602477018781848)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_api.create_map_region(
 p_id=>wwv_flow_api.id(21437610341277302)
,p_region_id=>wwv_flow_api.id(21437205659277301)
,p_height=>640
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'SCALE_BAR:INFINITE_MAP:RECTANGLE_ZOOM'
);
wwv_flow_api.create_map_region_layer(
 p_id=>wwv_flow_api.id(21438113084277310)
,p_map_region_id=>wwv_flow_api.id(21437610341277302)
,p_name=>'Location_maps'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_layer_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select STATE_ID,',
'       ID,',
'       NAME,',
'       POPULATION,',
'       APPROX_LAT_ID,',
'       APPROX_LONG_ID,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY',
'  from CITY'))
,p_has_spatial_index=>false
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'APPROX_LONG_ID'
,p_latitude_column=>'APPROX_LAT_ID'
,p_point_display_type=>'SVG'
,p_point_svg_shape=>'Heart'
,p_feature_clustering=>true
,p_cluster_threshold_pixels=>80
,p_cluster_point_svg_shape=>'Circle'
,p_tooltip_adv_formatting=>true
,p_tooltip_html_expr=>'<img src="&IMAGE_NAME." title="&NAME.">'
,p_info_window_adv_formatting=>true
,p_info_window_html_expr=>'<img src="&IMAGE_NAME." title="&EMPLOYEE_NAME.">'
,p_allow_hide=>true
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21431592781197705)
,p_name=>'P87_LAT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(21437205659277301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21431683065197706)
,p_name=>'P87_LONG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21437205659277301)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(21431736605197707)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>' Create Markers Collection'
,p_process_sql_clob=>'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION(''MARKERS'');'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
