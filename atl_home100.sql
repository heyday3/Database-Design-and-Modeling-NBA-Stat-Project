/** Show games where atlantic division teams are home and scoring more than 100 points**/
USE 2018_2019_nba_eastern_conf_upd;
CREATE OR REPLACE VIEW atl_home_100 as
SELECT CONCAT(team_city,' ', team_name) AS 'Home Team', team_2_score AS 'Score', game_id AS 'Game'
FROM teams 
JOIN games on
	teams.team_arena = games.team_arena
WHERE team_division = 'atlantic' and team_2_score >= 100
ORDER BY game_id


