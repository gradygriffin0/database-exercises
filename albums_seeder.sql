use codeup_test_db;

INSERT INTO albums
    (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', 1982, 47.9, 'pop, post-disco, funk, rock'),
       ('AC/DC', 'Back in Black', 1980, 29.6, 'hard rock'),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 21.7, 'Hard rock, glam rock, progressive rock'),
       ('Whitney Houston', 'The Bodyguard', 1992, 32.4, 'R&B, soul, pop, soundtrack'),
       ('Eagles', 'Their Greatest Hits (1971-1975)', 1976, 41.2, 'Country Rock, Soft rock, folk rock'),
       ('Bee Gees', 'Saturday Night Fever', 1977, 21.6, 'Disco'),
       ('Fleetwood Mac', 'Rumours', 1977, 27.9, 'Soft Rock'),
       ('Shania Twain', 'Come on Over', 1997, 29.6, 'Country, Pop'),
       ('Led Zeppelin', 'Led Zeppelin IV', 1978, 14.4, 'Rock and Roll'),
       ('Michael Jackson', 'Bad', 1987, 19.7, 'Pop, rhythm and blues, funk and rock'),
       ('Alanis Morissette', 'Jagged Little Pill', 1995, 24.3, 'Alternative Rock'),
       ('Michael Jackson', 'Dangerous', 1991, 17.0, 'New Jack swing, R&B and Pop'),
       ('Celine Dion', 'Falling into You', 1996, 21.1, 'Pop, Soft rock'),
       ('Eagles', 'Hotel California', 1976, 31.5, 'Soft Rock'),
       ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 18.2, 'Rock'),
       ('Adele', '21', 2011, 26.4, 'Pop, Soul'),
       ('Madonna', 'The Immaculate Collection', 1990, 19.5,'Pop, dance'),
       ('Celine Dion', 'Lets Talk About Love', 1997, 19.3, 'Pop, soft rock'),
       ('Metallica', 'Metallica', 1991, 25.2, 'Heavy metal'),
       ('The Beatles', '1', 2000, 23.5, 'Rock'),
       ('The Beatles', 'Abbey Road', 1969, 14.4, 'Rock'),
       ('ABBA', 'Gold: Greatest Hits', 1992, 23.0, 'Pop, Disco'),
       ('Bruce Springsteen', 'Born in the U.S.A.', 1984, 19.6, 'Heartland rock'),
       ('Pink Floyd', 'The Wall', 1979, 18.7, 'Progressive rock'),
       ('Dire Straits', 'Brothers in Arms', 1985, 17.7, 'Roots rock, blues rock, soft rock'),
       ('Nirvana', 'Nevermind', 1991, 16.7, 'grunge, alternative rock'),
       ('Santana', 'Supernatural', 1999, 20.5, 'Latin Rock'),
       ('Guns N Roses', 'Appetite for Destruction', 1987, 21.9, 'Hard Rock'),
       ('Elton John', 'Goodbye Yellow Brick Road', 1973, 8.5, 'rock, pop rock, glam rock');

    SELECT *
FROM albums;