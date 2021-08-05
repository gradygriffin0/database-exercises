CREATE DATABASE IF NOT EXISTS movie_db;

CREATE TABLE IF NOT EXISTS movies(
    id INT NOT NULL,
    title varchar(100) not null,
    rating varchar(10) default 'Undefined',
    poster varchar(250) default 'Undefined',
    year varchar(50) default 'Undefined',
    genre varchar(50) default 'Undefined',
    plot text default 'Undefined',
    actors varchar(100) default 'Undefined',
    director varchar(50) default 'Undefined',
    PRIMARY KEY (id)

);


