prompt --application/shared_components/data_profiles/sample_application_github_repository_commits
begin
--   Manifest
--     DATA PROFILE: Sample Application - Github Repository Commits
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>9008156634332785
,p_default_application_id=>123
,p_default_id_offset=>111717178695017138
,p_default_owner=>'MISO'
);
wwv_flow_api.create_data_profile(
 p_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'Sample Application - Github Repository Commits'
,p_format=>'JSON'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162282060693160131)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'SHA'
,p_sequence=>1
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'sha'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162282525805160131)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'NAME'
,p_sequence=>2
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'commit.author.name'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162282856176160131)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'EMAIL'
,p_sequence=>3
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'commit.author.email'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162283286111160131)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'DATE_'
,p_sequence=>4
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_selector=>'commit.author.date'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162283699407160131)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'COMMITTER_NAME'
,p_sequence=>5
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'commit.committer.name'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162284056267160131)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'EMAIL_2'
,p_sequence=>6
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.committer.email'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162284525391160132)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'DATE_2'
,p_sequence=>7
,p_data_type=>'TIMESTAMP WITH TIME ZONE'
,p_format_mask=>'YYYY-MM-DD"T"HH24:MI:SSTZR'
,p_has_time_zone=>true
,p_is_hidden=>true
,p_selector=>'commit.committer.date'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162284868308160132)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'MESSAGE'
,p_sequence=>8
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'commit.message'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162285326967160132)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'SHA_2'
,p_sequence=>9
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.tree.sha'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162285683060160132)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'URL'
,p_sequence=>10
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.tree.url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162286081578160132)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'URL_2'
,p_sequence=>11
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162286491752160132)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'COMMENT_COUNT'
,p_sequence=>12
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'commit.comment_count'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162286855509160133)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'VERIFIED'
,p_sequence=>13
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.verification.verified'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162287252281160133)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'REASON'
,p_sequence=>14
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.verification.reason'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162287686730160133)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'SIGNATURE'
,p_sequence=>15
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.verification.signature'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162288072277160133)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'PAYLOAD'
,p_sequence=>16
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'commit.verification.payload'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162288474356160133)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'URL_3'
,p_sequence=>17
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162288926016160133)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'HTML_URL'
,p_sequence=>18
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'html_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162289338252160134)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'COMMENTS_URL'
,p_sequence=>19
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'comments_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162289724762160134)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'LOGIN'
,p_sequence=>20
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.login'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162290119651160134)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'ID'
,p_sequence=>21
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162290486688160134)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'AVATAR_URL'
,p_sequence=>22
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.avatar_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162290946927160134)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'GRAVATAR_ID'
,p_sequence=>23
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.gravatar_id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162291295553160134)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'URL_4'
,p_sequence=>24
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162291676431160135)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'HTML_URL_2'
,p_sequence=>25
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.html_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162292096221160135)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'FOLLOWERS_URL'
,p_sequence=>26
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.followers_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162292464322160135)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'FOLLOWING_URL'
,p_sequence=>27
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.following_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162292921566160135)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'GISTS_URL'
,p_sequence=>28
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.gists_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162293308347160135)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'STARRED_URL'
,p_sequence=>29
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.starred_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162293713706160135)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'SUBSCRIPTIONS_URL'
,p_sequence=>30
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.subscriptions_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162294053142160135)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'ORGANIZATIONS_URL'
,p_sequence=>31
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.organizations_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162294546622160136)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'REPOS_URL'
,p_sequence=>32
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.repos_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162294938526160136)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'EVENTS_URL'
,p_sequence=>33
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.events_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162295262992160136)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'RECEIVED_EVENTS_URL'
,p_sequence=>34
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.received_events_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162295699479160136)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'TYPE'
,p_sequence=>35
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.type'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162296096072160136)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'SITE_ADMIN'
,p_sequence=>36
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'author.site_admin'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162296525212160136)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'COMMITTER_LOGIN'
,p_sequence=>37
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'committer.login'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162296905321160137)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'ID_2'
,p_sequence=>38
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162297297678160137)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'COMMITTER_IMAGE'
,p_sequence=>39
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'committer.avatar_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162297717958160137)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'GRAVATAR_ID_2'
,p_sequence=>40
,p_data_type=>'VARCHAR2'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.gravatar_id'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162298113355160137)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'URL_5'
,p_sequence=>41
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162298512818160137)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'HTML_URL_3'
,p_sequence=>42
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.html_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162298857211160137)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'FOLLOWERS_URL_2'
,p_sequence=>43
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.followers_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162299305059160138)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'FOLLOWING_URL_2'
,p_sequence=>44
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.following_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162299661368160138)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'GISTS_URL_2'
,p_sequence=>45
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.gists_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162300127661160138)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'STARRED_URL_2'
,p_sequence=>46
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.starred_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162300498445160138)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'SUBSCRIPTIONS_URL_2'
,p_sequence=>47
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.subscriptions_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162300918168160138)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'ORGANIZATIONS_URL_2'
,p_sequence=>48
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.organizations_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162301332007160138)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'REPOS_URL_2'
,p_sequence=>49
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.repos_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162301729004160139)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'EVENTS_URL_2'
,p_sequence=>50
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.events_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162302145765160139)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'RECEIVED_EVENTS_URL_2'
,p_sequence=>51
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.received_events_url'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162302497001160139)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
,p_name=>'TYPE_2'
,p_sequence=>52
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'committer.type'
);
wwv_flow_api.create_data_profile_col(
 p_id=>wwv_flow_api.id(162302870237160139)
,p_data_profile_id=>wwv_flow_api.id(162281892848160130)
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
