use codeup_test_db;

SELECT *
from albums;

SELECT *
FROM albums
WHERE release_date < 1980;

SELECT *
FROM albums
WHERE artist = 'michael jackson';


# updating

START TRANSACTION;

UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;


UPDATE albums
SET sales = sales * 10;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'michael jackson';

SELECT * from
albums;

ROLLBACK;



