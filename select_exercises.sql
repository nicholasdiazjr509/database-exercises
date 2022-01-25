USE codeup_test_db;
SELECT * FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT * FROM albums;

SELECT * FROM albums WHERE release_date < 1980;
Update albums
SET release_date = releaase_date -100;
WHERE release_date < 1980;

SELECT * FROM albums WHERE release_date BETWEEN 1800 AND 1899;

SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

SELECT * FROM albums WHERE artist = 'Peter Jackson';