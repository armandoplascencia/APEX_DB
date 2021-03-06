prompt --application/shared_components/data_profiles/sample_application_github_repository_commits
begin
--   Manifest
--     DATA PROFILE: Sample Application - Github Repository Commits
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>129
,p_default_id_offset=>101668256384016436
,p_default_owner=>'MISO'
);
wwv_flow_api.create_data_profile(
 p_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'Sample Application - Github Repository Commits'
,p_format=>'JSON'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152233138382159429)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'SHA'
,p_sequence=>1
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'sha'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152233603494159429)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'NAME'
,p_sequence=>2
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'commit.author.name'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152233933865159429)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'EMAIL'
,p_sequence=>3
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'commit.author.email'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152234363800159429)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'DATE_'
,p_sequence=>4
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_selector=>'commit.author.date'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152234777096159429)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'COMMITTER_NAME'
,p_sequence=>5
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'commit.committer.name'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152235133956159429)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'EMAIL_2'
,p_sequence=>6
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.committer.email'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152235603080159430)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'DATE_2'
,p_sequence=>7
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_is_hidden=>true
,p_selector=>'commit.committer.date'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152235945997159430)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'MESSAGE'
,p_sequence=>8
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'commit.message'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152236404656159430)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'SHA_2'
,p_sequence=>9
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.tree.sha'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152236760749159430)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'URL'
,p_sequence=>10
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.tree.url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152237159267159430)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'URL_2'
,p_sequence=>11
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152237569441159430)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'COMMENT_COUNT'
,p_sequence=>12
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'commit.comment_count'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152237933198159431)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'VERIFIED'
,p_sequence=>13
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.verification.verified'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152238329970159431)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'REASON'
,p_sequence=>14
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.verification.reason'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152238764419159431)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'SIGNATURE'
,p_sequence=>15
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.verification.signature'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152239149966159431)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'PAYLOAD'
,p_sequence=>16
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.verification.payload'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152239552045159431)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'URL_3'
,p_sequence=>17
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152240003705159431)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'HTML_URL'
,p_sequence=>18
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'html_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152240415941159432)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'COMMENTS_URL'
,p_sequence=>19
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'comments_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152240802451159432)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'LOGIN'
,p_sequence=>20
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.login'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152241197340159432)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'ID'
,p_sequence=>21
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152241564377159432)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'AVATAR_URL'
,p_sequence=>22
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.avatar_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152242024616159432)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'GRAVATAR_ID'
,p_sequence=>23
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.gravatar_id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152242373242159432)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'URL_4'
,p_sequence=>24
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152242754120159433)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'HTML_URL_2'
,p_sequence=>25
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.html_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152243173910159433)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'FOLLOWERS_URL'
,p_sequence=>26
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.followers_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152243542011159433)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'FOLLOWING_URL'
,p_sequence=>27
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.following_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152243999255159433)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'GISTS_URL'
,p_sequence=>28
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.gists_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152244386036159433)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'STARRED_URL'
,p_sequence=>29
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.starred_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152244791395159433)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'SUBSCRIPTIONS_URL'
,p_sequence=>30
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.subscriptions_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152245130831159433)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'ORGANIZATIONS_URL'
,p_sequence=>31
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.organizations_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152245624311159434)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'REPOS_URL'
,p_sequence=>32
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.repos_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152246016215159434)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'EVENTS_URL'
,p_sequence=>33
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.events_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152246340681159434)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'RECEIVED_EVENTS_URL'
,p_sequence=>34
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.received_events_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152246777168159434)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'TYPE'
,p_sequence=>35
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.type'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152247173761159434)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'SITE_ADMIN'
,p_sequence=>36
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.site_admin'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152247602901159434)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'COMMITTER_LOGIN'
,p_sequence=>37
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'committer.login'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152247983010159435)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'ID_2'
,p_sequence=>38
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152248375367159435)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'COMMITTER_IMAGE'
,p_sequence=>39
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'committer.avatar_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152248795647159435)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'GRAVATAR_ID_2'
,p_sequence=>40
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.gravatar_id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152249191044159435)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'URL_5'
,p_sequence=>41
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152249590507159435)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'HTML_URL_3'
,p_sequence=>42
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.html_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152249934900159435)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'FOLLOWERS_URL_2'
,p_sequence=>43
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.followers_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152250382748159436)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'FOLLOWING_URL_2'
,p_sequence=>44
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.following_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152250739057159436)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'GISTS_URL_2'
,p_sequence=>45
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.gists_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152251205350159436)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'STARRED_URL_2'
,p_sequence=>46
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.starred_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152251576134159436)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'SUBSCRIPTIONS_URL_2'
,p_sequence=>47
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.subscriptions_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152251995857159436)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'ORGANIZATIONS_URL_2'
,p_sequence=>48
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.organizations_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152252409696159436)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'REPOS_URL_2'
,p_sequence=>49
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.repos_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152252806693159437)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'EVENTS_URL_2'
,p_sequence=>50
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.events_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152253223454159437)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'RECEIVED_EVENTS_URL_2'
,p_sequence=>51
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.received_events_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152253574690159437)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'TYPE_2'
,p_sequence=>52
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.type'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(152253947926159437)
,p_data_profile_id=>wwv_flow_api.id(152232970537159428)
,p_name=>'SITE_ADMIN_2'
,p_sequence=>53
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.site_admin'
);
wwv_flow_api.component_end;
end;
/
