prompt --application/deployment/install/install_view
begin
--   Manifest
--     INSTALL: INSTALL-view
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(16701323697797121426)
,p_install_id=>wwv_flow_api.id(17893718049487094920)
,p_name=>'view'
,p_sequence=>480
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'create or replace view eba_cust_customers_v as',
'select ',
'   a.row_key, ',
'   a.id,',
'   customer_name,',
'   status,',
'   a.status_id,',
'   category,',
'   geography_name,',
'   referencable,',
'   number_of_users,',
'   summary,',
'   web_site,',
'   (select listagg(p.product_name, '', '') within group (order by p.product_name) product_uses',
'    from eba_cust_customers c, eba_cust_product_uses u, eba_cust_products p',
'    where c.id = u.customer_id',
'    and u.product_id = p.id',
'    and c.id = a.id',
'    group by c.customer_name',
'   ) product_uses,',
'   nvl((select industry_name from eba_cust_industries i where i.id = a.industry_id),''Not Defined'') industry,',
'   tags,',
'   a.created,',
'   a.created_by,',
'   a.updated,',
'   a.updated_by',
'from   ',
'   eba_cust_customers a, ',
'   eba_cust_categories b, ',
'   eba_cust_status c, ',
'   eba_cust_geographies d',
'where ',
'   a.category_id = b.id (+) and ',
'   a.status_id = c.id (+) and ',
'   a.geography_id = d.id (+)',
';',
''))
);
wwv_flow_api.component_end;
end;
/
