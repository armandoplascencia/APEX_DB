prompt --application/shared_components/files/bubble_sprite_png
begin
--   Manifest
--     APP STATIC FILES: 134
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>134
,p_default_id_offset=>172493832712964115
,p_default_owner=>'MISO'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000028000000640803000000C3BA82480000001974455874536F6674776172650041646F626520496D616765526561647971C9653C00000012504C5445CCCCCCF8F8F8EEEEEEDADADADEDEDEFFFFFFEE821A0F';
wwv_flow_api.g_varchar2_table(2) := '0000000674524E53FFFFFFFFFF00B3BFA4BF000000624944415478DAECD6B11180400CC4C003E3FE5B86C738C50A889853BC05483AB64AF99AB2E5085BCEF091009624F096082EC9E025214C519818A6A1A1A1A1A1E1F750B157F30104842DC901048425';
wwv_flow_api.g_varchar2_table(3) := 'D90104844BD203081F80A1A1A1A1E1AFE029C0001C734C873F2B629C0000000049454E44AE426082';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(4019483792500519816)
,p_file_name=>'bubble_sprite.png'
,p_mime_type=>'image/png'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
