BEGIN TRANSACTION
--
-- Create model Coach
--
CREATE TABLE [gamechanger_coach] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [CoachID] bigint NOT NULL, [CoachName] nvarchar(50) NOT NULL);
--
-- Create model Country
--
CREATE TABLE [gamechanger_country] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [CountryID] bigint NOT NULL, [CountryName] nvarchar(100) NOT NULL);
--
-- Create model Game
--
CREATE TABLE [gamechanger_game] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [GameID] bigint NOT NULL, [GameName] nvarchar(100) NOT NULL, [GameTime] date NOT NULL, [GameTeamType] smallint NOT NULL CONSTRAINT gamechanger_game_GameTeamType_6cde37df_check CHECK ([GameTeamType] >= 0));
--
-- Create model League
--
CREATE TABLE [gamechanger_league] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [LeagueID] bigint NOT NULL, [LeagueName] nvarchar(100) NOT NULL);
--
-- Create model LeagueType
--
CREATE TABLE [gamechanger_leaguetype] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [LeagueTypeID] bigint NOT NULL, [Name] nvarchar(100) NOT NULL);
--
-- Create model Player
--
CREATE TABLE [gamechanger_player] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [PlayerID] bigint NOT NULL, [PlayerName] nvarchar(100) NOT NULL);
--
-- Create model PlayerGame
--
CREATE TABLE [gamechanger_playergame] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [PlayerGameID] bigint NOT NULL, [GameID_id] bigint NOT NULL, [PlayerID_id] bigint NOT NULL);
--
-- Create model Season
--
CREATE TABLE [gamechanger_season] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [SeasonName] nvarchar(100) NOT NULL, [SeasonID] bigint NOT NULL, [SeasonBegin] date NOT NULL, [SeasonEnd] date NOT NULL);
--
-- Create model Sport
--
CREATE TABLE [gamechanger_sport] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [SportID] bigint NOT NULL, [SportName] nvarchar(100) NOT NULL);
--
-- Create model Venue
--
CREATE TABLE [gamechanger_venue] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [VenueID] bigint NOT NULL, [VenueName] nvarchar(100) NOT NULL, [VenueLat] numeric(11, 8) NOT NULL, [VenueLon] numeric(11, 8) NOT NULL);
--
-- Create model Team
--
CREATE TABLE [gamechanger_team] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [TeamID] bigint NOT NULL, [TeamName] nvarchar(100) NOT NULL, [LeagueID_id] bigint NOT NULL, [SportID_id] bigint NOT NULL);
--
-- Create model StatsType
--
CREATE TABLE [gamechanger_statstype] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [StatsTypeID] bigint NOT NULL, [StatsTypeName] nvarchar(100) NOT NULL, [SportID_id] bigint NOT NULL);
--
-- Create model SportCountry
--
CREATE TABLE [gamechanger_sportcountry] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [SportCountryID] bigint NOT NULL, [CountryID_id] bigint NOT NULL, [SportID_id] bigint NOT NULL);
--
-- Create model PlayerTeam
--
CREATE TABLE [gamechanger_playerteam] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [PlayerTeamID] bigint NOT NULL, [PlayerID_id] bigint NOT NULL, [TeamID_id] bigint NOT NULL);
--
-- Create model PlayerGameStats
--
CREATE TABLE [gamechanger_playergamestats] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [PlayerGameStatsID] bigint NOT NULL, [PlayerGameStatsEvent] date NOT NULL, [StatsQuantity] numeric(11, 8) NOT NULL, [PlayerGameID_id] bigint NOT NULL, [StatsTypeID_id] bigint NOT NULL);
--
-- Add field LeagueTypeID to league
--
ALTER TABLE [gamechanger_league] ADD [LeagueTypeID_id] bigint NOT NULL;
--
-- Add field SportID to league
--
ALTER TABLE [gamechanger_league] ADD [SportID_id] bigint NOT NULL;
--
-- Add field GameTeamID_1 to game
--
ALTER TABLE [gamechanger_game] ADD [GameTeamID_1_id] bigint NOT NULL;
--
-- Add field GameTeamID_2 to game
--
ALTER TABLE [gamechanger_game] ADD [GameTeamID_2_id] bigint NOT NULL;
--
-- Add field SeasonID to game
--
ALTER TABLE [gamechanger_game] ADD [SeasonID_id] bigint NOT NULL;
--
-- Add field VenueID to game
--
ALTER TABLE [gamechanger_game] ADD [VenueID_id] bigint NOT NULL;
--
-- Add field Sports to country
--
-- (no-op)
--
-- Create model CoachTeam
--
CREATE TABLE [gamechanger_coachteam] ([id] bigint NOT NULL PRIMARY KEY IDENTITY (1, 1), [CoachTeamID] bigint NOT NULL, [CoachID_id] bigint NOT NULL, [TeamID_id] bigint NOT NULL);
--
-- Add field Teams to coach
--
-- (no-op)
CREATE INDEX [gamechanger_team_SportID_id_45a11079] ON [gamechanger_team] ([SportID_id]);
ALTER TABLE [gamechanger_coachteam] ADD CONSTRAINT [gamechanger_coachteam_CoachID_id_c6ea8356_fk_gamechanger_coach_id] FOREIGN KEY ([CoachID_id]) REFERENCES [gamechanger_coach] ([id]);
CREATE INDEX [gamechanger_statstype_StatsTypeID_127dcf6c] ON [gamechanger_statstype] ([StatsTypeID]);
CREATE INDEX [gamechanger_game_VenueID_id_db946f13] ON [gamechanger_game] ([VenueID_id]);
CREATE INDEX [gamechanger_playergamestats_PlayerGameStatsID_f85cfc82] ON [gamechanger_playergamestats] ([PlayerGameStatsID]);
ALTER TABLE [gamechanger_playerteam] ADD CONSTRAINT [gamechanger_playerteam_TeamID_id_2c0bf51f_fk_gamechanger_team_id] FOREIGN KEY ([TeamID_id]) REFERENCES [gamechanger_team] ([id]);
ALTER TABLE [gamechanger_game] ADD CONSTRAINT [gamechanger_game_VenueID_id_db946f13_fk_gamechanger_venue_id] FOREIGN KEY ([VenueID_id]) REFERENCES [gamechanger_venue] ([id]);
CREATE INDEX [gamechanger_coachteam_CoachTeamID_0df2c877] ON [gamechanger_coachteam] ([CoachTeamID]);
CREATE INDEX [gamechanger_coachteam_CoachID_id_c6ea8356] ON [gamechanger_coachteam] ([CoachID_id]);
ALTER TABLE [gamechanger_game] ADD CONSTRAINT [gamechanger_game_GameTeamID_1_id_ca50128d_fk_gamechanger_team_id] FOREIGN KEY ([GameTeamID_1_id]) REFERENCES [gamechanger_team] ([id]);
CREATE INDEX [gamechanger_playergamestats_PlayerGameID_id_5f4e165a] ON [gamechanger_playergamestats] ([PlayerGameID_id]);
CREATE INDEX [gamechanger_league_LeagueTypeID_id_a96ca028] ON [gamechanger_league] ([LeagueTypeID_id]);
CREATE INDEX [gamechanger_playergame_GameID_id_24bf9fff] ON [gamechanger_playergame] ([GameID_id]);
ALTER TABLE [gamechanger_team] ADD CONSTRAINT [gamechanger_team_SportID_id_45a11079_fk_gamechanger_sport_id] FOREIGN KEY ([SportID_id]) REFERENCES [gamechanger_sport] ([id]);
ALTER TABLE [gamechanger_sportcountry] ADD CONSTRAINT [gamechanger_sportcountry_CountryID_id_7579c237_fk_gamechanger_country_id] FOREIGN KEY ([CountryID_id]) REFERENCES [gamechanger_country] ([id]);
ALTER TABLE [gamechanger_league] ADD CONSTRAINT [gamechanger_league_SportID_id_6e611b6e_fk_gamechanger_sport_id] FOREIGN KEY ([SportID_id]) REFERENCES [gamechanger_sport] ([id]);
ALTER TABLE [gamechanger_playergame] ADD CONSTRAINT [gamechanger_playergame_GameID_id_24bf9fff_fk_gamechanger_game_id] FOREIGN KEY ([GameID_id]) REFERENCES [gamechanger_game] ([id]);
CREATE INDEX [gamechanger_game_GameTeamID_2_id_f12b7309] ON [gamechanger_game] ([GameTeamID_2_id]);
CREATE INDEX [gamechanger_game_SeasonID_id_22f5941f] ON [gamechanger_game] ([SeasonID_id]);
CREATE INDEX [gamechanger_coachteam_TeamID_id_c07732cf] ON [gamechanger_coachteam] ([TeamID_id]);
CREATE INDEX [gamechanger_playergame_PlayerID_id_33ca57aa] ON [gamechanger_playergame] ([PlayerID_id]);
CREATE INDEX [gamechanger_playerteam_PlayerTeamID_640e4f44] ON [gamechanger_playerteam] ([PlayerTeamID]);
ALTER TABLE [gamechanger_statstype] ADD CONSTRAINT [gamechanger_statstype_SportID_id_d5d62822_fk_gamechanger_sport_id] FOREIGN KEY ([SportID_id]) REFERENCES [gamechanger_sport] ([id]);
ALTER TABLE [gamechanger_league] ADD CONSTRAINT [gamechanger_league_LeagueTypeID_id_a96ca028_fk_gamechanger_leaguetype_id] FOREIGN KEY ([LeagueTypeID_id]) REFERENCES [gamechanger_leaguetype] ([id]);
CREATE INDEX [gamechanger_playergame_PlayerGameID_c3dfe867] ON [gamechanger_playergame] ([PlayerGameID]);
CREATE INDEX [gamechanger_sportcountry_CountryID_id_7579c237] ON [gamechanger_sportcountry] ([CountryID_id]);
CREATE INDEX [gamechanger_team_TeamID_18fff91f] ON [gamechanger_team] ([TeamID]);
ALTER TABLE [gamechanger_playergamestats] ADD CONSTRAINT [gamechanger_playergamestats_PlayerGameID_id_5f4e165a_fk_gamechanger_playergame_id] FOREIGN KEY ([PlayerGameID_id]) REFERENCES [gamechanger_playergame] ([id]);
ALTER TABLE [gamechanger_game] ADD CONSTRAINT [gamechanger_game_GameTeamID_2_id_f12b7309_fk_gamechanger_team_id] FOREIGN KEY ([GameTeamID_2_id]) REFERENCES [gamechanger_team] ([id]);
CREATE INDEX [gamechanger_statstype_SportID_id_d5d62822] ON [gamechanger_statstype] ([SportID_id]);
ALTER TABLE [gamechanger_game] ADD CONSTRAINT [gamechanger_game_SeasonID_id_22f5941f_fk_gamechanger_season_id] FOREIGN KEY ([SeasonID_id]) REFERENCES [gamechanger_season] ([id]);
ALTER TABLE [gamechanger_playergame] ADD CONSTRAINT [gamechanger_playergame_PlayerID_id_33ca57aa_fk_gamechanger_player_id] FOREIGN KEY ([PlayerID_id]) REFERENCES [gamechanger_player] ([id]);
ALTER TABLE [gamechanger_sportcountry] ADD CONSTRAINT [gamechanger_sportcountry_SportID_id_0fc6356b_fk_gamechanger_sport_id] FOREIGN KEY ([SportID_id]) REFERENCES [gamechanger_sport] ([id]);
CREATE INDEX [gamechanger_sportcountry_SportID_id_0fc6356b] ON [gamechanger_sportcountry] ([SportID_id]);
CREATE INDEX [gamechanger_sport_SportID_1ce6bae1] ON [gamechanger_sport] ([SportID]);
ALTER TABLE [gamechanger_playerteam] ADD CONSTRAINT [gamechanger_playerteam_PlayerID_id_5683166b_fk_gamechanger_player_id] FOREIGN KEY ([PlayerID_id]) REFERENCES [gamechanger_player] ([id]);
CREATE INDEX [gamechanger_playerteam_PlayerID_id_5683166b] ON [gamechanger_playerteam] ([PlayerID_id]);
CREATE INDEX [gamechanger_season_SeasonID_cb882dfc] ON [gamechanger_season] ([SeasonID]);
ALTER TABLE [gamechanger_playergamestats] ADD CONSTRAINT [gamechanger_playergamestats_StatsTypeID_id_a30fddc8_fk_gamechanger_statstype_id] FOREIGN KEY ([StatsTypeID_id]) REFERENCES [gamechanger_statstype] ([id]);
CREATE INDEX [gamechanger_venue_VenueID_bb93a9c2] ON [gamechanger_venue] ([VenueID]);
CREATE INDEX [gamechanger_country_CountryID_4c28d71a] ON [gamechanger_country] ([CountryID]);
CREATE INDEX [gamechanger_coach_CoachID_8aba6b46] ON [gamechanger_coach] ([CoachID]);
CREATE INDEX [gamechanger_team_LeagueID_id_1016d9db] ON [gamechanger_team] ([LeagueID_id]);
CREATE INDEX [gamechanger_playergamestats_StatsTypeID_id_a30fddc8] ON [gamechanger_playergamestats] ([StatsTypeID_id]);
ALTER TABLE [gamechanger_team] ADD CONSTRAINT [gamechanger_team_LeagueID_id_1016d9db_fk_gamechanger_league_id] FOREIGN KEY ([LeagueID_id]) REFERENCES [gamechanger_league] ([id]);
ALTER TABLE [gamechanger_coachteam] ADD CONSTRAINT [gamechanger_coachteam_TeamID_id_c07732cf_fk_gamechanger_team_id] FOREIGN KEY ([TeamID_id]) REFERENCES [gamechanger_team] ([id]);
CREATE INDEX [gamechanger_game_GameTeamID_1_id_ca50128d] ON [gamechanger_game] ([GameTeamID_1_id]);
CREATE INDEX [gamechanger_player_PlayerID_85609948] ON [gamechanger_player] ([PlayerID]);
CREATE INDEX [gamechanger_leaguetype_LeagueTypeID_991adf21] ON [gamechanger_leaguetype] ([LeagueTypeID]);
CREATE INDEX [gamechanger_playerteam_TeamID_id_2c0bf51f] ON [gamechanger_playerteam] ([TeamID_id]);
CREATE INDEX [gamechanger_league_LeagueID_8b36f33f] ON [gamechanger_league] ([LeagueID]);
CREATE INDEX [gamechanger_league_SportID_id_6e611b6e] ON [gamechanger_league] ([SportID_id]);
CREATE INDEX [gamechanger_sportcountry_SportCountryID_27ec4ba8] ON [gamechanger_sportcountry] ([SportCountryID]);
CREATE INDEX [gamechanger_game_GameID_e2ce8e2b] ON [gamechanger_game] ([GameID]);
COMMIT;
