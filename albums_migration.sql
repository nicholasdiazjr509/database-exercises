USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(20) NOT NULL,
    release_date INT UNSIGNED,
    sales FLOAT UNSIGNED,
    genre VARCHAR (80),
    PRIMARY KEY (id)

--                    test test
);
DESCRIBE albums;
SHOW CREATE TABLE albums;