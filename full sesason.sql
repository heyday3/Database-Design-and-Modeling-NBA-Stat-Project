/**Who in the NBA eastern confrence has played every game of the Season **/
USE 2018_2019_nba_eastern_conf_upd;
CREATE OR REPLACE VIEW full_season AS
SELECT CONCAT(player_fn, ' ', player_ln) AS 'Player Name', player_position
FROM conference_roster
	JOIN player_stats
		USING (player_id)
WHERE games_played = 82;