USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, genre, certified, sales)
VALUES
('Michael Jackson', 'Thriller', 1982, 'Pop post-disco funk rock', 49.2, 70),
('AC/DC', 'Back in Black', 1980, 'Hard rock', 29.5, 50),
('Whitney Houston', 'The Bodyguard', 1992,	'R&B soul pop soundtrack', 32.4, 45),
('Meat Loaf', 'Bat Out of Hell', 1977, 'Hard rock, glam rock, progressive rock', 21.7, 44),
('Eagles', 'Their Greatest Hits 1971 to 1975', 1976, 'Country rock, soft rock, folk rock', 41.2, 44),
('Pink Floyd', 'The Dark Side of the Moon',	1973,	'Progressive rock',	24.4,44),
('Eagles','Hotel California', 1976,'Soft rock',31.5, 42),
('Bee Gees', 'Saturday Night Fever', 1977, 'Disco', 21.6, 40),
('Fleetwood Mac', 'Rumours', 1977, 'Soft rock', 27.9, 40),
('Shania Twain', 'Come On Over', 1997, 'Country, pop', 29.6, 40),
('Various artists',	'Grease: The Original Soundtrack from the Motion Picture',	1978, 'Rock and roll', 14.4, 38),
('Led Zeppelin', 'Led Zeppelin IV',	1971,	'Hard rock, heavy metal, folk rock', 29.0, 37),
('Michael Jackson', 'Bad', 1987, 'Pop, rhythm and blues, funk and rock', 21.1, 35),
('Alanis Morissette', 'Jagged Little Pill',	1995,	'Alternative rock', 24.3, 33),
('Michael Jackson', 'Dangerous', 1991, 'New jack swing, R&B and pop', 17.0, 32),
('Various artists', 'Dirty Dancing', 1987, 'Pop, rock, R&B', 17.9, 32),
('The Beatles', 'Sgt. Peppers Lonely Hearts Club Band', 1967, 'Rock', 18.2, 32),
('Celine Dion',	'Falling into You', 1996, 'Pop, soft rock', 21.1, 32),
('Adele', '21', 2011, 'Pop, soul', 26.4, 31),
('Nirvana', 'Nevermind', 1991, 'Grunge, Alternative rock', 16.7, 30),
('Celine Dion', 'Lets Talk About Love', 1997, 'Pop soft rock', 19.3, 31),
('Metallica', 'Metallica', 1991, 'Heavy metal', 25.2, 31),
('The Beatles', '1', 2000, 'Rock', 23.5, 31),
('The Beatles', 'Abbey Road', 1969, 'Rock', 14.4, 31),
('Santana', 'Supernatural', 1999, 'Rock', 20.5, 30),
('Guns N Roses', 'Appetite for Destruction', 1987, 'Hard rock', 21.6, 30);


SELECT * FROM albums;