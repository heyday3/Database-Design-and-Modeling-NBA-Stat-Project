/* Query #1 - atl_home_100 */
	/** Show games where atlantic division teams are home and scoring more than 100 points**/
USE 2018_2019_nba_eastern_conf_upd;
CREATE OR REPLACE VIEW atl_home_100 as
SELECT CONCAT(team_city,' ', team_name) AS 'Home Team', team_2_score AS 'Score', game_id AS 'Game'
FROM teams 
JOIN games on
	teams.team_arena = games.team_arena
WHERE team_division = 'atlantic' and team_2_score >= 100
ORDER BY game_id

/* Query #2 - commited_fouls */
	/** Show total amount of infraction in each game where the away team beat the home team **/
USE 2018_2019_nba_eastern_conf_upd;
CREATE VIEW committed_fouls AS
SELECT distinct game_id AS 'Game', team_arena as 'Venue', Infractions
FROM infractions
	JOIN infractions_games
		USING (infraction_type_id)
	JOIN games
		USING (game_id)
	JOIN
		(SELECT game_id, COUNT(game_id) AS Infractions
        FROM infractions_games
        GROUP BY game_id) fw
			USING (game_id)
WHERE team_1_score > team_2_score

/* Query #3 - full season */
	/**Who in the NBA eastern confrence has played every game of the Season **/
USE 2018_2019_nba_eastern_conf_upd;
CREATE OR REPLACE VIEW full_season AS
SELECT CONCAT(player_fn, ' ', player_ln) AS 'Player Name', player_position
FROM conference_roster
	JOIN player_stats
		USING (player_id)
WHERE games_played = 82;

/* Query #4 - three_year_contract */
	/** What players positioned as a POWER FORWARD/PF have a contract that is greater than 3 years in length and how much they get paid per year in USD, ordered in by the most valuable contract to the least valuable **/
USE 2018_2019_nba_eastern_conf_upd;
CREATE OR REPLACE VIEW player_three_year_contract AS
SELECT  concat(player_fn, ' ', player_ln) as 'Full Name', year_length, CONCAT('$', FORMAT(dollar_amount, 2)) as 'Contract Value'
FROM contracts
JOIN conference_roster
ON conference_roster.player_id = contracts.player_id
WHERE year_length > 3 and player_position = 'PF'
ORDER BY (dollar_amount/year_length) DESC

/* Query #5 - top_5_pg */
	/**Show top 5 scoring point guards and their points per game**/
USE 2018_2019_nba_eastern_conf_upd;
CREATE OR REPLACE VIEW top_5_pg as
SELECT CONCAT(player_fn,' ', player_ln) AS 'Player Name', ROUND((total_points/games_played)) AS 'Points Per Game'
FROM conference_roster JOIN player_stats ON
conference_roster.player_id = player_stats.player_id
WHERE player_position = 'PG'
ORDER BY (total_points/games_played) DESC
LIMIT 5


