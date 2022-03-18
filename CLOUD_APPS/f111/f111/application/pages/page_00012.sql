prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>111
,p_default_id_offset=>77418401682728923
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(88335304271078742)
,p_name=>'Test Multiple upload region from same page'
,p_alias=>'TEST-MULTIPLE-UPLOAD-REGION-FROM-SAME-PAGE'
,p_step_title=>'Test Multiple upload region from same page'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_IMAGES#js/progressbar.min.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var bar = new ProgressBar.SemiCircle(progress_container, {',
'  strokeWidth: 6,',
'  color: ''#FFEA82'',',
'  trailColor: ''#eee'',',
'  trailWidth: 1,',
'  easing: ''easeInOut'',',
'  duration: 1400,',
'  svgStyle: null,',
'  text: {',
'    value: '''',',
'    alignToBottom: true',
'  },',
'  from: {color: ''#e4e575''},',
'  to: {color: ''##6aad42''},',
'  // Set default step function for all animate calls',
'  step: (state, bar) => {',
'    bar.path.setAttribute(''stroke'', state.color);',
'    var value = Math.round(bar.value() * 100);',
'    if (value === 0) {',
'      bar.setText('''');',
'    } else {',
'        value = ''<span class="u-color-35-text">''+ value + ''%'' + ''</span>'';',
'        if ( csv2table.status().insertedRowCount() > 0 ) {',
'            value = value + ''<br><span class="u-color-33-text">'' + csv2table.status().insertedRowCount()  + '' rows </span> '';',
'            ',
'        }',
'',
'        if ( csv2table.status().endTime() > csv2table.status().startTime() ) {',
'            let totalTime = 0;',
'            totalTime = Math.round(csv2table.status().endTime() - csv2table.status().startTime()) || '' unknown'';',
'            value = value + ''<br><span class="u-color-31-text">'' + totalTime + '' ms'' + ''</span> '';',
'',
'        }',
'        bar.setText(value);',
'    }',
'',
'    bar.text.style.color = state.color;',
'',
'  }',
'});',
'bar.text.style.fontFamily = ''"Raleway", Helvetica, sans-serif'';',
'bar.text.style.fontSize = ''1.5rem'';',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#progress_container {',
'  margin: 30px;',
'  width: 250px;',
'  height: 150px;',
'}',
'',
'',
'',
' ',
'',
'.a-IRR-header {',
'    --a-gv-header-cell-border-color: #e6e6e6;',
'    background-color: #bfc8d1;',
'}    '))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GOPALMALLYA'
,p_last_upd_yyyymmddhh24miss=>'20210209050819'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121381311941100501)
,p_plug_name=>'Docs'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>wwv_flow_api.id(88238578654078642)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'for rec in ( select content from csv2table_docs )',
'loop',
'    htp.p(rec.content);',
'end loop;',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121381408610100502)
,p_plug_name=>'FAQ'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(88250109972078651)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121381467675100503)
,p_plug_name=>'Region Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(88221787270078627)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130195872557684264)
,p_plug_name=>'Demo'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(88221787270078627)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121381654417100505)
,p_plug_name=>'Results'
,p_region_name=>'results'
,p_parent_plug_id=>wwv_flow_api.id(130195872557684264)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(88250109972078651)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select * from csv2table where upload_id = :P12_UPLOAD_ID;'
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Results'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(121381760031100506)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'GOPALMALLYA'
,p_internal_uid=>43963358348371583
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104047989731490497)
,p_db_column_name=>'UPLOAD_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Upload Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104048376867490505)
,p_db_column_name=>'APEX_SESSION_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Apex Session Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104048729691490505)
,p_db_column_name=>'APEX_USER'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Apex User'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104049148996490505)
,p_db_column_name=>'INSERT_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Insert Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104049504751490506)
,p_db_column_name=>'FILENAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104049930513490506)
,p_db_column_name=>'C1'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'C1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104050374212490506)
,p_db_column_name=>'C2'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104050729649490507)
,p_db_column_name=>'C3'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'C3'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104051104250490507)
,p_db_column_name=>'C4'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'C4'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104051508785490507)
,p_db_column_name=>'C5'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'C5'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104051915623490507)
,p_db_column_name=>'C6'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'C6'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104052338355490509)
,p_db_column_name=>'C7'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'C7'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104052781203490509)
,p_db_column_name=>'C8'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'C8'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104053107983490509)
,p_db_column_name=>'C9'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'C9'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104053600938490509)
,p_db_column_name=>'C10'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'C10'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104053984607490510)
,p_db_column_name=>'C11'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'C11'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104054394392490510)
,p_db_column_name=>'C12'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'C12'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104054713607490510)
,p_db_column_name=>'C13'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'C13'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104055109096490511)
,p_db_column_name=>'C14'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'C14'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104055577806490511)
,p_db_column_name=>'C15'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'C15'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104055993858490511)
,p_db_column_name=>'C16'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'C16'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104056379725490512)
,p_db_column_name=>'C17'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'C17'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104056794650490512)
,p_db_column_name=>'C18'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'C18'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104057114533490512)
,p_db_column_name=>'C19'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'C19'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104057562834490513)
,p_db_column_name=>'C20'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'C20'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104057979541490513)
,p_db_column_name=>'C21'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'C21'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104058355497490513)
,p_db_column_name=>'C22'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'C22'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104058769387490514)
,p_db_column_name=>'C23'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'C23'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104059113740490514)
,p_db_column_name=>'C24'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'C24'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104059550165490514)
,p_db_column_name=>'C25'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'C25'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104059977591490515)
,p_db_column_name=>'C26'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'C26'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104060309229490515)
,p_db_column_name=>'C27'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'C27'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104060732070490516)
,p_db_column_name=>'C28'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'C28'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104061192193490516)
,p_db_column_name=>'C29'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'C29'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104061510323490516)
,p_db_column_name=>'C30'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'C30'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104061981344490517)
,p_db_column_name=>'C31'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'C31'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104062313806490517)
,p_db_column_name=>'C32'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'C32'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104062713895490517)
,p_db_column_name=>'C33'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'C33'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104063179931490518)
,p_db_column_name=>'C34'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'C34'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104063565245490518)
,p_db_column_name=>'C35'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'C35'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104063997256490518)
,p_db_column_name=>'C36'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'C36'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104064308077490519)
,p_db_column_name=>'C37'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'C37'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104064791815490519)
,p_db_column_name=>'C38'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'C38'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104065200189490519)
,p_db_column_name=>'C39'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'C39'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104065527350490520)
,p_db_column_name=>'C40'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'C40'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104065994668490520)
,p_db_column_name=>'C41'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'C41'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104066345529490528)
,p_db_column_name=>'C42'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'C42'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104066795047490529)
,p_db_column_name=>'C43'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'C43'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104067155027490529)
,p_db_column_name=>'C44'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'C44'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104067505294490529)
,p_db_column_name=>'C45'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'C45'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104067991632490530)
,p_db_column_name=>'C46'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'C46'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104068346626490530)
,p_db_column_name=>'C47'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'C47'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104068711673490530)
,p_db_column_name=>'C48'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'C48'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104069197124490531)
,p_db_column_name=>'C49'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'C49'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104069582136490531)
,p_db_column_name=>'C50'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'C50'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104069955902490531)
,p_db_column_name=>'C51'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'C51'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104070395890490532)
,p_db_column_name=>'C52'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'C52'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104070728561490532)
,p_db_column_name=>'C53'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'C53'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104071154174490532)
,p_db_column_name=>'C54'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'C54'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104071572412490533)
,p_db_column_name=>'C55'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'C55'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104071955036490533)
,p_db_column_name=>'C56'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'C56'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104072328806490533)
,p_db_column_name=>'C57'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'C57'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104072764020490533)
,p_db_column_name=>'C58'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'C58'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104073146123490534)
,p_db_column_name=>'C59'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'C59'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104073565008490534)
,p_db_column_name=>'C60'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'C60'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104073937065490534)
,p_db_column_name=>'C61'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'C61'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104074369454490535)
,p_db_column_name=>'C62'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'C62'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104074801046490535)
,p_db_column_name=>'C63'
,p_display_order=>680
,p_column_identifier=>'BP'
,p_column_label=>'C63'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104075163155490535)
,p_db_column_name=>'C64'
,p_display_order=>690
,p_column_identifier=>'BQ'
,p_column_label=>'C64'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104075596545490536)
,p_db_column_name=>'C65'
,p_display_order=>700
,p_column_identifier=>'BR'
,p_column_label=>'C65'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104075987031490536)
,p_db_column_name=>'C66'
,p_display_order=>710
,p_column_identifier=>'BS'
,p_column_label=>'C66'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104076388249490536)
,p_db_column_name=>'C67'
,p_display_order=>720
,p_column_identifier=>'BT'
,p_column_label=>'C67'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104076781611490536)
,p_db_column_name=>'C68'
,p_display_order=>730
,p_column_identifier=>'BU'
,p_column_label=>'C68'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104077177677490537)
,p_db_column_name=>'C69'
,p_display_order=>740
,p_column_identifier=>'BV'
,p_column_label=>'C69'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104077525226490537)
,p_db_column_name=>'C70'
,p_display_order=>750
,p_column_identifier=>'BW'
,p_column_label=>'C70'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104077973361490537)
,p_db_column_name=>'C71'
,p_display_order=>760
,p_column_identifier=>'BX'
,p_column_label=>'C71'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104078381379490538)
,p_db_column_name=>'C72'
,p_display_order=>770
,p_column_identifier=>'BY'
,p_column_label=>'C72'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104078719721490538)
,p_db_column_name=>'C73'
,p_display_order=>780
,p_column_identifier=>'BZ'
,p_column_label=>'C73'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104079137859490539)
,p_db_column_name=>'C74'
,p_display_order=>790
,p_column_identifier=>'CA'
,p_column_label=>'C74'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104079521399490539)
,p_db_column_name=>'C75'
,p_display_order=>800
,p_column_identifier=>'CB'
,p_column_label=>'C75'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104079981695490539)
,p_db_column_name=>'C76'
,p_display_order=>810
,p_column_identifier=>'CC'
,p_column_label=>'C76'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104080331766490539)
,p_db_column_name=>'C77'
,p_display_order=>820
,p_column_identifier=>'CD'
,p_column_label=>'C77'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104080732886490540)
,p_db_column_name=>'C78'
,p_display_order=>830
,p_column_identifier=>'CE'
,p_column_label=>'C78'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104081145740490540)
,p_db_column_name=>'C79'
,p_display_order=>840
,p_column_identifier=>'CF'
,p_column_label=>'C79'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104081577893490540)
,p_db_column_name=>'C80'
,p_display_order=>850
,p_column_identifier=>'CG'
,p_column_label=>'C80'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104081961994490541)
,p_db_column_name=>'C81'
,p_display_order=>860
,p_column_identifier=>'CH'
,p_column_label=>'C81'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104082320775490541)
,p_db_column_name=>'C82'
,p_display_order=>870
,p_column_identifier=>'CI'
,p_column_label=>'C82'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104082754675490541)
,p_db_column_name=>'C83'
,p_display_order=>880
,p_column_identifier=>'CJ'
,p_column_label=>'C83'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104083180964490542)
,p_db_column_name=>'C84'
,p_display_order=>890
,p_column_identifier=>'CK'
,p_column_label=>'C84'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104083515291490542)
,p_db_column_name=>'C85'
,p_display_order=>900
,p_column_identifier=>'CL'
,p_column_label=>'C85'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104083997107490543)
,p_db_column_name=>'C86'
,p_display_order=>910
,p_column_identifier=>'CM'
,p_column_label=>'C86'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104084378088490543)
,p_db_column_name=>'C87'
,p_display_order=>920
,p_column_identifier=>'CN'
,p_column_label=>'C87'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104084748097490543)
,p_db_column_name=>'C88'
,p_display_order=>930
,p_column_identifier=>'CO'
,p_column_label=>'C88'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104085115936490543)
,p_db_column_name=>'C89'
,p_display_order=>940
,p_column_identifier=>'CP'
,p_column_label=>'C89'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104085554445490544)
,p_db_column_name=>'C90'
,p_display_order=>950
,p_column_identifier=>'CQ'
,p_column_label=>'C90'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104085963285490544)
,p_db_column_name=>'C91'
,p_display_order=>960
,p_column_identifier=>'CR'
,p_column_label=>'C91'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104086356416490544)
,p_db_column_name=>'C92'
,p_display_order=>970
,p_column_identifier=>'CS'
,p_column_label=>'C92'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104086725795490545)
,p_db_column_name=>'C93'
,p_display_order=>980
,p_column_identifier=>'CT'
,p_column_label=>'C93'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104087145026490545)
,p_db_column_name=>'C94'
,p_display_order=>990
,p_column_identifier=>'CU'
,p_column_label=>'C94'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104087584776490545)
,p_db_column_name=>'C95'
,p_display_order=>1000
,p_column_identifier=>'CV'
,p_column_label=>'C95'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104087991061490546)
,p_db_column_name=>'C96'
,p_display_order=>1010
,p_column_identifier=>'CW'
,p_column_label=>'C96'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104088309951490546)
,p_db_column_name=>'C97'
,p_display_order=>1020
,p_column_identifier=>'CX'
,p_column_label=>'C97'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104088718543490547)
,p_db_column_name=>'C98'
,p_display_order=>1030
,p_column_identifier=>'CY'
,p_column_label=>'C98'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104089160900490547)
,p_db_column_name=>'C99'
,p_display_order=>1040
,p_column_identifier=>'CZ'
,p_column_label=>'C99'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(104089585844490547)
,p_db_column_name=>'C100'
,p_display_order=>1050
,p_column_identifier=>'DA'
,p_column_label=>'C100'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(130232893851686737)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'266715'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'UPLOAD_ID:C1:C2:C3:C4:C5:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(146887708663528866)
,p_plug_name=>'Upload'
,p_parent_plug_id=>wwv_flow_api.id(130195872557684264)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(88250109972078651)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>5
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(146888313688528872)
,p_plug_name=>'Progress'
,p_parent_plug_id=>wwv_flow_api.id(130195872557684264)
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow:t-Form--noPadding:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>wwv_flow_api.id(88250109972078651)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'BODY'
,p_plug_source=>'<div id=progress_container></div>'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(104090669430490554)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(146887708663528866)
,p_button_name=>'upload'
,p_button_static_id=>'submit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconRight:t-Button--pillStart'
,p_button_template_id=>wwv_flow_api.id(88312723271078712)
,p_button_image_alt=>'Upload'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-upload'
,p_grid_new_row=>'Y'
,p_grid_column=>2
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(104091073828490555)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(146887708663528866)
,p_button_name=>'Pause'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(88312723271078712)
,p_button_image_alt=>'Pause'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-pause'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(104091430393490556)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_api.id(146887708663528866)
,p_button_name=>'Resume'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(88312723271078712)
,p_button_image_alt=>'Resume'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-play'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(104091833331490556)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_api.id(146887708663528866)
,p_button_name=>'Cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(88312723271078712)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BODY'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-ban'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104092299349490556)
,p_name=>'P12_FILETYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(146887708663528866)
,p_item_default=>'local'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Local;local,Remote;remote'
,p_field_template=>wwv_flow_api.id(88311549130078708)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>111
,p_default_id_offset=>77418401682728923
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104092651509490559)
,p_name=>'P12_FILE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(146887708663528866)
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(88311549130078708)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'Y'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104093089293490559)
,p_name=>'P12_URL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(146887708663528866)
,p_prompt=>'URL'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select url||'',''||filesize d, url||'',''||filesize r',
'from json_table (:P12_URL_LIST',
'      , ''$[*]''',
'      columns (     url varchar2(255) path ''$[0]'' ,',
'                    filesize varchar2(255) path ''$[1]'' ',
'      )     ',
')      ',
'where url like ''https://%.csv''           ',
'order by filesize',
'                     '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(88311549130078708)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_inline_help_text=>'cross-origin requests require Access-Control-Allow-Origin header'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104093456136490560)
,p_name=>'P12_CHUNKSIZE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(146887708663528866)
,p_item_default=>'select 1024*1000 from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'  Chunksize'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select d, r from',
'(',
'    select case when rn = 1 then ''1kb''',
'                when rn = 2 then ''10kb''',
'                when rn =3 then ''100kb''',
'                when rn=4 then ''1mb''',
'                when rn=5 then ''5mb''',
'                when rn=6 then ''10mb''',
'            end d,',
'            case when rn = 1 then 1024',
'                when rn = 2 then 1024*10',
'                when rn =3 then 1024*100',
'                when rn=4 then 1024*1000',
'                when rn=5 then 1024*5000',
'                when rn=6 then 1024*10000',
'            end r',
'    from            ',
'        (select rownum rn',
'        from dual',
'        connect by rownum < 7',
'        )',
')'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(88311468392078708)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104093856037490561)
,p_name=>'P12_THREADS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(146887708663528866)
,p_item_default=>'1'
,p_prompt=>'Threads'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum d, rownum r',
'from dual',
'connect by rownum < 6'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(88311468392078708)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104094232587490561)
,p_name=>'P12_SKIPFIRSTNROWS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(146887708663528866)
,p_item_default=>'0'
,p_prompt=>'Skip  rows'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>4
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(88311468392078708)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'0'
,p_attribute_02=>'10'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104094560555490561)
,p_name=>'P12_STREAM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(146887708663528866)
,p_prompt=>'Stream'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(88311468392078708)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104094911826490562)
,p_name=>'P12_UPLOAD_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(146887708663528866)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(104095394677490562)
,p_name=>'P12_URL_LIST'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(146887708663528866)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(104096923183490583)
,p_name=>'submit'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(104090669430490554)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(104097940813490586)
,p_event_id=>wwv_flow_api.id(104096923183490583)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'bar.animate(0.03);',
'$(''#submit'').prop(''disabled'', true);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(104097478899490585)
,p_event_id=>wwv_flow_api.id(104096923183490583)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_COM.GM.CSV2TABLE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_plugin_init_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function (options) {',
'    var chunkSize = apex.item("P12_CHUNKSIZE").getValue();',
'    var threads = apex.item("P12_THREADS").getValue();',
'    var fileType = apex.item("P12_FILETYPE").getValue();',
'    var fileID;',
'    if ( fileType == ''local'' ) {',
'        fileID = "P12_FILE";',
'    }',
'    if ( fileType == ''remote'' ) {',
'        fileID = "P12_URL";',
'    }',
'    options.chunkSize = chunkSize;',
'    options.threads = threads;',
'    options.fileType = fileType;',
'    options.fileID = fileID;',
'    options.skipFirstNRows = apex.item("P12_SKIPFIRSTNROWS").getValue();',
'    options.stream = apex.item("P12_STREAM").getValue();',
'}'))
,p_attribute_01=>'1000000'
,p_attribute_02=>'1'
,p_attribute_03=>'P12_URL'
,p_attribute_05=>wwv_flow_string.join(wwv_flow_t_varchar2(
'async function completeFn(data){',
'    console.log("I am complete callback function", data);',
'    bar.animate(data.progressSoFar());',
'    var l_uploadID = data.uploadID();',
'    apex.item("P12_UPLOAD_ID").setValue(l_uploadID);',
'    var setSessionStatePromise = apex.server.process(''MY_PROCESS'',{',
'            pageItems: ''#P12_UPLOAD_ID''',
'        },{dataType: "text"});',
'    try{',
'        var result = await setSessionStatePromise.done( function() {',
'            console.log(''P12_UPLOAD_ID set session state completed'')',
'            });',
'    }catch (err) {',
'        console.log(''P12_UPLOAD_ID set session state error'')',
'    }',
'    apex.region("results").refresh();',
'    $(''#submit'').prop(''disabled'', false);',
'    apex.message.showPageSuccess( "Success!" );',
'}'))
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function chunkFn(data){',
'',
'    console.log("I am chunk callback function" , data);',
'    bar.animate(data.progressSoFar());',
'}'))
,p_attribute_07=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function errorFn(data){',
'    console.log("I am error callback function", data);',
'     $(''#submit'').prop(''disabled'', false);',
'    if ( data.status.state == "error" ) {',
'        bar.setText(data.error.message);',
'        bar.text.style.color = "#d2423b";',
'',
'    }',
'    apex.message.showErrors([',
'    {',
'        type: "error",',
'        location: "page",',
'        message: data.error.message + "<br> check console log for more details",',
'        unsafe: false',
'    }',
'    ]);    ',
'}'))
,p_attribute_08=>'apex_data_parser'
,p_attribute_10=>'remote'
,p_attribute_13=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(104098362282490587)
,p_name=>'getRemoteCSVURL'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(104098856742490587)
,p_event_id=>wwv_flow_api.id(104098362282490587)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = ''https://gopalmallya.com/csv/list.csv'';',
'var xhr;',
'function bindFunction(f, self)',
'	{',
'		return function() { f.apply(self, arguments); };',
'	}',
'function load(url) {',
'  xhr = new XMLHttpRequest();',
'  xhr.onreadystatechange  = bindFunction(loadFn, this);',
'  xhr.onerror = bindFunction(errorFn, this);',
'  xhr.open("GET", url, true);',
'  xhr.send();',
'  ',
'}',
'',
'function loadFn ()  {',
'    if (xhr.readyState === 4 && xhr.status === 200) {',
'        console.log(xhr.responseText);',
'        results = Papa.parse(xhr.responseText);',
'        var urlList = JSON.stringify(results.data);',
'        apex.item("P12_URL_LIST").setValue(urlList);',
'        apex.server.process(''MY_PROCESS'',{',
'            pageItems: ''#P12_URL_LIST''',
'        },{dataType: "text"});',
'',
'    };',
'  }  ',
'',
'function errorFn ()  {',
'   console.log(''xhr error'')',
'  }  ',
'',
'if ( apex.item("P12_URL_LIST").getValue().length === 0 ) {',
'    load(url);',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(104099296669490587)
,p_name=>'pause'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(104091073828490555)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(104099755355490588)
,p_event_id=>wwv_flow_api.id(104099296669490587)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(''user clicked pause'');',
'if ( csv2table ) {',
'    csv2table.pause();',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(104100172915490588)
,p_name=>'Resume'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(104091430393490556)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(104100653070490588)
,p_event_id=>wwv_flow_api.id(104100172915490588)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ( csv2table ) {',
'    csv2table.resume();',
'}'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(104101053244490588)
,p_name=>'show local  hide remote file browser'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_FILETYPE'
,p_condition_element=>'P12_FILETYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'local'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(104101510586490589)
,p_event_id=>wwv_flow_api.id(104101053244490588)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_FILE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(104102031493490589)
,p_event_id=>wwv_flow_api.id(104101053244490588)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_URL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(104102467495490589)
,p_name=>'show remote hide local browser_1'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_FILETYPE'
,p_condition_element=>'P12_FILETYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'remote'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(104102970874490589)
,p_event_id=>wwv_flow_api.id(104102467495490589)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_URL'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(104103424063490590)
,p_event_id=>wwv_flow_api.id(104102467495490589)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_FILE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(104103867191490590)
,p_name=>'browser reload'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(104091833331490556)
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(104104308479490590)
,p_event_id=>wwv_flow_api.id(104103867191490590)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(''cancel pressed'');',
'location.reload();'))
);
wwv_flow_api.component_end;
end;
/
