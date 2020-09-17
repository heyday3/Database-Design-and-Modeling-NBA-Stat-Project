/** What players positioned as a POWER FORWARD/PF have a contract that is greater than 3 years in length and how much they get paid per year in USD, ordered in by the most valuable contract to the least valuable **/
USE 2018_2019_nba_eastern_conf_upd;
CREATE OR REPLACE VIEW player_three_year_contract AS
SELECT  concat(player_fn, ' ', player_ln) as 'Full Name', year_length, CONCAT('$', FORMAT(dollar_amount, 2)) as 'Contract Value'
FROM contracts
JOIN conference_roster
ON conference_roster.player_id = contracts.player_id
WHERE year_length > 3 and player_position = 'PF'
ORDER BY (dollar_amount/year_length) DESC
