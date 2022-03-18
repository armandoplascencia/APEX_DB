prompt --application/shared_components/navigation/lists/load_customers_train
begin
--   Manifest
--     LIST: Load Customers Train
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>112
,p_default_id_offset=>101618418936909290
,p_default_owner=>'MISO'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(17894969828063080100)
,p_name=>'Load Customers Train'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
