prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
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
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(14644135011863537602)
,p_name=>'Customer'
,p_alias=>'CUSTOMER'
,p_step_title=>'Customer'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_api.id(14820268899628280514)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_javascript_code_onload=>'$(''dd.t-AVPList-value img'').attr(''style'',''max-height:250px;max-width:500px;'');'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.js-dynamicHideShowRegion { display: none }',
'.apex-rds { visibility: hidden }',
'.t-Report--cleanBorders .t-Report-colHead { border-bottom: 1px solid rgba(0, 0, 0, .05); background-color: #fcfcfc; color: #707070; font-weight: normal; padding-bottom: .8rem; padding-top: .8rem }',
'.t-Report--cleanBorders .js-stickyTableHeader.is-stuck .t-Report-colHead { border-bottom: 0; }',
'.t-Report--cleanBorders .t-Report-cell { border-top: 1px solid #F4F4F4; }'))
,p_step_template=>wwv_flow_api.id(14959323341544679100)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ALLAN'
,p_last_upd_yyyymmddhh24miss=>'20210301102539'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(247967240972728761)
,p_name=>'Details'
,p_region_name=>'DETAILS'
,p_template=>wwv_flow_api.id(14959353760448679146)
,p_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   a.id,',
'   a.status_id,',
'   a.parent_customer_id,',
'   ( select p.customer_name from eba_cust_customers p where p.id = a.parent_customer_id ) parent_customer,',
'   a.type_id,',
'   a.use_case_id,',
'   a.strategic_customer_program_yn,',
'   customer_name,',
'   sys.dbms_lob.substr(customer_profile,100,1) customer_profile,',
'   /*case when a.logo_mimetype like ''image%'' then',
'       ''<img src="''||APEX_UTIL.GET_BLOB_FILE_SRC (',
'           p_item_name => ''P2_LOGO_BLOB'',',
'           p_v1        => :P50_ID,',
'           p_content_disposition => ''inline'')||''" />''',
'   else',
'       ''<a href="''||APEX_UTIL.GET_BLOB_FILE_SRC (',
'           p_item_name => ''P2_LOGO_BLOB'',',
'           p_v1        => :P50_ID,',
'           p_content_disposition => ''attachment'')||''">Download</a>''',
'   end as logo,',
'*/',
'   --dbms_lob.getlength(logo_blob) logo,',
'   category,',
'   a.created,',
'   geography_name,',
'   country_id,',
'   (select INDUSTRY_NAME ',
'    from EBA_CUST_INDUSTRIES i',
'    where a.industry_id = i.id) industry,',
'   referencable,',
'   number_of_users,',
'   stock_symbol,',
'   sic,',
'   duns,',
'   (select channel from eba_cust_sales_channel where id = a.sales_channel_id) sales_channel_id,',
'   marquee_customer_yn,',
'   trim(decode(web_site,null,null,''<a href="''||apex_escape.html(web_site)||''" target="_blank">''||',
'     apex_escape.html(web_site)||''</a>'')||'' ''||',
'     decode(Facebook,null,null,''<a href="''||apex_escape.html(Facebook)||''" target="_blank">Facebook</a>'')||'' ''||',
'     decode(linkedIn,null,null,''<a href="''||apex_escape.html(LinkedIn)||''" target="_blank">LinkedIn</a>'')||'' ''||',
'     decode(twitter,null,null,''<a href="''||apex_escape.html(twitter)||''" target="_blank">twitter</a>'')',
'   ) web_site,',
'   --(select listagg(p.product_name, '', '') within group (order by p.product_name) product_uses',
'   -- from eba_cust_customers c, eba_cust_product_uses u, eba_cust_products p',
'   -- where c.id = u.customer_id',
'   -- and u.product_id = p.id',
'   -- and c.id = a.id',
'   --  group by c.customer_name',
'   --) product_uses,',
'    (   select listagg(rt.reference_type, '', '') within group (order by rt.reference_type) reference_types',
'        from eba_cust_reference_types rt, eba_cust_customer_reftype_ref ref',
'        where ref.customer_id = a.id',
'            and rt.id = ref.reference_type_id',
'    ) reference_types,',
'    (select status from EBA_CUST_REF_PHASE p where p.id = a.reference_phase_id) reference_phase,',
'    a.REF_RECRUITMENT_OWNER,',
'    (   select listagg(pf.name, '', '') within group (order by pf.name)',
'        from eba_cust_product_families pf',
'        where pf.id in (select p.product_family_id',
'                        from eba_cust_product_uses pu,',
'                            eba_cust_products p',
'                        where pu.customer_id = a.id',
'                            and p.id = pu.product_id',
'                            and p.product_family_id is not null)',
'    ) product_familes,',
'    a.updated,',
'    lower(a.updated_by) updated_by',
'from',
'   eba_cust_customers a , eba_cust_categories b, eba_cust_status c, eba_cust_geographies d',
'where ',
'   a.category_id = b.id (+) and ',
'   a.status_id = c.id (+) and ',
'   a.geography_id = d.id (+) and',
'   a.id = :P50_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959362316404679165)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(247969219066728781)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1207483620202757243)
,p_query_column_id=>2
,p_column_alias=>'STATUS_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(14964923517896225259)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249675756141560532)
,p_query_column_id=>3
,p_column_alias=>'PARENT_CUSTOMER_ID'
,p_column_display_sequence=>6
,p_column_heading=>'Parent'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP,50:P50_ID:#PARENT_CUSTOMER_ID#'
,p_column_linktext=>'#PARENT_CUSTOMER#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_customers c',
'where c.id = :P50_ID',
'    and c.parent_customer_id is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249675800960560533)
,p_query_column_id=>4
,p_column_alias=>'PARENT_CUSTOMER'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249675947936560534)
,p_query_column_id=>5
,p_column_alias=>'TYPE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and type_id is not null',
'   and ''Include'' = (select build_option_status',
'  from apex_application_build_options',
' where build_option_name = ''Customer Status''',
'   and application_id = :APP_ID)'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(17141353049233571955)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249676002061560535)
,p_query_column_id=>6
,p_column_alias=>'USE_CASE_ID'
,p_column_display_sequence=>8
,p_column_heading=>'Use Case'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and use_case_id is not null',
'   and ''Include'' = (select build_option_status',
'  from apex_application_build_options',
' where build_option_name = ''Customer Use Case''',
'   and application_id = :APP_ID)'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(17227612560436934051)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249676100679560536)
,p_query_column_id=>7
,p_column_alias=>'STRATEGIC_CUSTOMER_PROGRAM_YN'
,p_column_display_sequence=>9
,p_column_heading=>'Strategic Customer Program'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and strategic_customer_program_yn is not null',
'   and ''Include'' = (select build_option_status',
'  from apex_application_build_options',
' where build_option_name = ''Strategic Customer Program''',
'   and application_id = :APP_ID)'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(17902545816272138439)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249676249728560537)
,p_query_column_id=>8
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249676357379560538)
,p_query_column_id=>9
,p_column_alias=>'CUSTOMER_PROFILE'
,p_column_display_sequence=>15
,p_column_heading=>'Profile'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_customers',
'where id = :P50_ID',
'    and customer_profile is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249676643690560541)
,p_query_column_id=>10
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>13
,p_column_heading=>'Category'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and category_id is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249676705077560542)
,p_query_column_id=>11
,p_column_alias=>'CREATED'
,p_column_display_sequence=>43
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249676883359560543)
,p_query_column_id=>12
,p_column_alias=>'GEOGRAPHY_NAME'
,p_column_display_sequence=>16
,p_column_heading=>'Geography'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_geography_id number;',
'begin',
'    begin',
'    select geography_id',
'      into l_geography_id',
'      from eba_cust_customers',
'     where id = :P50_ID;',
'    exception when no_data_found then',
'        l_geography_id := null;',
'        return false;',
'    end;',
'    return (wwv_flow_utilities.is_build_option_enabled(''Geography'') and l_geography_id is not null);',
'end;'))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249676945521560544)
,p_query_column_id=>13
,p_column_alias=>'COUNTRY_ID'
,p_column_display_sequence=>17
,p_column_heading=>'Country'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_country_id number;',
'begin',
'    select country_id',
'      into l_country_id',
'      from eba_cust_customers',
'     where id = :P50_ID;',
'    return (wwv_flow_utilities.is_build_option_enabled(''Countries'') and l_country_id is not null);',
'end;'))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(16972802003340838752)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249677056318560545)
,p_query_column_id=>14
,p_column_alias=>'INDUSTRY'
,p_column_display_sequence=>14
,p_column_heading=>'Industry'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and industry_id is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249678367345560558)
,p_query_column_id=>15
,p_column_alias=>'REFERENCABLE'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and REFERENCABLE is not null',
'   and APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Customer Referencability'') = ''INCLUDE'''))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249677641553560551)
,p_query_column_id=>16
,p_column_alias=>'NUMBER_OF_USERS'
,p_column_display_sequence=>22
,p_column_heading=>'Number of Users'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   c int;',
'   is_not_null boolean default false;',
'   is_enabled boolean default true;',
'begin',
'for c1 in (select 1 from eba_cust_customers where id = :P50_ID and number_of_users is not null) loop',
'   is_not_null := true;',
'end loop;',
'is_enabled := wwv_flow_utilities.is_build_option_enabled(''Number_of_users'');',
'if is_not_null and is_enabled then return true; else return false; end if;',
'end;'))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249677877809560553)
,p_query_column_id=>17
,p_column_alias=>'STOCK_SYMBOL'
,p_column_display_sequence=>18
,p_column_heading=>'Stock Symbol'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and stock_symbol is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249677907673560554)
,p_query_column_id=>18
,p_column_alias=>'SIC'
,p_column_display_sequence=>23
,p_column_heading=>'SIC Code'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and sic is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249678043466560555)
,p_query_column_id=>19
,p_column_alias=>'DUNS'
,p_column_display_sequence=>24
,p_column_heading=>'DUNS Identifier'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and duns is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249678098580560556)
,p_query_column_id=>20
,p_column_alias=>'SALES_CHANNEL_ID'
,p_column_display_sequence=>25
,p_column_heading=>'Sales Channel'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and sales_channel_id is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249678252309560557)
,p_query_column_id=>21
,p_column_alias=>'MARQUEE_CUSTOMER_YN'
,p_column_display_sequence=>11
,p_column_heading=>'Marquee Customer'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and marquee_customer_yn is not null'))
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(17902545816272138439)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(247969050448728779)
,p_query_column_id=>22
,p_column_alias=>'WEB_SITE'
,p_column_display_sequence=>3
,p_column_heading=>'Web Site(s)'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>'select 1 from eba_cust_customers where id = :P50_ID and web_site is not null'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(247969110516728780)
,p_query_column_id=>23
,p_column_alias=>'REFERENCE_TYPES'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from dual',
' where (',
'        select listagg(rt.reference_type, '', '') within group (order by rt.reference_type)',
'          from eba_cust_reference_types rt, eba_cust_customer_reftype_ref ref',
'         where ref.customer_id = :P50_ID',
'           and rt.id = ref.reference_type_id',
'       ) is not null',
'    and (APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Customer Referencability'') = ''INCLUDE'' or APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'')'))
,p_derived_column=>'N'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from eba_cust_customers',
'where referencable != ''No'' and referencable is not null and id = :P50_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249677121273560546)
,p_query_column_id=>24
,p_column_alias=>'REFERENCE_PHASE'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and reference_phase_id is not null',
'   and APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Customer Referencability'') = ''INCLUDE'''))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249677198193560547)
,p_query_column_id=>25
,p_column_alias=>'REF_RECRUITMENT_OWNER'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from EBA_CUST_CUSTOMERS',
'where id = :P50_ID ',
'and REF_RECRUITMENT_OWNER is not null',
'and APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Customer Referencability'') = ''INCLUDE'''))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249677377308560548)
,p_query_column_id=>26
,p_column_alias=>'PRODUCT_FAMILES'
,p_column_display_sequence=>21
,p_column_heading=>'Product Families'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_product_uses pu,',
'    eba_cust_products p',
'where pu.customer_id = :P50_ID',
'    and p.id = pu.product_id',
'    and p.product_family_id is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249677457350560549)
,p_query_column_id=>27
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>44
,p_column_heading=>'Last Updated'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249677490830560550)
,p_query_column_id=>28
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>45
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1197775953027139158)
,p_plug_name=>'Customer Account'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14959353760448679146)
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  ''Discount Level'' label,',
'  to_char(nvl(DISCOUNT_LEVEL,0),''999G999G999G999G999G999G990'') || ''%'' return_val',
'from',
'   eba_cust_customers',
'where ',
'   id = :P50_ID and nvl(DISCOUNT_LEVEL,0) != 0',
'union all',
'select',
'  ''Total Contract Value (TCV)'' label,',
'  ''$'' || to_char(nvl(TOTAL_CONTRACT_VALUE,0),''999G999G999G999G999G999G990'') return_val',
'from',
'   eba_cust_customers',
'where ',
'   id = :P50_ID and nvl(TOTAL_CONTRACT_VALUE,0) != 0',
'union all',
'select',
'  ''Annual Recurring Revenue (ARR)'' label,',
'  ''$'' || to_char(nvl(annual_recurring_revenue,0),''999G999G999G999G999G999G990'') return_val',
'from',
'   eba_cust_customers',
'where ',
'   id = :P50_ID and nvl(annual_recurring_revenue,0) != 0'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'RETURN_VAL'
,p_attribute_05=>'0'
,p_attribute_07=>'BOX'
,p_attribute_08=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1421454178842143541)
,p_plug_name=>'Customer Summary'
,p_region_css_classes=>'margin-md'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14959340065054679123)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'for c1 in (',
'select',
'   summary',
'from',
'   eba_cust_customers',
'where',
'   id = :P50_ID',
') loop',
'',
'sys.htp.p(''<p>''||apex_escape.html(c1.summary)||''</p>'');',
'',
'end loop;',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and summary is not null'))
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(2415206441466499277)
,p_name=>'Issues'
,p_region_name=>'rptIssues'
,p_template=>wwv_flow_api.id(14959353760448679146)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id,',
'    name,',
'    status_id,',
'    product_id,',
'    issue_type,',
'    created,',
'    created_by,',
'    updated,',
'    lower(updated_by) as updated_by',
'from',
'    eba_cust_issues',
'where',
'    customer_id = :P50_ID',
'order by updated'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    null',
'from',
'    eba_cust_issues',
'where',
'    customer_id = :P50_ID'))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959360421115679159)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_required_patch=>wwv_flow_api.id(2666312778173766103)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2415206557979499278)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit #NAME#">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2415206602553499279)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1959736115176294254)
,p_query_column_id=>3
,p_column_alias=>'STATUS_ID'
,p_column_display_sequence=>4
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(2666558996910590666)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2666266276869377460)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Product'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(17031121352719265084)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2415206717589499280)
,p_query_column_id=>5
,p_column_alias=>'ISSUE_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'Issue Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(2666261594619335567)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2415206853846499281)
,p_query_column_id=>6
,p_column_alias=>'CREATED'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2666263397895377432)
,p_query_column_id=>7
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2666263502193377433)
,p_query_column_id=>8
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>9
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#UPDATED# &bull; #UPDATED_BY#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(2666263669418377434)
,p_query_column_id=>9
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>8
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14924231600168977302)
,p_plug_name=>'Tags'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14959353760448679146)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    t.tag, ',
'    (select TAG_COUNT from eba_cust_tags_sum x where x.tag = t.tag) tag_count',
'from',
'    EBA_CUST_TAGS t,',
'    eba_cust_tags_type_sum s',
'where',
'    t.content_id = :P50_ID',
'and',
'    s.tag = t.tag',
'and',
'    s.content_type = ''CUSTOMER'''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TAG_CLOUD'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_no_data_found=>'No tags found.'
,p_attribute_01=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.:RIR:IRC_TAGS,P59_DISPLAY_AS:#TAG#,REPORT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14936947982906709019)
,p_plug_name=>'Page Actions'
,p_region_name=>'listPageActions'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--stacked:t-Region--hiddenOverflow:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#:t-LinksList--actions:t-LinksList--showIcons'
,p_plug_template=>wwv_flow_api.id(14959353760448679146)
,p_plug_display_sequence=>120
,p_plug_display_point=>'REGION_POSITION_03'
,p_list_id=>wwv_flow_api.id(14999810932140129822)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(14959365547433679170)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14959566262906922709)
,p_plug_name=>'Region display selector'
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14974886410559340808)
,p_plug_name=>'Customer Added'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14959353760448679146)
,p_plug_display_sequence=>170
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select created, ''Customer Added'' lbl',
'from eba_cust_customers',
'where id = :P50_ID'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.MINICALENDAR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'CREATED'
,p_attribute_02=>'LBL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15033634622440137512)
,p_plug_name=>'Usage Metrics - 90 days'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(14959353760448679146)
,p_plug_display_sequence=>160
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    count(*) c,',
'    ''Views'' l,',
'    1 disp',
'from',
'    eba_cust_clicks',
'where',
'    cust_id = :P50_ID ',
'and',
'    view_timestamp > sysdate - 90',
'UNION',
'select',
'    count(distinct app_username)  c,',
'    ''Users'' l,',
'    2 disp',
'from',
'    eba_cust_clicks',
'where',
'    cust_id = :P50_ID ',
'and',
'    view_timestamp > sysdate - 90',
'order by disp    '))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'L'
,p_attribute_02=>'C'
,p_attribute_04=>'f?p=&APP_ID.:13:&APP_SESSION.:::13:P13_ID:&P50_ID.'
,p_attribute_05=>'2'
,p_attribute_06=>'L'
,p_attribute_07=>'DOT'
,p_attribute_08=>'N'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15034080000251666548)
,p_plug_name=>'Validations'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(14959353760448679146)
,p_plug_display_sequence=>150
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    verified_by,',
'    created',
'from',
'    eba_cust_verifications',
'where',
'    cust_id = :P50_ID',
'order by',
'    created desc'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.VALIDATOR'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_required_patch=>wwv_flow_api.id(15036894013381297313)
,p_attribute_01=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP,10:P10_ID,LAST_VIEW:&P50_ID.,50'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15034080510425678974)
,p_name=>'Customer Validations'
,p_region_name=>'view_validations'
,p_template=>wwv_flow_api.id(14959349053779679136)
,p_display_sequence=>180
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'REGION_POSITION_04'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'	lower(verified_by) as validated_by,',
'        created last_validated,',
'	created validation_date,',
'	verification_comment',
'from',
'	eba_cust_verifications',
'where',
'	cust_id = :P50_ID',
'order by',
'	created desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959360421115679159)
,p_query_num_rows=>4
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No validations have been recorded'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15034080807964678992)
,p_query_column_id=>1
,p_column_alias=>'VALIDATED_BY'
,p_column_display_sequence=>1
,p_column_heading=>'Validated By'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15034141310303276565)
,p_query_column_id=>2
,p_column_alias=>'LAST_VALIDATED'
,p_column_display_sequence=>2
,p_column_heading=>'Last Validated'
,p_use_as_row_header=>'N'
,p_column_format=>'since'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15034080914201678996)
,p_query_column_id=>3
,p_column_alias=>'VALIDATION_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Validation Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD-MON-YYYY'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15034081012954678996)
,p_query_column_id=>4
,p_column_alias=>'VERIFICATION_COMMENT'
,p_column_display_sequence=>4
,p_column_heading=>'Comment'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15036811603734435868)
,p_plug_name=>'Content Completeness'
,p_region_template_options=>'#DEFAULT#:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(14959353760448679146)
,p_plug_display_sequence=>140
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    metric,',
'    the_score,',
'    max_value ',
'from',
'    (',
'        select  ''Customer is publicly referenceable'' metric, ',
'                decode(referencable,null,0,10) the_score,',
'                10 max_value',
'        from eba_cust_customers where id = :P50_ID and APEX_UTIL.GET_BUILD_OPTION_STATUS(P_APPLICATION_ID => :APP_ID, P_BUILD_OPTION_NAME => ''Customer Referencability'') = ''INCLUDE''',
'        union all',
'        select  ''Customer is marquee customer'' metric, ',
'                decode(nvl(marquee_customer_yn,''N''),''N'',0,20) the_score,',
'                20 max_value',
'        from eba_cust_customers where id = :P50_ID',
'        union all ',
'        select  ''Customer has summary longer then 200 characters'' metric, ',
'                decode(length(summary),0,0,20) the_score,',
'                20 max_value ',
'        from eba_cust_customers where id = :P50_ID',
'        and nvl(length(summary),0) >= 200',
'        union all ',
'        select  ''Customer has tags'' metric, ',
'                decode(tags,null,0,10) the_score,',
'                10 max_value ',
'        from eba_cust_customers where id = :P50_ID',
'        union all ',
'        select  ''Customer has description'' metric, ',
'                decode(length(summary),0,0,20) the_score,',
'                20 max_value ',
'        from eba_cust_customers where id = :P50_ID',
'        union all',
'        select',
'            nvl(max(''Customer has links''),''Customer has links'') metric, ',
'            decode(count(*),0,0,10) the_score,',
'            nvl(max(10),10) max_value ',
'        from',
'            eba_cust_customers c,',
'            eba_cust_links l',
'        where',
'            c.id = :P50_ID',
'        and',
'            l.customer_id = c.id',
'        union all',
'        select',
'            nvl(max(''Customer has updates''),''Customer has updates'') metric, ',
'            decode(count(*),0,0,10) the_score,',
'            nvl(max(10),10) max_value ',
'        from',
'            eba_cust_customers c,',
'            eba_cust_notes n',
'        where',
'            c.id = :P50_ID',
'        and',
'            n.customer_id = c.id',
'        union all',
'        select',
'            nvl(max(''Customer has Customer updates in last week''),''Customer has Customer updates in last week'') metric, ',
'            decode(count(*),0,0,10) the_score,',
'            nvl(max(10),10) max_value ',
'        from',
'            eba_cust_customers c,',
'            eba_cust_notes n',
'        where',
'            c.id = :P50_ID',
'        and',
'            n.customer_id = c.id',
'        and',
'            n.updated > (sysdate - 7)',
'        union all',
'        select',
'            nvl(max(''Customer has attachments''),''Customer has attachments'') metric, ',
'            decode(count(*),0,0,5) the_score,',
'            nvl(max(5),5) max_value ',
'        from',
'            eba_cust_customers c,',
'            eba_cust_files f',
'        where',
'            c.id = :P50_ID',
'        and',
'            f.customer_id = c.id',
'        union all',
'        select  nvl(max(''Customer verifications exist''),''Customer verifications exist'') metric, ',
'                decode(max((select count(*) from eba_cust_verifications v',
'        where v.cust_id = :P50_ID )),0,0,20) the_score,',
'                nvl(max(20),20) max_value ',
'        from eba_cust_customers where id = :P50_ID',
'        union all',
'        select  nvl(max(''Customer verifications exist in last week''),''Customer verifications exist in last week'') metric, ',
'                decode(max((select count(*) from eba_cust_verifications v',
'        where v.cust_id = :P50_ID and v.created > (sysdate - 7))),0,0,30) the_score,',
'                nvl(max(30),30) max_value ',
'        from eba_cust_customers where id = :P50_ID',
'        union all',
'        select  nvl(max(''Customer verifications exist in last week by Customer creator''),''Customer verifications exist in last week by Customer creator'') metric, ',
'                decode(max((select count(*) from eba_cust_verifications v',
'        where v.cust_id = :P50_ID and v.created > (sysdate - 7) and (',
'        upper(:app_user) = upper(created_by)',
'        ))),0,0,30) the_score,',
'                nvl(max(30),30) max_value ',
'        from eba_cust_customers where id = :P50_ID',
'    ) x',
'order by',
'    1'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.COMPLETENESS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_required_patch=>wwv_flow_api.id(15036893820067294196)
,p_attribute_01=>'66'
,p_attribute_02=>'Strong'
,p_attribute_03=>'33'
,p_attribute_04=>'Moderate'
,p_attribute_05=>'0'
,p_attribute_06=>'Weak'
,p_attribute_07=>'Very Weak'
,p_attribute_08=>'Completeness Score Details'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15749082900923648905)
,p_name=>'Partners'
,p_region_name=>'rptPartners'
,p_template=>wwv_flow_api.id(14959353760448679146)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rf.id,',
'    p.name partner_name,',
'    p.website,',
'    p.description,',
'    rf.created added,',
'    lower(rf.created_by) added_by',
'from eba_cust_cust_partner_ref rf,',
'     eba_cust_impl_partners p',
'where rf.customer_id = :P50_ID',
'  and p.id = rf.partner_id',
'order by p.name, rf.created desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959360421115679159)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No partners found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(1440121485808683569)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15749084195013648918)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>3
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:RP,110:P110_CUSTOMER_ID:&P50_ID.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit #PARTNER_NAME#">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15749084326335648919)
,p_query_column_id=>2
,p_column_alias=>'PARTNER_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Partner'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15749084386007648920)
,p_query_column_id=>3
,p_column_alias=>'WEBSITE'
,p_column_display_sequence=>5
,p_column_heading=>'Website'
,p_column_link=>'#WEBSITE#'
,p_column_linktext=>'#WEBSITE#'
,p_column_link_attr=>'target="_blank"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17848825001631609471)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>6
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15749083326415648909)
,p_query_column_id=>5
,p_column_alias=>'ADDED'
,p_column_display_sequence=>7
,p_column_heading=>'Added'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#ADDED# &middot; #ADDED_BY#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15749083424980648910)
,p_query_column_id=>6
,p_column_alias=>'ADDED_BY'
,p_column_display_sequence=>8
,p_column_heading=>'Added By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16522769601859727462)
,p_plug_name=>'Hidden Items'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14959340065054679123)
,p_plug_display_sequence=>140
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16522770412687727464)
,p_name=>'Updates'
,p_region_name=>'rptUpdates'
,p_template=>wwv_flow_api.id(14959353760448679146)
,p_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    '''' class, --use grayComment for gray look',
'    ''Note'' note_type,',
'    replace(apex_escape.html(dbms_lob.substr(n.note,2000,1)),chr(10),''<br />'') comment_text,',
'    decode(c.name,null,'''','' <strong>[''||c.name||'']</strong>'') attribute_1,',
'    '''' attribute_2,',
'    '''' attribute_3,',
'    '''' attribute_4,',
'    lower(n.created_by) user_name,',
'    substr(n.created_by,0,2) user_icon,',
'    ''u-color-''|| (ora_hash(n.created_by,44) + 1) icon_modifier,',
'    apex_util.get_since(NVL(n.note_date, nvl(n.updated, n.created))) ||'' - ''||to_char(NVL(n.note_date, nvl(n.updated, n.created)),''Day DD-MON-YYYY HH24:MI'') comment_date,',
'    ''Edit'' as link,',
'    ''Edit'' as actions,',
'    n.created,',
'    n.id note_id',
'from eba_cust_notes n,',
'    eba_cust_contacts c',
'where n.customer_id = :P50_ID ',
'    and n.contact_id = c.id (+)',
'order by 14 desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959360040618679157)
,p_query_headings_type=>'QUERY_COLUMNS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No updates found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522771601611727465)
,p_query_column_id=>1
,p_column_alias=>'CLASS'
,p_column_display_sequence=>1
,p_column_heading=>'Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522770605314727464)
,p_query_column_id=>2
,p_column_alias=>'NOTE_TYPE'
,p_column_display_sequence=>2
,p_column_heading=>'Note Type'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14936947327427709012)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>10
,p_column_heading=>'Comment text'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522770820531727464)
,p_query_column_id=>4
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>3
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522770894684727464)
,p_query_column_id=>5
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>4
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522771010221727464)
,p_query_column_id=>6
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>5
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522771126277727464)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>6
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14936947440190709013)
,p_query_column_id=>8
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>11
,p_column_heading=>'User name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14936947469339709014)
,p_query_column_id=>9
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>12
,p_column_heading=>'User icon'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14936947620259709015)
,p_query_column_id=>10
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>13
,p_column_heading=>'Icon modifier'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14936947711281709016)
,p_query_column_id=>11
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>14
,p_column_heading=>'Comment date'
,p_use_as_row_header=>'N'
,p_column_format=>'since'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16721671319049979386)
,p_query_column_id=>12
,p_column_alias=>'LINK'
,p_column_display_sequence=>8
,p_column_heading=>'Link'
,p_column_link=>'f?p=&APP_ID.:7:&SESSION.:CUSTOMER:&DEBUG.:7:P7_ID:#NOTE_ID#'
,p_column_linktext=>'#LINK#'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>'''#NOTE_ID#'' is not null'
,p_display_when_condition2=>'PLSQL'
,p_report_column_required_role=>wwv_flow_api.id(16066770301217181173)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14936947767970709017)
,p_query_column_id=>13
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>15
,p_column_heading=>'Actions'
,p_column_link=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:RP,97:P97_ID,P97_CUSTOMER_ID:#NOTE_ID#,&P50_ID.'
,p_column_linktext=>'#ACTIONS#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522771505562727465)
,p_query_column_id=>14
,p_column_alias=>'CREATED'
,p_column_display_sequence=>7
,p_column_heading=>'Created'
,p_use_as_row_header=>'N'
,p_column_format=>'since'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16734221304265683098)
,p_query_column_id=>15
,p_column_alias=>'NOTE_ID'
,p_column_display_sequence=>9
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16522772117838727465)
,p_name=>'Attachments'
,p_region_name=>'rptAttachments'
,p_template=>wwv_flow_api.id(14959353760448679146)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    id,',
'    ''<a href="''||APEX_UTIL.GET_BLOB_FILE_SRC(''P64_FILE_BLOB'',id)||''">''||apex_escape.html(FILE_NAME)||''</a>'' FILE_NAME,',
'    FILE_MIMETYPE,',
'    FILE_CHARSET,',
'    apex_util.filesize_mask(dbms_lob.getlength(FILE_BLOB)) f_len,',
'    substr(FILE_COMMENTS,1,50)||decode(greatest(length(FILE_COMMENTS),50),50,'''',''...'') FILE_COMMENTS,',
'    case when instr(upper(FILE_NAME),''.PPT'') > 0or instr(upper(FILE_NAME),''.PPTX'') > 0 then',
'        ''uFileIcon powerpoint''',
'    when instr(upper(FILE_NAME),''.XLS'') > 0 or instr(upper(FILE_NAME),''.XLSX'') > 0 then',
'        ''uFileIcon excel''',
'    when instr(upper(FILE_NAME),''.DOC'') > 0 or instr(upper(FILE_NAME),''.DOCX'') > 0 then',
'        ''uFileIcon word''',
'    when instr(upper(FILE_NAME),''.PDF'') > 0 then',
'        ''uFileIcon pdf''',
'    when instr(upper(FILE_NAME),''.GIF'') > 0 or',
'         instr(upper(FILE_NAME),''.PNG'') > 0 or',
'         instr(upper(FILE_NAME),''.TIFF'') > 0 or',
'         instr(upper(FILE_NAME),''.JPG'') > 0 then',
'        ''uFileIcon image''',
'    else',
'        ''uFileIcon generic''',
'    end file_type,',
'    created,',
'    lower(created_by) created_by',
'from EBA_CUST_FILES f',
'where CUSTOMER_ID = :P50_ID ',
'order by created desc;'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959360421115679159)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No attachments found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522772821032727466)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP,64:P64_CUSTOMER_ID,P64_ID:&P50_ID.,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522773098263727466)
,p_query_column_id=>2
,p_column_alias=>'FILE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522772908275727466)
,p_query_column_id=>3
,p_column_alias=>'FILE_MIMETYPE'
,p_column_display_sequence=>8
,p_column_heading=>'Mimetype'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522773007038727466)
,p_query_column_id=>4
,p_column_alias=>'FILE_CHARSET'
,p_column_display_sequence=>9
,p_column_heading=>'Charset'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522772309050727465)
,p_query_column_id=>5
,p_column_alias=>'F_LEN'
,p_column_display_sequence=>4
,p_column_heading=>'Size'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522772396213727465)
,p_query_column_id=>6
,p_column_alias=>'FILE_COMMENTS'
,p_column_display_sequence=>5
,p_column_heading=>'Description'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522772521280727465)
,p_query_column_id=>7
,p_column_alias=>'FILE_TYPE'
,p_column_display_sequence=>2
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="#FILE_TYPE#" />'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'NO'
,p_report_column_width=>16
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522772609580727466)
,p_query_column_id=>8
,p_column_alias=>'CREATED'
,p_column_display_sequence=>6
,p_column_heading=>'Added'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#CREATED# &middot; #CREATED_BY#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522772718666727466)
,p_query_column_id=>9
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'Added By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16522773601848727466)
,p_name=>'Links'
,p_region_name=>'rptLinks'
,p_template=>wwv_flow_api.id(14959353760448679146)
,p_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,decode(LINK_DESC,null, LINK, LINK_DESC) link_text, LINK link_target, lower(created_by) created_by, created, LINK_DESC ',
'from EBA_CUST_LINKS ',
'where CUSTOMER_ID = :P50_ID ',
'order by created desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959360421115679159)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No links found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13945740107398516983)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:RP,66:P66_CUSTOMER_ID,P66_ID:&P50_ID.,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522773822494727467)
,p_query_column_id=>2
,p_column_alias=>'LINK_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_column_link=>'#LINK_TARGET#'
,p_column_linktext=>'#LINK_TEXT#'
,p_column_link_attr=>'target="_blank"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522773920799727467)
,p_query_column_id=>3
,p_column_alias=>'LINK_TARGET'
,p_column_display_sequence=>2
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522774022578727467)
,p_query_column_id=>4
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>6
,p_column_heading=>'Added By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522774125126727467)
,p_query_column_id=>5
,p_column_alias=>'CREATED'
,p_column_display_sequence=>5
,p_column_heading=>'Added'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#CREATED# &middot; #CREATED_BY#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16523315096185821157)
,p_query_column_id=>6
,p_column_alias=>'LINK_DESC'
,p_column_display_sequence=>4
,p_column_heading=>'Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16522774719892727468)
,p_name=>'Customer'
,p_region_name=>'CUSTOMERS'
,p_template=>wwv_flow_api.id(14959340065054679123)
,p_display_sequence=>20
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'t-Form--noPadding:t-Form--large:t-Form--stretchInputs:t-Form--labelsAbove:margin-left-none'
,p_component_template_options=>'#DEFAULT#:t-AVPList--fixedLabelSmall:t-AVPList--leftAligned'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   a.id,',
'   c.status,',
'   a.summary,',
'   apex_util.get_since(a.created) as created,',
'   lower(a.created_by) as created_by,',
'   apex_util.get_since(a.updated) as updated,',
'   lower(a.updated_by) as updated_by,',
'   row_key',
'from',
'   eba_cust_customers a , eba_cust_categories b, eba_cust_status c, eba_cust_geographies d',
'where ',
'   a.category_id = b.id (+) and ',
'   a.status_id = c.id (+) and ',
'   a.geography_id = d.id (+) and',
'   a.id = :P50_ID'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959362316404679165)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13945740047360516982)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522775408894727468)
,p_query_column_id=>2
,p_column_alias=>'STATUS'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and status_id is not null'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16522826314948735476)
,p_query_column_id=>3
,p_column_alias=>'SUMMARY'
,p_column_display_sequence=>3
,p_column_heading=>'Summary'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_customers',
' where id = :P50_ID',
'   and summary is not null'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249678784183560562)
,p_query_column_id=>4
,p_column_alias=>'CREATED'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249678837748560563)
,p_query_column_id=>5
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>5
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249678966223560564)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1249679068254560565)
,p_query_column_id=>7
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(1197776169602139160)
,p_query_column_id=>8
,p_column_alias=>'ROW_KEY'
,p_column_display_sequence=>8
,p_column_heading=>'Row Key'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_required_patch=>wwv_flow_api.id(1263250094405801751)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16522779794004727472)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(14959356293935679148)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(17940232663340213707)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(14959371794034679193)
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16693997498225032636)
,p_name=>'Products'
,p_region_name=>'rptProducts'
,p_template=>wwv_flow_api.id(14959353760448679146)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.id, p.product_name, u.reference_status_id, p.id as product_id,',
'       (',
'            select listagg(rt.reference_type,'', '') within group (order by rt.reference_type)',
'              from eba_cust_reference_types rt',
'             where '':''||u.reference_type_ids||'':'' like ''%:''||rt.id||'':%''',
'       ) as reference_types,',
'       decode( u.customer_contact_id, null, null, (select decode(email, null, name, ''<a href="mailto:''',
'                                                                 || apex_escape.html(email) || ''">''',
'                                                                 || apex_escape.html(name)',
'                                                                 || ''</a>'')',
'                                                   from EBA_CUST_CONTACTS where id = u.customer_contact_id) ) as customer_contact,',
'       case when instr(nvl(u.internal_contact,''xxx''), ''@'') = 0 then u.internal_contact',
'           else ''<a href="mailto:'' || apex_escape.html(u.internal_contact) || ''">'' || apex_escape.html(u.internal_contact)',
'               || ''</a>'' end as internal_contact,',
'       u.valid_from, u.valid_to,',
'       u.created added, lower(u.created_by) added_by,',
'       ( select name from eba_cust_product_families pf where pf.id = p.product_family_id ) product_family,',
'       u.COMMENTS ',
'from eba_cust_product_uses u,',
'     eba_cust_products p',
'where u.CUSTOMER_ID = :P50_ID',
'  and u.product_id = p.id',
'order by p.product_name, u.created desc'))
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959360421115679159)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No products found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(15056284008974600818)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13945740275856516984)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,68:P68_CUSTOMER_ID,P68_PRODUCT_ID,P68_ID:&P50_ID.,#PRODUCT_ID#,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16693997816982032648)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Product'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14377964214673578792)
,p_query_column_id=>3
,p_column_alias=>'REFERENCE_STATUS_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Reference Status'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'''))
,p_display_when_condition2=>'PLSQL'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(14381294198356414813)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14377962943166578779)
,p_query_column_id=>4
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>2
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14377964321042578793)
,p_query_column_id=>5
,p_column_alias=>'REFERENCE_TYPES'
,p_column_display_sequence=>6
,p_column_heading=>'Reference Assets'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'''))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14377962812345578778)
,p_query_column_id=>6
,p_column_alias=>'CUSTOMER_CONTACT'
,p_column_display_sequence=>8
,p_column_heading=>'Customer Contact'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_product_uses',
' where customer_id = :P50_ID',
'   and customer_contact_id is not null',
'   and APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'''))
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14377962416017578774)
,p_query_column_id=>7
,p_column_alias=>'INTERNAL_CONTACT'
,p_column_display_sequence=>7
,p_column_heading=>'Internal Contact'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from eba_cust_product_uses',
' where customer_id = :P50_ID',
'   and internal_contact is not null'))
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14377962652301578776)
,p_query_column_id=>8
,p_column_alias=>'VALID_FROM'
,p_column_display_sequence=>9
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'''))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14377962765681578777)
,p_query_column_id=>9
,p_column_alias=>'VALID_TO'
,p_column_display_sequence=>10
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXPRESSION'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_UTIL.GET_BUILD_OPTION_STATUS(',
'    P_APPLICATION_ID => :APP_ID,',
'    P_BUILD_OPTION_NAME => ''Product Referencability'') = ''INCLUDE'''))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16693997894042032650)
,p_query_column_id=>10
,p_column_alias=>'ADDED'
,p_column_display_sequence=>11
,p_column_heading=>'Added'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#ADDED# &middot; #ADDED_BY#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16693998025173032650)
,p_query_column_id=>11
,p_column_alias=>'ADDED_BY'
,p_column_display_sequence=>12
,p_column_heading=>'Added By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17848828413276609505)
,p_query_column_id=>12
,p_column_alias=>'PRODUCT_FAMILY'
,p_column_display_sequence=>4
,p_column_heading=>'Product Family'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from eba_cust_product_families'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18080535108952582087)
,p_query_column_id=>13
,p_column_alias=>'COMMENTS'
,p_column_display_sequence=>13
,p_column_heading=>'Comments'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16694095809388117515)
,p_name=>'Contacts'
,p_region_name=>'rptContacts'
,p_template=>wwv_flow_api.id(14959353760448679146)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    "ID", ',
'    "NAME",',
'    "TITLE",',
'    "PHONE",',
'    "EMAIL",',
'    created date_added,',
'    lower(created_by) added_by',
'from EBA_CUST_CONTACTS',
'where customer_id = :P50_ID',
'order by name;'))
,p_required_role=>wwv_flow_api.id(16066770301217181173)
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959360421115679159)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No contacts found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(15056291296847667269)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16694096109897117522)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP,37:P37_CUSTOMER_ID,P37_ID:&P50_ID.,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit #NAME#">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16694096214476117523)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16694096300954117523)
,p_query_column_id=>3
,p_column_alias=>'TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Title'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16694096394048117523)
,p_query_column_id=>4
,p_column_alias=>'PHONE'
,p_column_display_sequence=>5
,p_column_heading=>'Phone'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16694096498859117523)
,p_query_column_id=>5
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>4
,p_column_heading=>'Email'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16694097619740167844)
,p_query_column_id=>6
,p_column_alias=>'DATE_ADDED'
,p_column_display_sequence=>7
,p_column_heading=>'Added'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#DATE_ADDED# &middot; #ADDED_BY#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16694097699724167845)
,p_query_column_id=>7
,p_column_alias=>'ADDED_BY'
,p_column_display_sequence=>6
,p_column_heading=>'Added By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(16927633616049359286)
,p_name=>'Referenceability'
,p_region_name=>'referenceability'
,p_template=>wwv_flow_api.id(14959353760448679146)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'   a.id,',
'   referencable,',
'    (   select listagg(rt.reference_type, '', '') within group (order by rt.reference_type) reference_types',
'        from eba_cust_reference_types rt, eba_cust_customer_reftype_ref ref',
'        where ref.customer_id = a.id',
'            and rt.id = ref.reference_type_id',
'    ) reference_types,',
'    a.reference_phase_id reference_phase,',
'    a.REF_RECRUITMENT_OWNER',
'from',
'   eba_cust_customers a , eba_cust_categories b, eba_cust_status c, eba_cust_geographies d',
'where ',
'   a.category_id = b.id (+) and ',
'   a.status_id = c.id (+) and ',
'   a.geography_id = d.id (+) and',
'   a.id = :P50_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959360421115679159)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16927634904988359299)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.:RP,96:P96_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16927634994456359300)
,p_query_column_id=>2
,p_column_alias=>'REFERENCABLE'
,p_column_display_sequence=>2
,p_column_heading=>'Referenceable'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16927635103168359301)
,p_query_column_id=>3
,p_column_alias=>'REFERENCE_TYPES'
,p_column_display_sequence=>3
,p_column_heading=>'Reference Types'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16927635260417359302)
,p_query_column_id=>4
,p_column_alias=>'REFERENCE_PHASE'
,p_column_display_sequence=>4
,p_column_heading=>'Reference Phase'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(15944308410488141693)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(16927635359476359303)
,p_query_column_id=>5
,p_column_alias=>'REF_RECRUITMENT_OWNER'
,p_column_display_sequence=>5
,p_column_heading=>'Recruitment Owner'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(17848825493386609476)
,p_name=>'Competitors'
,p_region_name=>'rptCompetitors'
,p_template=>wwv_flow_api.id(14959353760448679146)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rf.id,',
'    c.name competitor,',
'    c.website,',
'    c.description,',
'    rf.created added,',
'    lower(rf.created_by) added_by',
'from eba_cust_cust_competitor_ref rf,',
'     eba_cust_competitors c',
'where rf.customer_id = :P50_ID',
'  and c.id = rf.competitor_id',
'order by c.name, rf.created desc'))
,p_required_role=>wwv_flow_api.id(1460638553279431008)
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959360421115679159)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No partners found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(1436969897904658887)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17848825948347609480)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:RP,111:P111_CUSTOMER_ID:&P50_ID.'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit #COMPETITOR#">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17848826358347609484)
,p_query_column_id=>2
,p_column_alias=>'COMPETITOR'
,p_column_display_sequence=>2
,p_column_heading=>'Competitor'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17848826131888609482)
,p_query_column_id=>3
,p_column_alias=>'WEBSITE'
,p_column_display_sequence=>3
,p_column_heading=>'Website'
,p_column_link=>'#WEBSITE#'
,p_column_linktext=>'#WEBSITE#'
,p_column_link_attr=>'target="_blank"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17848826218864609483)
,p_query_column_id=>4
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>4
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17848825722963609478)
,p_query_column_id=>5
,p_column_alias=>'ADDED'
,p_column_display_sequence=>5
,p_column_heading=>'Added'
,p_use_as_row_header=>'N'
,p_column_format=>'SINCE'
,p_column_html_expression=>'#ADDED# &middot; #ADDED_BY#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17848825825500609479)
,p_query_column_id=>6
,p_column_alias=>'ADDED_BY'
,p_column_display_sequence=>6
,p_column_heading=>'Added By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'NEVER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18269071121287661278)
,p_name=>'Activities'
,p_region_name=>'rptActivities'
,p_template=>wwv_flow_api.id(14959353760448679146)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rf.id,',
'    rf.activity_id,',
'    a.type_id,',
'    a.name activity,',
'    nvl(a.activity_date,rf.activity_date) activity_date,',
'    nvl(a.owner, rf.owner) owner,',
'    nvl(a.location, rf.location) location',
'from eba_cust_activities a,',
'    eba_cust_activity_ref rf',
'where rf.customer_id = :P50_ID',
'    and rf.activity_id = a.id',
'order by 3 desc, 2'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959360421115679159)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'No contacts found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
,p_required_patch=>wwv_flow_api.id(18239047336378534071)
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18269071691268661284)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:RP,150:P150_CUSTOMER_ID,P150_ID:&P50_ID.,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18269074749185661314)
,p_query_column_id=>2
,p_column_alias=>'ACTIVITY_ID'
,p_column_display_sequence=>7
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18269074617986661313)
,p_query_column_id=>3
,p_column_alias=>'TYPE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(18246031274316887075)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18269072178401661288)
,p_query_column_id=>4
,p_column_alias=>'ACTIVITY'
,p_column_display_sequence=>3
,p_column_heading=>'Activity'
,p_column_link=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:RP,145:P145_ID:#ACTIVITY_ID#'
,p_column_linktext=>'#ACTIVITY#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18269072210676661289)
,p_query_column_id=>5
,p_column_alias=>'ACTIVITY_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Activity date'
,p_use_as_row_header=>'N'
,p_column_format=>'fmDay, fmDD fmMonth, YYYY'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18269072360674661290)
,p_query_column_id=>6
,p_column_alias=>'OWNER'
,p_column_display_sequence=>5
,p_column_heading=>'Owner'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18269072475294661291)
,p_query_column_id=>7
,p_column_alias=>'LOCATION'
,p_column_display_sequence=>6
,p_column_heading=>'Location'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18560516679629188915)
,p_name=>'Sub Customers'
,p_region_name=>'rptSubCustomers'
,p_template=>wwv_flow_api.id(14959353760448679146)
,p_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-dynamicHideShowRegion'
,p_region_sub_css_classes=>'t-Report--cleanBorders'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--noBorders'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'   a.customer_name,',
'   a.number_of_users,',
'   a.summary,',
'    (   select listagg(rt.reference_type, '', '') within group (order by rt.reference_type) reference_types',
'        from eba_cust_reference_types rt, eba_cust_customer_reftype_ref ref',
'        where ref.customer_id = a.id',
'            and rt.id = ref.reference_type_id',
'    ) reference_types,',
'    a.updated,',
'    lower(a.updated_by) updated_by',
'from eba_cust_customers a, eba_cust_categories b, eba_cust_status c, eba_cust_geographies d',
'where a.category_id = b.id (+) and ',
'   a.status_id = c.id (+) and ',
'   a.geography_id = d.id (+) and',
'   a.parent_customer_id = :P50_ID',
'order by lower(a.customer_name)'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(14959360421115679159)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18845428035951101902)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>5
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18560517161454188920)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Customer'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:RP,50:P50_ID:#ID#'
,p_column_linktext=>'#CUSTOMER_NAME#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18845425490167101877)
,p_query_column_id=>3
,p_column_alias=>'NUMBER_OF_USERS'
,p_column_display_sequence=>2
,p_column_heading=>'Users'
,p_use_as_row_header=>'N'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18845425672010101878)
,p_query_column_id=>4
,p_column_alias=>'SUMMARY'
,p_column_display_sequence=>3
,p_column_heading=>'Summary'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18845427644328101898)
,p_query_column_id=>5
,p_column_alias=>'REFERENCE_TYPES'
,p_column_display_sequence=>4
,p_column_heading=>'Referencability'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_column_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from eba_cust_customers',
'where referencable != ''No'' and referencable is not null and id = :P50_ID'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18845428606074101908)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>6
,p_column_heading=>'Updated'
,p_use_as_row_header=>'N'
,p_column_format=>'Since'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18845428694579101909)
,p_query_column_id=>7
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'Updated By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16522769202576727461)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(16522779794004727472)
,p_button_name=>'EDIT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(14959371564035679192)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Edit Customer'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_ID:&P50_ID.'
,p_security_scheme=>wwv_flow_api.id(16066770301217181173)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1249678408347560559)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(247967240972728761)
,p_button_name=>'EDIT_CUSTOMER_DETAILS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'Edit Customer Details'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP,2:P2_ID:&P50_ID.'
,p_icon_css_classes=>'fa-pencil'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2666264378444377441)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2415206441466499277)
,p_button_name=>'POP_ISSUE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'Add Issue'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_button_comment=>'Fixed missing reference that prevented user from adding an issue using the + button in this report. - Carlos.'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15749083015466648906)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15749082900923648905)
,p_button_name=>'POP_PARTNERS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'Select Partners'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:RP,110,RIR:P110_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(16066770301217181173)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16694098307535183225)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16694095809388117515)
,p_button_name=>'POP_CONTACT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'Add Contact'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP,37:P37_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(16066770301217181173)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17848825672870609477)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17848825493386609476)
,p_button_name=>'POP_COMPETITORS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'Select Competitors'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:111:&SESSION.::&DEBUG.:RP,111,RIR:P111_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(16066770301217181173)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18269071269311661279)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18269071121287661278)
,p_button_name=>'POP_ACTIVITY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'Add Activity'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:RP,150:P150_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(16066770301217181173)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2666264736733377445)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(2415206441466499277)
,p_button_name=>'VIEW_ISSUES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'View Issues'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:RP:P131_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16694098517232185969)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16694095809388117515)
,p_button_name=>'VIEW_CONTACTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'View Contacts'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_ID:&P50_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18269071305700661280)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18269071121287661278)
,p_button_name=>'VIEW_ACTIVITIES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'View Activities'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.:RP,RIR,149:P149_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16694099320826196537)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(16693997498225032636)
,p_button_name=>'POP_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'Add Product'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:RP,68,RIR:P68_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(16066770301217181173)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16694099495330198643)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(16693997498225032636)
,p_button_name=>'VIEW_PRODUCTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'View Products'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:67:P67_ID:&P50_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16522771916398727465)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(16522770412687727464)
,p_button_name=>'POPNOTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'Add Update'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:RP,97:P97_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(16066770301217181173)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16522771701240727465)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(16522770412687727464)
,p_button_name=>'GONOTES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'Notes'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:47:P47_ID:&P50_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16522774523491727467)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(16522773601848727466)
,p_button_name=>'POP_LINK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'Add Link'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:RP,66:P66_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(16066770301217181173)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16522774299155727467)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(16522773601848727466)
,p_button_name=>'VIEW_LINKS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'View Links'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:51:P51_ID:&P50_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16522773209214727466)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(16522772117838727465)
,p_button_name=>'POPATTACHMENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'Add Attachment'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:RP,64:P64_CUSTOMER_ID:&P50_ID.'
,p_icon_css_classes=>'fa-plus'
,p_security_scheme=>wwv_flow_api.id(16066770301217181173)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16522773401571727466)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(16522772117838727465)
,p_button_name=>'VIEW_ATTACHMENTS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(14959370760873679189)
,p_button_image_alt=>'View Attachments'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:52:P52_ID:&P50_ID.'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16522781209717727480)
,p_branch_action=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::P50_ID:&P50_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 11-JAN-2012 16:02 by MIKE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14721970220941808543)
,p_name=>'P50_ROW_KEY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16522769601859727462)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select row_key',
'from EBA_CUST_CUSTOMERS',
'where id = :P50_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16522769800330727463)
,p_name=>'P50_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16522769601859727462)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(14959795792469544377)
,p_computation_sequence=>10
,p_computation_item=>'CUSTOMER'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select apex_escape.html(customer_name) from eba_cust_customers where id = :P50_ID'
);
wwv_flow_api.create_page_computation(
 p_id=>wwv_flow_api.id(16522780397355727478)
,p_computation_sequence=>20
,p_computation_item=>'LAST_VIEW'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation=>'50'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12834209818584006418)
,p_name=>'Handle Show / Hide Content Regions'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12834209917397006419)
,p_event_id=>wwv_flow_api.id(12834209818584006418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function() {',
'  function toggleRegion() {',
'      var $region = $(this)',
'        noDataFound = $region.find(''.nodatafound'').length === 1;',
'      ',
'      //triggering after hide/show because that what the RDS response to',
'      if (noDataFound) {',
'        $region.hide();',
'        $region.trigger(''apexafterhide'');',
'      } else {',
'        $region.show();',
'        $region.trigger(''apexaftershow'');',
'      }',
'  }',
'  ',
'  function initHideShowRegions() {',
'    var $regions = $(''.js-dynamicHideShowRegion''),',
'      $rds = $(''.apex-rds'');',
'',
'    $regions',
'      .each(toggleRegion)',
'      .on(''apexafterrefresh'', toggleRegion);',
' ',
'    //using visiblity over display to avoid DOM movement issues',
'    $rds.css(''visibility'', ''visible'');',
'  } ',
'',
'  //using load because document.ready here goes before the RDS has added its listeners',
'  $(window).on(''theme42ready'',initHideShowRegions);',
'}())'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12834210007429006420)
,p_name=>'Refresh Contacts'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptContacts'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "37"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13945646580614523671)
,p_event_id=>wwv_flow_api.id(12834210007429006420)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16694095809388117515)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13945646675309523672)
,p_name=>'Refresh Updates'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptUpdates'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "97"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13945646762701523673)
,p_event_id=>wwv_flow_api.id(13945646675309523672)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16522770412687727464)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13945646812224523674)
,p_name=>'Refresh Products'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptProducts'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "68"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13945646955016523675)
,p_event_id=>wwv_flow_api.id(13945646812224523674)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16693997498225032636)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17848825266169609473)
,p_name=>'Refresh Partners'
,p_event_sequence=>50
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptPartners'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "110"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17848825341052609474)
,p_event_id=>wwv_flow_api.id(17848825266169609473)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15749082900923648905)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17848826429739609485)
,p_name=>'Refresh Competitors'
,p_event_sequence=>60
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptCompetitors'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "111"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17848826582993609486)
,p_event_id=>wwv_flow_api.id(17848826429739609485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17848825493386609476)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18269074350424661310)
,p_name=>'Refresh Activities'
,p_event_sequence=>70
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptActivities'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "150"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18269074464120661311)
,p_event_id=>wwv_flow_api.id(18269074350424661310)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18269071121287661278)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13945647023806523676)
,p_name=>'Refresh Links'
,p_event_sequence=>80
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptLinks'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "66"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13945647085854523677)
,p_event_id=>wwv_flow_api.id(13945647023806523676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16522773601848727466)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13945647264252523678)
,p_name=>'Refresh Attachments'
,p_event_sequence=>90
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptLinks'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "64"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13945647319698523679)
,p_event_id=>wwv_flow_api.id(13945647264252523678)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16522772117838727465)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14377964002698578790)
,p_name=>'Refresh IRR after Edit'
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(16693997498225032636)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14377964112559578791)
,p_event_id=>wwv_flow_api.id(14377964002698578790)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16693997498225032636)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16927635395579359304)
,p_name=>'Refresh on dialog close after edit'
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(16927633616049359286)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16927635570426359305)
,p_event_id=>wwv_flow_api.id(16927635395579359304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16927633616049359286)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16927635656738359306)
,p_name=>'Refresh Page Regions on dialog close'
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(14936947982906709019)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16927635726905359307)
,p_event_id=>wwv_flow_api.id(16927635656738359306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16927633616049359286)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16927635821550359308)
,p_event_id=>wwv_flow_api.id(16927635656738359306)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16522772117838727465)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16927635911009359309)
,p_event_id=>wwv_flow_api.id(16927635656738359306)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16522773601848727466)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16927636057298359310)
,p_event_id=>wwv_flow_api.id(16927635656738359306)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16694095809388117515)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18269074584344661312)
,p_event_id=>wwv_flow_api.id(16927635656738359306)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18269071121287661278)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16927636153934359311)
,p_event_id=>wwv_flow_api.id(16927635656738359306)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16693997498225032636)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16927636217622359312)
,p_event_id=>wwv_flow_api.id(16927635656738359306)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16522770412687727464)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2666264093456377439)
,p_event_id=>wwv_flow_api.id(16927635656738359306)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(2415206441466499277)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2666264191892377440)
,p_event_id=>wwv_flow_api.id(16927635656738359306)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14959566262906922709)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2666263829691377436)
,p_name=>'Refresh Issues'
,p_event_sequence=>130
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptIssues'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "129"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'select null from eba_cust_issues where customer_id = :P50_ID'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1959736266728294255)
,p_event_id=>wwv_flow_api.id(2666263829691377436)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(2415206441466499277)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1959736375000294256)
,p_name=>'Reload Issues'
,p_event_sequence=>140
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#listPageActions, #rptIssues'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.data && this.data.dialogPageId == "129"'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
,p_display_when_type=>'NOT_EXISTS'
,p_display_when_cond=>'select null from eba_cust_issues where customer_id = :P50_ID'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1959736477680294257)
,p_event_id=>wwv_flow_api.id(1959736375000294256)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'location.reload();',
'$(''li.apex-rds-item a'')[3].click();'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2666264406867377442)
,p_name=>'Refresh on Issue Pop Add'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(2666264378444377441)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2666264512502377443)
,p_event_id=>wwv_flow_api.id(2666264406867377442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(2415206441466499277)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(2666265513546377453)
,p_name=>'Go to Issues'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'REQUEST_EQUALS_CONDITION'
,p_display_when_cond=>'ISSUES'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(2666265651246377454)
,p_event_id=>wwv_flow_api.id(2666265513546377453)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''li.apex-rds-item a'')[3].click();'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15033634406856133015)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Count Clicks'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into eba_cust_clicks (cust_id) values (:P50_ID);',
'delete from eba_cust_clicks where view_timestamp < (sysdate - 90);',
'commit;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
