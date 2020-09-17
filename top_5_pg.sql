/**Show top 5 scoring point guards and their points per game**/
USE 2018_2019_nba_eastern_conf_upd;
CREATE OR REPLACE VIEW top_5_pg as
SELECT CONCAT(player_fn,' ', player_ln) AS 'Player Name', ROUND((total_points/games_played)) AS 'Points Per Game'
FROM conference_roster JOIN player_stats ON
conference_roster.player_id = player_stats.player_id
WHERE player_position = 'PG'
ORDER BY (total_points/games_played) DESC
LIMIT 5

