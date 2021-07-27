use codeup_test_db;

SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date
from albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre
from albums
where name = 'nevermind';

select *
FROM albums
WHERE release_date < 2000
AND release_date > 1990;

select *
FROM albums
WHERE sales < 20;

SELECT *
FROM albums
WHERE genre = 'rock';


SELECT *
FROM albums
WHERE release_date < 1980;

SELECT *
FROM albums
WHERE artist = 'michael jackson';