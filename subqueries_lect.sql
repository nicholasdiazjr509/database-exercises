USE regulus_db;

-- GET ALL PLAYERS WHO PLAY FOR THE 49ers

-- #WHAT WE WANT
SELECT CONCAT(players.first_name, ' ', players.last_name) AS full_name
FROM players
WHERE team_id IN (
    SELECT id
    FROM teams
    WHERE name = '49ers'
    );


