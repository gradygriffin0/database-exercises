use codeup_test_db;




START TRANSACTION;

DELETE
from albums
where release_date > 1991;

DELETE
from albums
where genre = 'disco';

DELETE
from albums
where artist = 'whitney houston';

select *
from albums
where release_date > 1991;

select *
from albums
where genre = 'disco';

select *
from albums
where artist = 'whitney houston';

ROLLBACK;

