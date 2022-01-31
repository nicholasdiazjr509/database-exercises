CREATE DATABASE IF NOT EXISTS regulus_db;
USE regulus_db;

# CREATE TABLE IF NOT EXISTS players
# (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
# --     making a primary key
# --     start at 1 and increment by 1 automatically
#     first_name VARCHAR (50),
#     last_name VARCHAR(100),
#     team VARCHAR(50),
#     PRIMARY KEY (id)
# );

CREATE TABLE IF NOT EXISTS players
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--     making a primary key
--     start at 1 and increment by 1 automatically
    first_name VARCHAR (50),
    last_name VARCHAR(100),
    team VARCHAR(50),
    position VARCHAR(50),

    PRIMARY KEY (id)
);

DESCRIBE players;

INSERT INTO players (first_name, last_name, team, position)
VALUES ('Joe', 'Burrow', 'Cincinnati Bengals', 'Quarterback'),
        ('Patrick', 'Mahomes', 'KC Chiefs', 'Quarterback');

SELECT * FROM players;

#UNIQUE
CREATE TABLE IF NOT EXISTS teams
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(50),
    name VARCHAR(50)
);

ALTER TABLE teams
ADD UNIQUE (name);

DESCRIBE teams;