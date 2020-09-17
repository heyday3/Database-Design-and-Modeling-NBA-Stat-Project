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