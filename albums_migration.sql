USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO INCREMENT,
    artist VARCHAR (10) NOT NULL,
    name VARCHAR (20),
    release_date DATA (6),
    sales DECIMAL (6, 4),
    genre VARCHAR (8),
    PRIMARY KEY (id)

--                    test test
);