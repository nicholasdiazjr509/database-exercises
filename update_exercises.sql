USE codeup_test_db;

-- SELECT name AS 'Hit records' FROM albums;  THIS USES ALIAS
SELECT * FROM albums;

SELECT 'All albums in your table' AS 'Info';
SELECT name, sales FROM albums;
UPDATE albums
SET sales = sales * 10;
-- SELECT (artist, name, release_date, genre, certified, sales) FROM albums ;

SELECT 'All albums released before 1980' AS '**NOTE**';
SELECT * FROM albums WHERE release_date < 1980;
Update albums SET release_date = releaase_date -100;
SELECT * FROM albums WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date BETWEEN 1800 AND 1899;

SELECT * FROM albums WHERE artist  = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

SELECT * FROM albums WHERE artist = 'Peter Jackson';