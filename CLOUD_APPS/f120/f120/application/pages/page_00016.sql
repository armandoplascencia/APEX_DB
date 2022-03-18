prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(94732957031367450)
,p_name=>'AUDIT using  nk_h__history '
,p_alias=>'AUDIT-USING-NK-H-HISTORY'
,p_step_title=>'AUDIT using  nk_h__history '
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'MISO'
,p_last_upd_yyyymmddhh24miss=>'20220202190545'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94989929298067957)
,p_plug_name=>'AUDIT using  nk_h__history '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(94641448153367376)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       ROW_VERSION_NUMBER,',
'       COMPONENT_ID,',
'       COMPONENT_ROWKEY,',
'       TABLE_NAME,',
'       TABLE_NAME CONTROL_BREAK_TABLE_NAME,',
'       COLUMN_NAME,',
'       COLUMN_NAME control_break_column_name,',
'       OLD_VALUE,',
'       NEW_VALUE,',
'       CHANGE_DATE,',
'       CHANGED_BY',
'  from NK_H__HISTORY'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'AUDIT using  nk_h__history '
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(94990087366067957)
,p_name=>'AUDIT using  nk_h__history '
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_owner=>'MISO'
,p_internal_uid=>94990087366067957
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94990421286067961)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94990825425067962)
,p_db_column_name=>'ROW_VERSION_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Row Version Number'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94991204227067962)
,p_db_column_name=>'COMPONENT_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Component Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94991680147067962)
,p_db_column_name=>'COMPONENT_ROWKEY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Component Rowkey'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94992010478067963)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Table Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94992404401067963)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Column Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94992859010067963)
,p_db_column_name=>'OLD_VALUE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Old Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94993273160067964)
,p_db_column_name=>'NEW_VALUE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'New Value'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94993638661067964)
,p_db_column_name=>'CHANGE_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Change Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'Y'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(94994069666067964)
,p_db_column_name=>'CHANGED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95757596378977346)
,p_db_column_name=>'CONTROL_BREAK_TABLE_NAME'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Control Break Table Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95757651878977347)
,p_db_column_name=>'CONTROL_BREAK_COLUMN_NAME'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Control Break Column Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(94994684214088024)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'949947'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROW_VERSION_NUMBER:COMPONENT_ID:TABLE_NAME:COLUMN_NAME:OLD_VALUE:NEW_VALUE:CHANGE_DATE:CHANGED_BY::CONTROL_BREAK_TABLE_NAME:CONTROL_BREAK_COLUMN_NAME'
,p_sort_column_1=>'TABLE_NAME'
,p_sort_direction_1=>'DESC'
,p_break_on=>'CONTROL_BREAK_TABLE_NAME:0:0:0:0'
,p_break_enabled_on=>'CONTROL_BREAK_TABLE_NAME:0:0:0:0'
,p_count_columns_on_break=>'CONTROL_BREAK_TABLE_NAME:TABLE_NAME'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(95757284999977343)
,p_plug_name=>'AUDIT INSTRTUCTIONS'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(94623703111367366)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'with abc as (',
'select',
'''begin',
'    eba_mpa.gen_history_trigger (p_prefix => ''''||<ABREV>'''', p_source_table => ''''<TBL_NAME>'''' );',
'end;'' thisisql',
'from dual )',
'select replace(abc.thisisql,''<TBL_NAME>'',table_name ) this_real_Sql',
'from abc, user_Tables where table_name like ''NK_%'';',
'',
'begin eba_mpa.gen_history_trigger (p_prefix => ''NK_H_'', p_source_table => ''NK_DEVICE_TYPES''      ); end;',
'begin eba_mpa.gen_history_trigger (p_prefix => ''NK_H_'', p_source_table => ''NK_NETWORK_DEVICES''   ); end;',
'begin eba_mpa.gen_history_trigger (p_prefix => ''NK_H_'', p_source_table => ''NK_SITES''             ); end;',
'begin eba_mpa.gen_history_trigger (p_prefix => ''NK_H_'', p_source_table => ''NK_SITE_CONFIG''       ); end;',
'begin eba_mpa.gen_history_trigger (p_prefix => ''NK_H_'', p_source_table => ''NK_SITE_CONFIG_ERR$''  ); end;',
'begin eba_mpa.gen_history_trigger (p_prefix => ''NK_H_'', p_source_table => ''NK_SUPPORTED_DEVICES'' ); end;',
'begin eba_mpa.gen_history_trigger (p_prefix => ''NK_H_'', p_source_table => ''NK_VERSIONS''          ); end;',
'begin eba_mpa.gen_history_trigger (p_prefix => ''NK_H_'', p_source_table => ''NK_VERSIONS_ERR$''     ); end;',
'',
'create or replace trigger au_nk_device_types',
'    after update on nk_device_types',
'    for each row',
'declare',
'    pragma autonomous_transaction;',
'    ov varchar2(4000) := null;',
'    nv varchar2(4000) := null;',
'begin',
'    -- NK_DEVICE_TYPE (default)',
'    if nvl(:old.nk_device_type, ''0'') != nvl(:new.nk_device_type,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''TYPES'', null, :new.id, ''NK_DEVICE_TYPE'', substr(:old.nk_device_type,0,4000), substr(:new.nk_device_type,0,4000) ); ',
'    end if;',
'    -- NK_DESCRIPTION (default)',
'    if nvl(:old.nk_description, ''0'') != nvl(:new.nk_description,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''TYPES'', null, :new.id, ''NK_DESCRIPTION'', substr(:old.nk_description,0,4000), substr(:new.nk_description,0,4000) ); ',
'    end if;',
'    -- NK_ICON (default)',
'    if nvl(:old.nk_icon, ''0'') != nvl(:new.nk_icon,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''TYPES'', null, :new.id, ''NK_ICON'', substr(:old.nk_icon,0,4000), substr(:new.nk_icon,0,4000) ); ',
'    end if;',
'    commit;',
'end au_nk_device_types;',
'/',
'alter trigger au_nk_device_types enable',
'/',
'create or replace trigger au_nk_network_devices',
'    after update on nk_network_devices',
'    for each row',
'declare',
'    pragma autonomous_transaction;',
'    ov varchar2(4000) := null;',
'    nv varchar2(4000) := null;',
'begin',
'    -- NK_STATUS (default)',
'    if nvl(:old.nk_status, ''0'') != nvl(:new.nk_status,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_STATUS'', substr(:old.nk_status,0,4000), substr(:new.nk_status,0,4000) ); ',
'    end if;',
'    -- NK_SITE_ID (default)',
'    if nvl(:old.nk_site_id, ''0'') != nvl(:new.nk_site_id,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_SITE_ID'', substr(:old.nk_site_id,0,4000), substr(:new.nk_site_id,0,4000) ); ',
'    end if;',
'    -- NK_CUSTOMER (default)',
'    if nvl(:old.nk_customer, ''0'') != nvl(:new.nk_customer,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_CUSTOMER'', substr(:old.nk_customer,0,4000), substr(:new.nk_customer,0,4000) ); ',
'    end if;',
'    -- NK_LOCATION (default)',
'    if nvl(:old.nk_location, ''0'') != nvl(:new.nk_location,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_LOCATION'', substr(:old.nk_location,0,4000), substr(:new.nk_location,0,4000) ); ',
'    end if;',
'    -- NK_INSTALL_DATE (default)',
'    if nvl(:old.nk_install_date, ''0'') != nvl(:new.nk_install_date,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_INSTALL_DATE'', substr(:old.nk_install_date,0,4000), substr(:new.nk_install_date,0,4000) ); ',
'    end if;',
'    -- NK_EPIC (default)',
'    if nvl(:old.nk_epic, ''0'') != nvl(:new.nk_epic,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_EPIC'', substr(:old.nk_epic,0,4000), substr(:new.nk_epic,0,4000) ); ',
'    end if;',
'    -- NK_ICON (default)',
'    if nvl(:old.nk_icon, ''0'') != nvl(:new.nk_icon,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_ICON'', substr(:old.nk_icon,0,4000), substr(:new.nk_icon,0,4000) ); ',
'    end if;',
'    -- NK_COMPONENT (default)',
'    if nvl(:old.nk_component, ''0'') != nvl(:new.nk_component,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_COMPONENT'', substr(:old.nk_component,0,4000), substr(:new.nk_component,0,4000) ); ',
'    end if;',
'    -- NK_MANUFACTURER (default)',
'    if nvl(:old.nk_manufacturer, ''0'') != nvl(:new.nk_manufacturer,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_MANUFACTURER'', substr(:old.nk_manufacturer,0,4000), substr(:new.nk_manufacturer,0,4000) ); ',
'    end if;',
'    -- NK_MODEL (default)',
'    if nvl(:old.nk_model, ''0'') != nvl(:new.nk_model,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_MODEL'', substr(:old.nk_model,0,4000), substr(:new.nk_model,0,4000) ); ',
'    end if;',
'    -- NK_SERIAL_NUMBER (default)',
'    if nvl(:old.nk_serial_number, ''0'') != nvl(:new.nk_serial_number,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_SERIAL_NUMBER'', substr(:old.nk_serial_number,0,4000), substr(:new.nk_serial_number,0,4000) ); ',
'    end if;',
'    -- NK_MAC_ADDRESS (default)',
'    if nvl(:old.nk_mac_address, ''0'') != nvl(:new.nk_mac_address,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_MAC_ADDRESS'', substr(:old.nk_mac_address,0,4000), substr(:new.nk_mac_address,0,4000) ); ',
'    end if;',
'    -- NK_IP_ADDRESS (default)',
'    if nvl(:old.nk_ip_address, ''0'') != nvl(:new.nk_ip_address,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_IP_ADDRESS'', substr(:old.nk_ip_address,0,4000), substr(:new.nk_ip_address,0,4000) ); ',
'    end if;',
'    -- NK_IP_TYPE (default)',
'    if nvl(:old.nk_ip_type, ''0'') != nvl(:new.nk_ip_type,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_IP_TYPE'', substr(:old.nk_ip_type,0,4000), substr(:new.nk_ip_type,0,4000) ); ',
'    end if;',
'    -- NOTES (default)',
'    if nvl(:old.notes, ''0'') != nvl(:new.notes,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NOTES'', substr(:old.notes,0,4000), substr(:new.notes,0,4000) ); ',
'    end if;',
'    commit;',
'end au_nk_network_devices;',
'/',
'alter trigger au_nk_network_devices enable',
'/',
'create or replace trigger au_nk_sites',
'    after update on nk_sites',
'    for each row',
'declare',
'    pragma autonomous_transaction;',
'    ov varchar2(4000) := null;',
'    nv varchar2(4000) := null;',
'begin',
'    -- NK_LOCATION_ID (default)',
'    if nvl(:old.nk_location_id, ''0'') != nvl(:new.nk_location_id,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''NK_SITES'', null, :new.id, ''NK_LOCATION_ID'', substr(:old.nk_location_id,0,4000), substr(:new.nk_location_id,0,4000) ); ',
'    end if;',
'    -- NK_CUSTOMER (default)',
'    if nvl(:old.nk_customer, ''0'') != nvl(:new.nk_customer,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''NK_SITES'', null, :new.id, ''NK_CUSTOMER'', substr(:old.nk_customer,0,4000), substr(:new.nk_customer,0,4000) ); ',
'    end if;',
'    -- NK_LOCATION (default)',
'    if nvl(:old.nk_location, ''0'') != nvl(:new.nk_location,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''NK_SITES'', null, :new.id, ''NK_LOCATION'', substr(:old.nk_location,0,4000), substr(:new.nk_location,0,4000) ); ',
'    end if;',
'    -- NK_INSTALL_DATE (default)',
'    if nvl(:old.nk_install_date, ''0'') != nvl(:new.nk_install_date,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''NK_SITES'', null, :new.id, ''NK_INSTALL_DATE'', substr(:old.nk_install_date,0,4000), substr(:new.nk_install_date,0,4000) ); ',
'    end if;',
'    -- NK_EPIC (default)',
'    if nvl(:old.nk_epic, ''0'') != nvl(:new.nk_epic,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''NK_SITES'', null, :new.id, ''NK_EPIC'', substr(:old.nk_epic,0,4000), substr(:new.nk_epic,0,4000) ); ',
'    end if;',
'    commit;',
'end au_nk_sites;',
'/',
'alter trigger au_nk_sites enable',
'/',
'',
'',
'create or replace trigger au_nk_site_config',
'    after update on nk_site_config',
'    for each row',
'declare',
'    pragma autonomous_transaction;',
'    ov varchar2(4000) := null;',
'    nv varchar2(4000) := null;',
'begin',
'    -- NK_SITE_ID (default)',
'    if nvl(:old.nk_site_id, ''0'') != nvl(:new.nk_site_id,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''CONFIG'', null, :new.id, ''NK_SITE_ID'', substr(:old.nk_site_id,0,4000), substr(:new.nk_site_id,0,4000) ); ',
'    end if;',
'    -- NK_PRODUCT (default)',
'    if nvl(:old.nk_product, ''0'') != nvl(:new.nk_product,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''CONFIG'', null, :new.id, ''NK_PRODUCT'', substr(:old.nk_product,0,4000), substr(:new.nk_product,0,4000) ); ',
'    end if;',
'    -- NK_HARDWARE (default)',
'    if nvl(:old.nk_hardware, ''0'') != nvl(:new.nk_hardware,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''CONFIG'', null, :new.id, ''NK_HARDWARE'', substr(:old.nk_hardware,0,4000), substr(:new.nk_hardware,0,4000) ); ',
'    end if;',
'    -- NK_SOFTWARE (default)',
'    if nvl(:old.nk_software, ''0'') != nvl(:new.nk_software,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''CONFIG'', null, :new.id, ''NK_SOFTWARE'', substr(:old.nk_software,0,4000), substr(:new.nk_software,0,4000) ); ',
'    end if;',
'    commit;',
'end au_nk_site_config;',
'/',
'alter trigger au_nk_site_config enable',
'/',
'',
'',
'',
'create or replace trigger au_nk_supported_devices',
'    after update on nk_supported_devices',
'    for each row',
'declare',
'    pragma autonomous_transaction;',
'    ov varchar2(4000) := null;',
'    nv varchar2(4000) := null;',
'begin',
'    -- NK_MODEL (default)',
'    if nvl(:old.nk_model, ''0'') != nvl(:new.nk_model,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_MODEL'', substr(:old.nk_model,0,4000), substr(:new.nk_model,0,4000) ); ',
'    end if;',
'    -- NK_MANUFACTURER (default)',
'    if nvl(:old.nk_manufacturer, ''0'') != nvl(:new.nk_manufacturer,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_MANUFACTURER'', substr(:old.nk_manufacturer,0,4000), substr(:new.nk_manufacturer,0,4000) ); ',
'    end if;',
'    -- NK_DEVICE_TYPE (default)',
'    if nvl(:old.nk_device_type, ''0'') != nvl(:new.nk_device_type,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''DEVICES'', null, :new.id, ''NK_DEVICE_TYPE'', substr(:old.nk_device_type,0,4000), substr(:new.nk_device_type,0,4000) ); ',
'    end if;',
'    commit;',
'end au_nk_supported_devices;',
'/',
'alter trigger au_nk_supported_devices enable',
'/',
'',
'',
'',
'create or replace trigger au_nk_versions',
'    after update on nk_versions',
'    for each row',
'declare',
'    pragma autonomous_transaction;',
'    ov varchar2(4000) := null;',
'    nv varchar2(4000) := null;',
'begin',
'    -- NK_PRODUCT_VERSION (default)',
'    if nvl(:old.nk_product_version, ''0'') != nvl(:new.nk_product_version,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''NK_VERSIONS'', null, :new.id, ''NK_PRODUCT_VERSION'', substr(:old.nk_product_version,0,4000), substr(:new.nk_product_version,0,4000) ); ',
'    end if;',
'    -- NK_HW_VERSION (default)',
'    if nvl(:old.nk_hw_version, ''0'') != nvl(:new.nk_hw_version,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''NK_VERSIONS'', null, :new.id, ''NK_HW_VERSION'', substr(:old.nk_hw_version,0,4000), substr(:new.nk_hw_version,0,4000) ); ',
'    end if;',
'    -- NK_SW_VERSION (default)',
'    if nvl(:old.nk_sw_version, ''0'') != nvl(:new.nk_sw_version,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''NK_VERSIONS'', null, :new.id, ''NK_SW_VERSION'', substr(:old.nk_sw_version,0,4000), substr(:new.nk_sw_version,0,4000) ); ',
'    end if;',
'    -- NK_DESCRIPTION (default)',
'    if nvl(:old.nk_description, ''0'') != nvl(:new.nk_description,''0'') then ',
'        insert into nk_h__history (table_name, component_rowkey, component_id, column_name, old_value, new_value) values ',
'            (''NK_VERSIONS'', null, :new.id, ''NK_DESCRIPTION'', substr(:old.nk_description,0,4000), substr(:new.nk_description,0,4000) ); ',
'    end if;',
'    commit;',
'end au_nk_versions;',
'/',
'alter trigger au_nk_versions enable',
'/',
'</PRE>'))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
