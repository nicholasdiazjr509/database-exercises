USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(90) NOT NULL,
    release_date INT UNSIGNED,
    genre VARCHAR (80),
    certified FLOAT UNSIGNED,
    sales FLOAT UNSIGNED,
    PRIMARY KEY (id)
);
DESCRIBE albums;
SHOW CREATE TABLE albums;